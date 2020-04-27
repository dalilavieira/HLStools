// ----------------------------------------------------------------------------
// LegUp High-Level Synthesis Tool Version 7.5 (http://legupcomputing.com)
// Copyright (c) 2015-2019 LegUp Computing Inc. All Rights Reserved.
// For technical issues, please contact: support@legupcomputing.com
// For general inquiries, please contact: info@legupcomputing.com
// Date: Mon Apr 27 08:06:40 2020
// ----------------------------------------------------------------------------
`define MEMORY_CONTROLLER_ADDR_SIZE 32
// This directory contains the memory initialization files generated by LegUp.
// This relative path is used by ModelSim and FPGA synthesis tool.
`define MEM_INIT_DIR "../mem_init/"

`timescale 1 ns / 1 ns
module top
(
	clk,
	reset,
	start,
	finish,
	return_val
);

input  clk;
input  reset;
input  start;
output reg  finish;
output reg [31:0] return_val;
reg  main_inst_clk;
reg  main_inst_reset;
reg  main_inst_start;
wire  main_inst_finish;
wire [31:0] main_inst_return_val;
reg  main_inst_finish_reg;
reg [31:0] main_inst_return_val_reg;


main main_inst (
	.clk (main_inst_clk),
	.reset (main_inst_reset),
	.start (main_inst_start),
	.finish (main_inst_finish),
	.return_val (main_inst_return_val)
);



always @(*) begin
	main_inst_clk = clk;
end
always @(*) begin
	main_inst_reset = reset;
end
always @(*) begin
	main_inst_start = start;
end
always @(posedge clk) begin
	if ((reset | main_inst_start)) begin
		main_inst_finish_reg <= 1'd0;
	end
	if (main_inst_finish) begin
		main_inst_finish_reg <= 1'd1;
	end
end
always @(posedge clk) begin
	if ((reset | main_inst_start)) begin
		main_inst_return_val_reg <= 0;
	end
	if (main_inst_finish) begin
		main_inst_return_val_reg <= main_inst_return_val;
	end
end
always @(*) begin
	finish = main_inst_finish;
end
always @(*) begin
	return_val = main_inst_return_val;
end

endmodule
`timescale 1 ns / 1 ns
module main
(
	clk,
	reset,
	start,
	finish,
	return_val
);

parameter [3:0] LEGUP_0 = 4'd0;
parameter [3:0] LEGUP_F_main_BB_entry_1 = 4'd1;
parameter [3:0] LEGUP_F_main_BB_for_body_i_2 = 4'd2;
parameter [3:0] LEGUP_F_main_BB_for_body_i_3 = 4'd3;
parameter [3:0] LEGUP_F_main_BB_for_cond6_preheader_i_preheader_4 = 4'd4;
parameter [3:0] LEGUP_F_main_BB_for_cond6_preheader_i_5 = 4'd5;
parameter [3:0] LEGUP_F_main_BB_for_body9_i_6 = 4'd6;
parameter [3:0] LEGUP_F_main_BB_for_body9_i_7 = 4'd7;
parameter [3:0] LEGUP_F_main_BB_for_body9_i_8 = 4'd8;
parameter [3:0] LEGUP_F_main_BB_for_inc15_i_9 = 4'd9;
parameter [3:0] LEGUP_F_main_BB_loopback_exit_10 = 4'd10;
parameter [3:0] LEGUP_F_main_BB_loopback_exit_11 = 4'd11;

