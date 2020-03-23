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


/*


High level overview of how st_read and st_write operate functionally
====================================================================

Channels are useful for passing data between kernels. On the sending side,
at some point in the kernel data path we will have the data available for
sending. This is where st_write is inserted into the kernel pipeline.
Likewise on the receiving side, st_read is inserted into the kernel pipeline
before the received data is needed for consumption.

   Sending side                         Receiving side

 kernel upstream                       kernel upstream

        |                                     |
        |                                     |
        V                                     V
  +-----------+      +-----------+      +-----------+
  |           |      |           |      |           |
  | st_write  |----->|  channel  |----->|  st_read  |
  |           |      |           |      |           |
  +-----------+      +-----------+      +-----------+
        |                                     |
        |                                     |
        V                                     V
        
kernel downstream                     kernel downstream


The st_write block acts as a "desync". At a high level, a valid from kernel
upstream is only accepted if both kernel downstream and the channel accept
this valid.

The st_read block acts as a "sync". At a high level, a valid on the kernel
downstream will only be produced if there is a valid from both kernel
upstream and a valid from the channel.

The actual implementation of st_write is not so straightforward. We can
encounter deadlock situations if we directly connect sync and desync blocks
together in loop. For example:

+-----------+
|           |
| st_write  |------------+
|           |            |
+-----------+            |
     |                   |
     |                   |
     V                   V
+-----------+      +-----------+
|           |      |           |
|   fifo    |----->|  st_read  |
|           |      |           |
+-----------+      +-----------+

Assume everything is empty at power on. A valid arrives at the input of st_write.
It is not accepted by st_read since the fifo is empty (st_read needs both upstreams
to have a valid in order to make forward progress). Because the st_write cannot
send a valid to st_read, it also cannot send a valid to the fifo. Therefore the
fifo will remain empty forever. This chicken-and-egg problem causes deadlocks.

To solve this problem, st_write has something called "consumed registers". There are
two consumers of st_write (the kernel downstream and the channel), and they are
allowed to go at most one valid ahead of the other. This solves the chicken-and-egg
problem. In the above example, one valid can be released to the fifo even though 
that valid has not been consumed by st_read. This allows one item into the fifo,
and therefore st_read would eventually see a valid from the fifo and st_write.

Inside st_write, the signals "consumed_sidepath" and "consumed_downstream"
indicate that a valid has been allowed through on one path but not the other.
If this happens, st_write will stall the kernel upstream, so the valid that was
presented will stay there (and also the input data will be held). If the kernel
downstream went ahead of the channel, then consumed_downstream will turn on, which
also prevents the same valid from being presented to kernel downstream again.
Likewise by symmetry consumed_sidepath means the channnel went ahead.

To support multiple write sites to the same channel, we need to ensure that
consumed_downstream never turns on. We must avoid the scenario where st_write
did not write to the channel but releases a valid to kernel downstream, because
the valid released to kernel downstream could reach another st_write and this
second st_write could write to the same channel first.

Beware: when ACK_AS_VALID = 1, it is not known if the one-sided consumed register
avoids deadlock in general. Deadlock will not occur if the concurrency limit is 1.
*/

