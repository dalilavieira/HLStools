//----------------------------------------------------------------------------//
// Generated by LegUp High-Level Synthesis Tool Version 3.0 (http://legup.org)
// Compiled: Tue Jul 15 15:43:09 2014
// University of Toronto
// For research and academic purposes only. Commercial use is prohibited.
// Please send bugs to: legup@eecg.toronto.edu
// Date: Tue Mar 10 07:51:27 2020
//----------------------------------------------------------------------------//

`define MEMORY_CONTROLLER_ADDR_SIZE 32
`define MEMORY_CONTROLLER_DATA_SIZE 64
// Number of RAM elements: 1
`define MEMORY_CONTROLLER_TAG_SIZE 9
`define TAG_NULL `MEMORY_CONTROLLER_TAG_SIZE'd0
`define TAG_PROCESSOR `MEMORY_CONTROLLER_TAG_SIZE'd1
// @g_223 = internal global %union.U1 zeroinitializer, align 4

`define TAG_g_g_223 `MEMORY_CONTROLLER_TAG_SIZE'd2
`define TAG_g_g_223_a {`TAG_g_g_223, 23'd0}

// Turn off warning 'ignoring unsupported system task'
// altera message_off 10175

module top
	(
		clk,
		reset,
		start,
		finish,
		return_val
	);
input clk;
input reset;
input start;
output wire finish;
output wire [31:0] return_val;
wire memory_controller_waitrequest;
wire memory_controller_enable_a;
wire [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] memory_controller_address_a;
wire memory_controller_write_enable_a;
wire [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_in_a;
wire [1:0] memory_controller_size_a;
wire [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_out_a;

wire memory_controller_enable_b;
wire [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] memory_controller_address_b;
wire memory_controller_write_enable_b;
wire [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_in_b;
wire [1:0] memory_controller_size_b;
wire [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_out_b;

assign memory_controller_waitrequest = 0;

memory_controller memory_controller_inst (
	.clk( clk ),
	.memory_controller_enable_a( memory_controller_enable_a ),
	.memory_controller_enable_b( memory_controller_enable_b ),
	.memory_controller_address_a( memory_controller_address_a ),
	.memory_controller_address_b( memory_controller_address_b ),
	.memory_controller_write_enable_a( memory_controller_write_enable_a ),
	.memory_controller_write_enable_b( memory_controller_write_enable_b ),
	.memory_controller_in_a( memory_controller_in_a ),
	.memory_controller_in_b( memory_controller_in_b ),
	.memory_controller_size_a( memory_controller_size_a ),
	.memory_controller_size_b( memory_controller_size_b ),
	.memory_controller_waitrequest( memory_controller_waitrequest ),
	.memory_controller_out_reg_a( memory_controller_out_a ),
	.memory_controller_out_reg_b( memory_controller_out_b )
);

main main_inst(
	.clk( clk ),
	.clk2x( clk2x ),
	.clk1x_follower( clk1x_follower ),
	.reset( reset ),
	.start( start ),
	.finish( finish ),
	.return_val( return_val ),
	.memory_controller_enable_a(memory_controller_enable_a),
	.memory_controller_address_a(memory_controller_address_a),
	.memory_controller_write_enable_a(memory_controller_write_enable_a),
	.memory_controller_in_a(memory_controller_in_a),
	.memory_controller_size_a(memory_controller_size_a),
	.memory_controller_out_a(memory_controller_out_a),
	.memory_controller_enable_b(memory_controller_enable_b),
	.memory_controller_address_b(memory_controller_address_b),
	.memory_controller_write_enable_b(memory_controller_write_enable_b),
	.memory_controller_in_b(memory_controller_in_b),
	.memory_controller_size_b(memory_controller_size_b),
	.memory_controller_out_b(memory_controller_out_b),
	.memory_controller_waitrequest(memory_controller_waitrequest)
);

endmodule
`timescale 1 ns / 1 ns
module memory_controller
(
	clk,
	memory_controller_address_a,
	memory_controller_address_b,
	memory_controller_enable_a,
	memory_controller_enable_b,
	memory_controller_write_enable_a,
	memory_controller_write_enable_b,
	memory_controller_in_a,
	memory_controller_in_b,
	memory_controller_size_a,
	memory_controller_size_b,
	memory_controller_waitrequest,
	memory_controller_out_reg_a,
	memory_controller_out_reg_b
);


input clk;
input memory_controller_waitrequest;
input [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] memory_controller_address_a;
input memory_controller_enable_a;
input memory_controller_write_enable_a;
input [64-1:0] memory_controller_in_a;
input [1:0] memory_controller_size_a;
output reg [64-1:0] memory_controller_out_reg_a;
reg [64-1:0] memory_controller_out_prev_a;
reg [64-1:0] memory_controller_out_a;

reg memory_controller_enable_reg_a;
input [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] memory_controller_address_b;
input memory_controller_enable_b;
input memory_controller_write_enable_b;
input [64-1:0] memory_controller_in_b;
input [1:0] memory_controller_size_b;
output reg [64-1:0] memory_controller_out_reg_b;
reg [64-1:0] memory_controller_out_prev_b;
reg [64-1:0] memory_controller_out_b;

reg memory_controller_enable_reg_b;

reg [0:0] g_223_address_a;
reg [0:0] g_223_address_b;
reg g_223_write_enable_a;
reg g_223_write_enable_b;
reg [63:0] g_223_in_a;
reg [63:0] g_223_in_b;
wire [63:0] g_223_out_a;
wire [63:0] g_223_out_b;
reg [8-1:0] g_223_byteena_a;
reg [8-1:0] g_223_byteena_b;

// @g_223 = internal global %union.U1 zeroinitializer, align 4

ram_dual_port g_223 (
	.clk( clk ),
	.address_a( g_223_address_a ),
	.address_b( g_223_address_b ),
	.wren_a( g_223_write_enable_a ),
	.wren_b( g_223_write_enable_b ),
	.data_a( g_223_in_a ),
	.data_b( g_223_in_b ),
	.byteena_a( g_223_byteena_a ),
	.byteena_b( g_223_byteena_b ),
	.q_a( g_223_out_a ),
	.q_b( g_223_out_b)
);
defparam g_223.width_a = 64;
defparam g_223.width_b = 64;
defparam g_223.widthad_a = 1;
defparam g_223.widthad_b = 1;
defparam g_223.width_be_a = 8;
defparam g_223.width_be_b = 8;
defparam g_223.numwords_a = 1;
defparam g_223.numwords_b = 1;
defparam g_223.latency = 1;
defparam g_223.init_file = "g_223.mif";

wire [`MEMORY_CONTROLLER_TAG_SIZE-1:0] tag_a;
assign tag_a = memory_controller_address_a[`MEMORY_CONTROLLER_ADDR_SIZE-1:`MEMORY_CONTROLLER_ADDR_SIZE-`MEMORY_CONTROLLER_TAG_SIZE];
always @(*)
if (memory_controller_enable_a & (tag_a == 0))
begin
   $display("Error: Null pointer exception! Are you trying to read from a local ram? Use: 'set_memory_global <ram_name>' To debug this error try: 'set_parameter PRINT_STATES 1'");
   $finish;
end
reg [2:0] prevAddr_a;
reg [1:0] prevSize_a;
reg [2:0] prevSize_a_and;

always @(posedge clk)
begin
	prevAddr_a <= memory_controller_address_a[2:0];
	prevSize_a <= memory_controller_size_a;
end
wire [`MEMORY_CONTROLLER_TAG_SIZE-1:0] tag_b;
assign tag_b = memory_controller_address_b[`MEMORY_CONTROLLER_ADDR_SIZE-1:`MEMORY_CONTROLLER_ADDR_SIZE-`MEMORY_CONTROLLER_TAG_SIZE];
always @(*)
if (memory_controller_enable_b & (tag_b == 0))
begin
   $display("Error: Null pointer exception! Are you trying to read from a local ram? Use: 'set_memory_global <ram_name>' To debug this error try: 'set_parameter PRINT_STATES 1'");
   $finish;
end
reg [2:0] prevAddr_b;
reg [1:0] prevSize_b;
reg [2:0] prevSize_b_and;

always @(posedge clk)
begin
	prevAddr_b <= memory_controller_address_b[2:0];
	prevSize_b <= memory_controller_size_b;
end

reg [2:0] select_not_struct_a;

wire select_g_223_a;
assign select_g_223_a = (tag_a == `TAG_g_g_223);
reg select_g_223_reg_a;
reg [63:0] memory_controller_g_223_out_a;
wire [63:0] memory_controller_g_223_out_struct_a;
assign memory_controller_g_223_out_struct_a = {64{ select_g_223_reg_a}} & g_223_out_a;

always @(*)
begin
	g_223_address_a = memory_controller_address_a[4-1:3] & {1{select_g_223_a}};
	g_223_write_enable_a = memory_controller_write_enable_a & select_g_223_a;
				g_223_in_a = 0;
		case(memory_controller_size_a)
			3:
			begin
				g_223_in_a[64-1:0] = memory_controller_in_a[64-1:0];
				g_223_byteena_a = 8'b11111111;
			end
			2:
			begin
				if (memory_controller_address_a [2:2] == 0)
				begin
					g_223_in_a[32-1:0] = memory_controller_in_a[32-1:0];
					g_223_byteena_a = 8'b00001111;
				end
				else
				begin
					g_223_in_a[64-1:32] = memory_controller_in_a[32-1:0];
					g_223_byteena_a = 8'b11110000;
				end
			end
			1:
			begin
				case (memory_controller_address_a[2:1])
					0:
					begin
						g_223_in_a[16-1:0] = memory_controller_in_a[16-1:0];
						g_223_byteena_a = 8'd3;
					end
					1:
					begin
						g_223_in_a[32-1:16] = memory_controller_in_a[16-1:0];
						g_223_byteena_a = 8'd12;
					end
					2:
					begin
						g_223_in_a[48-1:32] = memory_controller_in_a[16-1:0];
						g_223_byteena_a = 8'd48;
					end
					3:
					begin
						g_223_in_a[64-1:48] = memory_controller_in_a[16-1:0];
						g_223_byteena_a = 8'd192;
					end
				endcase
			end
			0:
				case (memory_controller_address_a[2:0])
					0:
					begin
						g_223_in_a[8-1:0] = memory_controller_in_a[8-1:0];
						g_223_byteena_a = 8'd1;
					end
					1:
					begin
						g_223_in_a[16-1:8] = memory_controller_in_a[8-1:0];
						g_223_byteena_a = 8'd2;
					end
					2:
					begin
						g_223_in_a[24-1:16] = memory_controller_in_a[8-1:0];
						g_223_byteena_a = 8'd4;
					end
					3:
					begin
						g_223_in_a[32-1:24] = memory_controller_in_a[8-1:0];
						g_223_byteena_a = 8'd8;
					end
					4:
					begin
						g_223_in_a[40-1:32] = memory_controller_in_a[8-1:0];
						g_223_byteena_a = 8'd16;
					end
					5:
					begin
						g_223_in_a[48-1:40] = memory_controller_in_a[8-1:0];
						g_223_byteena_a = 8'd32;
					end
					6:
					begin
						g_223_in_a[56-1:48] = memory_controller_in_a[8-1:0];
						g_223_byteena_a = 8'd64;
					end
					7:
					begin
						g_223_in_a[64-1:56] = memory_controller_in_a[8-1:0];
						g_223_byteena_a = 8'd128;
					end
			endcase
		endcase

end
always @(*)
begin
	select_not_struct_a [2:0] = 3'b0;
	if (prevAddr_a[2:0] & select_not_struct_a[2:0] != 0 && memory_controller_enable_a)
	begin
		$display("Error: memory address not aligned to ram word size!");
		$finish;
	end

	prevSize_a_and[0] = prevSize_a[1] | prevSize_a[0];
	prevSize_a_and[1] = prevSize_a[1];
	prevSize_a_and[2] = prevSize_a[1] & prevSize_a[0];
	if ((prevAddr_a & prevSize_a_and) != 0 && memory_controller_enable_a)
	begin
		$display("Error: memory address not aligned to ram word size!");
		$finish;
	end
	memory_controller_g_223_out_a = 0;
	case(prevAddr_a)
		0: memory_controller_g_223_out_a[64-1:0] = memory_controller_g_223_out_struct_a[64-1:0];
		1: memory_controller_g_223_out_a[32-1:0] = memory_controller_g_223_out_struct_a[40-1:8];
		2: memory_controller_g_223_out_a[32-1:0] = memory_controller_g_223_out_struct_a[48-1:16];
		3: memory_controller_g_223_out_a[32-1:0] = memory_controller_g_223_out_struct_a[56-1:24];
		4: memory_controller_g_223_out_a[32-1:0] = memory_controller_g_223_out_struct_a[64-1:32];
		5: memory_controller_g_223_out_a[16-1:0] = memory_controller_g_223_out_struct_a[56-1:40];
		6: memory_controller_g_223_out_a[16-1:0] = memory_controller_g_223_out_struct_a[64-1:48];
		7: memory_controller_g_223_out_a[8-1:0] = memory_controller_g_223_out_struct_a[64-1:56];
	endcase

	memory_controller_out_prev_a = memory_controller_out_reg_a & { 64{!memory_controller_enable_reg_a}};
	memory_controller_out_a = 1'b0 | memory_controller_out_prev_a | memory_controller_g_223_out_a;
end

always @(posedge clk)
begin
memory_controller_out_reg_a <= memory_controller_out_a;
memory_controller_enable_reg_a <= memory_controller_enable_a;
select_g_223_reg_a <= select_g_223_a;
end

reg [2:0] select_not_struct_b;

wire select_g_223_b;
assign select_g_223_b = (tag_b == `TAG_g_g_223);
reg select_g_223_reg_b;
reg [63:0] memory_controller_g_223_out_b;
wire [63:0] memory_controller_g_223_out_struct_b;
assign memory_controller_g_223_out_struct_b = {64{ select_g_223_reg_b}} & g_223_out_b;

always @(*)
begin
	g_223_address_b = memory_controller_address_b[4-1:3] & {1{select_g_223_b}};
	g_223_write_enable_b = memory_controller_write_enable_b & select_g_223_b;
				g_223_in_b = 0;
		case(memory_controller_size_b)
			3:
			begin
				g_223_in_b[64-1:0] = memory_controller_in_b[64-1:0];
				g_223_byteena_b = 8'b11111111;
			end
			2:
			begin
				if (memory_controller_address_b [2:2] == 0)
				begin
					g_223_in_b[32-1:0] = memory_controller_in_b[32-1:0];
					g_223_byteena_b = 8'b00001111;
				end
				else
				begin
					g_223_in_b[64-1:32] = memory_controller_in_b[32-1:0];
					g_223_byteena_b = 8'b11110000;
				end
			end
			1:
			begin
				case (memory_controller_address_b[2:1])
					0:
					begin
						g_223_in_b[16-1:0] = memory_controller_in_b[16-1:0];
						g_223_byteena_b = 8'd3;
					end
					1:
					begin
						g_223_in_b[32-1:16] = memory_controller_in_b[16-1:0];
						g_223_byteena_b = 8'd12;
					end
					2:
					begin
						g_223_in_b[48-1:32] = memory_controller_in_b[16-1:0];
						g_223_byteena_b = 8'd48;
					end
					3:
					begin
						g_223_in_b[64-1:48] = memory_controller_in_b[16-1:0];
						g_223_byteena_b = 8'd192;
					end
				endcase
			end
			0:
				case (memory_controller_address_b[2:0])
					0:
					begin
						g_223_in_b[8-1:0] = memory_controller_in_b[8-1:0];
						g_223_byteena_b = 8'd1;
					end
					1:
					begin
						g_223_in_b[16-1:8] = memory_controller_in_b[8-1:0];
						g_223_byteena_b = 8'd2;
					end
					2:
					begin
						g_223_in_b[24-1:16] = memory_controller_in_b[8-1:0];
						g_223_byteena_b = 8'd4;
					end
					3:
					begin
						g_223_in_b[32-1:24] = memory_controller_in_b[8-1:0];
						g_223_byteena_b = 8'd8;
					end
					4:
					begin
						g_223_in_b[40-1:32] = memory_controller_in_b[8-1:0];
						g_223_byteena_b = 8'd16;
					end
					5:
					begin
						g_223_in_b[48-1:40] = memory_controller_in_b[8-1:0];
						g_223_byteena_b = 8'd32;
					end
					6:
					begin
						g_223_in_b[56-1:48] = memory_controller_in_b[8-1:0];
						g_223_byteena_b = 8'd64;
					end
					7:
					begin
						g_223_in_b[64-1:56] = memory_controller_in_b[8-1:0];
						g_223_byteena_b = 8'd128;
					end
			endcase
		endcase

end
always @(*)
begin
	select_not_struct_b [2:0] = 3'b0;
	if (prevAddr_b[2:0] & select_not_struct_b[2:0] != 0 && memory_controller_enable_b)
	begin
		$display("Error: memory address not aligned to ram word size!");
		$finish;
	end

	prevSize_b_and[0] = prevSize_b[1] | prevSize_b[0];
	prevSize_b_and[1] = prevSize_b[1];
	prevSize_b_and[2] = prevSize_b[1] & prevSize_b[0];
	if ((prevAddr_b & prevSize_b_and) != 0 && memory_controller_enable_b)
	begin
		$display("Error: memory address not aligned to ram word size!");
		$finish;
	end
	memory_controller_g_223_out_b = 0;
	case(prevAddr_b)
		0: memory_controller_g_223_out_b[64-1:0] = memory_controller_g_223_out_struct_b[64-1:0];
		1: memory_controller_g_223_out_b[32-1:0] = memory_controller_g_223_out_struct_b[40-1:8];
		2: memory_controller_g_223_out_b[32-1:0] = memory_controller_g_223_out_struct_b[48-1:16];
		3: memory_controller_g_223_out_b[32-1:0] = memory_controller_g_223_out_struct_b[56-1:24];
		4: memory_controller_g_223_out_b[32-1:0] = memory_controller_g_223_out_struct_b[64-1:32];
		5: memory_controller_g_223_out_b[16-1:0] = memory_controller_g_223_out_struct_b[56-1:40];
		6: memory_controller_g_223_out_b[16-1:0] = memory_controller_g_223_out_struct_b[64-1:48];
		7: memory_controller_g_223_out_b[8-1:0] = memory_controller_g_223_out_struct_b[64-1:56];
	endcase

	memory_controller_out_prev_b = memory_controller_out_reg_b & { 64{!memory_controller_enable_reg_b}};
	memory_controller_out_b = 1'b0 | memory_controller_out_prev_b | memory_controller_g_223_out_b;
end

always @(posedge clk)
begin
memory_controller_out_reg_b <= memory_controller_out_b;
memory_controller_enable_reg_b <= memory_controller_enable_b;
select_g_223_reg_b <= select_g_223_b;
end

endmodule 

`timescale 1 ns / 1 ns
module func_3
(
	clk,
	clk2x,
	clk1x_follower,
	reset,
	start,
	finish,
	memory_controller_enable_a,
	memory_controller_address_a,
	memory_controller_write_enable_a,
	memory_controller_in_a,
	memory_controller_size_a,
	memory_controller_out_a,
	memory_controller_enable_b,
	memory_controller_address_b,
	memory_controller_write_enable_b,
	memory_controller_in_b,
	memory_controller_size_b,
	memory_controller_out_b,
	memory_controller_waitrequest,
	return_val,
	arg_p_4,
	arg_p_5
);

parameter  LEGUP_0 = 1'd0;
parameter  LEGUP_F_func_3_BB_0_1 = 1'd1;

input  clk;
input  clk2x;
input  clk1x_follower;
input  reset;
input  start;
output reg  finish;
output reg  memory_controller_enable_a;
output reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] memory_controller_address_a;
output reg  memory_controller_write_enable_a;
output reg [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_in_a;
output reg [1:0] memory_controller_size_a;
input [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_out_a;
output reg  memory_controller_enable_b;
output reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] memory_controller_address_b;
output reg  memory_controller_write_enable_b;
output reg [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_in_b;
output reg [1:0] memory_controller_size_b;
input [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_out_b;
input  memory_controller_waitrequest;
output reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] return_val;
input [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] arg_p_4;
input [31:0] arg_p_5;
reg  cur_state;
wire  g_223_address_a;
wire  g_223_write_enable_a;
wire [63:0] g_223_in_a;
wire [63:0] g_223_out_a;
wire  g_223_address_b;
wire  g_223_write_enable_b;
wire [63:0] g_223_in_b;
wire [63:0] g_223_out_b;
wire [15:0] legup_pthreadpoll_threadID;

// Local Rams


always @(posedge clk) begin
if (((cur_state == LEGUP_0) & (memory_controller_waitrequest == 1'd1)))
begin
cur_state <= LEGUP_0;
if (reset == 1'b0 && ^(LEGUP_0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if ((((cur_state == LEGUP_0) & (memory_controller_waitrequest == 1'd0)) & (start == 1'd1)))
begin
cur_state <= LEGUP_F_func_3_BB_0_1;
if (reset == 1'b0 && ^(LEGUP_F_func_3_BB_0_1) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if ((((cur_state == LEGUP_0) & (memory_controller_waitrequest == 1'd0)) & (start == 1'd0)))
begin
cur_state <= LEGUP_0;
if (reset == 1'b0 && ^(LEGUP_0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if (((cur_state == LEGUP_F_func_3_BB_0_1) & (memory_controller_waitrequest == 1'd1)))
begin
cur_state <= LEGUP_F_func_3_BB_0_1;
if (reset == 1'b0 && ^(LEGUP_F_func_3_BB_0_1) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if (((cur_state == LEGUP_F_func_3_BB_0_1) & (memory_controller_waitrequest == 1'd0)))
begin
cur_state <= LEGUP_0;
if (reset == 1'b0 && ^(LEGUP_0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if ((reset == 1'd1))
begin
cur_state <= 1'd0;
if (reset == 1'b0 && ^(1'd0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
end
always @(posedge clk) begin
if ((cur_state == LEGUP_0))
begin
finish <= 1'd0;
if (reset == 1'b0 && ^(1'd0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to finish"); $finish; end
end
/* func_3: %0*/
/*   ret %union.U1* @g_223*/
if ((cur_state == LEGUP_F_func_3_BB_0_1))
begin
finish <= (memory_controller_waitrequest == 1'd0);
if (reset == 1'b0 && ^((memory_controller_waitrequest == 1'd0)) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to finish"); $finish; end
end
end
always @(*) begin
memory_controller_enable_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_enable_a = 1'd0;
end
end
always @(*) begin
memory_controller_address_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_address_a = 1'd0;
end
end
always @(*) begin
memory_controller_write_enable_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_write_enable_a = 1'd0;
end
end
always @(*) begin
memory_controller_in_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_in_a = 1'd0;
end
end
always @(*) begin
memory_controller_size_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_size_a = 1'd0;
end
end
always @(*) begin
memory_controller_enable_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_enable_b = 1'd0;
end
end
always @(*) begin
memory_controller_address_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_address_b = 1'd0;
end
end
always @(*) begin
memory_controller_write_enable_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_write_enable_b = 1'd0;
end
end
always @(*) begin
memory_controller_in_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_in_b = 1'd0;
end
end
always @(*) begin
memory_controller_size_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_size_b = 1'd0;
end
end
always @(posedge clk) begin
if ((cur_state == LEGUP_0))
begin
return_val <= 0;
if (reset == 1'b0 && ^(0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to return_val"); $finish; end
end
/* func_3: %0*/
/*   ret %union.U1* @g_223*/
if ((cur_state == LEGUP_F_func_3_BB_0_1))
begin
return_val <= `TAG_g_g_223_a;
if (reset == 1'b0 && ^(`TAG_g_g_223_a) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to return_val"); $finish; end
end
end

endmodule 
`timescale 1 ns / 1 ns
module main
(
	clk,
	clk2x,
	clk1x_follower,
	reset,
	start,
	finish,
	memory_controller_enable_a,
	memory_controller_address_a,
	memory_controller_write_enable_a,
	memory_controller_in_a,
	memory_controller_size_a,
	memory_controller_out_a,
	memory_controller_enable_b,
	memory_controller_address_b,
	memory_controller_write_enable_b,
	memory_controller_in_b,
	memory_controller_size_b,
	memory_controller_out_b,
	memory_controller_waitrequest,
	return_val
);

parameter  LEGUP_0 = 1'd0;
parameter  LEGUP_F_main_BB_0_1 = 1'd1;

input  clk;
input  clk2x;
input  clk1x_follower;
input  reset;
input  start;
output reg  finish;
output reg  memory_controller_enable_a;
output reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] memory_controller_address_a;
output reg  memory_controller_write_enable_a;
output reg [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_in_a;
output reg [1:0] memory_controller_size_a;
input [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_out_a;
output reg  memory_controller_enable_b;
output reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] memory_controller_address_b;
output reg  memory_controller_write_enable_b;
output reg [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_in_b;
output reg [1:0] memory_controller_size_b;
input [`MEMORY_CONTROLLER_DATA_SIZE-1:0] memory_controller_out_b;
input  memory_controller_waitrequest;
output reg [31:0] return_val;
reg  cur_state;
wire  g_223_address_a;
wire  g_223_write_enable_a;
wire [63:0] g_223_in_a;
wire [63:0] g_223_out_a;
wire  g_223_address_b;
wire  g_223_write_enable_b;
wire [63:0] g_223_in_b;
wire [63:0] g_223_out_b;
wire [15:0] legup_pthreadpoll_threadID;

// Local Rams


always @(posedge clk) begin
if (((cur_state == LEGUP_0) & (memory_controller_waitrequest == 1'd1)))
begin
cur_state <= LEGUP_0;
if (reset == 1'b0 && ^(LEGUP_0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if ((((cur_state == LEGUP_0) & (memory_controller_waitrequest == 1'd0)) & (start == 1'd1)))
begin
cur_state <= LEGUP_F_main_BB_0_1;
if (reset == 1'b0 && ^(LEGUP_F_main_BB_0_1) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if ((((cur_state == LEGUP_0) & (memory_controller_waitrequest == 1'd0)) & (start == 1'd0)))
begin
cur_state <= LEGUP_0;
if (reset == 1'b0 && ^(LEGUP_0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if (((cur_state == LEGUP_F_main_BB_0_1) & (memory_controller_waitrequest == 1'd1)))
begin
cur_state <= LEGUP_F_main_BB_0_1;
if (reset == 1'b0 && ^(LEGUP_F_main_BB_0_1) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if (((cur_state == LEGUP_F_main_BB_0_1) & (memory_controller_waitrequest == 1'd0)))
begin
cur_state <= LEGUP_0;
if (reset == 1'b0 && ^(LEGUP_0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
if ((reset == 1'd1))
begin
cur_state <= 1'd0;
if (reset == 1'b0 && ^(1'd0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to cur_state"); $finish; end
end
end
always @(posedge clk) begin
if ((cur_state == LEGUP_0))
begin
finish <= 1'd0;
if (reset == 1'b0 && ^(1'd0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to finish"); $finish; end
end
/* main: %0*/
/*   ret i32 0*/
if ((cur_state == LEGUP_F_main_BB_0_1))
begin
finish <= (memory_controller_waitrequest == 1'd0);
if (reset == 1'b0 && ^((memory_controller_waitrequest == 1'd0)) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to finish"); $finish; end
end
end
always @(*) begin
memory_controller_enable_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_enable_a = 1'd0;
end
end
always @(*) begin
memory_controller_address_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_address_a = 1'd0;
end
end
always @(*) begin
memory_controller_write_enable_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_write_enable_a = 1'd0;
end
end
always @(*) begin
memory_controller_in_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_in_a = 1'd0;
end
end
always @(*) begin
memory_controller_size_a = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_size_a = 1'd0;
end
end
always @(*) begin
memory_controller_enable_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_enable_b = 1'd0;
end
end
always @(*) begin
memory_controller_address_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_address_b = 1'd0;
end
end
always @(*) begin
memory_controller_write_enable_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_write_enable_b = 1'd0;
end
end
always @(*) begin
memory_controller_in_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_in_b = 1'd0;
end
end
always @(*) begin
memory_controller_size_b = 1'd0;
if ((cur_state == LEGUP_0))
begin
memory_controller_size_b = 1'd0;
end
end
always @(posedge clk) begin
if ((cur_state == LEGUP_0))
begin
return_val <= 0;
if (reset == 1'b0 && ^(0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to return_val"); $finish; end
end
/* main: %0*/
/*   ret i32 0*/
if ((cur_state == LEGUP_F_main_BB_0_1))
begin
return_val <= 32'd0;
if (reset == 1'b0 && ^(32'd0) === 1'bX) begin $display ("ERROR: Right hand side is 'X'. Assigned to return_val"); $finish; end
end
end

endmodule 
`timescale 1 ns / 1 ns
module ram_dual_port
(
	clk,
	address_a,
	address_b,
	q_a,
	q_b,
	wren_a,
	wren_b,
	data_a,
	data_b,
	byteena_a,
	byteena_b
);

parameter  width_a = 1'd0;
parameter  width_b = 1'd0;
parameter  widthad_a = 1'd0;
parameter  widthad_b = 1'd0;
parameter  numwords_a = 1'd0;
parameter  numwords_b = 1'd0;
parameter  latency = 1'd1;
parameter  init_file = "UNUSED";
parameter  width_be_a = 1'd0;
parameter  width_be_b = 1'd0;

input  clk;
input [(widthad_a-1):0] address_a;
input [(widthad_b-1):0] address_b;
output [(width_a-1):0] q_a;
output [(width_b-1):0] q_b;
input  wren_a;
input  wren_b;
input [(width_a-1):0] data_a;
input [(width_b-1):0] data_b;
input [width_be_a-1:0] byteena_a;
input [width_be_b-1:0] byteena_b;
wire [(width_a-1):0] q_a_wire;
wire [(width_b-1):0] q_b_wire;
reg  clk_wire;


altsyncram altsyncram_component (
	.clock0 (clk_wire),
	.clock1 (1'd1),
	.clocken0 (1'd1),
	.clocken1 (1'd1),
	.clocken2 (1'd1),
	.clocken3 (1'd1),
	.aclr0 (1'd0),
	.aclr1 (1'd0),
	.addressstall_a (1'd0),
	.addressstall_b (1'd0),
	.eccstatus (),
	.address_a (address_a),
	.address_b (address_b),
	.rden_a (1'd1),
	.rden_b (1'd1),
	.q_a (q_a_wire),
	.q_b (q_b_wire),
	.byteena_a (byteena_a),
	.byteena_b (byteena_b),
	.wren_a (wren_a),
	.wren_b (wren_b),
	.data_a (data_a),
	.data_b (data_b)
);

defparam
	altsyncram_component.width_byteena_a = width_be_a,
	altsyncram_component.width_byteena_b = width_be_b,
	altsyncram_component.operation_mode = "BIDIR_DUAL_PORT",
	altsyncram_component.read_during_write_mode_mixed_ports = "OLD_DATA",
	altsyncram_component.init_file = init_file,
	altsyncram_component.lpm_hint = "ENABLE_RUNTIME_MOD=NO",
	altsyncram_component.lpm_type = "altsyncram",
	altsyncram_component.power_up_uninitialized = "FALSE",
	altsyncram_component.intended_device_family = "Cyclone II",
	altsyncram_component.clock_enable_input_a = "BYPASS",
	altsyncram_component.clock_enable_input_b = "BYPASS",
	altsyncram_component.clock_enable_output_a = "BYPASS",
	altsyncram_component.clock_enable_output_b = "BYPASS",
	altsyncram_component.outdata_aclr_a = "NONE",
	altsyncram_component.outdata_aclr_b = "NONE",
	altsyncram_component.outdata_reg_a = "UNREGISTERED",
	altsyncram_component.outdata_reg_b = "UNREGISTERED",
	altsyncram_component.numwords_a = numwords_a,
	altsyncram_component.numwords_b = numwords_b,
	altsyncram_component.widthad_a = widthad_a,
	altsyncram_component.widthad_b = widthad_b,
	altsyncram_component.width_a = width_a,
	altsyncram_component.width_b = width_b,
	altsyncram_component.address_reg_b = "CLOCK0",
	altsyncram_component.byteena_reg_b = "CLOCK0",
	altsyncram_component.indata_reg_b = "CLOCK0",
	altsyncram_component.wrcontrol_wraddress_reg_b = "CLOCK0";

// Local Rams


always @(*) begin
clk_wire = clk;
end


integer j;
reg [(width_a-1):0] q_a_reg[latency:1], q_b_reg[latency:1];

always @(*)
begin
   q_a_reg[1] <= q_a_wire;
   q_b_reg[1] <= q_b_wire;
end

always @(posedge clk)
begin
   for (j = 1; j < latency; j=j+1)
   begin
       q_a_reg[j+1] <= q_a_reg[j];
       q_b_reg[j+1] <= q_b_reg[j];
   end
end

assign q_a = q_a_reg[latency];
assign q_b = q_b_reg[latency];

endmodule 
`timescale 1 ns / 1 ns
module rom_dual_port
(
	clk,
	address_a,
	address_b,
	q_a,
	q_b
);

parameter  width_a = 1'd0;
parameter  width_b = 1'd0;
parameter  widthad_a = 1'd0;
parameter  widthad_b = 1'd0;
parameter  numwords_a = 1'd0;
parameter  numwords_b = 1'd0;
parameter  latency = 1'd1;
parameter  init_file = "UNUSED";

input  clk;
input [(widthad_a-1):0] address_a;
input [(widthad_b-1):0] address_b;
output [(width_a-1):0] q_a;
output [(width_b-1):0] q_b;
wire [(width_a-1):0] q_a_wire;
wire [(width_b-1):0] q_b_wire;
reg  clk_wire;


altsyncram altsyncram_component (
	.clock0 (clk_wire),
	.clock1 (1'd1),
	.clocken0 (1'd1),
	.clocken1 (1'd1),
	.clocken2 (1'd1),
	.clocken3 (1'd1),
	.aclr0 (1'd0),
	.aclr1 (1'd0),
	.addressstall_a (1'd0),
	.addressstall_b (1'd0),
	.eccstatus (),
	.address_a (address_a),
	.address_b (address_b),
	.rden_a (1'd1),
	.rden_b (1'd1),
	.q_a (q_a_wire),
	.q_b (q_b_wire),
	.byteena_a (),
	.byteena_b (),
	.wren_a (1'd0),
	.wren_b (1'd0),
	.data_a (),
	.data_b ()
);

defparam
	altsyncram_component.operation_mode = "BIDIR_DUAL_PORT",
	altsyncram_component.read_during_write_mode_mixed_ports = "OLD_DATA",
	altsyncram_component.init_file = init_file,
	altsyncram_component.lpm_hint = "ENABLE_RUNTIME_MOD=NO",
	altsyncram_component.lpm_type = "altsyncram",
	altsyncram_component.power_up_uninitialized = "FALSE",
	altsyncram_component.intended_device_family = "Cyclone II",
	altsyncram_component.clock_enable_input_a = "BYPASS",
	altsyncram_component.clock_enable_input_b = "BYPASS",
	altsyncram_component.clock_enable_output_a = "BYPASS",
	altsyncram_component.clock_enable_output_b = "BYPASS",
	altsyncram_component.outdata_aclr_a = "NONE",
	altsyncram_component.outdata_aclr_b = "NONE",
	altsyncram_component.outdata_reg_a = "UNREGISTERED",
	altsyncram_component.outdata_reg_b = "UNREGISTERED",
	altsyncram_component.numwords_a = numwords_a,
	altsyncram_component.numwords_b = numwords_b,
	altsyncram_component.widthad_a = widthad_a,
	altsyncram_component.widthad_b = widthad_b,
	altsyncram_component.width_a = width_a,
	altsyncram_component.width_b = width_b,
	altsyncram_component.address_reg_b = "CLOCK0",
	altsyncram_component.byteena_reg_b = "CLOCK0",
	altsyncram_component.indata_reg_b = "CLOCK0",
	altsyncram_component.wrcontrol_wraddress_reg_b = "CLOCK0";

// Local Rams


always @(*) begin
clk_wire = clk;
end


integer j;
reg [(width_a-1):0] q_a_reg[latency:1], q_b_reg[latency:1];

always @(*)
begin
   q_a_reg[1] <= q_a_wire;
   q_b_reg[1] <= q_b_wire;
end

always @(posedge clk)
begin
   for (j = 1; j < latency; j=j+1)
   begin
       q_a_reg[j+1] <= q_a_reg[j];
       q_b_reg[j+1] <= q_b_reg[j];
   end
end

assign q_a = q_a_reg[latency];
assign q_b = q_b_reg[latency];

endmodule 
module de2 (CLOCK_50, KEY, SW, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7, LEDG);
    input CLOCK_50;
    output [7:0] LEDG;
    input [3:0] KEY;
    input [17:0] SW;
    output [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7;

    wire clk = CLOCK_50;
    wire reset = ~KEY[0];
    wire go = ~KEY[1];

    wire  start;
    wire [31:0] return_val;
    wire  finish;

    reg [31:0] return_val_reg;
    
	reg [3:0] hex0, hex1, hex2, hex3, hex4, hex5, hex6, hex7;
	always @ (*) begin
		hex7 <= return_val_reg[31:28];
		hex6 <= return_val_reg[27:24];
		hex5 <= return_val_reg[23:20];
		hex4 <= return_val_reg[19:16];
		hex3 <= return_val_reg[15:12];
		hex2 <= return_val_reg[11:8];
		hex1 <= return_val_reg[7:4];
		hex0 <= return_val_reg[3:0];
	end

    hex_digits h7( .x(hex7), .hex_LEDs(HEX7));
    hex_digits h6( .x(hex6), .hex_LEDs(HEX6));
    hex_digits h5( .x(hex5), .hex_LEDs(HEX5));
    hex_digits h4( .x(hex4), .hex_LEDs(HEX4));
    hex_digits h3( .x(hex3), .hex_LEDs(HEX3));
    hex_digits h2( .x(hex2), .hex_LEDs(HEX2));
    hex_digits h1( .x(hex1), .hex_LEDs(HEX1));
    hex_digits h0( .x(hex0), .hex_LEDs(HEX0));


    top top_inst (
        .clk (clk),
        .reset (reset),
        .start (start),
        .finish (finish),
        .return_val (return_val)
    );

    parameter s_WAIT = 3'b001, s_START = 3'b010, s_EXE = 3'b011,
                s_DONE = 3'b100;

    // state registers
    reg [3:0] y_Q, Y_D;

    assign LEDG[3:0] = y_Q;

    // next state
    always @(*)
    begin
        case (y_Q)
            s_WAIT: if (go) Y_D = s_START; else Y_D = y_Q;

            s_START: Y_D = s_EXE;

            s_EXE: if (!finish) Y_D = s_EXE; else Y_D = s_DONE;

            s_DONE: Y_D = s_DONE;

            default: Y_D = 3'bxxx;
        endcase
    end

    // current state
    always @(posedge clk)
    begin
        if (reset) // synchronous clear
            y_Q <= s_WAIT;
        else
            y_Q <= Y_D;
    end

    always @(posedge clk)
        if (y_Q == s_EXE && finish)
            return_val_reg <= return_val;
        else if (y_Q == s_DONE)
            return_val_reg <= return_val_reg;
        else
            return_val_reg <= 0;


    assign start = (y_Q == s_START);
endmodule

module de4 (
	OSC_50_BANK2,
    BUTTON,
    LED,
	SEG0_D,
	SEG1_D
);
    input OSC_50_BANK2;
    input [1:0] BUTTON;
    output [6:0] SEG0_D;
    output [6:0] SEG1_D;
    output [7:0] LED;

    de2 de2_inst (
        .CLOCK_50 (OSC_50_BANK2),
        .LEDG (LED),
        .KEY (BUTTON),
        .SW (),
        .HEX0 (SEG0_D),
        .HEX1 (SEG1_D),
        .HEX2 (),
        .HEX3 (),
        .HEX4 (),
        .HEX5 (),
        .HEX6 (),
        .HEX7 ()
    );

endmodule
module hex_digits(x, hex_LEDs);
    input [3:0] x;
    output [6:0] hex_LEDs;
    
    assign hex_LEDs[0] = (~x[3] & ~x[2] & ~x[1] & x[0]) |
                            (~x[3] & x[2] & ~x[1] & ~x[0]) |
                            (x[3] & x[2] & ~x[1] & x[0]) |
                            (x[3] & ~x[2] & x[1] & x[0]);
    assign hex_LEDs[1] = (~x[3] & x[2] & ~x[1] & x[0]) |
                            (x[3] & x[1] & x[0]) |
                            (x[3] & x[2] & ~x[0]) |
                            (x[2] & x[1] & ~x[0]);
    assign hex_LEDs[2] = (x[3] & x[2] & ~x[0]) |
                            (x[3] & x[2] & x[1]) |
                            (~x[3] & ~x[2] & x[1] & ~x[0]);
    assign hex_LEDs[3] = (~x[3] & ~x[2] & ~x[1] & x[0]) | 
                            (~x[3] & x[2] & ~x[1] & ~x[0]) | 
                            (x[2] & x[1] & x[0]) | 
                            (x[3] & ~x[2] & x[1] & ~x[0]);
    assign hex_LEDs[4] = (~x[3] & x[0]) |
                            (~x[3] & x[2] & ~x[1]) |
                            (~x[2] & ~x[1] & x[0]);
    assign hex_LEDs[5] = (~x[3] & ~x[2] & x[0]) | 
                            (~x[3] & ~x[2] & x[1]) | 
                            (~x[3] & x[1] & x[0]) | 
                            (x[3] & x[2] & ~x[1] & x[0]);
    assign hex_LEDs[6] = (~x[3] & ~x[2] & ~x[1]) | 
                            (x[3] & x[2] & ~x[1] & ~x[0]) | 
                            (~x[3] & x[2] & x[1] & x[0]);
    
endmodule
`timescale 1 ns / 1 ns
module main_tb
(
);

reg  clk;
reg  reset;
reg  start;
wire [31:0] return_val;
wire  finish;


top top_inst (
	.clk (clk),
	.reset (reset),
	.start (start),
	.finish (finish),
	.return_val (return_val)
);


// Local Rams



initial 
    clk = 0;
always @(clk)
    clk <= #10 ~clk;

initial begin
//$monitor("At t=%t clk=%b %b %b %b %d", $time, clk, reset, start, finish, return_val);
@(negedge clk);
reset <= 1;
@(negedge clk);
reset <= 0;
start <= 1;

end

always@(finish) begin
    if (finish == 1) begin
        $display("At t=%t clk=%b finish=%b return_val=%d", $time, clk, finish, return_val);
        $display("Cycles: %d", ($time-50)/20);
        $finish;
    end
end

endmodule 
