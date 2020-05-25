//// (C) 1992-2019 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 


//
// Top level load/store unit
//
// Attributes of load/store units
//  Coalesced:  Accesses to neighbouring memory locations are grouped together
//              to improve efficiency and efficiently utilize memory bandwidth.
//  Hazard-Safe:The LSU is not susceptable to data hazards.
//  Ordered:    The LSU requires accesses to be in-order to properly coalesce.
//  Pipeline:   The LSU can handle multiple requests at a time without
//              stalling.  Improves throughput.
//
// Supports the following memory access patterns:
//  Simple      - STYLE="SIMPLE"
//                Coalesced: No, Ordered: N/A, Hazard-Safe: Yes, Pipelined, No
//                Simple un-pipelined memory access.  Low throughput.
//  Pipelined   - STYLE="PIPELINED"
//                Coalesced: No, Ordered: N/A, Hazard-Safe: Yes, Pipelined: Yes
//                Requests are submitted as soon as they are received.
//                Pipelined access to memory so multiple requests can be 
//                in flight at a time.
//  Enabled     - STYLE="ENABLED"
//                Coalesced: No, Ordered: N/A, Hazard-Safe: Yes, Pipelined: Yes
//                Requests are submitted as soon as they are received.
//                Pipelined access to memory so multiple requests can be 
//                in flight at a time. Stalls freeze the pipeline (incl. memory).
//                Currently only used in enable clusters.
//  Coalesced   - STYLE="BASIC-COALESCED"
//   "basic"      Coalesced: Yes, Ordered: Yes, Hazard-Safe: Yes, Pipelined: Yes
//                Requests are submitted as soon as possible to memory, stalled
//                requests are coalesced with neighbouring requests if they
//                access the same page of memory.
//  Coalesced   - STYLE="BURST-COALESCED"
//   "burst"      Coalesced: Yes, Ordered: Yes, Hazard-Safe: Yes, Pipelined: Yes
//                Requests are buffered until the biggest possible burst can
//                be made.
//  Streaming   - STYLE="STREAMING"
//                Coalesced: Yes, Ordered: Yes, Hazard-Safe: No, Pipelined: ?
//                A FIFO is instantiated which burst reads large blocks from 
//                memory to keep the FIFO full of valid data.  This block can 
//                only be used if accesses are in-order, and addresses can be
//                simply calculated from (base_address + n * word_width).  The
//                block has no built-in hazard protection.
//  Prefetching - STYLE="PREFETCHING"
//                Coalesced: No, Ordered: Yes, Hazard-Safe: No, Pipelined: ?
//                A FIFO is instantiated which burst reads large blocks from 
//                memory to keep the FIFO full of valid data based on the 
//                previous address and assuming contiguous reads.  
//                Non-contiguos reads are supported, but a penalty is incurred 
//                to flush and refill the FIFO. 
//  Atomic - STYLE="ATOMIC-PIPELINED"
//"pipelined"
//              Coalesced: No, Ordered: N/A, Hazard-Safe: Yes, Pipelined: Yes
//              Atomic: Yes
//              Requests are submitted as soon as they are received.
//              Pipelined access to memory so multiple requests can be 
//              in flight at a time.
//              Response is returned as soon as read is complete, 
//              write is issued subsequently by the atomic module at the end
//              of arbitration.

