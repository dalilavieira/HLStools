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

// SystemVerilog created from floydWarshall_function
// SystemVerilog created on Mon Apr  6 11:17:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_graph,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_iord_bl_call_floydWarshall_i_fifodata,
    input wire [0:0] in_iord_bl_call_floydWarshall_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_floydWarshall_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_floydWarshall4_floydWarshall_avm_readdata,
    input wire [0:0] in_unnamed_floydWarshall4_floydWarshall_avm_readdatavalid,
    input wire [0:0] in_unnamed_floydWarshall4_floydWarshall_avm_waitrequest,
    input wire [0:0] in_unnamed_floydWarshall4_floydWarshall_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_floydWarshall_o_fifoready,
    output wire [0:0] out_iowr_bl_return_floydWarshall_o_fifodata,
    output wire [0:0] out_iowr_bl_return_floydWarshall_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_floydWarshall4_floydWarshall_avm_address,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_burstcount,
    output wire [7:0] out_unnamed_floydWarshall4_floydWarshall_avm_byteenable,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_enable,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_read,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_write,
    output wire [63:0] out_unnamed_floydWarshall4_floydWarshall_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_floydWarshall_B0_runOnce_out_stall_out_0;
    wire [31:0] bb_floydWarshall_B10_out_c0_exe1918;
    wire [0:0] bb_floydWarshall_B10_out_stall_out_0;
    wire [0:0] bb_floydWarshall_B10_out_valid_out_0;
    wire [0:0] bb_floydWarshall_B10_out_valid_out_1;
    wire [0:0] bb_floydWarshall_B11_out_feedback_out_1;
    wire [0:0] bb_floydWarshall_B11_out_feedback_valid_out_1;
    wire [0:0] bb_floydWarshall_B11_out_iowr_bl_return_floydWarshall_o_fifodata;
    wire [0:0] bb_floydWarshall_B11_out_iowr_bl_return_floydWarshall_o_fifovalid;
    wire [0:0] bb_floydWarshall_B11_out_stall_out_0;
    wire [0:0] bb_floydWarshall_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_floydWarshall_B1_start_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_floydWarshall_B1_start_out_iord_bl_call_floydWarshall_o_fifoready;
    wire [0:0] bb_floydWarshall_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_floydWarshall_B1_start_out_stall_out_0;
    wire [0:0] bb_floydWarshall_B1_start_out_valid_out_0;
    wire [0:0] bb_floydWarshall_B2_out_c0_exe1234;
    wire [0:0] bb_floydWarshall_B2_out_c0_exe2;
    wire [31:0] bb_floydWarshall_B2_out_c0_exe3;
    wire [0:0] bb_floydWarshall_B2_out_c0_exe4;
    wire [0:0] bb_floydWarshall_B2_out_exiting_stall_out;
    wire [0:0] bb_floydWarshall_B2_out_exiting_valid_out;
    wire [0:0] bb_floydWarshall_B2_out_pipeline_valid_out;
    wire [0:0] bb_floydWarshall_B2_out_stall_out_0;
    wire [0:0] bb_floydWarshall_B2_out_stall_out_1;
    wire [0:0] bb_floydWarshall_B2_out_valid_out_0;
    wire [0:0] bb_floydWarshall_B3_out_c0_exe3244;
    wire [0:0] bb_floydWarshall_B3_out_exiting_stall_out;
    wire [0:0] bb_floydWarshall_B3_out_exiting_valid_out;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_10_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_11_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_12_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_13_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_14_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_15_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_16_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_7_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_8_0;
    wire [31:0] bb_floydWarshall_B3_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_floydWarshall_B3_out_pipeline_valid_out;
    wire [0:0] bb_floydWarshall_B3_out_stall_out_0;
    wire [0:0] bb_floydWarshall_B3_out_stall_out_1;
    wire [63:0] bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_address;
    wire [0:0] bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_burstcount;
    wire [7:0] bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_byteenable;
    wire [0:0] bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_enable;
    wire [0:0] bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_read;
    wire [0:0] bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_write;
    wire [63:0] bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_writedata;
    wire [0:0] bb_floydWarshall_B3_out_valid_out_0;
    wire [0:0] bb_floydWarshall_B4_out_stall_out_0;
    wire [0:0] bb_floydWarshall_B4_out_valid_out_0;
    wire [0:0] bb_floydWarshall_B5_out_stall_out_0;
    wire [0:0] bb_floydWarshall_B5_out_valid_out_0;
    wire [31:0] bb_floydWarshall_B6_out_inc55;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_17_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_18_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_19_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_20_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_21_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_22_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_23_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_24_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_25_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_26_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_27_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_28_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_29_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_30_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_31_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_32_0;
    wire [31:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_33_0;
    wire [0:0] bb_floydWarshall_B6_out_intel_reserved_ffwd_34_0;
    wire [0:0] bb_floydWarshall_B6_out_stall_out_0;
    wire [0:0] bb_floydWarshall_B6_out_stall_out_1;
    wire [0:0] bb_floydWarshall_B6_out_valid_out_0;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_0_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_12_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_17_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_22_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_27_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_32_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_37_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_42_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_47_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_52_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_57_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_62_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_67_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_72_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_77_4_replace_phi;
    wire [31:0] bb_floydWarshall_B7_out_A_sroa_7_4_replace_phi;
    wire [0:0] bb_floydWarshall_B7_out_c0_exe1255;
    wire [0:0] bb_floydWarshall_B7_out_c0_exe2256;
    wire [31:0] bb_floydWarshall_B7_out_c0_exe3257;
    wire [31:0] bb_floydWarshall_B7_out_c0_exe4258;
    wire [31:0] bb_floydWarshall_B7_out_c0_exe6;
    wire [0:0] bb_floydWarshall_B7_out_exiting_stall_out;
    wire [0:0] bb_floydWarshall_B7_out_exiting_valid_out;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_38;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_39;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_40;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_41;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_42;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_43;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_44;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_45;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_46;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_47;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_48;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_49;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_50;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_51;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_52;
    wire [0:0] bb_floydWarshall_B7_out_feedback_stall_out_53;
    wire [0:0] bb_floydWarshall_B7_out_pipeline_valid_out;
    wire [0:0] bb_floydWarshall_B7_out_stall_out_0;
    wire [0:0] bb_floydWarshall_B7_out_stall_out_1;
    wire [0:0] bb_floydWarshall_B7_out_valid_out_0;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe10;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe11;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe12;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe13;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe14;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe15;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe16;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe17;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe19;
    wire [0:0] bb_floydWarshall_B8_out_c0_exe20;
    wire [0:0] bb_floydWarshall_B8_out_c0_exe21;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe2278;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe3279;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe4280;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe5281;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe6282;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe7;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe8;
    wire [31:0] bb_floydWarshall_B8_out_c0_exe9;
    wire [0:0] bb_floydWarshall_B8_out_exiting_stall_out;
    wire [0:0] bb_floydWarshall_B8_out_exiting_valid_out;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_35_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_36_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_37_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_38_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_39_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_40_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_41_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_42_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_43_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_44_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_45_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_46_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_47_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_48_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_49_0;
    wire [31:0] bb_floydWarshall_B8_out_intel_reserved_ffwd_50_0;
    wire [0:0] bb_floydWarshall_B8_out_pipeline_valid_out;
    wire [0:0] bb_floydWarshall_B8_out_stall_out_0;
    wire [0:0] bb_floydWarshall_B8_out_stall_out_1;
    wire [0:0] bb_floydWarshall_B8_out_valid_out_0;
    wire [31:0] bb_floydWarshall_B9_out_c0_exe1919;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_38;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_39;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_40;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_41;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_42;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_43;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_44;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_45;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_46;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_47;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_48;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_49;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_50;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_51;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_52;
    wire [31:0] bb_floydWarshall_B9_out_feedback_out_53;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_38;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_39;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_40;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_41;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_42;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_43;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_44;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_45;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_46;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_47;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_48;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_49;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_50;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_51;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_52;
    wire [0:0] bb_floydWarshall_B9_out_feedback_valid_out_53;
    wire [0:0] bb_floydWarshall_B9_out_stall_out_0;
    wire [0:0] bb_floydWarshall_B9_out_valid_out_0;
    wire [1:0] c_i2_0101_q;
    wire [31:0] c_i32_022_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going105_floydwarshall8_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going105_floydwarshall8_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going105_floydwarshall8_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going105_floydwarshall8_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going135_floydwarshall2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going135_floydwarshall2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going135_floydwarshall2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going135_floydwarshall2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going139_floydwarshall1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going139_floydwarshall1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going139_floydwarshall1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going139_floydwarshall1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going98_floydwarshall2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going98_floydwarshall2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going98_floydwarshall2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going98_floydwarshall2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_floydwarshall6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_floydwarshall6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_floydwarshall6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_floydwarshall6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_floydWarshall0_out_o_stall;
    wire [0:0] loop_limiter_floydWarshall0_out_o_valid;
    wire [0:0] loop_limiter_floydWarshall1_out_o_stall;
    wire [0:0] loop_limiter_floydWarshall1_out_o_valid;
    wire [0:0] loop_limiter_floydWarshall2_out_o_stall;
    wire [0:0] loop_limiter_floydWarshall2_out_o_valid;
    wire [0:0] loop_limiter_floydWarshall3_out_o_stall;
    wire [0:0] loop_limiter_floydWarshall3_out_o_valid;
    wire [0:0] loop_limiter_floydWarshall4_out_o_stall;
    wire [0:0] loop_limiter_floydWarshall4_out_o_valid;
    wire [0:0] bb_floydWarshall_B10_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_floydWarshall_B10_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_floydWarshall_B10_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_floydWarshall_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_floydWarshall_B11_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_floydWarshall_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_floydWarshall_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_floydWarshall_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_floydWarshall_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_floydWarshall_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_floydWarshall_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_floydWarshall_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_floydWarshall_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_floydWarshall_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_floydWarshall_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_floydWarshall_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_floydWarshall_B6_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_floydWarshall_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_floydWarshall_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_floydWarshall_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_floydWarshall_B6_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_floydWarshall_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_floydWarshall_B6_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_floydWarshall_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_floydWarshall_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_floydWarshall_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_floydWarshall_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [0:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [31:0] bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [0:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [0:0] bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_18_tpl;


    // c_i2_0101(CONSTANT,42)
    assign c_i2_0101_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going139_floydwarshall1_valid_fifo(BLACKBOX,75)
    floydWarshall_i_llvm_fpga_pipeline_keep_A000000Zwarshall1_valid_fifo thei_llvm_fpga_pipeline_keep_going139_floydwarshall1_valid_fifo (
        .in_data_in(c_i2_0101_q),
        .in_stall_in(bb_floydWarshall_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going139_floydwarshall1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going139_floydwarshall1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going139_floydwarshall1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going135_floydwarshall2_valid_fifo(BLACKBOX,73)
    floydWarshall_i_llvm_fpga_pipeline_keep_A000000Zwarshall2_valid_fifo thei_llvm_fpga_pipeline_keep_going135_floydwarshall2_valid_fifo (
        .in_data_in(c_i2_0101_q),
        .in_stall_in(bb_floydWarshall_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going135_floydwarshall2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going135_floydwarshall2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going135_floydwarshall2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going105_floydwarshall8_valid_fifo(BLACKBOX,71)
    floydWarshall_i_llvm_fpga_pipeline_keep_A000000Zwarshall8_valid_fifo thei_llvm_fpga_pipeline_keep_going105_floydwarshall8_valid_fifo (
        .in_data_in(c_i2_0101_q),
        .in_stall_in(bb_floydWarshall_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B6_sr_0_aunroll_x(BLACKBOX,116)
    floydWarshall_bb_B6_sr_0 thebb_floydWarshall_B6_sr_0_aunroll_x (
        .in_i_stall(bb_floydWarshall_B6_out_stall_out_0),
        .in_i_valid(bb_floydWarshall_B10_out_valid_out_0),
        .in_i_data_0_tpl(bb_floydWarshall_B10_out_c0_exe1918),
        .in_i_data_1_tpl(GND_q),
        .out_o_stall(bb_floydWarshall_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_floydWarshall_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_floydWarshall_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_floydWarshall_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going98_floydwarshall2_valid_fifo(BLACKBOX,77)
    floydWarshall_i_llvm_fpga_pipeline_keep_A000001Zwarshall2_valid_fifo thei_llvm_fpga_pipeline_keep_going98_floydwarshall2_valid_fifo (
        .in_data_in(c_i2_0101_q),
        .in_stall_in(bb_floydWarshall_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going98_floydwarshall2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going98_floydwarshall2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going98_floydwarshall2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_floydWarshall_B8_sr_1_aunroll_x(BLACKBOX,119)
    floydWarshall_bb_B8_sr_1 thebb_floydWarshall_B8_sr_1_aunroll_x (
        .in_i_stall(bb_floydWarshall_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_floydWarshall4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_floydWarshall_B7_out_c0_exe6),
        .in_i_data_2_tpl(bb_floydWarshall_B7_out_A_sroa_0_4_replace_phi),
        .in_i_data_3_tpl(bb_floydWarshall_B7_out_A_sroa_7_4_replace_phi),
        .in_i_data_4_tpl(bb_floydWarshall_B7_out_A_sroa_12_4_replace_phi),
        .in_i_data_5_tpl(bb_floydWarshall_B7_out_A_sroa_17_4_replace_phi),
        .in_i_data_6_tpl(bb_floydWarshall_B7_out_A_sroa_22_4_replace_phi),
        .in_i_data_7_tpl(bb_floydWarshall_B7_out_A_sroa_42_4_replace_phi),
        .in_i_data_8_tpl(bb_floydWarshall_B7_out_A_sroa_62_4_replace_phi),
        .in_i_data_9_tpl(bb_floydWarshall_B7_out_A_sroa_27_4_replace_phi),
        .in_i_data_10_tpl(bb_floydWarshall_B7_out_A_sroa_47_4_replace_phi),
        .in_i_data_11_tpl(bb_floydWarshall_B7_out_A_sroa_67_4_replace_phi),
        .in_i_data_12_tpl(bb_floydWarshall_B7_out_A_sroa_32_4_replace_phi),
        .in_i_data_13_tpl(bb_floydWarshall_B7_out_A_sroa_52_4_replace_phi),
        .in_i_data_14_tpl(bb_floydWarshall_B7_out_A_sroa_72_4_replace_phi),
        .in_i_data_15_tpl(bb_floydWarshall_B7_out_A_sroa_37_4_replace_phi),
        .in_i_data_16_tpl(bb_floydWarshall_B7_out_A_sroa_57_4_replace_phi),
        .in_i_data_17_tpl(bb_floydWarshall_B7_out_A_sroa_77_4_replace_phi),
        .in_i_data_18_tpl(bb_floydWarshall_B7_out_c0_exe1255),
        .in_i_data_19_tpl(bb_floydWarshall_B7_out_c0_exe2256),
        .in_i_data_20_tpl(bb_floydWarshall_B7_out_c0_exe3257),
        .in_i_data_21_tpl(bb_floydWarshall_B7_out_c0_exe4258),
        .out_o_stall(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_21_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_floydWarshall4(BLACKBOX,97)
    floydWarshall_loop_limiter_4 theloop_limiter_floydWarshall4 (
        .in_i_stall(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_floydWarshall_B8_out_exiting_stall_out),
        .in_i_valid(bb_floydWarshall_B7_out_valid_out_0),
        .in_i_valid_exit(bb_floydWarshall_B8_out_exiting_valid_out),
        .out_o_stall(loop_limiter_floydWarshall4_out_o_stall),
        .out_o_valid(loop_limiter_floydWarshall4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going98_floydwarshall2_sr(BLACKBOX,76)
    floydWarshall_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_sr thei_llvm_fpga_pipeline_keep_going98_floydwarshall2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going98_floydwarshall2_valid_fifo_out_stall_out),
        .in_i_valid(bb_floydWarshall_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going98_floydwarshall2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going98_floydwarshall2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B9_sr_0_aunroll_x(BLACKBOX,120)
    floydWarshall_bb_B9_sr_0 thebb_floydWarshall_B9_sr_0_aunroll_x (
        .in_i_stall(bb_floydWarshall_B9_out_stall_out_0),
        .in_i_valid(bb_floydWarshall_B8_out_valid_out_0),
        .in_i_data_0_tpl(bb_floydWarshall_B8_out_c0_exe2278),
        .in_i_data_1_tpl(bb_floydWarshall_B8_out_c0_exe3279),
        .in_i_data_2_tpl(bb_floydWarshall_B8_out_c0_exe4280),
        .in_i_data_3_tpl(bb_floydWarshall_B8_out_c0_exe5281),
        .in_i_data_4_tpl(bb_floydWarshall_B8_out_c0_exe6282),
        .in_i_data_5_tpl(bb_floydWarshall_B8_out_c0_exe7),
        .in_i_data_6_tpl(bb_floydWarshall_B8_out_c0_exe8),
        .in_i_data_7_tpl(bb_floydWarshall_B8_out_c0_exe9),
        .in_i_data_8_tpl(bb_floydWarshall_B8_out_c0_exe10),
        .in_i_data_9_tpl(bb_floydWarshall_B8_out_c0_exe11),
        .in_i_data_10_tpl(bb_floydWarshall_B8_out_c0_exe12),
        .in_i_data_11_tpl(bb_floydWarshall_B8_out_c0_exe13),
        .in_i_data_12_tpl(bb_floydWarshall_B8_out_c0_exe14),
        .in_i_data_13_tpl(bb_floydWarshall_B8_out_c0_exe15),
        .in_i_data_14_tpl(bb_floydWarshall_B8_out_c0_exe16),
        .in_i_data_15_tpl(bb_floydWarshall_B8_out_c0_exe17),
        .in_i_data_16_tpl(bb_floydWarshall_B8_out_c0_exe19),
        .in_i_data_17_tpl(bb_floydWarshall_B8_out_c0_exe20),
        .in_i_data_18_tpl(bb_floydWarshall_B8_out_c0_exe21),
        .out_o_stall(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_18_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B9(BLACKBOX,13)
    floydWarshall_bb_B9 thebb_floydWarshall_B9 (
        .in_c0_exe1010_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe1111_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe1212_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1313_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe1414_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe1515_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe1616_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe1717_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe1919_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe2020_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_c0_exe2121_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_c0_exe22782_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe32793_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe42804_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe52815_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe62826_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe77_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe88_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe99_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_feedback_stall_in_38(bb_floydWarshall_B7_out_feedback_stall_out_38),
        .in_feedback_stall_in_39(bb_floydWarshall_B7_out_feedback_stall_out_39),
        .in_feedback_stall_in_40(bb_floydWarshall_B7_out_feedback_stall_out_40),
        .in_feedback_stall_in_41(bb_floydWarshall_B7_out_feedback_stall_out_41),
        .in_feedback_stall_in_42(bb_floydWarshall_B7_out_feedback_stall_out_42),
        .in_feedback_stall_in_43(bb_floydWarshall_B7_out_feedback_stall_out_43),
        .in_feedback_stall_in_44(bb_floydWarshall_B7_out_feedback_stall_out_44),
        .in_feedback_stall_in_45(bb_floydWarshall_B7_out_feedback_stall_out_45),
        .in_feedback_stall_in_46(bb_floydWarshall_B7_out_feedback_stall_out_46),
        .in_feedback_stall_in_47(bb_floydWarshall_B7_out_feedback_stall_out_47),
        .in_feedback_stall_in_48(bb_floydWarshall_B7_out_feedback_stall_out_48),
        .in_feedback_stall_in_49(bb_floydWarshall_B7_out_feedback_stall_out_49),
        .in_feedback_stall_in_50(bb_floydWarshall_B7_out_feedback_stall_out_50),
        .in_feedback_stall_in_51(bb_floydWarshall_B7_out_feedback_stall_out_51),
        .in_feedback_stall_in_52(bb_floydWarshall_B7_out_feedback_stall_out_52),
        .in_feedback_stall_in_53(bb_floydWarshall_B7_out_feedback_stall_out_53),
        .in_stall_in_0(bb_floydWarshall_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1919(bb_floydWarshall_B9_out_c0_exe1919),
        .out_feedback_out_38(bb_floydWarshall_B9_out_feedback_out_38),
        .out_feedback_out_39(bb_floydWarshall_B9_out_feedback_out_39),
        .out_feedback_out_40(bb_floydWarshall_B9_out_feedback_out_40),
        .out_feedback_out_41(bb_floydWarshall_B9_out_feedback_out_41),
        .out_feedback_out_42(bb_floydWarshall_B9_out_feedback_out_42),
        .out_feedback_out_43(bb_floydWarshall_B9_out_feedback_out_43),
        .out_feedback_out_44(bb_floydWarshall_B9_out_feedback_out_44),
        .out_feedback_out_45(bb_floydWarshall_B9_out_feedback_out_45),
        .out_feedback_out_46(bb_floydWarshall_B9_out_feedback_out_46),
        .out_feedback_out_47(bb_floydWarshall_B9_out_feedback_out_47),
        .out_feedback_out_48(bb_floydWarshall_B9_out_feedback_out_48),
        .out_feedback_out_49(bb_floydWarshall_B9_out_feedback_out_49),
        .out_feedback_out_50(bb_floydWarshall_B9_out_feedback_out_50),
        .out_feedback_out_51(bb_floydWarshall_B9_out_feedback_out_51),
        .out_feedback_out_52(bb_floydWarshall_B9_out_feedback_out_52),
        .out_feedback_out_53(bb_floydWarshall_B9_out_feedback_out_53),
        .out_feedback_valid_out_38(bb_floydWarshall_B9_out_feedback_valid_out_38),
        .out_feedback_valid_out_39(bb_floydWarshall_B9_out_feedback_valid_out_39),
        .out_feedback_valid_out_40(bb_floydWarshall_B9_out_feedback_valid_out_40),
        .out_feedback_valid_out_41(bb_floydWarshall_B9_out_feedback_valid_out_41),
        .out_feedback_valid_out_42(bb_floydWarshall_B9_out_feedback_valid_out_42),
        .out_feedback_valid_out_43(bb_floydWarshall_B9_out_feedback_valid_out_43),
        .out_feedback_valid_out_44(bb_floydWarshall_B9_out_feedback_valid_out_44),
        .out_feedback_valid_out_45(bb_floydWarshall_B9_out_feedback_valid_out_45),
        .out_feedback_valid_out_46(bb_floydWarshall_B9_out_feedback_valid_out_46),
        .out_feedback_valid_out_47(bb_floydWarshall_B9_out_feedback_valid_out_47),
        .out_feedback_valid_out_48(bb_floydWarshall_B9_out_feedback_valid_out_48),
        .out_feedback_valid_out_49(bb_floydWarshall_B9_out_feedback_valid_out_49),
        .out_feedback_valid_out_50(bb_floydWarshall_B9_out_feedback_valid_out_50),
        .out_feedback_valid_out_51(bb_floydWarshall_B9_out_feedback_valid_out_51),
        .out_feedback_valid_out_52(bb_floydWarshall_B9_out_feedback_valid_out_52),
        .out_feedback_valid_out_53(bb_floydWarshall_B9_out_feedback_valid_out_53),
        .out_stall_out_0(bb_floydWarshall_B9_out_stall_out_0),
        .out_valid_out_0(bb_floydWarshall_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B7(BLACKBOX,11)
    floydWarshall_bb_B7 thebb_floydWarshall_B7 (
        .in_feedback_in_38(bb_floydWarshall_B9_out_feedback_out_38),
        .in_feedback_in_39(bb_floydWarshall_B9_out_feedback_out_39),
        .in_feedback_in_40(bb_floydWarshall_B9_out_feedback_out_40),
        .in_feedback_in_41(bb_floydWarshall_B9_out_feedback_out_41),
        .in_feedback_in_42(bb_floydWarshall_B9_out_feedback_out_42),
        .in_feedback_in_43(bb_floydWarshall_B9_out_feedback_out_43),
        .in_feedback_in_44(bb_floydWarshall_B9_out_feedback_out_44),
        .in_feedback_in_45(bb_floydWarshall_B9_out_feedback_out_45),
        .in_feedback_in_46(bb_floydWarshall_B9_out_feedback_out_46),
        .in_feedback_in_47(bb_floydWarshall_B9_out_feedback_out_47),
        .in_feedback_in_48(bb_floydWarshall_B9_out_feedback_out_48),
        .in_feedback_in_49(bb_floydWarshall_B9_out_feedback_out_49),
        .in_feedback_in_50(bb_floydWarshall_B9_out_feedback_out_50),
        .in_feedback_in_51(bb_floydWarshall_B9_out_feedback_out_51),
        .in_feedback_in_52(bb_floydWarshall_B9_out_feedback_out_52),
        .in_feedback_in_53(bb_floydWarshall_B9_out_feedback_out_53),
        .in_feedback_valid_in_38(bb_floydWarshall_B9_out_feedback_valid_out_38),
        .in_feedback_valid_in_39(bb_floydWarshall_B9_out_feedback_valid_out_39),
        .in_feedback_valid_in_40(bb_floydWarshall_B9_out_feedback_valid_out_40),
        .in_feedback_valid_in_41(bb_floydWarshall_B9_out_feedback_valid_out_41),
        .in_feedback_valid_in_42(bb_floydWarshall_B9_out_feedback_valid_out_42),
        .in_feedback_valid_in_43(bb_floydWarshall_B9_out_feedback_valid_out_43),
        .in_feedback_valid_in_44(bb_floydWarshall_B9_out_feedback_valid_out_44),
        .in_feedback_valid_in_45(bb_floydWarshall_B9_out_feedback_valid_out_45),
        .in_feedback_valid_in_46(bb_floydWarshall_B9_out_feedback_valid_out_46),
        .in_feedback_valid_in_47(bb_floydWarshall_B9_out_feedback_valid_out_47),
        .in_feedback_valid_in_48(bb_floydWarshall_B9_out_feedback_valid_out_48),
        .in_feedback_valid_in_49(bb_floydWarshall_B9_out_feedback_valid_out_49),
        .in_feedback_valid_in_50(bb_floydWarshall_B9_out_feedback_valid_out_50),
        .in_feedback_valid_in_51(bb_floydWarshall_B9_out_feedback_valid_out_51),
        .in_feedback_valid_in_52(bb_floydWarshall_B9_out_feedback_valid_out_52),
        .in_feedback_valid_in_53(bb_floydWarshall_B9_out_feedback_valid_out_53),
        .in_forked31_0(GND_q),
        .in_forked31_1(bb_floydWarshall_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_inc55188_0(c_i32_022_q),
        .in_inc55188_1(bb_floydWarshall_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_18_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_20_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_25_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_26_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_27_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_29_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_30_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_32_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_33_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_33_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going98_floydwarshall2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_floydWarshall4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going98_floydwarshall2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_floydWarshall_B7_sr_1_aunroll_x_out_o_valid),
        .out_A_sroa_0_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_0_4_replace_phi),
        .out_A_sroa_12_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_12_4_replace_phi),
        .out_A_sroa_17_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_17_4_replace_phi),
        .out_A_sroa_22_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_22_4_replace_phi),
        .out_A_sroa_27_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_27_4_replace_phi),
        .out_A_sroa_32_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_32_4_replace_phi),
        .out_A_sroa_37_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_37_4_replace_phi),
        .out_A_sroa_42_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_42_4_replace_phi),
        .out_A_sroa_47_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_47_4_replace_phi),
        .out_A_sroa_52_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_52_4_replace_phi),
        .out_A_sroa_57_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_57_4_replace_phi),
        .out_A_sroa_62_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_62_4_replace_phi),
        .out_A_sroa_67_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_67_4_replace_phi),
        .out_A_sroa_72_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_72_4_replace_phi),
        .out_A_sroa_77_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_77_4_replace_phi),
        .out_A_sroa_7_4_replace_phi(bb_floydWarshall_B7_out_A_sroa_7_4_replace_phi),
        .out_c0_exe1255(bb_floydWarshall_B7_out_c0_exe1255),
        .out_c0_exe2256(bb_floydWarshall_B7_out_c0_exe2256),
        .out_c0_exe3257(bb_floydWarshall_B7_out_c0_exe3257),
        .out_c0_exe4258(bb_floydWarshall_B7_out_c0_exe4258),
        .out_c0_exe6(bb_floydWarshall_B7_out_c0_exe6),
        .out_exiting_stall_out(bb_floydWarshall_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_floydWarshall_B7_out_exiting_valid_out),
        .out_feedback_stall_out_38(bb_floydWarshall_B7_out_feedback_stall_out_38),
        .out_feedback_stall_out_39(bb_floydWarshall_B7_out_feedback_stall_out_39),
        .out_feedback_stall_out_40(bb_floydWarshall_B7_out_feedback_stall_out_40),
        .out_feedback_stall_out_41(bb_floydWarshall_B7_out_feedback_stall_out_41),
        .out_feedback_stall_out_42(bb_floydWarshall_B7_out_feedback_stall_out_42),
        .out_feedback_stall_out_43(bb_floydWarshall_B7_out_feedback_stall_out_43),
        .out_feedback_stall_out_44(bb_floydWarshall_B7_out_feedback_stall_out_44),
        .out_feedback_stall_out_45(bb_floydWarshall_B7_out_feedback_stall_out_45),
        .out_feedback_stall_out_46(bb_floydWarshall_B7_out_feedback_stall_out_46),
        .out_feedback_stall_out_47(bb_floydWarshall_B7_out_feedback_stall_out_47),
        .out_feedback_stall_out_48(bb_floydWarshall_B7_out_feedback_stall_out_48),
        .out_feedback_stall_out_49(bb_floydWarshall_B7_out_feedback_stall_out_49),
        .out_feedback_stall_out_50(bb_floydWarshall_B7_out_feedback_stall_out_50),
        .out_feedback_stall_out_51(bb_floydWarshall_B7_out_feedback_stall_out_51),
        .out_feedback_stall_out_52(bb_floydWarshall_B7_out_feedback_stall_out_52),
        .out_feedback_stall_out_53(bb_floydWarshall_B7_out_feedback_stall_out_53),
        .out_pipeline_valid_out(bb_floydWarshall_B7_out_pipeline_valid_out),
        .out_stall_out_0(bb_floydWarshall_B7_out_stall_out_0),
        .out_stall_out_1(bb_floydWarshall_B7_out_stall_out_1),
        .out_valid_out_0(bb_floydWarshall_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B7_sr_1_aunroll_x(BLACKBOX,118)
    floydWarshall_bb_B7_sr_1 thebb_floydWarshall_B7_sr_1_aunroll_x (
        .in_i_stall(bb_floydWarshall_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_floydWarshall3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_floydWarshall_B6_out_inc55),
        .out_o_stall(bb_floydWarshall_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_floydWarshall_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_floydWarshall_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_floydWarshall_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_floydWarshall3(BLACKBOX,96)
    floydWarshall_loop_limiter_3 theloop_limiter_floydWarshall3 (
        .in_i_stall(bb_floydWarshall_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_floydWarshall_B7_out_exiting_stall_out),
        .in_i_valid(bb_floydWarshall_B6_out_valid_out_0),
        .in_i_valid_exit(bb_floydWarshall_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_floydWarshall3_out_o_stall),
        .out_o_valid(loop_limiter_floydWarshall3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_floydwarshall6_valid_fifo(BLACKBOX,79)
    floydWarshall_i_llvm_fpga_pipeline_keep_A000000Zwarshall6_valid_fifo thei_llvm_fpga_pipeline_keep_going_floydwarshall6_valid_fifo (
        .in_data_in(c_i2_0101_q),
        .in_stall_in(bb_floydWarshall_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_floydwarshall6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_floydwarshall6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_floydwarshall6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_floydwarshall6_sr(BLACKBOX,78)
    floydWarshall_i_llvm_fpga_pipeline_keep_going_floydwarshall6_sr thei_llvm_fpga_pipeline_keep_going_floydwarshall6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_floydwarshall6_valid_fifo_out_stall_out),
        .in_i_valid(bb_floydWarshall_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_floydwarshall6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_floydwarshall6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B8(BLACKBOX,12)
    floydWarshall_bb_B8 thebb_floydWarshall_B8 (
        .in_A_sroa_0_4_replace_phi191_0(c_i32_022_q),
        .in_A_sroa_0_4_replace_phi191_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_A_sroa_12_4_replace_phi193_0(c_i32_022_q),
        .in_A_sroa_12_4_replace_phi193_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_A_sroa_17_4_replace_phi194_0(c_i32_022_q),
        .in_A_sroa_17_4_replace_phi194_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_A_sroa_22_4_replace_phi195_0(c_i32_022_q),
        .in_A_sroa_22_4_replace_phi195_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_A_sroa_27_4_replace_phi198_0(c_i32_022_q),
        .in_A_sroa_27_4_replace_phi198_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_A_sroa_32_4_replace_phi201_0(c_i32_022_q),
        .in_A_sroa_32_4_replace_phi201_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_A_sroa_37_4_replace_phi204_0(c_i32_022_q),
        .in_A_sroa_37_4_replace_phi204_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_A_sroa_42_4_replace_phi196_0(c_i32_022_q),
        .in_A_sroa_42_4_replace_phi196_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_A_sroa_47_4_replace_phi199_0(c_i32_022_q),
        .in_A_sroa_47_4_replace_phi199_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_A_sroa_52_4_replace_phi202_0(c_i32_022_q),
        .in_A_sroa_52_4_replace_phi202_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_A_sroa_57_4_replace_phi205_0(c_i32_022_q),
        .in_A_sroa_57_4_replace_phi205_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_A_sroa_62_4_replace_phi197_0(c_i32_022_q),
        .in_A_sroa_62_4_replace_phi197_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_A_sroa_67_4_replace_phi200_0(c_i32_022_q),
        .in_A_sroa_67_4_replace_phi200_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_A_sroa_72_4_replace_phi203_0(c_i32_022_q),
        .in_A_sroa_72_4_replace_phi203_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_A_sroa_77_4_replace_phi206_0(c_i32_022_q),
        .in_A_sroa_77_4_replace_phi206_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_A_sroa_7_4_replace_phi192_0(c_i32_022_q),
        .in_A_sroa_7_4_replace_phi192_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_exitcond9207_0(GND_q),
        .in_exitcond9207_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_forked81_0(GND_q),
        .in_forked81_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_127_pop54209_0(c_i32_022_q),
        .in_i_127_pop54209_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_inc55178_pop55210_0(c_i32_022_q),
        .in_inc55178_pop55210_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_inc55190_0(c_i32_022_q),
        .in_inc55190_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_17_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_17_0),
        .in_notcmp97208_0(GND_q),
        .in_notcmp97208_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_floydwarshall6_sr_out_o_stall),
        .in_stall_in_0(bb_floydWarshall_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_floydwarshall6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_floydWarshall_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_floydWarshall_B8_out_c0_exe10),
        .out_c0_exe11(bb_floydWarshall_B8_out_c0_exe11),
        .out_c0_exe12(bb_floydWarshall_B8_out_c0_exe12),
        .out_c0_exe13(bb_floydWarshall_B8_out_c0_exe13),
        .out_c0_exe14(bb_floydWarshall_B8_out_c0_exe14),
        .out_c0_exe15(bb_floydWarshall_B8_out_c0_exe15),
        .out_c0_exe16(bb_floydWarshall_B8_out_c0_exe16),
        .out_c0_exe17(bb_floydWarshall_B8_out_c0_exe17),
        .out_c0_exe19(bb_floydWarshall_B8_out_c0_exe19),
        .out_c0_exe20(bb_floydWarshall_B8_out_c0_exe20),
        .out_c0_exe21(bb_floydWarshall_B8_out_c0_exe21),
        .out_c0_exe2278(bb_floydWarshall_B8_out_c0_exe2278),
        .out_c0_exe3279(bb_floydWarshall_B8_out_c0_exe3279),
        .out_c0_exe4280(bb_floydWarshall_B8_out_c0_exe4280),
        .out_c0_exe5281(bb_floydWarshall_B8_out_c0_exe5281),
        .out_c0_exe6282(bb_floydWarshall_B8_out_c0_exe6282),
        .out_c0_exe7(bb_floydWarshall_B8_out_c0_exe7),
        .out_c0_exe8(bb_floydWarshall_B8_out_c0_exe8),
        .out_c0_exe9(bb_floydWarshall_B8_out_c0_exe9),
        .out_exiting_stall_out(bb_floydWarshall_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_floydWarshall_B8_out_exiting_valid_out),
        .out_intel_reserved_ffwd_35_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_50_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_50_0),
        .out_pipeline_valid_out(bb_floydWarshall_B8_out_pipeline_valid_out),
        .out_stall_out_0(bb_floydWarshall_B8_out_stall_out_0),
        .out_stall_out_1(bb_floydWarshall_B8_out_stall_out_1),
        .out_valid_out_0(bb_floydWarshall_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B6(BLACKBOX,10)
    floydWarshall_bb_B6 thebb_floydWarshall_B6 (
        .in_forked_0(bb_floydWarshall_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_forked_1(bb_floydWarshall_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_10_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_1_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_35_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_36_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_38_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_3_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_40_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_41_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_41_0),
        .in_intel_reserved_ffwd_42_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_42_0),
        .in_intel_reserved_ffwd_43_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_43_0),
        .in_intel_reserved_ffwd_44_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_46_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_46_0),
        .in_intel_reserved_ffwd_47_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_47_0),
        .in_intel_reserved_ffwd_48_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_48_0),
        .in_intel_reserved_ffwd_49_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_49_0),
        .in_intel_reserved_ffwd_4_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_50_0(bb_floydWarshall_B8_out_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_5_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_9_0),
        .in_k_028_0(bb_floydWarshall_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_k_028_1(bb_floydWarshall_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(loop_limiter_floydWarshall3_out_o_stall),
        .in_valid_in_0(bb_floydWarshall_B6_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_floydWarshall_B6_sr_1_aunroll_x_out_o_valid),
        .out_inc55(bb_floydWarshall_B6_out_inc55),
        .out_intel_reserved_ffwd_17_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_34_0),
        .out_stall_out_0(bb_floydWarshall_B6_out_stall_out_0),
        .out_stall_out_1(bb_floydWarshall_B6_out_stall_out_1),
        .out_valid_out_0(bb_floydWarshall_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B10_sr_0_aunroll_x(BLACKBOX,110)
    floydWarshall_bb_B10_sr_0 thebb_floydWarshall_B10_sr_0_aunroll_x (
        .in_i_stall(bb_floydWarshall_B10_out_stall_out_0),
        .in_i_valid(bb_floydWarshall_B9_out_valid_out_0),
        .in_i_data_0_tpl(bb_floydWarshall_B9_out_c0_exe1919),
        .out_o_stall(bb_floydWarshall_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_floydWarshall_B10_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_floydWarshall_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B10(BLACKBOX,3)
    floydWarshall_bb_B10 thebb_floydWarshall_B10 (
        .in_c0_exe1918_0(bb_floydWarshall_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_34_0(bb_floydWarshall_B6_out_intel_reserved_ffwd_34_0),
        .in_stall_in_0(bb_floydWarshall_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_floydWarshall_B11_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_floydWarshall_B10_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1918(bb_floydWarshall_B10_out_c0_exe1918),
        .out_stall_out_0(bb_floydWarshall_B10_out_stall_out_0),
        .out_valid_out_0(bb_floydWarshall_B10_out_valid_out_0),
        .out_valid_out_1(bb_floydWarshall_B10_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B11_sr_0_aunroll_x(BLACKBOX,111)
    floydWarshall_bb_B11_sr_0 thebb_floydWarshall_B11_sr_0_aunroll_x (
        .in_i_stall(bb_floydWarshall_B11_out_stall_out_0),
        .in_i_valid(bb_floydWarshall_B10_out_valid_out_1),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_floydWarshall_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_floydWarshall_B11_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B6_sr_1_aunroll_x(BLACKBOX,117)
    floydWarshall_bb_B6_sr_1 thebb_floydWarshall_B6_sr_1_aunroll_x (
        .in_i_stall(bb_floydWarshall_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_floydWarshall1_out_o_valid),
        .in_i_data_0_tpl(c_i32_022_q),
        .in_i_data_1_tpl(VCC_q),
        .out_o_stall(bb_floydWarshall_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_floydWarshall_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_floydWarshall_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_floydWarshall_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_floydWarshall1(BLACKBOX,94)
    floydWarshall_loop_limiter_1 theloop_limiter_floydWarshall1 (
        .in_i_stall(bb_floydWarshall_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_floydWarshall_B11_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_floydWarshall_B5_out_valid_out_0),
        .in_i_valid_exit(bb_floydWarshall_B10_out_valid_out_1),
        .out_o_stall(loop_limiter_floydWarshall1_out_o_stall),
        .out_o_valid(loop_limiter_floydWarshall1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B5(BLACKBOX,9)
    floydWarshall_bb_B5 thebb_floydWarshall_B5 (
        .in_stall_in_0(loop_limiter_floydWarshall1_out_o_stall),
        .in_valid_in_0(bb_floydWarshall_B5_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_floydWarshall_B5_out_stall_out_0),
        .out_valid_out_0(bb_floydWarshall_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B5_sr_0_aunroll_x(BLACKBOX,115)
    floydWarshall_bb_B5_sr_0 thebb_floydWarshall_B5_sr_0_aunroll_x (
        .in_i_stall(bb_floydWarshall_B5_out_stall_out_0),
        .in_i_valid(bb_floydWarshall_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_floydWarshall_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_floydWarshall_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B4(BLACKBOX,8)
    floydWarshall_bb_B4 thebb_floydWarshall_B4 (
        .in_c0_exe32441_0(bb_floydWarshall_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_floydWarshall_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_floydWarshall_B4_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_floydWarshall_B4_out_stall_out_0),
        .out_valid_out_0(bb_floydWarshall_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B4_sr_0_aunroll_x(BLACKBOX,114)
    floydWarshall_bb_B4_sr_0 thebb_floydWarshall_B4_sr_0_aunroll_x (
        .in_i_stall(bb_floydWarshall_B4_out_stall_out_0),
        .in_i_valid(bb_floydWarshall_B3_out_valid_out_0),
        .in_i_data_0_tpl(bb_floydWarshall_B3_out_c0_exe3244),
        .out_o_stall(bb_floydWarshall_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_floydWarshall_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_floydWarshall_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going105_floydwarshall8_sr(BLACKBOX,70)
    floydWarshall_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_sr thei_llvm_fpga_pipeline_keep_going105_floydwarshall8_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_valid_fifo_out_stall_out),
        .in_i_valid(bb_floydWarshall_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_022(CONSTANT,47)
    assign c_i32_022_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_floydWarshall_B3(BLACKBOX,7)
    floydWarshall_bb_B3 thebb_floydWarshall_B3 (
        .in_exitcond3184_0(GND_q),
        .in_exitcond3184_1(bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_forked102_0(GND_q),
        .in_forked102_1(bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_forked141183_0(GND_q),
        .in_forked141183_1(bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_i_030_pop13186_0(c_i32_022_q),
        .in_i_030_pop13186_1(bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_intel_reserved_ffwd_0_0(bb_floydWarshall_B1_start_out_intel_reserved_ffwd_0_0),
        .in_notcmp133185_0(GND_q),
        .in_notcmp133185_1(bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_sr_out_o_stall),
        .in_stall_in_0(bb_floydWarshall_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_floydWarshall4_floydWarshall_avm_readdata(in_unnamed_floydWarshall4_floydWarshall_avm_readdata),
        .in_unnamed_floydWarshall4_floydWarshall_avm_readdatavalid(in_unnamed_floydWarshall4_floydWarshall_avm_readdatavalid),
        .in_unnamed_floydWarshall4_floydWarshall_avm_waitrequest(in_unnamed_floydWarshall4_floydWarshall_avm_waitrequest),
        .in_unnamed_floydWarshall4_floydWarshall_avm_writeack(in_unnamed_floydWarshall4_floydWarshall_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_floydWarshall_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3244(bb_floydWarshall_B3_out_c0_exe3244),
        .out_exiting_stall_out(bb_floydWarshall_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_floydWarshall_B3_out_exiting_valid_out),
        .out_intel_reserved_ffwd_10_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_1_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_floydWarshall_B3_out_intel_reserved_ffwd_9_0),
        .out_pipeline_valid_out(bb_floydWarshall_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_floydWarshall_B3_out_stall_out_0),
        .out_stall_out_1(bb_floydWarshall_B3_out_stall_out_1),
        .out_unnamed_floydWarshall4_floydWarshall_avm_address(bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_address),
        .out_unnamed_floydWarshall4_floydWarshall_avm_burstcount(bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_burstcount),
        .out_unnamed_floydWarshall4_floydWarshall_avm_byteenable(bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_byteenable),
        .out_unnamed_floydWarshall4_floydWarshall_avm_enable(bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_enable),
        .out_unnamed_floydWarshall4_floydWarshall_avm_read(bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_read),
        .out_unnamed_floydWarshall4_floydWarshall_avm_write(bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_write),
        .out_unnamed_floydWarshall4_floydWarshall_avm_writedata(bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_writedata),
        .out_valid_out_0(bb_floydWarshall_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B3_sr_1_aunroll_x(BLACKBOX,113)
    floydWarshall_bb_B3_sr_1 thebb_floydWarshall_B3_sr_1_aunroll_x (
        .in_i_stall(bb_floydWarshall_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_floydWarshall2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_floydWarshall_B2_out_c0_exe4),
        .in_i_data_2_tpl(bb_floydWarshall_B2_out_c0_exe1234),
        .in_i_data_3_tpl(bb_floydWarshall_B2_out_c0_exe2),
        .in_i_data_4_tpl(bb_floydWarshall_B2_out_c0_exe3),
        .out_o_stall(bb_floydWarshall_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_floydWarshall_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_floydWarshall_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_floydWarshall2(BLACKBOX,95)
    floydWarshall_loop_limiter_2 theloop_limiter_floydWarshall2 (
        .in_i_stall(bb_floydWarshall_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_floydWarshall_B3_out_exiting_stall_out),
        .in_i_valid(bb_floydWarshall_B2_out_valid_out_0),
        .in_i_valid_exit(bb_floydWarshall_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_floydWarshall2_out_o_stall),
        .out_o_valid(loop_limiter_floydWarshall2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going135_floydwarshall2_sr(BLACKBOX,72)
    floydWarshall_i_llvm_fpga_pipeline_keep_going135_floydwarshall2_sr thei_llvm_fpga_pipeline_keep_going135_floydwarshall2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going135_floydwarshall2_valid_fifo_out_stall_out),
        .in_i_valid(bb_floydWarshall_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going135_floydwarshall2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going135_floydwarshall2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_floydWarshall_B2(BLACKBOX,6)
    floydWarshall_bb_B2 thebb_floydWarshall_B2 (
        .in_forked141_0(GND_q),
        .in_forked141_1(bb_floydWarshall_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going135_floydwarshall2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_floydWarshall2_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going135_floydwarshall2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_floydWarshall_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1234(bb_floydWarshall_B2_out_c0_exe1234),
        .out_c0_exe2(bb_floydWarshall_B2_out_c0_exe2),
        .out_c0_exe3(bb_floydWarshall_B2_out_c0_exe3),
        .out_c0_exe4(bb_floydWarshall_B2_out_c0_exe4),
        .out_exiting_stall_out(bb_floydWarshall_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_floydWarshall_B2_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_floydWarshall_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_floydWarshall_B2_out_stall_out_0),
        .out_stall_out_1(bb_floydWarshall_B2_out_stall_out_1),
        .out_valid_out_0(bb_floydWarshall_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B2_sr_1_aunroll_x(BLACKBOX,112)
    floydWarshall_bb_B2_sr_1 thebb_floydWarshall_B2_sr_1_aunroll_x (
        .in_i_stall(bb_floydWarshall_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_floydWarshall0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_floydWarshall_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_floydWarshall_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_floydWarshall_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_floydWarshall0(BLACKBOX,93)
    floydWarshall_loop_limiter_0 theloop_limiter_floydWarshall0 (
        .in_i_stall(bb_floydWarshall_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_floydWarshall_B2_out_exiting_stall_out),
        .in_i_valid(bb_floydWarshall_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_floydWarshall_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_floydWarshall0_out_o_stall),
        .out_o_valid(loop_limiter_floydWarshall0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going139_floydwarshall1_sr(BLACKBOX,74)
    floydWarshall_i_llvm_fpga_pipeline_keep_going139_floydwarshall1_sr thei_llvm_fpga_pipeline_keep_going139_floydwarshall1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going139_floydwarshall1_valid_fifo_out_stall_out),
        .in_i_valid(bb_floydWarshall_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going139_floydwarshall1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going139_floydwarshall1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B11(BLACKBOX,4)
    floydWarshall_bb_B11 thebb_floydWarshall_B11 (
        .in_feedback_stall_in_1(bb_floydWarshall_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_floydWarshall_i_fifoready(in_iowr_bl_return_floydWarshall_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_floydWarshall_B11_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_floydWarshall_B11_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_floydWarshall_B11_out_feedback_valid_out_1),
        .out_iowr_bl_return_floydWarshall_o_fifodata(bb_floydWarshall_B11_out_iowr_bl_return_floydWarshall_o_fifodata),
        .out_iowr_bl_return_floydWarshall_o_fifovalid(bb_floydWarshall_B11_out_iowr_bl_return_floydWarshall_o_fifovalid),
        .out_stall_out_0(bb_floydWarshall_B11_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B1_start(BLACKBOX,5)
    floydWarshall_bb_B1_start thebb_floydWarshall_B1_start (
        .in_feedback_in_1(bb_floydWarshall_B11_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_floydWarshall_B11_out_feedback_valid_out_1),
        .in_iord_bl_call_floydWarshall_i_fifodata(in_iord_bl_call_floydWarshall_i_fifodata),
        .in_iord_bl_call_floydWarshall_i_fifovalid(in_iord_bl_call_floydWarshall_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going139_floydwarshall1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_floydWarshall0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going139_floydwarshall1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_floydWarshall_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_floydWarshall_B1_start_out_intel_reserved_ffwd_0_0),
        .out_iord_bl_call_floydWarshall_o_fifoready(bb_floydWarshall_B1_start_out_iord_bl_call_floydWarshall_o_fifoready),
        .out_pipeline_valid_out(bb_floydWarshall_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_floydWarshall_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(bb_floydWarshall_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_floydWarshall_o_fifoready(GPOUT,98)
    assign out_iord_bl_call_floydWarshall_o_fifoready = bb_floydWarshall_B1_start_out_iord_bl_call_floydWarshall_o_fifoready;

    // out_iowr_bl_return_floydWarshall_o_fifodata(GPOUT,99)
    assign out_iowr_bl_return_floydWarshall_o_fifodata = bb_floydWarshall_B11_out_iowr_bl_return_floydWarshall_o_fifodata;

    // out_iowr_bl_return_floydWarshall_o_fifovalid(GPOUT,100)
    assign out_iowr_bl_return_floydWarshall_o_fifovalid = bb_floydWarshall_B11_out_iowr_bl_return_floydWarshall_o_fifovalid;

    // bb_floydWarshall_B0_runOnce(BLACKBOX,2)
    floydWarshall_bb_B0_runOnce thebb_floydWarshall_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_floydWarshall_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,101)
    assign out_stall_out = bb_floydWarshall_B0_runOnce_out_stall_out_0;

    // out_unnamed_floydWarshall4_floydWarshall_avm_address(GPOUT,102)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_address = bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_address;

    // out_unnamed_floydWarshall4_floydWarshall_avm_burstcount(GPOUT,103)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_burstcount = bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_burstcount;

    // out_unnamed_floydWarshall4_floydWarshall_avm_byteenable(GPOUT,104)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_byteenable = bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_byteenable;

    // out_unnamed_floydWarshall4_floydWarshall_avm_enable(GPOUT,105)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_enable = bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_enable;

    // out_unnamed_floydWarshall4_floydWarshall_avm_read(GPOUT,106)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_read = bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_read;

    // out_unnamed_floydWarshall4_floydWarshall_avm_write(GPOUT,107)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_write = bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_write;

    // out_unnamed_floydWarshall4_floydWarshall_avm_writedata(GPOUT,108)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_writedata = bb_floydWarshall_B3_out_unnamed_floydWarshall4_floydWarshall_avm_writedata;

    // out_valid_out(GPOUT,109)
    assign out_valid_out = GND_q;

endmodule
