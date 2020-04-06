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

// Pipelined atomic unit:
//    Accept read requests on the upstream interface.  When a request is
//    received, store the requested byte address in the request fifo and
//    pass the request through to the avalon interface.  Response data
//    is buffered in the response fifo and the appropriate word is muxed
//    out of the response fifo based on the address in the request fifo.
//    The response fifo has limited capacity, so a counter is used to track
//    the number of pending responses to generate an upstream stall if
//    we run out of room.

`default_nettype none

module lsu_atomic_pipelined
(
    clk, reset, o_stall, i_valid, i_address, i_burstcount, i_stall, o_valid, o_readdata, 
    o_active, //Debugging signal
    avm_address, avm_read, avm_readdata, avm_waitrequest, avm_byteenable,
    avm_readdatavalid,
    o_input_fifo_depth,
    avm_burstcount,
    // specific for write data path
    i_atomic_op, i_writedata, i_cmpdata, avm_writeack, avm_writedata,
    ecc_err_status
);

/*************
* Parameters *
*************/
parameter AWIDTH=32;            // Address width (32-bits for Avalon)
parameter WIDTH_BYTES=4;        // Width of the memory access (bytes)
parameter MWIDTH_BYTES=32;      // Width of the global memory bus (bytes)
parameter WRITEDATAWIDTH_BYTES=32; // Width of the readdata/writedata signals, 
                                   // may be larger than MWIDTH_BYTES
parameter ALIGNMENT_ABITS=2;    // Request address alignment (address bits)
parameter KERNEL_SIDE_MEM_LATENCY=32;    // The max number of live threads
parameter USEBURST=0;
parameter BURSTCOUNT_WIDTH=6;   // Size of Avalon burst count port
parameter USEINPUTFIFO=1;
parameter USEOUTPUTFIFO=1;
parameter INPUTFIFOSIZE=32;
parameter PIPELINE_INPUT=0;
parameter SUPERPIPELINE=0;      // Enable extremely aggressive pipelining of the LSU
parameter ATOMIC_WIDTH=6;       // atomic operation range
parameter ASYNC_RESET=1;        // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
parameter SYNCHRONIZE_RESET=0;  // set to '1' to pass the incoming reset signal through a synchronizer before use
parameter enable_ecc = "FALSE"; // Enable error correction coding

localparam INPUTFIFO_USEDW_MAXBITS=$clog2(INPUTFIFOSIZE);

// Derived parameters
localparam MAX_BURST=2**(BURSTCOUNT_WIDTH-1);
localparam WIDTH=8*WIDTH_BYTES;
localparam MWIDTH=8*MWIDTH_BYTES;
localparam WRITEDATAWIDTH=8*WRITEDATAWIDTH_BYTES;
localparam BYTE_SELECT_BITS=$clog2(MWIDTH_BYTES);
localparam SEGMENT_SELECT_BITS=BYTE_SELECT_BITS-ALIGNMENT_ABITS;
localparam SEGMENT_WIDTH_BYTES=(2**ALIGNMENT_ABITS);

localparam UNUSED_WRITEDATA_WIDTH = WRITEDATAWIDTH - (2 * WIDTH + ATOMIC_WIDTH + BYTE_SELECT_BITS + 1);

//
// We only o_stall if we have more than KERNEL_SIDE_MEM_LATENCY inflight requests
//
localparam RETURN_FIFO_SIZE=KERNEL_SIDE_MEM_LATENCY+(USEBURST ? 0 : 1);
localparam COUNTER_WIDTH=USEBURST ? $clog2(RETURN_FIFO_SIZE+1+MAX_BURST) : $clog2(RETURN_FIFO_SIZE+1);

/********
* Ports *
********/
// Standard global signals
input wire clk;
input wire reset;

// Upstream interface
output wire o_stall;
input wire i_valid;
input wire [AWIDTH-1:0] i_address;
input wire [BURSTCOUNT_WIDTH-1:0] i_burstcount;

// Downstream interface
input wire i_stall;
output wire o_valid;
output wire [WIDTH-1:0] o_readdata;
output reg o_active;

// Atomic signals
input wire [ATOMIC_WIDTH-1:0] i_atomic_op;

// Avalon read interface
output wire [AWIDTH-1:0] avm_address;
output wire avm_read;
input wire [WRITEDATAWIDTH-1:0] avm_readdata;
input wire avm_waitrequest;
output logic [WRITEDATAWIDTH_BYTES-1:0] avm_byteenable;
input wire avm_readdatavalid;

// Avalon write interface
input wire [WIDTH-1:0] i_writedata;
input wire [WIDTH-1:0] i_cmpdata;
input wire avm_writeack;
output wire [WRITEDATAWIDTH-1:0] avm_writedata;

output wire [BURSTCOUNT_WIDTH-1:0] avm_burstcount;

// For profiler/performance monitor
output wire [INPUTFIFO_USEDW_MAXBITS-1:0] o_input_fifo_depth;
output logic  [1:0] ecc_err_status;  // ecc status signals

/***************
* Architecture *
***************/

wire i_valid_from_fifo;
wire [AWIDTH-1:0] i_address_from_fifo;
wire o_stall_to_fifo;
wire [BURSTCOUNT_WIDTH-1:0] i_burstcount_from_fifo;
wire [WIDTH-1:0] i_writedata_from_fifo;
wire [WIDTH-1:0] i_cmpdata_from_fifo;
wire [ATOMIC_WIDTH-1:0] i_atomic_op_from_fifo;
wire [BYTE_SELECT_BITS-1:0] segment_address;

wire read_accepted;
wire read_used;
wire [BYTE_SELECT_BITS-1:0] byte_select;
wire ready;
wire out_fifo_wait;
logic [1:0] ecc_err_status_0, ecc_err_status_1, ecc_err_status_2;

   localparam                    NUM_RESET_COPIES = 1;
   localparam                    RESET_PIPE_DEPTH = 3;
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
      .i_resetn               (~reset),
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
   begin: read_fifo_depth_zero_assign
      assign o_input_fifo_depth[bit_index] = 1'b0;
   end
endgenerate


generate
if(USEINPUTFIFO && SUPERPIPELINE)
begin

  logic [1:0] ecc_err_status_00, ecc_err_status_01;
  wire int_stall;
  wire int_valid;
  wire [WIDTH+AWIDTH+BURSTCOUNT_WIDTH-1:0] int_data;

  acl_fifo #(
    .DATA_WIDTH(ATOMIC_WIDTH+2*WIDTH+AWIDTH+BURSTCOUNT_WIDTH),
    .DEPTH(INPUTFIFOSIZE),
    .ASYNC_RESET(ASYNC_RESET),
    .SYNCHRONIZE_RESET(0),
    .enable_ecc(enable_ecc)
  ) input_fifo (
    .clock(clk),
    .resetn(resetn_synchronized),
    .data_in( {i_atomic_op,i_cmpdata,i_writedata,i_address,i_burstcount} ),
    .data_out( int_data ),
    .valid_in( i_valid ),
    .valid_out( int_valid ),
    .stall_in( int_stall ),
    .stall_out( o_stall ),
    .usedw( usedw_true_width ),
    .ecc_err_status(ecc_err_status_00)
  );

  // Add a pipeline and stall-breaking FIFO
  // TODO: Consider making this parameterizeable

  acl_data_fifo #(
    .DATA_WIDTH(ATOMIC_WIDTH+2*WIDTH+AWIDTH+BURSTCOUNT_WIDTH),
    .DEPTH(2),
    .IMPL("ll_reg"),
    .ASYNC_RESET(ASYNC_RESET),
    .SYNCHRONIZE_RESET(0),
    .enable_ecc(enable_ecc)
  ) input_fifo_buffer (
    .clock(clk),
    .resetn(resetn_synchronized),
    .data_in( int_data ),
    .valid_in( int_valid ),
    .data_out( {i_atomic_op_from_fifo,i_cmpdata_from_fifo,i_writedata_from_fifo,i_address_from_fifo,i_burstcount_from_fifo} ),
    .valid_out( i_valid_from_fifo ),
    .stall_in( o_stall_to_fifo ),
    .stall_out( int_stall ),
    .ecc_err_status(ecc_err_status_01)
  );
  assign ecc_err_status_0 = ecc_err_status_00 | ecc_err_status_01;
end
else if(USEINPUTFIFO && !SUPERPIPELINE)
begin
  acl_fifo #(
    .DATA_WIDTH(ATOMIC_WIDTH+2*AWIDTH+BURSTCOUNT_WIDTH),
    .DEPTH(INPUTFIFOSIZE),
    .ASYNC_RESET(ASYNC_RESET),
    .SYNCHRONIZE_RESET(0),
    .enable_ecc(enable_ecc)
  ) input_fifo (
    .clock(clk),
    .resetn(resetn_synchronized),
    .data_in( {i_atomic_op,i_cmpdata,i_writedata,i_address,i_burstcount} ),
    .data_out( {i_atomic_op_from_fifo,i_cmpdata_from_fifo,i_writedata_from_fifo,i_address_from_fifo,i_burstcount_from_fifo} ),
    .valid_in( i_valid ),
    .valid_out( i_valid_from_fifo ),
    .stall_in( o_stall_to_fifo ),
    .stall_out( o_stall ),
    .usedw( usedw_true_width ),
    .ecc_err_status(ecc_err_status_0)
  );
end
else if(PIPELINE_INPUT)
begin
  reg r_valid;
  reg [AWIDTH-1:0] r_address;
  reg [WIDTH-1:0] r_writedata;
  reg [WIDTH-1:0] r_cmpdata;
  reg [ATOMIC_WIDTH-1:0] r_atomic_op;
  reg [BURSTCOUNT_WIDTH-1:0] r_burstcount;

  assign o_stall = r_valid && o_stall_to_fifo;

  always@(posedge clk or negedge aclrn)
  begin
    if(~aclrn) begin
      r_valid <= 1'b0;
      r_address    <= 'x;
      r_atomic_op  <= 'x;
      r_writedata  <= 'x;
      r_cmpdata    <= 'x;
      r_burstcount <= 'x;
    end else
    begin
      if (!o_stall)
      begin 
        r_valid <= i_valid;
        r_address <= i_address;
        r_atomic_op <= i_atomic_op;
        r_writedata <= i_writedata;
        r_cmpdata <= i_cmpdata;
        r_burstcount <= i_burstcount;
      end
      if (~sclrn[0]) begin
        r_valid <= 1'b0;
      end
    end 
  end

  assign i_valid_from_fifo = r_valid;
  assign i_address_from_fifo = r_address;
  assign i_atomic_op_from_fifo = r_atomic_op;
  assign i_writedata_from_fifo = r_writedata;
  assign i_cmpdata_from_fifo = r_cmpdata;
  assign i_burstcount_from_fifo = r_burstcount;
  assign ecc_err_status_0 = 2'h0;
end
else
begin
  assign i_valid_from_fifo = i_valid;
  assign i_address_from_fifo = i_address;
  assign i_atomic_op_from_fifo = i_atomic_op;
  assign i_writedata_from_fifo = i_writedata;
  assign i_cmpdata_from_fifo = i_cmpdata;
  assign o_stall = o_stall_to_fifo;
  assign i_burstcount_from_fifo = i_burstcount;
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
assign counter_update = incr -decr;
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

        // incr - add one or i_burstcount_from_fifo; decr - subtr one; 
        if (USEBURST==1) 
           counter <= counter + (incr ? i_burstcount_from_fifo : 0) - decr;
        else
           counter <= counter + counter_update_extended;
        if (~sclrn[0]) begin
           counter <= '0;
           o_active <= '0;
        end
    end 
end


generate
if(USEBURST)
   // Use the burstcount to figure out if there is enough space
   assign ready = ((counter+i_burstcount_from_fifo) <= RETURN_FIFO_SIZE);
   //
   // Can also use decr in this calaculation to make ready respond faster
   // but this seems to hurt Fmax ( ie. not worth it )
   //assign ready = ((counter+i_burstcount_from_fifo-decr) <= RETURN_FIFO_SIZE);
else
   // Can we hold one more item 
   assign ready = (counter <= (RETURN_FIFO_SIZE-1)); //utku: what if we dont use return fifo?
endgenerate

assign o_stall_to_fifo = !ready || out_fifo_wait;

// Optional Pipeline register before return
//
reg r_avm_readdatavalid;
reg [WRITEDATAWIDTH-1:0] r_avm_readdata;

generate
if(SUPERPIPELINE)
begin
  always@(posedge clk or negedge aclrn)
  begin
    if(~aclrn)
    begin
      r_avm_readdata <= 'x;
      r_avm_readdatavalid <= 1'b0;
    end
    else
    begin
      r_avm_readdata <= avm_readdata;
      r_avm_readdatavalid <= avm_readdatavalid;
      if (~sclrn[0]) r_avm_readdatavalid <= 1'b0;
    end
  end
end
else
begin
  // Don't register the return
  always@(*)
  begin
    r_avm_readdata = avm_readdata;
    r_avm_readdatavalid = avm_readdatavalid;
  end
end
endgenerate

wire [WIDTH-1:0] rdata;
// Byte-addresses enter a FIFO so we can demux the appropriate data back out.
generate
if(SEGMENT_SELECT_BITS > 0)
begin
  wire [SEGMENT_SELECT_BITS-1:0] segment_address_out;
  wire [SEGMENT_SELECT_BITS-1:0] segment_address_in;
  assign segment_address_in = i_address_from_fifo[ALIGNMENT_ABITS +: BYTE_SELECT_BITS-ALIGNMENT_ABITS];
  acl_ll_fifo #(
      .WIDTH(SEGMENT_SELECT_BITS),
      .DEPTH(KERNEL_SIDE_MEM_LATENCY+1),
      .ASYNC_RESET(ASYNC_RESET),
      .SYNCHRONIZE_RESET(0)
  ) req_fifo (
      .clk(clk),
      .reset(~resetn_synchronized),
      .data_in( segment_address_in ),
      .data_out( segment_address_out ),
      .write( read_accepted ),
      .read( r_avm_readdatavalid ),
      .empty(),
      .full()
  );
  assign byte_select = (segment_address_out << ALIGNMENT_ABITS);
  assign rdata = r_avm_readdata[8*byte_select +: WIDTH];
end
else
begin
  assign byte_select = {BYTE_SELECT_BITS{1'b0}};
  assign rdata = r_avm_readdata;
end
endgenerate

// set byteenable properly for read path
generate
if(SEGMENT_SELECT_BITS > 0)
begin
  wire [SEGMENT_SELECT_BITS-1:0] segment_select;
  assign segment_select = i_address_from_fifo[ALIGNMENT_ABITS +: BYTE_SELECT_BITS-ALIGNMENT_ABITS];
  assign segment_address = segment_select*SEGMENT_WIDTH_BYTES;
  //always@(*)
  //begin
  //  avm_byteenable = {WRITEDATAWIDTH_BYTES{1'b0}};
  //  avm_byteenable[segment_select*SEGMENT_WIDTH_BYTES +: WIDTH_BYTES] = {WIDTH_BYTES{1'b1}};
  //end
end
else
begin
  assign segment_address = {BYTE_SELECT_BITS{1'b0}};
  //always@(*)
  //begin
    //avm_byteenable = {WRITEDATAWIDTH_BYTES{1'b1}};
  //end
end
endgenerate

always@(*)
begin 
  avm_byteenable = {WRITEDATAWIDTH_BYTES{1'b0}};
  avm_byteenable[segment_address +: WIDTH_BYTES] = {WIDTH_BYTES{1'b1}};
end

// Status bits
assign read_accepted = i_valid_from_fifo && ready && !out_fifo_wait;
assign read_used = o_valid && !i_stall;

// Optional: Pipelining FIFO on the AVM interface
//
generate
if(SUPERPIPELINE)
begin
  acl_data_fifo #(
      .DATA_WIDTH(WRITEDATAWIDTH+AWIDTH+BURSTCOUNT_WIDTH),
      .DEPTH(2),
      .IMPL("ll_reg"),
      .ASYNC_RESET(ASYNC_RESET),
      .SYNCHRONIZE_RESET(0),
      .enable_ecc(enable_ecc)
  ) avm_buffer (
      .clock(clk),
      .resetn(resetn_synchronized),
      .data_in({ {UNUSED_WRITEDATA_WIDTH{1'b0}},segment_address,i_atomic_op_from_fifo,i_cmpdata_from_fifo,i_writedata_from_fifo,1'b1,((i_address_from_fifo >> BYTE_SELECT_BITS) << BYTE_SELECT_BITS),i_burstcount_from_fifo}),
      .valid_in( i_valid_from_fifo && ready ),
      .data_out( {avm_writedata,avm_address,avm_burstcount} ),
      .valid_out( avm_read ),
      .stall_in( avm_waitrequest ),
      .stall_out( out_fifo_wait ),
      .ecc_err_status(ecc_err_status_1)
  );
end
else
begin
  // No interface pipelining

  assign out_fifo_wait = avm_waitrequest;
  assign avm_address = ((i_address_from_fifo >> BYTE_SELECT_BITS) << BYTE_SELECT_BITS);
  assign avm_read = i_valid_from_fifo && ready;
  assign avm_burstcount = i_burstcount_from_fifo;

  // avm_writedata contains {valid atomic bit, writedata, cmpdata, atomic_op}
  assign avm_writedata[0:0] = 1'b1;
  assign avm_writedata[WIDTH:1] = i_writedata_from_fifo;
  assign avm_writedata[2*WIDTH:WIDTH+1] = i_cmpdata_from_fifo;
  assign avm_writedata[2*WIDTH+ATOMIC_WIDTH:2*WIDTH+1] = i_atomic_op_from_fifo;
  assign avm_writedata[2*WIDTH+ATOMIC_WIDTH+BYTE_SELECT_BITS:2*WIDTH+ATOMIC_WIDTH+1] = segment_address;
  assign avm_writedata[WRITEDATAWIDTH-1:2*WIDTH+ATOMIC_WIDTH+BYTE_SELECT_BITS+1] = { UNUSED_WRITEDATA_WIDTH{1'b0} };
  assign ecc_err_status_1 = 2'h0;

end
endgenerate

// ---------------------------------------------------------------------------------
// Output fifo - must be at least as deep as the maximum number of pending requests
// so that we can guarantee a place for the response data if the downstream blocks
// are stalling.
//
generate
if(USEOUTPUTFIFO)
begin
acl_fifo #(
   .DATA_WIDTH(WIDTH),
   .DEPTH(RETURN_FIFO_SIZE),
   .ASYNC_RESET(ASYNC_RESET),
   .SYNCHRONIZE_RESET(0),
   .enable_ecc(enable_ecc)
) data_fifo (
   .clock(clk),
   .resetn(resetn_synchronized),
   .data_in( rdata ),
   .data_out( o_readdata ),
   .valid_in( r_avm_readdatavalid ),
   .valid_out( o_valid ),
   .stall_in( i_stall ),
   .stall_out(),
   .ecc_err_status(ecc_err_status_2)
);
end
else
begin
   assign o_valid = r_avm_readdatavalid;
   assign o_readdata = rdata;
   assign ecc_err_status_2 = 2'h0;
end
endgenerate

assign ecc_err_status = ecc_err_status_0 | ecc_err_status_1 | ecc_err_status_2;

endmodule

`default_nettype wire
