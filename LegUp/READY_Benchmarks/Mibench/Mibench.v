// ----------------------------------------------------------------------------
// LegUp High-Level Synthesis Tool Version 7.5 (http://legupcomputing.com)
// Copyright (c) 2015-2019 LegUp Computing Inc. All Rights Reserved.
// For technical issues, please contact: support@legupcomputing.com
// For general inquiries, please contact: info@legupcomputing.com
// Date: Mon Apr 20 08:28:18 2020
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
parameter [3:0] LEGUP_F_main_BB_for_cond10_preheader_i_preheader_4 = 4'd4;
parameter [3:0] LEGUP_F_main_BB_for_cond10_preheader_i_5 = 4'd5;
parameter [3:0] LEGUP_F_main_BB_for_body13_i_6 = 4'd6;
parameter [3:0] LEGUP_F_main_BB_for_body13_i_7 = 4'd7;
parameter [3:0] LEGUP_F_main_BB_for_body13_i_8 = 4'd8;
parameter [3:0] LEGUP_F_main_BB_for_body13_i_9 = 4'd9;
parameter [3:0] LEGUP_F_main_BB_for_inc50_i_10 = 4'd10;
parameter [3:0] LEGUP_F_main_BB_mibench_exit_11 = 4'd11;
parameter [3:0] LEGUP_F_main_BB_mibench_exit_12 = 4'd12;

input  clk;
input  reset;
input  start;
output reg  finish;
output reg [31:0] return_val;
reg [3:0] cur_state/* synthesis syn_encoding="onehot" */;
reg [3:0] next_state;
wire  fsm_stall;
reg [10:0] main_for_body_i_k_079_i;
reg [10:0] main_for_body_i_k_079_i_reg;
reg [15:0] main_for_body_i_bit_select8;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body_i_arrayidx_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body_i_arrayidx2_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body_i_arrayidx4_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body_i_arrayidx5_i;
reg [11:0] main_for_body_i_0;
reg [11:0] main_for_body_i_0_reg;
reg  main_for_body_i_exitcond5;
reg  main_for_body_i_exitcond5_reg;
reg [6:0] main_for_cond10_preheader_i_i_078_i;
reg [6:0] main_for_cond10_preheader_i_i_078_i_reg;
reg [31:0] main_for_body13_i_k_177_i;
reg [31:0] main_for_body13_i_k_177_i_reg;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body13_i_arrayidx14_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body13_i_arrayidx18_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body13_i_arrayidx22_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body13_i_arrayidx46_i;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_for_body13_i_arrayidx46_i_reg;
reg [15:0] main_for_body13_i_1;
reg [31:0] main_for_body13_i_bit_concat7;
reg [31:0] main_for_body13_i_bit_concat6;
reg [31:0] main_for_body13_i_bit_concat5;
reg [31:0] main_for_body13_i_sr_add7;
reg [31:0] main_for_body13_i_add_i;
reg [15:0] main_for_body13_i_2;
reg [31:0] main_for_body13_i_bit_concat4;
reg [15:0] main_for_body13_i_3;
reg [31:0] main_for_body13_i_bit_concat3;
reg [31:0] main_for_body13_i_bit_concat2;
reg [31:0] main_for_body13_i_newEarly_add31_i;
reg [31:0] main_for_body13_i_newEarly_add34_i;
reg [31:0] main_for_body13_i_newCurOp_add34_i;
reg [31:0] main_for_body13_i_mul35_i;
reg [31:0] main_for_body13_i_bit_concat1;
reg [31:0] main_for_body13_i_sr_add9;
reg [31:0] main_for_body13_i_newEarly_add42_i;
reg [31:0] main_for_body13_i_newCurOp_add42_i;
reg [31:0] main_for_body13_i_tmp_i;
reg [31:0] main_for_body13_i_tmp76_i;
reg [31:0] main_for_body13_i_add44_i;
reg [15:0] main_for_body13_i_bit_select;
reg [31:0] main_for_body13_i_4;
reg [31:0] main_for_body13_i_4_reg;
reg  main_for_body13_i_exitcond3;
reg  main_for_body13_i_exitcond3_reg;
reg [7:0] main_for_inc50_i_5;
reg  main_for_inc50_i_exitcond4;
wire [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] main_mibench_exit_arrayidx53_i;
reg [15:0] main_mibench_exit_6;
reg [31:0] main_mibench_exit_bit_concat;
reg [9:0] main_entry_A_i_address_a;
reg  main_entry_A_i_write_enable_a;
reg [15:0] main_entry_A_i_in_a;
wire [15:0] main_entry_A_i_out_a;
reg [9:0] main_entry_B_i_address_a;
reg  main_entry_B_i_write_enable_a;
reg [15:0] main_entry_B_i_in_a;
wire [15:0] main_entry_B_i_out_a;
reg [9:0] main_entry_C_i_address_a;
reg  main_entry_C_i_write_enable_a;
reg [15:0] main_entry_C_i_in_a;
wire [15:0] main_entry_C_i_out_a;
reg [9:0] main_entry_OUT_i_address_a;
reg  main_entry_OUT_i_write_enable_a;
reg [15:0] main_entry_OUT_i_in_a;
wire [15:0] main_entry_OUT_i_out_a;
reg [15:0] main_for_body_i_k_079_i_reg_width_extended;
wire [15:0] main_for_body13_i_bit_concat7_bit_select_operand_0;
wire [14:0] main_for_body13_i_bit_concat6_bit_select_operand_0;
wire  main_for_body13_i_bit_concat6_bit_select_operand_4;
wire [13:0] main_for_body13_i_bit_concat5_bit_select_operand_0;
wire [1:0] main_for_body13_i_bit_concat5_bit_select_operand_4;
wire [15:0] main_for_body13_i_bit_concat4_bit_select_operand_0;
wire [15:0] main_for_body13_i_bit_concat3_bit_select_operand_0;
wire [14:0] main_for_body13_i_bit_concat2_bit_select_operand_0;
wire  main_for_body13_i_bit_concat2_bit_select_operand_4;
reg  legup_mult_main_for_body13_i_mul35_i_en;
reg [31:0] main_for_body13_i_mul35_i_stage0_reg;
wire [12:0] main_for_body13_i_bit_concat1_bit_select_operand_0;
wire [2:0] main_for_body13_i_bit_concat1_bit_select_operand_4;
reg  legup_mult_main_for_body13_i_tmp76_i_en;
reg [31:0] main_for_body13_i_tmp76_i_stage0_reg;
wire [15:0] main_mibench_exit_bit_concat_bit_select_operand_0;



