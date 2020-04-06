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

// SystemVerilog created from floydWarshall_bb_B8_stall_region
// SystemVerilog created on Mon Apr  6 10:18:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_bb_B8_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_17_0,
    output wire [31:0] out_intel_reserved_ffwd_35_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_A_sroa_0_4_replace_phi191,
    input wire [31:0] in_A_sroa_12_4_replace_phi193,
    input wire [31:0] in_A_sroa_17_4_replace_phi194,
    input wire [31:0] in_A_sroa_22_4_replace_phi195,
    input wire [31:0] in_A_sroa_27_4_replace_phi198,
    input wire [31:0] in_A_sroa_32_4_replace_phi201,
    input wire [31:0] in_A_sroa_37_4_replace_phi204,
    input wire [31:0] in_A_sroa_42_4_replace_phi196,
    input wire [31:0] in_A_sroa_47_4_replace_phi199,
    input wire [31:0] in_A_sroa_52_4_replace_phi202,
    input wire [31:0] in_A_sroa_57_4_replace_phi205,
    input wire [31:0] in_A_sroa_62_4_replace_phi197,
    input wire [31:0] in_A_sroa_67_4_replace_phi200,
    input wire [31:0] in_A_sroa_72_4_replace_phi203,
    input wire [31:0] in_A_sroa_77_4_replace_phi206,
    input wire [31:0] in_A_sroa_7_4_replace_phi192,
    input wire [0:0] in_exitcond9207,
    input wire [0:0] in_forked81,
    input wire [31:0] in_i_127_pop54209,
    input wire [31:0] in_inc55178_pop55210,
    input wire [31:0] in_inc55190,
    input wire [0:0] in_notcmp97208,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_intel_reserved_ffwd_36_0,
    output wire [31:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12,
    output wire [31:0] out_c0_exe13,
    output wire [31:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [31:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [31:0] out_c0_exe2278,
    output wire [31:0] out_c0_exe3279,
    output wire [31:0] out_c0_exe4280,
    output wire [31:0] out_c0_exe5281,
    output wire [31:0] out_c0_exe6282,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_37_0,
    output wire [31:0] out_intel_reserved_ffwd_38_0,
    output wire [31:0] out_intel_reserved_ffwd_39_0,
    output wire [31:0] out_intel_reserved_ffwd_40_0,
    output wire [31:0] out_intel_reserved_ffwd_41_0,
    output wire [31:0] out_intel_reserved_ffwd_42_0,
    output wire [31:0] out_intel_reserved_ffwd_43_0,
    output wire [31:0] out_intel_reserved_ffwd_44_0,
    output wire [31:0] out_intel_reserved_ffwd_45_0,
    output wire [31:0] out_intel_reserved_ffwd_46_0,
    output wire [31:0] out_intel_reserved_ffwd_47_0,
    output wire [31:0] out_intel_reserved_ffwd_48_0,
    output wire [31:0] out_intel_reserved_ffwd_49_0,
    output wire [31:0] out_intel_reserved_ffwd_50_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] floydWarshall_B8_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] floydWarshall_B8_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [0:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [0:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [31:0] floydWarshall_B8_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_35_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_36_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_37_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_38_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_39_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_40_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_41_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_42_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_43_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_44_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_45_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_46_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_47_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_48_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_49_0;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_50_0;
    wire [0:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_20_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_21_tpl;
    wire [610:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [31:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [31:0] bubble_select_stall_entry_p;
    wire [31:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [31:0] bubble_select_stall_entry_t;
    wire [31:0] bubble_select_stall_entry_u;
    wire [31:0] bubble_select_stall_entry_v;
    wire [0:0] bubble_select_stall_entry_w;
    wire [610:0] bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_p;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_r;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_s;
    wire [0:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_t;
    wire [0:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_u;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_v;
    wire [31:0] bubble_select_floydWarshall_B8_merge_reg_aunroll_x_w;
    wire [546:0] bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_t;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_u;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_floydWarshall_B8_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_floydWarshall_B8_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_floydWarshall_B8_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,38)
    assign bubble_join_stall_entry_q = {in_notcmp97208, in_inc55190, in_inc55178_pop55210, in_i_127_pop54209, in_forked81, in_exitcond9207, in_A_sroa_7_4_replace_phi192, in_A_sroa_77_4_replace_phi206, in_A_sroa_72_4_replace_phi203, in_A_sroa_67_4_replace_phi200, in_A_sroa_62_4_replace_phi197, in_A_sroa_57_4_replace_phi205, in_A_sroa_52_4_replace_phi202, in_A_sroa_47_4_replace_phi199, in_A_sroa_42_4_replace_phi196, in_A_sroa_37_4_replace_phi204, in_A_sroa_32_4_replace_phi201, in_A_sroa_27_4_replace_phi198, in_A_sroa_22_4_replace_phi195, in_A_sroa_17_4_replace_phi194, in_A_sroa_12_4_replace_phi193, in_A_sroa_0_4_replace_phi191};

    // bubble_select_stall_entry(BITSELECT,39)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[127:96]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[159:128]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[191:160]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[223:192]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[255:224]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[287:256]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[319:288]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[351:320]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[383:352]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[415:384]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[447:416]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[479:448]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[511:480]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[512:512]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[513:513]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[545:514]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[577:546]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[609:578]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[610:610]);

    // SE_stall_entry(STALLENABLE,48)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = floydWarshall_B8_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // floydWarshall_B8_merge_reg_aunroll_x(BLACKBOX,35)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    // out out_data_out_13_tpl@1
    // out out_data_out_14_tpl@1
    // out out_data_out_15_tpl@1
    // out out_data_out_16_tpl@1
    // out out_data_out_17_tpl@1
    // out out_data_out_18_tpl@1
    // out out_data_out_19_tpl@1
    // out out_data_out_20_tpl@1
    // out out_data_out_21_tpl@1
    floydWarshall_B8_merge_reg thefloydWarshall_B8_merge_reg_aunroll_x (
        .in_stall_in(SE_out_floydWarshall_B8_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_s),
        .in_data_in_1_tpl(bubble_select_stall_entry_v),
        .in_data_in_2_tpl(bubble_select_stall_entry_b),
        .in_data_in_3_tpl(bubble_select_stall_entry_q),
        .in_data_in_4_tpl(bubble_select_stall_entry_c),
        .in_data_in_5_tpl(bubble_select_stall_entry_d),
        .in_data_in_6_tpl(bubble_select_stall_entry_e),
        .in_data_in_7_tpl(bubble_select_stall_entry_i),
        .in_data_in_8_tpl(bubble_select_stall_entry_m),
        .in_data_in_9_tpl(bubble_select_stall_entry_f),
        .in_data_in_10_tpl(bubble_select_stall_entry_j),
        .in_data_in_11_tpl(bubble_select_stall_entry_n),
        .in_data_in_12_tpl(bubble_select_stall_entry_g),
        .in_data_in_13_tpl(bubble_select_stall_entry_k),
        .in_data_in_14_tpl(bubble_select_stall_entry_o),
        .in_data_in_15_tpl(bubble_select_stall_entry_h),
        .in_data_in_16_tpl(bubble_select_stall_entry_l),
        .in_data_in_17_tpl(bubble_select_stall_entry_p),
        .in_data_in_18_tpl(bubble_select_stall_entry_r),
        .in_data_in_19_tpl(bubble_select_stall_entry_w),
        .in_data_in_20_tpl(bubble_select_stall_entry_t),
        .in_data_in_21_tpl(bubble_select_stall_entry_u),
        .out_stall_out(floydWarshall_B8_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(floydWarshall_B8_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(floydWarshall_B8_merge_reg_aunroll_x_out_data_out_21_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_floydWarshall_B8_merge_reg_aunroll_x(BITJOIN,42)
    assign bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q = {floydWarshall_B8_merge_reg_aunroll_x_out_data_out_21_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_20_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_19_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_18_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_17_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_16_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_15_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_14_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_13_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_12_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_11_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_10_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_9_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_8_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_7_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_6_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_5_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_4_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_3_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_2_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_1_tpl, floydWarshall_B8_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_floydWarshall_B8_merge_reg_aunroll_x(BITSELECT,43)
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_b = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_c = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_d = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_e = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[96:65]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_f = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[128:97]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_g = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[160:129]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_h = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[192:161]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_i = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[224:193]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_j = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[256:225]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_k = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[288:257]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_l = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[320:289]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_m = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[352:321]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_n = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[384:353]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_o = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[416:385]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_p = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[448:417]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_q = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[480:449]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_r = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[512:481]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_s = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[544:513]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_t = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[545:545]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_u = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[546:546]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_v = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[578:547]);
    assign bubble_select_floydWarshall_B8_merge_reg_aunroll_x_w = $unsigned(bubble_join_floydWarshall_B8_merge_reg_aunroll_x_q[610:579]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_floydWarshall_B8_merge_reg_aunroll_x(STALLENABLE,51)
    // Valid signal propagation
    assign SE_out_floydWarshall_B8_merge_reg_aunroll_x_V0 = SE_out_floydWarshall_B8_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_floydWarshall_B8_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_o_stall | ~ (SE_out_floydWarshall_B8_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_floydWarshall_B8_merge_reg_aunroll_x_wireValid = floydWarshall_B8_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x(STALLENABLE,53)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x(BLACKBOX,36)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out@20000000
    // out out_intel_reserved_ffwd_35_0@20000000
    // out out_intel_reserved_ffwd_36_0@20000000
    // out out_intel_reserved_ffwd_37_0@20000000
    // out out_intel_reserved_ffwd_38_0@20000000
    // out out_intel_reserved_ffwd_39_0@20000000
    // out out_intel_reserved_ffwd_40_0@20000000
    // out out_intel_reserved_ffwd_41_0@20000000
    // out out_intel_reserved_ffwd_42_0@20000000
    // out out_intel_reserved_ffwd_43_0@20000000
    // out out_intel_reserved_ffwd_44_0@20000000
    // out out_intel_reserved_ffwd_45_0@20000000
    // out out_intel_reserved_ffwd_46_0@20000000
    // out out_intel_reserved_ffwd_47_0@20000000
    // out out_intel_reserved_ffwd_48_0@20000000
    // out out_intel_reserved_ffwd_49_0@20000000
    // out out_intel_reserved_ffwd_50_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit276_0_tpl@6
    // out out_c0_exit276_1_tpl@6
    // out out_c0_exit276_2_tpl@6
    // out out_c0_exit276_3_tpl@6
    // out out_c0_exit276_4_tpl@6
    // out out_c0_exit276_5_tpl@6
    // out out_c0_exit276_6_tpl@6
    // out out_c0_exit276_7_tpl@6
    // out out_c0_exit276_8_tpl@6
    // out out_c0_exit276_9_tpl@6
    // out out_c0_exit276_10_tpl@6
    // out out_c0_exit276_11_tpl@6
    // out out_c0_exit276_12_tpl@6
    // out out_c0_exit276_13_tpl@6
    // out out_c0_exit276_14_tpl@6
    // out out_c0_exit276_15_tpl@6
    // out out_c0_exit276_16_tpl@6
    // out out_c0_exit276_17_tpl@6
    // out out_c0_exit276_18_tpl@6
    // out out_c0_exit276_19_tpl@6
    // out out_c0_exit276_20_tpl@6
    // out out_c0_exit276_21_tpl@6
    // out out_c0_exit276_22_tpl@6
    floydWarshall_i_sfc_s_c0_in_for_body21_fA000000Z26426_floydwarshall1 thei_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_backStall),
        .in_i_valid(SE_out_floydWarshall_B8_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni22_0_tpl(GND_q),
        .in_c0_eni22_1_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_b),
        .in_c0_eni22_2_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_v),
        .in_c0_eni22_3_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_h),
        .in_c0_eni22_4_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_i),
        .in_c0_eni22_5_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_j),
        .in_c0_eni22_6_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_d),
        .in_c0_eni22_7_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_e),
        .in_c0_eni22_8_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_k),
        .in_c0_eni22_9_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_l),
        .in_c0_eni22_10_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_m),
        .in_c0_eni22_11_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_f),
        .in_c0_eni22_12_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_n),
        .in_c0_eni22_13_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_o),
        .in_c0_eni22_14_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_p),
        .in_c0_eni22_15_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_g),
        .in_c0_eni22_16_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_q),
        .in_c0_eni22_17_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_r),
        .in_c0_eni22_18_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_s),
        .in_c0_eni22_19_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_w),
        .in_c0_eni22_20_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_t),
        .in_c0_eni22_21_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_u),
        .in_c0_eni22_22_tpl(bubble_select_floydWarshall_B8_merge_reg_aunroll_x_c),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out),
        .out_intel_reserved_ffwd_35_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_50_0(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_50_0),
        .out_o_stall(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit276_0_tpl(),
        .out_c0_exit276_1_tpl(),
        .out_c0_exit276_2_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_2_tpl),
        .out_c0_exit276_3_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_3_tpl),
        .out_c0_exit276_4_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_4_tpl),
        .out_c0_exit276_5_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_5_tpl),
        .out_c0_exit276_6_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_6_tpl),
        .out_c0_exit276_7_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_7_tpl),
        .out_c0_exit276_8_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_8_tpl),
        .out_c0_exit276_9_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_9_tpl),
        .out_c0_exit276_10_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_10_tpl),
        .out_c0_exit276_11_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_11_tpl),
        .out_c0_exit276_12_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_12_tpl),
        .out_c0_exit276_13_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_13_tpl),
        .out_c0_exit276_14_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_14_tpl),
        .out_c0_exit276_15_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_15_tpl),
        .out_c0_exit276_16_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_16_tpl),
        .out_c0_exit276_17_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_17_tpl),
        .out_c0_exit276_18_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_18_tpl),
        .out_c0_exit276_19_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_19_tpl),
        .out_c0_exit276_20_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_20_tpl),
        .out_c0_exit276_21_tpl(i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_21_tpl),
        .out_c0_exit276_22_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,13)
    assign out_intel_reserved_ffwd_35_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_35_0;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_36_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_36_0;

    // bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x(BITJOIN,45)
    assign bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q = {i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_21_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_20_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_19_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_18_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_17_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_16_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_15_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_14_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_13_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_12_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_11_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_10_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_9_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_8_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_7_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_6_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_5_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_4_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_3_tpl, i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_c0_exit276_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x(BITSELECT,46)
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[127:96]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[159:128]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[191:160]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[223:192]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[255:224]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[287:256]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[319:288]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[351:320]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[383:352]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[415:384]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[447:416]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[479:448]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[511:480]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[512:512]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[544:513]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[545:545]);
    assign bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q[546:546]);

    // dupName_0_sync_out_x(GPOUT,20)@6
    assign out_c0_exe10 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_j;
    assign out_c0_exe11 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_k;
    assign out_c0_exe12 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_l;
    assign out_c0_exe13 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_m;
    assign out_c0_exe14 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_n;
    assign out_c0_exe15 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_o;
    assign out_c0_exe16 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_p;
    assign out_c0_exe17 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_q;
    assign out_c0_exe18 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_r;
    assign out_c0_exe19 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_s;
    assign out_c0_exe20 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_t;
    assign out_c0_exe21 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_u;
    assign out_c0_exe2278 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_b;
    assign out_c0_exe3279 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_c;
    assign out_c0_exe4280 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_d;
    assign out_c0_exe5281 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_e;
    assign out_c0_exe6282 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_f;
    assign out_c0_exe7 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_g;
    assign out_c0_exe8 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_h;
    assign out_c0_exe9 = bubble_select_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_37_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_37_0;

    // dupName_2_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_38_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_38_0;

    // dupName_3_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_39_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_39_0;

    // dupName_4_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_40_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_40_0;

    // dupName_5_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_41_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_41_0;

    // dupName_6_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_42_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_42_0;

    // dupName_7_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_43_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_43_0;

    // dupName_8_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_44_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_44_0;

    // dupName_9_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_45_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_45_0;

    // dupName_10_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_46_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_46_0;

    // dupName_11_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_47_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_47_0;

    // dupName_12_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_48_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_48_0;

    // dupName_13_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_49_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_49_0;

    // dupName_14_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_50_0 = i_sfc_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_50_0;

endmodule
