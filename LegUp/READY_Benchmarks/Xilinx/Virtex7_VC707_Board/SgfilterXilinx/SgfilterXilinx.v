// ----------------------------------------------------------------------------
// LegUp High-Level Synthesis Tool Version 7.5 (http://legupcomputing.com)
// Copyright (c) 2015-2019 LegUp Computing Inc. All Rights Reserved.
// For technical issues, please contact: support@legupcomputing.com
// For general inquiries, please contact: info@legupcomputing.com
// Date: Mon Apr 27 08:55:02 2020
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
parameter [3:0] LEGUP_F_main_BB_for_cond9_preheader_i_preheader_4 = 4'd4;
parameter [3:0] LEGUP_F_main_BB_for_cond9_preheader_i_5 = 4'd5;
parameter [3:0] LEGUP_F_main_BB_for_body12_i_6 = 4'd6;
parameter [3:0] LEGUP_F_main_BB_for_body12_i_7 = 4'd7;
parameter [3:0] LEGUP_F_main_BB_for_body12_i_8 = 4'd8;
parameter [3:0] LEGUP_F_main_BB_for_body12_i_9 = 4'd9;
parameter [3:0] LEGUP_F_main_BB_for_body12_i_10 = 4'd10;
parameter [3:0] LEGUP_F_main_BB_for_body12_i_11 = 4'd11;
parameter [3:0] LEGUP_F_main_BB_for_body12_i_12 = 4'd12;
parameter [3:0] LEGUP_F_main_BB_for_inc51_i_13 = 4'd13;
parameter [3:0] LEGUP_F_main_BB_sgfilter_exit_14 = 4'd14;
parameter [3:0] LEGUP_F_main_BB_sgfilter_exit_15 = 4'd15;