`default_nettype none
/*
 * This is a variant of the staging reg - which allows you to add an
 * pre-initialized value; useful for feedback channels
 */
module init_reg
(
    clk, reset, i_init, i_data, i_valid, o_stall, o_data, o_valid, i_stall
);

/*************
* Parameters *
*************/
parameter WIDTH    = 32;
parameter INIT     = 0;
parameter INIT_VAL = 32'h0000000000000000;
parameter bit ASYNC_RESET = 1;          // how do the registers CONSUME reset: 1 means registers are reset asynchronously, 0 means registers are reset synchronously
parameter bit SYNCHRONIZE_RESET = 0;    // before consumption, do we SYNCHRONIZE the reset: 1 means use a synchronizer (assume reset arrived asynchronously), 0 means passthrough (assume reset was already synchronized)

/********
* Ports *
********/
// Standard global signals
input wire clk;
input wire reset;
input wire i_init;

// Upstream interface
input wire [WIDTH-1:0] i_data;
input wire i_valid;
output logic o_stall;

// Downstream interface
output logic [WIDTH-1:0] o_data;
output logic o_valid;
input wire i_stall;

/***************
* Architecture *
***************/
logic [WIDTH-1:0] r_data;
logic r_valid;

logic aclrn, sclrn;
acl_reset_handler
#(
    .ASYNC_RESET            (ASYNC_RESET),
    .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
    .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
    .PULSE_EXTENSION        (0),
    .PIPE_DEPTH             (1),
    .NUM_COPIES             (1)
)
acl_reset_handler_inst
(
    .clk                    (clk),
    .i_resetn               (~reset),
    .o_aclrn                (aclrn),
    .o_resetn_synchronized  (),
    .o_sclrn                (sclrn)
);

// Upstream
assign o_stall = r_valid;

// Downstream
assign o_data = (r_valid) ? r_data : i_data;
assign o_valid = (r_valid) ? r_valid : i_valid;

// Storage reg
always@(posedge clk or negedge aclrn) begin
    if (~aclrn) begin
        r_valid <= INIT;
        r_data  <= INIT_VAL;
    end
    else begin
        if (i_init) begin
            r_valid <= INIT;
            r_data  <= INIT_VAL;
        end
        else begin
            if (~r_valid) r_data <= i_data;
            r_valid <= i_stall && (r_valid || i_valid);
        end
        if (~sclrn) begin
            r_valid <= INIT;
            r_data  <= INIT_VAL;
        end
    end
end

endmodule

//===----------------------------------------------------------------------===//
//
// Avalon Streaming Read Unit
//
//===----------------------------------------------------------------------===//
module st_read (
        clock,
        resetn,
        i_init,

        // input stream from kernel pipeline
        // this triggers the read request from the fifo
        i_predicate,
        i_valid,
        o_stall,

        // downstream (ouput), to kernel pipeline
        o_valid,
        i_stall,
        o_data,
        o_datavalid,           // used only in non-blocking case
        o_startofpacket,       // used for avalon packet data transfer support
        o_endofpacket,         // used for avalon packet data transfer support
        o_packetempty,         // used for avalon packet data transfer support (optional empty signal), always 32 bits
        // input data from inter kernel pipeline
        i_fifodata,
        i_fifovalid,
        o_fifoready,
        i_fifosize,
        i_fifostartofpacket, // used only in packet case
        i_fifoendofpacket,   // used only in packet case
        i_fifoempty,         // used only in empty case

        // profiler
        profile_i_valid,
        profile_i_stall,
        profile_o_stall,
        profile_total_req,
        profile_fifo_stall,
        profile_total_fifo_size, profile_total_fifo_size_incr
        );

parameter DATA_WIDTH = 32;
parameter EMPTY_WIDTH = 0;
parameter EMPTY_PORT_WIDTH = (EMPTY_WIDTH > 0) ? EMPTY_WIDTH : 1;
parameter INIT = 0;
parameter INIT_VAL = 64'h0000000000000000;
parameter NON_BLOCKING = 0;
parameter FIFOSIZE_WIDTH=32;
parameter ACL_PROFILE=0;      // Set to 1 to enable stall/valid profiling
//parameter ACL_PROFILE_INCREMENT_WIDTH=32; // make this into a localparam or allow it to be changed - FB:533725
parameter bit ASYNC_RESET = 1;          // how do the registers CONSUME reset: 1 means registers are reset asynchronously, 0 means registers are reset synchronously
parameter bit SYNCHRONIZE_RESET = 0;    // before consumption, do we SYNCHRONIZE the reset: 1 means use a synchronizer (assume reset arrived asynchronously), 0 means passthrough (assume reset was already synchronized)
parameter bit STAGING_CAPACITY = 0;  
// To conform with the Avalon Streaming spec, we sometimes need to include capacity in the data path to properly hold the data when exposing it downstream

input wire clock, resetn, i_stall, i_valid, i_fifovalid;
// init reinitializes the init fifo
input wire i_init;
output logic o_stall, o_valid, o_fifoready;
input wire i_predicate;
output logic o_datavalid;
output logic [DATA_WIDTH-1:0] o_data;
input wire [DATA_WIDTH-1:0] i_fifodata;
input wire [FIFOSIZE_WIDTH-1:0] i_fifosize;
input wire i_fifostartofpacket;
input wire i_fifoendofpacket;
input wire [EMPTY_PORT_WIDTH-1:0] i_fifoempty;
output logic o_startofpacket;
output logic o_endofpacket;
output logic [31:0] o_packetempty;

// profiler
output logic profile_i_valid;
output logic profile_i_stall;
output logic profile_o_stall;
output logic profile_total_req;
output logic profile_fifo_stall;
output logic profile_total_fifo_size;
output logic [31:0] profile_total_fifo_size_incr;


logic non_blocking;
assign non_blocking = (NON_BLOCKING == 1) ? 1'b1 : 1'b0;

logic valid_data_for_downstream, predication_for_downstream;
logic nop;
assign nop = i_predicate;

logic initvalid;
logic initready;
logic init_reset;
logic init_o_stall; // Stall value of the (possible) init_register
logic init_val; 

logic [EMPTY_PORT_WIDTH-1:0] o_packetempty_preext;

logic [EMPTY_PORT_WIDTH-1:0] reg_i_fifoempty;
logic reg_i_startofpacket, reg_i_endofpacket;
logic [DATA_WIDTH-1:0] reg_i_data;
logic reg_i_valid,reg_o_stall;
logic reg_datavalid;

assign valid_data_for_downstream = i_valid & ~nop & initvalid;
assign predication_for_downstream = i_valid & nop;
assign reg_datavalid = valid_data_for_downstream;




generate
if ( INIT ) begin
// If INIT is true, we insert a staging register in the external path with an initial value.

assign init_reset = ~resetn;
assign init_val   = i_init;

init_reg
  #( .WIDTH    ( EMPTY_PORT_WIDTH + 2 + DATA_WIDTH ),
     .INIT     ( INIT     ),
     .INIT_VAL ( { {EMPTY_PORT_WIDTH{1'b0}}, 2'b00, INIT_VAL} ),
     .ASYNC_RESET(ASYNC_RESET),
     .SYNCHRONIZE_RESET(SYNCHRONIZE_RESET)
  )
reg_data ( 
      .clk     ( clock ),
      .reset   ( init_reset ),
      .i_init  ( init_val   ),
      .i_data  ( {i_fifoempty, i_fifostartofpacket, i_fifoendofpacket, i_fifodata} ),
      .i_valid ( i_fifovalid ), 
      .o_valid ( initvalid ),
      .o_data  ( {reg_i_fifoempty, reg_i_startofpacket, reg_i_endofpacket, reg_i_data} ),
      .o_stall ( init_o_stall ),
      .i_stall ( ~initready ) 
      );
end
else begin

assign initvalid = i_fifovalid;

assign init_o_stall = ~initready;
//assign o_startofpacket = i_fifostartofpacket;
//assign o_endofpacket = i_fifoendofpacket;
//assign o_packetempty_preext = i_fifoempty_ext;
assign reg_i_data = i_fifodata;
assign reg_i_startofpacket = i_fifostartofpacket;
assign reg_i_endofpacket = i_fifoendofpacket;
assign reg_i_fifoempty = i_fifoempty;


end
endgenerate


assign o_fifoready = ~init_o_stall;



generate 
if( STAGING_CAPACITY )  begin

assign reg_i_valid = valid_data_for_downstream | predication_for_downstream | ( i_valid & non_blocking );

// assign o_data = i_fifodata ;

// stall upstream if
//   downstream (staging register) is stalling (reg_o_stall) 
//   I'm waiting for data from fifo, don't stall if this read is
//   predicated
assign o_stall = ( i_valid & ~nop & ~initvalid & ~non_blocking) | reg_o_stall;

// don't accept data if:
//  downstream (staging register) cannot accept data (reg_o_stall)
//  the current read is predicated (predication_for_downstream)
//  no thread exists to read data (~i_valid)
// TODO: I should never set o_fifoready is this is
//       a fifo peek operation
assign initready = ~(reg_o_stall  | predication_for_downstream | ~i_valid); 


init_reg
  #( .WIDTH    ( EMPTY_PORT_WIDTH + 3 + DATA_WIDTH ),
     .INIT     ( INIT     ),
     .INIT_VAL ( { {EMPTY_PORT_WIDTH{1'b0}}, 3'b000, INIT_VAL} ),
     .ASYNC_RESET(ASYNC_RESET),
     .SYNCHRONIZE_RESET(SYNCHRONIZE_RESET)
  )
reg_data ( 
      .clk     ( clock ),
      .reset   ( ~resetn ),
      .i_init  ( 1'b0 ),
      .i_data  ( {reg_i_fifoempty, reg_datavalid, reg_i_startofpacket, reg_i_endofpacket, reg_i_data} ),
      .i_valid ( reg_i_valid ), 
      .o_valid ( o_valid ),
      .o_data  ( {o_packetempty_preext, o_datavalid, o_startofpacket, o_endofpacket, o_data} ),
      .o_stall ( reg_o_stall ),
      .i_stall ( i_stall ) 
      );
      
end

else begin


assign o_startofpacket = reg_i_startofpacket;
assign o_endofpacket = reg_i_endofpacket;
assign o_packetempty_preext =reg_i_fifoempty;
assign o_data = reg_i_data;
assign o_datavalid=reg_datavalid;

assign o_valid = valid_data_for_downstream | predication_for_downstream | ( i_valid & non_blocking );

// assign o_data = i_fifodata ;

// stall upstream if
//   downstream is stalling (i_stall)
//   I'm waiting for data from fifo, don't stall if this read is
//   predicated
assign o_stall = ( i_valid & ~nop & ~initvalid & ~non_blocking) | i_stall;

// don't accept data if:
//  downstream cannot accept data (i_stall)
//  data from upstream is selected (predication_for_downstream)
//  no thread exists to read data (~i_valid)
// TODO: I should never set o_fifoready is this is
//       a fifo peek operation
assign initready = ~(i_stall  | predication_for_downstream | ~i_valid); 


end


endgenerate

assign o_packetempty = {{(32-EMPTY_PORT_WIDTH){1'b0}},o_packetempty_preext};
// The output packetempty port is hardcoded to 32 bits, so we need to extend that.





generate
if(ACL_PROFILE==1)
begin
  assign profile_i_valid = ( i_valid & ~o_stall );
  assign profile_i_stall = ( o_valid & i_stall );
  assign profile_o_stall = ( i_valid & o_stall );
  assign profile_total_req = ( i_valid & ~o_stall & ~nop );
  assign profile_fifo_stall = ( i_valid & ~nop & ~initvalid );

  // use fifosize value when we actually receive the data
  assign profile_total_fifo_size = ( i_fifovalid & o_fifoready );
  assign profile_total_fifo_size_incr = i_fifosize;
end
else
begin
  assign profile_i_valid = 1'b0;
  assign profile_i_stall = 1'b0;
  assign profile_o_stall = 1'b0;
  assign profile_total_req = 1'b0;
  assign profile_fifo_stall = 1'b0;
  assign profile_total_fifo_size = 1'b0;
  assign profile_total_fifo_size_incr = 32'b0;
end
endgenerate

endmodule

//===----------------------------------------------------------------------===//
//
// Avalon Streaming Write Unit
// downstream are signals that continue into our "normal" pipeline.
//
//===----------------------------------------------------------------------===//
module st_write (
        clock,
        resetn,

        // interface from kernel pipeline, input stream
        i_predicate,
        i_data,
        i_valid,
        o_stall,
        i_startofpacket,    // used for avalon packet data transfer support
        i_endofpacket,      // used for avalon packet data transfer support
        i_packetempty,      // used for avalon packet data transfer support (optional empty signal)

        // interface to kernel pipeline, downstream
        o_valid,
        o_ack,
        i_stall,
        // data_out,

        // interface to kernel channel fifo, avalon master
        o_fifodata,
        o_fifovalid,
        i_fifoready,
        i_fifosize,
        o_fifostartofpacket, // used only in packet case
        o_fifoendofpacket,   // used only in packet case
        o_fifoempty,         // used only in empty case

        // profiler
        profile_i_valid,
        profile_i_stall,
        profile_o_stall,
        profile_total_req,
        profile_fifo_stall,
        profile_total_fifo_size, profile_total_fifo_size_incr
        );

parameter DATA_WIDTH = 32;
parameter EMPTY_WIDTH = 0;
parameter EMPTY_PORT_WIDTH = (EMPTY_WIDTH > 0) ? EMPTY_WIDTH : 1;
parameter NON_BLOCKING = 0;
parameter FIFOSIZE_WIDTH=32;
parameter EFI_LATENCY = 1;
parameter ENABLED = 0;

// When enabled, the o_valid signal is determined by o_ack signal.
// This is appropriate when multiple channel writes may access the same channel.
// Please notice that parameter can only be used in a single threaded execution context.
// This has never been tested in multiple threaded execution context.
parameter ACK_AS_VALID = 0;

// Delay the ready signal by the specified number of cycles
//
// This allows the channel fifo side to have a non-zero Ready-Latency (RL)
// while keeping the kernel pipeline side at RL = 0.
//
parameter DELAY_READY = 0;

parameter ACL_PROFILE=0;      // Set to 1 to enable stall/valid profiling
//parameter ACL_PROFILE_INCREMENT_WIDTH=32;
parameter bit ASYNC_RESET = 1;          // how do the registers CONSUME reset: 1 means registers are reset asynchronously, 0 means registers are reset synchronously
parameter bit SYNCHRONIZE_RESET = 0;    // before consumption, do we SYNCHRONIZE the reset: 1 means use a synchronizer (assume reset arrived asynchronously), 0 means passthrough (assume reset was already synchronized)

input wire clock, resetn, i_stall, i_valid, i_fifoready;
output logic o_stall, o_valid, o_fifovalid;
input wire [DATA_WIDTH-1:0] i_data;
input wire i_startofpacket;
input wire i_endofpacket;
input wire [31:0] i_packetempty;
input wire i_predicate;
output logic [DATA_WIDTH-1:0] o_fifodata;
output logic o_ack;
input wire [FIFOSIZE_WIDTH-1:0] i_fifosize;
output logic o_fifostartofpacket;
output logic o_fifoendofpacket;
output logic [EMPTY_PORT_WIDTH-1:0] o_fifoempty;

// profiler
output logic profile_i_valid;
output logic profile_i_stall;
output logic profile_o_stall;
output logic profile_total_req;
output logic profile_fifo_stall;
output logic profile_total_fifo_size;
output logic [31:0] profile_total_fifo_size_incr;

logic non_blocking;
assign non_blocking = (NON_BLOCKING == 1) ? 1'b1 : 1'b0;

logic nop;
assign nop = i_predicate;

logic fifo_stall;

logic aclrn, sclrn;
acl_reset_handler
#(
    .ASYNC_RESET            (ASYNC_RESET),
    .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
    .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
    .PULSE_EXTENSION        (0),
    .PIPE_DEPTH             (1),
    .NUM_COPIES             (1)
)
acl_reset_handler_inst
(
    .clk                    (clock),
    .i_resetn               (resetn),
    .o_aclrn                (aclrn),
    .o_resetn_synchronized  (),
    .o_sclrn                (sclrn)
);

//////////////////////////////////////////////////////////////////////////////
// a shift register that delays the fifoready signal
//////////////////////////////////////////////////////////////////////////////

logic delayed_fifoready;

generate

if (DELAY_READY == 0) begin

  assign delayed_fifoready = i_fifoready;

end else begin

  // shift left
  logic [DELAY_READY-1:0] fifoready_sr;

  assign delayed_fifoready = fifoready_sr[DELAY_READY-1];

  always @(posedge clock or negedge aclrn) begin
    if (!aclrn) begin
      fifoready_sr <= {DELAY_READY{1'b0}};
    end
    else begin
      if (DELAY_READY == 1) begin
        fifoready_sr <= i_fifoready;
      end else begin
        fifoready_sr <= {fifoready_sr[DELAY_READY-2:0], i_fifoready};
      end
      if (!sclrn) begin
        fifoready_sr <= {DELAY_READY{1'b0}};
      end
    end
  end

end

endgenerate


logic consumed_downstream, consumed_sidepath;

logic stall_contribution_downstream, stall_contribution_sidepath;

generate 
if (EFI_LATENCY == 0) begin

  // if latency is 0 - this will create a combinational cycle with
  // the stall-valid logic since I
  // connect directly to the EFI st_read as will the 
  // efi_module path.
  // efi_st_write-> efi_mod
  //       ^           |
  //       |           |
  // efi_st_read <-----|
  //
  // This modification breaks
  // the cycle and works because the fifo path will stall back
  // appropriately if the st_read is being stalled (i.e. I don't have
  // to check the pipeline stall for o_stall).
  // efi_st_write-> efi_mod
  //                   |
  //                   |
  // efi_st_read <-----|
  assign o_valid       = i_valid;
  assign o_stall       = (nop & i_stall) | ( (fifo_stall & (~nop) & i_valid & !non_blocking) );
  assign o_fifovalid   = i_valid & ~nop;

end else if (NON_BLOCKING) begin
  
  assign o_valid     = i_valid;
  assign o_stall     = i_stall;
  assign o_fifovalid = i_valid & ~nop & ~i_stall;

end else begin
  // For blocking write, we generate different IP if multiple call
  // sites exist (ACK_AS_VALID = 1).
  // Terminologies:
  // *downstream: the direction kernel/component execution flow moves to
  //              stall/valid signals pairs are i_stall/o_valid
  // *side path: the direction FIFO data moves to
  //             stall/valid signals pairs are delayed_fifoready/o_fifovalid
  // *single/multiple call site(s): One/more than one write access point(s) in a
  //                                single OpenCL Kernel/HLS component
  //
  // Case 1: single call site version (ACK_AS_VALID = 0)
  // 2 consumed registers are designed to allow a single thread
  // to make progress on one path but not the other:
  // -- (register)consumed_downstream: mark the status of downstream went ahead of side path,
  //                                   in this status, current thread is allowed to make progress
  //                                   on the side path, not downstream.
  // -- (register)consumed_sidepath: mark the status of side path went ahead of downstream,
  //                                 in this status, current thread is allowed to make progress
  //                                 on the downstream, not side path.
  // -- stall_contribution_downstream: current thread is making progress on downstream in this cycle
  //                                   or has made progress in previous cycles
  // -- stall_contribution_sidepath: current thread is making progress on side path in this cycle
  //                                   or has made progress in previous cycles
  // -- o_stall: In single thread context, st_write will stall upstream if at least one side is stalled.
  // These designs together make sure the IP has capacity 1 and only allow a single
  // thread to make progress on one path but not the other.
  //
  // Case 2: multiple call site version (ACK_AS_VALID = 1)
  // The execution model of multiple call sites is that all call sites will be ordered in CPU
  // single thread model, which means the order of execution is fixed
  // Current mechanism in compiler to ensure the order:
  // 1. Multiple call sites to the same FIFO share the FIFO access port using a simple
  //    arbitration logic with no back-pressure functionality
  // 2. Every call sites has to make sure: downstream can only make progress if a write (or read)
  //    operation is committed (or guaranteed to happen in a cycle). In this way, it prevents itself from
  //    being in a data race condition with other call sites in downstream.
  // 3. In compiler, the section where multiple call sites' accesses to FIFO is allowed is
  //    marked as a single threaded section.
  // The current implementation of IP reuses the design of single call sites with one tweak:
  // -- consumed_downstream: should never be turned on since we only allow side path go ahead
  //    of downstream.
  
  if(ENABLED) begin
  
  always @(posedge clock or negedge aclrn) begin
    if(!aclrn) begin
      consumed_downstream <= 1'b0;
      consumed_sidepath   <= 1'b0;
    end
    else begin
      if(~i_stall) begin
        consumed_downstream <= stall_contribution_downstream & o_stall;
        consumed_sidepath   <= stall_contribution_sidepath & o_stall;
      end
      if(!sclrn) begin
        consumed_downstream <= 1'b0;
        consumed_sidepath   <= 1'b0;
      end
    end
  end

  end else begin
    
  always @(posedge clock or negedge aclrn) begin
    if(!aclrn) begin
      consumed_downstream <= 1'b0;
      consumed_sidepath   <= 1'b0;
    end
    else begin
      consumed_downstream <= stall_contribution_downstream & o_stall;
      consumed_sidepath   <= stall_contribution_sidepath & o_stall;
      if(!sclrn) begin
        consumed_downstream <= 1'b0;
        consumed_sidepath   <= 1'b0;
      end
    end
  end

  end
  // use o_ack signal as o_valid in multiple call site case:
  // in multiple call sites case, down stream flow may have another
  // channel write site access the same FIFO, that call site has to
  // wait untill this call site "commit" writing data to the FIFO (o_ack)
  if(ACK_AS_VALID) begin
    //ways we can provide a valid to kernel downstream:
    //-we are writing to the channel right now, this is o_ack
    //-when we wrote to the channel kernel downstream stalled us, so we would have turned on consumed_sidepath
    //-the valid was predicated, in which case we would never have looked at the channel
    assign o_valid     = o_ack | (i_valid & nop) | consumed_sidepath;
  end else begin
    assign o_valid     = i_valid & ~consumed_downstream;
  end
  assign o_fifovalid = (i_valid & ~nop) & ~consumed_sidepath;

  if (ACK_AS_VALID) begin
    //we can never allow consumed_downstream to turn on, otherwise this ruins the ordering of multiple write sites writing into the same channel
    //stall uptream if downstream is stalling otherwise consumed_downstream would turn on
    //even when downstream is not stalling, we could still be blocked by non-predicated write to a full channel
    //if consumed_sidepath is high and downstream is not stalled, keep o_stall low so that consumed_sidepath will send a single o_valid downstream
    assign o_stall = i_stall | (fifo_stall & ~nop & ~consumed_sidepath);
    assign stall_contribution_downstream = 1'b0;
  end
  else begin
    assign o_stall = ~(stall_contribution_downstream & stall_contribution_sidepath) ;
    assign stall_contribution_downstream = consumed_downstream | (i_valid & ~i_stall);
  end
  assign stall_contribution_sidepath   = consumed_sidepath | (i_valid & ~(~nop & fifo_stall));

end
endgenerate

assign o_ack        = o_fifovalid & delayed_fifoready;


assign fifo_stall = ~delayed_fifoready;
assign o_fifodata = i_data;
assign o_fifostartofpacket = i_startofpacket;
assign o_fifoendofpacket   = i_endofpacket;
assign o_fifoempty = i_packetempty[EMPTY_PORT_WIDTH-1:0];

generate
if(ACL_PROFILE==1)
begin
  assign profile_i_valid = ( i_valid & ~o_stall );
  assign profile_i_stall = ( o_valid & i_stall );
  assign profile_o_stall = ( i_valid & o_stall );
  assign profile_total_req = ( i_valid & ~o_stall & ~nop );
  assign profile_fifo_stall = (fifo_stall & (~nop) & i_valid) ;

  // use fifosize value when we actually send the data
  assign profile_total_fifo_size = ( o_fifovalid & i_fifoready );
  assign profile_total_fifo_size_incr = i_fifosize;
end
else
begin
  assign profile_i_valid = 1'b0;
  assign profile_i_stall = 1'b0;
  assign profile_o_stall = 1'b0;
  assign profile_total_req = 1'b0;
  assign profile_fifo_stall = 1'b0;
  assign profile_total_fifo_size = 1'b0;
  assign profile_total_fifo_size_incr = 32'b0;
end
endgenerate

endmodule

`default_nettype wire