input  clk;
input  reset;
input  start;
output reg  finish;
output reg [31:0] return_val;
reg [3:0] cur_state/* synthesis syn_encoding="onehot" */;
reg [3:0] next_state;
wire  fsm_stall;
reg [10:0] main_for_body_i_k_031_i;
reg [10:0] main_for_body_i_k_031_i_reg;
reg [15:0] main_for_body_i_bit_select;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body_i_arrayidx_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body_i_arrayidx1_i;
reg [11:0] main_for_body_i_0;
reg [11:0] main_for_body_i_0_reg;
reg  main_for_body_i_exitcond5;
reg  main_for_body_i_exitcond5_reg;
reg [6:0] main_for_cond6_preheader_i_i_030_i;
reg [6:0] main_for_cond6_preheader_i_i_030_i_reg;
reg [31:0] main_for_body9_i_k_129_i;
reg [31:0] main_for_body9_i_k_129_i_reg;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body9_i_arrayidx10_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body9_i_arrayidx11_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body9_i_arrayidx11_i_reg;
reg [15:0] main_for_body9_i_1;
reg [31:0] main_for_body9_i_2;
reg [31:0] main_for_body9_i_2_reg;
reg  main_for_body9_i_exitcond3;
reg  main_for_body9_i_exitcond3_reg;
reg [7:0] main_for_inc15_i_3;
reg  main_for_inc15_i_exitcond4;
wire [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_loopback_exit_arrayidx18_i;
reg [15:0] main_loopback_exit_4;
reg [31:0] main_loopback_exit_bit_concat;
reg [9:0] main_entry_a_i_address_a;
reg  main_entry_a_i_write_enable_a;
reg [15:0] main_entry_a_i_in_a;
wire [15:0] main_entry_a_i_out_a;
reg [9:0] main_entry_out_i_address_a;
reg  main_entry_out_i_write_enable_a;
reg [15:0] main_entry_out_i_in_a;
wire [15:0] main_entry_out_i_out_a;
reg [15:0] main_for_body_i_k_031_i_reg_width_extended;
wire [15:0] main_loopback_exit_bit_concat_bit_select_operand_0;



//   %a.i = alloca [1024 x i16], align 2, !dbg !29, !MSB !30, !LSB !31, !extendFrom !30
ram_single_port main_entry_a_i (
	.clk( clk ),
	.clken( !fsm_stall ),
	.address_a( main_entry_a_i_address_a ),
	.wren_a( main_entry_a_i_write_enable_a ),
	.data_a( main_entry_a_i_in_a ),
	.byteena_a( {2{1'b1}} ),
	.q_a( main_entry_a_i_out_a )
);
defparam main_entry_a_i.width_a = 16;
defparam main_entry_a_i.widthad_a = 10;
defparam main_entry_a_i.width_be_a = 2;
defparam main_entry_a_i.numwords_a = 1024;
defparam main_entry_a_i.latency = 1;


//   %out.i = alloca [1024 x i16], align 2, !dbg !29, !MSB !30, !LSB !31, !extendFrom !30
ram_single_port main_entry_out_i (
	.clk( clk ),
	.clken( !fsm_stall ),
	.address_a( main_entry_out_i_address_a ),
	.wren_a( main_entry_out_i_write_enable_a ),
	.data_a( main_entry_out_i_in_a ),
	.byteena_a( {2{1'b1}} ),
	.q_a( main_entry_out_i_out_a )
);
defparam main_entry_out_i.width_a = 16;
defparam main_entry_out_i.widthad_a = 10;
defparam main_entry_out_i.width_be_a = 2;
defparam main_entry_out_i.numwords_a = 1024;
defparam main_entry_out_i.latency = 1;

/* Unsynthesizable Statements */
/* synthesis translate_off */
always @(posedge clk)
	if (!fsm_stall) begin
	if ((cur_state == LEGUP_F_main_BB_loopback_exit_11)) begin
		$write("%d\n", $signed(main_loopback_exit_bit_concat));
	end
end
/* synthesis translate_on */
always @(posedge clk) begin
if (reset == 1'b1)
	cur_state <= LEGUP_0;
else if (!fsm_stall)
	cur_state <= next_state;
end

always @(*)
begin
next_state = cur_state;
case(cur_state)  /* synthesis parallel_case */
LEGUP_0:
	if ((fsm_stall == 1'd0) && (start == 1'd1))
		next_state = LEGUP_F_main_BB_entry_1;
LEGUP_F_main_BB_entry_1:
		next_state = LEGUP_F_main_BB_for_body_i_2;
LEGUP_F_main_BB_for_body9_i_6:
		next_state = LEGUP_F_main_BB_for_body9_i_7;
LEGUP_F_main_BB_for_body9_i_7:
		next_state = LEGUP_F_main_BB_for_body9_i_8;
LEGUP_F_main_BB_for_body9_i_8:
	if ((fsm_stall == 1'd0) && (main_for_body9_i_exitcond3_reg == 1'd1))
		next_state = LEGUP_F_main_BB_for_inc15_i_9;
	else if ((fsm_stall == 1'd0) && (main_for_body9_i_exitcond3_reg == 1'd0))
		next_state = LEGUP_F_main_BB_for_body9_i_6;
LEGUP_F_main_BB_for_body_i_2:
		next_state = LEGUP_F_main_BB_for_body_i_3;
LEGUP_F_main_BB_for_body_i_3:
	if ((fsm_stall == 1'd0) && (main_for_body_i_exitcond5_reg == 1'd1))
		next_state = LEGUP_F_main_BB_for_cond6_preheader_i_preheader_4;
	else if ((fsm_stall == 1'd0) && (main_for_body_i_exitcond5_reg == 1'd0))
		next_state = LEGUP_F_main_BB_for_body_i_2;
LEGUP_F_main_BB_for_cond6_preheader_i_5:
		next_state = LEGUP_F_main_BB_for_body9_i_6;
LEGUP_F_main_BB_for_cond6_preheader_i_preheader_4:
		next_state = LEGUP_F_main_BB_for_cond6_preheader_i_5;
LEGUP_F_main_BB_for_inc15_i_9:
	if ((fsm_stall == 1'd0) && (main_for_inc15_i_exitcond4 == 1'd1))
		next_state = LEGUP_F_main_BB_loopback_exit_10;
	else if ((fsm_stall == 1'd0) && (main_for_inc15_i_exitcond4 == 1'd0))
		next_state = LEGUP_F_main_BB_for_cond6_preheader_i_5;
LEGUP_F_main_BB_loopback_exit_10:
		next_state = LEGUP_F_main_BB_loopback_exit_11;
LEGUP_F_main_BB_loopback_exit_11:
		next_state = LEGUP_0;
default:
	next_state = cur_state;
endcase

end
assign fsm_stall = 1'd0;
always @(*) begin
	if (((cur_state == LEGUP_F_main_BB_entry_1) & (fsm_stall == 1'd0))) begin
		main_for_body_i_k_031_i = 32'd0;
	end
	else /* if ((((cur_state == LEGUP_F_main_BB_for_body_i_3) & (fsm_stall == 1'd0)) & (main_for_body_i_exitcond5_reg == 1'd0))) */ begin
		main_for_body_i_k_031_i = main_for_body_i_0_reg;
	end
end
always @(posedge clk) begin
	if (((cur_state == LEGUP_F_main_BB_entry_1) & (fsm_stall == 1'd0))) begin
		main_for_body_i_k_031_i_reg <= main_for_body_i_k_031_i;
	end
	if ((((cur_state == LEGUP_F_main_BB_for_body_i_3) & (fsm_stall == 1'd0)) & (main_for_body_i_exitcond5_reg == 1'd0))) begin
		main_for_body_i_k_031_i_reg <= main_for_body_i_k_031_i;
	end
end
always @(*) begin
		main_for_body_i_bit_select = main_for_body_i_k_031_i_reg_width_extended[15:0];
end
always @(*) begin
		main_for_body_i_arrayidx_i = (1'd0 + (2 * {21'd0,main_for_body_i_k_031_i_reg}));
end
always @(*) begin
		main_for_body_i_arrayidx1_i = (1'd0 + (2 * {21'd0,main_for_body_i_k_031_i_reg}));
end
always @(*) begin
		main_for_body_i_0 = ({1'd0,main_for_body_i_k_031_i_reg} + 32'd1);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_for_body_i_0_reg <= main_for_body_i_0;
	end
end
always @(*) begin
		main_for_body_i_exitcond5 = (main_for_body_i_0 == 32'd1024);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_for_body_i_exitcond5_reg <= main_for_body_i_exitcond5;
	end
end
always @(*) begin
	if (((cur_state == LEGUP_F_main_BB_for_cond6_preheader_i_preheader_4) & (fsm_stall == 1'd0))) begin
		main_for_cond6_preheader_i_i_030_i = 32'd0;
	end
	else /* if ((((cur_state == LEGUP_F_main_BB_for_inc15_i_9) & (fsm_stall == 1'd0)) & (main_for_inc15_i_exitcond4 == 1'd0))) */ begin
		main_for_cond6_preheader_i_i_030_i = main_for_inc15_i_3;
	end
end
always @(posedge clk) begin
	if (((cur_state == LEGUP_F_main_BB_for_cond6_preheader_i_preheader_4) & (fsm_stall == 1'd0))) begin
		main_for_cond6_preheader_i_i_030_i_reg <= main_for_cond6_preheader_i_i_030_i;
	end
	if ((((cur_state == LEGUP_F_main_BB_for_inc15_i_9) & (fsm_stall == 1'd0)) & (main_for_inc15_i_exitcond4 == 1'd0))) begin
		main_for_cond6_preheader_i_i_030_i_reg <= main_for_cond6_preheader_i_i_030_i;
	end
end
always @(*) begin
	if (((cur_state == LEGUP_F_main_BB_for_cond6_preheader_i_5) & (fsm_stall == 1'd0))) begin
		main_for_body9_i_k_129_i = 32'd0;
	end
	else /* if ((((cur_state == LEGUP_F_main_BB_for_body9_i_8) & (fsm_stall == 1'd0)) & (main_for_body9_i_exitcond3_reg == 1'd0))) */ begin
		main_for_body9_i_k_129_i = main_for_body9_i_2_reg;
	end
end
always @(posedge clk) begin
	if (((cur_state == LEGUP_F_main_BB_for_cond6_preheader_i_5) & (fsm_stall == 1'd0))) begin
		main_for_body9_i_k_129_i_reg <= main_for_body9_i_k_129_i;
	end
	if ((((cur_state == LEGUP_F_main_BB_for_body9_i_8) & (fsm_stall == 1'd0)) & (main_for_body9_i_exitcond3_reg == 1'd0))) begin
		main_for_body9_i_k_129_i_reg <= main_for_body9_i_k_129_i;
	end
end
always @(*) begin
		main_for_body9_i_arrayidx10_i = (1'd0 + (2 * main_for_body9_i_k_129_i_reg));
end
always @(*) begin
		main_for_body9_i_arrayidx11_i = (1'd0 + (2 * main_for_body9_i_k_129_i_reg));
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body9_i_6)) begin
		main_for_body9_i_arrayidx11_i_reg <= main_for_body9_i_arrayidx11_i;
	end
end
always @(*) begin
		main_for_body9_i_1 = main_entry_a_i_out_a;
end
always @(*) begin
		main_for_body9_i_2 = (main_for_body9_i_k_129_i_reg + 32'd1);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body9_i_6)) begin
		main_for_body9_i_2_reg <= main_for_body9_i_2;
	end
end
always @(*) begin
		main_for_body9_i_exitcond3 = (main_for_body9_i_2 == 32'd1024);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body9_i_6)) begin
		main_for_body9_i_exitcond3_reg <= main_for_body9_i_exitcond3;
	end
end
always @(*) begin
		main_for_inc15_i_3 = ({1'd0,main_for_cond6_preheader_i_i_030_i_reg} + 32'd1);
end
always @(*) begin
		main_for_inc15_i_exitcond4 = (main_for_inc15_i_3 == 32'd100);
end
assign main_loopback_exit_arrayidx18_i = (1'd0 + (2 * 32'd50));
always @(*) begin
		main_loopback_exit_4 = main_entry_out_i_out_a;
end
always @(*) begin
		main_loopback_exit_bit_concat = {main_loopback_exit_bit_concat_bit_select_operand_0[15:0], main_loopback_exit_4[15:0]};
end
always @(*) begin
	main_entry_a_i_address_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_a_i_address_a = (main_for_body_i_arrayidx_i >>> 3'd1);
	end
	if ((cur_state == LEGUP_F_main_BB_for_body9_i_6)) begin
		main_entry_a_i_address_a = (main_for_body9_i_arrayidx10_i >>> 3'd1);
	end
end
always @(*) begin
	main_entry_a_i_write_enable_a = 'd0;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_a_i_write_enable_a = 1'd1;
	end
end
always @(*) begin
	main_entry_a_i_in_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_a_i_in_a = main_for_body_i_bit_select;
	end
end
always @(*) begin
	main_entry_out_i_address_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_out_i_address_a = (main_for_body_i_arrayidx1_i >>> 3'd1);
	end
	if ((cur_state == LEGUP_F_main_BB_for_body9_i_7)) begin
		main_entry_out_i_address_a = (main_for_body9_i_arrayidx11_i_reg >>> 3'd1);
	end
	if ((cur_state == LEGUP_F_main_BB_loopback_exit_10)) begin
		main_entry_out_i_address_a = (main_loopback_exit_arrayidx18_i >>> 3'd1);
	end
end
always @(*) begin
	main_entry_out_i_write_enable_a = 'd0;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_out_i_write_enable_a = 1'd1;
	end
	if ((cur_state == LEGUP_F_main_BB_for_body9_i_7)) begin
		main_entry_out_i_write_enable_a = 1'd1;
	end
end
always @(*) begin
	main_entry_out_i_in_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_out_i_in_a = 16'd0;
	end
	if ((cur_state == LEGUP_F_main_BB_for_body9_i_7)) begin
		main_entry_out_i_in_a = main_for_body9_i_1;
	end
end
always @(*) begin
	main_for_body_i_k_031_i_reg_width_extended = {5'd0,main_for_body_i_k_031_i_reg};
end
assign main_loopback_exit_bit_concat_bit_select_operand_0 = 16'd0;
always @(posedge clk) begin
	if ((cur_state == LEGUP_0)) begin
		finish <= 1'd0;
	end
	if ((cur_state == LEGUP_F_main_BB_loopback_exit_11)) begin
		finish <= (fsm_stall == 1'd0);
	end
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_0)) begin
		return_val <= 0;
	end
	if ((cur_state == LEGUP_F_main_BB_loopback_exit_11)) begin
		return_val <= 32'd0;
	end
end

endmodule
module ram_dual_port
(
	clk,
	clken,
	address_a,
	wren_a,
	data_a,
	byteena_a,
	q_a,
	address_b,
	wren_b,
	data_b,
	byteena_b,
	q_b
);

parameter  width_a = 1'd0;
parameter  widthad_a = 1'd0;
parameter  numwords_a = 1'd0;
parameter  width_be_a = 1'd0;
parameter  width_b = 1'd0;
parameter  widthad_b = 1'd0;
parameter  numwords_b = 1'd0;
parameter  width_be_b = 1'd0;
parameter  init_file_mem = {`MEM_INIT_DIR, "UNUSED.mem"};
parameter  latency = 1;

input  clk;
input  clken;
input [(widthad_a-1):0] address_a;
output wire [(width_a-1):0] q_a;
reg [(width_a-1):0] q_a_wire;
input  wren_a;
input [(width_a-1):0] data_a;
input [width_be_a-1:0] byteena_a;
input [(widthad_b-1):0] address_b;
output wire [(width_b-1):0] q_b;
reg [(width_b-1):0] q_b_wire;
input  wren_b;
input [(width_a-1):0] data_b;
input [width_be_a-1:0] byteena_b;

reg [width_a-1:0] ram [numwords_a-1:0];

initial begin
	if (init_file_mem != {`MEM_INIT_DIR, "UNUSED.mem"})
        $readmemb(init_file_mem, ram);
end

localparam input_latency = ((latency - 1) >> 1);
localparam output_latency = (latency - 1) - input_latency;
integer j;

reg [(widthad_a-1):0] address_a_reg[input_latency:0];
reg  wren_a_reg[input_latency:0];
reg [(width_a-1):0] data_a_reg[input_latency:0];
reg [(width_be_a-1):0] byteena_a_reg[input_latency:0];
reg [(widthad_b-1):0] address_b_reg[input_latency:0];
reg  wren_b_reg[input_latency:0];
reg [(width_b-1):0] data_b_reg[input_latency:0];
reg [(width_be_b-1):0] byteena_b_reg[input_latency:0];

always @(*)
begin
  address_a_reg[0] = address_a;
  wren_a_reg[0] = wren_a;
  data_a_reg[0] = data_a;
  byteena_a_reg[0] = byteena_a;
  address_b_reg[0] = address_b;
  wren_b_reg[0] = wren_b;
  data_b_reg[0] = data_b;
  byteena_b_reg[0] = byteena_b;
end

always @(posedge clk)
if (clken)
begin
   for (j = 0; j < input_latency; j=j+1)
   begin
       address_a_reg[j+1] <= address_a_reg[j];
       wren_a_reg[j+1] <= wren_a_reg[j];
       data_a_reg[j+1] <= data_a_reg[j];
       byteena_a_reg[j+1] <= byteena_a_reg[j];
       address_b_reg[j+1] <= address_b_reg[j];
       wren_b_reg[j+1] <= wren_b_reg[j];
       data_b_reg[j+1] <= data_b_reg[j];
       byteena_b_reg[j+1] <= byteena_b_reg[j];
   end
end

always @ (posedge clk)
begin
    if (clken)
    begin // Port a
        if (wren_a_reg[input_latency])
        begin
            ram[address_a_reg[input_latency]] <= data_a_reg[input_latency];
            q_a_wire <= data_a_reg[input_latency];
        end
        else begin
            q_a_wire <= ram[address_a_reg[input_latency]];
        end
    end
end

always @ (posedge clk)
begin
    if (clken)
    begin // Port b
        if (wren_b_reg[input_latency])
        begin
            ram[address_b_reg[input_latency]] <= data_b_reg[input_latency];
            q_b_wire <= data_b_reg[input_latency];
        end
        else begin
            q_b_wire <= ram[address_b_reg[input_latency]];
        end
    end
end


reg [(width_a-1):0] q_a_reg[output_latency:0];

always @(*)
begin
   q_a_reg[0] <= q_a_wire;
end

always @(posedge clk)
if (clken)
begin
   for (j = 0; j < output_latency; j=j+1)
   begin
       q_a_reg[j+1] <= q_a_reg[j];
   end
end

assign q_a = q_a_reg[output_latency];
reg [(width_b-1):0] q_b_reg[output_latency:0];

always @(*)
begin
   q_b_reg[0] <= q_b_wire;
end

always @(posedge clk)
if (clken)
begin
   for (j = 0; j < output_latency; j=j+1)
   begin
       q_b_reg[j+1] <= q_b_reg[j];
   end
end

assign q_b = q_b_reg[output_latency];

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




initial 
    clk = 0;
always @(clk)
    clk <= #10 ~clk;

initial begin
//$monitor("At t=%t clk=%b %b %b %b %d", $time, clk, reset, start, finish, return_val);
reset <= 1;
@(negedge clk);
reset <= 0;
start <= 1;
@(negedge clk);
start <= 0;
end

always@(posedge clk) begin
    if (finish == 1) begin
        $display("At t=%t clk=%b finish=%b return_val=%d", $time, clk, finish, return_val);
        $display("Cycles: %d", ($time-50)/20);
        $finish;
    end
end


endmodule