//   %A.i = alloca [1024 x i16], align 2, !dbg !31, !MSB !32, !LSB !33, !extendFrom !32
ram_single_port_intel main_entry_A_i (
	.clk( clk ),
	.clken( !fsm_stall ),
	.address_a( main_entry_A_i_address_a ),
	.wren_a( main_entry_A_i_write_enable_a ),
	.data_a( main_entry_A_i_in_a ),
	.byteena_a( {2{1'b1}} ),
	.q_a( main_entry_A_i_out_a )
);
defparam main_entry_A_i.width_a = 16;
defparam main_entry_A_i.widthad_a = 10;
defparam main_entry_A_i.width_be_a = 2;
defparam main_entry_A_i.numwords_a = 1024;
defparam main_entry_A_i.latency = 1;


//   %B.i = alloca [1024 x i16], align 2, !dbg !31, !MSB !32, !LSB !33, !extendFrom !32
ram_single_port_intel main_entry_B_i (
	.clk( clk ),
	.clken( !fsm_stall ),
	.address_a( main_entry_B_i_address_a ),
	.wren_a( main_entry_B_i_write_enable_a ),
	.data_a( main_entry_B_i_in_a ),
	.byteena_a( {2{1'b1}} ),
	.q_a( main_entry_B_i_out_a )
);
defparam main_entry_B_i.width_a = 16;
defparam main_entry_B_i.widthad_a = 10;
defparam main_entry_B_i.width_be_a = 2;
defparam main_entry_B_i.numwords_a = 1024;
defparam main_entry_B_i.latency = 1;


//   %C.i = alloca [1024 x i16], align 2, !dbg !31, !MSB !32, !LSB !33, !extendFrom !32
ram_single_port_intel main_entry_C_i (
	.clk( clk ),
	.clken( !fsm_stall ),
	.address_a( main_entry_C_i_address_a ),
	.wren_a( main_entry_C_i_write_enable_a ),
	.data_a( main_entry_C_i_in_a ),
	.byteena_a( {2{1'b1}} ),
	.q_a( main_entry_C_i_out_a )
);
defparam main_entry_C_i.width_a = 16;
defparam main_entry_C_i.widthad_a = 10;
defparam main_entry_C_i.width_be_a = 2;
defparam main_entry_C_i.numwords_a = 1024;
defparam main_entry_C_i.latency = 1;


//   %OUT.i = alloca [1024 x i16], align 2, !dbg !31, !MSB !32, !LSB !33, !extendFrom !32
ram_single_port_intel main_entry_OUT_i (
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
	if ((cur_state == LEGUP_F_main_BB_mibench_exit_12)) begin
		$write("%d\n", $signed(main_mibench_exit_bit_concat));
		// to fix quartus warning
		if (reset == 1'b0 && ^(main_mibench_exit_bit_concat) === 1'bX) finish <= 0;
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
LEGUP_F_main_BB_for_body13_i_6:
		next_state = LEGUP_F_main_BB_for_body13_i_7;
LEGUP_F_main_BB_for_body13_i_7:
		next_state = LEGUP_F_main_BB_for_body13_i_8;
LEGUP_F_main_BB_for_body13_i_8:
		next_state = LEGUP_F_main_BB_for_body13_i_9;
LEGUP_F_main_BB_for_body13_i_9:
	if ((fsm_stall == 1'd0) && (main_for_body13_i_exitcond3_reg == 1'd1))
		next_state = LEGUP_F_main_BB_for_inc50_i_10;
	else if ((fsm_stall == 1'd0) && (main_for_body13_i_exitcond3_reg == 1'd0))
		next_state = LEGUP_F_main_BB_for_body13_i_6;
LEGUP_F_main_BB_for_body_i_2:
		next_state = LEGUP_F_main_BB_for_body_i_3;
LEGUP_F_main_BB_for_body_i_3:
	if ((fsm_stall == 1'd0) && (main_for_body_i_exitcond5_reg == 1'd1))
		next_state = LEGUP_F_main_BB_for_cond10_preheader_i_preheader_4;
	else if ((fsm_stall == 1'd0) && (main_for_body_i_exitcond5_reg == 1'd0))
		next_state = LEGUP_F_main_BB_for_body_i_2;
LEGUP_F_main_BB_for_cond10_preheader_i_5:
		next_state = LEGUP_F_main_BB_for_body13_i_6;
LEGUP_F_main_BB_for_cond10_preheader_i_preheader_4:
		next_state = LEGUP_F_main_BB_for_cond10_preheader_i_5;
LEGUP_F_main_BB_for_inc50_i_10:
	if ((fsm_stall == 1'd0) && (main_for_inc50_i_exitcond4 == 1'd1))
		next_state = LEGUP_F_main_BB_mibench_exit_11;
	else if ((fsm_stall == 1'd0) && (main_for_inc50_i_exitcond4 == 1'd0))
		next_state = LEGUP_F_main_BB_for_cond10_preheader_i_5;
LEGUP_F_main_BB_mibench_exit_11:
		next_state = LEGUP_F_main_BB_mibench_exit_12;
LEGUP_F_main_BB_mibench_exit_12:
		next_state = LEGUP_0;
default:
	next_state = cur_state;
endcase

end
assign fsm_stall = 1'd0;
always @(*) begin
	if (((cur_state == LEGUP_F_main_BB_entry_1) & (fsm_stall == 1'd0))) begin
		main_for_body_i_k_079_i = 32'd0;
	end
	else /* if ((((cur_state == LEGUP_F_main_BB_for_body_i_3) & (fsm_stall == 1'd0)) & (main_for_body_i_exitcond5_reg == 1'd0))) */ begin
		main_for_body_i_k_079_i = main_for_body_i_0_reg;
	end
end
always @(posedge clk) begin
	if (((cur_state == LEGUP_F_main_BB_entry_1) & (fsm_stall == 1'd0))) begin
		main_for_body_i_k_079_i_reg <= main_for_body_i_k_079_i;
	end
	if ((((cur_state == LEGUP_F_main_BB_for_body_i_3) & (fsm_stall == 1'd0)) & (main_for_body_i_exitcond5_reg == 1'd0))) begin
		main_for_body_i_k_079_i_reg <= main_for_body_i_k_079_i;
	end
end
always @(*) begin
		main_for_body_i_bit_select8 = main_for_body_i_k_079_i_reg_width_extended[15:0];
end
always @(*) begin
		main_for_body_i_arrayidx_i = (1'd0 + (2 * {21'd0,main_for_body_i_k_079_i_reg}));
end
always @(*) begin
		main_for_body_i_arrayidx2_i = (1'd0 + (2 * {21'd0,main_for_body_i_k_079_i_reg}));
end
always @(*) begin
		main_for_body_i_arrayidx4_i = (1'd0 + (2 * {21'd0,main_for_body_i_k_079_i_reg}));
end
always @(*) begin
		main_for_body_i_arrayidx5_i = (1'd0 + (2 * {21'd0,main_for_body_i_k_079_i_reg}));
end
always @(*) begin
		main_for_body_i_0 = ({1'd0,main_for_body_i_k_079_i_reg} + 32'd1);
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
	if (((cur_state == LEGUP_F_main_BB_for_cond10_preheader_i_preheader_4) & (fsm_stall == 1'd0))) begin
		main_for_cond10_preheader_i_i_078_i = 32'd0;
	end
	else /* if ((((cur_state == LEGUP_F_main_BB_for_inc50_i_10) & (fsm_stall == 1'd0)) & (main_for_inc50_i_exitcond4 == 1'd0))) */ begin
		main_for_cond10_preheader_i_i_078_i = main_for_inc50_i_5;
	end
end
always @(posedge clk) begin
	if (((cur_state == LEGUP_F_main_BB_for_cond10_preheader_i_preheader_4) & (fsm_stall == 1'd0))) begin
		main_for_cond10_preheader_i_i_078_i_reg <= main_for_cond10_preheader_i_i_078_i;
	end
	if ((((cur_state == LEGUP_F_main_BB_for_inc50_i_10) & (fsm_stall == 1'd0)) & (main_for_inc50_i_exitcond4 == 1'd0))) begin
		main_for_cond10_preheader_i_i_078_i_reg <= main_for_cond10_preheader_i_i_078_i;
	end
end
always @(*) begin
	if (((cur_state == LEGUP_F_main_BB_for_cond10_preheader_i_5) & (fsm_stall == 1'd0))) begin
		main_for_body13_i_k_177_i = 32'd0;
	end
	else /* if ((((cur_state == LEGUP_F_main_BB_for_body13_i_9) & (fsm_stall == 1'd0)) & (main_for_body13_i_exitcond3_reg == 1'd0))) */ begin
		main_for_body13_i_k_177_i = main_for_body13_i_4_reg;
	end
end
always @(posedge clk) begin
	if (((cur_state == LEGUP_F_main_BB_for_cond10_preheader_i_5) & (fsm_stall == 1'd0))) begin
		main_for_body13_i_k_177_i_reg <= main_for_body13_i_k_177_i;
	end
	if ((((cur_state == LEGUP_F_main_BB_for_body13_i_9) & (fsm_stall == 1'd0)) & (main_for_body13_i_exitcond3_reg == 1'd0))) begin
		main_for_body13_i_k_177_i_reg <= main_for_body13_i_k_177_i;
	end
end
always @(*) begin
		main_for_body13_i_arrayidx14_i = (1'd0 + (2 * main_for_body13_i_k_177_i_reg));
end
always @(*) begin
		main_for_body13_i_arrayidx18_i = (1'd0 + (2 * main_for_body13_i_k_177_i_reg));
end
always @(*) begin
		main_for_body13_i_arrayidx22_i = (1'd0 + (2 * main_for_body13_i_k_177_i_reg));
end
always @(*) begin
		main_for_body13_i_arrayidx46_i = (1'd0 + (2 * main_for_body13_i_k_177_i_reg));
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body13_i_6)) begin
		main_for_body13_i_arrayidx46_i_reg <= main_for_body13_i_arrayidx46_i;
	end
end
always @(*) begin
		main_for_body13_i_1 = main_entry_A_i_out_a;
end
always @(*) begin
		main_for_body13_i_bit_concat7 = {main_for_body13_i_bit_concat7_bit_select_operand_0[15:0], main_for_body13_i_1[15:0]};
end
always @(*) begin
		main_for_body13_i_bit_concat6 = {{main_for_body13_i_bit_concat6_bit_select_operand_0[14:0], main_for_body13_i_1[15:0]}, main_for_body13_i_bit_concat6_bit_select_operand_4};
end
always @(*) begin
		main_for_body13_i_bit_concat5 = {{main_for_body13_i_bit_concat5_bit_select_operand_0[13:0], main_for_body13_i_1[15:0]}, main_for_body13_i_bit_concat5_bit_select_operand_4[1:0]};
end
always @(*) begin
		main_for_body13_i_sr_add7 = (main_for_body13_i_bit_concat6 + main_for_body13_i_bit_concat5);
end
always @(*) begin
		main_for_body13_i_add_i = (main_for_body13_i_sr_add7 + 32'd43);
end
always @(*) begin
		main_for_body13_i_2 = main_entry_B_i_out_a;
end
always @(*) begin
		main_for_body13_i_bit_concat4 = {main_for_body13_i_bit_concat4_bit_select_operand_0[15:0], main_for_body13_i_2[15:0]};
end
always @(*) begin
		main_for_body13_i_3 = main_entry_C_i_out_a;
end
always @(*) begin
		main_for_body13_i_bit_concat3 = {main_for_body13_i_bit_concat3_bit_select_operand_0[15:0], main_for_body13_i_3[15:0]};
end
always @(*) begin
		main_for_body13_i_bit_concat2 = {{main_for_body13_i_bit_concat2_bit_select_operand_0[14:0], main_for_body13_i_2[15:0]}, main_for_body13_i_bit_concat2_bit_select_operand_4};
end
always @(*) begin
		main_for_body13_i_newEarly_add31_i = (main_for_body13_i_bit_concat2 + 32'd43);
end
always @(*) begin
		main_for_body13_i_newEarly_add34_i = (main_for_body13_i_sr_add7 + main_for_body13_i_bit_concat3);
end
always @(*) begin
		main_for_body13_i_newCurOp_add34_i = (main_for_body13_i_newEarly_add34_i + main_for_body13_i_newEarly_add31_i);
end
always @(*) begin
	main_for_body13_i_mul35_i = main_for_body13_i_mul35_i_stage0_reg;
end
always @(*) begin
		main_for_body13_i_bit_concat1 = {{main_for_body13_i_bit_concat1_bit_select_operand_0[12:0], main_for_body13_i_1[15:0]}, main_for_body13_i_bit_concat1_bit_select_operand_4[2:0]};
end
always @(*) begin
		main_for_body13_i_sr_add9 = (main_for_body13_i_bit_concat7 + main_for_body13_i_bit_concat1);
end
always @(*) begin
		main_for_body13_i_newEarly_add42_i = (main_for_body13_i_bit_concat4 + 32'd1);
end
always @(*) begin
		main_for_body13_i_newCurOp_add42_i = (main_for_body13_i_sr_add9 + main_for_body13_i_newEarly_add42_i);
end
always @(*) begin
		main_for_body13_i_tmp_i = (main_for_body13_i_newCurOp_add42_i + main_for_body13_i_add_i);
end
always @(*) begin
	main_for_body13_i_tmp76_i = main_for_body13_i_tmp76_i_stage0_reg;
end
always @(*) begin
		main_for_body13_i_add44_i = (main_for_body13_i_tmp76_i + main_for_body13_i_mul35_i);
end
always @(*) begin
		main_for_body13_i_bit_select = main_for_body13_i_add44_i[15:0];
end
always @(*) begin
		main_for_body13_i_4 = (main_for_body13_i_k_177_i_reg + 32'd1);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body13_i_6)) begin
		main_for_body13_i_4_reg <= main_for_body13_i_4;
	end
end
always @(*) begin
		main_for_body13_i_exitcond3 = (main_for_body13_i_4 == 32'd1024);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_main_BB_for_body13_i_6)) begin
		main_for_body13_i_exitcond3_reg <= main_for_body13_i_exitcond3;
	end
end
always @(*) begin
		main_for_inc50_i_5 = ({1'd0,main_for_cond10_preheader_i_i_078_i_reg} + 32'd1);
end
always @(*) begin
		main_for_inc50_i_exitcond4 = (main_for_inc50_i_5 == 32'd100);
end
assign main_mibench_exit_arrayidx53_i = (1'd0 + (2 * 32'd50));
always @(*) begin
		main_mibench_exit_6 = main_entry_OUT_i_out_a;
end
always @(*) begin
		main_mibench_exit_bit_concat = {main_mibench_exit_bit_concat_bit_select_operand_0[15:0], main_mibench_exit_6[15:0]};
end
always @(*) begin
	main_entry_A_i_address_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_A_i_address_a = (main_for_body_i_arrayidx_i >>> 3'd1);
	end
	if ((cur_state == LEGUP_F_main_BB_for_body13_i_6)) begin
		main_entry_A_i_address_a = (main_for_body13_i_arrayidx14_i >>> 3'd1);
	end
end
always @(*) begin
	main_entry_A_i_write_enable_a = 'd0;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_A_i_write_enable_a = 1'd1;
	end
end
always @(*) begin
	main_entry_A_i_in_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_A_i_in_a = main_for_body_i_bit_select8;
	end
end
always @(*) begin
	main_entry_B_i_address_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_B_i_address_a = (main_for_body_i_arrayidx2_i >>> 3'd1);
	end
	if ((cur_state == LEGUP_F_main_BB_for_body13_i_6)) begin
		main_entry_B_i_address_a = (main_for_body13_i_arrayidx18_i >>> 3'd1);
	end
end
always @(*) begin
	main_entry_B_i_write_enable_a = 'd0;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_B_i_write_enable_a = 1'd1;
	end
end
always @(*) begin
	main_entry_B_i_in_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_B_i_in_a = main_for_body_i_bit_select8;
	end
end
always @(*) begin
	main_entry_C_i_address_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_C_i_address_a = (main_for_body_i_arrayidx4_i >>> 3'd1);
	end
	if ((cur_state == LEGUP_F_main_BB_for_body13_i_6)) begin
		main_entry_C_i_address_a = (main_for_body13_i_arrayidx22_i >>> 3'd1);
	end
end
always @(*) begin
	main_entry_C_i_write_enable_a = 'd0;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_C_i_write_enable_a = 1'd1;
	end
end
always @(*) begin
	main_entry_C_i_in_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_C_i_in_a = main_for_body_i_bit_select8;
	end
end
always @(*) begin
	main_entry_OUT_i_address_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_OUT_i_address_a = (main_for_body_i_arrayidx5_i >>> 3'd1);
	end
	if ((cur_state == LEGUP_F_main_BB_for_body13_i_8)) begin
		main_entry_OUT_i_address_a = (main_for_body13_i_arrayidx46_i_reg >>> 3'd1);
	end
	if ((cur_state == LEGUP_F_main_BB_mibench_exit_11)) begin
		main_entry_OUT_i_address_a = (main_mibench_exit_arrayidx53_i >>> 3'd1);
	end
end
always @(*) begin
	main_entry_OUT_i_write_enable_a = 'd0;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_OUT_i_write_enable_a = 1'd1;
	end
	if ((cur_state == LEGUP_F_main_BB_for_body13_i_8)) begin
		main_entry_OUT_i_write_enable_a = 1'd1;
	end
end
always @(*) begin
	main_entry_OUT_i_in_a = 'dx;
	if ((cur_state == LEGUP_F_main_BB_for_body_i_2)) begin
		main_entry_OUT_i_in_a = 16'd0;
	end
	if ((cur_state == LEGUP_F_main_BB_for_body13_i_8)) begin
		main_entry_OUT_i_in_a = main_for_body13_i_bit_select;
	end
end
always @(*) begin
	main_for_body_i_k_079_i_reg_width_extended = {5'd0,main_for_body_i_k_079_i_reg};
end
assign main_for_body13_i_bit_concat7_bit_select_operand_0 = 16'd0;
assign main_for_body13_i_bit_concat6_bit_select_operand_0 = 15'd0;
assign main_for_body13_i_bit_concat6_bit_select_operand_4 = 1'd0;
assign main_for_body13_i_bit_concat5_bit_select_operand_0 = 14'd0;
assign main_for_body13_i_bit_concat5_bit_select_operand_4 = 2'd0;
assign main_for_body13_i_bit_concat4_bit_select_operand_0 = 16'd0;
assign main_for_body13_i_bit_concat3_bit_select_operand_0 = 16'd0;
assign main_for_body13_i_bit_concat2_bit_select_operand_0 = 15'd0;
assign main_for_body13_i_bit_concat2_bit_select_operand_4 = 1'd0;
always @(*) begin
	legup_mult_main_for_body13_i_mul35_i_en = ~(fsm_stall);
end
always @(posedge clk) begin
	if ((legup_mult_main_for_body13_i_mul35_i_en == 1'd1)) begin
		main_for_body13_i_mul35_i_stage0_reg <= (main_for_body13_i_newCurOp_add34_i * main_for_body13_i_bit_concat3);
	end
end
assign main_for_body13_i_bit_concat1_bit_select_operand_0 = 13'd0;
assign main_for_body13_i_bit_concat1_bit_select_operand_4 = 3'd0;
always @(*) begin
	legup_mult_main_for_body13_i_tmp76_i_en = ~(fsm_stall);
end
always @(posedge clk) begin
	if ((legup_mult_main_for_body13_i_tmp76_i_en == 1'd1)) begin
		main_for_body13_i_tmp76_i_stage0_reg <= (main_for_body13_i_tmp_i * main_for_body13_i_bit_concat7);
	end
end
assign main_mibench_exit_bit_concat_bit_select_operand_0 = 16'd0;
always @(posedge clk) begin
	if ((cur_state == LEGUP_0)) begin
		finish <= 1'd0;
	end
	if ((cur_state == LEGUP_F_main_BB_mibench_exit_12)) begin
		finish <= (fsm_stall == 1'd0);
	end
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_0)) begin
		return_val <= 0;
	end
	if ((cur_state == LEGUP_F_main_BB_mibench_exit_12)) begin
		return_val <= 32'd0;
	end
end

endmodule
module ram_dual_port
(
	clk,
	clken,
	address_a,
	address_b,
	wren_a,
	data_a,
	byteena_a,
	wren_b,
	data_b,
	byteena_b,
	q_b,
	q_a
);

parameter  width_a = 1'd0;
parameter  widthad_a = 1'd0;
parameter  numwords_a = 1'd0;
parameter  width_b = 1'd0;
parameter  widthad_b = 1'd0;
parameter  numwords_b = 1'd0;
parameter  latency = 1;
parameter  init_file = "UNUSED";
parameter  width_be_a = 1'd0;
parameter  width_be_b = 1'd0;
localparam output_registered = (latency == 1)? "UNREGISTERED" : "CLOCK0";
input  clk;
input  clken;
input [(widthad_a-1):0] address_a;
output wire [(width_a-1):0] q_a;
wire [(width_a-1):0] q_a_wire;
input [(widthad_b-1):0] address_b;
output wire [(width_b-1):0] q_b;
wire [(width_b-1):0] q_b_wire;
input  wren_a;
input [(width_a-1):0] data_a;
input [width_be_a-1:0] byteena_a;
input  wren_b;
input [(width_b-1):0] data_b;
input [width_be_b-1:0] byteena_b;
reg  clk_wire;

altsyncram altsyncram_component (
	.address_a (address_a),
    .clock0 (clk_wire),
    .clock1 (1'd1),
    .clocken0 (clken),
    .clocken1 (1'd1),
    .clocken2 (1'd1),
    .clocken3 (1'd1),
    .aclr0 (1'd0),
    .aclr1 (1'd0),
    .addressstall_a (1'd0),
    .eccstatus (),
    .rden_a (clken),
    .q_a (q_a),
	.address_b (address_b),
    .addressstall_b (1'd0),
    .rden_b (clken),
    .q_b (q_b),
    .wren_a (wren_a),
    .data_a (data_a),
    .wren_b (wren_b),
    .data_b (data_b),
    .byteena_b (byteena_b),
    .byteena_a (byteena_a)
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
    altsyncram_component.intended_device_family = "CycloneIV",
    altsyncram_component.clock_enable_input_b = "BYPASS",
    altsyncram_component.clock_enable_output_b = "BYPASS",
    altsyncram_component.outdata_aclr_b = "NONE",
    altsyncram_component.outdata_reg_b = output_registered,
    altsyncram_component.numwords_b = numwords_b,
    altsyncram_component.widthad_b = widthad_b,
    altsyncram_component.width_b = width_b,
    altsyncram_component.address_reg_b = "CLOCK0",
    altsyncram_component.byteena_reg_b = "CLOCK0",
    altsyncram_component.indata_reg_b = "CLOCK0",
    altsyncram_component.wrcontrol_wraddress_reg_b = "CLOCK0",
    altsyncram_component.clock_enable_input_a = "BYPASS",
    altsyncram_component.clock_enable_output_a = "BYPASS",
    altsyncram_component.outdata_aclr_a = "NONE",
    altsyncram_component.outdata_reg_a = output_registered,
    altsyncram_component.numwords_a = numwords_a,
    altsyncram_component.widthad_a = widthad_a,
    altsyncram_component.width_a = width_a;

always @(*) begin
	clk_wire = clk;
end


endmodule
module ram_single_port_intel
(
	clk,
	clken,
	address_a,
	wren_a,
	data_a,
	byteena_a,
	q_a
);

parameter  width_a = 1'd0;
parameter  widthad_a = 1'd0;
parameter  numwords_a = 1'd0;
parameter  latency = 1;
parameter  init_file = "UNUSED";
parameter  width_be_a = 1'd0;
localparam output_registered = (latency == 1)? "UNREGISTERED" : "CLOCK0";
input  clk;
input  clken;
input [(widthad_a-1):0] address_a;
output wire [(width_a-1):0] q_a;
wire [(width_a-1):0] q_a_wire;
input  wren_a;
input [(width_a-1):0] data_a;
input [width_be_a-1:0] byteena_a;
reg  clk_wire;

altsyncram altsyncram_component (
	.address_a (address_a),
    .clock0 (clk_wire),
    .clock1 (1'd1),
    .clocken0 (clken),
    .clocken1 (1'd1),
    .clocken2 (1'd1),
    .clocken3 (1'd1),
    .aclr0 (1'd0),
    .aclr1 (1'd0),
    .addressstall_a (1'd0),
    .eccstatus (),
    .rden_a (clken),
    .q_a (q_a),
    .wren_a (wren_a),
    .data_a (data_a),
    .byteena_a (byteena_a)
);
defparam
    altsyncram_component.width_byteena_a = width_be_a,
    altsyncram_component.operation_mode = "SINGLE_PORT",
    altsyncram_component.read_during_write_mode_mixed_ports = "OLD_DATA",
    altsyncram_component.init_file = init_file,
    altsyncram_component.lpm_hint = "ENABLE_RUNTIME_MOD=NO",
    altsyncram_component.lpm_type = "altsyncram",
    altsyncram_component.power_up_uninitialized = "FALSE",
    altsyncram_component.intended_device_family = "CycloneIV",
    altsyncram_component.clock_enable_input_a = "BYPASS",
    altsyncram_component.clock_enable_output_a = "BYPASS",
    altsyncram_component.outdata_aclr_a = "NONE",
    altsyncram_component.outdata_reg_a = output_registered,
    altsyncram_component.numwords_a = numwords_a,
    altsyncram_component.widthad_a = widthad_a,
    altsyncram_component.width_a = width_a;

always @(*) begin
	clk_wire = clk;
end


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