input  clk;
input  reset;
input  start;
output reg  finish;
output reg [31:0] return_val;
reg [3:0] cur_state/* synthesis syn_encoding="onehot" */;
reg [3:0] next_state;
wire  fsm_stall;
reg [10:0] main_for_body_i_k_077_i;
reg [10:0] main_for_body_i_k_077_i_reg;
reg [15:0] main_for_body_i_bit_select19;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body_i_arrayidx_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body_i_arrayidx3_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body_i_arrayidx4_i;
reg [11:0] main_for_body_i_0;
reg [11:0] main_for_body_i_0_reg;
reg  main_for_body_i_exitcond5;
reg  main_for_body_i_exitcond5_reg;
reg [6:0] main_for_cond9_preheader_i_i_076_i;
reg [6:0] main_for_cond9_preheader_i_i_076_i_reg;
reg [31:0] main_for_body12_i_k_175_i;
reg [31:0] main_for_body12_i_k_175_i_reg;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body12_i_arrayidx13_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body12_i_arrayidx32_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body12_i_arrayidx47_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body12_i_arrayidx47_i_reg;
reg [15:0] main_for_body12_i_1;
reg [15:0] main_for_body12_i_1_reg;
reg [12:0] main_for_body12_i_bit_select15;
reg [10:0] main_for_body12_i_bit_select10;
reg [9:0] main_for_body12_i_bit_select8;
reg [13:0] main_for_body12_i_bit_select4;
reg [11:0] main_for_body12_i_bit_select2;
reg [15:0] main_for_body12_i_sr_negate;
reg [5:0] main_for_body12_i_bit_select17;
reg [13:0] main_for_body12_i_bit_select12;
reg [8:0] main_for_body12_i_bit_select6;
reg [15:0] main_for_body12_i_bit_concat18;
reg [15:0] main_for_body12_i_bit_concat16;
reg [15:0] main_for_body12_i_bit_concat14;
reg [15:0] main_for_body12_i_sr_add7;
reg [15:0] main_for_body12_i_newEarly_sub_i;
reg [15:0] main_for_body12_i_newCurOp_sub_i;
reg [15:0] main_for_body12_i_mul17_i;
reg [15:0] main_for_body12_i_sub18_i;
reg [15:0] main_for_body12_i_mul21_i;
reg [15:0] main_for_body12_i_bit_concat13;
reg [15:0] main_for_body12_i_bit_concat11;
reg [15:0] main_for_body12_i_bit_concat9;
reg [15:0] main_for_body12_i_sr_add10;
reg [15:0] main_for_body12_i_newEarly_sub25_i;
reg [15:0] main_for_body12_i_newCurOp_sub25_i;
reg [15:0] main_for_body12_i_mul28_i;
reg [15:0] main_for_body12_i_bit_concat7;
reg [15:0] main_for_body12_i_bit_concat5;
reg [15:0] main_for_body12_i_bit_concat3;
reg [15:0] main_for_body12_i_sr_add12;
reg [15:0] main_for_body12_i_sr_add18;
reg [15:0] main_for_body12_i_2;
reg [15:0] main_for_body12_i_2_reg;
reg [12:0] main_for_body12_i_bit_select;
reg [15:0] main_for_body12_i_sr_negate13;
reg [15:0] main_for_body12_i_bit_concat1;
reg [15:0] main_for_body12_i_sr_add15;
reg [15:0] main_for_body12_i_newEarly_add_i;
reg [15:0] main_for_body12_i_newEarly_add35_i;
reg [15:0] main_for_body12_i_newCurOp_add35_i;
reg [15:0] main_for_body12_i_mul38_i;
reg [15:0] main_for_body12_i_add39_i;
reg [15:0] main_for_body12_i_add40_i;
reg [15:0] main_for_body12_i_mul43_i;
reg [15:0] main_for_body12_i_add44_i;
reg [15:0] main_for_body12_i_sub45_i;
reg [31:0] main_for_body12_i_3;
reg [31:0] main_for_body12_i_3_reg;
reg  main_for_body12_i_exitcond3;
reg  main_for_body12_i_exitcond3_reg;
reg [7:0] main_for_inc51_i_4;
reg  main_for_inc51_i_exitcond4;
wire [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_sgfilter_exit_arrayidx54_i;
reg [15:0] main_sgfilter_exit_5;
reg [31:0] main_sgfilter_exit_bit_concat;
reg [9:0] main_entry_a_i_address_a;
reg  main_entry_a_i_write_enable_a;
reg [15:0] main_entry_a_i_in_a;
wire [15:0] main_entry_a_i_out_a;
reg [9:0] main_entry_b_i_address_a;
reg  main_entry_b_i_write_enable_a;
reg [15:0] main_entry_b_i_in_a;
wire [15:0] main_entry_b_i_out_a;
reg [9:0] main_entry_OUT_i_address_a;
reg  main_entry_OUT_i_write_enable_a;
reg [15:0] main_entry_OUT_i_in_a;
wire [15:0] main_entry_OUT_i_out_a;
reg [15:0] main_for_body_i_k_077_i_reg_width_extended;
wire [9:0] main_for_body12_i_bit_concat18_bit_select_operand_2;
wire [2:0] main_for_body12_i_bit_concat16_bit_select_operand_2;
wire [4:0] main_for_body12_i_bit_concat14_bit_select_operand_2;
reg [15:0] op0_main_for_body12_i_newCurOp_sub_i_reg;
reg [15:0] op1_main_for_body12_i_1_reg;
reg  legup_mult_main_for_body12_i_mul17_i_en;
reg [15:0] main_for_body12_i_mul17_i_stage0_reg;
wire [1:0] main_for_body12_i_bit_concat13_bit_select_operand_2;
wire [4:0] main_for_body12_i_bit_concat11_bit_select_operand_2;
wire [5:0] main_for_body12_i_bit_concat9_bit_select_operand_2;
reg [15:0] op0_main_for_body12_i_newCurOp_sub25_i_reg;
reg  legup_mult_main_for_body12_i_mul28_i_en;
reg [15:0] main_for_body12_i_mul28_i_stage0_reg;
wire [6:0] main_for_body12_i_bit_concat7_bit_select_operand_2;
wire [1:0] main_for_body12_i_bit_concat5_bit_select_operand_2;
wire [3:0] main_for_body12_i_bit_concat3_bit_select_operand_2;
wire [2:0] main_for_body12_i_bit_concat1_bit_select_operand_2;
reg [15:0] op0_main_for_body12_i_newCurOp_add35_i_reg;
reg [15:0] op1_main_for_body12_i_2_reg;
reg  legup_mult_main_for_body12_i_mul38_i_en;
reg [15:0] main_for_body12_i_mul38_i_stage0_reg;
reg [15:0] op0_main_for_body12_i_sub18_i_reg;
reg [15:0] op1_main_for_body12_i_1_reg_reg;
reg  legup_mult_main_for_body12_i_mul21_i_en;
reg [15:0] main_for_body12_i_mul21_i_stage0_reg;
reg [15:0] op0_main_for_body12_i_add40_i_reg;
reg [15:0] op1_main_for_body12_i_2_reg_reg;
reg  legup_mult_main_for_body12_i_mul43_i_en;
reg [15:0] main_for_body12_i_mul43_i_stage0_reg;
wire [15:0] main_sgfilter_exit_bit_concat_bit_select_operand_0;



//   %a.i = alloca [1024 x i16], align 2, !dbg !30, !MSB !31, !LSB !32, !extendFrom !31
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


//   %b.i = alloca [1024 x i16], align 2, !dbg !30, !MSB !31, !LSB !32, !extendFrom !31
ram_single_port main_entry_b_i (
	.clk( clk ),
	.clken( !fsm_stall ),
	.address_a( main_entry_b_i_address_a ),
	.wren_a( main_entry_b_i_write_enable_a ),
	.data_a( main_entry_b_i_in_a ),
	.byteena_a( {2{1'b1}} ),
	.q_a( main_entry_b_i_out_a )
);
defparam main_entry_b_i.width_a = 16;
defparam main_entry_b_i.widthad_a = 10;
defparam main_entry_b_i.width_be_a = 2;
defparam main_entry_b_i.numwords_a = 1024;
defparam main_entry_b_i.latency = 1;


//   %OUT.i = alloca [1024 x i16], align 2, !dbg !30, !MSB !31, !LSB !32, !extendFrom !31
ram_single_port main_entry_OUT_i (
	.clk( clk ),
	.clken( !fsm_stall ),
	.address_a( main_entry_OUT_i_address_a ),
	.wren_a( main_entry_OUT_i_write_enable_a ),
	.data_a( main_entry_OUT_i_in_a ),
	.byteena_a( {2{1'b1}} ),
	.q_a( main_entry_OUT_i_out_a )
);
defparam main_entry_OUT_i.width_a = 16;
defparam main_entry_OUT_i.widthad_a = 10;
defparam main_entry_OUT_i.width_be_a = 2;
defparam main_entry_OUT_i.numwords_a = 1024;
defparam main_entry_OUT_i.latency = 1;

/* Unsynthesizable Statements */
/* synthesis translate_off */
always @(posedge clk)
	if (!fsm_stall) begin
	if ((cur_state == LEGUP_F_main_BB_sgfilter_exit_15)) begin
		$write("%d\n", $signed(main_sgfilter_exit_bit_concat));
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
LEGUP_F_main_BB_for_body12_i_10:
		next_state = LEGUP_F_main_BB_for_body12_i_11;
LEGUP_F_main_BB_for_body12_i_11:
		next_state = LEGUP_F_main_BB_for_body12_i_12;
LEGUP_F_main_BB_for_body12_i_12:
	if ((fsm_stall == 1'd0) && (main_for_body12_i_exitcond3_reg == 1'd1))
		next_state = LEGUP_F_main_BB_for_inc51_i_13;
	else if ((fsm_stall == 1'd0) && (main_for_body12_i_exitcond3_reg == 1'd0))
		next_state = LEGUP_F_main_BB_for_body12_i_6;
LEGUP_F_main_BB_for_body12_i_6:
		next_state = LEGUP_F_main_BB_for_body12_i_7;
LEGUP_F_main_BB_for_body12_i_7:
		next_state = LEGUP_F_main_BB_for_body12_i_8;
LEGUP_F_main_BB_for_body12_i_8:
		next_state = LEGUP_F_main_BB_for_body12_i_9;
LEGUP_F_main_BB_for_body12_i_9:
		next_state = LEGUP_F_main_BB_for_body12_i_10;
LEGUP_F_main_BB_for_body_i_2:
		next_state = LEGUP_F_main_BB_for_body_i_3;
LEGUP_F_main_BB_for_body_i_3:
	if ((fsm_stall == 1'd0) && (main_for_body_i_exitcond5_reg == 1'd1))
		next_state = LEGUP_F_main_BB_for_cond9_preheader_i_preheader_4;
	else if ((fsm_stall == 1'd0) && (main_for_body_i_exitcond5_reg == 1'd0))
		next_state = LEGUP_F_main_BB_for_body_i_2;
LEGUP_F_main_BB_for_cond9_preheader_i_5:
		next_state = LEGUP_F_main_BB_for_body12_i_6;
LEGUP_F_main_BB_for_cond9_preheader_i_preheader_4:
		next_state = LEGUP_F_main_BB_for_cond9_preheader_i_5;
LEGUP_F_main_BB_for_inc51_i_13:
	if ((fsm_stall == 1'd0) && (main_for_inc51_i_exitcond4 == 1'd1))
		next_state = LEGUP_F_main_BB_sgfilter_exit_14;
	else if ((fsm_stall == 1'd0) && (main_for_inc51_i_exitcond4 == 1'd0))
		next_state = LEGUP_F_main_BB_for_cond9_preheader_i_5;
LEGUP_F_main_BB_sgfilter_exit_14:
		next_state = LEGUP_F_main_BB_sgfilter_exit_15;
LEGUP_F_main_BB_sgfilter_exit_15:
		next_state = LEGUP_0;
default:
	next_state = cur_state;
endcase

end
assign fsm_stall = 1'd0;
always @(*) begin
	if (((cur_state == LEGUP_F_main_BB_entry_1) & (fsm_stall == 1'd0))) begin
		main_for_body_i_k_077_i = 32'd0;
	end
	else /* if ((((cur_state == LEGUP_F_main_BB_for_body_i_3) & (fsm_stall == 1'd0)) & (main_for_body_i_exitcond5_reg == 1'd0))) */ begin
		main_for_body_i_k_077_i = main_for_body_i_0_reg;
	end
end
always @(posedge clk) begin
	if (((cur_state == LEGUP_F_main_BB_entry_1) & (fsm_stall == 1'd0))) begin
		main_for_body_i_k_077_i_reg <= main_for_body_i_k_077_i;
	end
	if ((((cur_state == LEGUP_F_main_BB_for_body_i_3) & (fsm_stall == 1'd0)) & (main_for_body_i_exitcond5_reg == 1'd0))) begin
		main_for_body_i_k_077_i_reg <= main_for_body_i_k_077_i;
	end
end
always @(*) begin
		main_for_body_i_bit_select19 = main_for_body_i_k_077_i_reg_width_extended[15:0];
end
always @(*) begin
		main_for_body_i_arrayidx_i = (1'd0 + (2 * {21'd0,main_for_body_i_k_077_i_reg}));
end
always @(*) begin
		main_for_body_i_arrayidx3_i = (1'd0 + (2 * {21'd0,main_for_body_i_k_077_i_reg}));
end
always @(*) begin
		main_for_body_i_arrayidx4_i = (1'd0 + (2 * {21'd0,main_for_body_i_k_077_i_reg}));
end
always @(*) begin
		main_for_body_i_0 = ({1'd0,main_for_body_i_k_077_i_reg} + 32'd1);
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
	if (((cur_state == LEGUP_F_main_BB_for_cond9_preheader_i_preheader_4) & (fsm_stall == 1'd0))) begin
		main_for_cond9_preheader_i_i_076_i = 32'd0;
	end
	else /* if ((((cur_state == LEGUP_F_main_BB_for_inc51_i_13) & (fsm_stall == 1'd0)) & (main_for_inc51_i_exitcond4 == 1'd0))) */ begin
		main_for_cond9_preheader_i_i_076_i = main_for_inc51_i_4;
	end
end
always @(posedge clk) begin
	if (((cur_state == LEGUP_F_main_BB_for_cond9_preheader_i_preheader_4) & (fsm_stall == 1'd0))) begin
		main_for_cond9_preheader_i_i_076_i_reg <= main_for_cond9_preheader_i_i_076_i;
	end
	if ((((cur_state == LEGUP_F_main_BB_for_inc51_i_13) & (fsm_stall == 1'd0)) & (main_for_inc51_i_exitcond4 == 1'd0))) begin
		main_for_cond9_preheader_i_i_076_i_reg <= main_for_cond9_preheader_i_i_076_i;
	end
end
always @(*) begin
	if (((cur_state == LEGUP_F_main_BB_for_cond9_preheader_i_5) & (fsm_stall == 1'd0))) begin
		main_for_body12_i_k_175_i = 32'd0;
	end
	else /* if ((((cur_state == LEGUP_F_main_BB_for_body12_i_12) & (fsm_stall == 1'd0)) & (main_for_body12_i_exitcond3_reg == 1'd0))) */ begin
		main_for_body12_i_k_175_i = main_for_body12_i_3_reg;
	end
end
always @(posedge clk) begin
	if (((cur_state == LEGUP_F_main_BB_for_cond9_preheader_i_5) & (fsm_stall == 1'd0))) begin
		main_for_body12_i_k_175_i_reg <= main_for_body12_i_k_175_i;
	end
	if ((((cur_state == LEGUP_F_main_BB_for_body12_i_12) & (fsm_stall == 1'd0)) & (main_for_body12_i_exitcond3_reg == 1'd0))) begin
		main_for_body12_i_k_175_i_reg <= main_for_body12_i_k_175_i;
	end
end
always @(*) begin
		main_for_body12_i_arrayidx13_i = (1'd0 + (2 * main_for_body12_i_k_175_i_reg));
end
always @(*) begin
		main_for_body12_i_arrayidx32_i = (1'd0 + (2 * main_for_body12_i_k_175_i_reg));
end
always @(*) begin
		main_for_body12_i_arrayidx47_i = (1'd0 + (2 * main_for_body12_i_k_175_i_reg));
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_6)) begin
		main_for_body12_i_arrayidx47_i_reg <= main_for_body12_i_arrayidx47_i;
	end
end
always @(*) begin
		main_for_body12_i_1 = main_entry_a_i_out_a;
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_7)) begin
		main_for_body12_i_1_reg <= main_for_body12_i_1;
	end
end
always @(*) begin
		main_for_body12_i_bit_select15 = main_for_body12_i_1[12:0];
end
always @(*) begin
		main_for_body12_i_bit_select10 = main_for_body12_i_1[10:0];
end
always @(*) begin
		main_for_body12_i_bit_select8 = main_for_body12_i_1[9:0];
end
always @(*) begin
		main_for_body12_i_bit_select4 = main_for_body12_i_1[13:0];
end
always @(*) begin
		main_for_body12_i_bit_select2 = main_for_body12_i_1[11:0];
end
always @(*) begin
		main_for_body12_i_sr_negate = (16'd0 - main_for_body12_i_1);
end
always @(*) begin
		main_for_body12_i_bit_select17 = main_for_body12_i_sr_negate[5:0];
end
always @(*) begin
		main_for_body12_i_bit_select12 = main_for_body12_i_sr_negate[13:0];
end
always @(*) begin
		main_for_body12_i_bit_select6 = main_for_body12_i_sr_negate[8:0];
end
always @(*) begin
		main_for_body12_i_bit_concat18 = {main_for_body12_i_bit_select17[5:0], main_for_body12_i_bit_concat18_bit_select_operand_2[9:0]};
end
always @(*) begin
		main_for_body12_i_bit_concat16 = {main_for_body12_i_bit_select15[12:0], main_for_body12_i_bit_concat16_bit_select_operand_2[2:0]};
end
always @(*) begin
		main_for_body12_i_bit_concat14 = {main_for_body12_i_bit_select10[10:0], main_for_body12_i_bit_concat14_bit_select_operand_2[4:0]};
end
always @(*) begin
		main_for_body12_i_sr_add7 = (main_for_body12_i_bit_concat16 + main_for_body12_i_bit_concat14);
end
always @(*) begin
		main_for_body12_i_newEarly_sub_i = (main_for_body12_i_bit_concat18 + $signed(-16'd46));
end
always @(*) begin
		main_for_body12_i_newCurOp_sub_i = (main_for_body12_i_newEarly_sub_i + main_for_body12_i_sr_add7);
end
always @(*) begin
	main_for_body12_i_mul17_i = main_for_body12_i_mul17_i_stage0_reg;
end
always @(*) begin
		main_for_body12_i_sub18_i = (main_for_body12_i_mul17_i + $signed(-16'd46));
end
always @(*) begin
	main_for_body12_i_mul21_i = main_for_body12_i_mul21_i_stage0_reg;
end
always @(*) begin
		main_for_body12_i_bit_concat13 = {main_for_body12_i_bit_select12[13:0], main_for_body12_i_bit_concat13_bit_select_operand_2[1:0]};
end
always @(*) begin
		main_for_body12_i_bit_concat11 = {main_for_body12_i_bit_select10[10:0], main_for_body12_i_bit_concat11_bit_select_operand_2[4:0]};
end
always @(*) begin
		main_for_body12_i_bit_concat9 = {main_for_body12_i_bit_select8[9:0], main_for_body12_i_bit_concat9_bit_select_operand_2[5:0]};
end
always @(*) begin
		main_for_body12_i_sr_add10 = (main_for_body12_i_bit_concat13 + main_for_body12_i_bit_concat11);
end
always @(*) begin
		main_for_body12_i_newEarly_sub25_i = (main_for_body12_i_bit_concat9 + $signed(-16'd39));
end
always @(*) begin
		main_for_body12_i_newCurOp_sub25_i = (main_for_body12_i_newEarly_sub25_i + main_for_body12_i_sr_add10);
end
always @(*) begin
	main_for_body12_i_mul28_i = main_for_body12_i_mul28_i_stage0_reg;
end
always @(*) begin
		main_for_body12_i_bit_concat7 = {main_for_body12_i_bit_select6[8:0], main_for_body12_i_bit_concat7_bit_select_operand_2[6:0]};
end
always @(*) begin
		main_for_body12_i_bit_concat5 = {main_for_body12_i_bit_select4[13:0], main_for_body12_i_bit_concat5_bit_select_operand_2[1:0]};
end
always @(*) begin
		main_for_body12_i_bit_concat3 = {main_for_body12_i_bit_select2[11:0], main_for_body12_i_bit_concat3_bit_select_operand_2[3:0]};
end
always @(*) begin
		main_for_body12_i_sr_add12 = (main_for_body12_i_bit_concat5 + main_for_body12_i_bit_concat3);
end
always @(*) begin
		main_for_body12_i_sr_add18 = (main_for_body12_i_bit_concat11 + main_for_body12_i_bit_concat7);
end
always @(*) begin
		main_for_body12_i_2 = main_entry_b_i_out_a;
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_7)) begin
		main_for_body12_i_2_reg <= main_for_body12_i_2;
	end
end
always @(*) begin
		main_for_body12_i_bit_select = main_for_body12_i_2[12:0];
end
always @(*) begin
		main_for_body12_i_sr_negate13 = (16'd0 - main_for_body12_i_2);
end
always @(*) begin
		main_for_body12_i_bit_concat1 = {main_for_body12_i_bit_select[12:0], main_for_body12_i_bit_concat1_bit_select_operand_2[2:0]};
end
always @(*) begin
		main_for_body12_i_sr_add15 = (main_for_body12_i_sr_negate13 + main_for_body12_i_bit_concat1);
end
always @(*) begin
		main_for_body12_i_newEarly_add_i = (main_for_body12_i_sr_add12 + 16'd7);
end
always @(*) begin
		main_for_body12_i_newEarly_add35_i = (main_for_body12_i_sr_add18 + main_for_body12_i_sr_add15);
end
always @(*) begin
		main_for_body12_i_newCurOp_add35_i = (main_for_body12_i_newEarly_add_i + main_for_body12_i_newEarly_add35_i);
end
always @(*) begin
	main_for_body12_i_mul38_i = main_for_body12_i_mul38_i_stage0_reg;
end
always @(*) begin
		main_for_body12_i_add39_i = (main_for_body12_i_mul28_i + 16'd7);
end
always @(*) begin
		main_for_body12_i_add40_i = (main_for_body12_i_add39_i + main_for_body12_i_mul38_i);
end
always @(*) begin
	main_for_body12_i_mul43_i = main_for_body12_i_mul43_i_stage0_reg;
end
always @(*) begin
		main_for_body12_i_add44_i = (main_for_body12_i_mul21_i + $signed(-16'd75));
end
always @(*) begin
		main_for_body12_i_sub45_i = (main_for_body12_i_add44_i + main_for_body12_i_mul43_i);
end
always @(*) begin
		main_for_body12_i_3 = (main_for_body12_i_k_175_i_reg + 32'd1);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_6)) begin
		main_for_body12_i_3_reg <= main_for_body12_i_3;
	end
end
always @(*) begin
		main_for_body12_i_exitcond3 = (main_for_body12_i_3 == 32'd1024);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_6)) begin
		main_for_body12_i_exitcond3_reg <= main_for_body12_i_exitcond3;
	end
end
always @(*) begin
		main_for_inc51_i_4 = ({1'd0,main_for_cond9_preheader_i_i_076_i_reg} + 32'd1);
end
always @(*) begin
		main_for_inc51_i_exitcond4 = (main_for_inc51_i_4 == 32'd100);
end
assign main_sgfilter_exit_arrayidx54_i = (1'd0 + (2 * 32'd50));
always @(*) begin
		main_sgfilter_exit_5 = main_entry_OUT_i_out_a;
end
always @(*) begin
		main_sgfilter_exit_bit_concat = {main_sgfilter_exit_bit_concat_bit_select_operand_0[15:0], main_sgfilter_exit_5[15:0]};
end
always @(*) begin
	main_entry_a_i_address_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_a_i_address_a = (main_for_body_i_arrayidx_i >>> 3'd1);
	end
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_6)) begin
		main_entry_a_i_address_a = (main_for_body12_i_arrayidx13_i >>> 3'd1);
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
		main_entry_a_i_in_a = main_for_body_i_bit_select19;
	end
end
always @(*) begin
	main_entry_b_i_address_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_b_i_address_a = (main_for_body_i_arrayidx3_i >>> 3'd1);
	end
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_6)) begin
		main_entry_b_i_address_a = (main_for_body12_i_arrayidx32_i >>> 3'd1);
	end
end
always @(*) begin
	main_entry_b_i_write_enable_a = 'd0;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_b_i_write_enable_a = 1'd1;
	end
end
always @(*) begin
	main_entry_b_i_in_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_b_i_in_a = main_for_body_i_bit_select19;
	end
end
always @(*) begin
	main_entry_OUT_i_address_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_OUT_i_address_a = (main_for_body_i_arrayidx4_i >>> 3'd1);
	end
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_11)) begin
		main_entry_OUT_i_address_a = (main_for_body12_i_arrayidx47_i_reg >>> 3'd1);
	end
	if ((cur_state == LEGUP_F_main_BB_sgfilter_exit_14)) begin
		main_entry_OUT_i_address_a = (main_sgfilter_exit_arrayidx54_i >>> 3'd1);
	end
end
always @(*) begin
	main_entry_OUT_i_write_enable_a = 'd0;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_OUT_i_write_enable_a = 1'd1;
	end
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_11)) begin
		main_entry_OUT_i_write_enable_a = 1'd1;
	end
end
always @(*) begin
	main_entry_OUT_i_in_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_OUT_i_in_a = 16'd0;
	end
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_11)) begin
		main_entry_OUT_i_in_a = main_for_body12_i_sub45_i;
	end
end
always @(*) begin
	main_for_body_i_k_077_i_reg_width_extended = {5'd0,main_for_body_i_k_077_i_reg};
end
assign main_for_body12_i_bit_concat18_bit_select_operand_2 = 10'd0;
assign main_for_body12_i_bit_concat16_bit_select_operand_2 = 3'd0;
assign main_for_body12_i_bit_concat14_bit_select_operand_2 = 5'd0;
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_7)) begin
		op0_main_for_body12_i_newCurOp_sub_i_reg <= main_for_body12_i_newCurOp_sub_i;
	end
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_7)) begin
		op1_main_for_body12_i_1_reg <= main_for_body12_i_1;
	end
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_7)) begin
		op1_main_for_body12_i_1_reg <= main_for_body12_i_1;
	end
end
always @(*) begin
	legup_mult_main_for_body12_i_mul17_i_en = ~(fsm_stall);
end
always @(posedge clk) begin
	if ((legup_mult_main_for_body12_i_mul17_i_en == 1'd1)) begin
		main_for_body12_i_mul17_i_stage0_reg <= (op0_main_for_body12_i_newCurOp_sub_i_reg * op1_main_for_body12_i_1_reg);
	end
end
assign main_for_body12_i_bit_concat13_bit_select_operand_2 = 2'd0;
assign main_for_body12_i_bit_concat11_bit_select_operand_2 = 5'd0;
assign main_for_body12_i_bit_concat9_bit_select_operand_2 = 6'd0;
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_7)) begin
		op0_main_for_body12_i_newCurOp_sub25_i_reg <= main_for_body12_i_newCurOp_sub25_i;
	end
end
always @(*) begin
	legup_mult_main_for_body12_i_mul28_i_en = ~(fsm_stall);
end
always @(posedge clk) begin
	if ((legup_mult_main_for_body12_i_mul28_i_en == 1'd1)) begin
		main_for_body12_i_mul28_i_stage0_reg <= (op0_main_for_body12_i_newCurOp_sub25_i_reg * op1_main_for_body12_i_1_reg);
	end
end
assign main_for_body12_i_bit_concat7_bit_select_operand_2 = 7'd0;
assign main_for_body12_i_bit_concat5_bit_select_operand_2 = 2'd0;
assign main_for_body12_i_bit_concat3_bit_select_operand_2 = 4'd0;
assign main_for_body12_i_bit_concat1_bit_select_operand_2 = 3'd0;
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_7)) begin
		op0_main_for_body12_i_newCurOp_add35_i_reg <= main_for_body12_i_newCurOp_add35_i;
	end
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_7)) begin
		op1_main_for_body12_i_2_reg <= main_for_body12_i_2;
	end
end
always @(*) begin
	legup_mult_main_for_body12_i_mul38_i_en = ~(fsm_stall);
end
always @(posedge clk) begin
	if ((legup_mult_main_for_body12_i_mul38_i_en == 1'd1)) begin
		main_for_body12_i_mul38_i_stage0_reg <= (op0_main_for_body12_i_newCurOp_add35_i_reg * op1_main_for_body12_i_2_reg);
	end
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_9)) begin
		op0_main_for_body12_i_sub18_i_reg <= main_for_body12_i_sub18_i;
	end
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_9)) begin
		op1_main_for_body12_i_1_reg_reg <= main_for_body12_i_1_reg;
	end
end
always @(*) begin
	legup_mult_main_for_body12_i_mul21_i_en = ~(fsm_stall);
end
always @(posedge clk) begin
	if ((legup_mult_main_for_body12_i_mul21_i_en == 1'd1)) begin
		main_for_body12_i_mul21_i_stage0_reg <= (op0_main_for_body12_i_sub18_i_reg * op1_main_for_body12_i_1_reg_reg);
	end
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_9)) begin
		op0_main_for_body12_i_add40_i_reg <= main_for_body12_i_add40_i;
	end
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body12_i_9)) begin
		op1_main_for_body12_i_2_reg_reg <= main_for_body12_i_2_reg;
	end
end
always @(*) begin
	legup_mult_main_for_body12_i_mul43_i_en = ~(fsm_stall);
end
always @(posedge clk) begin
	if ((legup_mult_main_for_body12_i_mul43_i_en == 1'd1)) begin
		main_for_body12_i_mul43_i_stage0_reg <= (op0_main_for_body12_i_add40_i_reg * op1_main_for_body12_i_2_reg_reg);
	end
end
assign main_sgfilter_exit_bit_concat_bit_select_operand_0 = 16'd0;
always @(posedge clk) begin
	if ((cur_state == LEGUP_0)) begin
		finish <= 1'd0;
	end
	if ((cur_state == LEGUP_F_main_BB_sgfilter_exit_15)) begin
		finish <= (fsm_stall == 1'd0);
	end
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_0)) begin
		return_val <= 0;
	end
	if ((cur_state == LEGUP_F_main_BB_sgfilter_exit_15)) begin
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
