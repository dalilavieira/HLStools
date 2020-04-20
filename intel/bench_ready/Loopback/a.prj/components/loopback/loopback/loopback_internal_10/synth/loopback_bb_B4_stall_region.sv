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

// SystemVerilog created from loopback_bb_B4_stall_region
// SystemVerilog created on Sun Apr 19 21:28:19 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loopback_bb_B4_stall_region (
    input wire [0:0] in_iowr_bl_return_loopback_i_fifoready,
    output wire [31:0] out_iowr_bl_return_loopback_o_fifodata,
    output wire [0:0] out_iowr_bl_return_loopback_o_fifovalid,
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [15:0] in_intel_reserved_ffwd_99_0,
    input wire [15:0] in_intel_reserved_ffwd_100_0,
    input wire [15:0] in_intel_reserved_ffwd_69_0,
    input wire [15:0] in_intel_reserved_ffwd_70_0,
    input wire [15:0] in_intel_reserved_ffwd_71_0,
    input wire [15:0] in_intel_reserved_ffwd_72_0,
    input wire [15:0] in_intel_reserved_ffwd_73_0,
    input wire [15:0] in_intel_reserved_ffwd_74_0,
    input wire [15:0] in_intel_reserved_ffwd_75_0,
    input wire [15:0] in_intel_reserved_ffwd_76_0,
    input wire [15:0] in_intel_reserved_ffwd_77_0,
    input wire [15:0] in_intel_reserved_ffwd_78_0,
    input wire [15:0] in_intel_reserved_ffwd_79_0,
    input wire [15:0] in_intel_reserved_ffwd_80_0,
    input wire [15:0] in_intel_reserved_ffwd_81_0,
    input wire [15:0] in_intel_reserved_ffwd_82_0,
    input wire [15:0] in_intel_reserved_ffwd_83_0,
    input wire [15:0] in_intel_reserved_ffwd_84_0,
    input wire [15:0] in_intel_reserved_ffwd_85_0,
    input wire [15:0] in_intel_reserved_ffwd_86_0,
    input wire [15:0] in_intel_reserved_ffwd_87_0,
    input wire [15:0] in_intel_reserved_ffwd_88_0,
    input wire [15:0] in_intel_reserved_ffwd_89_0,
    input wire [15:0] in_intel_reserved_ffwd_90_0,
    input wire [15:0] in_intel_reserved_ffwd_91_0,
    input wire [15:0] in_intel_reserved_ffwd_92_0,
    input wire [15:0] in_intel_reserved_ffwd_93_0,
    input wire [15:0] in_intel_reserved_ffwd_94_0,
    input wire [15:0] in_intel_reserved_ffwd_95_0,
    input wire [15:0] in_intel_reserved_ffwd_96_0,
    input wire [15:0] in_intel_reserved_ffwd_97_0,
    input wire [15:0] in_intel_reserved_ffwd_98_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_063_q;
    wire [31:0] c_i32_156_q;
    wire [31:0] c_i32_257_q;
    wire [31:0] c_i32_358_q;
    wire [31:0] c_i32_459_q;
    wire [31:0] c_i32_560_q;
    wire [31:0] c_i32_661_q;
    wire [31:0] c_i32_753_q;
    wire [0:0] comparator_q;
    wire [15:0] i_conv24_loopback50_vt_const_31_q;
    wire [31:0] i_conv24_loopback50_vt_join_q;
    wire [15:0] i_conv24_loopback50_vt_select_15_b;
    wire [31:0] i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_iowr_bl_return_loopback_o_fifodata;
    wire [0:0] i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_iowr_bl_return_loopback_o_fifovalid;
    wire [0:0] i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_o_ack;
    wire [0:0] i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_o_stall;
    wire [0:0] i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_o_valid;
    reg [15:0] i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt519_loopback49_q;
    reg [15:0] i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt_loopback12_q;
    reg [15:0] i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt493_loopback23_q;
    reg [15:0] i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt503_loopback34_q;
    reg [15:0] i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt513_loopback45_q;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_out_dest_data_out_69_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_out_dest_data_out_69_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_out_dest_data_out_69_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_out_dest_data_out_69_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_out_dest_data_out_69_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_out_dest_data_out_71_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_out_dest_data_out_72_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_out_dest_data_out_73_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_out_dest_data_out_74_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_out_dest_data_out_75_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_out_dest_data_out_76_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_out_dest_data_out_77_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_out_dest_data_out_78_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_out_dest_data_out_79_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_out_dest_data_out_80_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_out_dest_data_out_81_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_out_dest_data_out_82_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_out_dest_data_out_83_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_out_dest_data_out_84_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_out_dest_data_out_85_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_out_dest_data_out_86_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_out_dest_data_out_87_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_out_dest_data_out_88_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_out_dest_data_out_89_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_out_dest_data_out_90_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_out_dest_data_out_91_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_out_dest_data_out_92_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_out_dest_data_out_93_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_out_dest_data_out_94_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_out_dest_data_out_95_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_out_dest_data_out_96_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_out_dest_data_out_97_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_out_dest_data_out_98_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_out_dest_data_out_99_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_out_dest_data_out_100_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_out_dest_data_out_70_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_out_valid_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_loopback52_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_loopback52_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_loopback52_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_loopback52_out_valid_out;
    wire [31:0] i_sel_bits_loopback2_q;
    wire [28:0] i_sel_bits_loopback2_vt_const_31_q;
    wire [31:0] i_sel_bits_loopback2_vt_join_q;
    wire [2:0] i_sel_bits_loopback2_vt_select_2_b;
    wire [2:0] i_sel_shr_loopback46_vt_const_31_q;
    wire [31:0] i_sel_shr_loopback46_vt_join_q;
    wire [28:0] i_sel_shr_loopback46_vt_select_28_b;
    wire [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_q;
    wire [0:0] dupName_3_comparator_x_q;
    wire [0:0] dupName_4_comparator_x_q;
    wire [0:0] dupName_5_comparator_x_q;
    wire [0:0] dupName_6_comparator_x_q;
    wire [0:0] dupName_30_comparator_x_q;
    wire [0:0] dupName_31_comparator_x_q;
    wire [0:0] dupName_32_comparator_x_q;
    wire [0:0] dupName_33_comparator_x_q;
    wire [31:0] i_conv24_loopback50_sel_x_b;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_out_dest_data_out_0_0_0_tpl;
    wire [30:0] rightShiftStage0Idx1Rng1_uid234_i_sel_shr_loopback0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid236_i_sel_shr_loopback0_shift_x_q;
    wire [0:0] rightShiftStage0_uid238_i_sel_shr_loopback0_shift_x_s;
    reg [31:0] rightShiftStage0_uid238_i_sel_shr_loopback0_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid239_i_sel_shr_loopback0_shift_x_b;
    wire [1:0] rightShiftStage1Idx1Pad2_uid240_i_sel_shr_loopback0_shift_x_q;
    wire [31:0] rightShiftStage1Idx1_uid241_i_sel_shr_loopback0_shift_x_q;
    wire [0:0] rightShiftStage1_uid243_i_sel_shr_loopback0_shift_x_s;
    reg [31:0] rightShiftStage1_uid243_i_sel_shr_loopback0_shift_x_q;
    wire [0:0] bubble_join_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_q;
    wire [0:0] bubble_select_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_b;
    wire [0:0] SE_out_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_loopback52_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_loopback52_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_toReg4;
    reg [0:0] SE_stall_entry_fromReg4;
    wire [0:0] SE_stall_entry_consumed4;
    wire [0:0] SE_stall_entry_toReg5;
    reg [0:0] SE_stall_entry_fromReg5;
    wire [0:0] SE_stall_entry_consumed5;
    wire [0:0] SE_stall_entry_toReg6;
    reg [0:0] SE_stall_entry_fromReg6;
    wire [0:0] SE_stall_entry_consumed6;
    wire [0:0] SE_stall_entry_toReg7;
    reg [0:0] SE_stall_entry_fromReg7;
    wire [0:0] SE_stall_entry_consumed7;
    wire [0:0] SE_stall_entry_toReg8;
    reg [0:0] SE_stall_entry_fromReg8;
    wire [0:0] SE_stall_entry_consumed8;
    wire [0:0] SE_stall_entry_toReg9;
    reg [0:0] SE_stall_entry_fromReg9;
    wire [0:0] SE_stall_entry_consumed9;
    wire [0:0] SE_stall_entry_toReg10;
    reg [0:0] SE_stall_entry_fromReg10;
    wire [0:0] SE_stall_entry_consumed10;
    wire [0:0] SE_stall_entry_toReg11;
    reg [0:0] SE_stall_entry_fromReg11;
    wire [0:0] SE_stall_entry_consumed11;
    wire [0:0] SE_stall_entry_toReg12;
    reg [0:0] SE_stall_entry_fromReg12;
    wire [0:0] SE_stall_entry_consumed12;
    wire [0:0] SE_stall_entry_toReg13;
    reg [0:0] SE_stall_entry_fromReg13;
    wire [0:0] SE_stall_entry_consumed13;
    wire [0:0] SE_stall_entry_toReg14;
    reg [0:0] SE_stall_entry_fromReg14;
    wire [0:0] SE_stall_entry_consumed14;
    wire [0:0] SE_stall_entry_toReg15;
    reg [0:0] SE_stall_entry_fromReg15;
    wire [0:0] SE_stall_entry_consumed15;
    wire [0:0] SE_stall_entry_toReg16;
    reg [0:0] SE_stall_entry_fromReg16;
    wire [0:0] SE_stall_entry_consumed16;
    wire [0:0] SE_stall_entry_toReg17;
    reg [0:0] SE_stall_entry_fromReg17;
    wire [0:0] SE_stall_entry_consumed17;
    wire [0:0] SE_stall_entry_toReg18;
    reg [0:0] SE_stall_entry_fromReg18;
    wire [0:0] SE_stall_entry_consumed18;
    wire [0:0] SE_stall_entry_toReg19;
    reg [0:0] SE_stall_entry_fromReg19;
    wire [0:0] SE_stall_entry_consumed19;
    wire [0:0] SE_stall_entry_toReg20;
    reg [0:0] SE_stall_entry_fromReg20;
    wire [0:0] SE_stall_entry_consumed20;
    wire [0:0] SE_stall_entry_toReg21;
    reg [0:0] SE_stall_entry_fromReg21;
    wire [0:0] SE_stall_entry_consumed21;
    wire [0:0] SE_stall_entry_toReg22;
    reg [0:0] SE_stall_entry_fromReg22;
    wire [0:0] SE_stall_entry_consumed22;
    wire [0:0] SE_stall_entry_toReg23;
    reg [0:0] SE_stall_entry_fromReg23;
    wire [0:0] SE_stall_entry_consumed23;
    wire [0:0] SE_stall_entry_toReg24;
    reg [0:0] SE_stall_entry_fromReg24;
    wire [0:0] SE_stall_entry_consumed24;
    wire [0:0] SE_stall_entry_toReg25;
    reg [0:0] SE_stall_entry_fromReg25;
    wire [0:0] SE_stall_entry_consumed25;
    wire [0:0] SE_stall_entry_toReg26;
    reg [0:0] SE_stall_entry_fromReg26;
    wire [0:0] SE_stall_entry_consumed26;
    wire [0:0] SE_stall_entry_toReg27;
    reg [0:0] SE_stall_entry_fromReg27;
    wire [0:0] SE_stall_entry_consumed27;
    wire [0:0] SE_stall_entry_toReg28;
    reg [0:0] SE_stall_entry_fromReg28;
    wire [0:0] SE_stall_entry_consumed28;
    wire [0:0] SE_stall_entry_toReg29;
    reg [0:0] SE_stall_entry_fromReg29;
    wire [0:0] SE_stall_entry_consumed29;
    wire [0:0] SE_stall_entry_toReg30;
    reg [0:0] SE_stall_entry_fromReg30;
    wire [0:0] SE_stall_entry_consumed30;
    wire [0:0] SE_stall_entry_toReg31;
    reg [0:0] SE_stall_entry_fromReg31;
    wire [0:0] SE_stall_entry_consumed31;
    wire [0:0] SE_stall_entry_toReg32;
    reg [0:0] SE_stall_entry_fromReg32;
    wire [0:0] SE_stall_entry_consumed32;
    wire [0:0] SE_stall_entry_toReg33;
    reg [0:0] SE_stall_entry_fromReg33;
    wire [0:0] SE_stall_entry_consumed33;
    wire [0:0] SE_stall_entry_toReg34;
    reg [0:0] SE_stall_entry_fromReg34;
    wire [0:0] SE_stall_entry_consumed34;
    wire [0:0] SE_stall_entry_toReg35;
    reg [0:0] SE_stall_entry_fromReg35;
    wire [0:0] SE_stall_entry_consumed35;
    wire [0:0] SE_stall_entry_toReg36;
    reg [0:0] SE_stall_entry_fromReg36;
    wire [0:0] SE_stall_entry_consumed36;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_or5;
    wire [0:0] SE_stall_entry_or6;
    wire [0:0] SE_stall_entry_or7;
    wire [0:0] SE_stall_entry_or8;
    wire [0:0] SE_stall_entry_or9;
    wire [0:0] SE_stall_entry_or10;
    wire [0:0] SE_stall_entry_or11;
    wire [0:0] SE_stall_entry_or12;
    wire [0:0] SE_stall_entry_or13;
    wire [0:0] SE_stall_entry_or14;
    wire [0:0] SE_stall_entry_or15;
    wire [0:0] SE_stall_entry_or16;
    wire [0:0] SE_stall_entry_or17;
    wire [0:0] SE_stall_entry_or18;
    wire [0:0] SE_stall_entry_or19;
    wire [0:0] SE_stall_entry_or20;
    wire [0:0] SE_stall_entry_or21;
    wire [0:0] SE_stall_entry_or22;
    wire [0:0] SE_stall_entry_or23;
    wire [0:0] SE_stall_entry_or24;
    wire [0:0] SE_stall_entry_or25;
    wire [0:0] SE_stall_entry_or26;
    wire [0:0] SE_stall_entry_or27;
    wire [0:0] SE_stall_entry_or28;
    wire [0:0] SE_stall_entry_or29;
    wire [0:0] SE_stall_entry_or30;
    wire [0:0] SE_stall_entry_or31;
    wire [0:0] SE_stall_entry_or32;
    wire [0:0] SE_stall_entry_or33;
    wire [0:0] SE_stall_entry_or34;
    wire [0:0] SE_stall_entry_or35;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_entry_V5;
    wire [0:0] SE_stall_entry_V6;
    wire [0:0] SE_stall_entry_V7;
    wire [0:0] SE_stall_entry_V8;
    wire [0:0] SE_stall_entry_V9;
    wire [0:0] SE_stall_entry_V10;
    wire [0:0] SE_stall_entry_V11;
    wire [0:0] SE_stall_entry_V12;
    wire [0:0] SE_stall_entry_V13;
    wire [0:0] SE_stall_entry_V14;
    wire [0:0] SE_stall_entry_V15;
    wire [0:0] SE_stall_entry_V16;
    wire [0:0] SE_stall_entry_V17;
    wire [0:0] SE_stall_entry_V18;
    wire [0:0] SE_stall_entry_V19;
    wire [0:0] SE_stall_entry_V20;
    wire [0:0] SE_stall_entry_V21;
    wire [0:0] SE_stall_entry_V22;
    wire [0:0] SE_stall_entry_V23;
    wire [0:0] SE_stall_entry_V24;
    wire [0:0] SE_stall_entry_V25;
    wire [0:0] SE_stall_entry_V26;
    wire [0:0] SE_stall_entry_V27;
    wire [0:0] SE_stall_entry_V28;
    wire [0:0] SE_stall_entry_V29;
    wire [0:0] SE_stall_entry_V30;
    wire [0:0] SE_stall_entry_V31;
    wire [0:0] SE_stall_entry_V32;
    wire [0:0] SE_stall_entry_V33;
    wire [0:0] SE_stall_entry_V34;
    wire [0:0] SE_stall_entry_V35;
    wire [0:0] SE_stall_entry_V36;
    wire [0:0] SE_stall_exit_wireValid;
    wire [0:0] SE_stall_exit_and0;
    wire [0:0] SE_stall_exit_and1;
    wire [0:0] SE_stall_exit_and2;
    wire [0:0] SE_stall_exit_and3;
    wire [0:0] SE_stall_exit_and4;
    wire [0:0] SE_stall_exit_and5;
    wire [0:0] SE_stall_exit_and6;
    wire [0:0] SE_stall_exit_and7;
    wire [0:0] SE_stall_exit_and8;
    wire [0:0] SE_stall_exit_and9;
    wire [0:0] SE_stall_exit_and10;
    wire [0:0] SE_stall_exit_and11;
    wire [0:0] SE_stall_exit_and12;
    wire [0:0] SE_stall_exit_and13;
    wire [0:0] SE_stall_exit_and14;
    wire [0:0] SE_stall_exit_and15;
    wire [0:0] SE_stall_exit_and16;
    wire [0:0] SE_stall_exit_and17;
    wire [0:0] SE_stall_exit_and18;
    wire [0:0] SE_stall_exit_and19;
    wire [0:0] SE_stall_exit_and20;
    wire [0:0] SE_stall_exit_and21;
    wire [0:0] SE_stall_exit_and22;
    wire [0:0] SE_stall_exit_and23;
    wire [0:0] SE_stall_exit_and24;
    wire [0:0] SE_stall_exit_and25;
    wire [0:0] SE_stall_exit_and26;
    wire [0:0] SE_stall_exit_and27;
    wire [0:0] SE_stall_exit_and28;
    wire [0:0] SE_stall_exit_and29;
    wire [0:0] SE_stall_exit_and30;
    wire [0:0] SE_stall_exit_and31;
    wire [0:0] SE_stall_exit_and32;
    wire [0:0] SE_stall_exit_and33;
    wire [0:0] SE_stall_exit_and34;
    wire [0:0] SE_stall_exit_and35;
    wire [0:0] SE_stall_exit_backStall;
    wire [0:0] SE_stall_exit_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_V1;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and1;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and2;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and3;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and4;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and5;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and6;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and7;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and8;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and9;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and10;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and11;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and12;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and13;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and14;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and15;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and16;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and17;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and18;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and19;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and20;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and21;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and22;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and23;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and24;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and25;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and26;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and27;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and28;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and29;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and30;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and31;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and32;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and33;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and34;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and35;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_V0;


    // SE_stall_exit(STALLENABLE,522)
    // Valid signal propagation
    assign SE_stall_exit_V0 = SE_stall_exit_wireValid;
    // Backward Stall generation
    assign SE_stall_exit_backStall = in_stall_in | ~ (SE_stall_exit_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_exit_and0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_V0;
    assign SE_stall_exit_and1 = SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_V0 & SE_stall_exit_and0;
    assign SE_stall_exit_and2 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_V0 & SE_stall_exit_and1;
    assign SE_stall_exit_and3 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_V0 & SE_stall_exit_and2;
    assign SE_stall_exit_and4 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_V0 & SE_stall_exit_and3;
    assign SE_stall_exit_and5 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_V0 & SE_stall_exit_and4;
    assign SE_stall_exit_and6 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_V0 & SE_stall_exit_and5;
    assign SE_stall_exit_and7 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_V0 & SE_stall_exit_and6;
    assign SE_stall_exit_and8 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_V0 & SE_stall_exit_and7;
    assign SE_stall_exit_and9 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_V0 & SE_stall_exit_and8;
    assign SE_stall_exit_and10 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_V0 & SE_stall_exit_and9;
    assign SE_stall_exit_and11 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_V0 & SE_stall_exit_and10;
    assign SE_stall_exit_and12 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_V0 & SE_stall_exit_and11;
    assign SE_stall_exit_and13 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_V0 & SE_stall_exit_and12;
    assign SE_stall_exit_and14 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_V0 & SE_stall_exit_and13;
    assign SE_stall_exit_and15 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_V0 & SE_stall_exit_and14;
    assign SE_stall_exit_and16 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_V0 & SE_stall_exit_and15;
    assign SE_stall_exit_and17 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_V0 & SE_stall_exit_and16;
    assign SE_stall_exit_and18 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_V0 & SE_stall_exit_and17;
    assign SE_stall_exit_and19 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_V0 & SE_stall_exit_and18;
    assign SE_stall_exit_and20 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_V0 & SE_stall_exit_and19;
    assign SE_stall_exit_and21 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_V0 & SE_stall_exit_and20;
    assign SE_stall_exit_and22 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_V0 & SE_stall_exit_and21;
    assign SE_stall_exit_and23 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_V0 & SE_stall_exit_and22;
    assign SE_stall_exit_and24 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_V0 & SE_stall_exit_and23;
    assign SE_stall_exit_and25 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_V0 & SE_stall_exit_and24;
    assign SE_stall_exit_and26 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_V0 & SE_stall_exit_and25;
    assign SE_stall_exit_and27 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_V0 & SE_stall_exit_and26;
    assign SE_stall_exit_and28 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_V0 & SE_stall_exit_and27;
    assign SE_stall_exit_and29 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_V0 & SE_stall_exit_and28;
    assign SE_stall_exit_and30 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_V0 & SE_stall_exit_and29;
    assign SE_stall_exit_and31 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_V0 & SE_stall_exit_and30;
    assign SE_stall_exit_and32 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_V0 & SE_stall_exit_and31;
    assign SE_stall_exit_and33 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_V0 & SE_stall_exit_and32;
    assign SE_stall_exit_and34 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_V0 & SE_stall_exit_and33;
    assign SE_stall_exit_and35 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_V0 & SE_stall_exit_and34;
    assign SE_stall_exit_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_V0 & SE_stall_exit_and35;

    // i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x(BLACKBOX,223)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_s_struct_A000000Zloopback73_loopback0 thei_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x (
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V36),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_out_valid_out),
        .out_dest_data_out_0_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_out_dest_data_out_0_0_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3(BLACKBOX,63)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_unnamed_74_loopback0 thei_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3 (
        .in_intel_reserved_ffwd_70_0(in_intel_reserved_ffwd_70_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_backStall),
        .in_valid_in(SE_stall_entry_V35),
        .out_dest_data_out_70_0(i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_out_dest_data_out_70_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43(BLACKBOX,62)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select473681_0 thei_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43 (
        .in_intel_reserved_ffwd_100_0(in_intel_reserved_ffwd_100_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_backStall),
        .in_valid_in(SE_stall_entry_V34),
        .out_dest_data_out_100_0(i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_out_dest_data_out_100_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42(BLACKBOX,61)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select472680_0 thei_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42 (
        .in_intel_reserved_ffwd_99_0(in_intel_reserved_ffwd_99_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_backStall),
        .in_valid_in(SE_stall_entry_V33),
        .out_dest_data_out_99_0(i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_out_dest_data_out_99_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41(BLACKBOX,60)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select471679_0 thei_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41 (
        .in_intel_reserved_ffwd_98_0(in_intel_reserved_ffwd_98_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_backStall),
        .in_valid_in(SE_stall_entry_V32),
        .out_dest_data_out_98_0(i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_out_dest_data_out_98_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40(BLACKBOX,59)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select470678_0 thei_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40 (
        .in_intel_reserved_ffwd_97_0(in_intel_reserved_ffwd_97_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_backStall),
        .in_valid_in(SE_stall_entry_V31),
        .out_dest_data_out_97_0(i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_out_dest_data_out_97_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39(BLACKBOX,58)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select469677_0 thei_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39 (
        .in_intel_reserved_ffwd_96_0(in_intel_reserved_ffwd_96_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_backStall),
        .in_valid_in(SE_stall_entry_V30),
        .out_dest_data_out_96_0(i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_out_dest_data_out_96_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38(BLACKBOX,57)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select468676_0 thei_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38 (
        .in_intel_reserved_ffwd_95_0(in_intel_reserved_ffwd_95_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_backStall),
        .in_valid_in(SE_stall_entry_V29),
        .out_dest_data_out_95_0(i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_out_dest_data_out_95_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37(BLACKBOX,56)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select467675_0 thei_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37 (
        .in_intel_reserved_ffwd_94_0(in_intel_reserved_ffwd_94_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_backStall),
        .in_valid_in(SE_stall_entry_V28),
        .out_dest_data_out_94_0(i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_out_dest_data_out_94_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35(BLACKBOX,55)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select466674_0 thei_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35 (
        .in_intel_reserved_ffwd_93_0(in_intel_reserved_ffwd_93_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_backStall),
        .in_valid_in(SE_stall_entry_V27),
        .out_dest_data_out_93_0(i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_out_dest_data_out_93_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32(BLACKBOX,54)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select465673_0 thei_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32 (
        .in_intel_reserved_ffwd_92_0(in_intel_reserved_ffwd_92_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_backStall),
        .in_valid_in(SE_stall_entry_V26),
        .out_dest_data_out_92_0(i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_out_dest_data_out_92_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31(BLACKBOX,53)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select464672_0 thei_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31 (
        .in_intel_reserved_ffwd_91_0(in_intel_reserved_ffwd_91_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_backStall),
        .in_valid_in(SE_stall_entry_V25),
        .out_dest_data_out_91_0(i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_out_dest_data_out_91_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30(BLACKBOX,52)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select463671_0 thei_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30 (
        .in_intel_reserved_ffwd_90_0(in_intel_reserved_ffwd_90_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_backStall),
        .in_valid_in(SE_stall_entry_V24),
        .out_dest_data_out_90_0(i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_out_dest_data_out_90_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29(BLACKBOX,51)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select462670_0 thei_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29 (
        .in_intel_reserved_ffwd_89_0(in_intel_reserved_ffwd_89_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_backStall),
        .in_valid_in(SE_stall_entry_V23),
        .out_dest_data_out_89_0(i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_out_dest_data_out_89_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28(BLACKBOX,50)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select461669_0 thei_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28 (
        .in_intel_reserved_ffwd_88_0(in_intel_reserved_ffwd_88_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_backStall),
        .in_valid_in(SE_stall_entry_V22),
        .out_dest_data_out_88_0(i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_out_dest_data_out_88_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27(BLACKBOX,49)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select460668_0 thei_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27 (
        .in_intel_reserved_ffwd_87_0(in_intel_reserved_ffwd_87_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_backStall),
        .in_valid_in(SE_stall_entry_V21),
        .out_dest_data_out_87_0(i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_out_dest_data_out_87_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26(BLACKBOX,48)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select459667_0 thei_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26 (
        .in_intel_reserved_ffwd_86_0(in_intel_reserved_ffwd_86_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_backStall),
        .in_valid_in(SE_stall_entry_V20),
        .out_dest_data_out_86_0(i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_out_dest_data_out_86_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24(BLACKBOX,47)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select458666_0 thei_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24 (
        .in_intel_reserved_ffwd_85_0(in_intel_reserved_ffwd_85_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_backStall),
        .in_valid_in(SE_stall_entry_V19),
        .out_dest_data_out_85_0(i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_out_dest_data_out_85_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21(BLACKBOX,46)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select457665_0 thei_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21 (
        .in_intel_reserved_ffwd_84_0(in_intel_reserved_ffwd_84_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_backStall),
        .in_valid_in(SE_stall_entry_V18),
        .out_dest_data_out_84_0(i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_out_dest_data_out_84_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20(BLACKBOX,45)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select456664_0 thei_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20 (
        .in_intel_reserved_ffwd_83_0(in_intel_reserved_ffwd_83_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_backStall),
        .in_valid_in(SE_stall_entry_V17),
        .out_dest_data_out_83_0(i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_out_dest_data_out_83_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19(BLACKBOX,44)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select455663_0 thei_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19 (
        .in_intel_reserved_ffwd_82_0(in_intel_reserved_ffwd_82_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_backStall),
        .in_valid_in(SE_stall_entry_V16),
        .out_dest_data_out_82_0(i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_out_dest_data_out_82_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18(BLACKBOX,43)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select454662_0 thei_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18 (
        .in_intel_reserved_ffwd_81_0(in_intel_reserved_ffwd_81_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_backStall),
        .in_valid_in(SE_stall_entry_V15),
        .out_dest_data_out_81_0(i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_out_dest_data_out_81_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17(BLACKBOX,42)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select453661_0 thei_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17 (
        .in_intel_reserved_ffwd_80_0(in_intel_reserved_ffwd_80_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_backStall),
        .in_valid_in(SE_stall_entry_V14),
        .out_dest_data_out_80_0(i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_out_dest_data_out_80_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16(BLACKBOX,41)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select452660_0 thei_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16 (
        .in_intel_reserved_ffwd_79_0(in_intel_reserved_ffwd_79_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_backStall),
        .in_valid_in(SE_stall_entry_V13),
        .out_dest_data_out_79_0(i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_out_dest_data_out_79_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15(BLACKBOX,40)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select451659_0 thei_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15 (
        .in_intel_reserved_ffwd_78_0(in_intel_reserved_ffwd_78_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_backStall),
        .in_valid_in(SE_stall_entry_V12),
        .out_dest_data_out_78_0(i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_out_dest_data_out_78_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13(BLACKBOX,39)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select450658_0 thei_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13 (
        .in_intel_reserved_ffwd_77_0(in_intel_reserved_ffwd_77_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_backStall),
        .in_valid_in(SE_stall_entry_V11),
        .out_dest_data_out_77_0(i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_out_dest_data_out_77_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10(BLACKBOX,38)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select449657_0 thei_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10 (
        .in_intel_reserved_ffwd_76_0(in_intel_reserved_ffwd_76_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_backStall),
        .in_valid_in(SE_stall_entry_V10),
        .out_dest_data_out_76_0(i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_out_dest_data_out_76_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9(BLACKBOX,37)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select448656_0 thei_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9 (
        .in_intel_reserved_ffwd_75_0(in_intel_reserved_ffwd_75_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_backStall),
        .in_valid_in(SE_stall_entry_V9),
        .out_dest_data_out_75_0(i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_out_dest_data_out_75_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8(BLACKBOX,36)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select447655_0 thei_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8 (
        .in_intel_reserved_ffwd_74_0(in_intel_reserved_ffwd_74_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_backStall),
        .in_valid_in(SE_stall_entry_V8),
        .out_dest_data_out_74_0(i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_out_dest_data_out_74_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7(BLACKBOX,35)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select446654_0 thei_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7 (
        .in_intel_reserved_ffwd_73_0(in_intel_reserved_ffwd_73_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_backStall),
        .in_valid_in(SE_stall_entry_V7),
        .out_dest_data_out_73_0(i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_out_dest_data_out_73_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6(BLACKBOX,34)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select445653_0 thei_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6 (
        .in_intel_reserved_ffwd_72_0(in_intel_reserved_ffwd_72_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_backStall),
        .in_valid_in(SE_stall_entry_V6),
        .out_dest_data_out_72_0(i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_out_dest_data_out_72_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5(BLACKBOX,33)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select444652_0 thei_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5 (
        .in_intel_reserved_ffwd_71_0(in_intel_reserved_ffwd_71_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_backStall),
        .in_valid_in(SE_stall_entry_V5),
        .out_dest_data_out_71_0(i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_out_dest_data_out_71_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11(BLACKBOX,32)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select443651_0 thei_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11 (
        .in_intel_reserved_ffwd_69_0(in_intel_reserved_ffwd_69_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall),
        .in_valid_in(SE_stall_entry_V4),
        .out_dest_data_out_69_0(i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_out_dest_data_out_69_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22(BLACKBOX,31)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select443650_0 thei_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22 (
        .in_intel_reserved_ffwd_69_0(in_intel_reserved_ffwd_69_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_69_0(i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_out_dest_data_out_69_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33(BLACKBOX,30)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select443649_0 thei_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33 (
        .in_intel_reserved_ffwd_69_0(in_intel_reserved_ffwd_69_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_69_0(i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_out_dest_data_out_69_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44(BLACKBOX,29)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select443648_0 thei_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44 (
        .in_intel_reserved_ffwd_69_0(in_intel_reserved_ffwd_69_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_69_0(i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_out_dest_data_out_69_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,521)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
            SE_stall_entry_fromReg5 <= '0;
            SE_stall_entry_fromReg6 <= '0;
            SE_stall_entry_fromReg7 <= '0;
            SE_stall_entry_fromReg8 <= '0;
            SE_stall_entry_fromReg9 <= '0;
            SE_stall_entry_fromReg10 <= '0;
            SE_stall_entry_fromReg11 <= '0;
            SE_stall_entry_fromReg12 <= '0;
            SE_stall_entry_fromReg13 <= '0;
            SE_stall_entry_fromReg14 <= '0;
            SE_stall_entry_fromReg15 <= '0;
            SE_stall_entry_fromReg16 <= '0;
            SE_stall_entry_fromReg17 <= '0;
            SE_stall_entry_fromReg18 <= '0;
            SE_stall_entry_fromReg19 <= '0;
            SE_stall_entry_fromReg20 <= '0;
            SE_stall_entry_fromReg21 <= '0;
            SE_stall_entry_fromReg22 <= '0;
            SE_stall_entry_fromReg23 <= '0;
            SE_stall_entry_fromReg24 <= '0;
            SE_stall_entry_fromReg25 <= '0;
            SE_stall_entry_fromReg26 <= '0;
            SE_stall_entry_fromReg27 <= '0;
            SE_stall_entry_fromReg28 <= '0;
            SE_stall_entry_fromReg29 <= '0;
            SE_stall_entry_fromReg30 <= '0;
            SE_stall_entry_fromReg31 <= '0;
            SE_stall_entry_fromReg32 <= '0;
            SE_stall_entry_fromReg33 <= '0;
            SE_stall_entry_fromReg34 <= '0;
            SE_stall_entry_fromReg35 <= '0;
            SE_stall_entry_fromReg36 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
            // Successor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
            // Successor 5
            SE_stall_entry_fromReg5 <= SE_stall_entry_toReg5;
            // Successor 6
            SE_stall_entry_fromReg6 <= SE_stall_entry_toReg6;
            // Successor 7
            SE_stall_entry_fromReg7 <= SE_stall_entry_toReg7;
            // Successor 8
            SE_stall_entry_fromReg8 <= SE_stall_entry_toReg8;
            // Successor 9
            SE_stall_entry_fromReg9 <= SE_stall_entry_toReg9;
            // Successor 10
            SE_stall_entry_fromReg10 <= SE_stall_entry_toReg10;
            // Successor 11
            SE_stall_entry_fromReg11 <= SE_stall_entry_toReg11;
            // Successor 12
            SE_stall_entry_fromReg12 <= SE_stall_entry_toReg12;
            // Successor 13
            SE_stall_entry_fromReg13 <= SE_stall_entry_toReg13;
            // Successor 14
            SE_stall_entry_fromReg14 <= SE_stall_entry_toReg14;
            // Successor 15
            SE_stall_entry_fromReg15 <= SE_stall_entry_toReg15;
            // Successor 16
            SE_stall_entry_fromReg16 <= SE_stall_entry_toReg16;
            // Successor 17
            SE_stall_entry_fromReg17 <= SE_stall_entry_toReg17;
            // Successor 18
            SE_stall_entry_fromReg18 <= SE_stall_entry_toReg18;
            // Successor 19
            SE_stall_entry_fromReg19 <= SE_stall_entry_toReg19;
            // Successor 20
            SE_stall_entry_fromReg20 <= SE_stall_entry_toReg20;
            // Successor 21
            SE_stall_entry_fromReg21 <= SE_stall_entry_toReg21;
            // Successor 22
            SE_stall_entry_fromReg22 <= SE_stall_entry_toReg22;
            // Successor 23
            SE_stall_entry_fromReg23 <= SE_stall_entry_toReg23;
            // Successor 24
            SE_stall_entry_fromReg24 <= SE_stall_entry_toReg24;
            // Successor 25
            SE_stall_entry_fromReg25 <= SE_stall_entry_toReg25;
            // Successor 26
            SE_stall_entry_fromReg26 <= SE_stall_entry_toReg26;
            // Successor 27
            SE_stall_entry_fromReg27 <= SE_stall_entry_toReg27;
            // Successor 28
            SE_stall_entry_fromReg28 <= SE_stall_entry_toReg28;
            // Successor 29
            SE_stall_entry_fromReg29 <= SE_stall_entry_toReg29;
            // Successor 30
            SE_stall_entry_fromReg30 <= SE_stall_entry_toReg30;
            // Successor 31
            SE_stall_entry_fromReg31 <= SE_stall_entry_toReg31;
            // Successor 32
            SE_stall_entry_fromReg32 <= SE_stall_entry_toReg32;
            // Successor 33
            SE_stall_entry_fromReg33 <= SE_stall_entry_toReg33;
            // Successor 34
            SE_stall_entry_fromReg34 <= SE_stall_entry_toReg34;
            // Successor 35
            SE_stall_entry_fromReg35 <= SE_stall_entry_toReg35;
            // Successor 36
            SE_stall_entry_fromReg36 <= SE_stall_entry_toReg36;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    assign SE_stall_entry_consumed6 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg6;
    assign SE_stall_entry_consumed7 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg7;
    assign SE_stall_entry_consumed8 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg8;
    assign SE_stall_entry_consumed9 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg9;
    assign SE_stall_entry_consumed10 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg10;
    assign SE_stall_entry_consumed11 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg11;
    assign SE_stall_entry_consumed12 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg12;
    assign SE_stall_entry_consumed13 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg13;
    assign SE_stall_entry_consumed14 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg14;
    assign SE_stall_entry_consumed15 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg15;
    assign SE_stall_entry_consumed16 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg16;
    assign SE_stall_entry_consumed17 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg17;
    assign SE_stall_entry_consumed18 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg18;
    assign SE_stall_entry_consumed19 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg19;
    assign SE_stall_entry_consumed20 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg20;
    assign SE_stall_entry_consumed21 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg21;
    assign SE_stall_entry_consumed22 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg22;
    assign SE_stall_entry_consumed23 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg23;
    assign SE_stall_entry_consumed24 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg24;
    assign SE_stall_entry_consumed25 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg25;
    assign SE_stall_entry_consumed26 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg26;
    assign SE_stall_entry_consumed27 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg27;
    assign SE_stall_entry_consumed28 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg28;
    assign SE_stall_entry_consumed29 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg29;
    assign SE_stall_entry_consumed30 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg30;
    assign SE_stall_entry_consumed31 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg31;
    assign SE_stall_entry_consumed32 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg32;
    assign SE_stall_entry_consumed33 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg33;
    assign SE_stall_entry_consumed34 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg34;
    assign SE_stall_entry_consumed35 = (~ (i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg35;
    assign SE_stall_entry_consumed36 = (~ (i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg36;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    assign SE_stall_entry_toReg5 = SE_stall_entry_StallValid & SE_stall_entry_consumed5;
    assign SE_stall_entry_toReg6 = SE_stall_entry_StallValid & SE_stall_entry_consumed6;
    assign SE_stall_entry_toReg7 = SE_stall_entry_StallValid & SE_stall_entry_consumed7;
    assign SE_stall_entry_toReg8 = SE_stall_entry_StallValid & SE_stall_entry_consumed8;
    assign SE_stall_entry_toReg9 = SE_stall_entry_StallValid & SE_stall_entry_consumed9;
    assign SE_stall_entry_toReg10 = SE_stall_entry_StallValid & SE_stall_entry_consumed10;
    assign SE_stall_entry_toReg11 = SE_stall_entry_StallValid & SE_stall_entry_consumed11;
    assign SE_stall_entry_toReg12 = SE_stall_entry_StallValid & SE_stall_entry_consumed12;
    assign SE_stall_entry_toReg13 = SE_stall_entry_StallValid & SE_stall_entry_consumed13;
    assign SE_stall_entry_toReg14 = SE_stall_entry_StallValid & SE_stall_entry_consumed14;
    assign SE_stall_entry_toReg15 = SE_stall_entry_StallValid & SE_stall_entry_consumed15;
    assign SE_stall_entry_toReg16 = SE_stall_entry_StallValid & SE_stall_entry_consumed16;
    assign SE_stall_entry_toReg17 = SE_stall_entry_StallValid & SE_stall_entry_consumed17;
    assign SE_stall_entry_toReg18 = SE_stall_entry_StallValid & SE_stall_entry_consumed18;
    assign SE_stall_entry_toReg19 = SE_stall_entry_StallValid & SE_stall_entry_consumed19;
    assign SE_stall_entry_toReg20 = SE_stall_entry_StallValid & SE_stall_entry_consumed20;
    assign SE_stall_entry_toReg21 = SE_stall_entry_StallValid & SE_stall_entry_consumed21;
    assign SE_stall_entry_toReg22 = SE_stall_entry_StallValid & SE_stall_entry_consumed22;
    assign SE_stall_entry_toReg23 = SE_stall_entry_StallValid & SE_stall_entry_consumed23;
    assign SE_stall_entry_toReg24 = SE_stall_entry_StallValid & SE_stall_entry_consumed24;
    assign SE_stall_entry_toReg25 = SE_stall_entry_StallValid & SE_stall_entry_consumed25;
    assign SE_stall_entry_toReg26 = SE_stall_entry_StallValid & SE_stall_entry_consumed26;
    assign SE_stall_entry_toReg27 = SE_stall_entry_StallValid & SE_stall_entry_consumed27;
    assign SE_stall_entry_toReg28 = SE_stall_entry_StallValid & SE_stall_entry_consumed28;
    assign SE_stall_entry_toReg29 = SE_stall_entry_StallValid & SE_stall_entry_consumed29;
    assign SE_stall_entry_toReg30 = SE_stall_entry_StallValid & SE_stall_entry_consumed30;
    assign SE_stall_entry_toReg31 = SE_stall_entry_StallValid & SE_stall_entry_consumed31;
    assign SE_stall_entry_toReg32 = SE_stall_entry_StallValid & SE_stall_entry_consumed32;
    assign SE_stall_entry_toReg33 = SE_stall_entry_StallValid & SE_stall_entry_consumed33;
    assign SE_stall_entry_toReg34 = SE_stall_entry_StallValid & SE_stall_entry_consumed34;
    assign SE_stall_entry_toReg35 = SE_stall_entry_StallValid & SE_stall_entry_consumed35;
    assign SE_stall_entry_toReg36 = SE_stall_entry_StallValid & SE_stall_entry_consumed36;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_or5 = SE_stall_entry_consumed5 & SE_stall_entry_or4;
    assign SE_stall_entry_or6 = SE_stall_entry_consumed6 & SE_stall_entry_or5;
    assign SE_stall_entry_or7 = SE_stall_entry_consumed7 & SE_stall_entry_or6;
    assign SE_stall_entry_or8 = SE_stall_entry_consumed8 & SE_stall_entry_or7;
    assign SE_stall_entry_or9 = SE_stall_entry_consumed9 & SE_stall_entry_or8;
    assign SE_stall_entry_or10 = SE_stall_entry_consumed10 & SE_stall_entry_or9;
    assign SE_stall_entry_or11 = SE_stall_entry_consumed11 & SE_stall_entry_or10;
    assign SE_stall_entry_or12 = SE_stall_entry_consumed12 & SE_stall_entry_or11;
    assign SE_stall_entry_or13 = SE_stall_entry_consumed13 & SE_stall_entry_or12;
    assign SE_stall_entry_or14 = SE_stall_entry_consumed14 & SE_stall_entry_or13;
    assign SE_stall_entry_or15 = SE_stall_entry_consumed15 & SE_stall_entry_or14;
    assign SE_stall_entry_or16 = SE_stall_entry_consumed16 & SE_stall_entry_or15;
    assign SE_stall_entry_or17 = SE_stall_entry_consumed17 & SE_stall_entry_or16;
    assign SE_stall_entry_or18 = SE_stall_entry_consumed18 & SE_stall_entry_or17;
    assign SE_stall_entry_or19 = SE_stall_entry_consumed19 & SE_stall_entry_or18;
    assign SE_stall_entry_or20 = SE_stall_entry_consumed20 & SE_stall_entry_or19;
    assign SE_stall_entry_or21 = SE_stall_entry_consumed21 & SE_stall_entry_or20;
    assign SE_stall_entry_or22 = SE_stall_entry_consumed22 & SE_stall_entry_or21;
    assign SE_stall_entry_or23 = SE_stall_entry_consumed23 & SE_stall_entry_or22;
    assign SE_stall_entry_or24 = SE_stall_entry_consumed24 & SE_stall_entry_or23;
    assign SE_stall_entry_or25 = SE_stall_entry_consumed25 & SE_stall_entry_or24;
    assign SE_stall_entry_or26 = SE_stall_entry_consumed26 & SE_stall_entry_or25;
    assign SE_stall_entry_or27 = SE_stall_entry_consumed27 & SE_stall_entry_or26;
    assign SE_stall_entry_or28 = SE_stall_entry_consumed28 & SE_stall_entry_or27;
    assign SE_stall_entry_or29 = SE_stall_entry_consumed29 & SE_stall_entry_or28;
    assign SE_stall_entry_or30 = SE_stall_entry_consumed30 & SE_stall_entry_or29;
    assign SE_stall_entry_or31 = SE_stall_entry_consumed31 & SE_stall_entry_or30;
    assign SE_stall_entry_or32 = SE_stall_entry_consumed32 & SE_stall_entry_or31;
    assign SE_stall_entry_or33 = SE_stall_entry_consumed33 & SE_stall_entry_or32;
    assign SE_stall_entry_or34 = SE_stall_entry_consumed34 & SE_stall_entry_or33;
    assign SE_stall_entry_or35 = SE_stall_entry_consumed35 & SE_stall_entry_or34;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed36 & SE_stall_entry_or35);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    assign SE_stall_entry_V5 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg5);
    assign SE_stall_entry_V6 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg6);
    assign SE_stall_entry_V7 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg7);
    assign SE_stall_entry_V8 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg8);
    assign SE_stall_entry_V9 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg9);
    assign SE_stall_entry_V10 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg10);
    assign SE_stall_entry_V11 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg11);
    assign SE_stall_entry_V12 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg12);
    assign SE_stall_entry_V13 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg13);
    assign SE_stall_entry_V14 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg14);
    assign SE_stall_entry_V15 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg15);
    assign SE_stall_entry_V16 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg16);
    assign SE_stall_entry_V17 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg17);
    assign SE_stall_entry_V18 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg18);
    assign SE_stall_entry_V19 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg19);
    assign SE_stall_entry_V20 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg20);
    assign SE_stall_entry_V21 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg21);
    assign SE_stall_entry_V22 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg22);
    assign SE_stall_entry_V23 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg23);
    assign SE_stall_entry_V24 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg24);
    assign SE_stall_entry_V25 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg25);
    assign SE_stall_entry_V26 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg26);
    assign SE_stall_entry_V27 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg27);
    assign SE_stall_entry_V28 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg28);
    assign SE_stall_entry_V29 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg29);
    assign SE_stall_entry_V30 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg30);
    assign SE_stall_entry_V31 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg31);
    assign SE_stall_entry_V32 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg32);
    assign SE_stall_entry_V33 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg33);
    assign SE_stall_entry_V34 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg34);
    assign SE_stall_entry_V35 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg35);
    assign SE_stall_entry_V36 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg36);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48(BLACKBOX,28)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select443647_0 thei_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48 (
        .in_intel_reserved_ffwd_69_0(in_intel_reserved_ffwd_69_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_69_0(i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_out_dest_data_out_69_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48(STALLENABLE,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43(STALLENABLE,511)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42(STALLENABLE,509)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41(STALLENABLE,507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40(STALLENABLE,505)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39(STALLENABLE,503)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38(STALLENABLE,501)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37(STALLENABLE,499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35(STALLENABLE,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44(STALLENABLE,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32(STALLENABLE,495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31(STALLENABLE,493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30(STALLENABLE,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29(STALLENABLE,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28(STALLENABLE,487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27(STALLENABLE,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26(STALLENABLE,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24(STALLENABLE,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33(STALLENABLE,447)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21(STALLENABLE,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20(STALLENABLE,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19(STALLENABLE,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18(STALLENABLE,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17(STALLENABLE,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16(STALLENABLE,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15(STALLENABLE,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13(STALLENABLE,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22(STALLENABLE,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3(STALLENABLE,513)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_wireValid = i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10(STALLENABLE,463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9(STALLENABLE,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8(STALLENABLE,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7(STALLENABLE,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6(STALLENABLE,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5(STALLENABLE,453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x(STALLENABLE,536)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_StallValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_backStall & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_or0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_backStall = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_V1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_wireValid = i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11(STALLENABLE,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_consumed0 = (~ (SE_stall_exit_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_or0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_V1 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_out_valid_out;

    // SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11(STALLENABLE,574)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_V0 = SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_backStall = i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_o_stall | ~ (SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_V1;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and0;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and2 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and1;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and3 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and2;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and4 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and3;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and5 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and4;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and6 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and5;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and7 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and6;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and8 = SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and7;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and9 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and8;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and10 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and9;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and11 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and10;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and12 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and11;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and13 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and12;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and14 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and13;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and15 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and14;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and16 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and15;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and17 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and16;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and18 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and17;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and19 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and18;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and20 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and19;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and21 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and20;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and22 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and21;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and23 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and22;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and24 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and23;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and25 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and24;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and26 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and25;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and27 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and26;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and28 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and27;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and29 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and28;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and30 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and29;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and31 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and30;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and32 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and31;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and33 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and32;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and34 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and33;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and35 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and34;
    assign SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_V1 & SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_and35;

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_loopback52(STALLENABLE,515)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_loopback52_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_loopback52_wireValid = i_llvm_fpga_push_token_i1_throttle_push_loopback52_out_valid_out;

    // bubble_join_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51(BITJOIN,245)
    assign bubble_join_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_q = i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_o_ack;

    // bubble_select_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51(BITSELECT,246)
    assign bubble_select_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_b = $unsigned(bubble_join_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_loopback52(BLACKBOX,64)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    loopback_i_llvm_fpga_push_token_i1_throttle_push_0 thei_llvm_fpga_push_token_i1_throttle_push_loopback52 (
        .in_data_in(bubble_select_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_b),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_loopback52_backStall),
        .in_valid_in(SE_out_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_V0),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_token_i1_throttle_push_loopback52_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_token_i1_throttle_push_loopback52_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_loopback52_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_loopback52_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51(STALLENABLE,436)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_V0 = SE_out_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_backStall = i_llvm_fpga_push_token_i1_throttle_push_loopback52_out_stall_out | ~ (SE_out_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_wireValid = i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_o_valid;

    // i_conv24_loopback50_vt_const_31(CONSTANT,19)
    assign i_conv24_loopback50_vt_const_31_q = $unsigned(16'b0000000000000000);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48(BITJOIN,248)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_q = i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_out_dest_data_out_69_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48(BITSELECT,249)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44(BITJOIN,252)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_q = i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_out_dest_data_out_69_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44(BITSELECT,253)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43(BITJOIN,384)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_q = i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_out_dest_data_out_100_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43(BITSELECT,385)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_q[15:0]);

    // c_i32_753(CONSTANT,9)
    assign c_i32_753_q = $unsigned(32'b00000000000000000000000000000111);

    // i_sel_bits_loopback2_vt_const_31(CONSTANT,66)
    assign i_sel_bits_loopback2_vt_const_31_q = $unsigned(29'b00000000000000000000000000000);

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x(BITJOIN,429)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_q = i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_out_dest_data_out_0_0_0_tpl;

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x(BITSELECT,430)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_q[31:0]);

    // i_sel_bits_loopback2(LOGICAL,65)@0
    assign i_sel_bits_loopback2_q = bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_b & c_i32_753_q;

    // i_sel_bits_loopback2_vt_select_2(BITSELECT,68)@0
    assign i_sel_bits_loopback2_vt_select_2_b = i_sel_bits_loopback2_q[2:0];

    // i_sel_bits_loopback2_vt_join(BITJOIN,67)@0
    assign i_sel_bits_loopback2_vt_join_q = {i_sel_bits_loopback2_vt_const_31_q, i_sel_bits_loopback2_vt_select_2_b};

    // dupName_5_comparator_x(LOGICAL,193)@0
    assign dupName_5_comparator_x_q = $unsigned(i_sel_bits_loopback2_vt_join_q == c_i32_753_q ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42(BITJOIN,380)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_q = i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_out_dest_data_out_99_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42(BITSELECT,381)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_q[15:0]);

    // c_i32_661(CONSTANT,8)
    assign c_i32_661_q = $unsigned(32'b00000000000000000000000000000110);

    // dupName_4_comparator_x(LOGICAL,192)@0
    assign dupName_4_comparator_x_q = $unsigned(i_sel_bits_loopback2_vt_join_q == c_i32_661_q ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41(BITJOIN,376)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_q = i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_out_dest_data_out_98_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41(BITSELECT,377)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_q[15:0]);

    // c_i32_560(CONSTANT,7)
    assign c_i32_560_q = $unsigned(32'b00000000000000000000000000000101);

    // dupName_3_comparator_x(LOGICAL,191)@0
    assign dupName_3_comparator_x_q = $unsigned(i_sel_bits_loopback2_vt_join_q == c_i32_560_q ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40(BITJOIN,372)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_q = i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_out_dest_data_out_97_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40(BITSELECT,373)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_q[15:0]);

    // c_i32_459(CONSTANT,6)
    assign c_i32_459_q = $unsigned(32'b00000000000000000000000000000100);

    // dupName_2_comparator_x(LOGICAL,190)@0
    assign dupName_2_comparator_x_q = $unsigned(i_sel_bits_loopback2_vt_join_q == c_i32_459_q ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39(BITJOIN,368)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_q = i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_out_dest_data_out_96_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39(BITSELECT,369)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_q[15:0]);

    // c_i32_358(CONSTANT,5)
    assign c_i32_358_q = $unsigned(32'b00000000000000000000000000000011);

    // dupName_1_comparator_x(LOGICAL,189)@0
    assign dupName_1_comparator_x_q = $unsigned(i_sel_bits_loopback2_vt_join_q == c_i32_358_q ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38(BITJOIN,364)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_q = i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_out_dest_data_out_95_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38(BITSELECT,365)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_q[15:0]);

    // c_i32_257(CONSTANT,4)
    assign c_i32_257_q = $unsigned(32'b00000000000000000000000000000010);

    // dupName_0_comparator_x(LOGICAL,187)@0
    assign dupName_0_comparator_x_q = $unsigned(i_sel_bits_loopback2_vt_join_q == c_i32_257_q ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37(BITJOIN,360)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_q = i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_out_dest_data_out_94_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37(BITSELECT,361)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_q[15:0]);

    // c_i32_156(CONSTANT,3)
    assign c_i32_156_q = $unsigned(32'b00000000000000000000000000000001);

    // comparator(LOGICAL,10)@0
    assign comparator_q = $unsigned(i_sel_bits_loopback2_vt_join_q == c_i32_156_q ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35(BITJOIN,356)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_q = i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_out_dest_data_out_93_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35(BITSELECT,357)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_q[15:0]);

    // c_i32_063(CONSTANT,2)
    assign c_i32_063_q = $unsigned(32'b00000000000000000000000000000000);

    // dupName_6_comparator_x(LOGICAL,194)@0
    assign dupName_6_comparator_x_q = $unsigned(i_sel_bits_loopback2_vt_join_q == c_i32_063_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt513_loopback45(SELECTOR,27)@0
    always @(dupName_6_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_b or comparator_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_b or dupName_0_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_b or dupName_1_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_b or dupName_2_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_b or dupName_3_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_b or dupName_4_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_b or dupName_5_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_b or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_b)
    begin
        i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt513_loopback45_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443648_loopback44_b;
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt513_loopback45_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select473681_loopback43_b;
        end
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt513_loopback45_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select472680_loopback42_b;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt513_loopback45_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select471679_loopback41_b;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt513_loopback45_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select470678_loopback40_b;
        end
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt513_loopback45_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select469677_loopback39_b;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt513_loopback45_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select468676_loopback38_b;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt513_loopback45_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select467675_loopback37_b;
        end
        if (dupName_6_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt513_loopback45_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select466674_loopback35_b;
        end
    end

    // i_sel_shr_loopback46_vt_const_31(CONSTANT,69)
    assign i_sel_shr_loopback46_vt_const_31_q = $unsigned(3'b000);

    // rightShiftStage1Idx1Pad2_uid240_i_sel_shr_loopback0_shift_x(CONSTANT,239)
    assign rightShiftStage1Idx1Pad2_uid240_i_sel_shr_loopback0_shift_x_q = $unsigned(2'b00);

    // rightShiftStage1Idx1Rng2_uid239_i_sel_shr_loopback0_shift_x(BITSELECT,238)@0
    assign rightShiftStage1Idx1Rng2_uid239_i_sel_shr_loopback0_shift_x_b = rightShiftStage0_uid238_i_sel_shr_loopback0_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid241_i_sel_shr_loopback0_shift_x(BITJOIN,240)@0
    assign rightShiftStage1Idx1_uid241_i_sel_shr_loopback0_shift_x_q = {rightShiftStage1Idx1Pad2_uid240_i_sel_shr_loopback0_shift_x_q, rightShiftStage1Idx1Rng2_uid239_i_sel_shr_loopback0_shift_x_b};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // rightShiftStage0Idx1Rng1_uid234_i_sel_shr_loopback0_shift_x(BITSELECT,233)@0
    assign rightShiftStage0Idx1Rng1_uid234_i_sel_shr_loopback0_shift_x_b = bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_b[31:1];

    // rightShiftStage0Idx1_uid236_i_sel_shr_loopback0_shift_x(BITJOIN,235)@0
    assign rightShiftStage0Idx1_uid236_i_sel_shr_loopback0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid234_i_sel_shr_loopback0_shift_x_b};

    // rightShiftStage0_uid238_i_sel_shr_loopback0_shift_x(MUX,237)@0
    assign rightShiftStage0_uid238_i_sel_shr_loopback0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid238_i_sel_shr_loopback0_shift_x_s or bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_b or rightShiftStage0Idx1_uid236_i_sel_shr_loopback0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid238_i_sel_shr_loopback0_shift_x_s)
            1'b0 : rightShiftStage0_uid238_i_sel_shr_loopback0_shift_x_q = bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8loopbacki_inputss_unnamed_loopback73_loopback0_aunroll_x_b;
            1'b1 : rightShiftStage0_uid238_i_sel_shr_loopback0_shift_x_q = rightShiftStage0Idx1_uid236_i_sel_shr_loopback0_shift_x_q;
            default : rightShiftStage0_uid238_i_sel_shr_loopback0_shift_x_q = 32'b0;
        endcase
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // rightShiftStage1_uid243_i_sel_shr_loopback0_shift_x(MUX,242)@0
    assign rightShiftStage1_uid243_i_sel_shr_loopback0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid243_i_sel_shr_loopback0_shift_x_s or rightShiftStage0_uid238_i_sel_shr_loopback0_shift_x_q or rightShiftStage1Idx1_uid241_i_sel_shr_loopback0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid243_i_sel_shr_loopback0_shift_x_s)
            1'b0 : rightShiftStage1_uid243_i_sel_shr_loopback0_shift_x_q = rightShiftStage0_uid238_i_sel_shr_loopback0_shift_x_q;
            1'b1 : rightShiftStage1_uid243_i_sel_shr_loopback0_shift_x_q = rightShiftStage1Idx1_uid241_i_sel_shr_loopback0_shift_x_q;
            default : rightShiftStage1_uid243_i_sel_shr_loopback0_shift_x_q = 32'b0;
        endcase
    end

    // i_sel_shr_loopback46_vt_select_28(BITSELECT,71)@0
    assign i_sel_shr_loopback46_vt_select_28_b = rightShiftStage1_uid243_i_sel_shr_loopback0_shift_x_q[28:0];

    // i_sel_shr_loopback46_vt_join(BITJOIN,70)@0
    assign i_sel_shr_loopback46_vt_join_q = {i_sel_shr_loopback46_vt_const_31_q, i_sel_shr_loopback46_vt_select_28_b};

    // dupName_33_comparator_x(LOGICAL,221)@0
    assign dupName_33_comparator_x_q = $unsigned(i_sel_shr_loopback46_vt_join_q == c_i32_358_q ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33(BITJOIN,256)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_q = i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_out_dest_data_out_69_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33(BITSELECT,257)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32(BITJOIN,352)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_q = i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_out_dest_data_out_92_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32(BITSELECT,353)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31(BITJOIN,348)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_q = i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_out_dest_data_out_91_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31(BITSELECT,349)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30(BITJOIN,344)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_q = i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_out_dest_data_out_90_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30(BITSELECT,345)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29(BITJOIN,340)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_q = i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_out_dest_data_out_89_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29(BITSELECT,341)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28(BITJOIN,336)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_q = i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_out_dest_data_out_88_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28(BITSELECT,337)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27(BITJOIN,332)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_q = i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_out_dest_data_out_87_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27(BITSELECT,333)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26(BITJOIN,328)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_q = i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_out_dest_data_out_86_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26(BITSELECT,329)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24(BITJOIN,324)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_q = i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_out_dest_data_out_85_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24(BITSELECT,325)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_q[15:0]);

    // i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt503_loopback34(SELECTOR,26)@0
    always @(dupName_6_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_b or comparator_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_b or dupName_0_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_b or dupName_1_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_b or dupName_2_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_b or dupName_3_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_b or dupName_4_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_b or dupName_5_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_b or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_b)
    begin
        i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt503_loopback34_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443649_loopback33_b;
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt503_loopback34_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select465673_loopback32_b;
        end
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt503_loopback34_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select464672_loopback31_b;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt503_loopback34_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select463671_loopback30_b;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt503_loopback34_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select462670_loopback29_b;
        end
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt503_loopback34_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select461669_loopback28_b;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt503_loopback34_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select460668_loopback27_b;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt503_loopback34_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select459667_loopback26_b;
        end
        if (dupName_6_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt503_loopback34_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select458666_loopback24_b;
        end
    end

    // dupName_32_comparator_x(LOGICAL,220)@0
    assign dupName_32_comparator_x_q = $unsigned(i_sel_shr_loopback46_vt_join_q == c_i32_257_q ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22(BITJOIN,260)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_q = i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_out_dest_data_out_69_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22(BITSELECT,261)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21(BITJOIN,320)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_q = i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_out_dest_data_out_84_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21(BITSELECT,321)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20(BITJOIN,316)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_q = i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_out_dest_data_out_83_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20(BITSELECT,317)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19(BITJOIN,312)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_q = i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_out_dest_data_out_82_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19(BITSELECT,313)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18(BITJOIN,308)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_q = i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_out_dest_data_out_81_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18(BITSELECT,309)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17(BITJOIN,304)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_q = i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_out_dest_data_out_80_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17(BITSELECT,305)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16(BITJOIN,300)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_q = i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_out_dest_data_out_79_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16(BITSELECT,301)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15(BITJOIN,296)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_q = i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_out_dest_data_out_78_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15(BITSELECT,297)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13(BITJOIN,292)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_q = i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_out_dest_data_out_77_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13(BITSELECT,293)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_q[15:0]);

    // i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt493_loopback23(SELECTOR,25)@0
    always @(dupName_6_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_b or comparator_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_b or dupName_0_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_b or dupName_1_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_b or dupName_2_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_b or dupName_3_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_b or dupName_4_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_b or dupName_5_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_b or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_b)
    begin
        i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt493_loopback23_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443650_loopback22_b;
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt493_loopback23_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select457665_loopback21_b;
        end
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt493_loopback23_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select456664_loopback20_b;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt493_loopback23_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select455663_loopback19_b;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt493_loopback23_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select454662_loopback18_b;
        end
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt493_loopback23_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select453661_loopback17_b;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt493_loopback23_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select452660_loopback16_b;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt493_loopback23_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select451659_loopback15_b;
        end
        if (dupName_6_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt493_loopback23_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select450658_loopback13_b;
        end
    end

    // dupName_31_comparator_x(LOGICAL,219)@0
    assign dupName_31_comparator_x_q = $unsigned(i_sel_shr_loopback46_vt_join_q == c_i32_156_q ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11(BITJOIN,264)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_q = i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_out_dest_data_out_69_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11(BITSELECT,265)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10(BITJOIN,288)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_q = i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_out_dest_data_out_76_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10(BITSELECT,289)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9(BITJOIN,284)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_q = i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_out_dest_data_out_75_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9(BITSELECT,285)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8(BITJOIN,280)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_q = i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_out_dest_data_out_74_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8(BITSELECT,281)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7(BITJOIN,276)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_q = i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_out_dest_data_out_73_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7(BITSELECT,277)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6(BITJOIN,272)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_q = i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_out_dest_data_out_72_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6(BITSELECT,273)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5(BITJOIN,268)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_q = i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_out_dest_data_out_71_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5(BITSELECT,269)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3(BITJOIN,388)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_q = i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_out_dest_data_out_70_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3(BITSELECT,389)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_q[15:0]);

    // i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt_loopback12(SELECTOR,24)@0
    always @(comparator_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_b or dupName_0_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_b or dupName_1_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_b or dupName_2_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_b or dupName_3_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_b or dupName_4_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_b or dupName_5_comparator_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_b or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_b)
    begin
        i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt_loopback12_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_b;
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt_loopback12_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select449657_loopback10_b;
        end
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt_loopback12_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select448656_loopback9_b;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt_loopback12_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select447655_loopback8_b;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt_loopback12_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select446654_loopback7_b;
        end
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt_loopback12_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select445653_loopback6_b;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt_loopback12_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select444652_loopback5_b;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt_loopback12_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback74_loopback3_b;
        end
    end

    // dupName_30_comparator_x(LOGICAL,218)@0
    assign dupName_30_comparator_x_q = $unsigned(i_sel_shr_loopback46_vt_join_q == c_i32_063_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt519_loopback49(SELECTOR,23)@0
    always @(dupName_30_comparator_x_q or i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt_loopback12_q or dupName_31_comparator_x_q or i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt493_loopback23_q or dupName_32_comparator_x_q or i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt503_loopback34_q or dupName_33_comparator_x_q or i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt513_loopback45_q or bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_b)
    begin
        i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt519_loopback49_q = bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443647_loopback48_b;
        if (dupName_33_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt519_loopback49_q = i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt513_loopback45_q;
        end
        if (dupName_32_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt519_loopback49_q = i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt503_loopback34_q;
        end
        if (dupName_31_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt519_loopback49_q = i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt493_loopback23_q;
        end
        if (dupName_30_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt519_loopback49_q = i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt_loopback12_q;
        end
    end

    // i_conv24_loopback50_sel_x(BITSELECT,222)@0
    assign i_conv24_loopback50_sel_x_b = {16'b0000000000000000, i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt519_loopback49_q[15:0]};

    // i_conv24_loopback50_vt_select_15(BITSELECT,21)@0
    assign i_conv24_loopback50_vt_select_15_b = i_conv24_loopback50_sel_x_b[15:0];

    // i_conv24_loopback50_vt_join(BITJOIN,20)@0
    assign i_conv24_loopback50_vt_join_q = {i_conv24_loopback50_vt_const_31_q, i_conv24_loopback50_vt_select_15_b};

    // i_iowr_bl_return_loopback_unnamed_loopback75_loopback51(BLACKBOX,22)@0
    // in in_i_stall@20000000
    // out out_iowr_bl_return_loopback_o_fifodata@20000000
    // out out_iowr_bl_return_loopback_o_fifovalid@20000000
    // out out_o_stall@20000000
    loopback_i_iowr_bl_return_unnamed_loopback75_loopback0 thei_iowr_bl_return_loopback_unnamed_loopback75_loopback51 (
        .in_i_data(i_conv24_loopback50_vt_join_q),
        .in_i_stall(SE_out_i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_backStall),
        .in_i_valid(SE_bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select443651_loopback11_V0),
        .in_iowr_bl_return_loopback_i_fifoready(in_iowr_bl_return_loopback_i_fifoready),
        .out_iowr_bl_return_loopback_o_fifodata(i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_iowr_bl_return_loopback_o_fifodata),
        .out_iowr_bl_return_loopback_o_fifovalid(i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_iowr_bl_return_loopback_o_fifovalid),
        .out_o_ack(i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_o_ack),
        .out_o_stall(i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_o_stall),
        .out_o_valid(i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,14)
    assign out_iowr_bl_return_loopback_o_fifodata = i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_iowr_bl_return_loopback_o_fifodata;
    assign out_iowr_bl_return_loopback_o_fifovalid = i_iowr_bl_return_loopback_unnamed_loopback75_loopback51_out_iowr_bl_return_loopback_o_fifovalid;

    // feedback_out_1_sync(GPOUT,15)
    assign out_feedback_out_1 = i_llvm_fpga_push_token_i1_throttle_push_loopback52_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,17)
    assign out_feedback_valid_out_1 = i_llvm_fpga_push_token_i1_throttle_push_loopback52_out_feedback_valid_out_1;

    // sync_out(GPOUT,185)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,188)@0
    assign out_valid_out = SE_stall_exit_V0;

endmodule
