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

// SystemVerilog created from dijkstra_bb_B7_stall_region
// SystemVerilog created on Mon Apr  6 11:16:52 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_bb_B7_stall_region (
    input wire [31:0] in_intel_reserved_ffwd_29_0,
    input wire [31:0] in_intel_reserved_ffwd_30_0,
    input wire [31:0] in_intel_reserved_ffwd_31_0,
    input wire [31:0] in_intel_reserved_ffwd_32_0,
    input wire [31:0] in_intel_reserved_ffwd_33_0,
    input wire [31:0] in_intel_reserved_ffwd_34_0,
    input wire [31:0] in_intel_reserved_ffwd_35_0,
    input wire [31:0] in_intel_reserved_ffwd_36_0,
    input wire [31:0] in_intel_reserved_ffwd_37_0,
    input wire [31:0] in_intel_reserved_ffwd_49_0,
    output wire [31:0] out_intel_reserved_ffwd_50_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe31,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_intel_reserved_ffwd_51_0,
    output wire [31:0] out_c0_exe31,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_52_0,
    output wire [31:0] out_intel_reserved_ffwd_53_0,
    output wire [31:0] out_intel_reserved_ffwd_54_0,
    output wire [31:0] out_intel_reserved_ffwd_55_0,
    output wire [31:0] out_intel_reserved_ffwd_56_0,
    output wire [31:0] out_intel_reserved_ffwd_57_0,
    output wire [31:0] out_intel_reserved_ffwd_58_0,
    output wire [31:0] out_intel_reserved_ffwd_59_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_59_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_59_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_59_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_59_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_59_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_59_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_59_0_7_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_163_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_out_dest_data_out_49_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_out_dest_data_out_49_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_out_dest_data_out_49_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_out_dest_data_out_49_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_out_dest_data_out_49_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_out_dest_data_out_49_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_out_dest_data_out_49_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_out_dest_data_out_49_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_out_dest_data_out_49_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_out_dest_data_out_37_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_out_dest_data_out_35_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_out_dest_data_out_34_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_out_dest_data_out_33_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_out_dest_data_out_32_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_out_dest_data_out_31_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_out_dest_data_out_30_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_out_dest_data_out_29_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_out_dest_data_out_36_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra59_dijkstra46_out_intel_reserved_ffwd_50_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra59_dijkstra46_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra59_dijkstra46_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra60_dijkstra47_out_intel_reserved_ffwd_51_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra60_dijkstra47_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra60_dijkstra47_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra61_dijkstra48_out_intel_reserved_ffwd_52_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra61_dijkstra48_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra61_dijkstra48_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra62_dijkstra49_out_intel_reserved_ffwd_53_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra62_dijkstra49_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra62_dijkstra49_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra63_dijkstra50_out_intel_reserved_ffwd_54_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra63_dijkstra50_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra63_dijkstra50_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra64_dijkstra51_out_intel_reserved_ffwd_55_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra64_dijkstra51_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra64_dijkstra51_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra65_dijkstra52_out_intel_reserved_ffwd_56_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra65_dijkstra52_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra65_dijkstra52_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra66_dijkstra53_out_intel_reserved_ffwd_57_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra66_dijkstra53_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra66_dijkstra53_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra67_dijkstra54_out_intel_reserved_ffwd_58_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra67_dijkstra54_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra67_dijkstra54_out_valid_out;
    wire [0:0] i_spec_select247_dijkstra28_s;
    reg [31:0] i_spec_select247_dijkstra28_q;
    wire [0:0] i_spec_select248_dijkstra32_s;
    reg [31:0] i_spec_select248_dijkstra32_q;
    wire [0:0] i_spec_select249_dijkstra34_s;
    reg [31:0] i_spec_select249_dijkstra34_q;
    wire [0:0] i_spec_select250_dijkstra36_s;
    reg [31:0] i_spec_select250_dijkstra36_q;
    wire [0:0] i_spec_select251_dijkstra38_s;
    reg [31:0] i_spec_select251_dijkstra38_q;
    wire [0:0] i_spec_select252_dijkstra40_s;
    reg [31:0] i_spec_select252_dijkstra40_q;
    wire [0:0] i_spec_select253_dijkstra42_s;
    reg [31:0] i_spec_select253_dijkstra42_q;
    wire [0:0] i_spec_select254_dijkstra44_s;
    reg [31:0] i_spec_select254_dijkstra44_q;
    wire [0:0] i_unnamed_dijkstra1_q;
    wire [0:0] i_unnamed_dijkstra10_q;
    wire [0:0] i_unnamed_dijkstra13_q;
    wire [0:0] i_unnamed_dijkstra16_q;
    wire [0:0] i_unnamed_dijkstra19_q;
    wire [0:0] i_unnamed_dijkstra22_q;
    wire [0:0] i_unnamed_dijkstra25_q;
    wire [0:0] i_unnamed_dijkstra30_s;
    reg [31:0] i_unnamed_dijkstra30_q;
    wire [0:0] i_unnamed_dijkstra4_q;
    wire [0:0] i_unnamed_dijkstra7_q;
    wire [31:0] c_i32_064_recast_x_q;
    wire [31:0] c_i32_262_recast_x_q;
    wire [31:0] c_i32_361_recast_x_q;
    wire [31:0] c_i32_460_recast_x_q;
    wire [31:0] c_i32_559_recast_x_q;
    wire [31:0] c_i32_658_recast_x_q;
    wire [31:0] c_i32_757_recast_x_q;
    wire [31:0] c_i32_856_recast_x_q;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_7_tpl;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_b;
    wire [31:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_V1;
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
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and0;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and1;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and2;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and3;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and4;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and5;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and6;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and7;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and8;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and9;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_V0;


    // c_i32_163(CONSTANT,3)
    assign c_i32_163_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29(BITJOIN,204)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_out_dest_data_out_36_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29(BITSELECT,205)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21(BITJOIN,156)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_q = i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_out_dest_data_out_49_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21(BITSELECT,157)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_q[31:0]);

    // i_unnamed_dijkstra22(LOGICAL,46)@0
    assign i_unnamed_dijkstra22_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_b == c_i32_163_q ? 1'b1 : 1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_unnamed_dijkstra30(MUX,48)@0
    assign i_unnamed_dijkstra30_s = i_unnamed_dijkstra22_q;
    always @(i_unnamed_dijkstra30_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_b or c_i32_163_q)
    begin
        unique case (i_unnamed_dijkstra30_s)
            1'b0 : i_unnamed_dijkstra30_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_b;
            1'b1 : i_unnamed_dijkstra30_q = c_i32_163_q;
            default : i_unnamed_dijkstra30_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra60_dijkstra47(BLACKBOX,25)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_51_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_60_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra60_dijkstra47 (
        .in_predicate_in(GND_q),
        .in_src_data_in_51_0(i_unnamed_dijkstra30_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_V1),
        .out_intel_reserved_ffwd_51_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra60_dijkstra47_out_intel_reserved_ffwd_51_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra60_dijkstra47_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra60_dijkstra47_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43(BITJOIN,201)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_out_dest_data_out_29_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43(BITSELECT,202)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_q[31:0]);

    // c_i32_856_recast_x(CONSTANT,140)
    assign c_i32_856_recast_x_q = $unsigned(32'b00000000000000000000000000001000);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0(BITJOIN,177)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_q = i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_out_dest_data_out_49_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0(BITSELECT,178)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_q[31:0]);

    // i_unnamed_dijkstra1(LOGICAL,41)@0
    assign i_unnamed_dijkstra1_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_b == c_i32_856_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select254_dijkstra44(MUX,40)@0
    assign i_spec_select254_dijkstra44_s = i_unnamed_dijkstra1_q;
    always @(i_spec_select254_dijkstra44_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_b or c_i32_163_q)
    begin
        unique case (i_spec_select254_dijkstra44_s)
            1'b0 : i_spec_select254_dijkstra44_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_b;
            1'b1 : i_spec_select254_dijkstra44_q = c_i32_163_q;
            default : i_spec_select254_dijkstra44_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41(BITJOIN,198)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_out_dest_data_out_30_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41(BITSELECT,199)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_q[31:0]);

    // c_i32_757_recast_x(CONSTANT,139)
    assign c_i32_757_recast_x_q = $unsigned(32'b00000000000000000000000000000111);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3(BITJOIN,174)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_q = i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_out_dest_data_out_49_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3(BITSELECT,175)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_q[31:0]);

    // i_unnamed_dijkstra4(LOGICAL,49)@0
    assign i_unnamed_dijkstra4_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_b == c_i32_757_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select253_dijkstra42(MUX,39)@0
    assign i_spec_select253_dijkstra42_s = i_unnamed_dijkstra4_q;
    always @(i_spec_select253_dijkstra42_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_b or c_i32_163_q)
    begin
        unique case (i_spec_select253_dijkstra42_s)
            1'b0 : i_spec_select253_dijkstra42_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_b;
            1'b1 : i_spec_select253_dijkstra42_q = c_i32_163_q;
            default : i_spec_select253_dijkstra42_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39(BITJOIN,195)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_out_dest_data_out_31_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39(BITSELECT,196)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_q[31:0]);

    // c_i32_658_recast_x(CONSTANT,138)
    assign c_i32_658_recast_x_q = $unsigned(32'b00000000000000000000000000000110);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6(BITJOIN,171)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_q = i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_out_dest_data_out_49_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6(BITSELECT,172)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_q[31:0]);

    // i_unnamed_dijkstra7(LOGICAL,50)@0
    assign i_unnamed_dijkstra7_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_b == c_i32_658_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select252_dijkstra40(MUX,38)@0
    assign i_spec_select252_dijkstra40_s = i_unnamed_dijkstra7_q;
    always @(i_spec_select252_dijkstra40_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_b or c_i32_163_q)
    begin
        unique case (i_spec_select252_dijkstra40_s)
            1'b0 : i_spec_select252_dijkstra40_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_b;
            1'b1 : i_spec_select252_dijkstra40_q = c_i32_163_q;
            default : i_spec_select252_dijkstra40_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37(BITJOIN,192)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_out_dest_data_out_32_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37(BITSELECT,193)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_q[31:0]);

    // c_i32_559_recast_x(CONSTANT,137)
    assign c_i32_559_recast_x_q = $unsigned(32'b00000000000000000000000000000101);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9(BITJOIN,168)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_q = i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_out_dest_data_out_49_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9(BITSELECT,169)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_q[31:0]);

    // i_unnamed_dijkstra10(LOGICAL,42)@0
    assign i_unnamed_dijkstra10_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_b == c_i32_559_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select251_dijkstra38(MUX,37)@0
    assign i_spec_select251_dijkstra38_s = i_unnamed_dijkstra10_q;
    always @(i_spec_select251_dijkstra38_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_b or c_i32_163_q)
    begin
        unique case (i_spec_select251_dijkstra38_s)
            1'b0 : i_spec_select251_dijkstra38_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_b;
            1'b1 : i_spec_select251_dijkstra38_q = c_i32_163_q;
            default : i_spec_select251_dijkstra38_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35(BITJOIN,189)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_out_dest_data_out_33_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35(BITSELECT,190)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_q[31:0]);

    // c_i32_460_recast_x(CONSTANT,136)
    assign c_i32_460_recast_x_q = $unsigned(32'b00000000000000000000000000000100);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12(BITJOIN,165)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_q = i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_out_dest_data_out_49_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12(BITSELECT,166)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_q[31:0]);

    // i_unnamed_dijkstra13(LOGICAL,43)@0
    assign i_unnamed_dijkstra13_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_b == c_i32_460_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select250_dijkstra36(MUX,36)@0
    assign i_spec_select250_dijkstra36_s = i_unnamed_dijkstra13_q;
    always @(i_spec_select250_dijkstra36_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_b or c_i32_163_q)
    begin
        unique case (i_spec_select250_dijkstra36_s)
            1'b0 : i_spec_select250_dijkstra36_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_b;
            1'b1 : i_spec_select250_dijkstra36_q = c_i32_163_q;
            default : i_spec_select250_dijkstra36_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33(BITJOIN,186)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_out_dest_data_out_34_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33(BITSELECT,187)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_q[31:0]);

    // c_i32_361_recast_x(CONSTANT,135)
    assign c_i32_361_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15(BITJOIN,162)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_q = i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_out_dest_data_out_49_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15(BITSELECT,163)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_q[31:0]);

    // i_unnamed_dijkstra16(LOGICAL,44)@0
    assign i_unnamed_dijkstra16_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_b == c_i32_361_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select249_dijkstra34(MUX,35)@0
    assign i_spec_select249_dijkstra34_s = i_unnamed_dijkstra16_q;
    always @(i_spec_select249_dijkstra34_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_b or c_i32_163_q)
    begin
        unique case (i_spec_select249_dijkstra34_s)
            1'b0 : i_spec_select249_dijkstra34_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_b;
            1'b1 : i_spec_select249_dijkstra34_q = c_i32_163_q;
            default : i_spec_select249_dijkstra34_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31(BITJOIN,183)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_out_dest_data_out_35_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31(BITSELECT,184)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_q[31:0]);

    // c_i32_262_recast_x(CONSTANT,134)
    assign c_i32_262_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18(BITJOIN,159)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_q = i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_out_dest_data_out_49_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18(BITSELECT,160)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_q[31:0]);

    // i_unnamed_dijkstra19(LOGICAL,45)@0
    assign i_unnamed_dijkstra19_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_b == c_i32_262_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select248_dijkstra32(MUX,34)@0
    assign i_spec_select248_dijkstra32_s = i_unnamed_dijkstra19_q;
    always @(i_spec_select248_dijkstra32_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_b or c_i32_163_q)
    begin
        unique case (i_spec_select248_dijkstra32_s)
            1'b0 : i_spec_select248_dijkstra32_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_b;
            1'b1 : i_spec_select248_dijkstra32_q = c_i32_163_q;
            default : i_spec_select248_dijkstra32_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x(BLACKBOX,150)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_intel_reserved_ffwd_59_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_59_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_59_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_59_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_59_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_59_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_59_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_59_0_7_tpl@20000000
    dijkstra_i_llvm_fpga_ffwd_source_s_case_A000000Zdijkstra68_dijkstra0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x (
        .in_predicate_in(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_V0),
        .in_src_data_in_59_0_0_tpl(i_unnamed_dijkstra30_q),
        .in_src_data_in_59_0_1_tpl(i_spec_select248_dijkstra32_q),
        .in_src_data_in_59_0_2_tpl(i_spec_select249_dijkstra34_q),
        .in_src_data_in_59_0_3_tpl(i_spec_select250_dijkstra36_q),
        .in_src_data_in_59_0_4_tpl(i_spec_select251_dijkstra38_q),
        .in_src_data_in_59_0_5_tpl(i_spec_select252_dijkstra40_q),
        .in_src_data_in_59_0_6_tpl(i_spec_select253_dijkstra42_q),
        .in_src_data_in_59_0_7_tpl(i_spec_select254_dijkstra44_q),
        .out_stall_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_valid_out),
        .out_intel_reserved_ffwd_59_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_0_tpl),
        .out_intel_reserved_ffwd_59_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_1_tpl),
        .out_intel_reserved_ffwd_59_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_2_tpl),
        .out_intel_reserved_ffwd_59_0_3_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_3_tpl),
        .out_intel_reserved_ffwd_59_0_4_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_4_tpl),
        .out_intel_reserved_ffwd_59_0_5_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_5_tpl),
        .out_intel_reserved_ffwd_59_0_6_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_6_tpl),
        .out_intel_reserved_ffwd_59_0_7_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra67_dijkstra54(BLACKBOX,32)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_58_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_67_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra67_dijkstra54 (
        .in_predicate_in(GND_q),
        .in_src_data_in_58_0(i_spec_select254_dijkstra44_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_V1),
        .out_intel_reserved_ffwd_58_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra67_dijkstra54_out_intel_reserved_ffwd_58_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra67_dijkstra54_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra67_dijkstra54_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43(STALLENABLE,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra67_dijkstra54_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_and0 = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_and0;

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra66_dijkstra53(BLACKBOX,31)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_57_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_66_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra66_dijkstra53 (
        .in_predicate_in(GND_q),
        .in_src_data_in_57_0(i_spec_select253_dijkstra42_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_V1),
        .out_intel_reserved_ffwd_57_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra66_dijkstra53_out_intel_reserved_ffwd_57_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra66_dijkstra53_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra66_dijkstra53_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41(STALLENABLE,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra66_dijkstra53_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_and0 = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_and0;

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra65_dijkstra52(BLACKBOX,30)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_56_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_65_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra65_dijkstra52 (
        .in_predicate_in(GND_q),
        .in_src_data_in_56_0(i_spec_select252_dijkstra40_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_V1),
        .out_intel_reserved_ffwd_56_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra65_dijkstra52_out_intel_reserved_ffwd_56_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra65_dijkstra52_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra65_dijkstra52_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39(STALLENABLE,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra65_dijkstra52_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_and0 = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_and0;

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra64_dijkstra51(BLACKBOX,29)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_55_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_64_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra64_dijkstra51 (
        .in_predicate_in(GND_q),
        .in_src_data_in_55_0(i_spec_select251_dijkstra38_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_V1),
        .out_intel_reserved_ffwd_55_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra64_dijkstra51_out_intel_reserved_ffwd_55_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra64_dijkstra51_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra64_dijkstra51_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37(STALLENABLE,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra64_dijkstra51_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_and0 = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_and0;

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra63_dijkstra50(BLACKBOX,28)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_54_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_63_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra63_dijkstra50 (
        .in_predicate_in(GND_q),
        .in_src_data_in_54_0(i_spec_select250_dijkstra36_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_V1),
        .out_intel_reserved_ffwd_54_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra63_dijkstra50_out_intel_reserved_ffwd_54_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra63_dijkstra50_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra63_dijkstra50_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35(STALLENABLE,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra63_dijkstra50_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_and0 = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_and0;

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra62_dijkstra49(BLACKBOX,27)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_53_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_62_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra62_dijkstra49 (
        .in_predicate_in(GND_q),
        .in_src_data_in_53_0(i_spec_select249_dijkstra34_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_V1),
        .out_intel_reserved_ffwd_53_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra62_dijkstra49_out_intel_reserved_ffwd_53_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra62_dijkstra49_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra62_dijkstra49_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33(STALLENABLE,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra62_dijkstra49_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_and0 = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_and0;

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra61_dijkstra48(BLACKBOX,26)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_52_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_61_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra61_dijkstra48 (
        .in_predicate_in(GND_q),
        .in_src_data_in_52_0(i_spec_select248_dijkstra32_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_V1),
        .out_intel_reserved_ffwd_52_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra61_dijkstra48_out_intel_reserved_ffwd_52_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra61_dijkstra48_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra61_dijkstra48_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31(STALLENABLE,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra61_dijkstra48_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_and0 = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_and0;

    // SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x(STALLENABLE,311)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_V0 = SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_stall_out | ~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_V0;
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_V0 & SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and0;
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and2 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_V0 & SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and1;
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and3 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_V0 & SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and2;
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and4 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_V0 & SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and3;
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and5 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_V0 & SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and4;
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and6 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_V0 & SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and5;
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_V0 & SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and6;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29(STALLENABLE,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra60_dijkstra47_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_and0 = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_and0;

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29(BLACKBOX,23)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29 (
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_backStall),
        .in_valid_in(SE_stall_entry_V17),
        .out_dest_data_out_36_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_out_dest_data_out_36_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43(BLACKBOX,22)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43 (
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_backStall),
        .in_valid_in(SE_stall_entry_V16),
        .out_dest_data_out_29_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_out_dest_data_out_29_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41(BLACKBOX,21)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41 (
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_backStall),
        .in_valid_in(SE_stall_entry_V15),
        .out_dest_data_out_30_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_out_dest_data_out_30_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39(BLACKBOX,20)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39 (
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_backStall),
        .in_valid_in(SE_stall_entry_V14),
        .out_dest_data_out_31_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_out_dest_data_out_31_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37 (
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_backStall),
        .in_valid_in(SE_stall_entry_V13),
        .out_dest_data_out_32_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_out_dest_data_out_32_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35(BLACKBOX,18)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35 (
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_backStall),
        .in_valid_in(SE_stall_entry_V12),
        .out_dest_data_out_33_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_out_dest_data_out_33_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_backStall),
        .in_valid_in(SE_stall_entry_V11),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_out_dest_data_out_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31(BLACKBOX,16)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31 (
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_backStall),
        .in_valid_in(SE_stall_entry_V10),
        .out_dest_data_out_35_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_out_dest_data_out_35_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0(BLACKBOX,14)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_acl_26574_0 thei_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_backStall),
        .in_valid_in(SE_stall_entry_V8),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_out_dest_data_out_49_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_acl_26573_0 thei_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_backStall),
        .in_valid_in(SE_stall_entry_V7),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_out_dest_data_out_49_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_acl_26572_0 thei_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_backStall),
        .in_valid_in(SE_stall_entry_V6),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_out_dest_data_out_49_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_acl_26571_0 thei_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_backStall),
        .in_valid_in(SE_stall_entry_V5),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_out_dest_data_out_49_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_acl_26570_0 thei_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_backStall),
        .in_valid_in(SE_stall_entry_V4),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_out_dest_data_out_49_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_acl_26569_0 thei_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_out_dest_data_out_49_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_acl_26568_0 thei_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_out_dest_data_out_49_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21(BLACKBOX,7)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_acl_26567_0 thei_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_out_dest_data_out_49_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,309)
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
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_26567_dijkstra21_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_26568_dijkstra18_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_26569_dijkstra15_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_26570_dijkstra12_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_26571_dijkstra9_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    assign SE_stall_entry_consumed6 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_26572_dijkstra6_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg6;
    assign SE_stall_entry_consumed7 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_26573_dijkstra3_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg7;
    assign SE_stall_entry_consumed8 = (~ (i_llvm_fpga_ffwd_dest_i32_acl_26574_dijkstra0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg8;
    assign SE_stall_entry_consumed9 = (~ (i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg9;
    assign SE_stall_entry_consumed10 = (~ (i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi46_dijkstra31_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg10;
    assign SE_stall_entry_consumed11 = (~ (i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi44_dijkstra33_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg11;
    assign SE_stall_entry_consumed12 = (~ (i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi42_dijkstra35_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg12;
    assign SE_stall_entry_consumed13 = (~ (i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi40_dijkstra37_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg13;
    assign SE_stall_entry_consumed14 = (~ (i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi38_dijkstra39_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg14;
    assign SE_stall_entry_consumed15 = (~ (i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi36_dijkstra41_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg15;
    assign SE_stall_entry_consumed16 = (~ (i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi34_dijkstra43_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg16;
    assign SE_stall_entry_consumed17 = (~ (i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi48_dijkstra29_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg17;
    assign SE_stall_entry_consumed18 = (~ (SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg18;
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
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed18 & SE_stall_entry_or17);
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
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24(BLACKBOX,6)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_acl_26566_0 thei_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_out_dest_data_out_49_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27(BLACKBOX,15)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27 (
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_backStall),
        .in_valid_in(SE_stall_entry_V9),
        .out_dest_data_out_37_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_out_dest_data_out_37_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27(STALLENABLE,256)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra59_dijkstra46_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_and0 = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_wireValid = i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_and0;

    // SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x(STALLENABLE,312)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and0 = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and1 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra67_dijkstra54_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and2 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra66_dijkstra53_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and1;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and3 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra65_dijkstra52_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and2;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and4 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra64_dijkstra51_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and3;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and5 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra63_dijkstra50_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and4;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and6 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra62_dijkstra49_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and5;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and7 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra61_dijkstra48_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and6;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and8 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra60_dijkstra47_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and7;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and9 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra59_dijkstra46_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and8;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_wireValid = SE_stall_entry_V18 & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_and9;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27(BITJOIN,180)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_out_dest_data_out_37_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27(BITSELECT,181)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_q[31:0]);

    // c_i32_064_recast_x(CONSTANT,132)
    assign c_i32_064_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24(BITJOIN,153)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_q = i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_out_dest_data_out_49_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24(BITSELECT,154)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_q[31:0]);

    // i_unnamed_dijkstra25(LOGICAL,47)@0
    assign i_unnamed_dijkstra25_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_acl_26566_dijkstra24_b == c_i32_064_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select247_dijkstra28(MUX,33)@0
    assign i_spec_select247_dijkstra28_s = i_unnamed_dijkstra25_q;
    always @(i_spec_select247_dijkstra28_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_b or c_i32_163_q)
    begin
        unique case (i_spec_select247_dijkstra28_s)
            1'b0 : i_spec_select247_dijkstra28_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_b;
            1'b1 : i_spec_select247_dijkstra28_q = c_i32_163_q;
            default : i_spec_select247_dijkstra28_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra59_dijkstra46(BLACKBOX,24)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_50_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_59_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra59_dijkstra46 (
        .in_predicate_in(GND_q),
        .in_src_data_in_50_0(i_spec_select247_dijkstra28_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi50_dijkstra27_V0),
        .out_intel_reserved_ffwd_50_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra59_dijkstra46_out_intel_reserved_ffwd_50_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra59_dijkstra46_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra59_dijkstra46_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,126)
    assign out_intel_reserved_ffwd_50_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra59_dijkstra46_out_intel_reserved_ffwd_50_0;

    // sync_out(GPOUT,130)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,141)
    assign out_intel_reserved_ffwd_51_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra60_dijkstra47_out_intel_reserved_ffwd_51_0;

    // bubble_join_stall_entry(BITJOIN,216)
    assign bubble_join_stall_entry_q = in_c0_exe31;

    // bubble_select_stall_entry(BITSELECT,217)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);

    // dupName_0_sync_out_x(GPOUT,142)@0
    assign out_c0_exe31 = bubble_select_stall_entry_b;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,143)
    assign out_intel_reserved_ffwd_52_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra61_dijkstra48_out_intel_reserved_ffwd_52_0;

    // dupName_2_regfree_osync_x(GPOUT,144)
    assign out_intel_reserved_ffwd_53_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra62_dijkstra49_out_intel_reserved_ffwd_53_0;

    // dupName_3_regfree_osync_x(GPOUT,145)
    assign out_intel_reserved_ffwd_54_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra63_dijkstra50_out_intel_reserved_ffwd_54_0;

    // dupName_4_regfree_osync_x(GPOUT,146)
    assign out_intel_reserved_ffwd_55_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra64_dijkstra51_out_intel_reserved_ffwd_55_0;

    // dupName_5_regfree_osync_x(GPOUT,147)
    assign out_intel_reserved_ffwd_56_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra65_dijkstra52_out_intel_reserved_ffwd_56_0;

    // dupName_6_regfree_osync_x(GPOUT,148)
    assign out_intel_reserved_ffwd_57_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra66_dijkstra53_out_intel_reserved_ffwd_57_0;

    // dupName_7_regfree_osync_x(GPOUT,149)
    assign out_intel_reserved_ffwd_58_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra67_dijkstra54_out_intel_reserved_ffwd_58_0;

    // dupName_8_regfree_osync_aunroll_x(GPOUT,151)
    assign out_intel_reserved_ffwd_59_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_0_tpl;
    assign out_intel_reserved_ffwd_59_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_1_tpl;
    assign out_intel_reserved_ffwd_59_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_2_tpl;
    assign out_intel_reserved_ffwd_59_0_3_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_3_tpl;
    assign out_intel_reserved_ffwd_59_0_4_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_4_tpl;
    assign out_intel_reserved_ffwd_59_0_5_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_5_tpl;
    assign out_intel_reserved_ffwd_59_0_6_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_6_tpl;
    assign out_intel_reserved_ffwd_59_0_7_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra68_dijkstra55_aunroll_x_out_intel_reserved_ffwd_59_0_7_tpl;

endmodule
