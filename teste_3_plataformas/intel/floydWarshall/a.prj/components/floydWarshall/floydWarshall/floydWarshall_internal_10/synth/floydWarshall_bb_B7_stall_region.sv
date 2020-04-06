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

// SystemVerilog created from floydWarshall_bb_B7_stall_region
// SystemVerilog created on Mon Apr  6 11:17:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_bb_B7_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_stall_out,
    input wire [31:0] in_feedback_in_38,
    input wire [31:0] in_feedback_in_39,
    input wire [31:0] in_feedback_in_40,
    input wire [31:0] in_feedback_in_41,
    input wire [31:0] in_feedback_in_42,
    input wire [31:0] in_feedback_in_43,
    input wire [31:0] in_feedback_in_44,
    input wire [31:0] in_feedback_in_45,
    input wire [31:0] in_feedback_in_46,
    input wire [31:0] in_feedback_in_47,
    input wire [31:0] in_feedback_in_48,
    input wire [31:0] in_feedback_in_49,
    input wire [31:0] in_feedback_in_50,
    input wire [31:0] in_feedback_in_51,
    input wire [31:0] in_feedback_in_52,
    input wire [31:0] in_feedback_in_53,
    output wire [0:0] out_feedback_stall_out_38,
    output wire [0:0] out_feedback_stall_out_39,
    output wire [0:0] out_feedback_stall_out_40,
    output wire [0:0] out_feedback_stall_out_41,
    output wire [0:0] out_feedback_stall_out_42,
    output wire [0:0] out_feedback_stall_out_43,
    output wire [0:0] out_feedback_stall_out_44,
    output wire [0:0] out_feedback_stall_out_45,
    output wire [0:0] out_feedback_stall_out_46,
    output wire [0:0] out_feedback_stall_out_47,
    output wire [0:0] out_feedback_stall_out_48,
    output wire [0:0] out_feedback_stall_out_49,
    output wire [0:0] out_feedback_stall_out_50,
    output wire [0:0] out_feedback_stall_out_51,
    output wire [0:0] out_feedback_stall_out_52,
    output wire [0:0] out_feedback_stall_out_53,
    input wire [0:0] in_feedback_valid_in_38,
    input wire [0:0] in_feedback_valid_in_39,
    input wire [0:0] in_feedback_valid_in_40,
    input wire [0:0] in_feedback_valid_in_41,
    input wire [0:0] in_feedback_valid_in_42,
    input wire [0:0] in_feedback_valid_in_43,
    input wire [0:0] in_feedback_valid_in_44,
    input wire [0:0] in_feedback_valid_in_45,
    input wire [0:0] in_feedback_valid_in_46,
    input wire [0:0] in_feedback_valid_in_47,
    input wire [0:0] in_feedback_valid_in_48,
    input wire [0:0] in_feedback_valid_in_49,
    input wire [0:0] in_feedback_valid_in_50,
    input wire [0:0] in_feedback_valid_in_51,
    input wire [0:0] in_feedback_valid_in_52,
    input wire [0:0] in_feedback_valid_in_53,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_19_0,
    input wire [31:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_22_0,
    input wire [31:0] in_intel_reserved_ffwd_23_0,
    input wire [31:0] in_intel_reserved_ffwd_24_0,
    input wire [31:0] in_intel_reserved_ffwd_25_0,
    input wire [31:0] in_intel_reserved_ffwd_26_0,
    input wire [31:0] in_intel_reserved_ffwd_27_0,
    input wire [31:0] in_intel_reserved_ffwd_28_0,
    input wire [31:0] in_intel_reserved_ffwd_29_0,
    input wire [31:0] in_intel_reserved_ffwd_30_0,
    input wire [31:0] in_intel_reserved_ffwd_31_0,
    input wire [31:0] in_intel_reserved_ffwd_32_0,
    input wire [31:0] in_intel_reserved_ffwd_33_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked31,
    input wire [31:0] in_inc55188,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_A_sroa_0_4_replace_phi,
    output wire [31:0] out_A_sroa_12_4_replace_phi,
    output wire [31:0] out_A_sroa_17_4_replace_phi,
    output wire [31:0] out_A_sroa_22_4_replace_phi,
    output wire [31:0] out_A_sroa_27_4_replace_phi,
    output wire [31:0] out_A_sroa_32_4_replace_phi,
    output wire [31:0] out_A_sroa_37_4_replace_phi,
    output wire [31:0] out_A_sroa_42_4_replace_phi,
    output wire [31:0] out_A_sroa_47_4_replace_phi,
    output wire [31:0] out_A_sroa_52_4_replace_phi,
    output wire [31:0] out_A_sroa_57_4_replace_phi,
    output wire [31:0] out_A_sroa_62_4_replace_phi,
    output wire [31:0] out_A_sroa_67_4_replace_phi,
    output wire [31:0] out_A_sroa_72_4_replace_phi,
    output wire [31:0] out_A_sroa_77_4_replace_phi,
    output wire [31:0] out_A_sroa_7_4_replace_phi,
    output wire [0:0] out_c0_exe1255,
    output wire [0:0] out_c0_exe2256,
    output wire [31:0] out_c0_exe3257,
    output wire [31:0] out_c0_exe4258,
    output wire [31:0] out_c0_exe6,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_undef54_q;
    wire [0:0] i_a_sroa_0_4_replace_phi_floydwarshall35_s;
    reg [31:0] i_a_sroa_0_4_replace_phi_floydwarshall35_q;
    wire [0:0] i_a_sroa_12_4_replace_phi_floydwarshall37_s;
    reg [31:0] i_a_sroa_12_4_replace_phi_floydwarshall37_q;
    wire [0:0] i_a_sroa_17_4_replace_phi_floydwarshall38_s;
    reg [31:0] i_a_sroa_17_4_replace_phi_floydwarshall38_q;
    wire [0:0] i_a_sroa_22_4_replace_phi_floydwarshall39_s;
    reg [31:0] i_a_sroa_22_4_replace_phi_floydwarshall39_q;
    wire [0:0] i_a_sroa_27_4_replace_phi_floydwarshall42_s;
    reg [31:0] i_a_sroa_27_4_replace_phi_floydwarshall42_q;
    wire [0:0] i_a_sroa_32_4_replace_phi_floydwarshall45_s;
    reg [31:0] i_a_sroa_32_4_replace_phi_floydwarshall45_q;
    wire [0:0] i_a_sroa_37_4_replace_phi_floydwarshall48_s;
    reg [31:0] i_a_sroa_37_4_replace_phi_floydwarshall48_q;
    wire [0:0] i_a_sroa_42_4_replace_phi_floydwarshall40_s;
    reg [31:0] i_a_sroa_42_4_replace_phi_floydwarshall40_q;
    wire [0:0] i_a_sroa_47_4_replace_phi_floydwarshall43_s;
    reg [31:0] i_a_sroa_47_4_replace_phi_floydwarshall43_q;
    wire [0:0] i_a_sroa_52_4_replace_phi_floydwarshall46_s;
    reg [31:0] i_a_sroa_52_4_replace_phi_floydwarshall46_q;
    wire [0:0] i_a_sroa_57_4_replace_phi_floydwarshall49_s;
    reg [31:0] i_a_sroa_57_4_replace_phi_floydwarshall49_q;
    wire [0:0] i_a_sroa_62_4_replace_phi_floydwarshall41_s;
    reg [31:0] i_a_sroa_62_4_replace_phi_floydwarshall41_q;
    wire [0:0] i_a_sroa_67_4_replace_phi_floydwarshall44_s;
    reg [31:0] i_a_sroa_67_4_replace_phi_floydwarshall44_q;
    wire [0:0] i_a_sroa_72_4_replace_phi_floydwarshall47_s;
    reg [31:0] i_a_sroa_72_4_replace_phi_floydwarshall47_q;
    wire [0:0] i_a_sroa_77_4_replace_phi_floydwarshall50_s;
    reg [31:0] i_a_sroa_77_4_replace_phi_floydwarshall50_q;
    wire [0:0] i_a_sroa_7_4_replace_phi_floydwarshall36_s;
    reg [31:0] i_a_sroa_7_4_replace_phi_floydwarshall36_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_out_dest_data_out_33_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_out_dest_data_out_31_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_out_dest_data_out_30_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_out_dest_data_out_29_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_out_dest_data_out_26_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_out_dest_data_out_23_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_out_dest_data_out_20_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_out_dest_data_out_28_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_out_dest_data_out_25_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_out_dest_data_out_22_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_out_dest_data_out_19_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_out_dest_data_out_27_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_out_dest_data_out_24_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_out_dest_data_out_21_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_out_dest_data_out_32_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_out_feedback_stall_out_53;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_out_feedback_stall_out_51;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_out_feedback_stall_out_50;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_out_feedback_stall_out_49;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_out_feedback_stall_out_48;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_out_feedback_stall_out_47;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_out_feedback_stall_out_46;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_out_feedback_stall_out_45;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_out_feedback_stall_out_44;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_out_feedback_stall_out_43;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_out_feedback_stall_out_42;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_out_feedback_stall_out_41;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_out_feedback_stall_out_40;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_out_feedback_stall_out_39;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_out_feedback_stall_out_52;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_out_valid_out;
    wire [0:0] floydWarshall_B7_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] floydWarshall_B7_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] floydWarshall_B7_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] floydWarshall_B7_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_6_tpl;
    wire [98:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    reg [98:0] coalesced_delay_0_0_q;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_b;
    wire [32:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [32:0] bubble_join_floydWarshall_B7_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_floydWarshall_B7_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_floydWarshall_B7_merge_reg_aunroll_x_c;
    wire [98:0] bubble_join_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_g;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg9;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg9;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed9;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg10;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg10;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed10;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg11;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg11;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed11;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg12;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg12;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed12;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg13;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg13;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed13;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg14;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg14;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed14;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg15;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg15;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed15;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg16;
    reg [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg16;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed16;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or8;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or9;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or10;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or11;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or12;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or13;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or14;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_or15;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V9;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V10;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V11;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V12;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V13;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V14;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V15;
    wire [0:0] SE_out_floydWarshall_B7_merge_reg_aunroll_x_V16;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg5;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg6;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg7;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg7;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed7;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg8;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg8;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed8;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg9;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg9;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed9;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg10;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg10;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed10;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg11;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg11;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed11;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg12;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg12;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed12;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg13;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg13;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed13;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg14;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg14;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed14;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg15;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg15;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed15;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg16;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg16;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed16;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or7;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or8;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or9;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or10;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or11;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or12;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or13;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or14;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or15;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V6;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V7;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V8;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V9;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V10;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V11;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V12;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V13;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V14;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V15;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V16;
    wire [0:0] SE_sel_for_coalesced_delay_0_wireValid;
    wire [0:0] SE_sel_for_coalesced_delay_0_and0;
    wire [0:0] SE_sel_for_coalesced_delay_0_and1;
    wire [0:0] SE_sel_for_coalesced_delay_0_and2;
    wire [0:0] SE_sel_for_coalesced_delay_0_and3;
    wire [0:0] SE_sel_for_coalesced_delay_0_and4;
    wire [0:0] SE_sel_for_coalesced_delay_0_and5;
    wire [0:0] SE_sel_for_coalesced_delay_0_and6;
    wire [0:0] SE_sel_for_coalesced_delay_0_and7;
    wire [0:0] SE_sel_for_coalesced_delay_0_and8;
    wire [0:0] SE_sel_for_coalesced_delay_0_and9;
    wire [0:0] SE_sel_for_coalesced_delay_0_and10;
    wire [0:0] SE_sel_for_coalesced_delay_0_and11;
    wire [0:0] SE_sel_for_coalesced_delay_0_and12;
    wire [0:0] SE_sel_for_coalesced_delay_0_and13;
    wire [0:0] SE_sel_for_coalesced_delay_0_and14;
    wire [0:0] SE_sel_for_coalesced_delay_0_and15;
    wire [0:0] SE_sel_for_coalesced_delay_0_and16;
    wire [0:0] SE_sel_for_coalesced_delay_0_and17;
    wire [0:0] SE_sel_for_coalesced_delay_0_and18;
    wire [0:0] SE_sel_for_coalesced_delay_0_and19;
    wire [0:0] SE_sel_for_coalesced_delay_0_and20;
    wire [0:0] SE_sel_for_coalesced_delay_0_and21;
    wire [0:0] SE_sel_for_coalesced_delay_0_and22;
    wire [0:0] SE_sel_for_coalesced_delay_0_and23;
    wire [0:0] SE_sel_for_coalesced_delay_0_and24;
    wire [0:0] SE_sel_for_coalesced_delay_0_and25;
    wire [0:0] SE_sel_for_coalesced_delay_0_and26;
    wire [0:0] SE_sel_for_coalesced_delay_0_and27;
    wire [0:0] SE_sel_for_coalesced_delay_0_and28;
    wire [0:0] SE_sel_for_coalesced_delay_0_and29;
    wire [0:0] SE_sel_for_coalesced_delay_0_and30;
    wire [0:0] SE_sel_for_coalesced_delay_0_and31;
    wire [0:0] SE_sel_for_coalesced_delay_0_backStall;
    wire [0:0] SE_sel_for_coalesced_delay_0_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_V0;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_wireValid;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_backStall;
    wire [0:0] SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_V0;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_valid_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_stall_in;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_valid_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_stall_out;
    wire bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_stall_out_bitsignaltemp;


    // bubble_join_stall_entry(BITJOIN,336)
    assign bubble_join_stall_entry_q = {in_inc55188, in_forked31};

    // bubble_select_stall_entry(BITSELECT,337)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);

    // SE_stall_entry(STALLENABLE,441)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = floydWarshall_B7_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // floydWarshall_B7_merge_reg_aunroll_x(BLACKBOX,195)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    floydWarshall_B7_merge_reg thefloydWarshall_B7_merge_reg_aunroll_x (
        .in_stall_in(SE_out_floydWarshall_B7_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .out_stall_out(floydWarshall_B7_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(floydWarshall_B7_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(floydWarshall_B7_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(floydWarshall_B7_merge_reg_aunroll_x_out_data_out_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_floydWarshall_B7_merge_reg_aunroll_x(BITJOIN,340)
    assign bubble_join_floydWarshall_B7_merge_reg_aunroll_x_q = {floydWarshall_B7_merge_reg_aunroll_x_out_data_out_1_tpl, floydWarshall_B7_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_floydWarshall_B7_merge_reg_aunroll_x(BITSELECT,341)
    assign bubble_select_floydWarshall_B7_merge_reg_aunroll_x_b = $unsigned(bubble_join_floydWarshall_B7_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_floydWarshall_B7_merge_reg_aunroll_x_c = $unsigned(bubble_join_floydWarshall_B7_merge_reg_aunroll_x_q[32:1]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1(STALLENABLE,653)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3(BLACKBOX,71)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi47_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3 (
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_33_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_out_dest_data_out_33_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3(STALLENABLE,657)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5(BLACKBOX,72)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi45_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5 (
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_31_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_out_dest_data_out_31_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x(BITJOIN,359)
    assign bubble_join_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_q = {i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_6_tpl, i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_5_tpl, i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_4_tpl, i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_3_tpl, i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_2_tpl, i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x(BITSELECT,360)
    assign bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_q[65:34]);
    assign bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_q[98:67]);

    // c_i32_undef54(CONSTANT,3)
    assign c_i32_undef54_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19(BLACKBOX,87)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_53@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_53(in_feedback_in_53),
        .in_feedback_valid_in_53(in_feedback_valid_in_53),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_out_feedback_stall_out_53),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21(BLACKBOX,88)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_51@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_51(in_feedback_in_51),
        .in_feedback_valid_in_51(in_feedback_valid_in_51),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_out_feedback_stall_out_51),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4(STALLENABLE,659)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6(BLACKBOX,73)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi44_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6 (
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_V0),
        .out_dest_data_out_30_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_out_dest_data_out_30_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22(BLACKBOX,89)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_50@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_50(in_feedback_in_50),
        .in_feedback_valid_in_50(in_feedback_valid_in_50),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_out_feedback_stall_out_50),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5(STALLENABLE,661)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7(BLACKBOX,74)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi43_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7 (
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_V0),
        .out_dest_data_out_29_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_out_dest_data_out_29_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23(BLACKBOX,90)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_49@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_49(in_feedback_in_49),
        .in_feedback_valid_in_49(in_feedback_valid_in_49),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_out_feedback_stall_out_49),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8(STALLENABLE,667)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10(BLACKBOX,75)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi40_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10 (
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_V0),
        .out_dest_data_out_26_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_out_dest_data_out_26_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26(BLACKBOX,91)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_48@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_48(in_feedback_in_48),
        .in_feedback_valid_in_48(in_feedback_valid_in_48),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V4),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_out_feedback_stall_out_48),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11(STALLENABLE,673)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13(BLACKBOX,76)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi37_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_V0),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_out_dest_data_out_23_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29(BLACKBOX,92)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_47@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_47(in_feedback_in_47),
        .in_feedback_valid_in_47(in_feedback_valid_in_47),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V5),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_out_feedback_stall_out_47),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14(STALLENABLE,679)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16(BLACKBOX,77)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi34_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_V0),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_out_dest_data_out_20_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32(BLACKBOX,93)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_46@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_46(in_feedback_in_46),
        .in_feedback_valid_in_46(in_feedback_valid_in_46),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V6),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_out_feedback_stall_out_46),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6(STALLENABLE,663)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8(BLACKBOX,78)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi42_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8 (
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_V0),
        .out_dest_data_out_28_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_out_dest_data_out_28_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24(BLACKBOX,94)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_45@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_45(in_feedback_in_45),
        .in_feedback_valid_in_45(in_feedback_valid_in_45),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V7),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_out_feedback_stall_out_45),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9(STALLENABLE,669)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11(BLACKBOX,79)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi39_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11 (
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_V0),
        .out_dest_data_out_25_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_out_dest_data_out_25_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27(BLACKBOX,95)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_44@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_44(in_feedback_in_44),
        .in_feedback_valid_in_44(in_feedback_valid_in_44),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V8),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_out_feedback_stall_out_44),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12(STALLENABLE,675)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14(BLACKBOX,80)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi36_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14 (
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_V0),
        .out_dest_data_out_22_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_out_dest_data_out_22_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30(BLACKBOX,96)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_43@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_43(in_feedback_in_43),
        .in_feedback_valid_in_43(in_feedback_valid_in_43),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V9),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_out_feedback_stall_out_43),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15(STALLENABLE,681)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17(BLACKBOX,81)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi33_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_V0),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_out_dest_data_out_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33(BLACKBOX,97)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_42@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_42(in_feedback_in_42),
        .in_feedback_valid_in_42(in_feedback_valid_in_42),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V10),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_out_feedback_stall_out_42),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7(STALLENABLE,665)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9(BLACKBOX,82)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi41_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9 (
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_V0),
        .out_dest_data_out_27_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_out_dest_data_out_27_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25(BLACKBOX,98)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_41@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_41(in_feedback_in_41),
        .in_feedback_valid_in_41(in_feedback_valid_in_41),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V11),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_out_feedback_stall_out_41),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10(STALLENABLE,671)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12(BLACKBOX,83)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi38_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12 (
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_V0),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_out_dest_data_out_24_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28(BLACKBOX,99)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_40@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_40(in_feedback_in_40),
        .in_feedback_valid_in_40(in_feedback_valid_in_40),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V12),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_out_feedback_stall_out_40),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13(STALLENABLE,677)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15(BLACKBOX,84)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi35_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_V0),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_out_dest_data_out_21_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31(BLACKBOX,100)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_39@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_39(in_feedback_in_39),
        .in_feedback_valid_in_39(in_feedback_valid_in_39),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V13),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_out_feedback_stall_out_39),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34(BLACKBOX,101)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_38@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_38(in_feedback_in_38),
        .in_feedback_valid_in_38(in_feedback_valid_in_38),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V14),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_out_feedback_stall_out_38),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2(STALLENABLE,655)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4(BLACKBOX,86)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi46_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4 (
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_32_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_out_dest_data_out_32_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20(BLACKBOX,102)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_52@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20 (
        .in_data_in(c_i32_undef54_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f),
        .in_feedback_in_52(in_feedback_in_52),
        .in_feedback_valid_in_52(in_feedback_valid_in_52),
        .in_predicate(GND_q),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V15),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_out_feedback_stall_out_52),
        .out_stall_out(i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,449)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_sel_for_coalesced_delay_0_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V16;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SE_sel_for_coalesced_delay_0(STALLENABLE,448)
    // Valid signal propagation
    assign SE_sel_for_coalesced_delay_0_V0 = SE_sel_for_coalesced_delay_0_wireValid;
    // Backward Stall generation
    assign SE_sel_for_coalesced_delay_0_backStall = in_stall_in | ~ (SE_sel_for_coalesced_delay_0_wireValid);
    // Computing multiple Valid(s)
    assign SE_sel_for_coalesced_delay_0_and0 = SE_coalesced_delay_0_0_V0;
    assign SE_sel_for_coalesced_delay_0_and1 = i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_out_valid_out & SE_sel_for_coalesced_delay_0_and0;
    assign SE_sel_for_coalesced_delay_0_and2 = i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_out_valid_out & SE_sel_for_coalesced_delay_0_and1;
    assign SE_sel_for_coalesced_delay_0_and3 = i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_out_valid_out & SE_sel_for_coalesced_delay_0_and2;
    assign SE_sel_for_coalesced_delay_0_and4 = i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_out_valid_out & SE_sel_for_coalesced_delay_0_and3;
    assign SE_sel_for_coalesced_delay_0_and5 = i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_out_valid_out & SE_sel_for_coalesced_delay_0_and4;
    assign SE_sel_for_coalesced_delay_0_and6 = i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_out_valid_out & SE_sel_for_coalesced_delay_0_and5;
    assign SE_sel_for_coalesced_delay_0_and7 = i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_out_valid_out & SE_sel_for_coalesced_delay_0_and6;
    assign SE_sel_for_coalesced_delay_0_and8 = i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_out_valid_out & SE_sel_for_coalesced_delay_0_and7;
    assign SE_sel_for_coalesced_delay_0_and9 = i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_out_valid_out & SE_sel_for_coalesced_delay_0_and8;
    assign SE_sel_for_coalesced_delay_0_and10 = i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_out_valid_out & SE_sel_for_coalesced_delay_0_and9;
    assign SE_sel_for_coalesced_delay_0_and11 = i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_out_valid_out & SE_sel_for_coalesced_delay_0_and10;
    assign SE_sel_for_coalesced_delay_0_and12 = i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_out_valid_out & SE_sel_for_coalesced_delay_0_and11;
    assign SE_sel_for_coalesced_delay_0_and13 = i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_out_valid_out & SE_sel_for_coalesced_delay_0_and12;
    assign SE_sel_for_coalesced_delay_0_and14 = i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_out_valid_out & SE_sel_for_coalesced_delay_0_and13;
    assign SE_sel_for_coalesced_delay_0_and15 = i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_out_valid_out & SE_sel_for_coalesced_delay_0_and14;
    assign SE_sel_for_coalesced_delay_0_and16 = i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_out_valid_out & SE_sel_for_coalesced_delay_0_and15;
    assign SE_sel_for_coalesced_delay_0_and17 = i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_out_valid_out & SE_sel_for_coalesced_delay_0_and16;
    assign SE_sel_for_coalesced_delay_0_and18 = i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_out_valid_out & SE_sel_for_coalesced_delay_0_and17;
    assign SE_sel_for_coalesced_delay_0_and19 = i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_out_valid_out & SE_sel_for_coalesced_delay_0_and18;
    assign SE_sel_for_coalesced_delay_0_and20 = i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_out_valid_out & SE_sel_for_coalesced_delay_0_and19;
    assign SE_sel_for_coalesced_delay_0_and21 = i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_out_valid_out & SE_sel_for_coalesced_delay_0_and20;
    assign SE_sel_for_coalesced_delay_0_and22 = i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_out_valid_out & SE_sel_for_coalesced_delay_0_and21;
    assign SE_sel_for_coalesced_delay_0_and23 = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_out_valid_out & SE_sel_for_coalesced_delay_0_and22;
    assign SE_sel_for_coalesced_delay_0_and24 = i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_out_valid_out & SE_sel_for_coalesced_delay_0_and23;
    assign SE_sel_for_coalesced_delay_0_and25 = i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_out_valid_out & SE_sel_for_coalesced_delay_0_and24;
    assign SE_sel_for_coalesced_delay_0_and26 = i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_out_valid_out & SE_sel_for_coalesced_delay_0_and25;
    assign SE_sel_for_coalesced_delay_0_and27 = i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_out_valid_out & SE_sel_for_coalesced_delay_0_and26;
    assign SE_sel_for_coalesced_delay_0_and28 = i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_out_valid_out & SE_sel_for_coalesced_delay_0_and27;
    assign SE_sel_for_coalesced_delay_0_and29 = i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_out_valid_out & SE_sel_for_coalesced_delay_0_and28;
    assign SE_sel_for_coalesced_delay_0_and30 = i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_out_valid_out & SE_sel_for_coalesced_delay_0_and29;
    assign SE_sel_for_coalesced_delay_0_and31 = i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_out_valid_out & SE_sel_for_coalesced_delay_0_and30;
    assign SE_sel_for_coalesced_delay_0_wireValid = i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_out_valid_out & SE_sel_for_coalesced_delay_0_and31;

    // i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18(BLACKBOX,85)@6
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi32_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(SE_sel_for_coalesced_delay_0_backStall),
        .in_valid_in(SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_V0),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_out_dest_data_out_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16(STALLENABLE,683)
    // Valid signal propagation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_V0 = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_backStall = i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_out_stall_out | ~ (SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_wireValid = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_valid_out;

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg(STALLFIFO,703)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V15;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg(STALLFIFO,702)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V14;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg(STALLFIFO,701)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V13;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg(STALLFIFO,700)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V12;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg(STALLFIFO,699)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V11;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg(STALLFIFO,698)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V10;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg(STALLFIFO,697)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V9;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg(STALLFIFO,696)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V8;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg(STALLFIFO,695)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V7;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg(STALLFIFO,694)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V6;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg(STALLFIFO,693)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V5;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg(STALLFIFO,692)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V4;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg(STALLFIFO,691)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V3;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg(STALLFIFO,690)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V2;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg(STALLFIFO,689)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V1;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg(STALLFIFO,688)
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_valid_in = SE_out_floydWarshall_B7_merge_reg_aunroll_x_V0;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_floydWarshall_B7_merge_reg_aunroll_x(STALLENABLE,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg8 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg9 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg10 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg11 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg12 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg13 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg14 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg15 <= '0;
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg16 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg0 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg1 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg2 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg3 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg4 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg5 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg6 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg7 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg8 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg8;
            // Successor 9
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg9 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg9;
            // Successor 10
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg10 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg10;
            // Successor 11
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg11 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg11;
            // Successor 12
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg12 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg12;
            // Successor 13
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg13 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg13;
            // Successor 14
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg14 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg14;
            // Successor 15
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg15 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg15;
            // Successor 16
            SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg16 <= SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg16;
        end
    end
    // Input Stall processing
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg0;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg1;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg2;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg3;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed4 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_5_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg4;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed5 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_6_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg5;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed6 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_7_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg6;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed7 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_8_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg7;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed8 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_9_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg8;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed9 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_10_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg9;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed10 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_11_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg10;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed11 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_12_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg11;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed12 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_13_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg12;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed13 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_14_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg13;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed14 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_15_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg14;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed15 = (~ (bubble_out_floydWarshall_B7_merge_reg_aunroll_x_16_reg_stall_out) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg15;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed16 = (~ (i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_o_stall) & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid) | SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg16;
    // Consuming
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid = SE_out_floydWarshall_B7_merge_reg_aunroll_x_backStall & SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg0 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed0;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg1 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed1;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg2 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed2;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg3 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed3;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg4 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed4;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg5 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed5;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg6 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed6;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg7 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed7;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg8 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed8;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg9 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed9;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg10 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed10;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg11 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed11;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg12 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed12;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg13 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed13;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg14 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed14;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg15 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed15;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_toReg16 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_StallValid & SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed16;
    // Backward Stall generation
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or0 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed0;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or1 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed1 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or0;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or2 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed2 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or1;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or3 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed3 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or2;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or4 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed4 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or3;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or5 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed5 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or4;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or6 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed6 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or5;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or7 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed7 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or6;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or8 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed8 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or7;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or9 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed9 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or8;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or10 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed10 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or9;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or11 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed11 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or10;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or12 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed12 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or11;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or13 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed13 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or12;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or14 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed14 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or13;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_or15 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed15 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or14;
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireStall = ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_consumed16 & SE_out_floydWarshall_B7_merge_reg_aunroll_x_or15);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_backStall = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V0 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg0);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V1 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg1);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V2 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg2);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V3 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg3);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V4 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg4);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V5 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg5);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V6 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg6);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V7 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg7);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V8 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg8);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V9 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg9);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V10 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg10);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V11 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg11);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V12 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg12);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V13 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg13);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V14 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg14);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V15 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg15);
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_V16 = SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_floydWarshall_B7_merge_reg_aunroll_x_fromReg16);
    // Computing multiple Valid(s)
    assign SE_out_floydWarshall_B7_merge_reg_aunroll_x_wireValid = floydWarshall_B7_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x(STALLENABLE,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg4 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg5 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg6 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg7 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg8 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg9 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg10 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg11 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg12 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg13 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg14 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg15 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg16 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg5 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg5;
            // Successor 6
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg6 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg6;
            // Successor 7
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg7 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg7;
            // Successor 8
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg8 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg8;
            // Successor 9
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg9 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg9;
            // Successor 10
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg10 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg10;
            // Successor 11
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg11 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg11;
            // Successor 12
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg12 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg12;
            // Successor 13
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg13 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg13;
            // Successor 14
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg14 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg14;
            // Successor 15
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg15 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg15;
            // Successor 16
            SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg16 <= SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg16;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed4 = (~ (i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg4;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed5 = (~ (i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg5;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed6 = (~ (i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg6;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed7 = (~ (i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg7;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed8 = (~ (i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg8;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed9 = (~ (i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg9;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed10 = (~ (i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg10;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed11 = (~ (i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg11;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed12 = (~ (i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg12;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed13 = (~ (i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg13;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed14 = (~ (i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg14;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed15 = (~ (i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg15;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed16 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg16;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg4 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed4;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg5 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed5;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg6 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed6;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg7 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed7;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg8 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed8;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg9 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed9;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg10 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed10;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg11 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed11;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg12 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed12;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg13 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed13;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg14 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed14;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg15 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed15;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_toReg16 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed16;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or3 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or2;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or4 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed4 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or3;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or5 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed5 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or4;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or6 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed6 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or5;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or7 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed7 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or6;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or8 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed8 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or7;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or9 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed9 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or8;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or10 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed10 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or9;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or11 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed11 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or10;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or12 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed12 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or11;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or13 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed13 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or12;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or14 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed14 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or13;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or15 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed15 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or14;
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_consumed16 & SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_or15);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V4 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg4);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V5 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg5);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V6 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg6);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V7 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg7);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V8 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg8);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V9 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg9);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V10 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg10);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V11 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg11);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V12 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg12);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V13 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg13);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V14 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg14);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V15 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg15);
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_V16 = SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_fromReg16);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x(BLACKBOX,196)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit254_0_tpl@5
    // out out_c0_exit254_1_tpl@5
    // out out_c0_exit254_2_tpl@5
    // out out_c0_exit254_3_tpl@5
    // out out_c0_exit254_4_tpl@5
    // out out_c0_exit254_5_tpl@5
    // out out_c0_exit254_6_tpl@5
    floydWarshall_i_sfc_s_c0_in_for_cond19_pA000000Z24725_floydwarshall1 thei_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_backStall),
        .in_i_valid(SE_out_floydWarshall_B7_merge_reg_aunroll_x_V16),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni2246_0_tpl(GND_q),
        .in_c0_eni2246_1_tpl(bubble_select_floydWarshall_B7_merge_reg_aunroll_x_b),
        .in_c0_eni2246_2_tpl(bubble_select_floydWarshall_B7_merge_reg_aunroll_x_c),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_stall_out(i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_valid_out(i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit254_0_tpl(),
        .out_c0_exit254_1_tpl(i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_1_tpl),
        .out_c0_exit254_2_tpl(i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_2_tpl),
        .out_c0_exit254_3_tpl(i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_3_tpl),
        .out_c0_exit254_4_tpl(i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_4_tpl),
        .out_c0_exit254_5_tpl(i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_5_tpl),
        .out_c0_exit254_6_tpl(i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_c0_exit254_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_valid_out = i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_stall_out = i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_floydwarshall2_exiting_stall_out;

    // feedback_stall_out_38_sync(GPOUT,23)
    assign out_feedback_stall_out_38 = i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_out_feedback_stall_out_38;

    // feedback_stall_out_39_sync(GPOUT,24)
    assign out_feedback_stall_out_39 = i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_out_feedback_stall_out_39;

    // feedback_stall_out_40_sync(GPOUT,25)
    assign out_feedback_stall_out_40 = i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_out_feedback_stall_out_40;

    // feedback_stall_out_41_sync(GPOUT,26)
    assign out_feedback_stall_out_41 = i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_out_feedback_stall_out_41;

    // feedback_stall_out_42_sync(GPOUT,27)
    assign out_feedback_stall_out_42 = i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_out_feedback_stall_out_42;

    // feedback_stall_out_43_sync(GPOUT,28)
    assign out_feedback_stall_out_43 = i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_out_feedback_stall_out_43;

    // feedback_stall_out_44_sync(GPOUT,29)
    assign out_feedback_stall_out_44 = i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_out_feedback_stall_out_44;

    // feedback_stall_out_45_sync(GPOUT,30)
    assign out_feedback_stall_out_45 = i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_out_feedback_stall_out_45;

    // feedback_stall_out_46_sync(GPOUT,31)
    assign out_feedback_stall_out_46 = i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_out_feedback_stall_out_46;

    // feedback_stall_out_47_sync(GPOUT,32)
    assign out_feedback_stall_out_47 = i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_out_feedback_stall_out_47;

    // feedback_stall_out_48_sync(GPOUT,33)
    assign out_feedback_stall_out_48 = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_out_feedback_stall_out_48;

    // feedback_stall_out_49_sync(GPOUT,34)
    assign out_feedback_stall_out_49 = i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_out_feedback_stall_out_49;

    // feedback_stall_out_50_sync(GPOUT,35)
    assign out_feedback_stall_out_50 = i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_out_feedback_stall_out_50;

    // feedback_stall_out_51_sync(GPOUT,36)
    assign out_feedback_stall_out_51 = i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_out_feedback_stall_out_51;

    // feedback_stall_out_52_sync(GPOUT,37)
    assign out_feedback_stall_out_52 = i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_out_feedback_stall_out_52;

    // feedback_stall_out_53_sync(GPOUT,38)
    assign out_feedback_stall_out_53 = i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_out_feedback_stall_out_53;

    // pipeline_valid_out_sync(GPOUT,172)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,192)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // join_for_coalesced_delay_0(BITJOIN,204)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_cond19_preheader_floydwarshalls_c0_enter24725_floydwarshall1_aunroll_x_d};

    // coalesced_delay_0_0(REG,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(99'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,205)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[95:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[96:96]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[97:97]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[98:98]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4(BITJOIN,268)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_out_dest_data_out_32_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4(BITSELECT,269)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20(BITJOIN,332)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_q = i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20(BITSELECT,333)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_q[31:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_a_sroa_7_4_replace_phi_floydwarshall36(MUX,70)@6
    assign i_a_sroa_7_4_replace_phi_floydwarshall36_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_7_4_replace_phi_floydwarshall36_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_b)
    begin
        unique case (i_a_sroa_7_4_replace_phi_floydwarshall36_s)
            1'b0 : i_a_sroa_7_4_replace_phi_floydwarshall36_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_7_4_pop52_floydwarshall20_b;
            1'b1 : i_a_sroa_7_4_replace_phi_floydwarshall36_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_7_3_replace_phi46_floydwarshall4_b;
            default : i_a_sroa_7_4_replace_phi_floydwarshall36_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18(BITJOIN,264)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_out_dest_data_out_18_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18(BITSELECT,265)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34(BITJOIN,328)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_q = i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34(BITSELECT,329)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_q[31:0]);

    // i_a_sroa_77_4_replace_phi_floydwarshall50(MUX,69)@6
    assign i_a_sroa_77_4_replace_phi_floydwarshall50_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_77_4_replace_phi_floydwarshall50_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_b)
    begin
        unique case (i_a_sroa_77_4_replace_phi_floydwarshall50_s)
            1'b0 : i_a_sroa_77_4_replace_phi_floydwarshall50_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_77_4_pop38_floydwarshall34_b;
            1'b1 : i_a_sroa_77_4_replace_phi_floydwarshall50_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall18_b;
            default : i_a_sroa_77_4_replace_phi_floydwarshall50_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15(BITJOIN,260)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_out_dest_data_out_21_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15(BITSELECT,261)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31(BITJOIN,324)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_q = i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31(BITSELECT,325)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_q[31:0]);

    // i_a_sroa_72_4_replace_phi_floydwarshall47(MUX,68)@6
    assign i_a_sroa_72_4_replace_phi_floydwarshall47_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_72_4_replace_phi_floydwarshall47_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_b)
    begin
        unique case (i_a_sroa_72_4_replace_phi_floydwarshall47_s)
            1'b0 : i_a_sroa_72_4_replace_phi_floydwarshall47_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_72_4_pop39_floydwarshall31_b;
            1'b1 : i_a_sroa_72_4_replace_phi_floydwarshall47_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_72_3_replace_phi35_floydwarshall15_b;
            default : i_a_sroa_72_4_replace_phi_floydwarshall47_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12(BITJOIN,256)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_out_dest_data_out_24_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12(BITSELECT,257)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28(BITJOIN,320)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_q = i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28(BITSELECT,321)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_q[31:0]);

    // i_a_sroa_67_4_replace_phi_floydwarshall44(MUX,67)@6
    assign i_a_sroa_67_4_replace_phi_floydwarshall44_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_67_4_replace_phi_floydwarshall44_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_b)
    begin
        unique case (i_a_sroa_67_4_replace_phi_floydwarshall44_s)
            1'b0 : i_a_sroa_67_4_replace_phi_floydwarshall44_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_67_4_pop40_floydwarshall28_b;
            1'b1 : i_a_sroa_67_4_replace_phi_floydwarshall44_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_67_3_replace_phi38_floydwarshall12_b;
            default : i_a_sroa_67_4_replace_phi_floydwarshall44_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9(BITJOIN,252)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_out_dest_data_out_27_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9(BITSELECT,253)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25(BITJOIN,316)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_q = i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25(BITSELECT,317)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_q[31:0]);

    // i_a_sroa_62_4_replace_phi_floydwarshall41(MUX,66)@6
    assign i_a_sroa_62_4_replace_phi_floydwarshall41_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_62_4_replace_phi_floydwarshall41_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_b)
    begin
        unique case (i_a_sroa_62_4_replace_phi_floydwarshall41_s)
            1'b0 : i_a_sroa_62_4_replace_phi_floydwarshall41_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_62_4_pop41_floydwarshall25_b;
            1'b1 : i_a_sroa_62_4_replace_phi_floydwarshall41_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_62_3_replace_phi41_floydwarshall9_b;
            default : i_a_sroa_62_4_replace_phi_floydwarshall41_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17(BITJOIN,248)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_out_dest_data_out_19_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17(BITSELECT,249)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33(BITJOIN,312)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_q = i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33(BITSELECT,313)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_q[31:0]);

    // i_a_sroa_57_4_replace_phi_floydwarshall49(MUX,65)@6
    assign i_a_sroa_57_4_replace_phi_floydwarshall49_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_57_4_replace_phi_floydwarshall49_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_b)
    begin
        unique case (i_a_sroa_57_4_replace_phi_floydwarshall49_s)
            1'b0 : i_a_sroa_57_4_replace_phi_floydwarshall49_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_57_4_pop42_floydwarshall33_b;
            1'b1 : i_a_sroa_57_4_replace_phi_floydwarshall49_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_57_3_replace_phi33_floydwarshall17_b;
            default : i_a_sroa_57_4_replace_phi_floydwarshall49_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14(BITJOIN,244)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_out_dest_data_out_22_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14(BITSELECT,245)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30(BITJOIN,308)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_q = i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30(BITSELECT,309)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_q[31:0]);

    // i_a_sroa_52_4_replace_phi_floydwarshall46(MUX,64)@6
    assign i_a_sroa_52_4_replace_phi_floydwarshall46_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_52_4_replace_phi_floydwarshall46_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_b)
    begin
        unique case (i_a_sroa_52_4_replace_phi_floydwarshall46_s)
            1'b0 : i_a_sroa_52_4_replace_phi_floydwarshall46_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_52_4_pop43_floydwarshall30_b;
            1'b1 : i_a_sroa_52_4_replace_phi_floydwarshall46_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_52_3_replace_phi36_floydwarshall14_b;
            default : i_a_sroa_52_4_replace_phi_floydwarshall46_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11(BITJOIN,240)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_out_dest_data_out_25_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11(BITSELECT,241)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27(BITJOIN,304)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_q = i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27(BITSELECT,305)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_q[31:0]);

    // i_a_sroa_47_4_replace_phi_floydwarshall43(MUX,63)@6
    assign i_a_sroa_47_4_replace_phi_floydwarshall43_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_47_4_replace_phi_floydwarshall43_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_b)
    begin
        unique case (i_a_sroa_47_4_replace_phi_floydwarshall43_s)
            1'b0 : i_a_sroa_47_4_replace_phi_floydwarshall43_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_47_4_pop44_floydwarshall27_b;
            1'b1 : i_a_sroa_47_4_replace_phi_floydwarshall43_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_47_3_replace_phi39_floydwarshall11_b;
            default : i_a_sroa_47_4_replace_phi_floydwarshall43_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8(BITJOIN,236)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_out_dest_data_out_28_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8(BITSELECT,237)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24(BITJOIN,300)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_q = i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24(BITSELECT,301)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_q[31:0]);

    // i_a_sroa_42_4_replace_phi_floydwarshall40(MUX,62)@6
    assign i_a_sroa_42_4_replace_phi_floydwarshall40_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_42_4_replace_phi_floydwarshall40_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_b)
    begin
        unique case (i_a_sroa_42_4_replace_phi_floydwarshall40_s)
            1'b0 : i_a_sroa_42_4_replace_phi_floydwarshall40_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_42_4_pop45_floydwarshall24_b;
            1'b1 : i_a_sroa_42_4_replace_phi_floydwarshall40_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_42_3_replace_phi42_floydwarshall8_b;
            default : i_a_sroa_42_4_replace_phi_floydwarshall40_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16(BITJOIN,232)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_out_dest_data_out_20_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16(BITSELECT,233)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32(BITJOIN,296)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_q = i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32(BITSELECT,297)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_q[31:0]);

    // i_a_sroa_37_4_replace_phi_floydwarshall48(MUX,61)@6
    assign i_a_sroa_37_4_replace_phi_floydwarshall48_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_37_4_replace_phi_floydwarshall48_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_b)
    begin
        unique case (i_a_sroa_37_4_replace_phi_floydwarshall48_s)
            1'b0 : i_a_sroa_37_4_replace_phi_floydwarshall48_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_37_4_pop46_floydwarshall32_b;
            1'b1 : i_a_sroa_37_4_replace_phi_floydwarshall48_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_37_3_replace_phi34_floydwarshall16_b;
            default : i_a_sroa_37_4_replace_phi_floydwarshall48_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13(BITJOIN,228)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_out_dest_data_out_23_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13(BITSELECT,229)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29(BITJOIN,292)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_q = i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29(BITSELECT,293)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_q[31:0]);

    // i_a_sroa_32_4_replace_phi_floydwarshall45(MUX,60)@6
    assign i_a_sroa_32_4_replace_phi_floydwarshall45_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_32_4_replace_phi_floydwarshall45_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_b)
    begin
        unique case (i_a_sroa_32_4_replace_phi_floydwarshall45_s)
            1'b0 : i_a_sroa_32_4_replace_phi_floydwarshall45_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_32_4_pop47_floydwarshall29_b;
            1'b1 : i_a_sroa_32_4_replace_phi_floydwarshall45_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_32_3_replace_phi37_floydwarshall13_b;
            default : i_a_sroa_32_4_replace_phi_floydwarshall45_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10(BITJOIN,224)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_out_dest_data_out_26_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10(BITSELECT,225)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26(BITJOIN,288)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_q = i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26(BITSELECT,289)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_q[31:0]);

    // i_a_sroa_27_4_replace_phi_floydwarshall42(MUX,59)@6
    assign i_a_sroa_27_4_replace_phi_floydwarshall42_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_27_4_replace_phi_floydwarshall42_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_b)
    begin
        unique case (i_a_sroa_27_4_replace_phi_floydwarshall42_s)
            1'b0 : i_a_sroa_27_4_replace_phi_floydwarshall42_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_27_4_pop48_floydwarshall26_b;
            1'b1 : i_a_sroa_27_4_replace_phi_floydwarshall42_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_27_3_replace_phi40_floydwarshall10_b;
            default : i_a_sroa_27_4_replace_phi_floydwarshall42_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7(BITJOIN,220)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_out_dest_data_out_29_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7(BITSELECT,221)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23(BITJOIN,284)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_q = i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23(BITSELECT,285)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_q[31:0]);

    // i_a_sroa_22_4_replace_phi_floydwarshall39(MUX,58)@6
    assign i_a_sroa_22_4_replace_phi_floydwarshall39_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_22_4_replace_phi_floydwarshall39_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_b)
    begin
        unique case (i_a_sroa_22_4_replace_phi_floydwarshall39_s)
            1'b0 : i_a_sroa_22_4_replace_phi_floydwarshall39_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_22_4_pop49_floydwarshall23_b;
            1'b1 : i_a_sroa_22_4_replace_phi_floydwarshall39_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_22_3_replace_phi43_floydwarshall7_b;
            default : i_a_sroa_22_4_replace_phi_floydwarshall39_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6(BITJOIN,216)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_out_dest_data_out_30_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6(BITSELECT,217)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22(BITJOIN,280)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_q = i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22(BITSELECT,281)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_q[31:0]);

    // i_a_sroa_17_4_replace_phi_floydwarshall38(MUX,57)@6
    assign i_a_sroa_17_4_replace_phi_floydwarshall38_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_17_4_replace_phi_floydwarshall38_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_b)
    begin
        unique case (i_a_sroa_17_4_replace_phi_floydwarshall38_s)
            1'b0 : i_a_sroa_17_4_replace_phi_floydwarshall38_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_17_4_pop50_floydwarshall22_b;
            1'b1 : i_a_sroa_17_4_replace_phi_floydwarshall38_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_17_3_replace_phi44_floydwarshall6_b;
            default : i_a_sroa_17_4_replace_phi_floydwarshall38_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5(BITJOIN,212)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_out_dest_data_out_31_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5(BITSELECT,213)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21(BITJOIN,276)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_q = i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21(BITSELECT,277)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_q[31:0]);

    // i_a_sroa_12_4_replace_phi_floydwarshall37(MUX,56)@6
    assign i_a_sroa_12_4_replace_phi_floydwarshall37_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_12_4_replace_phi_floydwarshall37_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_b)
    begin
        unique case (i_a_sroa_12_4_replace_phi_floydwarshall37_s)
            1'b0 : i_a_sroa_12_4_replace_phi_floydwarshall37_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_12_4_pop51_floydwarshall21_b;
            1'b1 : i_a_sroa_12_4_replace_phi_floydwarshall37_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_12_3_replace_phi45_floydwarshall5_b;
            default : i_a_sroa_12_4_replace_phi_floydwarshall37_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3(BITJOIN,208)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_q = i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_out_dest_data_out_33_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3(BITSELECT,209)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19(BITJOIN,272)
    assign bubble_join_i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_q = i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19(BITSELECT,273)
    assign bubble_select_i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_q[31:0]);

    // i_a_sroa_0_4_replace_phi_floydwarshall35(MUX,55)@6
    assign i_a_sroa_0_4_replace_phi_floydwarshall35_s = sel_for_coalesced_delay_0_g;
    always @(i_a_sroa_0_4_replace_phi_floydwarshall35_s or bubble_select_i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_b)
    begin
        unique case (i_a_sroa_0_4_replace_phi_floydwarshall35_s)
            1'b0 : i_a_sroa_0_4_replace_phi_floydwarshall35_q = bubble_select_i_llvm_fpga_pop_i32_a_sroa_0_4_pop53_floydwarshall19_b;
            1'b1 : i_a_sroa_0_4_replace_phi_floydwarshall35_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a_sroa_0_3_replace_phi47_floydwarshall3_b;
            default : i_a_sroa_0_4_replace_phi_floydwarshall35_q = 32'b0;
        endcase
    end

    // dupName_0_sync_out_x(GPOUT,194)@6
    assign out_A_sroa_0_4_replace_phi = i_a_sroa_0_4_replace_phi_floydwarshall35_q;
    assign out_A_sroa_12_4_replace_phi = i_a_sroa_12_4_replace_phi_floydwarshall37_q;
    assign out_A_sroa_17_4_replace_phi = i_a_sroa_17_4_replace_phi_floydwarshall38_q;
    assign out_A_sroa_22_4_replace_phi = i_a_sroa_22_4_replace_phi_floydwarshall39_q;
    assign out_A_sroa_27_4_replace_phi = i_a_sroa_27_4_replace_phi_floydwarshall42_q;
    assign out_A_sroa_32_4_replace_phi = i_a_sroa_32_4_replace_phi_floydwarshall45_q;
    assign out_A_sroa_37_4_replace_phi = i_a_sroa_37_4_replace_phi_floydwarshall48_q;
    assign out_A_sroa_42_4_replace_phi = i_a_sroa_42_4_replace_phi_floydwarshall40_q;
    assign out_A_sroa_47_4_replace_phi = i_a_sroa_47_4_replace_phi_floydwarshall43_q;
    assign out_A_sroa_52_4_replace_phi = i_a_sroa_52_4_replace_phi_floydwarshall46_q;
    assign out_A_sroa_57_4_replace_phi = i_a_sroa_57_4_replace_phi_floydwarshall49_q;
    assign out_A_sroa_62_4_replace_phi = i_a_sroa_62_4_replace_phi_floydwarshall41_q;
    assign out_A_sroa_67_4_replace_phi = i_a_sroa_67_4_replace_phi_floydwarshall44_q;
    assign out_A_sroa_72_4_replace_phi = i_a_sroa_72_4_replace_phi_floydwarshall47_q;
    assign out_A_sroa_77_4_replace_phi = i_a_sroa_77_4_replace_phi_floydwarshall50_q;
    assign out_A_sroa_7_4_replace_phi = i_a_sroa_7_4_replace_phi_floydwarshall36_q;
    assign out_c0_exe1255 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe2256 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe3257 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe4258 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe6 = sel_for_coalesced_delay_0_d;
    assign out_valid_out = SE_sel_for_coalesced_delay_0_V0;

endmodule