`default_nettype none

// altera message_off 10036
module lsu_top
(
    clock, clock2x, resetn, stream_base_addr, stream_size, stream_reset, i_atomic_op, o_stall, 
    i_valid, i_address, i_writedata, i_cmpdata, i_predicate, i_bitwiseor, i_stall, o_valid, 
    o_empty, o_almost_empty, o_readdata, avm_address, avm_enable, avm_read, avm_readdata, avm_write, 
    avm_writeack, avm_writedata, avm_byteenable, avm_waitrequest, avm_readdatavalid, avm_burstcount,
    o_active,
    o_input_fifo_depth,
    o_writeack,
    i_byteenable,
    flush,

    // profile signals
    profile_bw, profile_bw_incr,
    profile_total_ivalid,
    profile_total_req,
    profile_i_stall_count,
    profile_o_stall_count,
    profile_avm_readwrite_count,
    profile_avm_burstcount_total, profile_avm_burstcount_total_incr,
    profile_req_cache_hit_count,
    profile_extra_unaligned_reqs,
    profile_avm_stall,

    ecc_err_status  // ECC status signals
);

/*************
* Parameters *
*************/
parameter STYLE="PIPELINED"; // The LSU style to use (see style list above)
parameter AWIDTH=32;         // Address width (32-bits for Avalon)
parameter ATOMIC_WIDTH=6;    // Width of operation operation indices
parameter WIDTH_BYTES=4;     // Width of the request (bytes), must be a power of 2
parameter MWIDTH_BYTES=32;   // Width of the global memory bus (bytes), must be a power of 2
parameter WRITEDATAWIDTH_BYTES=32;  // Width of the readdata/writedata signals, 
                                    // may be larger than MWIDTH_BYTES for atomics
parameter ALIGNMENT_BYTES=2; // Request address alignment (bytes)
parameter READ=1;            // Read or write?
parameter ATOMIC=0;          // Atomic?
parameter BURSTCOUNT_WIDTH=6;// Determines max burst size
// Why two latencies? E.g. A streaming unit prefetches data, its latency to
// the kernel is very low because data is for the most part ready and waiting.
// But the lsu needs to know how much data to buffer to hide the latency to
// memory, hence the memory side latency.
parameter KERNEL_SIDE_MEM_LATENCY=1;  // Effective Latency in cycles as seen by the kernel pipeline
                                      // This parameter is also used to represent the minimum capacity the LSU must support
                                      // where capacity is defined as the number of valids it must accept while being stalled
                                      // by either downstream interface (kernel or avm) before it will stall the upstream kernel 
                                      // interface
parameter MEMORY_SIDE_MEM_LATENCY=1;  // Latency in cycles between LSU and memory
parameter USE_WRITE_ACK=0;    // Enable the write-acknowledge signal, when disabled valids can exit write LSUs immediately
parameter USE_BYTE_EN=0;      // when disabled, the i_byteenable port is ignored (always assumed to be all 1's) - the avm_byteenable port may be used regardless of this parameter
parameter USECACHING=0;       // only valid for certain LSU types
parameter CACHESIZE=1024;     // number of words (each MWIDTH_BYTES bytes wide) in the cache, only relevant when USECACHING=1
parameter PROFILE_ADDR_TOGGLE=0;
parameter USEINPUTFIFO=1;        // FIXME specific to lsu_pipelined
parameter USEOUTPUTFIFO=1;       // FIXME specific to lsu_pipelined
parameter STALLFREE=0;           // specific to lsu_pipelined_write
parameter FORCE_NOP_SUPPORT=0;   // Stall free pipeline doesn't want the NOP fifo
parameter HIGH_FMAX=1;           // Enable optimizations for high Fmax (different from HYPER_PIPELINE below, applies only to non-hyper-optimized LSUs)
parameter AVM_WRITE_DATA_LATENESS = 0;  // fmax and area optimization - run the write data path this many clocks later than stall/valid
parameter AVM_READ_DATA_LATENESS = 0;   // fmax and area optimization - avm_readdata is late by this many clocks compared to avm_readdatavalid
parameter WIDE_DATA_SLICING = 0;        // for large MWIDTH_BYTES, a nonzero value indicate how wide to width-slice hld_fifo

// parameters for advanced features to support very high FMAX in some LSU types
parameter HYPER_PIPELINE=0;      // enable optimizations targeting HIPI based architectures, note that this can result in a large increase in area (not supported by all LSU types)
parameter USE_STALL_LATENCY=0;   // enable the stall latency protocol, which changes the definition of the stall and valid signals
                                 // only supported when HYPER_PIPELINE=1 and STYLE=BURST-COALESCED or PIPELINED
parameter UPSTREAM_STALL_LATENCY=0; // round trip latency for the upstream (i_valid/o_stall) port, from o_stall being asserted to i_valid guaranteed deasserted.  Must be 0 if USE_STALL_LATENCY=0.
parameter DOWNSTREAM_STALL_IN_EARLINESS=0;      // the i_stall signal is internally delayed by this amount.  
                                                // Recommended setting with USE_STALL_LATENCY=1, STYLE=BURST-COALESCED, and READ=1 is 3, otherwise MUST be 0 (not supported for other LSU types).
parameter ALMOST_EMPTY_THRESH=1;    // almost empty threshold, o_almost_empty asserts if the number of available thread is <= this number, only applies if USE_STALL_LATENCY=1

//choice of fifo style
parameter ALLOW_HIGH_SPEED_FIFO_USAGE = 1;      //only applies to LSUs that use hld_fifo, 0 = mid speed fifo, 1 = high speed fifo

// reset parameters
parameter ASYNC_RESET=1;         // set to '1' to use the incoming resetn signal asynchronously, '0' to use synchronous reset (not yet supported by all LSU types)
parameter SYNCHRONIZE_RESET=1;   // set to '1' to pass the incoming resetn signal through a synchronizer before use

// Profiling
parameter ACL_PROFILE=0;      // Set to 1 to enable stall/valid profiling
parameter ACL_PROFILE_INCREMENT_WIDTH=32;

// Verilog readability and parsing only - no functional purpose
parameter ADDRSPACE=0;

// Local memory parameters
parameter ENABLE_BANKED_MEMORY=0;// Flag enables address permutation for banked local memory config
parameter ABITS_PER_LMEM_BANK=0; // Used when permuting lmem address bits to stride across banks
parameter NUMBER_BANKS=1;        // Number of memory banks - used in address permutation (1-disable)
parameter LMEM_ADDR_PERMUTATION_STYLE=0; // Type of address permutation (currently unused)
parameter enable_ecc = "FALSE";  // Enable error correction coding

// Calculated local values based on parameters

localparam WIDTH=8*WIDTH_BYTES;                      // Width in bits
localparam MWIDTH=8*MWIDTH_BYTES;                    // Width in bits
localparam WRITEDATAWIDTH=8*WRITEDATAWIDTH_BYTES;              // Width in bits
localparam ALIGNMENT_ABITS=$clog2(ALIGNMENT_BYTES); // Address bits to ignore
localparam LSU_CAPACITY=256;   // Maximum number of 'in-flight' load/store operations

localparam WIDE_LSU = (WIDTH > MWIDTH); 
// Performance monitor signals
parameter INPUTFIFO_USEDW_MAXBITS=8;

// LSU unit properties
localparam ATOMIC_PIPELINED_LSU=(STYLE=="ATOMIC-PIPELINED");
localparam PIPELINED_LSU=( (STYLE=="PIPELINED") || (STYLE=="BASIC-COALESCED") || (STYLE=="BURST-COALESCED") || (STYLE=="BURST-NON-ALIGNED") );
localparam SUPPORTS_NOP= (STYLE=="STREAMING") || (STYLE=="SEMI-STREAMING") || (STYLE=="BURST-NON-ALIGNED") || (STYLE=="BURST-COALESCED") ||  (STYLE=="PREFETCHING") || (STYLE=="PIPELINED") || (FORCE_NOP_SUPPORT==1);
localparam SUPPORTS_BURSTS=( (STYLE=="STREAMING") || (STYLE=="BURST-COALESCED") || (STYLE=="SEMI-STREAMING") || (STYLE=="BURST-NON-ALIGNED") || (STYLE=="PREFETCHING"));

/********
* Ports *
********/
// Standard global signals
input wire clock;
input wire clock2x;
input wire resetn;
input wire flush;

// Streaming interface signals
input wire [AWIDTH-1:0] stream_base_addr;
input wire [31:0] stream_size;
input wire stream_reset;

// Atomic interface
input wire [WIDTH-1:0] i_cmpdata; // only used by atomic_cmpxchg
input wire [ATOMIC_WIDTH-1:0] i_atomic_op;

// Upstream interface
output wire o_stall;          // protocol for o_stall/i_valid determined by the USE_STALL_LATENCY parameter
input wire i_valid;
input wire [AWIDTH-1:0] i_address;
input wire [WIDTH-1:0] i_writedata;
input wire i_predicate;
input wire [AWIDTH-1:0] i_bitwiseor;
input wire [WIDTH_BYTES-1:0] i_byteenable;

// Downstream interface
input wire i_stall;           // protocol for o_stall/i_valid determined by the USE_STALL_LATENCY parameter
output wire o_valid;
output wire o_empty;          // o_empty and o_almost_empty only supported when USE_STALL_LATENCY=1
output wire o_almost_empty;
output wire [WIDTH-1:0] o_readdata;

// Avalon interface
output wire [AWIDTH-1:0] avm_address;
output wire avm_enable;
output wire avm_read;
input wire [WRITEDATAWIDTH-1:0] avm_readdata;
output wire avm_write;
input wire avm_writeack;
output wire o_writeack;
output wire [WRITEDATAWIDTH-1:0] avm_writedata;
output wire [WRITEDATAWIDTH_BYTES-1:0] avm_byteenable;
input wire avm_waitrequest;
input wire avm_readdatavalid;
output wire [BURSTCOUNT_WIDTH-1:0] avm_burstcount;

output reg o_active;

// For profiling/performance monitor
output logic [INPUTFIFO_USEDW_MAXBITS-1:0] o_input_fifo_depth;

// Profiler Signals
output logic profile_bw;
output logic [ACL_PROFILE_INCREMENT_WIDTH-1:0] profile_bw_incr;
output logic profile_total_ivalid;
output logic profile_total_req;
output logic profile_i_stall_count;
output logic profile_o_stall_count;
output logic profile_avm_readwrite_count;
output logic profile_avm_burstcount_total;
output logic [ACL_PROFILE_INCREMENT_WIDTH-1:0] profile_avm_burstcount_total_incr;
output logic profile_req_cache_hit_count;
output logic profile_extra_unaligned_reqs;
output logic profile_avm_stall;

output logic  [1:0] ecc_err_status;  // ecc status signals

   ///////////////////////////////////////
   // Reset signal replication and pipelining
   //
   // In order to ensure that the reset signal is not a limiting factor when 
   // doing retiming, we create multiple copies of the reset signal and 
   // pipeline each adequately.
   ///////////////////////////////////////
   localparam                    NUM_RESET_COPIES = 1;
   localparam                    RESET_PIPE_DEPTH = 1;
   logic                         aclrn;
   logic [NUM_RESET_COPIES-1:0]  sclrn;
   logic                         resetn_synchronized;
   acl_reset_handler #(
      .ASYNC_RESET            (ASYNC_RESET),
      .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
      .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
      .PIPE_DEPTH             (RESET_PIPE_DEPTH),
      .NUM_COPIES             (NUM_RESET_COPIES)
   ) acl_reset_handler_inst (
      .clk                    (clock),
      .i_resetn               (resetn),
      .o_aclrn                (aclrn),
      .o_sclrn                (sclrn),
      .o_resetn_synchronized  (resetn_synchronized)
   );


genvar g;
generate
if(WIDE_LSU) begin
  //break transaction into multiple cycles
  lsu_wide_wrapper lsu_wide (
    .clock(clock),
    .clock2x(clock2x),
    .resetn(resetn_synchronized),
    .flush(flush),
    .stream_base_addr(stream_base_addr),
    .stream_size(stream_size),
    .stream_reset(stream_reset),
    .o_stall(o_stall),
    .i_valid(i_valid),
    .i_address(i_address),
    .i_writedata(i_writedata),
    .i_cmpdata(i_cmpdata),
    .i_predicate(i_predicate),
    .i_bitwiseor(i_bitwiseor),
    .i_byteenable(i_byteenable),
    .i_stall(i_stall),
    .o_valid(o_valid),
    .o_readdata(o_readdata),
    .o_input_fifo_depth(o_input_fifo_depth),
    .o_writeack(o_writeack),
    .i_atomic_op(i_atomic_op),
    .o_active(o_active),
    .o_empty(o_empty),
    .o_almost_empty(o_almost_empty),
    .avm_address(avm_address),
    .avm_enable(avm_enable),
    .avm_read(avm_read),
    .avm_readdata(avm_readdata),
    .avm_write(avm_write),
    .avm_writeack(avm_writeack),
    .avm_burstcount(avm_burstcount),
    .avm_writedata(avm_writedata),
    .avm_byteenable(avm_byteenable),
    .avm_waitrequest(avm_waitrequest),
    .avm_readdatavalid(avm_readdatavalid),
    .profile_req_cache_hit_count(profile_req_cache_hit_count),
    .profile_extra_unaligned_reqs(profile_extra_unaligned_reqs),
    .ecc_err_status(ecc_err_status)
  );

  defparam lsu_wide.STYLE = STYLE;
  defparam lsu_wide.AWIDTH = AWIDTH;
  defparam lsu_wide.ATOMIC_WIDTH = ATOMIC_WIDTH;
  defparam lsu_wide.WIDTH_BYTES = WIDTH_BYTES;
  defparam lsu_wide.MWIDTH_BYTES = MWIDTH_BYTES;
  defparam lsu_wide.WRITEDATAWIDTH_BYTES = WRITEDATAWIDTH_BYTES;
  defparam lsu_wide.ALIGNMENT_BYTES = ALIGNMENT_BYTES;
  defparam lsu_wide.READ = READ;
  defparam lsu_wide.ATOMIC = ATOMIC;
  defparam lsu_wide.BURSTCOUNT_WIDTH = BURSTCOUNT_WIDTH;
  defparam lsu_wide.KERNEL_SIDE_MEM_LATENCY = KERNEL_SIDE_MEM_LATENCY;
  defparam lsu_wide.MEMORY_SIDE_MEM_LATENCY = MEMORY_SIDE_MEM_LATENCY;
  defparam lsu_wide.USE_WRITE_ACK = USE_WRITE_ACK;
  defparam lsu_wide.USECACHING = USECACHING;
  defparam lsu_wide.USE_BYTE_EN = USE_BYTE_EN;
  defparam lsu_wide.CACHESIZE = CACHESIZE;
  defparam lsu_wide.PROFILE_ADDR_TOGGLE = PROFILE_ADDR_TOGGLE;
  defparam lsu_wide.USEINPUTFIFO = USEINPUTFIFO;
  defparam lsu_wide.USEOUTPUTFIFO = USEOUTPUTFIFO;
  defparam lsu_wide.FORCE_NOP_SUPPORT = FORCE_NOP_SUPPORT;
  defparam lsu_wide.HIGH_FMAX = HIGH_FMAX;
  defparam lsu_wide.HYPER_PIPELINE = HYPER_PIPELINE;
  defparam lsu_wide.USE_STALL_LATENCY = USE_STALL_LATENCY;
  defparam lsu_wide.UPSTREAM_STALL_LATENCY = UPSTREAM_STALL_LATENCY;
  defparam lsu_wide.DOWNSTREAM_STALL_IN_EARLINESS = DOWNSTREAM_STALL_IN_EARLINESS;
  defparam lsu_wide.ALMOST_EMPTY_THRESH = ALMOST_EMPTY_THRESH;
  defparam lsu_wide.ALLOW_HIGH_SPEED_FIFO_USAGE = ALLOW_HIGH_SPEED_FIFO_USAGE;
  defparam lsu_wide.ASYNC_RESET = ASYNC_RESET;
  defparam lsu_wide.SYNCHRONIZE_RESET = 0;
  defparam lsu_wide.ACL_PROFILE = ACL_PROFILE;
  defparam lsu_wide.ACL_PROFILE_INCREMENT_WIDTH = ACL_PROFILE_INCREMENT_WIDTH;
  defparam lsu_wide.ENABLE_BANKED_MEMORY = ENABLE_BANKED_MEMORY;
  defparam lsu_wide.ABITS_PER_LMEM_BANK = ABITS_PER_LMEM_BANK;
  defparam lsu_wide.NUMBER_BANKS = NUMBER_BANKS;
  defparam lsu_wide.WIDTH = WIDTH;
  defparam lsu_wide.MWIDTH = MWIDTH;  
  defparam lsu_wide.WRITEDATAWIDTH = WRITEDATAWIDTH;
  defparam lsu_wide.INPUTFIFO_USEDW_MAXBITS = INPUTFIFO_USEDW_MAXBITS;
  defparam lsu_wide.LMEM_ADDR_PERMUTATION_STYLE = LMEM_ADDR_PERMUTATION_STYLE;
  defparam lsu_wide.ADDRSPACE = ADDRSPACE;
  defparam lsu_wide.enable_ecc = enable_ecc;
  defparam lsu_wide.AVM_WRITE_DATA_LATENESS = AVM_WRITE_DATA_LATENESS;
  defparam lsu_wide.AVM_READ_DATA_LATENESS = AVM_READ_DATA_LATENESS;
  defparam lsu_wide.WIDE_DATA_SLICING = WIDE_DATA_SLICING;
  
  //the wrapped LSU doesnt interface directly with the avalon master, so profiling here is more accurate for avm signals
  //two signals generated directly by the LSU need to be passed in
  if(ACL_PROFILE==1)
  begin

   // keep track of write bursts
   reg [BURSTCOUNT_WIDTH-1:0] profile_remaining_writeburst_count;
   wire active_write_burst;
   assign active_write_burst = (profile_remaining_writeburst_count != {BURSTCOUNT_WIDTH{1'b0}});
   always@(posedge clock or negedge aclrn) begin
      if (!aclrn) begin
         profile_remaining_writeburst_count <= {BURSTCOUNT_WIDTH{1'b0}};
      end else begin
         if(avm_write & ~avm_waitrequest & ~active_write_burst) begin
            // start of a new write burst
            profile_remaining_writeburst_count <= avm_burstcount - 1;
         end else if(~avm_waitrequest & active_write_burst) begin
            // count down one burst
            profile_remaining_writeburst_count <= profile_remaining_writeburst_count - 1; 
         end
         if (~sclrn[0]) begin
            profile_remaining_writeburst_count <= {BURSTCOUNT_WIDTH{1'b0}};
         end
      end
   end
           

     assign profile_bw = (READ==1) ? avm_readdatavalid : (avm_write & ~avm_waitrequest);
     assign profile_bw_incr = MWIDTH_BYTES;
     if (USE_STALL_LATENCY == 1)
     begin
       assign profile_total_ivalid = (i_valid);
       assign profile_total_req = (i_valid & ~i_predicate);
     end
     else
     begin
       assign profile_total_ivalid = (i_valid & ~o_stall);
       assign profile_total_req = (i_valid & ~i_predicate & ~o_stall);
     end
     assign profile_i_stall_count = (i_stall & o_valid);  // this port is never actually profiled and will not be supported for stall-latency (count means nothing)
                                                          // if want to update it for stall latency would need to set this to (~o_empty & ~o_valid)
                                                          // DELETE THIS when add counters to non-stallable blocks - FB:533723
     assign profile_o_stall_count = (o_stall & i_valid);  // this port is never actually profiled and will not be supported for stall-latency (count means nothing)
                                                          // if want to update it for stall latency would need to expose i_empty and set this to (~i_empty & ~i_valid)
                                                          // DELETE THIS when add counters to non-stallable blocks - FB:533723
     assign profile_avm_readwrite_count = ((avm_read | avm_write) & ~avm_waitrequest & ~active_write_burst);
     assign profile_avm_burstcount_total = ((avm_read | avm_write) & ~avm_waitrequest & ~active_write_burst);
     assign profile_avm_burstcount_total_incr = avm_burstcount;
     assign profile_avm_stall = ((avm_read | avm_write) & avm_waitrequest);

  end
  else begin
     assign profile_bw = 1'b0;
     assign profile_bw_incr = {ACL_PROFILE_INCREMENT_WIDTH{1'b0}};
     assign profile_total_ivalid = 1'b0;
     assign profile_total_req = 1'b0;
     assign profile_i_stall_count = 1'b0;
     assign profile_o_stall_count = 1'b0;
     assign profile_avm_readwrite_count = 1'b0;
     assign profile_avm_burstcount_total = 1'b0;
     assign profile_avm_burstcount_total_incr = {ACL_PROFILE_INCREMENT_WIDTH{1'b0}};
     assign profile_avm_stall = 1'b0;
  end
    
end
else begin 

//one fmax and area optimization from lsu_burst_coalesced_pipelined_write is that data can be AVM_WRITE_DATA_LATENESS clocks late compared to stall/valid
//what this does is allow stall_in earliness for some wide fifos inside that lsu
//in order for this to play nicely with the ring ic, every lsu must export its data late by AVM_WRITE_DATA_LATENESS clocks
//when ownership is passed from one lsu to another in the ring ic, the previous owner stops sending data AVM_WRITE_DATA_LATENESS clocks after releasing ownership, and the new owner starts right after
//for other lsu types that do not natively support AVM_WRITE_DATA_LATENESS, we can emulate it here but simply adding pipeline stages on the data to delay it
localparam LSU_WRITE_DATA_LATENESS_SUPPORT = ((STYLE=="BURST-COALESCED") && (READ!=1) && HYPER_PIPELINE) ? 1 : 0;   //which lsu types can natively produce late write data
localparam EMULATED_WRITE_DATA_LATENESS = (LSU_WRITE_DATA_LATENESS_SUPPORT) ? 0 : AVM_WRITE_DATA_LATENESS;          //for all other lsu types, need to delay the data here

logic [WRITEDATAWIDTH-1:0]          orig_avm_writedata;
logic [BURSTCOUNT_WIDTH-1:0]        orig_avm_burstcount;
logic [WRITEDATAWIDTH_BYTES-1:0]    orig_avm_byteenable;
logic [AWIDTH-1:0]                  orig_avm_address;

logic [WRITEDATAWIDTH-1:0]          delayed_avm_writedata  [EMULATED_WRITE_DATA_LATENESS:0];
logic [BURSTCOUNT_WIDTH-1:0]        delayed_avm_burstcount [EMULATED_WRITE_DATA_LATENESS:0];
logic [WRITEDATAWIDTH_BYTES-1:0]    delayed_avm_byteenable [EMULATED_WRITE_DATA_LATENESS:0];
logic [AWIDTH-1:0]                  delayed_avm_address    [EMULATED_WRITE_DATA_LATENESS:0];

always_comb begin
  delayed_avm_writedata[0] = orig_avm_writedata;
  delayed_avm_burstcount[0] = orig_avm_burstcount;
  delayed_avm_byteenable[0] = orig_avm_byteenable;
  delayed_avm_address[0] = orig_avm_address;
end
for (g=1; g<=EMULATED_WRITE_DATA_LATENESS; g++) begin : GEN_WRITE_DATA_LATENESS
  always_ff @(posedge clock) begin
    delayed_avm_writedata[g] <= delayed_avm_writedata[g-1];
    delayed_avm_burstcount[g] <= delayed_avm_burstcount[g-1];
    delayed_avm_byteenable[g] <= delayed_avm_byteenable[g-1];
    delayed_avm_address[g] <= delayed_avm_address[g-1];
  end
end
assign avm_writedata = delayed_avm_writedata[EMULATED_WRITE_DATA_LATENESS];
assign avm_burstcount = delayed_avm_burstcount[EMULATED_WRITE_DATA_LATENESS];
assign avm_byteenable = delayed_avm_byteenable[EMULATED_WRITE_DATA_LATENESS];
assign avm_address = delayed_avm_address[EMULATED_WRITE_DATA_LATENESS];


//similar to above, one fmax optimization inside lsu_burst_coalesced_pipelined_read is for readdata to be late by AVM_READ_DATA_LATENESS clocks compared to readdatavalid
//this enables valid_in earliness on some wide fifos inside that lsu, which then enables width-slicing of the fifo (to maintain high fmax at very wide widths)
//just like write data, every lsu must have the same AVM_READ_DATA_LATENESS to play nicely with the read data return path from the interconnect
//for other lsu types that do not natively support AVM_READ_DATA_LATENESS, we can emulate it here but simply adding pipeline stages to readdatavalid to delay it
//note that the ring interconnect is providing the earliness on readdatavalid, if the lsu doesn't support AVM_READ_DATA_LATENESS then we need to delay it to let readdata catch up
localparam LSU_READ_DATA_LATENESS_SUPPORT = ((STYLE=="BURST-COALESCED") && (READ==1) && !((USECACHING == 1) || (HYPER_PIPELINE == 0))) ? 1 : 0; //which lsu types can natively accept late read data
localparam EMULATED_READ_DATA_LATENESS = (LSU_READ_DATA_LATENESS_SUPPORT) ? 0 : AVM_READ_DATA_LATENESS;                                         //for all other lsu types, need to delay readdatavalid here

logic avm_readdatavalid_delayed [EMULATED_READ_DATA_LATENESS:0];
logic lsu_readdatavalid;
always_comb begin
  avm_readdatavalid_delayed[0] = avm_readdatavalid;
end
for (g=1; g<=EMULATED_READ_DATA_LATENESS; g++) begin : GEN_READ_VALID_LATENESS
  always_ff @(posedge clock) begin
    avm_readdatavalid_delayed[g] <= avm_readdatavalid_delayed[g-1];
  end
end
assign lsu_readdatavalid = avm_readdatavalid_delayed[EMULATED_READ_DATA_LATENESS];


wire lsu_active;

// For handling dependents of this lsu
assign o_writeack = avm_writeack;

// If the memory is banked, permute the address appropriately
wire [AWIDTH-1:0] avm_address_raw;
lsu_permute_address #(
    .AWIDTH               (                                    AWIDTH),
    .ENABLE_BANKED_MEMORY (                      ENABLE_BANKED_MEMORY),
    .NUMBER_BANKS         (                              NUMBER_BANKS),
    .BITS_IN_BYTE_SELECT  (                      $clog2(MWIDTH_BYTES)),
    .WORD_SELECT_BITS     (ABITS_PER_LMEM_BANK - $clog2(MWIDTH_BYTES))
  ) u_permute_address (
    .i_addr(avm_address_raw),
    .o_addr(orig_avm_address)
  );

/***************
* Architecture *
***************/

// Tie off the unused read/write signals

// atomics dont have unused signals
if(ATOMIC==0) begin
  if(READ==1)
  begin
     assign avm_write = 1'b0;
     //assign orig_avm_writedata = {MWIDTH{1'bx}};
     assign orig_avm_writedata = {MWIDTH{1'b0}}; // make writedata 0 because it is used by atomics
  end
  else // WRITE
  begin
    assign avm_read = 1'b0;
  end
end
else begin //ATOMIC
  assign avm_write = 1'b0;
end








// Write acknowledge support: If WRITEACK is not to be supported, than assume
// that a write is fully completed as soon as it is accepted by the fabric.
// Otherwise, wait for the writeack signal to return.
wire lsu_writeack;  
if(USE_WRITE_ACK==1)
begin
   assign lsu_writeack = avm_writeack;
end
else
begin
   assign lsu_writeack = avm_write && !avm_waitrequest;
end


// NOP support: The i_predicate signal indicates if this is a NOP
// instruction (i.e. we do not wish a read/write to be performed).  
// Appropriately adjust the valid and stall inputs to the core LSU block to
// ensure NOP instructions are not executed and preserve their ordering with
// other threads.
wire lsu_i_valid;
wire lsu_o_valid;
wire lsu_o_empty;
wire lsu_o_almost_empty;
wire lsu_i_stall;
wire lsu_o_stall;
wire [AWIDTH-1:0] address;
wire nop;
logic [1:0] ecc_err_status_0, ecc_err_status_1;

if ((FORCE_NOP_SUPPORT) && ((STYLE=="BASIC-COALESCED") ||
                            (STYLE=="SIMPLE") ||
                            (STYLE=="ENABLED") ||
                            (STYLE=="ATOMIC-PIPELINED")))
begin
   // Some LSUs simply do not have predicate support, but we may end up in a configuration where we force
   // them to support that feature. In such a case, the only way to do this is to predicate the valid signal
   // such that it accounts for an operation that is not actually being performed.
   //
   // Please note that this kind of operation only works in stall-free clusters.
   assign lsu_i_valid = i_valid & ~i_predicate;
   assign lsu_i_stall = i_stall;
   assign o_valid = lsu_o_valid;
   assign o_empty = lsu_o_empty;
   assign o_almost_empty = lsu_o_almost_empty;
   assign o_stall = lsu_o_stall;
   assign address = i_address | i_bitwiseor;
   assign ecc_err_status_0 = 2'h0;
end
else if(SUPPORTS_NOP)
begin
   // Module intrinsicly supports NOP operations, just pass them on through
   assign lsu_i_valid = i_valid;
   assign lsu_i_stall = i_stall;
   assign o_valid = lsu_o_valid;
   assign o_empty = lsu_o_empty;
   assign o_almost_empty = lsu_o_almost_empty;
   assign o_stall = lsu_o_stall;
   assign address = i_address | i_bitwiseor;
   assign ecc_err_status_0 = 2'h0;
end
else if(ATOMIC_PIPELINED_LSU)
begin
   // No built-in NOP support.  Pipelined LSUs without NOP support need us to 
   // build a fifo along side the core LSU to track NOP instructions
   wire nop_fifo_empty;
   wire nop_fifo_empty_n;
   wire nop_fifo_full;
   wire nop_next;

   assign nop = i_predicate;
   assign address = i_address | i_bitwiseor;

   // Store the NOP status flags along side the core LSU
   // Assume (TODO eliminate this assumption?) that KERNEL_SIDE_MEM_LATENCY is the max 
   // number of simultaneous requests in flight for the LSU. The NOP FIFO will
   // will be sized to KERNEL_SIDE_MEM_LATENCY+1 to prevent stalls when the LSU is
   // full.
  
   hld_fifo #(
     .WIDTH                              (1),
     .DEPTH                              (KERNEL_SIDE_MEM_LATENCY+1),
     .ASYNC_RESET                        (ASYNC_RESET),
     .SYNCHRONIZE_RESET                  (0),
     .RESET_EVERYTHING                   (0),
     .RESET_EXTERNALLY_HELD              (1),
     .USE_STALL_LATENCY_UPSTREAM         (0),
     .USE_STALL_LATENCY_DOWNSTREAM       (0),
     .STYLE                              ("ll"),
     .enable_ecc                         (enable_ecc)
     ) nop_fifo (
     .clock              (clock),
     .resetn             (resetn_synchronized),
     .i_valid            (i_valid && !o_stall),
     .i_data             (nop),
     .o_stall            (nop_fifo_full),
     .o_almost_full      (), 
     .o_valid            (nop_fifo_empty_n),
     .o_data             (nop_next),
     .i_stall            (~(o_valid && ~i_stall)),
     .o_almost_empty     (),
     .o_empty            (),
     .ecc_err_status     (ecc_err_status_0)
   );
   assign nop_fifo_empty = ~nop_fifo_empty_n;
 
   // Logic to prevent NOP instructions from entering the core
   assign lsu_i_valid = !nop && i_valid && !nop_fifo_full;
   assign lsu_i_stall = nop_fifo_empty || nop_next || i_stall;

   // Logic to generate the valid bit for NOP instructions that have bypassed
   // the LSU.  The instructions must be kept in order so they are consistant
   // with data propagating through pipelines outside of the LSU.
   assign o_valid = (lsu_o_valid || nop_next) && !nop_fifo_empty;
   assign o_empty = lsu_o_empty;
   assign o_almost_empty = lsu_o_almost_empty;
   assign o_stall = nop_fifo_full || lsu_o_stall;
end
else
begin
   // An unpipelined LSU will only have one active request at a time.  We just
   // need to track whether there is a pending request in the LSU core and
   // appropriately bypass the core with NOP requests while preserving the
   // thread ordering.  (A NOP passes straight through to the downstream 
   // block, unless there is a pending request in the block, in which case
   // we stall until the request is complete).
   reg pending;
   always@(posedge clock or negedge aclrn)
   begin
      if(~aclrn) begin
         pending <= 1'b0;
      end else begin
         pending <= pending ? ((lsu_i_valid && !lsu_o_stall) || !(lsu_o_valid && !lsu_i_stall)) :
                              ((lsu_i_valid && !lsu_o_stall) && !(lsu_o_valid && !lsu_i_stall));
         if (~sclrn[0]) begin
            pending <= '0;
         end
      end
   end

   assign nop = i_predicate;
   assign address = i_address | i_bitwiseor;

   assign lsu_i_valid = i_valid && !nop;
   assign lsu_i_stall = i_stall;
   assign o_valid = lsu_o_valid || (!pending && i_valid && nop);
   assign o_empty = lsu_o_empty;
   assign o_almost_empty = lsu_o_almost_empty;
   assign o_stall = lsu_o_stall || (pending && nop);
   assign ecc_err_status_0 = 2'h0;
end


// Styles with no burst support require burstcount=1

if(!SUPPORTS_BURSTS)
begin
   assign orig_avm_burstcount = 1;
end


// Profiling signals.
wire req_cache_hit_count;
wire extra_unaligned_reqs;

// initialize
if(STYLE!="BURST-NON-ALIGNED")
assign extra_unaligned_reqs = 1'b0;
if(READ==0 || (STYLE!="BURST-COALESCED" && STYLE!="BURST-NON-ALIGNED" && STYLE!="SEMI-STREAMING"))
assign req_cache_hit_count = 1'b0;

// Generate different architectures based on the STYLE parameter

////////////////
// Simple LSU //
////////////////
if(STYLE=="SIMPLE")
begin
    if(READ == 1)
    begin
        lsu_simple_read #(
            .AWIDTH(AWIDTH),
            .WIDTH_BYTES(WIDTH_BYTES),
            .MWIDTH_BYTES(MWIDTH_BYTES),
            .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
            .HIGH_FMAX(HIGH_FMAX),
            .ASYNC_RESET(ASYNC_RESET),
            .SYNCHRONIZE_RESET(0),
            .enable_ecc(enable_ecc)
        ) simple_read (
            .clk(clock),
            .reset(!resetn_synchronized),
            .o_stall(lsu_o_stall),
            .i_valid(lsu_i_valid),
            .i_address(address),
            .i_stall(lsu_i_stall),
            .o_valid(lsu_o_valid),
            .o_active(lsu_active),
            .o_readdata(o_readdata),
            .avm_address(avm_address_raw),
            .avm_read(avm_read),
            .avm_readdata(avm_readdata),
            .avm_waitrequest(avm_waitrequest),
            .avm_byteenable(orig_avm_byteenable),
            .avm_readdatavalid(lsu_readdatavalid),
            .ecc_err_status(ecc_err_status_1)
        );
        assign lsu_o_empty = '0;
        assign lsu_o_almost_empty = '0;
    end
    else
    begin
        lsu_simple_write #(
            .AWIDTH(AWIDTH),
            .WIDTH_BYTES(WIDTH_BYTES),
            .MWIDTH_BYTES(MWIDTH_BYTES),
            .USE_BYTE_EN(USE_BYTE_EN),
            .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
            .ASYNC_RESET(ASYNC_RESET),
            .SYNCHRONIZE_RESET(0)
        ) simple_write (
            .clk(clock),
            .reset(!resetn_synchronized),
            .o_stall(lsu_o_stall),
            .i_valid(lsu_i_valid),
            .i_address(address),
            .i_writedata(i_writedata),
            .i_stall(lsu_i_stall),
            .o_valid(lsu_o_valid),
            .i_byteenable(i_byteenable),
            .o_active(lsu_active),
            .avm_address(avm_address_raw),
            .avm_write(avm_write),
            .avm_writeack(lsu_writeack),
            .avm_writedata(orig_avm_writedata),
            .avm_byteenable(orig_avm_byteenable),
            .avm_waitrequest(avm_waitrequest)
        );
        assign lsu_o_empty = '0;
        assign lsu_o_almost_empty = '0;
        assign ecc_err_status_1 = 2'h0;
    end
    assign avm_enable = 1'b1;
end


///////////////
// Pipelined //
///////////////
else if(STYLE=="PIPELINED")
begin
    if(READ == 1)
    begin
        lsu_pipelined_read #(
            .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
            .AWIDTH(AWIDTH),
            .WIDTH_BYTES(WIDTH_BYTES),
            .MWIDTH_BYTES(MWIDTH_BYTES),
            .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
            .FORCE_NOP_SUPPORT(FORCE_NOP_SUPPORT),
            .STALLFREE(STALLFREE),
            .USEINPUTFIFO(USEINPUTFIFO),
            .USEOUTPUTFIFO(USEOUTPUTFIFO),
            .ASYNC_RESET(ASYNC_RESET),
            .SYNCHRONIZE_RESET(0),
            .USE_STALL_LATENCY(USE_STALL_LATENCY),
            .UPSTREAM_STALL_LATENCY(UPSTREAM_STALL_LATENCY),
            .DOWNSTREAM_STALL_IN_EARLINESS(DOWNSTREAM_STALL_IN_EARLINESS),
            .ALMOST_EMPTY_THRESH(ALMOST_EMPTY_THRESH),
            .ALLOW_HIGH_SPEED_FIFO_USAGE(ALLOW_HIGH_SPEED_FIFO_USAGE),
            .enable_ecc(enable_ecc)
        ) pipelined_read (
            .clk(clock),
            .resetn(resetn_synchronized),
            .i_predicate(i_predicate),
            .o_stall(lsu_o_stall),
            .i_valid(lsu_i_valid),
            .i_address(address),
            .i_stall(lsu_i_stall),
            .o_valid(lsu_o_valid),
            .o_readdata(o_readdata),
            .o_input_fifo_depth(o_input_fifo_depth),
            .o_active(lsu_active),
            .o_empty(lsu_o_empty),
            .o_almost_empty(lsu_o_almost_empty),
            .avm_address(avm_address_raw),
            .avm_read(avm_read),
            .avm_readdata(avm_readdata),
            .avm_waitrequest(avm_waitrequest),
            .avm_byteenable(orig_avm_byteenable),
            .avm_readdatavalid(lsu_readdatavalid),
            .ecc_err_status(ecc_err_status_1)
        );
    end
    else
    begin
        lsu_pipelined_write #(
            .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
            .AWIDTH(AWIDTH),
            .WIDTH_BYTES(WIDTH_BYTES),
            .MWIDTH_BYTES(MWIDTH_BYTES),
            .USE_BYTE_EN(USE_BYTE_EN),
            .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
            .FORCE_NOP_SUPPORT(FORCE_NOP_SUPPORT),
            .USEINPUTFIFO(USEINPUTFIFO),
            .STALLFREE(STALLFREE),
            .ASYNC_RESET(ASYNC_RESET),
            .SYNCHRONIZE_RESET(0),
            .USE_STALL_LATENCY(USE_STALL_LATENCY),
            .UPSTREAM_STALL_LATENCY(UPSTREAM_STALL_LATENCY),
            .DOWNSTREAM_STALL_IN_EARLINESS(DOWNSTREAM_STALL_IN_EARLINESS),
            .ALMOST_EMPTY_THRESH(ALMOST_EMPTY_THRESH),
            .ALLOW_HIGH_SPEED_FIFO_USAGE(ALLOW_HIGH_SPEED_FIFO_USAGE),
            .enable_ecc(enable_ecc)
        ) pipelined_write (
            .clk(clock),
            .resetn(resetn_synchronized),
            .i_predicate(i_predicate),
            .o_stall(lsu_o_stall),
            .i_valid(lsu_i_valid),
            .i_address(address),
            .i_byteenable(i_byteenable),
            .i_writedata(i_writedata),
            .i_stall(lsu_i_stall),
            .o_valid(lsu_o_valid),
            .o_input_fifo_depth(o_input_fifo_depth),
            .o_active(lsu_active),
            .o_empty(lsu_o_empty),
            .o_almost_empty(lsu_o_almost_empty),
            .avm_address(avm_address_raw),
            .avm_write(avm_write),
            .avm_writeack(lsu_writeack),
            .avm_writedata(orig_avm_writedata),
            .avm_byteenable(orig_avm_byteenable),
            .avm_waitrequest(avm_waitrequest),
            .ecc_err_status(ecc_err_status_1)
        );
        assign o_readdata = 'bx;

    end
    assign avm_enable = 1'b1;
end

///////////////
// Enabled //
///////////////
else if(STYLE=="ENABLED")
begin
    wire sub_o_stall;
    assign lsu_o_stall = sub_o_stall & !i_predicate;

    if(READ == 1)
    begin
        lsu_enabled_read #(
            .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
            .AWIDTH(AWIDTH),
            .WIDTH_BYTES(WIDTH_BYTES),
            .MWIDTH_BYTES(MWIDTH_BYTES),
            .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
            .ASYNC_RESET(ASYNC_RESET),
            .SYNCHRONIZE_RESET(0),
            .enable_ecc(enable_ecc)
        ) enabled_read (
            .clk(clock),
            .reset(!resetn_synchronized),
            .o_stall(sub_o_stall),
            .i_valid(lsu_i_valid),
            .i_address(address),
            .i_stall(lsu_i_stall),
            .o_valid(lsu_o_valid),
            .o_readdata(o_readdata),
            .o_active(lsu_active),
            .avm_address(avm_address_raw),
            .avm_enable(avm_enable),
            .avm_read(avm_read),
            .avm_readdata(avm_readdata),
            .avm_waitrequest(avm_waitrequest),
            .avm_byteenable(orig_avm_byteenable),
            .avm_readdatavalid(lsu_readdatavalid),
            .ecc_err_status(ecc_err_status_1)
        );
        assign lsu_o_empty = '0;
        assign lsu_o_almost_empty = '0;
    end
    else
    begin
        lsu_enabled_write #(
            .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
            .AWIDTH(AWIDTH),
            .WIDTH_BYTES(WIDTH_BYTES),
            .MWIDTH_BYTES(MWIDTH_BYTES),
            .USE_BYTE_EN(USE_BYTE_EN),
            .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
            .ASYNC_RESET(ASYNC_RESET),
            .SYNCHRONIZE_RESET(0)
        ) enabled_write (
            .clk(clock),
            .reset(!resetn_synchronized),
            .o_stall(sub_o_stall),
            .i_valid(lsu_i_valid),
            .i_address(address),
            .i_byteenable(i_byteenable),
            .i_writedata(i_writedata),
            .i_stall(lsu_i_stall),
            .o_valid(lsu_o_valid),
            .o_active(lsu_active),
            .avm_address(avm_address_raw),
            .avm_enable(avm_enable),
            .avm_write(avm_write),
            .avm_writeack(lsu_writeack),
            .avm_writedata(orig_avm_writedata),
            .avm_byteenable(orig_avm_byteenable),
            .avm_waitrequest(avm_waitrequest)
        );
        assign o_readdata = 'bx;
        assign lsu_o_empty = '0;
        assign lsu_o_almost_empty = '0;
        assign ecc_err_status_1 = 2'h0;
    end
end

//////////////////////
// Atomic Pipelined //
//////////////////////
else if(STYLE=="ATOMIC-PIPELINED")
begin
    lsu_atomic_pipelined #(
           .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
           .AWIDTH(AWIDTH),
           .WIDTH_BYTES(WIDTH_BYTES),
           .MWIDTH_BYTES(MWIDTH_BYTES),
           .WRITEDATAWIDTH_BYTES(WRITEDATAWIDTH_BYTES),
           .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
           .USEINPUTFIFO(USEINPUTFIFO),
           .USEOUTPUTFIFO(USEOUTPUTFIFO),
           .ATOMIC_WIDTH(ATOMIC_WIDTH),
           .ASYNC_RESET(ASYNC_RESET),
           .SYNCHRONIZE_RESET(0),
           .enable_ecc(enable_ecc)
    ) atomic_pipelined (
           .clk(clock),
           .reset(!resetn_synchronized),
           .o_stall(lsu_o_stall),
           .i_valid(lsu_i_valid),
           .i_address(address),
           .i_stall(lsu_i_stall),
           .o_valid(lsu_o_valid),
           .o_readdata(o_readdata),
           .o_input_fifo_depth(o_input_fifo_depth),
           .o_active(lsu_active),
           .avm_address(avm_address_raw),
           .avm_read(avm_read),
           .avm_readdata(avm_readdata),
           .avm_waitrequest(avm_waitrequest),
           .avm_byteenable(orig_avm_byteenable),
           .avm_readdatavalid(lsu_readdatavalid),
           .i_atomic_op(i_atomic_op),
           .i_writedata(i_writedata),
           .i_cmpdata(i_cmpdata),
           .avm_writeack(lsu_writeack),
           .avm_writedata(orig_avm_writedata),
           .ecc_err_status(ecc_err_status_1)
    );
   assign avm_enable = 1'b1;
   assign lsu_o_empty = '0;
   assign lsu_o_almost_empty = '0;
end

/////////////////////
// Basic Coalesced //
/////////////////////
else if(STYLE=="BASIC-COALESCED")
begin
    // BASIC-COALESCED style never instantiated by XNodeLSU.cpp
    // Invoke a 'dummy' function here to cause a compile error, but we should never get to this point
    ErrorBasicCoalescedLSUNotSupported();
    
    if(READ == 1)
    begin
        lsu_basic_coalesced_read #(
            .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
            .AWIDTH(AWIDTH),
            .WIDTH_BYTES(WIDTH_BYTES),
            .MWIDTH_BYTES(MWIDTH_BYTES),
            .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
            .enable_ecc(enable_ecc)
        ) basic_coalesced_read (
            .clk(clock),
            .reset(!resetn_synchronized),
            .o_stall(lsu_o_stall),
            .i_valid(lsu_i_valid),
            .i_address(address),
            .i_stall(lsu_i_stall),
            .o_valid(lsu_o_valid),
            .o_readdata(o_readdata),
            .avm_address(avm_address_raw),
            .avm_read(avm_read),
            .avm_readdata(avm_readdata),
            .avm_waitrequest(avm_waitrequest),
            .avm_byteenable(orig_avm_byteenable),
            .avm_readdatavalid(lsu_readdatavalid),
            .ecc_err_status(ecc_err_status_1)
        );
        assign lsu_o_empty = '0;
        assign lsu_o_almost_empty = '0;
    end
    else
    begin
        lsu_basic_coalesced_write #(
            .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
            .AWIDTH(AWIDTH),
            .WIDTH_BYTES(WIDTH_BYTES),
            .USE_BYTE_EN(USE_BYTE_EN),
            .MWIDTH_BYTES(MWIDTH_BYTES),
            .ALIGNMENT_ABITS(ALIGNMENT_ABITS)
        ) basic_coalesced_write (
            .clk(clock),
            .reset(!resetn_synchronized),
            .o_stall(lsu_o_stall),
            .i_valid(lsu_i_valid),
            .i_address(address),
            .i_writedata(i_writedata),
            .i_byteenable(i_byteenable),
            .i_stall(lsu_i_stall),
            .o_valid(lsu_o_valid),
            .o_active(lsu_active),
            .avm_address(avm_address_raw),
            .avm_write(avm_write),
            .avm_writeack(lsu_writeack),
            .avm_writedata(orig_avm_writedata),
            .avm_byteenable(orig_avm_byteenable),
            .avm_waitrequest(avm_waitrequest)
        );
        assign lsu_o_empty = '0;
        assign lsu_o_almost_empty = '0;
        assign ecc_err_status_1 = 2'h0;
    end
   assign avm_enable = 1'b1;
end

/////////////////////
// Burst Coalesced //
/////////////////////
else if(STYLE=="BURST-COALESCED")
begin
    if(READ == 1)
    begin
      if((USECACHING == 1) || (HYPER_PIPELINE == 0))     // hyper-optimized LSU does not currently support caching
      begin
        lsu_bursting_read #(
            .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
            .MEMORY_SIDE_MEM_LATENCY(MEMORY_SIDE_MEM_LATENCY),
            .AWIDTH(AWIDTH),
            .WIDTH_BYTES(WIDTH_BYTES),
            .MWIDTH_BYTES(MWIDTH_BYTES),
            .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
            .BURSTCOUNT_WIDTH(BURSTCOUNT_WIDTH),
            .USECACHING(USECACHING),
            .ACL_PROFILE(ACL_PROFILE),
            .CACHE_SIZE_N(CACHESIZE),
            .ASYNC_RESET(ASYNC_RESET),
            .SYNCHRONIZE_RESET(0),
            .enable_ecc(enable_ecc)
        ) bursting_read (
            .clk(clock),
            .clk2x(clock2x),
            .reset(!resetn_synchronized),
            .flush(flush),
            .i_nop(i_predicate),
            .o_stall(lsu_o_stall),
            .i_valid(lsu_i_valid),            
            .i_address(address),
            .i_stall(lsu_i_stall),
            .o_valid(lsu_o_valid),
            .o_readdata(o_readdata),
            .o_active(lsu_active),
            .avm_address(avm_address_raw),
            .avm_read(avm_read),
            .avm_readdata(avm_readdata),
            .avm_waitrequest(avm_waitrequest),
            .avm_byteenable(orig_avm_byteenable),
            .avm_burstcount(orig_avm_burstcount),
            .avm_readdatavalid(lsu_readdatavalid),
            .req_cache_hit_count(req_cache_hit_count),
            .ecc_err_status(ecc_err_status_1)
        );
        assign lsu_o_empty = '0;
        assign lsu_o_almost_empty = '0;
      end
      else                                   // LSU optimized for HIPI architecture
      begin
      
         lsu_burst_coalesced_pipelined_read #(
            .AWIDTH                    (AWIDTH),
            .ALIGNMENT_ABITS           (ALIGNMENT_ABITS),
            .WIDTH_BYTES               (WIDTH_BYTES),
            .MWIDTH_BYTES              (MWIDTH_BYTES),
            .BURSTCOUNT_WIDTH          (BURSTCOUNT_WIDTH),
            .TIMEOUT                   (8),
            .MAX_THREADS_PER_BURST_LOG2            (6),
            .END_BURST_MWORD_BOUNDRY_THREADS_LOG2  (6),
            .MIN_THREAD_CAPACITY       ((MEMORY_SIDE_MEM_LATENCY <= 256)? 256 : MEMORY_SIDE_MEM_LATENCY),            // minimum number of threads this block must be able to accept when backpressured (stall_in asserted).  Note that this block may still stall before reaching this capacity if the Avalon bus stalls
            .MIN_MEMORY_BUFFER_DEPTH   ((MEMORY_SIDE_MEM_LATENCY <= 256)? 256 : MEMORY_SIDE_MEM_LATENCY),
            .ACL_PROFILE               (ACL_PROFILE),
            .ASYNC_RESET               (ASYNC_RESET),
            .SYNCHRONIZE_RESET         (0),
            .USE_STALL_LATENCY         (USE_STALL_LATENCY),
            .UPSTREAM_STALL_LATENCY    (UPSTREAM_STALL_LATENCY),
            .DOWNSTREAM_STALL_IN_EARLINESS   (DOWNSTREAM_STALL_IN_EARLINESS),
            .ALMOST_EMPTY_THRESH       (ALMOST_EMPTY_THRESH),
            .ALLOW_HIGH_SPEED_FIFO_USAGE               (ALLOW_HIGH_SPEED_FIFO_USAGE),
            .enable_ecc                (enable_ecc),
            .AVM_READ_DATA_LATENESS    (AVM_READ_DATA_LATENESS),
            .WIDE_DATA_SLICING         (WIDE_DATA_SLICING)
         ) bursting_read (
            .clock                     (clock),
            .i_resetn                  (resetn_synchronized),
            .i_valid                   (lsu_i_valid),
            .o_stall                   (lsu_o_stall),
            .i_predicate               (i_predicate),
            .i_address                 (address),
            .o_valid                   (lsu_o_valid),
            .o_empty                   (lsu_o_empty),
            .o_almost_empty            (lsu_o_almost_empty),
            .i_stall                   (lsu_i_stall),
            .o_readdata                (o_readdata),
            .o_active                  (lsu_active),
            .avm_read                  (avm_read),
            .avm_waitrequest           (avm_waitrequest),
            .avm_address               (avm_address_raw),
            .avm_burstcount            (orig_avm_burstcount),
            .avm_byteenable            (orig_avm_byteenable),
            .avm_readdata              (avm_readdata),
            .avm_readdatavalid         (lsu_readdatavalid),
            .extra_unaligned_reqs      (),
            .ecc_err_status            (ecc_err_status_1)
         );
         assign req_cache_hit_count = '0;
      end

    end
    else    // READ != 1
    begin
    
        if (HYPER_PIPELINE == 0)
        begin

        lsu_bursting_write #(
            .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
            .MEMORY_SIDE_MEM_LATENCY(MEMORY_SIDE_MEM_LATENCY),
            .AWIDTH(AWIDTH),
            .WIDTH_BYTES(WIDTH_BYTES),
            .MWIDTH_BYTES(MWIDTH_BYTES),
            .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
            .BURSTCOUNT_WIDTH(BURSTCOUNT_WIDTH),
            .USE_WRITE_ACK(USE_WRITE_ACK),
            .USE_BYTE_EN(USE_BYTE_EN),
            .ASYNC_RESET(ASYNC_RESET),
            .SYNCHRONIZE_RESET(0)
        ) bursting_write (
            .clk(clock),
            .clk2x(clock2x),
            .reset(!resetn_synchronized),
            .o_stall(lsu_o_stall),
            .i_valid(lsu_i_valid),
            .i_nop(i_predicate),
            .i_address(address),
            .i_writedata(i_writedata),
            .i_stall(lsu_i_stall),
            .o_valid(lsu_o_valid),
            .o_active(lsu_active),
            .i_byteenable(i_byteenable),
            .avm_address(avm_address_raw),
            .avm_write(avm_write),
            .avm_writeack(lsu_writeack),
            .avm_writedata(orig_avm_writedata),
            .avm_byteenable(orig_avm_byteenable),
            .avm_burstcount(orig_avm_burstcount),
            .avm_waitrequest(avm_waitrequest)
        );
        assign lsu_o_empty = '0;
        assign lsu_o_almost_empty = '0;
        assign ecc_err_status_1 = 2'h0;
        end
        else                                   // LSU optimized for HIPI architecture
        begin

            lsu_burst_coalesced_pipelined_write #(
               .AWIDTH(AWIDTH),
               .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
               .WIDTH_BYTES(WIDTH_BYTES),
               .USE_BYTE_EN(USE_BYTE_EN),
               .MWIDTH_BYTES(MWIDTH_BYTES),
               .BURSTCOUNT_WIDTH(BURSTCOUNT_WIDTH),
               .MEMORY_SIDE_CAPACITY(MEMORY_SIDE_MEM_LATENCY<256 ? 256:MEMORY_SIDE_MEM_LATENCY),    // TODO This may need to be changed to give control to compiler
               .USE_WRITE_ACK(USE_WRITE_ACK),
               .TIMEOUT(8),
               .MIN_THREAD_CAPACITY(MEMORY_SIDE_MEM_LATENCY<256 ? 256:MEMORY_SIDE_MEM_LATENCY),     // TODO provide explicit control of this to compiler
               .MIN_MEMORY_BUFFER_DEPTH(MEMORY_SIDE_MEM_LATENCY<256 ? 256:MEMORY_SIDE_MEM_LATENCY), // TODO provide explicit control of this to compiler
               .ASYNC_RESET(ASYNC_RESET),
               .SYNCHRONIZE_RESET(0),
               .USE_STALL_LATENCY(USE_STALL_LATENCY),
               .UPSTREAM_STALL_LATENCY(UPSTREAM_STALL_LATENCY),
               .ALMOST_EMPTY_THRESH(ALMOST_EMPTY_THRESH),
               .ALLOW_HIGH_SPEED_FIFO_USAGE(ALLOW_HIGH_SPEED_FIFO_USAGE),
               .enable_ecc(enable_ecc),
               .AVM_WRITE_DATA_LATENESS(AVM_WRITE_DATA_LATENESS),
               .WIDE_DATA_SLICING(WIDE_DATA_SLICING)
            ) bursting_write (
               .clock(clock),
               .i_resetn(resetn_synchronized),
               .o_stall(lsu_o_stall),
               .i_valid(lsu_i_valid),
               .i_predicate(i_predicate),
               .i_address(address),
               .i_writedata(i_writedata),
               .i_stall(lsu_i_stall),
               .o_valid(lsu_o_valid),
               .o_empty(lsu_o_empty),
               .o_almost_empty(lsu_o_almost_empty),
               .o_active(lsu_active),
               .i_byteenable(i_byteenable),
               .avm_address(avm_address_raw),
               .avm_write(avm_write),
               .avm_writeack(lsu_writeack),
               .avm_writedata(orig_avm_writedata),
               .avm_byteenable(orig_avm_byteenable),
               .avm_burstcount(orig_avm_burstcount),
               .avm_waitrequest(avm_waitrequest),
               .ecc_err_status(ecc_err_status_1)
            );
        
        end

/*
        // this LSU was created to improve FMAX on A10 designs, but after check-in
        // it was found to cause hangs, so has been disabled
        // Note that this LSU does NOT support WRITEACK as currently implemented,
        // so if re-enabling it, only do so for non WRITEACK cases.
        acl_aligned_burst_coalesced_lsu #(
            .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
            .MEMORY_SIDE_MEM_LATENCY(MEMORY_SIDE_MEM_LATENCY),
            .AWIDTH(AWIDTH),
            .WIDTH_BYTES(WIDTH_BYTES),
            .MWIDTH_BYTES(MWIDTH_BYTES),
            .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
            .BURSTCOUNT_WIDTH(BURSTCOUNT_WIDTH),
            .USE_WRITE_ACK(USE_WRITE_ACK),
            .USE_BYTE_EN(USE_BYTE_EN),
            .HIGH_FMAX(HIGH_FMAX),
            .INTENDED_DEVICE_FAMILY(INTENDED_DEVICE_FAMILY)
        ) bursting_write (
            .clock(clock),
            .clock2x(clock2x),
            .resetn(resetn_synchronized),
            .o_stall(lsu_o_stall),
            .i_valid(lsu_i_valid),
            .i_predicate(i_predicate),
            .i_address(address),
            .i_writedata(i_writedata),
            .i_stall(lsu_i_stall),
            .o_valid(lsu_o_valid),
            .o_active(lsu_active),
            .i_byteenable(i_byteenable),
            .avm_address(avm_address_raw),
            .avm_write(avm_write),
            .avm_writeack(lsu_writeack),
            .avm_writedata(orig_avm_writedata),
            .avm_byteenable(orig_avm_byteenable),
            .avm_burstcount(orig_avm_burstcount),
            .avm_waitrequest(avm_waitrequest)
        );
        assign o_empty = '0;
        assign o_almost_empty = '0;
*/        
    end
    assign avm_enable = 1'b1;
end



/////////////////////////////////
// Burst Coalesced Non Aligned //
/////////////////////////////////
else if(STYLE=="BURST-NON-ALIGNED")
begin
    if(READ == 1)
    begin
        //hld_global_load_store with read cache can result in severe throughput degradation if not enough work is supplied since lsu_bursting_read has lower latency to return a cache hit
        //using stall latency as a proxy for "enough work", in scenarios where hld_global_load_store has lower throughput e.g. stall latency is causing bubbles, one would likely benefit from disabling stall latency
        //also, lsu_bursting_read does not support stall latency, so if stall latency is needed we must use hld_global_load_store for functional correctness
        //cache hit latency can be reduced in hld_global_load_store by moving the bump-in-the-wire cache to the kernel interface rather than the memory interface, but then unaligned access gets complicated
        if (USECACHING && !USE_STALL_LATENCY) begin
            lsu_bursting_read #(
                .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
                .MEMORY_SIDE_MEM_LATENCY(MEMORY_SIDE_MEM_LATENCY),
                .AWIDTH(AWIDTH),
                .WIDTH_BYTES(WIDTH_BYTES),
                .MWIDTH_BYTES(MWIDTH_BYTES),
                .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
                .BURSTCOUNT_WIDTH(BURSTCOUNT_WIDTH),
                .USECACHING(USECACHING),
                .CACHE_SIZE_N(CACHESIZE),
                .ACL_PROFILE(ACL_PROFILE),
                .UNALIGNED(1),
                .ASYNC_RESET(ASYNC_RESET),
                .SYNCHRONIZE_RESET(0),
                .enable_ecc(enable_ecc)
            ) bursting_non_aligned_read (
                .clk(clock),
                .clk2x(clock2x),
                .reset(!resetn_synchronized),
                .flush(flush),
                .o_stall(lsu_o_stall),
                .i_valid(lsu_i_valid),
                .i_address(address),
                .i_nop(i_predicate),
                .i_stall(lsu_i_stall),
                .o_valid(lsu_o_valid),
                .o_readdata(o_readdata),
                .o_active(lsu_active),
                .avm_address(avm_address_raw),
                .avm_read(avm_read),
                .avm_readdata(avm_readdata),
                .avm_waitrequest(avm_waitrequest),
                .avm_byteenable(orig_avm_byteenable),
                .avm_burstcount(orig_avm_burstcount),
                .avm_readdatavalid(lsu_readdatavalid),
                .extra_unaligned_reqs(extra_unaligned_reqs),
                .req_cache_hit_count(req_cache_hit_count),
                .ecc_err_status(ecc_err_status_1)
            );
            assign lsu_o_empty = '0;
            assign lsu_o_almost_empty = '0;
        end
        else begin
            logic proper_timing_i_stall;    //no support for stall in earliness
            if (DOWNSTREAM_STALL_IN_EARLINESS == 0) begin
                assign proper_timing_i_stall = lsu_i_stall;
            end
            else begin  //DOWNSTREAM_STALL_IN_EARLINESS >= 1
                logic [DOWNSTREAM_STALL_IN_EARLINESS-1:0] lsu_i_stall_delayed;
                always_ff @(posedge clock) begin
                    lsu_i_stall_delayed <= (lsu_i_stall_delayed << 1) | lsu_i_stall;
                end
                assign proper_timing_i_stall = lsu_i_stall_delayed[DOWNSTREAM_STALL_IN_EARLINESS-1];
            end
            
            hld_global_load_store #(
                .READ                       (1),
                .ASYNC_RESET                (ASYNC_RESET),
                .ADDR_WIDTH                 (AWIDTH),
                .ADDR_ALIGNMENT_BITS        (ALIGNMENT_ABITS),
                .KER_DATA_BYTES_INTERNAL    (WIDTH_BYTES),
                .KER_DATA_BYTES             (WIDTH_BYTES),
                .MEM_DATA_BYTES_INTERNAL    (MWIDTH_BYTES),
                .MEM_DATA_BYTES             (MWIDTH_BYTES),
                .BURSTCOUNT_WIDTH           (BURSTCOUNT_WIDTH),
                .KER_UP_STALL_LATENCY       ((USE_STALL_LATENCY) ? ((UPSTREAM_STALL_LATENCY) ? UPSTREAM_STALL_LATENCY : 1): 0),
                .KER_DOWN_STALL_LATENCY     ((USE_STALL_LATENCY) ? ((ALMOST_EMPTY_THRESH) ? ALMOST_EMPTY_THRESH : 1) : 0),
                .DATA_ALIGNER_MUX_PER_PIPE  (2),
                .ENABLE_WORD_COALESCE       (1),
                .ENABLE_BURST_COALESCE      (1),
                .USE_PREDICATE              (1),
                .USE_BYTE_ENABLE            (0),    //write lsu only
                .USE_WRITE_ACK              (0),    //write lsu only
                .HIGH_THROUGHPUT_MODE       (1),
                .CACHE_SIZE_BYTES           ((USECACHING) ? CACHESIZE * MWIDTH_BYTES : 0)
            ) hld_global_load (
                .clock                      (clock),
                .resetn                     (resetn),   //this lsu has its own reset synchronizer
                .i_flush_cache              (flush),
                .i_valid                    (lsu_i_valid),
                .o_stall                    (lsu_o_stall),
                .i_address                  (address),
                .i_writedata                (),
                .i_byteenable               (),
                .i_predicate                (i_predicate),
                .o_readdata                 (o_readdata),
                .o_valid                    (lsu_o_valid),
                .o_empty                    (lsu_o_empty),
                .o_almost_empty             (lsu_o_almost_empty),
                .i_stall                    (proper_timing_i_stall),
                .avm_write                  (),
                .avm_read                   (avm_read),
                .avm_waitrequest            (avm_waitrequest),
                .avm_address                (avm_address_raw),
                .avm_writedata              (),
                .avm_byteenable             (orig_avm_byteenable),
                .avm_burstcount             (orig_avm_burstcount),
                .avm_writeack               (1'b0),
                .avm_readdatavalid          (lsu_readdatavalid),
                .avm_readdata               (avm_readdata),
                .o_active                   (lsu_active)
            );
            assign ecc_err_status_1 = 2'h0;
        end
    end
    else
    begin
        logic proper_timing_i_stall;    //no support for stall in earliness
        if (DOWNSTREAM_STALL_IN_EARLINESS == 0) begin
            assign proper_timing_i_stall = lsu_i_stall;
        end
        else begin  //DOWNSTREAM_STALL_IN_EARLINESS >= 1
            logic [DOWNSTREAM_STALL_IN_EARLINESS-1:0] lsu_i_stall_delayed;
            always_ff @(posedge clock) begin
                lsu_i_stall_delayed <= (lsu_i_stall_delayed << 1) | lsu_i_stall;
            end
            assign proper_timing_i_stall = lsu_i_stall_delayed[DOWNSTREAM_STALL_IN_EARLINESS-1];
        end
        
        hld_global_load_store #(
            .READ                       (0),
            .ASYNC_RESET                (ASYNC_RESET),
            .ADDR_WIDTH                 (AWIDTH),
            .ADDR_ALIGNMENT_BITS        (ALIGNMENT_ABITS),
            .KER_DATA_BYTES_INTERNAL    (WIDTH_BYTES),
            .KER_DATA_BYTES             (WIDTH_BYTES),
            .MEM_DATA_BYTES_INTERNAL    (MWIDTH_BYTES),
            .MEM_DATA_BYTES             (MWIDTH_BYTES),
            .BURSTCOUNT_WIDTH           (BURSTCOUNT_WIDTH),
            .KER_UP_STALL_LATENCY       ((USE_STALL_LATENCY) ? ((UPSTREAM_STALL_LATENCY) ? UPSTREAM_STALL_LATENCY : 1): 0),
            .KER_DOWN_STALL_LATENCY     ((USE_STALL_LATENCY) ? ((ALMOST_EMPTY_THRESH) ? ALMOST_EMPTY_THRESH : 1) : 0),
            .DATA_ALIGNER_MUX_PER_PIPE  (2),
            .ENABLE_WORD_COALESCE       (1),
            .ENABLE_BURST_COALESCE      (1),
            .USE_PREDICATE              (1),
            .USE_BYTE_ENABLE            (USE_BYTE_EN),
            .USE_WRITE_ACK              (USE_WRITE_ACK),
            .HIGH_THROUGHPUT_MODE       (1),
            .CACHE_SIZE_BYTES           (0)     //read lsu only
        ) hld_global_store (
            .clock                      (clock),
            .resetn                     (resetn),   //this lsu has its own reset synchronizer
            .i_flush_cache              (1'b0),
            .i_valid                    (lsu_i_valid),
            .o_stall                    (lsu_o_stall),
            .i_address                  (address),
            .i_writedata                (i_writedata),
            .i_byteenable               (i_byteenable),
            .i_predicate                (i_predicate),
            .o_readdata                 (),
            .o_valid                    (lsu_o_valid),
            .o_empty                    (lsu_o_empty),
            .o_almost_empty             (lsu_o_almost_empty),
            .i_stall                    (lsu_i_stall),
            .avm_write                  (avm_write),
            .avm_read                   (),
            .avm_waitrequest            (avm_waitrequest),
            .avm_address                (avm_address_raw),
            .avm_writedata              (orig_avm_writedata),
            .avm_byteenable             (orig_avm_byteenable),
            .avm_burstcount             (orig_avm_burstcount),
            .avm_writeack               (lsu_writeack),
            .avm_readdatavalid          (1'b0),
            .avm_readdata               (),
            .o_active                   (lsu_active)
        );
        assign ecc_err_status_1 = 2'h0;
    end
   assign avm_enable = 1'b1;
end
///////////////
// Streaming //
///////////////
else if(STYLE=="STREAMING")
begin
   if(READ==1)
   begin
      lsu_streaming_read #(
         .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
         .MEMORY_SIDE_MEM_LATENCY(MEMORY_SIDE_MEM_LATENCY),
         .AWIDTH(AWIDTH),
         .WIDTH_BYTES(WIDTH_BYTES),
         .MWIDTH_BYTES(MWIDTH_BYTES),
         .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
         .BURSTCOUNT_WIDTH(BURSTCOUNT_WIDTH),
         .ASYNC_RESET(ASYNC_RESET),
         .SYNCHRONIZE_RESET(0),
         .enable_ecc(enable_ecc)
      ) streaming_read (
         .clk(clock),
         .reset(!resetn_synchronized),
         .o_stall(lsu_o_stall),
         .i_valid(lsu_i_valid),
         .i_stall(lsu_i_stall),
         .o_valid(lsu_o_valid),
         .o_readdata(o_readdata),
         .o_active(lsu_active),
         .i_nop(i_predicate),
         .base_address(stream_base_addr),
         .size(stream_size),
         .avm_address(avm_address_raw),
         .avm_burstcount(orig_avm_burstcount),
         .avm_read(avm_read),
         .avm_readdata(avm_readdata),
         .avm_waitrequest(avm_waitrequest),
         .avm_byteenable(orig_avm_byteenable),
         .avm_readdatavalid(lsu_readdatavalid),
         .ecc_err_status(ecc_err_status_1)
      );
      assign lsu_o_empty = '0;
      assign lsu_o_almost_empty = '0;
   end
   else
   begin
     lsu_streaming_write #(
         .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
         .MEMORY_SIDE_MEM_LATENCY(MEMORY_SIDE_MEM_LATENCY),
         .AWIDTH(AWIDTH),
         .WIDTH_BYTES(WIDTH_BYTES),
         .MWIDTH_BYTES(MWIDTH_BYTES),
         .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
         .BURSTCOUNT_WIDTH(BURSTCOUNT_WIDTH),
         .USE_BYTE_EN(USE_BYTE_EN),
         .ASYNC_RESET(ASYNC_RESET),
         .SYNCHRONIZE_RESET(0),
         .enable_ecc(enable_ecc)
     ) streaming_write (
         .clk(clock),
         .reset(!resetn_synchronized),
         .o_stall(lsu_o_stall),
         .i_valid(lsu_i_valid),
         .i_stall(lsu_i_stall),
         .o_valid(lsu_o_valid),
         .o_active(lsu_active),
         .i_byteenable(i_byteenable),
         .i_writedata(i_writedata),
         .i_nop(i_predicate),
         .base_address(stream_base_addr),
         .size(stream_size),
         .avm_address(avm_address_raw),
         .avm_burstcount(orig_avm_burstcount),
         .avm_write(avm_write),
         .avm_writeack(lsu_writeack),
         .avm_writedata(orig_avm_writedata),
         .avm_byteenable(orig_avm_byteenable),
         .avm_waitrequest(avm_waitrequest),
         .ecc_err_status(ecc_err_status_1)
     );
     assign lsu_o_empty = '0;
     assign lsu_o_almost_empty = '0;
   end
   assign avm_enable = 1'b1;
end
////////////////////
// SEMI-Streaming //
////////////////////
else if(STYLE=="SEMI-STREAMING")
begin
   if(READ==1)
   begin
      lsu_read_cache #(
         .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
         .AWIDTH(AWIDTH),
         .WIDTH_BYTES(WIDTH_BYTES),
         .MWIDTH_BYTES(MWIDTH_BYTES),
         .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
         .BURSTCOUNT_WIDTH(BURSTCOUNT_WIDTH),
         .ACL_PROFILE(ACL_PROFILE),
         .REQUESTED_SIZE(CACHESIZE * MWIDTH_BYTES),      // REQUESTED_SIZE is the size of the cache in BYTES
         .ASYNC_RESET(ASYNC_RESET),
         .SYNCHRONIZE_RESET(0),
         .enable_ecc(enable_ecc)
      ) read_cache (
         .clk(clock),
         .reset(!resetn_synchronized),
         .flush(flush),
         .o_stall(lsu_o_stall),
         .i_valid(lsu_i_valid),
         .i_address(address),
         .i_stall(lsu_i_stall),
         .o_valid(lsu_o_valid),
         .o_readdata(o_readdata),
         .o_active(lsu_active),
         .i_nop(i_predicate),
         .avm_address(avm_address_raw),
         .avm_burstcount(orig_avm_burstcount),
         .avm_read(avm_read),
         .avm_readdata(avm_readdata),
         .avm_waitrequest(avm_waitrequest),
         .avm_byteenable(orig_avm_byteenable),
         .avm_readdatavalid(lsu_readdatavalid),
         .req_cache_hit_count(req_cache_hit_count),
         .ecc_err_status(ecc_err_status_1)
      );
      assign lsu_o_empty = '0;
      assign lsu_o_almost_empty = '0;
   end 
   else begin
      assign ecc_err_status_1 = 2'h0;
   end
   assign avm_enable = 1'b1;
end
/////////////////
// Prefetching //
/////////////////
else if(STYLE=="PREFETCHING")
begin
   if(READ==1)
   begin
      lsu_streaming_prefetch_read #(
         .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
         .MEMORY_SIDE_MEM_LATENCY(MEMORY_SIDE_MEM_LATENCY),
         .AWIDTH(AWIDTH),
         .WIDTH_BYTES(WIDTH_BYTES),
         .MWIDTH_BYTES(MWIDTH_BYTES),
         .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
         .BURSTCOUNT_WIDTH(BURSTCOUNT_WIDTH),
         .ASYNC_RESET(ASYNC_RESET),
         .SYNCHRONIZE_RESET(0),
         .enable_ecc(enable_ecc)
      ) streaming_prefetch_read (
         .clk(clock),
         .reset(!resetn_synchronized),
         .flush(flush),
         .o_stall(lsu_o_stall),
         .i_valid(lsu_i_valid),
         .i_stall(lsu_i_stall),
         .o_valid(lsu_o_valid),
         .o_readdata(o_readdata),
         .o_active(lsu_active),
         .i_nop(i_predicate),
         .i_address(address),
         .avm_address(avm_address_raw),
         .avm_burstcount(orig_avm_burstcount),
         .avm_read(avm_read),
         .avm_readdata(avm_readdata),
         .avm_waitrequest(avm_waitrequest),
         .avm_byteenable(orig_avm_byteenable),
         .avm_readdatavalid(lsu_readdatavalid),
         .ecc_err_status(ecc_err_status_1)
      );
      assign lsu_o_empty = '0;
      assign lsu_o_almost_empty = '0;
   end
   else
   begin
      // Use Burst Coalesced Non Aligned for Writes in Prefetching style
       lsu_non_aligned_write #(
           .KERNEL_SIDE_MEM_LATENCY(KERNEL_SIDE_MEM_LATENCY),
           .MEMORY_SIDE_MEM_LATENCY(MEMORY_SIDE_MEM_LATENCY),
           .AWIDTH(AWIDTH),
           .WIDTH_BYTES(WIDTH_BYTES),
           .MWIDTH_BYTES(MWIDTH_BYTES),
           .ALIGNMENT_ABITS(ALIGNMENT_ABITS),
           .BURSTCOUNT_WIDTH(BURSTCOUNT_WIDTH),
           .USE_WRITE_ACK(USE_WRITE_ACK),
           .USE_BYTE_EN(USE_BYTE_EN),
           .ACL_PROFILE(ACL_PROFILE),
           .ASYNC_RESET(ASYNC_RESET),
           .SYNCHRONIZE_RESET(0)
       ) bursting_non_aligned_write (
           .clk(clock),
           .clk2x(clock2x),
           .reset(!resetn_synchronized),
           .o_stall(lsu_o_stall),
           .i_valid(lsu_i_valid),
           .i_address(address),
           .i_nop(i_predicate),
           .i_writedata(i_writedata),
           .i_stall(lsu_i_stall),
           .o_valid(lsu_o_valid),
           .o_active(lsu_active),
           .i_byteenable(i_byteenable),
           .avm_address(avm_address_raw),
           .avm_write(avm_write),
           .avm_writeack(lsu_writeack),
           .avm_writedata(orig_avm_writedata),
           .avm_byteenable(orig_avm_byteenable),
           .avm_burstcount(orig_avm_burstcount),
           .avm_waitrequest(avm_waitrequest),
           .extra_unaligned_reqs(extra_unaligned_reqs)
       );
      assign ecc_err_status_1 = 0;
   end
   assign avm_enable = 1'b1;
   assign lsu_o_empty = '0;
   assign lsu_o_almost_empty = '0;
end

else
begin
    assign ecc_err_status_1 = 2'h0;
end

assign ecc_err_status = ecc_err_status_0 | ecc_err_status_1;

always@(posedge clock or negedge aclrn) begin
   if (~aclrn) begin
      o_active <= 1'b0;
   end else begin
      o_active <= lsu_active;
      if (~sclrn[0]) begin
         o_active <= '0;
      end
   end
end

// Profile the valids and stalls of the LSU

// FIXME this will only work properly when AVM_WRITE_DATA_LATENESS == 0 and AVM_READ_DATA_LATENESS == 0
// when data lateness is used, should delay stall and valid by that many clocks to know when the right time to consume burst count and other data path signals
// Case:578456 tracks this

if(ACL_PROFILE==1)
begin

   // keep track of write bursts
   reg [BURSTCOUNT_WIDTH-1:0] profile_remaining_writeburst_count;
   wire active_write_burst;
   assign active_write_burst = (profile_remaining_writeburst_count != {BURSTCOUNT_WIDTH{1'b0}});
   always@(posedge clock or negedge aclrn) begin
      if (~aclrn) begin
         profile_remaining_writeburst_count <= {BURSTCOUNT_WIDTH{1'b0}};
      end else begin
         if(avm_write & ~avm_waitrequest & ~active_write_burst) 
            // start of a new write burst
            profile_remaining_writeburst_count <= avm_burstcount - 1;
         else if(~avm_waitrequest & active_write_burst)
            // count down one burst
            profile_remaining_writeburst_count <= profile_remaining_writeburst_count - 1;
         if (~sclrn[0]) begin
            profile_remaining_writeburst_count <= '0;
         end
      end
   end

   assign profile_bw = ((READ==1) ? lsu_readdatavalid : (avm_write & ~avm_waitrequest)) & avm_enable;
   assign profile_bw_incr = MWIDTH_BYTES;
   if (USE_STALL_LATENCY == 1)
   begin
     assign profile_total_ivalid = (i_valid);
     assign profile_total_req = (i_valid & ~i_predicate);
   end
   else
   begin
     assign profile_total_ivalid = (i_valid & ~o_stall);
     assign profile_total_req = (i_valid & ~i_predicate & ~o_stall);
   end
   assign profile_i_stall_count = (i_stall & o_valid);  // this port is never actually profiled and will not be supported for stall-latency (count means nothing)
                                                        // if want to update it for stall latency would need to set this to (~o_empty & ~o_valid)
                                                        // DELETE THIS when add counters to non-stallable blocks - FB:533723
   assign profile_o_stall_count = (o_stall & i_valid);  // this port is never actually profiled and will not be supported for stall-latency (count means nothing)
                                                        // if want to update it for stall latency would need to expose i_empty and set this to (~i_empty & ~i_valid)
                                                        // DELETE THIS when add counters to non-stallable blocks - FB:533723
   assign profile_avm_readwrite_count = ((avm_read | avm_write) & ~avm_waitrequest & ~active_write_burst & avm_enable);
   assign profile_avm_burstcount_total = ((avm_read | avm_write) & ~avm_waitrequest & ~active_write_burst & avm_enable);
   assign profile_avm_burstcount_total_incr = avm_burstcount;
   assign profile_req_cache_hit_count = req_cache_hit_count;
   assign profile_extra_unaligned_reqs = extra_unaligned_reqs;
   assign profile_avm_stall = ((avm_read | avm_write) & avm_waitrequest & avm_enable);

end
else begin
   assign profile_bw = 1'b0;
   assign profile_bw_incr = {ACL_PROFILE_INCREMENT_WIDTH{1'b0}};
   assign profile_total_ivalid = 1'b0;
   assign profile_total_req = 1'b0;
   assign profile_i_stall_count = 1'b0;
   assign profile_o_stall_count = 1'b0;
   assign profile_avm_readwrite_count = 1'b0;
   assign profile_avm_burstcount_total = 1'b0;
   assign profile_avm_burstcount_total_incr = {ACL_PROFILE_INCREMENT_WIDTH{1'b0}};
   assign profile_req_cache_hit_count = 1'b0;
   assign profile_extra_unaligned_reqs = 1'b0;
   assign profile_avm_stall = 1'b0;
end

// synthesis translate_off
// Profiling data - for simulation only
reg  [31:0] bw_kernel;
reg  [31:0] bw_avalon;

// Measure Bandwidth on Avalon signals
always@(posedge clock or negedge aclrn)
begin
   if (~aclrn) begin
      bw_avalon <= '0;
   end else begin
      if (READ==1 && avm_readdatavalid)
         bw_avalon <= bw_avalon + MWIDTH_BYTES;
      else if (READ==0 && avm_write && ~avm_waitrequest)
         bw_avalon <= bw_avalon + MWIDTH_BYTES;
      if (~sclrn[0]) begin
         bw_avalon <= '0;
      end
   end
end

// Measure Bandwidth on kernel signals
always@(posedge clock or negedge aclrn)
begin
   if (~aclrn) begin
      bw_kernel <= '0;
   end else begin
      if (i_valid && !o_stall && ~nop)
         bw_kernel <= bw_kernel + WIDTH_BYTES;
      if (~sclrn[0]) begin
         bw_kernel <= '0;
      end
   end
end
// synthesis translate_on


if(PROFILE_ADDR_TOGGLE==1 && STYLE!="SIMPLE")
begin
  localparam COUNTERWIDTH=12;
  // We currently assume AWIDTH is always 32, but we really need to set this to
  // a tight lower bound to avoid wasting area here.
  logic [COUNTERWIDTH-1:0] togglerate[AWIDTH-ALIGNMENT_ABITS+1];

  acl_toggle_detect 
    #(.WIDTH(AWIDTH-ALIGNMENT_ABITS), .COUNTERWIDTH(COUNTERWIDTH)) atd (
      .clk(clock),
      .resetn(resetn_synchronized),
      .valid(i_valid && ~o_stall && ~nop),
      .value({i_address >> ALIGNMENT_ABITS,{ALIGNMENT_ABITS{1'b0}}}),
      .count(togglerate));

  acl_debug_mem #(.WIDTH(COUNTERWIDTH), .SIZE(AWIDTH-ALIGNMENT_ABITS+1)) dbg_mem (
      .clk(clock),
      .resetn(resetn_synchronized),
      .write(i_valid && ~o_stall && ~nop),
      .data(togglerate));

end


end
endgenerate

endmodule

`default_nettype wire
