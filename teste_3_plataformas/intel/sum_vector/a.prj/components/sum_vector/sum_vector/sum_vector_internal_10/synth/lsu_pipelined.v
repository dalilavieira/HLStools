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
// Top level module for pipelined memory access.
//
// Properties - Coalesced: No, Ordered: N/A, Hazard-Safe: Yes, Pipelined: Yes
//              (see lsu_top.v for details)
//
// Description: Requests are submitted as soon as they are received.
//              Pipelined access to memory so multiple requests can be 
//              in flight at a time.

// Pipelined read unit:
//    Accept read requests on the upstream interface.  When a request is
//    received, store the requested byte address in the request fifo and
//    pass the request through to the avalon interface.  Response data
//    is buffered in the response fifo and the appropriate word is muxed
//    out of the response fifo based on the address in the request fifo.
//    The response fifo has limited capacity, so a counter is used to track
//    the number of pending responses to generate an upstream stall if
//    we run out of room.

// Stall latency protocol is supported by this LSU, and is enabled by the
// USE_STALL_LATENCY parameter.  

// altera message_off 10036

`default_nettype none

module lsu_pipelined_read
(
    clk, resetn, i_predicate, o_stall, i_valid, i_address, i_stall, o_valid, o_readdata, 
    o_active, //Debugging signal
    o_empty, o_almost_empty,
    avm_address, avm_read, avm_readdata, avm_waitrequest, avm_byteenable,
    avm_readdatavalid,
    o_input_fifo_depth,
    ecc_err_status
);

/*************
* Parameters *
*************/
parameter AWIDTH=32;                            // Address width (32-bits for Avalon)
parameter WIDTH_BYTES=4;                        // Width of the memory access (bytes)
parameter MWIDTH_BYTES=32;                      // Width of the global memory bus (bytes)
parameter ALIGNMENT_ABITS=2;                    // Request address alignment (address bits)
parameter KERNEL_SIDE_MEM_LATENCY=32;           // The max number of live threads
parameter BURSTCOUNT_WIDTH=6;                   // Size of Avalon burst count port
parameter FORCE_NOP_SUPPORT=0;                  // 0=forces predicate handling logic + FIFO to ensure NOPs do not enter LSU core, 1=no NOP FIFO
parameter STALLFREE=0;                          // set to '1' if this LSU is in a stall-free region and the memory system/arbitration is guaranteed to never stall
parameter USEINPUTFIFO=1;                       // 1=input FIFO enabled, in case of USE_STALL_LATENCY==1 an input FIFO will always be enabled regardless of this value
parameter USEOUTPUTFIFO=1;                      // 2=output FIFO enabled, in case of USE_STALL_LATENCY==1 an output FIFO will always be enabled regardless of this value
parameter INPUTFIFOSIZE=32;
parameter ASYNC_RESET=1;                        // 1:resetn is used as an asynchonous reset, and resets all registers, 0:resetn is used as a synchronous reset, and resets only registers which require a reset
parameter SYNCHRONIZE_RESET=0;                  // set to '1' to pass the incoming resetn signal through a synchronizer before use
parameter enable_ecc = "FALSE";                 // Enable error correction coding

parameter USE_STALL_LATENCY=0;                  // 0 - legacy stall/valid protocol, 1 - enable stall latency protocol
parameter UPSTREAM_STALL_LATENCY=0;             // round trip latency for the upstream (i_valid/o_stall) port, from o_stall being asserted to i_valid guaranteed deasserted.  Must be 0 if USE_STALL_LATENCY=0.
parameter DOWNSTREAM_STALL_IN_EARLINESS=0;      // the i_stall signal is internally delayed by this amount.  
parameter ALMOST_EMPTY_THRESH=1;                // almost empty threshold, o_almost_empty asserts if the number of available thread is LESS THAN this number, only applies if USE_STALL_LATENCY=1
parameter ALLOW_HIGH_SPEED_FIFO_USAGE=1;        // choice of hld_fifo style, 0 = mid speed fifo, 1 = high speed fifo

localparam INPUTFIFO_USEDW_MAXBITS=$clog2(INPUTFIFOSIZE);

// Derived parameters
localparam MAX_BURST=2**(BURSTCOUNT_WIDTH-1);
localparam WIDTH=8*WIDTH_BYTES;
localparam MWIDTH=8*MWIDTH_BYTES;
localparam BYTE_SELECT_BITS=$clog2(MWIDTH_BYTES);
localparam SEGMENT_SELECT_BITS=BYTE_SELECT_BITS-ALIGNMENT_ABITS;
//
// We only o_stall if we have more than KERNEL_SIDE_MEM_LATENCY inflight requests
//
localparam RETURN_FIFO_SIZE=KERNEL_SIDE_MEM_LATENCY+1;
localparam COUNTER_WIDTH=$clog2(RETURN_FIFO_SIZE+1);

/********
* Ports *
********/
// Standard global signals
input wire clk;
input wire resetn;

// Upstream interface
output logic o_stall;
input wire i_valid;
input wire [AWIDTH-1:0] i_address;

// Downstream interface
input wire i_stall;
output logic o_valid;
output logic o_empty;
output logic o_almost_empty;
output logic [WIDTH-1:0] o_readdata;
output reg o_active;

// Avalon interface
output logic [AWIDTH-1:0] avm_address;
output logic avm_read;
input wire [MWIDTH-1:0] avm_readdata;
input wire avm_waitrequest;
output logic [MWIDTH_BYTES-1:0] avm_byteenable;
input wire avm_readdatavalid;

// added for NOP support
input wire i_predicate;

// For profiler/performance monitor
output logic [INPUTFIFO_USEDW_MAXBITS-1:0] o_input_fifo_depth;    // this badly misnamed signal indicates the current occupancy (not depth) of the input FIFO (if present)
output logic  [1:0] ecc_err_status;  // ecc status signals

/***************
* Architecture *
***************/

// asynchronous/synchronous reset logic
localparam                    NUM_RESET_COPIES = 1;
localparam                    RESET_PIPE_DEPTH = 2;
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
   .clk                    (clk),
   .i_resetn               (resetn),
   .o_aclrn                (aclrn),
   .o_sclrn                (sclrn),
   .o_resetn_synchronized  (resetn_synchronized)
);


localparam FIFO_DEPTH_BITS=(USEINPUTFIFO) ? $clog2(INPUTFIFOSIZE) : 0;
wire [FIFO_DEPTH_BITS-1:0] usedw_true_width;
generate
   if (USEINPUTFIFO)
      assign o_input_fifo_depth[FIFO_DEPTH_BITS-1:0] = usedw_true_width;

   // Set unused bits to 0
   genvar bit_index;
   for(bit_index = FIFO_DEPTH_BITS; bit_index < INPUTFIFO_USEDW_MAXBITS; bit_index = bit_index + 1)
   begin: read_fifo_depth_zero_assign
      assign o_input_fifo_depth[bit_index] = 1'b0;
   end
endgenerate

// signals for LSU core (stripped down full LSU from input and output FIFOs)
wire core_i_valid;
wire core_o_stall;
wire core_o_valid;
wire core_i_stall;

// signals for predicate handling logic
wire nop;
wire nop_next;
wire nop_fifo_empty;
wire nop_fifo_empty_n;
wire nop_fifo_full;

// signals for LSU base (stripped down LSU core from predicate handling logic)
wire lsu_i_valid;
wire lsu_o_stall;
wire lsu_o_valid;
wire lsu_i_stall;

// signals for tracking the transactions in the pipeline 
wire read_accepted;
wire read_used;
wire [BYTE_SELECT_BITS-1:0] byte_select;
wire ready;

// internal signals from input and output FIFOs 
wire valid_from_fifo;
wire stall_to_fifo;
wire [AWIDTH-1:0] address_from_fifo;
wire [AWIDTH-1:0] core_data_in;
wire [WIDTH-1:0] core_data_out;

// ECC error handling signals from FIFOs
logic [1:0] ecc_err_status_0, ecc_err_status_1, ecc_err_status_2, ecc_err_status_3, ecc_err_status_4, ecc_err_status_5;


// input FIFO for stall latency support upstream
generate
if(USE_STALL_LATENCY && !STALLFREE)
begin
  wire input_fifo_i_valid;
  wire input_fifo_o_stall;
  wire input_fifo_o_valid;
  wire input_fifo_i_stall;
  wire [AWIDTH:0] input_fifo_data_in;
  wire [AWIDTH:0] input_fifo_data_out;

  hld_fifo #(
    .WIDTH                              (AWIDTH+1),
    .DEPTH                              (INPUTFIFOSIZE),
    .ALMOST_FULL_CUTOFF                 (UPSTREAM_STALL_LATENCY+1),
    .INITIAL_OCCUPANCY                  (0),
    .ASYNC_RESET                        (ASYNC_RESET),
    .SYNCHRONIZE_RESET                  (0),
    .RESET_EVERYTHING                   (0),
    .RESET_EXTERNALLY_HELD              (1),
    .STALL_IN_EARLINESS                 (0),
    .VALID_IN_EARLINESS                 (0),
    .REGISTERED_DATA_OUT_COUNT          (0),
    .NEVER_OVERFLOWS                    (0),
    .HOLD_DATA_OUT_WHEN_EMPTY           (0),
    .WRITE_AND_READ_DURING_FULL         (0),
    .USE_STALL_LATENCY_UPSTREAM         (1),
    .USE_STALL_LATENCY_DOWNSTREAM       (0),
    .STYLE                              (ALLOW_HIGH_SPEED_FIFO_USAGE ? "hs" : "ms"),
    .enable_ecc                         (enable_ecc)
    ) input_fifo (
    .clock              (clk),
    .resetn             (resetn),
    .i_valid            (input_fifo_i_valid),
    .i_data             (input_fifo_data_in),
    .o_stall            (input_fifo_o_stall),
    .o_almost_full      (), 
    .o_valid            (input_fifo_o_valid),
    .o_data             (input_fifo_data_out),
    .i_stall            (input_fifo_i_stall),
    .o_almost_empty     (),
    .o_empty            (),
    .ecc_err_status     (ecc_err_status_4)
  );
  // in to FIFO
  assign input_fifo_i_valid = i_valid;
  assign o_stall = input_fifo_o_stall;
  assign input_fifo_data_in = {i_predicate,i_address};
  // out from FIFO
  assign core_i_valid = input_fifo_o_valid;
  assign input_fifo_i_stall = core_o_stall;
  assign core_data_in = input_fifo_data_out[AWIDTH-1:0];
  assign nop = input_fifo_data_out[AWIDTH];
end else
begin
  // forward signals to LSU core
  assign core_i_valid = i_valid;
  assign o_stall = core_o_stall;
  assign core_data_in = i_address;
  assign nop = i_predicate;
  assign ecc_err_status_4 = 2'h0;
end
endgenerate;


// handle incoming predicates
if (FORCE_NOP_SUPPORT==0) begin

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
    .clock              (clk),
    .resetn             (resetn_synchronized),
    .i_valid            (core_i_valid && !core_o_stall),
    .i_data             (nop),
    .o_stall            (nop_fifo_full),
    .o_almost_full      (), 
    .o_valid            (nop_fifo_empty_n),
    .o_data             (nop_next),
    .i_stall            (~(core_o_valid && ~core_i_stall)),
    .o_almost_empty     (),
    .o_empty            (),
    .ecc_err_status     (ecc_err_status_3)
  );
  assign nop_fifo_empty = ~nop_fifo_empty_n;
   
  // Logic to prevent NOP instructions from entering the core
  assign lsu_i_valid = !nop && core_i_valid && !nop_fifo_full;
  assign lsu_i_stall = nop_fifo_empty || nop_next || core_i_stall;

  // Logic to generate the valid bit for NOP instructions that have bypassed
  // the LSU.  The instructions must be kept in order so they are consistant
  // with data propagating through pipelines outside of the LSU.
  assign core_o_valid = (lsu_o_valid || nop_next) && !nop_fifo_empty;
  assign core_o_stall = nop_fifo_full || (lsu_o_stall && !(nop && !nop_fifo_full));

end
else // FORCE_NOP_SUPPORT==1
begin

  assign lsu_i_valid = core_i_valid & ~nop;
  assign lsu_i_stall = core_i_stall;
  assign core_o_valid = lsu_o_valid;
  assign core_o_stall = lsu_o_stall;
  assign ecc_err_status_3 = 2'h0; 
 
end


 
generate
if(USEINPUTFIFO)
begin
  hld_fifo #(
    .WIDTH				(AWIDTH),
    .DEPTH				(INPUTFIFOSIZE),
    .INITIAL_OCCUPANCY            	(0),
    .ASYNC_RESET                  	(ASYNC_RESET),
    .SYNCHRONIZE_RESET            	(0),
    .RESET_EVERYTHING             	(0),
    .RESET_EXTERNALLY_HELD        	(1),
    .STALL_IN_EARLINESS           	(0),
    .VALID_IN_EARLINESS           	(0),
    .REGISTERED_DATA_OUT_COUNT    	(0),
    .NEVER_OVERFLOWS              	(0),
    .HOLD_DATA_OUT_WHEN_EMPTY     	(0),
    .WRITE_AND_READ_DURING_FULL   	(0),
    .USE_STALL_LATENCY_UPSTREAM   	(0),
    .USE_STALL_LATENCY_DOWNSTREAM 	(0),
    .STYLE                        	("ms"),
    .enable_ecc                         (enable_ecc)
  ) input_fifo (
    .clock              (clk),
    .resetn             (resetn_synchronized),
    .i_valid            (lsu_i_valid),
    .o_stall            (lsu_o_stall),
    .o_almost_full      (),
    .i_data             (core_data_in),
    .o_valid            (valid_from_fifo),
    .o_almost_empty     (),
    .i_stall            (stall_to_fifo),
    .o_data             (address_from_fifo),
    .o_empty            (),
    .ecc_err_status     (ecc_err_status_0)
  );
end
else
begin
  assign valid_from_fifo = lsu_i_valid;
  assign address_from_fifo = core_data_in;
  assign lsu_o_stall = stall_to_fifo;
  assign ecc_err_status_0 = 2'h0;
end
endgenerate

// Track the number of transactions waiting in the pipeline here
reg [COUNTER_WIDTH-1:0] counter;
wire incr, decr;
wire [1:0] counter_update;
wire [COUNTER_WIDTH-1:0] counter_update_extended;
assign incr = read_accepted;
assign decr = read_used;
assign counter_update = incr - decr;
assign counter_update_extended = $signed(counter_update);
always@(posedge clk or negedge aclrn)
begin
    if(~aclrn)
    begin
        counter <= '0;
        o_active <= '0;
    end
    else
    begin
        o_active <= (counter != {COUNTER_WIDTH{1'b0}});
        counter <= counter + counter_update_extended;
        if (~sclrn[0]) begin
          counter <= '0;
          o_active <= '0;
        end
    end 
end


assign ready = (counter <= (RETURN_FIFO_SIZE-1));

assign stall_to_fifo = !ready || avm_waitrequest;

wire [WIDTH-1:0] rdata;
// Byte-addresses enter a FIFO so we can demux the appropriate data back out.
generate
if(SEGMENT_SELECT_BITS > 0)
begin
  wire [SEGMENT_SELECT_BITS-1:0] segment_address_out;
  wire [SEGMENT_SELECT_BITS-1:0] segment_address_in;
  assign segment_address_in = address_from_fifo[ALIGNMENT_ABITS +: BYTE_SELECT_BITS-ALIGNMENT_ABITS];
  
  hld_fifo #(
    .WIDTH                              (SEGMENT_SELECT_BITS),
    .DEPTH                              (KERNEL_SIDE_MEM_LATENCY+1),
    .ALMOST_EMPTY_CUTOFF                (0),
    .ALMOST_FULL_CUTOFF                 (0),
    .INITIAL_OCCUPANCY                  (0),
    .ASYNC_RESET                        (ASYNC_RESET),
    .SYNCHRONIZE_RESET                  (0),
    .RESET_EVERYTHING                   (0),
    .RESET_EXTERNALLY_HELD              (1),
    .STALL_IN_EARLINESS                 (0),
    .VALID_IN_EARLINESS                 (0),
    .REGISTERED_DATA_OUT_COUNT          (SEGMENT_SELECT_BITS),  // output data is the select for the rdata mux
    .NEVER_OVERFLOWS                    (1),                    // occupancy tracking is already handled separately,
    .HOLD_DATA_OUT_WHEN_EMPTY           (0),
    .WRITE_AND_READ_DURING_FULL         (0), 			
    .USE_STALL_LATENCY_UPSTREAM         (0),
    .USE_STALL_LATENCY_DOWNSTREAM       (0),
    .STYLE                              ("ll"),
    .enable_ecc                         (enable_ecc)
  ) req_fifo (
    .clock          (clk),
    .resetn         (resetn_synchronized),
    .i_valid        (read_accepted),
    .o_stall        (),
    .o_almost_full  (),
    .i_data         (segment_address_in),
    .o_valid        (),
    .o_almost_empty (),
    .i_stall        (~avm_readdatavalid), // r_avm_readdatavalid is a forced read
    .o_data         (segment_address_out),
    .o_empty        (),
    .ecc_err_status (ecc_err_status_1)
  );
  assign byte_select = (segment_address_out << ALIGNMENT_ABITS);
  assign rdata = avm_readdata[8*byte_select +: WIDTH];
end
else
begin
  assign byte_select = '0;
  assign rdata = avm_readdata;
  assign ecc_err_status_1 = 2'h0;
end
endgenerate

// Status bits
assign read_accepted = valid_from_fifo && ready && !avm_waitrequest;
assign read_used = lsu_o_valid && !lsu_i_stall;

assign avm_byteenable = {MWIDTH_BYTES{1'b1}};
assign avm_address = ((address_from_fifo >> BYTE_SELECT_BITS) << BYTE_SELECT_BITS);
assign avm_read = valid_from_fifo && ready;

// ---------------------------------------------------------------------------------
// Output fifo - must be at least as deep as the maximum number of pending requests
// so that we can guarantee a place for the response data if the downstream blocks
// are stalling.
//
generate
if(USEOUTPUTFIFO)
begin
  hld_fifo #(
    .WIDTH				(WIDTH),
    .DEPTH				(RETURN_FIFO_SIZE),
    .INITIAL_OCCUPANCY            	(0),
    .ASYNC_RESET                  	(ASYNC_RESET),
    .SYNCHRONIZE_RESET            	(0),
    .RESET_EVERYTHING             	(0),
    .RESET_EXTERNALLY_HELD        	(1),
    .STALL_IN_EARLINESS           	(0),
    .VALID_IN_EARLINESS           	(0),
    .REGISTERED_DATA_OUT_COUNT    	(0),
    .NEVER_OVERFLOWS              	(0),
    .HOLD_DATA_OUT_WHEN_EMPTY     	(0),
    .WRITE_AND_READ_DURING_FULL   	(0),
    .USE_STALL_LATENCY_UPSTREAM   	(0),
    .USE_STALL_LATENCY_DOWNSTREAM 	(0),
    .STYLE                        	("ms"),
    .enable_ecc                         (enable_ecc)
  ) data_fifo (
    .clock              (clk),
    .resetn             (resetn_synchronized),
    .i_valid            (avm_readdatavalid), 	
    .o_stall            (), 		
    .o_almost_full      (), 
    .i_data             (rdata),	
    .o_valid            (lsu_o_valid),
    .o_almost_empty     (),
    .i_stall            (lsu_i_stall),
    .o_data             (core_data_out),
    .o_empty            (),
    .ecc_err_status     (ecc_err_status_2)
  );
end
else
begin
   assign lsu_o_valid = avm_readdatavalid;
   assign core_data_out = rdata;
   assign ecc_err_status_2 = 2'h0;
end
endgenerate


// output FIFO for stall latency support downstream
generate
if(USE_STALL_LATENCY && !STALLFREE)
begin
  wire output_fifo_i_valid;
  wire output_fifo_o_stall;
  wire output_fifo_o_valid;
  wire output_fifo_i_stall;
  wire [WIDTH-1:0] output_fifo_data_in;
  wire [WIDTH-1:0] output_fifo_data_out;

  hld_fifo #(
    .WIDTH                              (WIDTH),
    .DEPTH                              (RETURN_FIFO_SIZE),
    .ALMOST_EMPTY_CUTOFF                (ALMOST_EMPTY_THRESH),
    .INITIAL_OCCUPANCY                  (0),
    .ASYNC_RESET                        (ASYNC_RESET),
    .SYNCHRONIZE_RESET                  (0),
    .RESET_EVERYTHING                   (0),
    .RESET_EXTERNALLY_HELD              (1),
    .STALL_IN_EARLINESS                 (DOWNSTREAM_STALL_IN_EARLINESS),
    .VALID_IN_EARLINESS                 (0),
    .REGISTERED_DATA_OUT_COUNT          (0),
    .NEVER_OVERFLOWS                    (0),
    .HOLD_DATA_OUT_WHEN_EMPTY           (0),
    .WRITE_AND_READ_DURING_FULL         (0),
    .USE_STALL_LATENCY_UPSTREAM         (0),
    .USE_STALL_LATENCY_DOWNSTREAM       (1),
    .STYLE                              (ALLOW_HIGH_SPEED_FIFO_USAGE ? "hs" : "ms"),
    .enable_ecc                         (enable_ecc)
    ) output_fifo (
    .clock              (clk),
    .resetn             (resetn),
    .i_valid            (output_fifo_i_valid),
    .i_data             (output_fifo_data_in),   
    .o_stall            (output_fifo_o_stall),
    .o_almost_full      (), 
    .o_valid            (output_fifo_o_valid),
    .o_data             (output_fifo_data_out),
    .i_stall            (output_fifo_i_stall),
    .o_almost_empty     (o_almost_empty),
    .o_empty            (o_empty),
    .ecc_err_status     (ecc_err_status_5)
  );
  // in to FIFO
  assign output_fifo_i_valid = core_o_valid;
  assign core_i_stall = output_fifo_o_stall;
  assign output_fifo_data_in = core_data_out;
  // out from FIFO
  assign o_valid = output_fifo_o_valid;
  assign output_fifo_i_stall = i_stall;
  assign o_readdata = output_fifo_data_out;
end else
begin
  // forward signals from LSU core
  assign o_valid = core_o_valid;
  assign core_i_stall = i_stall;
  assign ecc_err_status_5 = 2'h0;
  assign o_readdata = core_data_out;
  assign o_almost_empty = 1'b0;
  assign o_empty = 1'b0; 
end
endgenerate;


// ECC error detection signals
assign ecc_err_status = ecc_err_status_0 | ecc_err_status_1 | ecc_err_status_2 | ecc_err_status_3 | ecc_err_status_4 | ecc_err_status_5;

endmodule

/******************************************************************************/

// Pipelined write unit:
//    Accept write requests on the upstream interface.  Mux the data into the
//    appropriate word lines based on the segment select bits.  Also toggle
//    the appropriate byte-enable lines to preserve data we are not 
//    overwriting.  A counter keeps track of how many requests have been
//    send but not yet acknowledged by downstream blocks.
module lsu_pipelined_write
(
    clk, resetn, i_predicate, o_stall, i_valid, i_address, i_writedata, i_stall, o_valid, i_byteenable,
    o_active, //Debugging signal
    o_empty, o_almost_empty,
    avm_address, avm_write, avm_writeack, avm_writedata, avm_byteenable, avm_waitrequest, o_input_fifo_depth,
    ecc_err_status
);

/*************
* Parameters *
*************/
parameter AWIDTH=32;                                    // Address width (32-bits for Avalon)
parameter WIDTH_BYTES=4;                                // Width of the kernel side memory access
parameter MWIDTH_BYTES=32;                              // Width of the global memory bus
parameter ALIGNMENT_ABITS=2;                            // Request address alignment (address bits)
parameter COUNTER_WIDTH=6;                              // This parameter is not set by lsu_top, so is left at it's default value.  It seems like this should be derived frmo the INPUTFIFOSIZE parameter?
parameter KERNEL_SIDE_MEM_LATENCY=32;
parameter USEINPUTFIFO=1;                               // 1=input FIFO enabled, in case of USE_STALL_LATENCY==1 an input FIFO will always be enabled regardless of this value

parameter FORCE_NOP_SUPPORT=0;                          // 0=forces predicate handling logic + FIFO to ensure NOPs do not enter LSU core, 1=no NOP FIFO

parameter STALLFREE=0;                                  //set to '1' if this LSU is in a stall-free region and the memory system/arbitration is guaranteed to never stall
parameter USE_BYTE_EN=0;
parameter INPUTFIFOSIZE=32;
parameter INPUTFIFO_USEDW_MAXBITS=$clog2(INPUTFIFOSIZE);
parameter OUTPUTFIFOSIZE=32;
parameter ASYNC_RESET=1;                                // 1:resetn is used as an asynchonous reset, and resets all registers, 0:resetn is used as a synchronous reset, and resets only registers which require a reset
parameter SYNCHRONIZE_RESET=0;                          // set to '1' to pass the incoming resetn signal through a synchronizer before use
parameter enable_ecc="FALSE";                           // Enable error correction coding

parameter USE_STALL_LATENCY=0;                          // 0 - legacy stall/valid protocol, 1 - enable stall latency protocol
parameter UPSTREAM_STALL_LATENCY=0;                     // round trip latency for the upstream (i_valid/o_stall) port, from o_stall being asserted to i_valid guaranteed deasserted.  Must be 0 if USE_STALL_LATENCY=0.
parameter DOWNSTREAM_STALL_IN_EARLINESS=0;              // the i_stall signal is internally delayed by this amount.  
parameter ALMOST_EMPTY_THRESH=1;                        // almost empty threshold, o_almost_empty asserts if the number of available thread is LESS THAN this number, only applies if USE_STALL_LATENCY=1
parameter ALLOW_HIGH_SPEED_FIFO_USAGE=1;                // choice of hld_fifo style, 0 = mid speed fifo, 1 = high speed fifo

localparam WIDTH=8*WIDTH_BYTES;
localparam MWIDTH=8*MWIDTH_BYTES;
localparam BYTE_SELECT_BITS=$clog2(MWIDTH_BYTES);
localparam SEGMENT_SELECT_BITS=BYTE_SELECT_BITS-ALIGNMENT_ABITS;
localparam NUM_SEGMENTS=2**SEGMENT_SELECT_BITS;
localparam SEGMENT_WIDTH=8*(2**ALIGNMENT_ABITS);
localparam SEGMENT_WIDTH_BYTES=(2**ALIGNMENT_ABITS);

/********
* Ports *
********/
// Standard global signals
input wire clk;
input wire resetn;

// Upstream interface
output logic o_stall;
input wire i_valid;
input wire [AWIDTH-1:0] i_address;
input wire [WIDTH-1:0] i_writedata;
input wire [WIDTH_BYTES-1:0] i_byteenable;
// Downstream interface
input wire i_stall;
output logic o_valid;
output reg o_active;
output logic o_empty;
output logic o_almost_empty;

// Avalon interface
output logic [AWIDTH-1:0] avm_address;
output logic avm_write;
input wire avm_writeack;
output reg [MWIDTH-1:0] avm_writedata;
output reg [MWIDTH_BYTES-1:0] avm_byteenable;
input wire avm_waitrequest;

// added for NOP support
input wire i_predicate;

// For profiler/performance monitor
output logic [INPUTFIFO_USEDW_MAXBITS-1:0] o_input_fifo_depth;
output logic  [1:0] ecc_err_status;  // ecc status signals

/***************
* Architecture *
***************/

// asynchronous/synchronous reset logic
localparam                    NUM_RESET_COPIES = 1;
localparam                    RESET_PIPE_DEPTH = 2;
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
   .clk                    (clk),
   .i_resetn               (resetn),
   .o_aclrn                (aclrn),
   .o_sclrn                (sclrn),
   .o_resetn_synchronized  (resetn_synchronized)
);


localparam FIFO_DEPTH_BITS=USEINPUTFIFO ? $clog2(INPUTFIFOSIZE) : 0;
wire [FIFO_DEPTH_BITS-1:0] usedw_true_width;
generate
   if (USEINPUTFIFO)
      assign o_input_fifo_depth[FIFO_DEPTH_BITS-1:0] = usedw_true_width;

   // Set unused bits to 0
   genvar bit_index;
   for(bit_index = FIFO_DEPTH_BITS; bit_index < INPUTFIFO_USEDW_MAXBITS; bit_index = bit_index + 1)
   begin: write_fifo_depth_zero_assign
      assign o_input_fifo_depth[bit_index] = 1'b0;
   end
endgenerate

// signals for LSU core (stripped down full LSU from input and output FIFOs)
wire core_i_valid;
wire core_o_stall;
wire core_o_valid;
wire core_i_stall;

// signals for predicate handling logic
wire nop;
wire nop_next;
wire nop_fifo_empty;
wire nop_fifo_empty_n;
wire nop_fifo_full;

// signals for LSU base (stripped down LSU core from predicate handling logic)
wire lsu_i_valid;
wire lsu_i_stall;
wire lsu_o_valid;
wire lsu_o_stall;

// signals to track the ongoing transactions
wire write_accepted;
wire ready;

// internal signals from input FIFO
wire valid_from_fifo;
wire stall_to_fifo;
wire [AWIDTH-1:0] address_from_fifo;
wire [WIDTH-1:0] writedata_from_fifo;
wire [WIDTH_BYTES-1:0] byteenable_from_fifo;
localparam DATA_WIDTH = AWIDTH+WIDTH+(USE_BYTE_EN ? WIDTH_BYTES : 0);
wire [DATA_WIDTH-1:0] core_data_in;
wire [DATA_WIDTH-1:0] core_data_out;

// ECC error handling signals from FIFOs
logic [1:0] ecc_err_status_0, ecc_err_status_1, ecc_err_status_2, ecc_err_status_3;


// input FIFO for stall latency support upstream
generate
if(USE_STALL_LATENCY && !STALLFREE)
begin
  wire input_fifo_i_valid;
  wire input_fifo_o_stall;
  wire input_fifo_o_valid;
  wire input_fifo_i_stall;
  wire [DATA_WIDTH:0] input_fifo_data_in;
  wire [DATA_WIDTH:0] input_fifo_data_out;

  hld_fifo #(
    .WIDTH                              (DATA_WIDTH+1),
    .DEPTH                              (INPUTFIFOSIZE),
    .ALMOST_FULL_CUTOFF                 (UPSTREAM_STALL_LATENCY+1),
    .INITIAL_OCCUPANCY                  (0),
    .ASYNC_RESET                        (ASYNC_RESET),
    .SYNCHRONIZE_RESET                  (0),
    .RESET_EVERYTHING                   (0),
    .RESET_EXTERNALLY_HELD              (1),
    .STALL_IN_EARLINESS                 (0),
    .VALID_IN_EARLINESS                 (0),
    .REGISTERED_DATA_OUT_COUNT          (0),
    .NEVER_OVERFLOWS                    (0),
    .HOLD_DATA_OUT_WHEN_EMPTY           (0),
    .WRITE_AND_READ_DURING_FULL         (0),
    .USE_STALL_LATENCY_UPSTREAM         (1),
    .USE_STALL_LATENCY_DOWNSTREAM       (0),
    .STYLE                              (ALLOW_HIGH_SPEED_FIFO_USAGE ? "hs" : "ms"),
    .enable_ecc                         (enable_ecc)
    ) input_fifo (
    .clock              (clk),
    .resetn             (resetn),
    .i_valid            (input_fifo_i_valid),
    .i_data             (input_fifo_data_in),
    .o_stall            (input_fifo_o_stall),
    .o_almost_full      (), 
    .o_valid            (input_fifo_o_valid),
    .o_data             (input_fifo_data_out),
    .i_stall            (input_fifo_i_stall),
    .o_almost_empty     (),
    .o_empty            (),
    .ecc_err_status     (ecc_err_status_2)
  );
  // in to FIFO
  assign input_fifo_i_valid = i_valid;
  assign o_stall = input_fifo_o_stall;
  assign input_fifo_data_in = USE_BYTE_EN ? {i_predicate,i_byteenable,i_address,i_writedata} : {i_predicate,i_address,i_writedata};
  // out from FIFO
  assign core_i_valid = input_fifo_o_valid;
  assign input_fifo_i_stall = core_o_stall;
  assign core_data_in = input_fifo_data_out[DATA_WIDTH-1:0];
  assign nop = input_fifo_data_out[DATA_WIDTH];
end else
begin
  // forward signals to LSU core
  assign core_i_valid = i_valid;
  assign o_stall = core_o_stall;
  assign core_data_in = USE_BYTE_EN ? {i_byteenable,i_address,i_writedata} : {i_address,i_writedata};
  assign nop = i_predicate;
  assign ecc_err_status_2 = 2'h0;
end
endgenerate;

// handle incoming predicates
if (FORCE_NOP_SUPPORT==0) begin

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
    .clock              (clk),
    .resetn             (resetn_synchronized),
    .i_valid            (core_i_valid && !core_o_stall),
    .i_data             (nop),
    .o_stall            (nop_fifo_full),
    .o_almost_full      (), 
    .o_valid            (nop_fifo_empty_n),
    .o_data             (nop_next),
    .i_stall            (~(core_o_valid && ~core_i_stall)),
    .o_almost_empty     (),
    .o_empty            (),
    .ecc_err_status     (ecc_err_status_1)
  );
  assign nop_fifo_empty = ~nop_fifo_empty_n;

  // Logic to prevent NOP instructions from entering the core
  assign lsu_i_valid = !nop && core_i_valid && !nop_fifo_full;
  assign lsu_i_stall = nop_fifo_empty || nop_next || core_i_stall;

  // Logic to generate the valid bit for NOP instructions that have bypassed
  // the LSU.  The instructions must be kept in order so they are consistant
  // with data propagating through pipelines outside of the LSU.
  assign core_o_valid = (lsu_o_valid || nop_next) && !nop_fifo_empty;
  assign core_o_stall = nop_fifo_full || (lsu_o_stall && !(nop && !nop_fifo_full));

end
else // FORCE_NOP_SUPPORT==1
begin

  assign lsu_i_valid = core_i_valid & ~nop;
  assign lsu_i_stall = core_i_stall;
  assign core_o_valid = lsu_o_valid;
  assign core_o_stall = lsu_o_stall;
  assign ecc_err_status_1 = 2'h0; 
 
end



generate
if(USEINPUTFIFO)
begin
  // data fifo
  hld_fifo #(
    .WIDTH                              (DATA_WIDTH),
    .DEPTH                              (INPUTFIFOSIZE),
    .INITIAL_OCCUPANCY                  (0),
    .ASYNC_RESET                        (ASYNC_RESET),
    .SYNCHRONIZE_RESET                  (0),
    .RESET_EVERYTHING                   (0),
    .RESET_EXTERNALLY_HELD              (1),
    .STALL_IN_EARLINESS                 (0),
    .VALID_IN_EARLINESS                 (0),
    .REGISTERED_DATA_OUT_COUNT          (0),
    .NEVER_OVERFLOWS                    (0),
    .HOLD_DATA_OUT_WHEN_EMPTY           (0),
    .WRITE_AND_READ_DURING_FULL         (0),
    .USE_STALL_LATENCY_UPSTREAM         (0),
    .USE_STALL_LATENCY_DOWNSTREAM       (0),
    .STYLE                              ("ms"),
    .enable_ecc                         (enable_ecc)
    ) data_fifo (
    .clock              (clk),
    .resetn             (resetn),
    .i_valid            (lsu_i_valid),
    .i_data             (core_data_in),
    .o_stall            (lsu_o_stall),
    .o_almost_full      (), 
    .o_valid            (valid_from_fifo),
    .o_data             (core_data_out),
    .i_stall            (stall_to_fifo),
    .o_almost_empty     (),
    .o_empty            (),
    .ecc_err_status     (ecc_err_status_0)
  );
  assign writedata_from_fifo = core_data_out[WIDTH-1:0];
  assign address_from_fifo = core_data_out[AWIDTH+WIDTH-1:WIDTH];
  assign byteenable_from_fifo = USE_BYTE_EN ? core_data_out[WIDTH_BYTES+AWIDTH+WIDTH-1:AWIDTH+WIDTH] : {WIDTH_BYTES{1'b1}};
end else
begin
  // no data FIFO
  assign valid_from_fifo = lsu_i_valid;
  assign writedata_from_fifo = core_data_in[WIDTH-1:0];
  assign address_from_fifo = core_data_in[AWIDTH+WIDTH-1:WIDTH];
  assign byteenable_from_fifo = USE_BYTE_EN ? core_data_in[WIDTH_BYTES+AWIDTH+WIDTH-1:AWIDTH+WIDTH] : {WIDTH_BYTES{1'b1}};
  assign lsu_o_stall = stall_to_fifo;
  assign ecc_err_status_0 = 2'h0;
end
endgenerate


// output FIFO for stall latency support downstream
generate
if(USE_STALL_LATENCY && !STALLFREE)
begin
  wire output_fifo_i_valid;
  wire output_fifo_o_stall;
  wire output_fifo_o_valid;
  wire output_fifo_i_stall;

  hld_fifo #(
    .WIDTH                              (1),
    .DEPTH                              (OUTPUTFIFOSIZE),
    .ALMOST_EMPTY_CUTOFF                (ALMOST_EMPTY_THRESH),
    .INITIAL_OCCUPANCY                  (0),
    .ASYNC_RESET                        (ASYNC_RESET),
    .SYNCHRONIZE_RESET                  (0),
    .RESET_EVERYTHING                   (0),
    .RESET_EXTERNALLY_HELD              (1),
    .STALL_IN_EARLINESS                 (DOWNSTREAM_STALL_IN_EARLINESS),
    .VALID_IN_EARLINESS                 (0),
    .REGISTERED_DATA_OUT_COUNT          (0),
    .NEVER_OVERFLOWS                    (0),
    .HOLD_DATA_OUT_WHEN_EMPTY           (0),
    .WRITE_AND_READ_DURING_FULL         (0),
    .USE_STALL_LATENCY_UPSTREAM         (0),
    .USE_STALL_LATENCY_DOWNSTREAM       (1),
    .STYLE                              (ALLOW_HIGH_SPEED_FIFO_USAGE ? "hs" : "ms"),
    .enable_ecc                         (enable_ecc)
    ) output_fifo (
    .clock              (clk),
    .resetn             (resetn),
    .i_valid            (output_fifo_i_valid),
    .i_data             (1'b0),   
    .o_stall            (output_fifo_o_stall),
    .o_almost_full      (), 
    .o_valid            (output_fifo_o_valid),
    .o_data             (),
    .i_stall            (output_fifo_i_stall),
    .o_almost_empty     (o_almost_empty),
    .o_empty            (o_empty),
    .ecc_err_status     (ecc_err_status_3)
  );
  // in to FIFO
  assign output_fifo_i_valid = core_o_valid;
  assign core_i_stall = output_fifo_o_stall;
  // out from FIFO
  assign o_valid = output_fifo_o_valid;
  assign output_fifo_i_stall = i_stall;
end else
begin
  // forward signals from LSU core
  assign o_valid = core_o_valid;
  assign core_i_stall = i_stall;
  assign ecc_err_status_3 = 2'h0;
  assign o_almost_empty = 1'b0;
  assign o_empty = 1'b0;
end
endgenerate;


// ECC error detection signals
assign ecc_err_status = ecc_err_status_0 | ecc_err_status_1 | ecc_err_status_2 | ecc_err_status_3;


// Avalon interface
assign avm_address = ((address_from_fifo >> BYTE_SELECT_BITS) << BYTE_SELECT_BITS);
assign avm_write = ready && valid_from_fifo;

// Mux in the correct data
generate
if(SEGMENT_SELECT_BITS > 0)
begin
  wire [SEGMENT_SELECT_BITS-1:0] segment_select;
  assign segment_select = address_from_fifo[ALIGNMENT_ABITS +: BYTE_SELECT_BITS-ALIGNMENT_ABITS];
  always@(*)
  begin
    avm_writedata = {MWIDTH{1'bx}};
    avm_writedata[segment_select*SEGMENT_WIDTH +: WIDTH] = writedata_from_fifo;

    avm_byteenable = {MWIDTH_BYTES{1'b0}};
    avm_byteenable[segment_select*SEGMENT_WIDTH_BYTES +: WIDTH_BYTES] = byteenable_from_fifo;
  end
end
else
begin
  always@(*)
  begin
    avm_writedata = writedata_from_fifo;
    avm_byteenable = byteenable_from_fifo;
  end
end
endgenerate


// Control logic
generate
if (STALLFREE)    // in a stall free memory system, we can greatly simplify the control logic
begin
  reg avm_writeack_dly;                // writeack signal delayed by one clock cycle
  
  always@(posedge clk or negedge aclrn)
  begin
      if(~aclrn)
      begin
          avm_writeack_dly <= '0;
      end
      else
      begin
          avm_writeack_dly <= avm_writeack;
      end
  end
  
  assign ready = '1;                                        // no stall, so always ready
  assign write_accepted = avm_write;                        // no stall, so writes are always accepted
  assign stall_to_fifo = '0;                                // never stall
  assign lsu_o_valid = avm_writeack_dly;
  assign o_active = '0;                                     // active signal not used in stall free regions
end
else
begin
  // Track the number of transactions waiting in the pipeline here
  reg [COUNTER_WIDTH-1:0] occ_counter; // occupancy counter
  wire occ_incr, occ_decr;
  reg [COUNTER_WIDTH-1:0] ack_counter; // acknowledge writes counter
  wire ack_incr, ack_decr;

  assign occ_incr = write_accepted;
  assign occ_decr = lsu_o_valid && !lsu_i_stall;
  assign ack_incr = avm_writeack;
  assign ack_decr = lsu_o_valid && !lsu_i_stall;

  always@(posedge clk or negedge aclrn)
  begin
      if(~aclrn)
      begin
          occ_counter <= '0;
          ack_counter <= '0;
          o_active <= '0;
      end
      else
      begin
          // incr - add one; decr - subtr one; both - stay the same
          occ_counter <= occ_counter + { {(COUNTER_WIDTH-1){!occ_incr && occ_decr}}, (occ_incr ^ occ_decr) };
          ack_counter <= ack_counter + { {(COUNTER_WIDTH-1){!ack_incr && ack_decr}}, (ack_incr ^ ack_decr) };
          o_active <= (occ_counter != {COUNTER_WIDTH{1'b0}});
          if(~sclrn[0]) begin
             occ_counter <= '0;
             ack_counter <= '0;
             o_active <= '0;
          end
      end
  end

  assign ready = (occ_counter != {COUNTER_WIDTH{1'b1}});
  assign write_accepted = avm_write && !avm_waitrequest;
  assign stall_to_fifo = !ready || avm_waitrequest;
  assign lsu_o_valid = (ack_counter != {COUNTER_WIDTH{1'b0}});
end
endgenerate

endmodule

`default_nettype wire
