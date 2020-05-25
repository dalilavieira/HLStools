// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 19.4 (Release Build #64)
// 
// Legal Notice: Copyright 2019 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from draw_box_function
// SystemVerilog created on Sun May 24 22:30:21 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module draw_box_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [383:0] in_iord_bl_call_draw_box_i_fifodata,
    input wire [0:0] in_iord_bl_call_draw_box_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_draw_box_i_fifoready,
    input wire [63:0] in_memdep_10_draw_box_avm_readdata,
    input wire [0:0] in_memdep_10_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_10_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_10_draw_box_avm_writeack,
    input wire [63:0] in_memdep_15_draw_box_avm_readdata,
    input wire [0:0] in_memdep_15_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_15_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_15_draw_box_avm_writeack,
    input wire [63:0] in_memdep_1_draw_box_avm_readdata,
    input wire [0:0] in_memdep_1_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_1_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_1_draw_box_avm_writeack,
    input wire [63:0] in_memdep_20_draw_box_avm_readdata,
    input wire [0:0] in_memdep_20_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_20_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_20_draw_box_avm_writeack,
    input wire [63:0] in_memdep_26_draw_box_avm_readdata,
    input wire [0:0] in_memdep_26_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_26_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_26_draw_box_avm_writeack,
    input wire [63:0] in_memdep_28_draw_box_avm_readdata,
    input wire [0:0] in_memdep_28_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_28_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_28_draw_box_avm_writeack,
    input wire [63:0] in_memdep_32_draw_box_avm_readdata,
    input wire [0:0] in_memdep_32_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_32_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_32_draw_box_avm_writeack,
    input wire [63:0] in_memdep_37_draw_box_avm_readdata,
    input wire [0:0] in_memdep_37_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_37_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_37_draw_box_avm_writeack,
    input wire [63:0] in_memdep_42_draw_box_avm_readdata,
    input wire [0:0] in_memdep_42_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_42_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_42_draw_box_avm_writeack,
    input wire [63:0] in_memdep_47_draw_box_avm_readdata,
    input wire [0:0] in_memdep_47_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_47_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_47_draw_box_avm_writeack,
    input wire [63:0] in_memdep_5_draw_box_avm_readdata,
    input wire [0:0] in_memdep_5_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_5_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_5_draw_box_avm_writeack,
    input wire [63:0] in_memdep_draw_box_avm_readdata,
    input wire [0:0] in_memdep_draw_box_avm_readdatavalid,
    input wire [0:0] in_memdep_draw_box_avm_waitrequest,
    input wire [0:0] in_memdep_draw_box_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_draw_box_o_fifoready,
    output wire [0:0] out_iowr_bl_return_draw_box_o_fifodata,
    output wire [0:0] out_iowr_bl_return_draw_box_o_fifovalid,
    output wire [63:0] out_memdep_10_draw_box_avm_address,
    output wire [0:0] out_memdep_10_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_10_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_10_draw_box_avm_enable,
    output wire [0:0] out_memdep_10_draw_box_avm_read,
    output wire [0:0] out_memdep_10_draw_box_avm_write,
    output wire [63:0] out_memdep_10_draw_box_avm_writedata,
    output wire [63:0] out_memdep_15_draw_box_avm_address,
    output wire [0:0] out_memdep_15_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_15_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_15_draw_box_avm_enable,
    output wire [0:0] out_memdep_15_draw_box_avm_read,
    output wire [0:0] out_memdep_15_draw_box_avm_write,
    output wire [63:0] out_memdep_15_draw_box_avm_writedata,
    output wire [63:0] out_memdep_1_draw_box_avm_address,
    output wire [0:0] out_memdep_1_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_1_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_1_draw_box_avm_enable,
    output wire [0:0] out_memdep_1_draw_box_avm_read,
    output wire [0:0] out_memdep_1_draw_box_avm_write,
    output wire [63:0] out_memdep_1_draw_box_avm_writedata,
    output wire [63:0] out_memdep_20_draw_box_avm_address,
    output wire [0:0] out_memdep_20_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_20_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_20_draw_box_avm_enable,
    output wire [0:0] out_memdep_20_draw_box_avm_read,
    output wire [0:0] out_memdep_20_draw_box_avm_write,
    output wire [63:0] out_memdep_20_draw_box_avm_writedata,
    output wire [63:0] out_memdep_26_draw_box_avm_address,
    output wire [0:0] out_memdep_26_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_26_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_26_draw_box_avm_enable,
    output wire [0:0] out_memdep_26_draw_box_avm_read,
    output wire [0:0] out_memdep_26_draw_box_avm_write,
    output wire [63:0] out_memdep_26_draw_box_avm_writedata,
    output wire [63:0] out_memdep_28_draw_box_avm_address,
    output wire [0:0] out_memdep_28_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_28_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_28_draw_box_avm_enable,
    output wire [0:0] out_memdep_28_draw_box_avm_read,
    output wire [0:0] out_memdep_28_draw_box_avm_write,
    output wire [63:0] out_memdep_28_draw_box_avm_writedata,
    output wire [63:0] out_memdep_32_draw_box_avm_address,
    output wire [0:0] out_memdep_32_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_32_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_32_draw_box_avm_enable,
    output wire [0:0] out_memdep_32_draw_box_avm_read,
    output wire [0:0] out_memdep_32_draw_box_avm_write,
    output wire [63:0] out_memdep_32_draw_box_avm_writedata,
    output wire [63:0] out_memdep_37_draw_box_avm_address,
    output wire [0:0] out_memdep_37_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_37_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_37_draw_box_avm_enable,
    output wire [0:0] out_memdep_37_draw_box_avm_read,
    output wire [0:0] out_memdep_37_draw_box_avm_write,
    output wire [63:0] out_memdep_37_draw_box_avm_writedata,
    output wire [63:0] out_memdep_42_draw_box_avm_address,
    output wire [0:0] out_memdep_42_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_42_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_42_draw_box_avm_enable,
    output wire [0:0] out_memdep_42_draw_box_avm_read,
    output wire [0:0] out_memdep_42_draw_box_avm_write,
    output wire [63:0] out_memdep_42_draw_box_avm_writedata,
    output wire [63:0] out_memdep_47_draw_box_avm_address,
    output wire [0:0] out_memdep_47_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_47_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_47_draw_box_avm_enable,
    output wire [0:0] out_memdep_47_draw_box_avm_read,
    output wire [0:0] out_memdep_47_draw_box_avm_write,
    output wire [63:0] out_memdep_47_draw_box_avm_writedata,
    output wire [63:0] out_memdep_5_draw_box_avm_address,
    output wire [0:0] out_memdep_5_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_5_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_5_draw_box_avm_enable,
    output wire [0:0] out_memdep_5_draw_box_avm_read,
    output wire [0:0] out_memdep_5_draw_box_avm_write,
    output wire [63:0] out_memdep_5_draw_box_avm_writedata,
    output wire [63:0] out_memdep_draw_box_avm_address,
    output wire [0:0] out_memdep_draw_box_avm_burstcount,
    output wire [7:0] out_memdep_draw_box_avm_byteenable,
    output wire [0:0] out_memdep_draw_box_avm_enable,
    output wire [0:0] out_memdep_draw_box_avm_read,
    output wire [0:0] out_memdep_draw_box_avm_write,
    output wire [63:0] out_memdep_draw_box_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_o_active_memdep_1,
    output wire [0:0] out_o_active_memdep_10,
    output wire [0:0] out_o_active_memdep_15,
    output wire [0:0] out_o_active_memdep_20,
    output wire [0:0] out_o_active_memdep_26,
    output wire [0:0] out_o_active_memdep_28,
    output wire [0:0] out_o_active_memdep_32,
    output wire [0:0] out_o_active_memdep_37,
    output wire [0:0] out_o_active_memdep_42,
    output wire [0:0] out_o_active_memdep_47,
    output wire [0:0] out_o_active_memdep_5,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_draw_box_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_draw_box_B2_out_intel_reserved_ffwd_14_0;
    wire [0:0] bb_draw_box_B2_out_intel_reserved_ffwd_15_0;
    wire [32:0] bb_draw_box_B2_out_intel_reserved_ffwd_16_0;
    wire [0:0] bb_draw_box_B2_out_stall_out_0;
    wire [0:0] bb_draw_box_B2_out_valid_out_0;
    wire [0:0] bb_draw_box_B4_out_exiting_stall_out;
    wire [0:0] bb_draw_box_B4_out_exiting_valid_out;
    wire [0:0] bb_draw_box_B4_out_lsu_memdep_26_o_active;
    wire [0:0] bb_draw_box_B4_out_lsu_memdep_28_o_active;
    wire [0:0] bb_draw_box_B4_out_lsu_memdep_32_o_active;
    wire [0:0] bb_draw_box_B4_out_lsu_memdep_37_o_active;
    wire [0:0] bb_draw_box_B4_out_lsu_memdep_42_o_active;
    wire [0:0] bb_draw_box_B4_out_lsu_memdep_47_o_active;
    wire [63:0] bb_draw_box_B4_out_memdep_26_draw_box_avm_address;
    wire [0:0] bb_draw_box_B4_out_memdep_26_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B4_out_memdep_26_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B4_out_memdep_26_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B4_out_memdep_26_draw_box_avm_read;
    wire [0:0] bb_draw_box_B4_out_memdep_26_draw_box_avm_write;
    wire [63:0] bb_draw_box_B4_out_memdep_26_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B4_out_memdep_28_draw_box_avm_address;
    wire [0:0] bb_draw_box_B4_out_memdep_28_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B4_out_memdep_28_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B4_out_memdep_28_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B4_out_memdep_28_draw_box_avm_read;
    wire [0:0] bb_draw_box_B4_out_memdep_28_draw_box_avm_write;
    wire [63:0] bb_draw_box_B4_out_memdep_28_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B4_out_memdep_32_draw_box_avm_address;
    wire [0:0] bb_draw_box_B4_out_memdep_32_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B4_out_memdep_32_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B4_out_memdep_32_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B4_out_memdep_32_draw_box_avm_read;
    wire [0:0] bb_draw_box_B4_out_memdep_32_draw_box_avm_write;
    wire [63:0] bb_draw_box_B4_out_memdep_32_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B4_out_memdep_37_draw_box_avm_address;
    wire [0:0] bb_draw_box_B4_out_memdep_37_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B4_out_memdep_37_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B4_out_memdep_37_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B4_out_memdep_37_draw_box_avm_read;
    wire [0:0] bb_draw_box_B4_out_memdep_37_draw_box_avm_write;
    wire [63:0] bb_draw_box_B4_out_memdep_37_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B4_out_memdep_42_draw_box_avm_address;
    wire [0:0] bb_draw_box_B4_out_memdep_42_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B4_out_memdep_42_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B4_out_memdep_42_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B4_out_memdep_42_draw_box_avm_read;
    wire [0:0] bb_draw_box_B4_out_memdep_42_draw_box_avm_write;
    wire [63:0] bb_draw_box_B4_out_memdep_42_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B4_out_memdep_47_draw_box_avm_address;
    wire [0:0] bb_draw_box_B4_out_memdep_47_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B4_out_memdep_47_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B4_out_memdep_47_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B4_out_memdep_47_draw_box_avm_read;
    wire [0:0] bb_draw_box_B4_out_memdep_47_draw_box_avm_write;
    wire [63:0] bb_draw_box_B4_out_memdep_47_draw_box_avm_writedata;
    wire [0:0] bb_draw_box_B4_out_pipeline_valid_out;
    wire [0:0] bb_draw_box_B4_out_stall_out_0;
    wire [0:0] bb_draw_box_B4_out_stall_out_1;
    wire [0:0] bb_draw_box_B4_out_valid_out_0;
    wire [0:0] bb_draw_box_B5_out_feedback_out_1;
    wire [0:0] bb_draw_box_B5_out_feedback_valid_out_1;
    wire [0:0] bb_draw_box_B5_out_iowr_bl_return_draw_box_o_fifodata;
    wire [0:0] bb_draw_box_B5_out_iowr_bl_return_draw_box_o_fifovalid;
    wire [0:0] bb_draw_box_B5_out_stall_out_0;
    wire [1:0] c_i2_012_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going109_draw_box4_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going109_draw_box4_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going132_draw_box1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going132_draw_box1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going132_draw_box1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going132_draw_box1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_draw_box4_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_draw_box4_sr_out_o_valid;
    wire [0:0] loop_limiter_draw_box0_out_o_stall;
    wire [0:0] loop_limiter_draw_box0_out_o_valid;
    wire [0:0] loop_limiter_draw_box1_out_o_stall;
    wire [0:0] loop_limiter_draw_box1_out_o_valid;
    wire [0:0] bb_draw_box_B1_start_aunroll_x_out_feedback_stall_out_1;
    wire [0:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_10_0;
    wire [0:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_11_0;
    wire [0:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_12_0;
    wire [32:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_13_0;
    wire [31:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [31:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_8_0;
    wire [0:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_draw_box_B1_start_aunroll_x_out_iord_bl_call_draw_box_o_fifoready;
    wire [0:0] bb_draw_box_B1_start_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_draw_box_B1_start_aunroll_x_out_stall_out_0;
    wire [0:0] bb_draw_box_B1_start_aunroll_x_out_valid_out_0;
    wire [31:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [31:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [63:0] bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [0:0] bb_draw_box_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_draw_box_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_exiting_valid_out;
    wire [63:0] bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_17_0;
    wire [31:0] bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_18_0;
    wire [31:0] bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_19_0;
    wire [31:0] bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [31:0] bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_21_0;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_lsu_memdep_10_o_active;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_lsu_memdep_15_o_active;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_lsu_memdep_1_o_active;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_lsu_memdep_20_o_active;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_lsu_memdep_5_o_active;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_lsu_memdep_o_active;
    wire [63:0] bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_address;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_read;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_write;
    wire [63:0] bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_address;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_read;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_write;
    wire [63:0] bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_address;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_read;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_write;
    wire [63:0] bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_address;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_read;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_write;
    wire [63:0] bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_address;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_read;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_write;
    wire [63:0] bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_writedata;
    wire [63:0] bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_address;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_burstcount;
    wire [7:0] bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_byteenable;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_enable;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_read;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_write;
    wire [63:0] bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_writedata;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_stall_out_0;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_stall_out_1;
    wire [0:0] bb_draw_box_B3_aunroll_x_out_valid_out_0;
    wire [0:0] bb_draw_box_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_draw_box_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_draw_box_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_draw_box_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_draw_box_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_draw_box_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_draw_box_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_draw_box_B5_sr_0_aunroll_x_out_o_valid;


    // c_i2_012(CONSTANT,19)
    assign c_i2_012_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going132_draw_box1_valid_fifo(BLACKBOX,23)
    draw_box_i_llvm_fpga_pipeline_keep_going132_1_valid_fifo thei_llvm_fpga_pipeline_keep_going132_draw_box1_valid_fifo (
        .in_data_in(c_i2_012_q),
        .in_stall_in(bb_draw_box_B1_start_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going132_draw_box1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going132_draw_box1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going132_draw_box1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_draw_box_B5_sr_0_aunroll_x(BLACKBOX,189)
    draw_box_bb_B5_sr_0 thebb_draw_box_B5_sr_0_aunroll_x (
        .in_i_stall(bb_draw_box_B5_out_stall_out_0),
        .in_i_valid(bb_draw_box_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_draw_box_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_draw_box_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_draw_box4_sr(BLACKBOX,24)
    draw_box_i_llvm_fpga_pipeline_keep_going_4_sr thei_llvm_fpga_pipeline_keep_going_draw_box4_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_draw_box_B4_out_stall_out_0),
        .in_i_valid(bb_draw_box_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_draw_box4_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_draw_box4_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_draw_box_B4(BLACKBOX,4)
    draw_box_bb_B4 thebb_draw_box_B4 (
        .in_flush(in_start),
        .in_forked90_0(GND_q),
        .in_forked90_1(bb_draw_box_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_14_0(bb_draw_box_B2_out_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(bb_draw_box_B2_out_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(bb_draw_box_B2_out_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_20_0(bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_3_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_8_0),
        .in_memdep_26_draw_box_avm_readdata(in_memdep_26_draw_box_avm_readdata),
        .in_memdep_26_draw_box_avm_readdatavalid(in_memdep_26_draw_box_avm_readdatavalid),
        .in_memdep_26_draw_box_avm_waitrequest(in_memdep_26_draw_box_avm_waitrequest),
        .in_memdep_26_draw_box_avm_writeack(in_memdep_26_draw_box_avm_writeack),
        .in_memdep_28_draw_box_avm_readdata(in_memdep_28_draw_box_avm_readdata),
        .in_memdep_28_draw_box_avm_readdatavalid(in_memdep_28_draw_box_avm_readdatavalid),
        .in_memdep_28_draw_box_avm_waitrequest(in_memdep_28_draw_box_avm_waitrequest),
        .in_memdep_28_draw_box_avm_writeack(in_memdep_28_draw_box_avm_writeack),
        .in_memdep_32_draw_box_avm_readdata(in_memdep_32_draw_box_avm_readdata),
        .in_memdep_32_draw_box_avm_readdatavalid(in_memdep_32_draw_box_avm_readdatavalid),
        .in_memdep_32_draw_box_avm_waitrequest(in_memdep_32_draw_box_avm_waitrequest),
        .in_memdep_32_draw_box_avm_writeack(in_memdep_32_draw_box_avm_writeack),
        .in_memdep_37_draw_box_avm_readdata(in_memdep_37_draw_box_avm_readdata),
        .in_memdep_37_draw_box_avm_readdatavalid(in_memdep_37_draw_box_avm_readdatavalid),
        .in_memdep_37_draw_box_avm_waitrequest(in_memdep_37_draw_box_avm_waitrequest),
        .in_memdep_37_draw_box_avm_writeack(in_memdep_37_draw_box_avm_writeack),
        .in_memdep_42_draw_box_avm_readdata(in_memdep_42_draw_box_avm_readdata),
        .in_memdep_42_draw_box_avm_readdatavalid(in_memdep_42_draw_box_avm_readdatavalid),
        .in_memdep_42_draw_box_avm_waitrequest(in_memdep_42_draw_box_avm_waitrequest),
        .in_memdep_42_draw_box_avm_writeack(in_memdep_42_draw_box_avm_writeack),
        .in_memdep_47_draw_box_avm_readdata(in_memdep_47_draw_box_avm_readdata),
        .in_memdep_47_draw_box_avm_readdatavalid(in_memdep_47_draw_box_avm_readdatavalid),
        .in_memdep_47_draw_box_avm_waitrequest(in_memdep_47_draw_box_avm_waitrequest),
        .in_memdep_47_draw_box_avm_writeack(in_memdep_47_draw_box_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_draw_box4_sr_out_o_stall),
        .in_stall_in_0(bb_draw_box_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_draw_box4_sr_out_o_valid),
        .in_valid_in_1(bb_draw_box_B4_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_draw_box_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_draw_box_B4_out_exiting_valid_out),
        .out_lsu_memdep_26_o_active(bb_draw_box_B4_out_lsu_memdep_26_o_active),
        .out_lsu_memdep_28_o_active(bb_draw_box_B4_out_lsu_memdep_28_o_active),
        .out_lsu_memdep_32_o_active(bb_draw_box_B4_out_lsu_memdep_32_o_active),
        .out_lsu_memdep_37_o_active(bb_draw_box_B4_out_lsu_memdep_37_o_active),
        .out_lsu_memdep_42_o_active(bb_draw_box_B4_out_lsu_memdep_42_o_active),
        .out_lsu_memdep_47_o_active(bb_draw_box_B4_out_lsu_memdep_47_o_active),
        .out_memdep_26_draw_box_avm_address(bb_draw_box_B4_out_memdep_26_draw_box_avm_address),
        .out_memdep_26_draw_box_avm_burstcount(bb_draw_box_B4_out_memdep_26_draw_box_avm_burstcount),
        .out_memdep_26_draw_box_avm_byteenable(bb_draw_box_B4_out_memdep_26_draw_box_avm_byteenable),
        .out_memdep_26_draw_box_avm_enable(bb_draw_box_B4_out_memdep_26_draw_box_avm_enable),
        .out_memdep_26_draw_box_avm_read(bb_draw_box_B4_out_memdep_26_draw_box_avm_read),
        .out_memdep_26_draw_box_avm_write(bb_draw_box_B4_out_memdep_26_draw_box_avm_write),
        .out_memdep_26_draw_box_avm_writedata(bb_draw_box_B4_out_memdep_26_draw_box_avm_writedata),
        .out_memdep_28_draw_box_avm_address(bb_draw_box_B4_out_memdep_28_draw_box_avm_address),
        .out_memdep_28_draw_box_avm_burstcount(bb_draw_box_B4_out_memdep_28_draw_box_avm_burstcount),
        .out_memdep_28_draw_box_avm_byteenable(bb_draw_box_B4_out_memdep_28_draw_box_avm_byteenable),
        .out_memdep_28_draw_box_avm_enable(bb_draw_box_B4_out_memdep_28_draw_box_avm_enable),
        .out_memdep_28_draw_box_avm_read(bb_draw_box_B4_out_memdep_28_draw_box_avm_read),
        .out_memdep_28_draw_box_avm_write(bb_draw_box_B4_out_memdep_28_draw_box_avm_write),
        .out_memdep_28_draw_box_avm_writedata(bb_draw_box_B4_out_memdep_28_draw_box_avm_writedata),
        .out_memdep_32_draw_box_avm_address(bb_draw_box_B4_out_memdep_32_draw_box_avm_address),
        .out_memdep_32_draw_box_avm_burstcount(bb_draw_box_B4_out_memdep_32_draw_box_avm_burstcount),
        .out_memdep_32_draw_box_avm_byteenable(bb_draw_box_B4_out_memdep_32_draw_box_avm_byteenable),
        .out_memdep_32_draw_box_avm_enable(bb_draw_box_B4_out_memdep_32_draw_box_avm_enable),
        .out_memdep_32_draw_box_avm_read(bb_draw_box_B4_out_memdep_32_draw_box_avm_read),
        .out_memdep_32_draw_box_avm_write(bb_draw_box_B4_out_memdep_32_draw_box_avm_write),
        .out_memdep_32_draw_box_avm_writedata(bb_draw_box_B4_out_memdep_32_draw_box_avm_writedata),
        .out_memdep_37_draw_box_avm_address(bb_draw_box_B4_out_memdep_37_draw_box_avm_address),
        .out_memdep_37_draw_box_avm_burstcount(bb_draw_box_B4_out_memdep_37_draw_box_avm_burstcount),
        .out_memdep_37_draw_box_avm_byteenable(bb_draw_box_B4_out_memdep_37_draw_box_avm_byteenable),
        .out_memdep_37_draw_box_avm_enable(bb_draw_box_B4_out_memdep_37_draw_box_avm_enable),
        .out_memdep_37_draw_box_avm_read(bb_draw_box_B4_out_memdep_37_draw_box_avm_read),
        .out_memdep_37_draw_box_avm_write(bb_draw_box_B4_out_memdep_37_draw_box_avm_write),
        .out_memdep_37_draw_box_avm_writedata(bb_draw_box_B4_out_memdep_37_draw_box_avm_writedata),
        .out_memdep_42_draw_box_avm_address(bb_draw_box_B4_out_memdep_42_draw_box_avm_address),
        .out_memdep_42_draw_box_avm_burstcount(bb_draw_box_B4_out_memdep_42_draw_box_avm_burstcount),
        .out_memdep_42_draw_box_avm_byteenable(bb_draw_box_B4_out_memdep_42_draw_box_avm_byteenable),
        .out_memdep_42_draw_box_avm_enable(bb_draw_box_B4_out_memdep_42_draw_box_avm_enable),
        .out_memdep_42_draw_box_avm_read(bb_draw_box_B4_out_memdep_42_draw_box_avm_read),
        .out_memdep_42_draw_box_avm_write(bb_draw_box_B4_out_memdep_42_draw_box_avm_write),
        .out_memdep_42_draw_box_avm_writedata(bb_draw_box_B4_out_memdep_42_draw_box_avm_writedata),
        .out_memdep_47_draw_box_avm_address(bb_draw_box_B4_out_memdep_47_draw_box_avm_address),
        .out_memdep_47_draw_box_avm_burstcount(bb_draw_box_B4_out_memdep_47_draw_box_avm_burstcount),
        .out_memdep_47_draw_box_avm_byteenable(bb_draw_box_B4_out_memdep_47_draw_box_avm_byteenable),
        .out_memdep_47_draw_box_avm_enable(bb_draw_box_B4_out_memdep_47_draw_box_avm_enable),
        .out_memdep_47_draw_box_avm_read(bb_draw_box_B4_out_memdep_47_draw_box_avm_read),
        .out_memdep_47_draw_box_avm_write(bb_draw_box_B4_out_memdep_47_draw_box_avm_write),
        .out_memdep_47_draw_box_avm_writedata(bb_draw_box_B4_out_memdep_47_draw_box_avm_writedata),
        .out_pipeline_valid_out(bb_draw_box_B4_out_pipeline_valid_out),
        .out_stall_out_0(bb_draw_box_B4_out_stall_out_0),
        .out_stall_out_1(bb_draw_box_B4_out_stall_out_1),
        .out_valid_out_0(bb_draw_box_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_draw_box_B4_sr_1_aunroll_x(BLACKBOX,188)
    draw_box_bb_B4_sr_1 thebb_draw_box_B4_sr_1_aunroll_x (
        .in_i_stall(bb_draw_box_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_draw_box1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_draw_box_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_draw_box_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_draw_box_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_draw_box1(BLACKBOX,82)
    draw_box_loop_limiter_1 theloop_limiter_draw_box1 (
        .in_i_stall(bb_draw_box_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_draw_box_B4_out_exiting_stall_out),
        .in_i_valid(bb_draw_box_B2_out_valid_out_0),
        .in_i_valid_exit(bb_draw_box_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_draw_box1_out_o_stall),
        .out_o_valid(loop_limiter_draw_box1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_draw_box_B2(BLACKBOX,3)
    draw_box_bb_B2 thebb_draw_box_B2 (
        .in_intel_reserved_ffwd_18_0(bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_19_0),
        .in_stall_in_0(loop_limiter_draw_box1_out_o_stall),
        .in_valid_in_0(bb_draw_box_B2_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_14_0(bb_draw_box_B2_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_draw_box_B2_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_draw_box_B2_out_intel_reserved_ffwd_16_0),
        .out_stall_out_0(bb_draw_box_B2_out_stall_out_0),
        .out_valid_out_0(bb_draw_box_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_draw_box_B2_sr_0_aunroll_x(BLACKBOX,185)
    draw_box_bb_B2_sr_0 thebb_draw_box_B2_sr_0_aunroll_x (
        .in_i_stall(bb_draw_box_B2_out_stall_out_0),
        .in_i_valid(bb_draw_box_B3_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_draw_box_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_draw_box_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going109_draw_box4_sr(BLACKBOX,21)
    draw_box_i_llvm_fpga_pipeline_keep_going109_4_sr thei_llvm_fpga_pipeline_keep_going109_draw_box4_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_draw_box_B3_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_draw_box_B3_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going109_draw_box4_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going109_draw_box4_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_draw_box_B3_aunroll_x(BLACKBOX,186)
    draw_box_bb_B3 thebb_draw_box_B3_aunroll_x (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_draw_box_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_10_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_1_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_9_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_9_0),
        .in_memdep_10_draw_box_avm_readdata(in_memdep_10_draw_box_avm_readdata),
        .in_memdep_10_draw_box_avm_readdatavalid(in_memdep_10_draw_box_avm_readdatavalid),
        .in_memdep_10_draw_box_avm_waitrequest(in_memdep_10_draw_box_avm_waitrequest),
        .in_memdep_10_draw_box_avm_writeack(in_memdep_10_draw_box_avm_writeack),
        .in_memdep_15_draw_box_avm_readdata(in_memdep_15_draw_box_avm_readdata),
        .in_memdep_15_draw_box_avm_readdatavalid(in_memdep_15_draw_box_avm_readdatavalid),
        .in_memdep_15_draw_box_avm_waitrequest(in_memdep_15_draw_box_avm_waitrequest),
        .in_memdep_15_draw_box_avm_writeack(in_memdep_15_draw_box_avm_writeack),
        .in_memdep_1_draw_box_avm_readdata(in_memdep_1_draw_box_avm_readdata),
        .in_memdep_1_draw_box_avm_readdatavalid(in_memdep_1_draw_box_avm_readdatavalid),
        .in_memdep_1_draw_box_avm_waitrequest(in_memdep_1_draw_box_avm_waitrequest),
        .in_memdep_1_draw_box_avm_writeack(in_memdep_1_draw_box_avm_writeack),
        .in_memdep_20_draw_box_avm_readdata(in_memdep_20_draw_box_avm_readdata),
        .in_memdep_20_draw_box_avm_readdatavalid(in_memdep_20_draw_box_avm_readdatavalid),
        .in_memdep_20_draw_box_avm_waitrequest(in_memdep_20_draw_box_avm_waitrequest),
        .in_memdep_20_draw_box_avm_writeack(in_memdep_20_draw_box_avm_writeack),
        .in_memdep_5_draw_box_avm_readdata(in_memdep_5_draw_box_avm_readdata),
        .in_memdep_5_draw_box_avm_readdatavalid(in_memdep_5_draw_box_avm_readdatavalid),
        .in_memdep_5_draw_box_avm_waitrequest(in_memdep_5_draw_box_avm_waitrequest),
        .in_memdep_5_draw_box_avm_writeack(in_memdep_5_draw_box_avm_writeack),
        .in_memdep_draw_box_avm_readdata(in_memdep_draw_box_avm_readdata),
        .in_memdep_draw_box_avm_readdatavalid(in_memdep_draw_box_avm_readdatavalid),
        .in_memdep_draw_box_avm_waitrequest(in_memdep_draw_box_avm_waitrequest),
        .in_memdep_draw_box_avm_writeack(in_memdep_draw_box_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going109_draw_box4_sr_out_o_stall),
        .in_stall_in_0(bb_draw_box_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going109_draw_box4_sr_out_o_valid),
        .in_valid_in_1(bb_draw_box_B3_sr_1_aunroll_x_out_o_valid),
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_exiting_stall_out(bb_draw_box_B3_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_draw_box_B3_aunroll_x_out_exiting_valid_out),
        .out_intel_reserved_ffwd_17_0(bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_draw_box_B3_aunroll_x_out_intel_reserved_ffwd_21_0),
        .out_lsu_memdep_10_o_active(bb_draw_box_B3_aunroll_x_out_lsu_memdep_10_o_active),
        .out_lsu_memdep_15_o_active(bb_draw_box_B3_aunroll_x_out_lsu_memdep_15_o_active),
        .out_lsu_memdep_1_o_active(bb_draw_box_B3_aunroll_x_out_lsu_memdep_1_o_active),
        .out_lsu_memdep_20_o_active(bb_draw_box_B3_aunroll_x_out_lsu_memdep_20_o_active),
        .out_lsu_memdep_5_o_active(bb_draw_box_B3_aunroll_x_out_lsu_memdep_5_o_active),
        .out_lsu_memdep_o_active(bb_draw_box_B3_aunroll_x_out_lsu_memdep_o_active),
        .out_memdep_10_draw_box_avm_address(bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_address),
        .out_memdep_10_draw_box_avm_burstcount(bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_burstcount),
        .out_memdep_10_draw_box_avm_byteenable(bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_byteenable),
        .out_memdep_10_draw_box_avm_enable(bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_enable),
        .out_memdep_10_draw_box_avm_read(bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_read),
        .out_memdep_10_draw_box_avm_write(bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_write),
        .out_memdep_10_draw_box_avm_writedata(bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_writedata),
        .out_memdep_15_draw_box_avm_address(bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_address),
        .out_memdep_15_draw_box_avm_burstcount(bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_burstcount),
        .out_memdep_15_draw_box_avm_byteenable(bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_byteenable),
        .out_memdep_15_draw_box_avm_enable(bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_enable),
        .out_memdep_15_draw_box_avm_read(bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_read),
        .out_memdep_15_draw_box_avm_write(bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_write),
        .out_memdep_15_draw_box_avm_writedata(bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_writedata),
        .out_memdep_1_draw_box_avm_address(bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_address),
        .out_memdep_1_draw_box_avm_burstcount(bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_burstcount),
        .out_memdep_1_draw_box_avm_byteenable(bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_byteenable),
        .out_memdep_1_draw_box_avm_enable(bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_enable),
        .out_memdep_1_draw_box_avm_read(bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_read),
        .out_memdep_1_draw_box_avm_write(bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_write),
        .out_memdep_1_draw_box_avm_writedata(bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_writedata),
        .out_memdep_20_draw_box_avm_address(bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_address),
        .out_memdep_20_draw_box_avm_burstcount(bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_burstcount),
        .out_memdep_20_draw_box_avm_byteenable(bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_byteenable),
        .out_memdep_20_draw_box_avm_enable(bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_enable),
        .out_memdep_20_draw_box_avm_read(bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_read),
        .out_memdep_20_draw_box_avm_write(bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_write),
        .out_memdep_20_draw_box_avm_writedata(bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_writedata),
        .out_memdep_5_draw_box_avm_address(bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_address),
        .out_memdep_5_draw_box_avm_burstcount(bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_burstcount),
        .out_memdep_5_draw_box_avm_byteenable(bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_byteenable),
        .out_memdep_5_draw_box_avm_enable(bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_enable),
        .out_memdep_5_draw_box_avm_read(bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_read),
        .out_memdep_5_draw_box_avm_write(bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_write),
        .out_memdep_5_draw_box_avm_writedata(bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_writedata),
        .out_memdep_draw_box_avm_address(bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_address),
        .out_memdep_draw_box_avm_burstcount(bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_burstcount),
        .out_memdep_draw_box_avm_byteenable(bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_byteenable),
        .out_memdep_draw_box_avm_enable(bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_enable),
        .out_memdep_draw_box_avm_read(bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_read),
        .out_memdep_draw_box_avm_write(bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_write),
        .out_memdep_draw_box_avm_writedata(bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_writedata),
        .out_pipeline_valid_out(bb_draw_box_B3_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_draw_box_B3_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_draw_box_B3_aunroll_x_out_stall_out_1),
        .out_valid_out_0(bb_draw_box_B3_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_draw_box_B3_sr_1_aunroll_x(BLACKBOX,187)
    draw_box_bb_B3_sr_1 thebb_draw_box_B3_sr_1_aunroll_x (
        .in_i_stall(bb_draw_box_B3_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_draw_box0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_draw_box_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_draw_box_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_draw_box_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_draw_box0(BLACKBOX,81)
    draw_box_loop_limiter_0 theloop_limiter_draw_box0 (
        .in_i_stall(bb_draw_box_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_draw_box_B3_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_draw_box_B1_start_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_draw_box_B3_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_draw_box0_out_o_stall),
        .out_o_valid(loop_limiter_draw_box0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going132_draw_box1_sr(BLACKBOX,22)
    draw_box_i_llvm_fpga_pipeline_keep_going132_1_sr thei_llvm_fpga_pipeline_keep_going132_draw_box1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going132_draw_box1_valid_fifo_out_stall_out),
        .in_i_valid(bb_draw_box_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going132_draw_box1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going132_draw_box1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_draw_box_B5(BLACKBOX,5)
    draw_box_bb_B5 thebb_draw_box_B5 (
        .in_feedback_stall_in_1(bb_draw_box_B1_start_aunroll_x_out_feedback_stall_out_1),
        .in_iowr_bl_return_draw_box_i_fifoready(in_iowr_bl_return_draw_box_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_draw_box_B5_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_draw_box_B5_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_draw_box_B5_out_feedback_valid_out_1),
        .out_iowr_bl_return_draw_box_o_fifodata(bb_draw_box_B5_out_iowr_bl_return_draw_box_o_fifodata),
        .out_iowr_bl_return_draw_box_o_fifovalid(bb_draw_box_B5_out_iowr_bl_return_draw_box_o_fifovalid),
        .out_stall_out_0(bb_draw_box_B5_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_draw_box_B1_start_aunroll_x(BLACKBOX,184)
    draw_box_bb_B1_start thebb_draw_box_B1_start_aunroll_x (
        .in_feedback_in_1(bb_draw_box_B5_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_draw_box_B5_out_feedback_valid_out_1),
        .in_iord_bl_call_draw_box_i_fifodata(in_iord_bl_call_draw_box_i_fifodata),
        .in_iord_bl_call_draw_box_i_fifovalid(in_iord_bl_call_draw_box_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going132_draw_box1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_draw_box0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going132_draw_box1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_draw_box_B1_start_aunroll_x_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_10_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_1_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_9_0),
        .out_iord_bl_call_draw_box_o_fifoready(bb_draw_box_B1_start_aunroll_x_out_iord_bl_call_draw_box_o_fifoready),
        .out_pipeline_valid_out(bb_draw_box_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_draw_box_B1_start_aunroll_x_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(bb_draw_box_B1_start_aunroll_x_out_valid_out_0),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(bb_draw_box_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_draw_box_o_fifoready(GPOUT,83)
    assign out_iord_bl_call_draw_box_o_fifoready = bb_draw_box_B1_start_aunroll_x_out_iord_bl_call_draw_box_o_fifoready;

    // out_iowr_bl_return_draw_box_o_fifodata(GPOUT,84)
    assign out_iowr_bl_return_draw_box_o_fifodata = bb_draw_box_B5_out_iowr_bl_return_draw_box_o_fifodata;

    // out_iowr_bl_return_draw_box_o_fifovalid(GPOUT,85)
    assign out_iowr_bl_return_draw_box_o_fifovalid = bb_draw_box_B5_out_iowr_bl_return_draw_box_o_fifovalid;

    // out_memdep_10_draw_box_avm_address(GPOUT,86)
    assign out_memdep_10_draw_box_avm_address = bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_address;

    // out_memdep_10_draw_box_avm_burstcount(GPOUT,87)
    assign out_memdep_10_draw_box_avm_burstcount = bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_burstcount;

    // out_memdep_10_draw_box_avm_byteenable(GPOUT,88)
    assign out_memdep_10_draw_box_avm_byteenable = bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_byteenable;

    // out_memdep_10_draw_box_avm_enable(GPOUT,89)
    assign out_memdep_10_draw_box_avm_enable = bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_enable;

    // out_memdep_10_draw_box_avm_read(GPOUT,90)
    assign out_memdep_10_draw_box_avm_read = bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_read;

    // out_memdep_10_draw_box_avm_write(GPOUT,91)
    assign out_memdep_10_draw_box_avm_write = bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_write;

    // out_memdep_10_draw_box_avm_writedata(GPOUT,92)
    assign out_memdep_10_draw_box_avm_writedata = bb_draw_box_B3_aunroll_x_out_memdep_10_draw_box_avm_writedata;

    // out_memdep_15_draw_box_avm_address(GPOUT,93)
    assign out_memdep_15_draw_box_avm_address = bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_address;

    // out_memdep_15_draw_box_avm_burstcount(GPOUT,94)
    assign out_memdep_15_draw_box_avm_burstcount = bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_burstcount;

    // out_memdep_15_draw_box_avm_byteenable(GPOUT,95)
    assign out_memdep_15_draw_box_avm_byteenable = bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_byteenable;

    // out_memdep_15_draw_box_avm_enable(GPOUT,96)
    assign out_memdep_15_draw_box_avm_enable = bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_enable;

    // out_memdep_15_draw_box_avm_read(GPOUT,97)
    assign out_memdep_15_draw_box_avm_read = bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_read;

    // out_memdep_15_draw_box_avm_write(GPOUT,98)
    assign out_memdep_15_draw_box_avm_write = bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_write;

    // out_memdep_15_draw_box_avm_writedata(GPOUT,99)
    assign out_memdep_15_draw_box_avm_writedata = bb_draw_box_B3_aunroll_x_out_memdep_15_draw_box_avm_writedata;

    // out_memdep_1_draw_box_avm_address(GPOUT,100)
    assign out_memdep_1_draw_box_avm_address = bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_address;

    // out_memdep_1_draw_box_avm_burstcount(GPOUT,101)
    assign out_memdep_1_draw_box_avm_burstcount = bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_burstcount;

    // out_memdep_1_draw_box_avm_byteenable(GPOUT,102)
    assign out_memdep_1_draw_box_avm_byteenable = bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_byteenable;

    // out_memdep_1_draw_box_avm_enable(GPOUT,103)
    assign out_memdep_1_draw_box_avm_enable = bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_enable;

    // out_memdep_1_draw_box_avm_read(GPOUT,104)
    assign out_memdep_1_draw_box_avm_read = bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_read;

    // out_memdep_1_draw_box_avm_write(GPOUT,105)
    assign out_memdep_1_draw_box_avm_write = bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_write;

    // out_memdep_1_draw_box_avm_writedata(GPOUT,106)
    assign out_memdep_1_draw_box_avm_writedata = bb_draw_box_B3_aunroll_x_out_memdep_1_draw_box_avm_writedata;

    // out_memdep_20_draw_box_avm_address(GPOUT,107)
    assign out_memdep_20_draw_box_avm_address = bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_address;

    // out_memdep_20_draw_box_avm_burstcount(GPOUT,108)
    assign out_memdep_20_draw_box_avm_burstcount = bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_burstcount;

    // out_memdep_20_draw_box_avm_byteenable(GPOUT,109)
    assign out_memdep_20_draw_box_avm_byteenable = bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_byteenable;

    // out_memdep_20_draw_box_avm_enable(GPOUT,110)
    assign out_memdep_20_draw_box_avm_enable = bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_enable;

    // out_memdep_20_draw_box_avm_read(GPOUT,111)
    assign out_memdep_20_draw_box_avm_read = bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_read;

    // out_memdep_20_draw_box_avm_write(GPOUT,112)
    assign out_memdep_20_draw_box_avm_write = bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_write;

    // out_memdep_20_draw_box_avm_writedata(GPOUT,113)
    assign out_memdep_20_draw_box_avm_writedata = bb_draw_box_B3_aunroll_x_out_memdep_20_draw_box_avm_writedata;

    // out_memdep_26_draw_box_avm_address(GPOUT,114)
    assign out_memdep_26_draw_box_avm_address = bb_draw_box_B4_out_memdep_26_draw_box_avm_address;

    // out_memdep_26_draw_box_avm_burstcount(GPOUT,115)
    assign out_memdep_26_draw_box_avm_burstcount = bb_draw_box_B4_out_memdep_26_draw_box_avm_burstcount;

    // out_memdep_26_draw_box_avm_byteenable(GPOUT,116)
    assign out_memdep_26_draw_box_avm_byteenable = bb_draw_box_B4_out_memdep_26_draw_box_avm_byteenable;

    // out_memdep_26_draw_box_avm_enable(GPOUT,117)
    assign out_memdep_26_draw_box_avm_enable = bb_draw_box_B4_out_memdep_26_draw_box_avm_enable;

    // out_memdep_26_draw_box_avm_read(GPOUT,118)
    assign out_memdep_26_draw_box_avm_read = bb_draw_box_B4_out_memdep_26_draw_box_avm_read;

    // out_memdep_26_draw_box_avm_write(GPOUT,119)
    assign out_memdep_26_draw_box_avm_write = bb_draw_box_B4_out_memdep_26_draw_box_avm_write;

    // out_memdep_26_draw_box_avm_writedata(GPOUT,120)
    assign out_memdep_26_draw_box_avm_writedata = bb_draw_box_B4_out_memdep_26_draw_box_avm_writedata;

    // out_memdep_28_draw_box_avm_address(GPOUT,121)
    assign out_memdep_28_draw_box_avm_address = bb_draw_box_B4_out_memdep_28_draw_box_avm_address;

    // out_memdep_28_draw_box_avm_burstcount(GPOUT,122)
    assign out_memdep_28_draw_box_avm_burstcount = bb_draw_box_B4_out_memdep_28_draw_box_avm_burstcount;

    // out_memdep_28_draw_box_avm_byteenable(GPOUT,123)
    assign out_memdep_28_draw_box_avm_byteenable = bb_draw_box_B4_out_memdep_28_draw_box_avm_byteenable;

    // out_memdep_28_draw_box_avm_enable(GPOUT,124)
    assign out_memdep_28_draw_box_avm_enable = bb_draw_box_B4_out_memdep_28_draw_box_avm_enable;

    // out_memdep_28_draw_box_avm_read(GPOUT,125)
    assign out_memdep_28_draw_box_avm_read = bb_draw_box_B4_out_memdep_28_draw_box_avm_read;

    // out_memdep_28_draw_box_avm_write(GPOUT,126)
    assign out_memdep_28_draw_box_avm_write = bb_draw_box_B4_out_memdep_28_draw_box_avm_write;

    // out_memdep_28_draw_box_avm_writedata(GPOUT,127)
    assign out_memdep_28_draw_box_avm_writedata = bb_draw_box_B4_out_memdep_28_draw_box_avm_writedata;

    // out_memdep_32_draw_box_avm_address(GPOUT,128)
    assign out_memdep_32_draw_box_avm_address = bb_draw_box_B4_out_memdep_32_draw_box_avm_address;

    // out_memdep_32_draw_box_avm_burstcount(GPOUT,129)
    assign out_memdep_32_draw_box_avm_burstcount = bb_draw_box_B4_out_memdep_32_draw_box_avm_burstcount;

    // out_memdep_32_draw_box_avm_byteenable(GPOUT,130)
    assign out_memdep_32_draw_box_avm_byteenable = bb_draw_box_B4_out_memdep_32_draw_box_avm_byteenable;

    // out_memdep_32_draw_box_avm_enable(GPOUT,131)
    assign out_memdep_32_draw_box_avm_enable = bb_draw_box_B4_out_memdep_32_draw_box_avm_enable;

    // out_memdep_32_draw_box_avm_read(GPOUT,132)
    assign out_memdep_32_draw_box_avm_read = bb_draw_box_B4_out_memdep_32_draw_box_avm_read;

    // out_memdep_32_draw_box_avm_write(GPOUT,133)
    assign out_memdep_32_draw_box_avm_write = bb_draw_box_B4_out_memdep_32_draw_box_avm_write;

    // out_memdep_32_draw_box_avm_writedata(GPOUT,134)
    assign out_memdep_32_draw_box_avm_writedata = bb_draw_box_B4_out_memdep_32_draw_box_avm_writedata;

    // out_memdep_37_draw_box_avm_address(GPOUT,135)
    assign out_memdep_37_draw_box_avm_address = bb_draw_box_B4_out_memdep_37_draw_box_avm_address;

    // out_memdep_37_draw_box_avm_burstcount(GPOUT,136)
    assign out_memdep_37_draw_box_avm_burstcount = bb_draw_box_B4_out_memdep_37_draw_box_avm_burstcount;

    // out_memdep_37_draw_box_avm_byteenable(GPOUT,137)
    assign out_memdep_37_draw_box_avm_byteenable = bb_draw_box_B4_out_memdep_37_draw_box_avm_byteenable;

    // out_memdep_37_draw_box_avm_enable(GPOUT,138)
    assign out_memdep_37_draw_box_avm_enable = bb_draw_box_B4_out_memdep_37_draw_box_avm_enable;

    // out_memdep_37_draw_box_avm_read(GPOUT,139)
    assign out_memdep_37_draw_box_avm_read = bb_draw_box_B4_out_memdep_37_draw_box_avm_read;

    // out_memdep_37_draw_box_avm_write(GPOUT,140)
    assign out_memdep_37_draw_box_avm_write = bb_draw_box_B4_out_memdep_37_draw_box_avm_write;

    // out_memdep_37_draw_box_avm_writedata(GPOUT,141)
    assign out_memdep_37_draw_box_avm_writedata = bb_draw_box_B4_out_memdep_37_draw_box_avm_writedata;

    // out_memdep_42_draw_box_avm_address(GPOUT,142)
    assign out_memdep_42_draw_box_avm_address = bb_draw_box_B4_out_memdep_42_draw_box_avm_address;

    // out_memdep_42_draw_box_avm_burstcount(GPOUT,143)
    assign out_memdep_42_draw_box_avm_burstcount = bb_draw_box_B4_out_memdep_42_draw_box_avm_burstcount;

    // out_memdep_42_draw_box_avm_byteenable(GPOUT,144)
    assign out_memdep_42_draw_box_avm_byteenable = bb_draw_box_B4_out_memdep_42_draw_box_avm_byteenable;

    // out_memdep_42_draw_box_avm_enable(GPOUT,145)
    assign out_memdep_42_draw_box_avm_enable = bb_draw_box_B4_out_memdep_42_draw_box_avm_enable;

    // out_memdep_42_draw_box_avm_read(GPOUT,146)
    assign out_memdep_42_draw_box_avm_read = bb_draw_box_B4_out_memdep_42_draw_box_avm_read;

    // out_memdep_42_draw_box_avm_write(GPOUT,147)
    assign out_memdep_42_draw_box_avm_write = bb_draw_box_B4_out_memdep_42_draw_box_avm_write;

    // out_memdep_42_draw_box_avm_writedata(GPOUT,148)
    assign out_memdep_42_draw_box_avm_writedata = bb_draw_box_B4_out_memdep_42_draw_box_avm_writedata;

    // out_memdep_47_draw_box_avm_address(GPOUT,149)
    assign out_memdep_47_draw_box_avm_address = bb_draw_box_B4_out_memdep_47_draw_box_avm_address;

    // out_memdep_47_draw_box_avm_burstcount(GPOUT,150)
    assign out_memdep_47_draw_box_avm_burstcount = bb_draw_box_B4_out_memdep_47_draw_box_avm_burstcount;

    // out_memdep_47_draw_box_avm_byteenable(GPOUT,151)
    assign out_memdep_47_draw_box_avm_byteenable = bb_draw_box_B4_out_memdep_47_draw_box_avm_byteenable;

    // out_memdep_47_draw_box_avm_enable(GPOUT,152)
    assign out_memdep_47_draw_box_avm_enable = bb_draw_box_B4_out_memdep_47_draw_box_avm_enable;

    // out_memdep_47_draw_box_avm_read(GPOUT,153)
    assign out_memdep_47_draw_box_avm_read = bb_draw_box_B4_out_memdep_47_draw_box_avm_read;

    // out_memdep_47_draw_box_avm_write(GPOUT,154)
    assign out_memdep_47_draw_box_avm_write = bb_draw_box_B4_out_memdep_47_draw_box_avm_write;

    // out_memdep_47_draw_box_avm_writedata(GPOUT,155)
    assign out_memdep_47_draw_box_avm_writedata = bb_draw_box_B4_out_memdep_47_draw_box_avm_writedata;

    // out_memdep_5_draw_box_avm_address(GPOUT,156)
    assign out_memdep_5_draw_box_avm_address = bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_address;

    // out_memdep_5_draw_box_avm_burstcount(GPOUT,157)
    assign out_memdep_5_draw_box_avm_burstcount = bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_burstcount;

    // out_memdep_5_draw_box_avm_byteenable(GPOUT,158)
    assign out_memdep_5_draw_box_avm_byteenable = bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_byteenable;

    // out_memdep_5_draw_box_avm_enable(GPOUT,159)
    assign out_memdep_5_draw_box_avm_enable = bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_enable;

    // out_memdep_5_draw_box_avm_read(GPOUT,160)
    assign out_memdep_5_draw_box_avm_read = bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_read;

    // out_memdep_5_draw_box_avm_write(GPOUT,161)
    assign out_memdep_5_draw_box_avm_write = bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_write;

    // out_memdep_5_draw_box_avm_writedata(GPOUT,162)
    assign out_memdep_5_draw_box_avm_writedata = bb_draw_box_B3_aunroll_x_out_memdep_5_draw_box_avm_writedata;

    // out_memdep_draw_box_avm_address(GPOUT,163)
    assign out_memdep_draw_box_avm_address = bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_address;

    // out_memdep_draw_box_avm_burstcount(GPOUT,164)
    assign out_memdep_draw_box_avm_burstcount = bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_burstcount;

    // out_memdep_draw_box_avm_byteenable(GPOUT,165)
    assign out_memdep_draw_box_avm_byteenable = bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_byteenable;

    // out_memdep_draw_box_avm_enable(GPOUT,166)
    assign out_memdep_draw_box_avm_enable = bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_enable;

    // out_memdep_draw_box_avm_read(GPOUT,167)
    assign out_memdep_draw_box_avm_read = bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_read;

    // out_memdep_draw_box_avm_write(GPOUT,168)
    assign out_memdep_draw_box_avm_write = bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_write;

    // out_memdep_draw_box_avm_writedata(GPOUT,169)
    assign out_memdep_draw_box_avm_writedata = bb_draw_box_B3_aunroll_x_out_memdep_draw_box_avm_writedata;

    // out_o_active_memdep(GPOUT,170)
    assign out_o_active_memdep = bb_draw_box_B3_aunroll_x_out_lsu_memdep_o_active;

    // out_o_active_memdep_1(GPOUT,171)
    assign out_o_active_memdep_1 = bb_draw_box_B3_aunroll_x_out_lsu_memdep_1_o_active;

    // out_o_active_memdep_10(GPOUT,172)
    assign out_o_active_memdep_10 = bb_draw_box_B3_aunroll_x_out_lsu_memdep_10_o_active;

    // out_o_active_memdep_15(GPOUT,173)
    assign out_o_active_memdep_15 = bb_draw_box_B3_aunroll_x_out_lsu_memdep_15_o_active;

    // out_o_active_memdep_20(GPOUT,174)
    assign out_o_active_memdep_20 = bb_draw_box_B3_aunroll_x_out_lsu_memdep_20_o_active;

    // out_o_active_memdep_26(GPOUT,175)
    assign out_o_active_memdep_26 = bb_draw_box_B4_out_lsu_memdep_26_o_active;

    // out_o_active_memdep_28(GPOUT,176)
    assign out_o_active_memdep_28 = bb_draw_box_B4_out_lsu_memdep_28_o_active;

    // out_o_active_memdep_32(GPOUT,177)
    assign out_o_active_memdep_32 = bb_draw_box_B4_out_lsu_memdep_32_o_active;

    // out_o_active_memdep_37(GPOUT,178)
    assign out_o_active_memdep_37 = bb_draw_box_B4_out_lsu_memdep_37_o_active;

    // out_o_active_memdep_42(GPOUT,179)
    assign out_o_active_memdep_42 = bb_draw_box_B4_out_lsu_memdep_42_o_active;

    // out_o_active_memdep_47(GPOUT,180)
    assign out_o_active_memdep_47 = bb_draw_box_B4_out_lsu_memdep_47_o_active;

    // out_o_active_memdep_5(GPOUT,181)
    assign out_o_active_memdep_5 = bb_draw_box_B3_aunroll_x_out_lsu_memdep_5_o_active;

    // bb_draw_box_B0_runOnce(BLACKBOX,2)
    draw_box_bb_B0_runOnce thebb_draw_box_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_draw_box_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,182)
    assign out_stall_out = bb_draw_box_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,183)
    assign out_valid_out = GND_q;

endmodule
