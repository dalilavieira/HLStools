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

// SystemVerilog created from floydWarshall_i_sfc_logic_s_c0_in_for_boA000000Z26426_floydwarshall0
// SystemVerilog created on Mon Apr  6 10:28:01 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_i_sfc_logic_s_c0_in_for_boA000000Z26426_floydwarshall0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_17_0,
    output wire [31:0] out_intel_reserved_ffwd_35_0,
    output wire [31:0] out_intel_reserved_ffwd_36_0,
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
    output wire [0:0] out_c0_exi22_0_tpl,
    output wire [0:0] out_c0_exi22_1_tpl,
    output wire [31:0] out_c0_exi22_2_tpl,
    output wire [31:0] out_c0_exi22_3_tpl,
    output wire [31:0] out_c0_exi22_4_tpl,
    output wire [31:0] out_c0_exi22_5_tpl,
    output wire [31:0] out_c0_exi22_6_tpl,
    output wire [31:0] out_c0_exi22_7_tpl,
    output wire [31:0] out_c0_exi22_8_tpl,
    output wire [31:0] out_c0_exi22_9_tpl,
    output wire [31:0] out_c0_exi22_10_tpl,
    output wire [31:0] out_c0_exi22_11_tpl,
    output wire [31:0] out_c0_exi22_12_tpl,
    output wire [31:0] out_c0_exi22_13_tpl,
    output wire [31:0] out_c0_exi22_14_tpl,
    output wire [31:0] out_c0_exi22_15_tpl,
    output wire [31:0] out_c0_exi22_16_tpl,
    output wire [31:0] out_c0_exi22_17_tpl,
    output wire [0:0] out_c0_exi22_18_tpl,
    output wire [31:0] out_c0_exi22_19_tpl,
    output wire [0:0] out_c0_exi22_20_tpl,
    output wire [0:0] out_c0_exi22_21_tpl,
    output wire [31:0] out_c0_exi22_22_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_floydWarshall1,
    input wire [0:0] in_c0_eni22_0_tpl,
    input wire [0:0] in_c0_eni22_1_tpl,
    input wire [31:0] in_c0_eni22_2_tpl,
    input wire [31:0] in_c0_eni22_3_tpl,
    input wire [31:0] in_c0_eni22_4_tpl,
    input wire [31:0] in_c0_eni22_5_tpl,
    input wire [31:0] in_c0_eni22_6_tpl,
    input wire [31:0] in_c0_eni22_7_tpl,
    input wire [31:0] in_c0_eni22_8_tpl,
    input wire [31:0] in_c0_eni22_9_tpl,
    input wire [31:0] in_c0_eni22_10_tpl,
    input wire [31:0] in_c0_eni22_11_tpl,
    input wire [31:0] in_c0_eni22_12_tpl,
    input wire [31:0] in_c0_eni22_13_tpl,
    input wire [31:0] in_c0_eni22_14_tpl,
    input wire [31:0] in_c0_eni22_15_tpl,
    input wire [31:0] in_c0_eni22_16_tpl,
    input wire [31:0] in_c0_eni22_17_tpl,
    input wire [31:0] in_c0_eni22_18_tpl,
    input wire [31:0] in_c0_eni22_19_tpl,
    input wire [0:0] in_c0_eni22_20_tpl,
    input wire [0:0] in_c0_eni22_21_tpl,
    input wire [31:0] in_c0_eni22_22_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_1253_q;
    wire [31:0] c_i32_0255_q;
    wire [31:0] c_i32_1256_q;
    wire [31:0] c_i32_2257_q;
    wire [31:0] c_i32_3258_q;
    wire [2:0] c_i3_1263_q;
    wire [2:0] c_i3_2261_q;
    wire [0:0] comparator_qi;
    reg [0:0] comparator_q;
    wire [0:0] i_acl_235_floydwarshall90_s;
    reg [31:0] i_acl_235_floydwarshall90_q;
    wire [0:0] i_acl_236_floydwarshall94_s;
    reg [31:0] i_acl_236_floydwarshall94_q;
    wire [0:0] i_acl_237_floydwarshall98_s;
    reg [31:0] i_acl_237_floydwarshall98_q;
    wire [0:0] i_acl_238_floydwarshall102_s;
    reg [31:0] i_acl_238_floydwarshall102_q;
    wire [0:0] i_acl_239_floydwarshall106_s;
    reg [31:0] i_acl_239_floydwarshall106_q;
    wire [0:0] i_acl_240_floydwarshall110_s;
    reg [31:0] i_acl_240_floydwarshall110_q;
    wire [0:0] i_acl_241_floydwarshall114_s;
    reg [31:0] i_acl_241_floydwarshall114_q;
    wire [0:0] i_acl_242_floydwarshall118_s;
    reg [31:0] i_acl_242_floydwarshall118_q;
    wire [0:0] i_acl_243_floydwarshall122_s;
    reg [31:0] i_acl_243_floydwarshall122_q;
    wire [0:0] i_acl_244_floydwarshall126_s;
    reg [31:0] i_acl_244_floydwarshall126_q;
    wire [0:0] i_acl_245_floydwarshall130_s;
    reg [31:0] i_acl_245_floydwarshall130_q;
    wire [0:0] i_acl_246_floydwarshall134_s;
    reg [31:0] i_acl_246_floydwarshall134_q;
    wire [0:0] i_acl_247_floydwarshall138_s;
    reg [31:0] i_acl_247_floydwarshall138_q;
    wire [0:0] i_acl_248_floydwarshall142_s;
    reg [31:0] i_acl_248_floydwarshall142_q;
    wire [0:0] i_acl_249_floydwarshall145_s;
    reg [31:0] i_acl_249_floydwarshall145_q;
    wire [0:0] i_acl_floydwarshall86_s;
    reg [31:0] i_acl_floydwarshall86_q;
    wire [32:0] i_add_floydwarshall68_a;
    wire [32:0] i_add_floydwarshall68_b;
    logic [32:0] i_add_floydwarshall68_o;
    wire [32:0] i_add_floydwarshall68_q;
    wire [1:0] i_cleanups_shl_floydwarshall5_vt_join_q;
    wire [0:0] i_cleanups_shl_floydwarshall5_vt_select_1_b;
    wire [33:0] i_cmp34_floydwarshall79_a;
    wire [33:0] i_cmp34_floydwarshall79_b;
    logic [33:0] i_cmp34_floydwarshall79_o;
    wire [0:0] i_cmp34_floydwarshall79_c;
    wire [3:0] i_fpga_indvars_iv_next5_floydwarshall157_a;
    wire [3:0] i_fpga_indvars_iv_next5_floydwarshall157_b;
    logic [3:0] i_fpga_indvars_iv_next5_floydwarshall157_o;
    wire [3:0] i_fpga_indvars_iv_next5_floydwarshall157_q;
    wire [32:0] i_inc49_floydwarshall147_a;
    wire [32:0] i_inc49_floydwarshall147_b;
    logic [32:0] i_inc49_floydwarshall147_o;
    wire [32:0] i_inc49_floydwarshall147_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt325_floydwarshall23_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt344_floydwarshall56_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt301_floydwarshall67_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt306_floydwarshall78_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt311_floydwarshall29_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt316_floydwarshall35_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt321_floydwarshall41_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt330_floydwarshall59_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt335_floydwarshall62_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt340_floydwarshall65_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt_floydwarshall44_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_k_02826_floydwarshall64_out_dest_data_out_17_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_k_02827_floydwarshall61_out_dest_data_out_17_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_k_02828_floydwarshall58_out_dest_data_out_17_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_k_02829_floydwarshall55_out_dest_data_out_17_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_k_02830_floydwarshall43_out_dest_data_out_17_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall40_floydwarshall159_out_intel_reserved_ffwd_35_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall41_floydwarshall160_out_intel_reserved_ffwd_36_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall42_floydwarshall161_out_intel_reserved_ffwd_37_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall43_floydwarshall162_out_intel_reserved_ffwd_38_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall44_floydwarshall163_out_intel_reserved_ffwd_39_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall45_floydwarshall164_out_intel_reserved_ffwd_40_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall46_floydwarshall165_out_intel_reserved_ffwd_41_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall47_floydwarshall166_out_intel_reserved_ffwd_42_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall48_floydwarshall167_out_intel_reserved_ffwd_43_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall49_floydwarshall168_out_intel_reserved_ffwd_44_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall50_floydwarshall169_out_intel_reserved_ffwd_45_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall51_floydwarshall170_out_intel_reserved_ffwd_46_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall52_floydwarshall171_out_intel_reserved_ffwd_47_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall53_floydwarshall172_out_intel_reserved_ffwd_48_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall54_floydwarshall173_out_intel_reserved_ffwd_49_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall55_floydwarshall174_out_intel_reserved_ffwd_50_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall178_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall178_out_feedback_stall_out_76;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall180_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall180_out_feedback_stall_out_77;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop74_floydwarshall2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop74_floydwarshall2_out_feedback_stall_out_74;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_feedback_stall_out_72;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_feedback_stall_out_70;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_feedback_stall_out_69;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_feedback_stall_out_68;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_feedback_stall_out_67;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_feedback_stall_out_66;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_feedback_stall_out_65;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_feedback_stall_out_64;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_feedback_stall_out_63;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_feedback_stall_out_62;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_feedback_stall_out_61;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_feedback_stall_out_60;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_feedback_stall_out_59;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_feedback_stall_out_58;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_feedback_stall_out_57;
    wire [31:0] i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_feedback_stall_out_71;
    wire [31:0] i_llvm_fpga_pop_i32_i_127_pop54182_pop78_floydwarshall8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_127_pop54182_pop78_floydwarshall8_out_feedback_stall_out_78;
    wire [31:0] i_llvm_fpga_pop_i32_inc55179_pop75_floydwarshall176_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_inc55179_pop75_floydwarshall176_out_feedback_stall_out_75;
    wire [31:0] i_llvm_fpga_pop_i32_j_126_pop73_floydwarshall45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_126_pop73_floydwarshall45_out_feedback_stall_out_73;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv4_pop56_floydwarshall149_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv4_pop56_floydwarshall149_out_feedback_stall_out_56;
    wire [0:0] i_llvm_fpga_push_i1_exitcond9180_push76_floydwarshall179_out_feedback_out_76;
    wire [0:0] i_llvm_fpga_push_i1_exitcond9180_push76_floydwarshall179_out_feedback_valid_out_76;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_floydwarshall7_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_floydwarshall7_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp97181_push77_floydwarshall181_out_feedback_out_77;
    wire [0:0] i_llvm_fpga_push_i1_notcmp97181_push77_floydwarshall181_out_feedback_valid_out_77;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_floydwarshall153_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_floydwarshall153_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push74_floydwarshall156_out_feedback_out_74;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push74_floydwarshall156_out_feedback_valid_out_74;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_0_5_push72_floydwarshall146_out_feedback_out_72;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_0_5_push72_floydwarshall146_out_feedback_valid_out_72;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_12_5_push70_floydwarshall139_out_feedback_out_70;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_12_5_push70_floydwarshall139_out_feedback_valid_out_70;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_17_5_push69_floydwarshall135_out_feedback_out_69;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_17_5_push69_floydwarshall135_out_feedback_valid_out_69;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_22_5_push68_floydwarshall131_out_feedback_out_68;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_22_5_push68_floydwarshall131_out_feedback_valid_out_68;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_27_5_push67_floydwarshall127_out_feedback_out_67;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_27_5_push67_floydwarshall127_out_feedback_valid_out_67;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_32_5_push66_floydwarshall123_out_feedback_out_66;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_32_5_push66_floydwarshall123_out_feedback_valid_out_66;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_37_5_push65_floydwarshall119_out_feedback_out_65;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_37_5_push65_floydwarshall119_out_feedback_valid_out_65;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_42_5_push64_floydwarshall115_out_feedback_out_64;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_42_5_push64_floydwarshall115_out_feedback_valid_out_64;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_47_5_push63_floydwarshall111_out_feedback_out_63;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_47_5_push63_floydwarshall111_out_feedback_valid_out_63;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_52_5_push62_floydwarshall107_out_feedback_out_62;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_52_5_push62_floydwarshall107_out_feedback_valid_out_62;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_57_5_push61_floydwarshall103_out_feedback_out_61;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_57_5_push61_floydwarshall103_out_feedback_valid_out_61;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_62_5_push60_floydwarshall99_out_feedback_out_60;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_62_5_push60_floydwarshall99_out_feedback_valid_out_60;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_67_5_push59_floydwarshall95_out_feedback_out_59;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_67_5_push59_floydwarshall95_out_feedback_valid_out_59;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_72_5_push58_floydwarshall91_out_feedback_out_58;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_72_5_push58_floydwarshall91_out_feedback_valid_out_58;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_77_5_push57_floydwarshall87_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_77_5_push57_floydwarshall87_out_feedback_valid_out_57;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_7_5_push71_floydwarshall143_out_feedback_out_71;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_7_5_push71_floydwarshall143_out_feedback_valid_out_71;
    wire [31:0] i_llvm_fpga_push_i32_i_127_pop54182_push78_floydwarshall9_out_feedback_out_78;
    wire [0:0] i_llvm_fpga_push_i32_i_127_pop54182_push78_floydwarshall9_out_feedback_valid_out_78;
    wire [31:0] i_llvm_fpga_push_i32_inc55179_push75_floydwarshall177_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_inc55179_push75_floydwarshall177_out_feedback_out_75;
    wire [0:0] i_llvm_fpga_push_i32_inc55179_push75_floydwarshall177_out_feedback_valid_out_75;
    wire [31:0] i_llvm_fpga_push_i32_j_126_push73_floydwarshall148_out_feedback_out_73;
    wire [0:0] i_llvm_fpga_push_i32_j_126_push73_floydwarshall148_out_feedback_valid_out_73;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv4_push56_floydwarshall158_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv4_push56_floydwarshall158_out_feedback_valid_out_56;
    wire [0:0] i_masked_floydwarshall175_qi;
    reg [0:0] i_masked_floydwarshall175_q;
    wire [0:0] i_next_cleanups_floydwarshall155_s;
    reg [1:0] i_next_cleanups_floydwarshall155_q;
    wire [0:0] i_notcmp_floydwarshall152_q;
    wire [0:0] i_or_floydwarshall154_q;
    wire [0:0] i_reduction_floydwarshall_0_floydwarshall84_q;
    wire [0:0] i_reduction_floydwarshall_10_floydwarshall104_q;
    wire [0:0] i_reduction_floydwarshall_11_floydwarshall105_q;
    wire [0:0] i_reduction_floydwarshall_12_floydwarshall108_q;
    wire [0:0] i_reduction_floydwarshall_13_floydwarshall109_q;
    wire [0:0] i_reduction_floydwarshall_14_floydwarshall112_q;
    wire [0:0] i_reduction_floydwarshall_15_floydwarshall113_q;
    wire [0:0] i_reduction_floydwarshall_16_floydwarshall116_q;
    wire [0:0] i_reduction_floydwarshall_17_floydwarshall117_q;
    wire [0:0] i_reduction_floydwarshall_18_floydwarshall120_q;
    wire [0:0] i_reduction_floydwarshall_19_floydwarshall121_q;
    wire [0:0] i_reduction_floydwarshall_1_floydwarshall85_q;
    wire [0:0] i_reduction_floydwarshall_20_floydwarshall124_q;
    wire [0:0] i_reduction_floydwarshall_21_floydwarshall125_q;
    wire [0:0] i_reduction_floydwarshall_22_floydwarshall128_q;
    wire [0:0] i_reduction_floydwarshall_23_floydwarshall129_q;
    wire [0:0] i_reduction_floydwarshall_24_floydwarshall132_q;
    wire [0:0] i_reduction_floydwarshall_25_floydwarshall133_q;
    wire [0:0] i_reduction_floydwarshall_26_floydwarshall136_q;
    wire [0:0] i_reduction_floydwarshall_27_floydwarshall137_q;
    wire [0:0] i_reduction_floydwarshall_28_floydwarshall140_q;
    wire [0:0] i_reduction_floydwarshall_29_floydwarshall141_q;
    wire [0:0] i_reduction_floydwarshall_2_floydwarshall88_q;
    wire [0:0] i_reduction_floydwarshall_3_floydwarshall89_q;
    wire [0:0] i_reduction_floydwarshall_4_floydwarshall92_q;
    wire [0:0] i_reduction_floydwarshall_5_floydwarshall93_q;
    wire [0:0] i_reduction_floydwarshall_6_floydwarshall96_q;
    wire [0:0] i_reduction_floydwarshall_7_floydwarshall97_q;
    wire [0:0] i_reduction_floydwarshall_8_floydwarshall100_q;
    wire [0:0] i_reduction_floydwarshall_9_floydwarshall101_q;
    wire [0:0] i_unnamed_floydwarshall10_qi;
    reg [0:0] i_unnamed_floydwarshall10_q;
    wire [0:0] i_unnamed_floydwarshall14_qi;
    reg [0:0] i_unnamed_floydwarshall14_q;
    wire [0:0] i_unnamed_floydwarshall144_q;
    wire [0:0] i_unnamed_floydwarshall16_qi;
    reg [0:0] i_unnamed_floydwarshall16_q;
    wire [0:0] i_unnamed_floydwarshall46_qi;
    reg [0:0] i_unnamed_floydwarshall46_q;
    wire [0:0] i_unnamed_floydwarshall48_qi;
    reg [0:0] i_unnamed_floydwarshall48_q;
    wire [0:0] i_unnamed_floydwarshall50_qi;
    reg [0:0] i_unnamed_floydwarshall50_q;
    wire [0:0] i_unnamed_floydwarshall52_qi;
    reg [0:0] i_unnamed_floydwarshall52_q;
    wire [31:0] i_unnamed_floydwarshall81_q;
    wire [0:0] i_unnamed_floydwarshall82_qi;
    reg [0:0] i_unnamed_floydwarshall82_q;
    wire [0:0] i_xor_floydwarshall4_q;
    wire [31:0] bgTrunc_i_add_floydwarshall68_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next5_floydwarshall157_sel_x_b;
    wire [31:0] bgTrunc_i_inc49_floydwarshall147_sel_x_b;
    wire [0:0] dupName_14_comparator_x_qi;
    reg [0:0] dupName_14_comparator_x_q;
    wire [0:0] dupName_15_comparator_x_qi;
    reg [0:0] dupName_15_comparator_x_q;
    wire [0:0] dupName_16_comparator_x_qi;
    reg [0:0] dupName_16_comparator_x_q;
    wire [0:0] dupName_17_comparator_x_qi;
    reg [0:0] dupName_17_comparator_x_q;
    wire [0:0] dupName_18_comparator_x_qi;
    reg [0:0] dupName_18_comparator_x_q;
    wire [0:0] dupName_19_comparator_x_qi;
    reg [0:0] dupName_19_comparator_x_q;
    wire [0:0] dupName_20_comparator_x_qi;
    reg [0:0] dupName_20_comparator_x_q;
    wire [0:0] dupName_21_comparator_x_qi;
    reg [0:0] dupName_21_comparator_x_q;
    wire [0:0] dupName_22_comparator_x_qi;
    reg [0:0] dupName_22_comparator_x_q;
    wire [0:0] dupName_23_comparator_x_qi;
    reg [0:0] dupName_23_comparator_x_q;
    wire [0:0] dupName_24_comparator_x_qi;
    reg [0:0] dupName_24_comparator_x_q;
    wire [0:0] dupName_25_comparator_x_qi;
    reg [0:0] dupName_25_comparator_x_q;
    wire [0:0] dupName_26_comparator_x_qi;
    reg [0:0] dupName_26_comparator_x_q;
    wire [0:0] dupName_27_comparator_x_qi;
    reg [0:0] dupName_27_comparator_x_q;
    wire [0:0] dupName_28_comparator_x_qi;
    reg [0:0] dupName_28_comparator_x_q;
    wire [0:0] dupName_29_comparator_x_qi;
    reg [0:0] dupName_29_comparator_x_q;
    wire [0:0] dupName_30_comparator_x_qi;
    reg [0:0] dupName_30_comparator_x_q;
    wire [0:0] dupName_31_comparator_x_qi;
    reg [0:0] dupName_31_comparator_x_q;
    wire [0:0] dupName_32_comparator_x_qi;
    reg [0:0] dupName_32_comparator_x_q;
    wire [0:0] i_first_cleanup_floydwarshall3_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg32_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg33_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg34_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg35_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg36_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg37_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg38_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg39_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg40_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg41_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg42_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg43_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg44_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg45_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg46_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg47_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg48_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg49_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg50_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg51_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg52_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg53_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg54_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg55_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg56_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg57_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg58_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg59_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg60_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg61_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg62_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg63_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg64_q;
    wire [0:0] i_exitcond6_floydwarshall150_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid425_i_cleanups_shl_floydwarshall0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid425_i_cleanups_shl_floydwarshall0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid426_i_cleanups_shl_floydwarshall0_shift_x_q;
    wire [0:0] leftShiftStage0_uid428_i_cleanups_shl_floydwarshall0_shift_x_s;
    reg [1:0] leftShiftStage0_uid428_i_cleanups_shl_floydwarshall0_shift_x_q;
    reg [0:0] redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q;
    reg [31:0] redist1_sync_together316_aunroll_x_in_c0_eni22_2_tpl_1_q;
    reg [31:0] redist2_sync_together316_aunroll_x_in_c0_eni22_3_tpl_1_q;
    reg [31:0] redist3_sync_together316_aunroll_x_in_c0_eni22_4_tpl_1_q;
    reg [31:0] redist4_sync_together316_aunroll_x_in_c0_eni22_5_tpl_1_q;
    reg [31:0] redist5_sync_together316_aunroll_x_in_c0_eni22_6_tpl_1_q;
    reg [31:0] redist6_sync_together316_aunroll_x_in_c0_eni22_7_tpl_1_q;
    reg [31:0] redist7_sync_together316_aunroll_x_in_c0_eni22_8_tpl_1_q;
    reg [31:0] redist8_sync_together316_aunroll_x_in_c0_eni22_9_tpl_1_q;
    reg [31:0] redist9_sync_together316_aunroll_x_in_c0_eni22_10_tpl_1_q;
    reg [31:0] redist10_sync_together316_aunroll_x_in_c0_eni22_11_tpl_1_q;
    reg [31:0] redist11_sync_together316_aunroll_x_in_c0_eni22_12_tpl_1_q;
    reg [31:0] redist12_sync_together316_aunroll_x_in_c0_eni22_13_tpl_1_q;
    reg [31:0] redist13_sync_together316_aunroll_x_in_c0_eni22_14_tpl_1_q;
    reg [31:0] redist14_sync_together316_aunroll_x_in_c0_eni22_15_tpl_1_q;
    reg [31:0] redist15_sync_together316_aunroll_x_in_c0_eni22_16_tpl_1_q;
    reg [31:0] redist16_sync_together316_aunroll_x_in_c0_eni22_17_tpl_1_q;
    reg [31:0] redist17_sync_together316_aunroll_x_in_c0_eni22_18_tpl_1_q;
    reg [31:0] redist18_sync_together316_aunroll_x_in_c0_eni22_19_tpl_1_q;
    reg [0:0] redist19_sync_together316_aunroll_x_in_c0_eni22_20_tpl_1_q;
    reg [0:0] redist20_sync_together316_aunroll_x_in_c0_eni22_21_tpl_1_q;
    reg [31:0] redist21_sync_together316_aunroll_x_in_c0_eni22_22_tpl_2_q;
    reg [31:0] redist21_sync_together316_aunroll_x_in_c0_eni22_22_tpl_2_delay_0;
    reg [0:0] redist22_sync_together316_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist23_i_xor_floydwarshall4_q_1_q;
    reg [31:0] redist24_i_llvm_fpga_pop_i32_inc55179_pop75_floydwarshall176_out_data_out_1_q;
    reg [31:0] redist25_i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_data_out_1_q;
    reg [31:0] redist26_i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_data_out_1_q;
    reg [31:0] redist27_i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_data_out_1_q;
    reg [31:0] redist28_i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_data_out_1_q;
    reg [31:0] redist29_i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_data_out_1_q;
    reg [31:0] redist30_i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_data_out_1_q;
    reg [31:0] redist31_i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_data_out_1_q;
    reg [31:0] redist32_i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_data_out_1_q;
    reg [31:0] redist33_i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_data_out_1_q;
    reg [31:0] redist34_i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_data_out_1_q;
    reg [31:0] redist35_i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_data_out_1_q;
    reg [31:0] redist36_i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_data_out_1_q;
    reg [31:0] redist37_i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_data_out_1_q;
    reg [31:0] redist38_i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_data_out_1_q;
    reg [31:0] redist39_i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_data_out_1_q;
    reg [31:0] redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q;
    reg [0:0] redist41_i_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall180_out_data_out_1_q;
    reg [0:0] redist42_i_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall178_out_data_out_1_q;
    reg [0:0] redist43_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_1_q;
    reg [0:0] redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist22_sync_together316_aunroll_x_in_i_valid_1(DELAY,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together316_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist22_sync_together316_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist43_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_1(DELAY,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist43_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid425_i_cleanups_shl_floydwarshall0_shift_x(BITSELECT,424)@2
    assign leftShiftStage0Idx1Rng1_uid425_i_cleanups_shl_floydwarshall0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop74_floydwarshall2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid425_i_cleanups_shl_floydwarshall0_shift_x_b = leftShiftStage0Idx1Rng1_uid425_i_cleanups_shl_floydwarshall0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid426_i_cleanups_shl_floydwarshall0_shift_x(BITJOIN,425)@2
    assign leftShiftStage0Idx1_uid426_i_cleanups_shl_floydwarshall0_shift_x_q = {leftShiftStage0Idx1Rng1_uid425_i_cleanups_shl_floydwarshall0_shift_x_b, GND_q};

    // leftShiftStage0_uid428_i_cleanups_shl_floydwarshall0_shift_x(MUX,427)@2
    assign leftShiftStage0_uid428_i_cleanups_shl_floydwarshall0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid428_i_cleanups_shl_floydwarshall0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop74_floydwarshall2_out_data_out or leftShiftStage0Idx1_uid426_i_cleanups_shl_floydwarshall0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid428_i_cleanups_shl_floydwarshall0_shift_x_s)
            1'b0 : leftShiftStage0_uid428_i_cleanups_shl_floydwarshall0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop74_floydwarshall2_out_data_out;
            1'b1 : leftShiftStage0_uid428_i_cleanups_shl_floydwarshall0_shift_x_q = leftShiftStage0Idx1_uid426_i_cleanups_shl_floydwarshall0_shift_x_q;
            default : leftShiftStage0_uid428_i_cleanups_shl_floydwarshall0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_floydwarshall5_vt_select_1(BITSELECT,104)@2
    assign i_cleanups_shl_floydwarshall5_vt_select_1_b = leftShiftStage0_uid428_i_cleanups_shl_floydwarshall0_shift_x_q[1:1];

    // i_cleanups_shl_floydwarshall5_vt_join(BITJOIN,103)@2
    assign i_cleanups_shl_floydwarshall5_vt_join_q = {i_cleanups_shl_floydwarshall5_vt_select_1_b, GND_q};

    // i_xor_floydwarshall4(LOGICAL,240)@2
    assign i_xor_floydwarshall4_q = i_first_cleanup_floydwarshall3_sel_x_b ^ VCC_q;

    // i_notcmp_floydwarshall152(LOGICAL,197)@2
    assign i_notcmp_floydwarshall152_q = i_exitcond6_floydwarshall150_cmp_nsign_q ^ VCC_q;

    // i_or_floydwarshall154(LOGICAL,198)@2
    assign i_or_floydwarshall154_q = i_notcmp_floydwarshall152_q | i_xor_floydwarshall4_q;

    // i_next_cleanups_floydwarshall155(MUX,196)@2
    assign i_next_cleanups_floydwarshall155_s = i_or_floydwarshall154_q;
    always @(i_next_cleanups_floydwarshall155_s or i_llvm_fpga_pop_i2_cleanups_pop74_floydwarshall2_out_data_out or i_cleanups_shl_floydwarshall5_vt_join_q)
    begin
        unique case (i_next_cleanups_floydwarshall155_s)
            1'b0 : i_next_cleanups_floydwarshall155_q = i_llvm_fpga_pop_i2_cleanups_pop74_floydwarshall2_out_data_out;
            1'b1 : i_next_cleanups_floydwarshall155_q = i_cleanups_shl_floydwarshall5_vt_join_q;
            default : i_next_cleanups_floydwarshall155_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push74_floydwarshall156(BLACKBOX,174)@2
    // out out_feedback_out_74@20000000
    // out out_feedback_valid_out_74@20000000
    floydWarshall_i_llvm_fpga_push_i2_cleanups_push74_floydwarshall0 thei_llvm_fpga_push_i2_cleanups_push74_floydwarshall156 (
        .in_data_in(i_next_cleanups_floydwarshall155_q),
        .in_feedback_stall_in_74(i_llvm_fpga_pop_i2_cleanups_pop74_floydwarshall2_out_feedback_stall_out_74),
        .in_keep_going(redist43_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist22_sync_together316_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_74(i_llvm_fpga_push_i2_cleanups_push74_floydwarshall156_out_feedback_out_74),
        .out_feedback_valid_out_74(i_llvm_fpga_push_i2_cleanups_push74_floydwarshall156_out_feedback_valid_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1(DELAY,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q <= $unsigned(in_c0_eni22_1_tpl);
        end
    end

    // c_i2_1253(CONSTANT,76)
    assign c_i2_1253_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop74_floydwarshall2(BLACKBOX,149)@2
    // out out_feedback_stall_out_74@20000000
    floydWarshall_i_llvm_fpga_pop_i2_cleanups_pop74_floydwarshall0 thei_llvm_fpga_pop_i2_cleanups_pop74_floydwarshall2 (
        .in_data_in(c_i2_1253_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_74(i_llvm_fpga_push_i2_cleanups_push74_floydwarshall156_out_feedback_out_74),
        .in_feedback_valid_in_74(i_llvm_fpga_push_i2_cleanups_push74_floydwarshall156_out_feedback_valid_out_74),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist22_sync_together316_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop74_floydwarshall2_out_data_out),
        .out_feedback_stall_out_74(i_llvm_fpga_pop_i2_cleanups_pop74_floydwarshall2_out_feedback_stall_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_floydwarshall3_sel_x(BITSELECT,346)@2
    assign i_first_cleanup_floydwarshall3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop74_floydwarshall2_out_data_out[0:0];

    // c_i3_1263(CONSTANT,81)
    assign c_i3_1263_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next5_floydwarshall157(ADD,108)@2
    assign i_fpga_indvars_iv_next5_floydwarshall157_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv4_pop56_floydwarshall149_out_data_out};
    assign i_fpga_indvars_iv_next5_floydwarshall157_b = {1'b0, c_i3_1263_q};
    assign i_fpga_indvars_iv_next5_floydwarshall157_o = $unsigned(i_fpga_indvars_iv_next5_floydwarshall157_a) + $unsigned(i_fpga_indvars_iv_next5_floydwarshall157_b);
    assign i_fpga_indvars_iv_next5_floydwarshall157_q = i_fpga_indvars_iv_next5_floydwarshall157_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next5_floydwarshall157_sel_x(BITSELECT,259)@2
    assign bgTrunc_i_fpga_indvars_iv_next5_floydwarshall157_sel_x_b = i_fpga_indvars_iv_next5_floydwarshall157_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv4_push56_floydwarshall158(BLACKBOX,194)@2
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    floydWarshall_i_llvm_fpga_push_i3_fpga_iA000000Zush56_floydwarshall0 thei_llvm_fpga_push_i3_fpga_indvars_iv4_push56_floydwarshall158 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next5_floydwarshall157_sel_x_b),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_i3_fpga_indvars_iv4_pop56_floydwarshall149_out_feedback_stall_out_56),
        .in_keep_going(redist43_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist22_sync_together316_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_i3_fpga_indvars_iv4_push56_floydwarshall158_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_i3_fpga_indvars_iv4_push56_floydwarshall158_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_2261(CONSTANT,82)
    assign c_i3_2261_q = $unsigned(3'b010);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv4_pop56_floydwarshall149(BLACKBOX,169)@2
    // out out_feedback_stall_out_56@20000000
    floydWarshall_i_llvm_fpga_pop_i3_fpga_inA000000Zpop56_floydwarshall0 thei_llvm_fpga_pop_i3_fpga_indvars_iv4_pop56_floydwarshall149 (
        .in_data_in(c_i3_2261_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_56(i_llvm_fpga_push_i3_fpga_indvars_iv4_push56_floydwarshall158_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_i3_fpga_indvars_iv4_push56_floydwarshall158_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist22_sync_together316_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv4_pop56_floydwarshall149_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_i3_fpga_indvars_iv4_pop56_floydwarshall149_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond6_floydwarshall150_cmp_nsign(LOGICAL,420)@2
    assign i_exitcond6_floydwarshall150_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv4_pop56_floydwarshall149_out_data_out[2:2]));

    // i_llvm_fpga_push_i1_notexitcond_floydwarshall153(BLACKBOX,173)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    floydWarshall_i_llvm_fpga_push_i1_notexitcond_floydwarshall0 thei_llvm_fpga_push_i1_notexitcond_floydwarshall153 (
        .in_data_in(i_exitcond6_floydwarshall150_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_floydwarshall3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist22_sync_together316_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_floydwarshall153_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_floydwarshall153_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,350)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_lastiniteration_floydwarshall7(BLACKBOX,171)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    floydWarshall_i_llvm_fpga_push_i1_lastiniteration_floydwarshall0 thei_llvm_fpga_push_i1_lastiniteration_floydwarshall7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_initeration_stall_out),
        .in_keep_going(redist43_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_floydwarshall7_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_floydwarshall7_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_floydwarshall6(BLACKBOX,146)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    floydWarshall_i_llvm_fpga_pipeline_keep_going_floydwarshall0 thei_llvm_fpga_pipeline_keep_going_floydwarshall6 (
        .in_data_in(in_c0_eni22_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_floydwarshall7_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_floydwarshall7_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_floydwarshall153_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_floydwarshall153_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,84)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,253)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_pipeline_valid_out;

    // valid_fanout_reg43(REG,392)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg7(REG,356)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg41(REG,390)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2(DELAY,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q <= $unsigned(redist43_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_1_q);
        end
    end

    // c_i32_0255(CONSTANT,77)
    assign c_i32_0255_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,351)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg3(REG,352)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_i_127_pop54182_push78_floydwarshall9(BLACKBOX,191)@2
    // out out_feedback_out_78@20000000
    // out out_feedback_valid_out_78@20000000
    floydWarshall_i_llvm_fpga_push_i32_i_127A000000Zush78_floydwarshall0 thei_llvm_fpga_push_i32_i_127_pop54182_push78_floydwarshall9 (
        .in_data_in(i_llvm_fpga_pop_i32_i_127_pop54182_pop78_floydwarshall8_out_data_out),
        .in_feedback_stall_in_78(i_llvm_fpga_pop_i32_i_127_pop54182_pop78_floydwarshall8_out_feedback_stall_out_78),
        .in_keep_going(redist43_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_78(i_llvm_fpga_push_i32_i_127_pop54182_push78_floydwarshall9_out_feedback_out_78),
        .out_feedback_valid_out_78(i_llvm_fpga_push_i32_i_127_pop54182_push78_floydwarshall9_out_feedback_valid_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together316_aunroll_x_in_c0_eni22_2_tpl_1(DELAY,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together316_aunroll_x_in_c0_eni22_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together316_aunroll_x_in_c0_eni22_2_tpl_1_q <= $unsigned(in_c0_eni22_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_127_pop54182_pop78_floydwarshall8(BLACKBOX,166)@2
    // out out_feedback_stall_out_78@20000000
    floydWarshall_i_llvm_fpga_pop_i32_i_127_A000000Zpop78_floydwarshall0 thei_llvm_fpga_pop_i32_i_127_pop54182_pop78_floydwarshall8 (
        .in_data_in(redist1_sync_together316_aunroll_x_in_c0_eni22_2_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_78(i_llvm_fpga_push_i32_i_127_pop54182_push78_floydwarshall9_out_feedback_out_78),
        .in_feedback_valid_in_78(i_llvm_fpga_push_i32_i_127_pop54182_push78_floydwarshall9_out_feedback_valid_out_78),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_127_pop54182_pop78_floydwarshall8_out_data_out),
        .out_feedback_stall_out_78(i_llvm_fpga_pop_i32_i_127_pop54182_pop78_floydwarshall8_out_feedback_stall_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg21(REG,370)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg42(REG,391)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_1256(CONSTANT,78)
    assign c_i32_1256_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc49_floydwarshall147(ADD,109)@2
    assign i_inc49_floydwarshall147_a = {1'b0, i_llvm_fpga_pop_i32_j_126_pop73_floydwarshall45_out_data_out};
    assign i_inc49_floydwarshall147_b = {1'b0, c_i32_1256_q};
    assign i_inc49_floydwarshall147_o = $unsigned(i_inc49_floydwarshall147_a) + $unsigned(i_inc49_floydwarshall147_b);
    assign i_inc49_floydwarshall147_q = i_inc49_floydwarshall147_o[32:0];

    // bgTrunc_i_inc49_floydwarshall147_sel_x(BITSELECT,260)@2
    assign bgTrunc_i_inc49_floydwarshall147_sel_x_b = i_inc49_floydwarshall147_q[31:0];

    // i_llvm_fpga_push_i32_j_126_push73_floydwarshall148(BLACKBOX,193)@2
    // out out_feedback_out_73@20000000
    // out out_feedback_valid_out_73@20000000
    floydWarshall_i_llvm_fpga_push_i32_j_126_push73_floydwarshall0 thei_llvm_fpga_push_i32_j_126_push73_floydwarshall148 (
        .in_data_in(bgTrunc_i_inc49_floydwarshall147_sel_x_b),
        .in_feedback_stall_in_73(i_llvm_fpga_pop_i32_j_126_pop73_floydwarshall45_out_feedback_stall_out_73),
        .in_keep_going(redist43_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_data_out(),
        .out_feedback_out_73(i_llvm_fpga_push_i32_j_126_push73_floydwarshall148_out_feedback_out_73),
        .out_feedback_valid_out_73(i_llvm_fpga_push_i32_j_126_push73_floydwarshall148_out_feedback_valid_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_126_pop73_floydwarshall45(BLACKBOX,168)@2
    // out out_feedback_stall_out_73@20000000
    floydWarshall_i_llvm_fpga_pop_i32_j_126_pop73_floydwarshall0 thei_llvm_fpga_pop_i32_j_126_pop73_floydwarshall45 (
        .in_data_in(c_i32_0255_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_73(i_llvm_fpga_push_i32_j_126_push73_floydwarshall148_out_feedback_out_73),
        .in_feedback_valid_in_73(i_llvm_fpga_push_i32_j_126_push73_floydwarshall148_out_feedback_valid_out_73),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_126_pop73_floydwarshall45_out_data_out),
        .out_feedback_stall_out_73(i_llvm_fpga_pop_i32_j_126_pop73_floydwarshall45_out_feedback_stall_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall81(LOGICAL,238)@2
    assign i_unnamed_floydwarshall81_q = i_llvm_fpga_pop_i32_j_126_pop73_floydwarshall45_out_data_out | i_llvm_fpga_pop_i32_i_127_pop54182_pop78_floydwarshall8_out_data_out;

    // i_unnamed_floydwarshall82(LOGICAL,239)@2 + 1
    assign i_unnamed_floydwarshall82_qi = $unsigned(i_unnamed_floydwarshall81_q == c_i32_0255_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall82_delay ( .xin(i_unnamed_floydwarshall82_qi), .xout(i_unnamed_floydwarshall82_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_3258(CONSTANT,80)
    assign c_i32_3258_q = $unsigned(32'b00000000000000000000000000000011);

    // i_unnamed_floydwarshall46(LOGICAL,234)@2 + 1
    assign i_unnamed_floydwarshall46_qi = $unsigned(i_llvm_fpga_pop_i32_j_126_pop73_floydwarshall45_out_data_out == c_i32_3258_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall46_delay ( .xin(i_unnamed_floydwarshall46_qi), .xout(i_unnamed_floydwarshall46_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_2257(CONSTANT,79)
    assign c_i32_2257_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_floydwarshall48(LOGICAL,235)@2 + 1
    assign i_unnamed_floydwarshall48_qi = $unsigned(i_llvm_fpga_pop_i32_j_126_pop73_floydwarshall45_out_data_out == c_i32_2257_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall48_delay ( .xin(i_unnamed_floydwarshall48_qi), .xout(i_unnamed_floydwarshall48_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_floydwarshall50(LOGICAL,236)@2 + 1
    assign i_unnamed_floydwarshall50_qi = $unsigned(i_llvm_fpga_pop_i32_j_126_pop73_floydwarshall45_out_data_out == c_i32_1256_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall50_delay ( .xin(i_unnamed_floydwarshall50_qi), .xout(i_unnamed_floydwarshall50_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_floydwarshall52(LOGICAL,237)@2 + 1
    assign i_unnamed_floydwarshall52_qi = $unsigned(i_llvm_fpga_pop_i32_j_126_pop73_floydwarshall45_out_data_out == c_i32_0255_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall52_delay ( .xin(i_unnamed_floydwarshall52_qi), .xout(i_unnamed_floydwarshall52_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt306_floydwarshall78(SELECTOR,114)@3
    always @(i_unnamed_floydwarshall52_q or i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt325_floydwarshall23_q or i_unnamed_floydwarshall50_q or i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt311_floydwarshall29_q or i_unnamed_floydwarshall48_q or i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt316_floydwarshall35_q or i_unnamed_floydwarshall46_q or i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt321_floydwarshall41_q or redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q)
    begin
        i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt306_floydwarshall78_q = redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q;
        if (i_unnamed_floydwarshall46_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt306_floydwarshall78_q = i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt321_floydwarshall41_q;
        end
        if (i_unnamed_floydwarshall48_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt306_floydwarshall78_q = i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt316_floydwarshall35_q;
        end
        if (i_unnamed_floydwarshall50_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt306_floydwarshall78_q = i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt311_floydwarshall29_q;
        end
        if (i_unnamed_floydwarshall52_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt306_floydwarshall78_q = i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt325_floydwarshall23_q;
        end
    end

    // i_cmp34_floydwarshall79(COMPARE,105)@3
    assign i_cmp34_floydwarshall79_a = $unsigned({{2{bgTrunc_i_add_floydwarshall68_sel_x_b[31]}}, bgTrunc_i_add_floydwarshall68_sel_x_b});
    assign i_cmp34_floydwarshall79_b = $unsigned({{2{i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt306_floydwarshall78_q[31]}}, i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt306_floydwarshall78_q});
    assign i_cmp34_floydwarshall79_o = $unsigned($signed(i_cmp34_floydwarshall79_a) - $signed(i_cmp34_floydwarshall79_b));
    assign i_cmp34_floydwarshall79_c[0] = i_cmp34_floydwarshall79_o[33];

    // i_unnamed_floydwarshall144(LOGICAL,232)@3
    assign i_unnamed_floydwarshall144_q = i_cmp34_floydwarshall79_c & i_unnamed_floydwarshall82_q;

    // i_acl_249_floydwarshall145(MUX,99)@3
    assign i_acl_249_floydwarshall145_s = i_unnamed_floydwarshall144_q;
    always @(i_acl_249_floydwarshall145_s or redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_249_floydwarshall145_s)
            1'b0 : i_acl_249_floydwarshall145_q = redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q;
            1'b1 : i_acl_249_floydwarshall145_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_249_floydwarshall145_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_0_5_push72_floydwarshall146(BLACKBOX,175)@3
    // out out_feedback_out_72@20000000
    // out out_feedback_valid_out_72@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_0_5_push72_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_0_5_push72_floydwarshall146 (
        .in_data_in(i_acl_249_floydwarshall145_q),
        .in_feedback_stall_in_72(i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_feedback_stall_out_72),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(),
        .out_feedback_out_72(i_llvm_fpga_push_i32_a_sroa_0_5_push72_floydwarshall146_out_feedback_out_72),
        .out_feedback_valid_out_72(i_llvm_fpga_push_i32_a_sroa_0_5_push72_floydwarshall146_out_feedback_valid_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together316_aunroll_x_in_c0_eni22_6_tpl_1(DELAY,434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together316_aunroll_x_in_c0_eni22_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together316_aunroll_x_in_c0_eni22_6_tpl_1_q <= $unsigned(in_c0_eni22_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22(BLACKBOX,150)@2
    // out out_feedback_stall_out_72@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22 (
        .in_data_in(redist5_sync_together316_aunroll_x_in_c0_eni22_6_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_72(i_llvm_fpga_push_i32_a_sroa_0_5_push72_floydwarshall146_out_feedback_out_72),
        .in_feedback_valid_in_72(i_llvm_fpga_push_i32_a_sroa_0_5_push72_floydwarshall146_out_feedback_valid_out_72),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out),
        .out_feedback_stall_out_72(i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_feedback_stall_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1(DELAY,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q <= '0;
        end
        else
        begin
            redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out);
        end
    end

    // i_unnamed_floydwarshall16(LOGICAL,233)@2 + 1
    assign i_unnamed_floydwarshall16_qi = $unsigned(i_llvm_fpga_pop_i32_i_127_pop54182_pop78_floydwarshall8_out_data_out == c_i32_3258_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall16_delay ( .xin(i_unnamed_floydwarshall16_qi), .xout(i_unnamed_floydwarshall16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg18(REG,367)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg30(REG,379)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_reduction_floydwarshall_8_floydwarshall100(LOGICAL,227)@3
    assign i_reduction_floydwarshall_8_floydwarshall100_q = i_unnamed_floydwarshall46_q & i_unnamed_floydwarshall14_q;

    // i_reduction_floydwarshall_9_floydwarshall101(LOGICAL,228)@3
    assign i_reduction_floydwarshall_9_floydwarshall101_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_8_floydwarshall100_q;

    // i_acl_238_floydwarshall102(MUX,88)@3
    assign i_acl_238_floydwarshall102_s = i_reduction_floydwarshall_9_floydwarshall101_q;
    always @(i_acl_238_floydwarshall102_s or redist30_i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_238_floydwarshall102_s)
            1'b0 : i_acl_238_floydwarshall102_q = redist30_i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_data_out_1_q;
            1'b1 : i_acl_238_floydwarshall102_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_238_floydwarshall102_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_57_5_push61_floydwarshall103(BLACKBOX,185)@3
    // out out_feedback_out_61@20000000
    // out out_feedback_valid_out_61@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_57_5_push61_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_57_5_push61_floydwarshall103 (
        .in_data_in(i_acl_238_floydwarshall102_q),
        .in_feedback_stall_in_61(i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_feedback_stall_out_61),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_61(i_llvm_fpga_push_i32_a_sroa_57_5_push61_floydwarshall103_out_feedback_out_61),
        .out_feedback_valid_out_61(i_llvm_fpga_push_i32_a_sroa_57_5_push61_floydwarshall103_out_feedback_valid_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_sync_together316_aunroll_x_in_c0_eni22_17_tpl_1(DELAY,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together316_aunroll_x_in_c0_eni22_17_tpl_1_q <= '0;
        end
        else
        begin
            redist16_sync_together316_aunroll_x_in_c0_eni22_17_tpl_1_q <= $unsigned(in_c0_eni22_17_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39(BLACKBOX,160)@2
    // out out_feedback_stall_out_61@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39 (
        .in_data_in(redist16_sync_together316_aunroll_x_in_c0_eni22_17_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_61(i_llvm_fpga_push_i32_a_sroa_57_5_push61_floydwarshall103_out_feedback_out_61),
        .in_feedback_valid_in_61(i_llvm_fpga_push_i32_a_sroa_57_5_push61_floydwarshall103_out_feedback_valid_out_61),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_data_out),
        .out_feedback_stall_out_61(i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_feedback_stall_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_data_out_1(DELAY,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_data_out_1_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_data_out);
        end
    end

    // i_unnamed_floydwarshall14(LOGICAL,231)@2 + 1
    assign i_unnamed_floydwarshall14_qi = $unsigned(i_llvm_fpga_pop_i32_i_127_pop54182_pop78_floydwarshall8_out_data_out == c_i32_2257_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall14_delay ( .xin(i_unnamed_floydwarshall14_qi), .xout(i_unnamed_floydwarshall14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg17(REG,366)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg34(REG,383)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_reduction_floydwarshall_16_floydwarshall116(LOGICAL,206)@3
    assign i_reduction_floydwarshall_16_floydwarshall116_q = i_unnamed_floydwarshall46_q & comparator_q;

    // i_reduction_floydwarshall_17_floydwarshall117(LOGICAL,207)@3
    assign i_reduction_floydwarshall_17_floydwarshall117_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_16_floydwarshall116_q;

    // i_acl_242_floydwarshall118(MUX,92)@3
    assign i_acl_242_floydwarshall118_s = i_reduction_floydwarshall_17_floydwarshall117_q;
    always @(i_acl_242_floydwarshall118_s or redist34_i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_242_floydwarshall118_s)
            1'b0 : i_acl_242_floydwarshall118_q = redist34_i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_data_out_1_q;
            1'b1 : i_acl_242_floydwarshall118_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_242_floydwarshall118_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_37_5_push65_floydwarshall119(BLACKBOX,181)@3
    // out out_feedback_out_65@20000000
    // out out_feedback_valid_out_65@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_37_5_push65_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_37_5_push65_floydwarshall119 (
        .in_data_in(i_acl_242_floydwarshall118_q),
        .in_feedback_stall_in_65(i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_feedback_stall_out_65),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(),
        .out_feedback_out_65(i_llvm_fpga_push_i32_a_sroa_37_5_push65_floydwarshall119_out_feedback_out_65),
        .out_feedback_valid_out_65(i_llvm_fpga_push_i32_a_sroa_37_5_push65_floydwarshall119_out_feedback_valid_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_sync_together316_aunroll_x_in_c0_eni22_16_tpl_1(DELAY,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together316_aunroll_x_in_c0_eni22_16_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together316_aunroll_x_in_c0_eni22_16_tpl_1_q <= $unsigned(in_c0_eni22_16_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38(BLACKBOX,156)@2
    // out out_feedback_stall_out_65@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38 (
        .in_data_in(redist15_sync_together316_aunroll_x_in_c0_eni22_16_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_65(i_llvm_fpga_push_i32_a_sroa_37_5_push65_floydwarshall119_out_feedback_out_65),
        .in_feedback_valid_in_65(i_llvm_fpga_push_i32_a_sroa_37_5_push65_floydwarshall119_out_feedback_valid_out_65),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_data_out),
        .out_feedback_stall_out_65(i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_feedback_stall_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_data_out_1(DELAY,463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_data_out_1_q <= '0;
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_data_out);
        end
    end

    // comparator(LOGICAL,83)@2 + 1
    assign comparator_qi = $unsigned(i_llvm_fpga_pop_i32_i_127_pop54182_pop78_floydwarshall8_out_data_out == c_i32_1256_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    comparator_delay ( .xin(comparator_qi), .xout(comparator_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg16(REG,365)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg38(REG,387)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_reduction_floydwarshall_24_floydwarshall132(LOGICAL,215)@3
    assign i_reduction_floydwarshall_24_floydwarshall132_q = i_unnamed_floydwarshall46_q & i_unnamed_floydwarshall10_q;

    // i_reduction_floydwarshall_25_floydwarshall133(LOGICAL,216)@3
    assign i_reduction_floydwarshall_25_floydwarshall133_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_24_floydwarshall132_q;

    // i_acl_246_floydwarshall134(MUX,96)@3
    assign i_acl_246_floydwarshall134_s = i_reduction_floydwarshall_25_floydwarshall133_q;
    always @(i_acl_246_floydwarshall134_s or redist38_i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_246_floydwarshall134_s)
            1'b0 : i_acl_246_floydwarshall134_q = redist38_i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_data_out_1_q;
            1'b1 : i_acl_246_floydwarshall134_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_246_floydwarshall134_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_17_5_push69_floydwarshall135(BLACKBOX,177)@3
    // out out_feedback_out_69@20000000
    // out out_feedback_valid_out_69@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_17_5_push69_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_17_5_push69_floydwarshall135 (
        .in_data_in(i_acl_246_floydwarshall134_q),
        .in_feedback_stall_in_69(i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_feedback_stall_out_69),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(),
        .out_feedback_out_69(i_llvm_fpga_push_i32_a_sroa_17_5_push69_floydwarshall135_out_feedback_out_69),
        .out_feedback_valid_out_69(i_llvm_fpga_push_i32_a_sroa_17_5_push69_floydwarshall135_out_feedback_valid_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together316_aunroll_x_in_c0_eni22_15_tpl_1(DELAY,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together316_aunroll_x_in_c0_eni22_15_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together316_aunroll_x_in_c0_eni22_15_tpl_1_q <= $unsigned(in_c0_eni22_15_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36(BLACKBOX,152)@2
    // out out_feedback_stall_out_69@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36 (
        .in_data_in(redist14_sync_together316_aunroll_x_in_c0_eni22_15_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_69(i_llvm_fpga_push_i32_a_sroa_17_5_push69_floydwarshall135_out_feedback_out_69),
        .in_feedback_valid_in_69(i_llvm_fpga_push_i32_a_sroa_17_5_push69_floydwarshall135_out_feedback_valid_out_69),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_data_out),
        .out_feedback_stall_out_69(i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_feedback_stall_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_data_out_1(DELAY,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_data_out_1_q <= '0;
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_data_out);
        end
    end

    // i_unnamed_floydwarshall10(LOGICAL,229)@2 + 1
    assign i_unnamed_floydwarshall10_qi = $unsigned(i_llvm_fpga_pop_i32_i_127_pop54182_pop78_floydwarshall8_out_data_out == c_i32_0255_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall10_delay ( .xin(i_unnamed_floydwarshall10_qi), .xout(i_unnamed_floydwarshall10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt321_floydwarshall41(SELECTOR,117)@3
    always @(i_unnamed_floydwarshall10_q or redist38_i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_data_out_1_q or comparator_q or redist34_i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_data_out_1_q or i_unnamed_floydwarshall14_q or redist30_i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_data_out_1_q or i_unnamed_floydwarshall16_q or redist26_i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_data_out_1_q or redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q)
    begin
        i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt321_floydwarshall41_q = redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q;
        if (i_unnamed_floydwarshall16_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt321_floydwarshall41_q = redist26_i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_data_out_1_q;
        end
        if (i_unnamed_floydwarshall14_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt321_floydwarshall41_q = redist30_i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_data_out_1_q;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt321_floydwarshall41_q = redist34_i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_data_out_1_q;
        end
        if (i_unnamed_floydwarshall10_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt321_floydwarshall41_q = redist38_i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_data_out_1_q;
        end
    end

    // valid_fanout_reg20(REG,369)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_k_02830_floydwarshall43(BLACKBOX,129)@2
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_k_02830_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_k_02830_floydwarshall43 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i32_k_02830_floydwarshall43_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_17_comparator_x(LOGICAL,303)@2 + 1
    assign dupName_17_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02830_floydwarshall43_out_dest_data_out_17_0 == c_i32_3258_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_17_comparator_x_delay ( .xin(dupName_17_comparator_x_qi), .xout(dupName_17_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg15(REG,364)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg27(REG,376)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_reduction_floydwarshall_2_floydwarshall88(LOGICAL,221)@3
    assign i_reduction_floydwarshall_2_floydwarshall88_q = i_unnamed_floydwarshall48_q & i_unnamed_floydwarshall16_q;

    // i_reduction_floydwarshall_3_floydwarshall89(LOGICAL,222)@3
    assign i_reduction_floydwarshall_3_floydwarshall89_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_2_floydwarshall88_q;

    // i_acl_235_floydwarshall90(MUX,85)@3
    assign i_acl_235_floydwarshall90_s = i_reduction_floydwarshall_3_floydwarshall89_q;
    always @(i_acl_235_floydwarshall90_s or redist27_i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_235_floydwarshall90_s)
            1'b0 : i_acl_235_floydwarshall90_q = redist27_i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_data_out_1_q;
            1'b1 : i_acl_235_floydwarshall90_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_235_floydwarshall90_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_72_5_push58_floydwarshall91(BLACKBOX,188)@3
    // out out_feedback_out_58@20000000
    // out out_feedback_valid_out_58@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_72_5_push58_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_72_5_push58_floydwarshall91 (
        .in_data_in(i_acl_235_floydwarshall90_q),
        .in_feedback_stall_in_58(i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_feedback_stall_out_58),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_58(i_llvm_fpga_push_i32_a_sroa_72_5_push58_floydwarshall91_out_feedback_out_58),
        .out_feedback_valid_out_58(i_llvm_fpga_push_i32_a_sroa_72_5_push58_floydwarshall91_out_feedback_valid_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together316_aunroll_x_in_c0_eni22_14_tpl_1(DELAY,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together316_aunroll_x_in_c0_eni22_14_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together316_aunroll_x_in_c0_eni22_14_tpl_1_q <= $unsigned(in_c0_eni22_14_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34(BLACKBOX,163)@2
    // out out_feedback_stall_out_58@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34 (
        .in_data_in(redist13_sync_together316_aunroll_x_in_c0_eni22_14_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_58(i_llvm_fpga_push_i32_a_sroa_72_5_push58_floydwarshall91_out_feedback_out_58),
        .in_feedback_valid_in_58(i_llvm_fpga_push_i32_a_sroa_72_5_push58_floydwarshall91_out_feedback_valid_out_58),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_data_out),
        .out_feedback_stall_out_58(i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_feedback_stall_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_data_out_1(DELAY,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_data_out_1_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_data_out);
        end
    end

    // valid_fanout_reg14(REG,363)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg31(REG,380)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_reduction_floydwarshall_10_floydwarshall104(LOGICAL,200)@3
    assign i_reduction_floydwarshall_10_floydwarshall104_q = i_unnamed_floydwarshall48_q & i_unnamed_floydwarshall14_q;

    // i_reduction_floydwarshall_11_floydwarshall105(LOGICAL,201)@3
    assign i_reduction_floydwarshall_11_floydwarshall105_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_10_floydwarshall104_q;

    // i_acl_239_floydwarshall106(MUX,89)@3
    assign i_acl_239_floydwarshall106_s = i_reduction_floydwarshall_11_floydwarshall105_q;
    always @(i_acl_239_floydwarshall106_s or redist31_i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_239_floydwarshall106_s)
            1'b0 : i_acl_239_floydwarshall106_q = redist31_i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_data_out_1_q;
            1'b1 : i_acl_239_floydwarshall106_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_239_floydwarshall106_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_52_5_push62_floydwarshall107(BLACKBOX,184)@3
    // out out_feedback_out_62@20000000
    // out out_feedback_valid_out_62@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_52_5_push62_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_52_5_push62_floydwarshall107 (
        .in_data_in(i_acl_239_floydwarshall106_q),
        .in_feedback_stall_in_62(i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_feedback_stall_out_62),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(),
        .out_feedback_out_62(i_llvm_fpga_push_i32_a_sroa_52_5_push62_floydwarshall107_out_feedback_out_62),
        .out_feedback_valid_out_62(i_llvm_fpga_push_i32_a_sroa_52_5_push62_floydwarshall107_out_feedback_valid_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together316_aunroll_x_in_c0_eni22_13_tpl_1(DELAY,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together316_aunroll_x_in_c0_eni22_13_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together316_aunroll_x_in_c0_eni22_13_tpl_1_q <= $unsigned(in_c0_eni22_13_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33(BLACKBOX,159)@2
    // out out_feedback_stall_out_62@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33 (
        .in_data_in(redist12_sync_together316_aunroll_x_in_c0_eni22_13_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_62(i_llvm_fpga_push_i32_a_sroa_52_5_push62_floydwarshall107_out_feedback_out_62),
        .in_feedback_valid_in_62(i_llvm_fpga_push_i32_a_sroa_52_5_push62_floydwarshall107_out_feedback_valid_out_62),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_data_out),
        .out_feedback_stall_out_62(i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_feedback_stall_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_data_out_1(DELAY,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_data_out_1_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_data_out);
        end
    end

    // valid_fanout_reg13(REG,362)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg35(REG,384)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_reduction_floydwarshall_18_floydwarshall120(LOGICAL,208)@3
    assign i_reduction_floydwarshall_18_floydwarshall120_q = i_unnamed_floydwarshall48_q & comparator_q;

    // i_reduction_floydwarshall_19_floydwarshall121(LOGICAL,209)@3
    assign i_reduction_floydwarshall_19_floydwarshall121_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_18_floydwarshall120_q;

    // i_acl_243_floydwarshall122(MUX,93)@3
    assign i_acl_243_floydwarshall122_s = i_reduction_floydwarshall_19_floydwarshall121_q;
    always @(i_acl_243_floydwarshall122_s or redist35_i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_243_floydwarshall122_s)
            1'b0 : i_acl_243_floydwarshall122_q = redist35_i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_data_out_1_q;
            1'b1 : i_acl_243_floydwarshall122_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_243_floydwarshall122_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_32_5_push66_floydwarshall123(BLACKBOX,180)@3
    // out out_feedback_out_66@20000000
    // out out_feedback_valid_out_66@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_32_5_push66_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_32_5_push66_floydwarshall123 (
        .in_data_in(i_acl_243_floydwarshall122_q),
        .in_feedback_stall_in_66(i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_feedback_stall_out_66),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(),
        .out_feedback_out_66(i_llvm_fpga_push_i32_a_sroa_32_5_push66_floydwarshall123_out_feedback_out_66),
        .out_feedback_valid_out_66(i_llvm_fpga_push_i32_a_sroa_32_5_push66_floydwarshall123_out_feedback_valid_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together316_aunroll_x_in_c0_eni22_12_tpl_1(DELAY,440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together316_aunroll_x_in_c0_eni22_12_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together316_aunroll_x_in_c0_eni22_12_tpl_1_q <= $unsigned(in_c0_eni22_12_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32(BLACKBOX,155)@2
    // out out_feedback_stall_out_66@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32 (
        .in_data_in(redist11_sync_together316_aunroll_x_in_c0_eni22_12_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_66(i_llvm_fpga_push_i32_a_sroa_32_5_push66_floydwarshall123_out_feedback_out_66),
        .in_feedback_valid_in_66(i_llvm_fpga_push_i32_a_sroa_32_5_push66_floydwarshall123_out_feedback_valid_out_66),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_data_out),
        .out_feedback_stall_out_66(i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_feedback_stall_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_data_out_1(DELAY,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_data_out_1_q <= '0;
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_data_out);
        end
    end

    // valid_fanout_reg12(REG,361)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg39(REG,388)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_reduction_floydwarshall_26_floydwarshall136(LOGICAL,217)@3
    assign i_reduction_floydwarshall_26_floydwarshall136_q = i_unnamed_floydwarshall48_q & i_unnamed_floydwarshall10_q;

    // i_reduction_floydwarshall_27_floydwarshall137(LOGICAL,218)@3
    assign i_reduction_floydwarshall_27_floydwarshall137_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_26_floydwarshall136_q;

    // i_acl_247_floydwarshall138(MUX,97)@3
    assign i_acl_247_floydwarshall138_s = i_reduction_floydwarshall_27_floydwarshall137_q;
    always @(i_acl_247_floydwarshall138_s or redist39_i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_247_floydwarshall138_s)
            1'b0 : i_acl_247_floydwarshall138_q = redist39_i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_data_out_1_q;
            1'b1 : i_acl_247_floydwarshall138_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_247_floydwarshall138_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_12_5_push70_floydwarshall139(BLACKBOX,176)@3
    // out out_feedback_out_70@20000000
    // out out_feedback_valid_out_70@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_12_5_push70_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_12_5_push70_floydwarshall139 (
        .in_data_in(i_acl_247_floydwarshall138_q),
        .in_feedback_stall_in_70(i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_feedback_stall_out_70),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(),
        .out_feedback_out_70(i_llvm_fpga_push_i32_a_sroa_12_5_push70_floydwarshall139_out_feedback_out_70),
        .out_feedback_valid_out_70(i_llvm_fpga_push_i32_a_sroa_12_5_push70_floydwarshall139_out_feedback_valid_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together316_aunroll_x_in_c0_eni22_11_tpl_1(DELAY,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together316_aunroll_x_in_c0_eni22_11_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together316_aunroll_x_in_c0_eni22_11_tpl_1_q <= $unsigned(in_c0_eni22_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30(BLACKBOX,151)@2
    // out out_feedback_stall_out_70@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30 (
        .in_data_in(redist10_sync_together316_aunroll_x_in_c0_eni22_11_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_70(i_llvm_fpga_push_i32_a_sroa_12_5_push70_floydwarshall139_out_feedback_out_70),
        .in_feedback_valid_in_70(i_llvm_fpga_push_i32_a_sroa_12_5_push70_floydwarshall139_out_feedback_valid_out_70),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_data_out),
        .out_feedback_stall_out_70(i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_feedback_stall_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist39_i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_data_out_1(DELAY,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_data_out_1_q <= '0;
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_data_out);
        end
    end

    // i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt316_floydwarshall35(SELECTOR,116)@3
    always @(i_unnamed_floydwarshall10_q or redist39_i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_data_out_1_q or comparator_q or redist35_i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_data_out_1_q or i_unnamed_floydwarshall14_q or redist31_i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_data_out_1_q or i_unnamed_floydwarshall16_q or redist27_i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_data_out_1_q or redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q)
    begin
        i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt316_floydwarshall35_q = redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q;
        if (i_unnamed_floydwarshall16_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt316_floydwarshall35_q = redist27_i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_data_out_1_q;
        end
        if (i_unnamed_floydwarshall14_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt316_floydwarshall35_q = redist31_i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_data_out_1_q;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt316_floydwarshall35_q = redist35_i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_data_out_1_q;
        end
        if (i_unnamed_floydwarshall10_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt316_floydwarshall35_q = redist39_i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_data_out_1_q;
        end
    end

    // dupName_16_comparator_x(LOGICAL,302)@2 + 1
    assign dupName_16_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02830_floydwarshall43_out_dest_data_out_17_0 == c_i32_2257_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_16_comparator_x_delay ( .xin(dupName_16_comparator_x_qi), .xout(dupName_16_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,360)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg28(REG,377)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_reduction_floydwarshall_4_floydwarshall92(LOGICAL,223)@3
    assign i_reduction_floydwarshall_4_floydwarshall92_q = i_unnamed_floydwarshall50_q & i_unnamed_floydwarshall16_q;

    // i_reduction_floydwarshall_5_floydwarshall93(LOGICAL,224)@3
    assign i_reduction_floydwarshall_5_floydwarshall93_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_4_floydwarshall92_q;

    // i_acl_236_floydwarshall94(MUX,86)@3
    assign i_acl_236_floydwarshall94_s = i_reduction_floydwarshall_5_floydwarshall93_q;
    always @(i_acl_236_floydwarshall94_s or redist28_i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_236_floydwarshall94_s)
            1'b0 : i_acl_236_floydwarshall94_q = redist28_i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_data_out_1_q;
            1'b1 : i_acl_236_floydwarshall94_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_236_floydwarshall94_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_67_5_push59_floydwarshall95(BLACKBOX,187)@3
    // out out_feedback_out_59@20000000
    // out out_feedback_valid_out_59@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_67_5_push59_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_67_5_push59_floydwarshall95 (
        .in_data_in(i_acl_236_floydwarshall94_q),
        .in_feedback_stall_in_59(i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_feedback_stall_out_59),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_59(i_llvm_fpga_push_i32_a_sroa_67_5_push59_floydwarshall95_out_feedback_out_59),
        .out_feedback_valid_out_59(i_llvm_fpga_push_i32_a_sroa_67_5_push59_floydwarshall95_out_feedback_valid_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together316_aunroll_x_in_c0_eni22_10_tpl_1(DELAY,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together316_aunroll_x_in_c0_eni22_10_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together316_aunroll_x_in_c0_eni22_10_tpl_1_q <= $unsigned(in_c0_eni22_10_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28(BLACKBOX,162)@2
    // out out_feedback_stall_out_59@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28 (
        .in_data_in(redist9_sync_together316_aunroll_x_in_c0_eni22_10_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_59(i_llvm_fpga_push_i32_a_sroa_67_5_push59_floydwarshall95_out_feedback_out_59),
        .in_feedback_valid_in_59(i_llvm_fpga_push_i32_a_sroa_67_5_push59_floydwarshall95_out_feedback_valid_out_59),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_data_out),
        .out_feedback_stall_out_59(i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_feedback_stall_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_data_out_1(DELAY,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_data_out_1_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_data_out);
        end
    end

    // valid_fanout_reg10(REG,359)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg32(REG,381)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_reduction_floydwarshall_12_floydwarshall108(LOGICAL,202)@3
    assign i_reduction_floydwarshall_12_floydwarshall108_q = i_unnamed_floydwarshall50_q & i_unnamed_floydwarshall14_q;

    // i_reduction_floydwarshall_13_floydwarshall109(LOGICAL,203)@3
    assign i_reduction_floydwarshall_13_floydwarshall109_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_12_floydwarshall108_q;

    // i_acl_240_floydwarshall110(MUX,90)@3
    assign i_acl_240_floydwarshall110_s = i_reduction_floydwarshall_13_floydwarshall109_q;
    always @(i_acl_240_floydwarshall110_s or redist32_i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_240_floydwarshall110_s)
            1'b0 : i_acl_240_floydwarshall110_q = redist32_i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_data_out_1_q;
            1'b1 : i_acl_240_floydwarshall110_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_240_floydwarshall110_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_47_5_push63_floydwarshall111(BLACKBOX,183)@3
    // out out_feedback_out_63@20000000
    // out out_feedback_valid_out_63@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_47_5_push63_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_47_5_push63_floydwarshall111 (
        .in_data_in(i_acl_240_floydwarshall110_q),
        .in_feedback_stall_in_63(i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_feedback_stall_out_63),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_63(i_llvm_fpga_push_i32_a_sroa_47_5_push63_floydwarshall111_out_feedback_out_63),
        .out_feedback_valid_out_63(i_llvm_fpga_push_i32_a_sroa_47_5_push63_floydwarshall111_out_feedback_valid_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together316_aunroll_x_in_c0_eni22_9_tpl_1(DELAY,437)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together316_aunroll_x_in_c0_eni22_9_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together316_aunroll_x_in_c0_eni22_9_tpl_1_q <= $unsigned(in_c0_eni22_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27(BLACKBOX,158)@2
    // out out_feedback_stall_out_63@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27 (
        .in_data_in(redist8_sync_together316_aunroll_x_in_c0_eni22_9_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_63(i_llvm_fpga_push_i32_a_sroa_47_5_push63_floydwarshall111_out_feedback_out_63),
        .in_feedback_valid_in_63(i_llvm_fpga_push_i32_a_sroa_47_5_push63_floydwarshall111_out_feedback_valid_out_63),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_data_out),
        .out_feedback_stall_out_63(i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_feedback_stall_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_data_out_1(DELAY,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_data_out_1_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_data_out);
        end
    end

    // valid_fanout_reg9(REG,358)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg36(REG,385)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_reduction_floydwarshall_20_floydwarshall124(LOGICAL,211)@3
    assign i_reduction_floydwarshall_20_floydwarshall124_q = i_unnamed_floydwarshall50_q & comparator_q;

    // i_reduction_floydwarshall_21_floydwarshall125(LOGICAL,212)@3
    assign i_reduction_floydwarshall_21_floydwarshall125_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_20_floydwarshall124_q;

    // i_acl_244_floydwarshall126(MUX,94)@3
    assign i_acl_244_floydwarshall126_s = i_reduction_floydwarshall_21_floydwarshall125_q;
    always @(i_acl_244_floydwarshall126_s or redist36_i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_244_floydwarshall126_s)
            1'b0 : i_acl_244_floydwarshall126_q = redist36_i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_data_out_1_q;
            1'b1 : i_acl_244_floydwarshall126_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_244_floydwarshall126_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_27_5_push67_floydwarshall127(BLACKBOX,179)@3
    // out out_feedback_out_67@20000000
    // out out_feedback_valid_out_67@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_27_5_push67_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_27_5_push67_floydwarshall127 (
        .in_data_in(i_acl_244_floydwarshall126_q),
        .in_feedback_stall_in_67(i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_feedback_stall_out_67),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(),
        .out_feedback_out_67(i_llvm_fpga_push_i32_a_sroa_27_5_push67_floydwarshall127_out_feedback_out_67),
        .out_feedback_valid_out_67(i_llvm_fpga_push_i32_a_sroa_27_5_push67_floydwarshall127_out_feedback_valid_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together316_aunroll_x_in_c0_eni22_8_tpl_1(DELAY,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together316_aunroll_x_in_c0_eni22_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together316_aunroll_x_in_c0_eni22_8_tpl_1_q <= $unsigned(in_c0_eni22_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26(BLACKBOX,154)@2
    // out out_feedback_stall_out_67@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26 (
        .in_data_in(redist7_sync_together316_aunroll_x_in_c0_eni22_8_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_67(i_llvm_fpga_push_i32_a_sroa_27_5_push67_floydwarshall127_out_feedback_out_67),
        .in_feedback_valid_in_67(i_llvm_fpga_push_i32_a_sroa_27_5_push67_floydwarshall127_out_feedback_valid_out_67),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_data_out),
        .out_feedback_stall_out_67(i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_feedback_stall_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_data_out_1(DELAY,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_data_out_1_q <= '0;
        end
        else
        begin
            redist36_i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_data_out);
        end
    end

    // valid_fanout_reg8(REG,357)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg40(REG,389)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_reduction_floydwarshall_28_floydwarshall140(LOGICAL,219)@3
    assign i_reduction_floydwarshall_28_floydwarshall140_q = i_unnamed_floydwarshall50_q & i_unnamed_floydwarshall10_q;

    // i_reduction_floydwarshall_29_floydwarshall141(LOGICAL,220)@3
    assign i_reduction_floydwarshall_29_floydwarshall141_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_28_floydwarshall140_q;

    // i_acl_248_floydwarshall142(MUX,98)@3
    assign i_acl_248_floydwarshall142_s = i_reduction_floydwarshall_29_floydwarshall141_q;
    always @(i_acl_248_floydwarshall142_s or redist25_i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_248_floydwarshall142_s)
            1'b0 : i_acl_248_floydwarshall142_q = redist25_i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_data_out_1_q;
            1'b1 : i_acl_248_floydwarshall142_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_248_floydwarshall142_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_7_5_push71_floydwarshall143(BLACKBOX,190)@3
    // out out_feedback_out_71@20000000
    // out out_feedback_valid_out_71@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_7_5_push71_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_7_5_push71_floydwarshall143 (
        .in_data_in(i_acl_248_floydwarshall142_q),
        .in_feedback_stall_in_71(i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_feedback_stall_out_71),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_data_out(),
        .out_feedback_out_71(i_llvm_fpga_push_i32_a_sroa_7_5_push71_floydwarshall143_out_feedback_out_71),
        .out_feedback_valid_out_71(i_llvm_fpga_push_i32_a_sroa_7_5_push71_floydwarshall143_out_feedback_valid_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together316_aunroll_x_in_c0_eni22_7_tpl_1(DELAY,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together316_aunroll_x_in_c0_eni22_7_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together316_aunroll_x_in_c0_eni22_7_tpl_1_q <= $unsigned(in_c0_eni22_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24(BLACKBOX,165)@2
    // out out_feedback_stall_out_71@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24 (
        .in_data_in(redist6_sync_together316_aunroll_x_in_c0_eni22_7_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_71(i_llvm_fpga_push_i32_a_sroa_7_5_push71_floydwarshall143_out_feedback_out_71),
        .in_feedback_valid_in_71(i_llvm_fpga_push_i32_a_sroa_7_5_push71_floydwarshall143_out_feedback_valid_out_71),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_data_out),
        .out_feedback_stall_out_71(i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_feedback_stall_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_data_out_1(DELAY,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_data_out_1_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_data_out);
        end
    end

    // i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt311_floydwarshall29(SELECTOR,115)@3
    always @(i_unnamed_floydwarshall10_q or redist25_i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_data_out_1_q or comparator_q or redist36_i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_data_out_1_q or i_unnamed_floydwarshall14_q or redist32_i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_data_out_1_q or i_unnamed_floydwarshall16_q or redist28_i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_data_out_1_q or redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q)
    begin
        i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt311_floydwarshall29_q = redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q;
        if (i_unnamed_floydwarshall16_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt311_floydwarshall29_q = redist28_i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_data_out_1_q;
        end
        if (i_unnamed_floydwarshall14_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt311_floydwarshall29_q = redist32_i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_data_out_1_q;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt311_floydwarshall29_q = redist36_i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_data_out_1_q;
        end
        if (i_unnamed_floydwarshall10_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt311_floydwarshall29_q = redist25_i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_data_out_1_q;
        end
    end

    // dupName_15_comparator_x(LOGICAL,301)@2 + 1
    assign dupName_15_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02830_floydwarshall43_out_dest_data_out_17_0 == c_i32_1256_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_15_comparator_x_delay ( .xin(dupName_15_comparator_x_qi), .xout(dupName_15_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg6(REG,355)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg29(REG,378)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_reduction_floydwarshall_6_floydwarshall96(LOGICAL,225)@3
    assign i_reduction_floydwarshall_6_floydwarshall96_q = i_unnamed_floydwarshall52_q & i_unnamed_floydwarshall16_q;

    // i_reduction_floydwarshall_7_floydwarshall97(LOGICAL,226)@3
    assign i_reduction_floydwarshall_7_floydwarshall97_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_6_floydwarshall96_q;

    // i_acl_237_floydwarshall98(MUX,87)@3
    assign i_acl_237_floydwarshall98_s = i_reduction_floydwarshall_7_floydwarshall97_q;
    always @(i_acl_237_floydwarshall98_s or redist29_i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_237_floydwarshall98_s)
            1'b0 : i_acl_237_floydwarshall98_q = redist29_i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_data_out_1_q;
            1'b1 : i_acl_237_floydwarshall98_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_237_floydwarshall98_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_62_5_push60_floydwarshall99(BLACKBOX,186)@3
    // out out_feedback_out_60@20000000
    // out out_feedback_valid_out_60@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_62_5_push60_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_62_5_push60_floydwarshall99 (
        .in_data_in(i_acl_237_floydwarshall98_q),
        .in_feedback_stall_in_60(i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_feedback_stall_out_60),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_60(i_llvm_fpga_push_i32_a_sroa_62_5_push60_floydwarshall99_out_feedback_out_60),
        .out_feedback_valid_out_60(i_llvm_fpga_push_i32_a_sroa_62_5_push60_floydwarshall99_out_feedback_valid_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together316_aunroll_x_in_c0_eni22_5_tpl_1(DELAY,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together316_aunroll_x_in_c0_eni22_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together316_aunroll_x_in_c0_eni22_5_tpl_1_q <= $unsigned(in_c0_eni22_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21(BLACKBOX,161)@2
    // out out_feedback_stall_out_60@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21 (
        .in_data_in(redist4_sync_together316_aunroll_x_in_c0_eni22_5_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_60(i_llvm_fpga_push_i32_a_sroa_62_5_push60_floydwarshall99_out_feedback_out_60),
        .in_feedback_valid_in_60(i_llvm_fpga_push_i32_a_sroa_62_5_push60_floydwarshall99_out_feedback_valid_out_60),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_data_out),
        .out_feedback_stall_out_60(i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_feedback_stall_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_data_out_1(DELAY,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_data_out_1_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_data_out);
        end
    end

    // valid_fanout_reg5(REG,354)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg33(REG,382)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_reduction_floydwarshall_14_floydwarshall112(LOGICAL,204)@3
    assign i_reduction_floydwarshall_14_floydwarshall112_q = i_unnamed_floydwarshall52_q & i_unnamed_floydwarshall14_q;

    // i_reduction_floydwarshall_15_floydwarshall113(LOGICAL,205)@3
    assign i_reduction_floydwarshall_15_floydwarshall113_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_14_floydwarshall112_q;

    // i_acl_241_floydwarshall114(MUX,91)@3
    assign i_acl_241_floydwarshall114_s = i_reduction_floydwarshall_15_floydwarshall113_q;
    always @(i_acl_241_floydwarshall114_s or redist33_i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_241_floydwarshall114_s)
            1'b0 : i_acl_241_floydwarshall114_q = redist33_i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_data_out_1_q;
            1'b1 : i_acl_241_floydwarshall114_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_241_floydwarshall114_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_42_5_push64_floydwarshall115(BLACKBOX,182)@3
    // out out_feedback_out_64@20000000
    // out out_feedback_valid_out_64@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_42_5_push64_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_42_5_push64_floydwarshall115 (
        .in_data_in(i_acl_241_floydwarshall114_q),
        .in_feedback_stall_in_64(i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_feedback_stall_out_64),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(),
        .out_feedback_out_64(i_llvm_fpga_push_i32_a_sroa_42_5_push64_floydwarshall115_out_feedback_out_64),
        .out_feedback_valid_out_64(i_llvm_fpga_push_i32_a_sroa_42_5_push64_floydwarshall115_out_feedback_valid_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together316_aunroll_x_in_c0_eni22_4_tpl_1(DELAY,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together316_aunroll_x_in_c0_eni22_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together316_aunroll_x_in_c0_eni22_4_tpl_1_q <= $unsigned(in_c0_eni22_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20(BLACKBOX,157)@2
    // out out_feedback_stall_out_64@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20 (
        .in_data_in(redist3_sync_together316_aunroll_x_in_c0_eni22_4_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_64(i_llvm_fpga_push_i32_a_sroa_42_5_push64_floydwarshall115_out_feedback_out_64),
        .in_feedback_valid_in_64(i_llvm_fpga_push_i32_a_sroa_42_5_push64_floydwarshall115_out_feedback_valid_out_64),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_data_out),
        .out_feedback_stall_out_64(i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_feedback_stall_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_data_out_1(DELAY,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_data_out_1_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_data_out);
        end
    end

    // valid_fanout_reg4(REG,353)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg37(REG,386)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_reduction_floydwarshall_22_floydwarshall128(LOGICAL,213)@3
    assign i_reduction_floydwarshall_22_floydwarshall128_q = i_unnamed_floydwarshall52_q & comparator_q;

    // i_reduction_floydwarshall_23_floydwarshall129(LOGICAL,214)@3
    assign i_reduction_floydwarshall_23_floydwarshall129_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_22_floydwarshall128_q;

    // i_acl_245_floydwarshall130(MUX,95)@3
    assign i_acl_245_floydwarshall130_s = i_reduction_floydwarshall_23_floydwarshall129_q;
    always @(i_acl_245_floydwarshall130_s or redist37_i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_245_floydwarshall130_s)
            1'b0 : i_acl_245_floydwarshall130_q = redist37_i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_data_out_1_q;
            1'b1 : i_acl_245_floydwarshall130_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_245_floydwarshall130_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_a_sroa_22_5_push68_floydwarshall131(BLACKBOX,178)@3
    // out out_feedback_out_68@20000000
    // out out_feedback_valid_out_68@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_22_5_push68_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_22_5_push68_floydwarshall131 (
        .in_data_in(i_acl_245_floydwarshall130_q),
        .in_feedback_stall_in_68(i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_feedback_stall_out_68),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(),
        .out_feedback_out_68(i_llvm_fpga_push_i32_a_sroa_22_5_push68_floydwarshall131_out_feedback_out_68),
        .out_feedback_valid_out_68(i_llvm_fpga_push_i32_a_sroa_22_5_push68_floydwarshall131_out_feedback_valid_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together316_aunroll_x_in_c0_eni22_3_tpl_1(DELAY,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together316_aunroll_x_in_c0_eni22_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together316_aunroll_x_in_c0_eni22_3_tpl_1_q <= $unsigned(in_c0_eni22_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18(BLACKBOX,153)@2
    // out out_feedback_stall_out_68@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18 (
        .in_data_in(redist2_sync_together316_aunroll_x_in_c0_eni22_3_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_68(i_llvm_fpga_push_i32_a_sroa_22_5_push68_floydwarshall131_out_feedback_out_68),
        .in_feedback_valid_in_68(i_llvm_fpga_push_i32_a_sroa_22_5_push68_floydwarshall131_out_feedback_valid_out_68),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_data_out),
        .out_feedback_stall_out_68(i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_feedback_stall_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_data_out_1(DELAY,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_data_out_1_q <= '0;
        end
        else
        begin
            redist37_i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_data_out);
        end
    end

    // i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt325_floydwarshall23(SELECTOR,110)@3
    always @(comparator_q or redist37_i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_data_out_1_q or i_unnamed_floydwarshall14_q or redist33_i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_data_out_1_q or i_unnamed_floydwarshall16_q or redist29_i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_data_out_1_q or redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q)
    begin
        i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt325_floydwarshall23_q = redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q;
        if (i_unnamed_floydwarshall16_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt325_floydwarshall23_q = redist29_i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_data_out_1_q;
        end
        if (i_unnamed_floydwarshall14_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt325_floydwarshall23_q = redist33_i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_data_out_1_q;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt325_floydwarshall23_q = redist37_i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_data_out_1_q;
        end
    end

    // dupName_14_comparator_x(LOGICAL,299)@2 + 1
    assign dupName_14_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02830_floydwarshall43_out_dest_data_out_17_0 == c_i32_0255_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_14_comparator_x_delay ( .xin(dupName_14_comparator_x_qi), .xout(dupName_14_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt_floydwarshall44(SELECTOR,124)@3
    always @(dupName_14_comparator_x_q or i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt325_floydwarshall23_q or dupName_15_comparator_x_q or i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt311_floydwarshall29_q or dupName_16_comparator_x_q or i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt316_floydwarshall35_q or dupName_17_comparator_x_q or i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt321_floydwarshall41_q or redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q)
    begin
        i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt_floydwarshall44_q = redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q;
        if (dupName_17_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt_floydwarshall44_q = i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt321_floydwarshall41_q;
        end
        if (dupName_16_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt_floydwarshall44_q = i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt316_floydwarshall35_q;
        end
        if (dupName_15_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt_floydwarshall44_q = i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt311_floydwarshall29_q;
        end
        if (dupName_14_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt_floydwarshall44_q = i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt325_floydwarshall23_q;
        end
    end

    // valid_fanout_reg25(REG,374)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_k_02826_floydwarshall64(BLACKBOX,125)@2
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_k_02826_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_k_02826_floydwarshall64 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i32_k_02826_floydwarshall64_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_32_comparator_x(LOGICAL,318)@2 + 1
    assign dupName_32_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02826_floydwarshall64_out_dest_data_out_17_0 == c_i32_3258_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_32_comparator_x_delay ( .xin(dupName_32_comparator_x_qi), .xout(dupName_32_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // dupName_31_comparator_x(LOGICAL,317)@2 + 1
    assign dupName_31_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02826_floydwarshall64_out_dest_data_out_17_0 == c_i32_2257_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_31_comparator_x_delay ( .xin(dupName_31_comparator_x_qi), .xout(dupName_31_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // dupName_30_comparator_x(LOGICAL,316)@2 + 1
    assign dupName_30_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02826_floydwarshall64_out_dest_data_out_17_0 == c_i32_1256_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_30_comparator_x_delay ( .xin(dupName_30_comparator_x_qi), .xout(dupName_30_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // dupName_29_comparator_x(LOGICAL,315)@2 + 1
    assign dupName_29_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02826_floydwarshall64_out_dest_data_out_17_0 == c_i32_0255_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_29_comparator_x_delay ( .xin(dupName_29_comparator_x_qi), .xout(dupName_29_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt340_floydwarshall65(SELECTOR,120)@3
    always @(dupName_29_comparator_x_q or redist38_i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_data_out_1_q or dupName_30_comparator_x_q or redist34_i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_data_out_1_q or dupName_31_comparator_x_q or redist30_i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_data_out_1_q or dupName_32_comparator_x_q or redist26_i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_data_out_1_q or redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q)
    begin
        i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt340_floydwarshall65_q = redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q;
        if (dupName_32_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt340_floydwarshall65_q = redist26_i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_data_out_1_q;
        end
        if (dupName_31_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt340_floydwarshall65_q = redist30_i_llvm_fpga_pop_i32_a_sroa_57_5_pop61_floydwarshall39_out_data_out_1_q;
        end
        if (dupName_30_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt340_floydwarshall65_q = redist34_i_llvm_fpga_pop_i32_a_sroa_37_5_pop65_floydwarshall38_out_data_out_1_q;
        end
        if (dupName_29_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt340_floydwarshall65_q = redist38_i_llvm_fpga_pop_i32_a_sroa_17_5_pop69_floydwarshall36_out_data_out_1_q;
        end
    end

    // valid_fanout_reg24(REG,373)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_k_02827_floydwarshall61(BLACKBOX,126)@2
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_k_02827_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_k_02827_floydwarshall61 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i32_k_02827_floydwarshall61_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_28_comparator_x(LOGICAL,314)@2 + 1
    assign dupName_28_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02827_floydwarshall61_out_dest_data_out_17_0 == c_i32_3258_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_28_comparator_x_delay ( .xin(dupName_28_comparator_x_qi), .xout(dupName_28_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // dupName_27_comparator_x(LOGICAL,313)@2 + 1
    assign dupName_27_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02827_floydwarshall61_out_dest_data_out_17_0 == c_i32_2257_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_27_comparator_x_delay ( .xin(dupName_27_comparator_x_qi), .xout(dupName_27_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // dupName_26_comparator_x(LOGICAL,312)@2 + 1
    assign dupName_26_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02827_floydwarshall61_out_dest_data_out_17_0 == c_i32_1256_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_26_comparator_x_delay ( .xin(dupName_26_comparator_x_qi), .xout(dupName_26_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // dupName_25_comparator_x(LOGICAL,311)@2 + 1
    assign dupName_25_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02827_floydwarshall61_out_dest_data_out_17_0 == c_i32_0255_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_25_comparator_x_delay ( .xin(dupName_25_comparator_x_qi), .xout(dupName_25_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt335_floydwarshall62(SELECTOR,119)@3
    always @(dupName_25_comparator_x_q or redist39_i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_data_out_1_q or dupName_26_comparator_x_q or redist35_i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_data_out_1_q or dupName_27_comparator_x_q or redist31_i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_data_out_1_q or dupName_28_comparator_x_q or redist27_i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_data_out_1_q or redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q)
    begin
        i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt335_floydwarshall62_q = redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q;
        if (dupName_28_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt335_floydwarshall62_q = redist27_i_llvm_fpga_pop_i32_a_sroa_72_5_pop58_floydwarshall34_out_data_out_1_q;
        end
        if (dupName_27_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt335_floydwarshall62_q = redist31_i_llvm_fpga_pop_i32_a_sroa_52_5_pop62_floydwarshall33_out_data_out_1_q;
        end
        if (dupName_26_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt335_floydwarshall62_q = redist35_i_llvm_fpga_pop_i32_a_sroa_32_5_pop66_floydwarshall32_out_data_out_1_q;
        end
        if (dupName_25_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt335_floydwarshall62_q = redist39_i_llvm_fpga_pop_i32_a_sroa_12_5_pop70_floydwarshall30_out_data_out_1_q;
        end
    end

    // valid_fanout_reg23(REG,372)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_k_02828_floydwarshall58(BLACKBOX,127)@2
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_k_02828_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_k_02828_floydwarshall58 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i32_k_02828_floydwarshall58_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_24_comparator_x(LOGICAL,310)@2 + 1
    assign dupName_24_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02828_floydwarshall58_out_dest_data_out_17_0 == c_i32_3258_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_24_comparator_x_delay ( .xin(dupName_24_comparator_x_qi), .xout(dupName_24_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // dupName_23_comparator_x(LOGICAL,309)@2 + 1
    assign dupName_23_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02828_floydwarshall58_out_dest_data_out_17_0 == c_i32_2257_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_23_comparator_x_delay ( .xin(dupName_23_comparator_x_qi), .xout(dupName_23_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // dupName_22_comparator_x(LOGICAL,308)@2 + 1
    assign dupName_22_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02828_floydwarshall58_out_dest_data_out_17_0 == c_i32_1256_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_22_comparator_x_delay ( .xin(dupName_22_comparator_x_qi), .xout(dupName_22_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // dupName_21_comparator_x(LOGICAL,307)@2 + 1
    assign dupName_21_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02828_floydwarshall58_out_dest_data_out_17_0 == c_i32_0255_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_21_comparator_x_delay ( .xin(dupName_21_comparator_x_qi), .xout(dupName_21_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt330_floydwarshall59(SELECTOR,118)@3
    always @(dupName_21_comparator_x_q or redist25_i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_data_out_1_q or dupName_22_comparator_x_q or redist36_i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_data_out_1_q or dupName_23_comparator_x_q or redist32_i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_data_out_1_q or dupName_24_comparator_x_q or redist28_i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_data_out_1_q or redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q)
    begin
        i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt330_floydwarshall59_q = redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q;
        if (dupName_24_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt330_floydwarshall59_q = redist28_i_llvm_fpga_pop_i32_a_sroa_67_5_pop59_floydwarshall28_out_data_out_1_q;
        end
        if (dupName_23_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt330_floydwarshall59_q = redist32_i_llvm_fpga_pop_i32_a_sroa_47_5_pop63_floydwarshall27_out_data_out_1_q;
        end
        if (dupName_22_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt330_floydwarshall59_q = redist36_i_llvm_fpga_pop_i32_a_sroa_27_5_pop67_floydwarshall26_out_data_out_1_q;
        end
        if (dupName_21_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt330_floydwarshall59_q = redist25_i_llvm_fpga_pop_i32_a_sroa_7_5_pop71_floydwarshall24_out_data_out_1_q;
        end
    end

    // valid_fanout_reg22(REG,371)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_k_02829_floydwarshall55(BLACKBOX,128)@2
    floydWarshall_i_llvm_fpga_ffwd_dest_i32_k_02829_floydwarshall0 thei_llvm_fpga_ffwd_dest_i32_k_02829_floydwarshall55 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i32_k_02829_floydwarshall55_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_20_comparator_x(LOGICAL,306)@2 + 1
    assign dupName_20_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02829_floydwarshall55_out_dest_data_out_17_0 == c_i32_3258_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_20_comparator_x_delay ( .xin(dupName_20_comparator_x_qi), .xout(dupName_20_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // dupName_19_comparator_x(LOGICAL,305)@2 + 1
    assign dupName_19_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02829_floydwarshall55_out_dest_data_out_17_0 == c_i32_2257_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_19_comparator_x_delay ( .xin(dupName_19_comparator_x_qi), .xout(dupName_19_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // dupName_18_comparator_x(LOGICAL,304)@2 + 1
    assign dupName_18_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_k_02829_floydwarshall55_out_dest_data_out_17_0 == c_i32_1256_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_18_comparator_x_delay ( .xin(dupName_18_comparator_x_qi), .xout(dupName_18_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt344_floydwarshall56(SELECTOR,111)@3
    always @(dupName_18_comparator_x_q or redist37_i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_data_out_1_q or dupName_19_comparator_x_q or redist33_i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_data_out_1_q or dupName_20_comparator_x_q or redist29_i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_data_out_1_q or redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q)
    begin
        i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt344_floydwarshall56_q = redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q;
        if (dupName_20_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt344_floydwarshall56_q = redist29_i_llvm_fpga_pop_i32_a_sroa_62_5_pop60_floydwarshall21_out_data_out_1_q;
        end
        if (dupName_19_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt344_floydwarshall56_q = redist33_i_llvm_fpga_pop_i32_a_sroa_42_5_pop64_floydwarshall20_out_data_out_1_q;
        end
        if (dupName_18_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt344_floydwarshall56_q = redist37_i_llvm_fpga_pop_i32_a_sroa_22_5_pop68_floydwarshall18_out_data_out_1_q;
        end
    end

    // i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt301_floydwarshall67(SELECTOR,113)@3
    always @(i_unnamed_floydwarshall52_q or i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt344_floydwarshall56_q or i_unnamed_floydwarshall50_q or i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt330_floydwarshall59_q or i_unnamed_floydwarshall48_q or i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt335_floydwarshall62_q or i_unnamed_floydwarshall46_q or i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt340_floydwarshall65_q or redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q)
    begin
        i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt301_floydwarshall67_q = redist40_i_llvm_fpga_pop_i32_a_sroa_0_5_pop72_floydwarshall22_out_data_out_1_q;
        if (i_unnamed_floydwarshall46_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt301_floydwarshall67_q = i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt340_floydwarshall65_q;
        end
        if (i_unnamed_floydwarshall48_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt301_floydwarshall67_q = i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt335_floydwarshall62_q;
        end
        if (i_unnamed_floydwarshall50_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt301_floydwarshall67_q = i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt330_floydwarshall59_q;
        end
        if (i_unnamed_floydwarshall52_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt301_floydwarshall67_q = i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_floydwarshall_fpgaunique_6s_case_stmt344_floydwarshall56_q;
        end
    end

    // i_add_floydwarshall68(ADD,101)@3
    assign i_add_floydwarshall68_a = {1'b0, i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt301_floydwarshall67_q};
    assign i_add_floydwarshall68_b = {1'b0, i_llvm_fpga_case_i32_i32_v4i32_s_case_assign_struct_floydwarshall_fpgaunique_3s_case_stmt_floydwarshall44_q};
    assign i_add_floydwarshall68_o = $unsigned(i_add_floydwarshall68_a) + $unsigned(i_add_floydwarshall68_b);
    assign i_add_floydwarshall68_q = i_add_floydwarshall68_o[32:0];

    // bgTrunc_i_add_floydwarshall68_sel_x(BITSELECT,258)@3
    assign bgTrunc_i_add_floydwarshall68_sel_x_b = i_add_floydwarshall68_q[31:0];

    // valid_fanout_reg19(REG,368)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg26(REG,375)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_77_5_push57_floydwarshall87(BLACKBOX,189)@3
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_77_5_push57_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_77_5_push57_floydwarshall87 (
        .in_data_in(i_acl_floydwarshall86_q),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_feedback_stall_out_57),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_i32_a_sroa_77_5_push57_floydwarshall87_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_i32_a_sroa_77_5_push57_floydwarshall87_out_feedback_valid_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_sync_together316_aunroll_x_in_c0_eni22_18_tpl_1(DELAY,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together316_aunroll_x_in_c0_eni22_18_tpl_1_q <= '0;
        end
        else
        begin
            redist17_sync_together316_aunroll_x_in_c0_eni22_18_tpl_1_q <= $unsigned(in_c0_eni22_18_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40(BLACKBOX,164)@2
    // out out_feedback_stall_out_57@20000000
    floydWarshall_i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall0 thei_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40 (
        .in_data_in(redist17_sync_together316_aunroll_x_in_c0_eni22_18_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_57(i_llvm_fpga_push_i32_a_sroa_77_5_push57_floydwarshall87_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_i32_a_sroa_77_5_push57_floydwarshall87_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_feedback_stall_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_data_out_1(DELAY,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_data_out_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_data_out);
        end
    end

    // i_reduction_floydwarshall_0_floydwarshall84(LOGICAL,199)@3
    assign i_reduction_floydwarshall_0_floydwarshall84_q = i_unnamed_floydwarshall46_q & i_unnamed_floydwarshall16_q;

    // i_reduction_floydwarshall_1_floydwarshall85(LOGICAL,210)@3
    assign i_reduction_floydwarshall_1_floydwarshall85_q = i_cmp34_floydwarshall79_c & i_reduction_floydwarshall_0_floydwarshall84_q;

    // i_acl_floydwarshall86(MUX,100)@3
    assign i_acl_floydwarshall86_s = i_reduction_floydwarshall_1_floydwarshall85_q;
    always @(i_acl_floydwarshall86_s or redist26_i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_data_out_1_q or bgTrunc_i_add_floydwarshall68_sel_x_b)
    begin
        unique case (i_acl_floydwarshall86_s)
            1'b0 : i_acl_floydwarshall86_q = redist26_i_llvm_fpga_pop_i32_a_sroa_77_5_pop57_floydwarshall40_out_data_out_1_q;
            1'b1 : i_acl_floydwarshall86_q = bgTrunc_i_add_floydwarshall68_sel_x_b;
            default : i_acl_floydwarshall86_q = 32'b0;
        endcase
    end

    // redist23_i_xor_floydwarshall4_q_1(DELAY,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_xor_floydwarshall4_q_1_q <= '0;
        end
        else
        begin
            redist23_i_xor_floydwarshall4_q_1_q <= $unsigned(i_xor_floydwarshall4_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall40_floydwarshall159(BLACKBOX,130)@3
    // out out_intel_reserved_ffwd_35_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall40_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall40_floydwarshall159 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_35_0(i_acl_floydwarshall86_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_intel_reserved_ffwd_35_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall40_floydwarshall159_out_intel_reserved_ffwd_35_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,255)
    assign out_intel_reserved_ffwd_35_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall40_floydwarshall159_out_intel_reserved_ffwd_35_0;

    // valid_fanout_reg44(REG,393)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall41_floydwarshall160(BLACKBOX,131)@3
    // out out_intel_reserved_ffwd_36_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall41_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall41_floydwarshall160 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_36_0(i_acl_235_floydwarshall90_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_intel_reserved_ffwd_36_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall41_floydwarshall160_out_intel_reserved_ffwd_36_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,267)
    assign out_intel_reserved_ffwd_36_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall41_floydwarshall160_out_intel_reserved_ffwd_36_0;

    // valid_fanout_reg45(REG,394)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall42_floydwarshall161(BLACKBOX,132)@3
    // out out_intel_reserved_ffwd_37_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall42_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall42_floydwarshall161 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_37_0(i_acl_236_floydwarshall94_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_intel_reserved_ffwd_37_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall42_floydwarshall161_out_intel_reserved_ffwd_37_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,273)
    assign out_intel_reserved_ffwd_37_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall42_floydwarshall161_out_intel_reserved_ffwd_37_0;

    // valid_fanout_reg46(REG,395)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall43_floydwarshall162(BLACKBOX,133)@3
    // out out_intel_reserved_ffwd_38_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall43_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall43_floydwarshall162 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_38_0(i_acl_237_floydwarshall98_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_intel_reserved_ffwd_38_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall43_floydwarshall162_out_intel_reserved_ffwd_38_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,276)
    assign out_intel_reserved_ffwd_38_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall43_floydwarshall162_out_intel_reserved_ffwd_38_0;

    // valid_fanout_reg47(REG,396)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall44_floydwarshall163(BLACKBOX,134)@3
    // out out_intel_reserved_ffwd_39_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall44_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall44_floydwarshall163 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_39_0(i_acl_238_floydwarshall102_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_intel_reserved_ffwd_39_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall44_floydwarshall163_out_intel_reserved_ffwd_39_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,278)
    assign out_intel_reserved_ffwd_39_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall44_floydwarshall163_out_intel_reserved_ffwd_39_0;

    // valid_fanout_reg48(REG,397)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall45_floydwarshall164(BLACKBOX,135)@3
    // out out_intel_reserved_ffwd_40_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall45_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall45_floydwarshall164 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_40_0(i_acl_239_floydwarshall106_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_intel_reserved_ffwd_40_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall45_floydwarshall164_out_intel_reserved_ffwd_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,280)
    assign out_intel_reserved_ffwd_40_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall45_floydwarshall164_out_intel_reserved_ffwd_40_0;

    // valid_fanout_reg49(REG,398)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall46_floydwarshall165(BLACKBOX,136)@3
    // out out_intel_reserved_ffwd_41_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall46_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall46_floydwarshall165 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_41_0(i_acl_240_floydwarshall110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_intel_reserved_ffwd_41_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall46_floydwarshall165_out_intel_reserved_ffwd_41_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,282)
    assign out_intel_reserved_ffwd_41_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall46_floydwarshall165_out_intel_reserved_ffwd_41_0;

    // valid_fanout_reg50(REG,399)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall47_floydwarshall166(BLACKBOX,137)@3
    // out out_intel_reserved_ffwd_42_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall47_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall47_floydwarshall166 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_42_0(i_acl_241_floydwarshall114_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_intel_reserved_ffwd_42_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall47_floydwarshall166_out_intel_reserved_ffwd_42_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,284)
    assign out_intel_reserved_ffwd_42_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall47_floydwarshall166_out_intel_reserved_ffwd_42_0;

    // valid_fanout_reg51(REG,400)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall48_floydwarshall167(BLACKBOX,138)@3
    // out out_intel_reserved_ffwd_43_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall48_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall48_floydwarshall167 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_43_0(i_acl_242_floydwarshall118_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_intel_reserved_ffwd_43_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall48_floydwarshall167_out_intel_reserved_ffwd_43_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,286)
    assign out_intel_reserved_ffwd_43_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall48_floydwarshall167_out_intel_reserved_ffwd_43_0;

    // valid_fanout_reg52(REG,401)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall49_floydwarshall168(BLACKBOX,139)@3
    // out out_intel_reserved_ffwd_44_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall49_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall49_floydwarshall168 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_44_0(i_acl_243_floydwarshall122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_intel_reserved_ffwd_44_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall49_floydwarshall168_out_intel_reserved_ffwd_44_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,288)
    assign out_intel_reserved_ffwd_44_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall49_floydwarshall168_out_intel_reserved_ffwd_44_0;

    // valid_fanout_reg53(REG,402)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg53_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg53_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall50_floydwarshall169(BLACKBOX,140)@3
    // out out_intel_reserved_ffwd_45_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall50_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall50_floydwarshall169 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_45_0(i_acl_244_floydwarshall126_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_intel_reserved_ffwd_45_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall50_floydwarshall169_out_intel_reserved_ffwd_45_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,290)
    assign out_intel_reserved_ffwd_45_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall50_floydwarshall169_out_intel_reserved_ffwd_45_0;

    // valid_fanout_reg54(REG,403)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg54_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg54_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall51_floydwarshall170(BLACKBOX,141)@3
    // out out_intel_reserved_ffwd_46_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall51_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall51_floydwarshall170 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_46_0(i_acl_245_floydwarshall130_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_intel_reserved_ffwd_46_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall51_floydwarshall170_out_intel_reserved_ffwd_46_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,292)
    assign out_intel_reserved_ffwd_46_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall51_floydwarshall170_out_intel_reserved_ffwd_46_0;

    // valid_fanout_reg55(REG,404)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg55_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg55_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall52_floydwarshall171(BLACKBOX,142)@3
    // out out_intel_reserved_ffwd_47_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall52_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall52_floydwarshall171 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_47_0(i_acl_246_floydwarshall134_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_intel_reserved_ffwd_47_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall52_floydwarshall171_out_intel_reserved_ffwd_47_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,294)
    assign out_intel_reserved_ffwd_47_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall52_floydwarshall171_out_intel_reserved_ffwd_47_0;

    // valid_fanout_reg56(REG,405)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg56_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg56_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall53_floydwarshall172(BLACKBOX,143)@3
    // out out_intel_reserved_ffwd_48_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall53_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall53_floydwarshall172 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_48_0(i_acl_247_floydwarshall138_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg56_q),
        .out_intel_reserved_ffwd_48_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall53_floydwarshall172_out_intel_reserved_ffwd_48_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,296)
    assign out_intel_reserved_ffwd_48_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall53_floydwarshall172_out_intel_reserved_ffwd_48_0;

    // valid_fanout_reg57(REG,406)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg57_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg57_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall54_floydwarshall173(BLACKBOX,144)@3
    // out out_intel_reserved_ffwd_49_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall54_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall54_floydwarshall173 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_49_0(i_acl_248_floydwarshall142_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg57_q),
        .out_intel_reserved_ffwd_49_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall54_floydwarshall173_out_intel_reserved_ffwd_49_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,298)
    assign out_intel_reserved_ffwd_49_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall54_floydwarshall173_out_intel_reserved_ffwd_49_0;

    // valid_fanout_reg58(REG,407)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg58_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg58_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall55_floydwarshall174(BLACKBOX,145)@3
    // out out_intel_reserved_ffwd_50_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall55_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall55_floydwarshall174 (
        .in_predicate_in(redist23_i_xor_floydwarshall4_q_1_q),
        .in_src_data_in_50_0(i_acl_249_floydwarshall145_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg58_q),
        .out_intel_reserved_ffwd_50_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall55_floydwarshall174_out_intel_reserved_ffwd_50_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,300)
    assign out_intel_reserved_ffwd_50_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall55_floydwarshall174_out_intel_reserved_ffwd_50_0;

    // valid_fanout_reg0(REG,349)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist21_sync_together316_aunroll_x_in_c0_eni22_22_tpl_2(DELAY,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together316_aunroll_x_in_c0_eni22_22_tpl_2_delay_0 <= '0;
            redist21_sync_together316_aunroll_x_in_c0_eni22_22_tpl_2_q <= '0;
        end
        else
        begin
            redist21_sync_together316_aunroll_x_in_c0_eni22_22_tpl_2_delay_0 <= $unsigned(in_c0_eni22_22_tpl);
            redist21_sync_together316_aunroll_x_in_c0_eni22_22_tpl_2_q <= redist21_sync_together316_aunroll_x_in_c0_eni22_22_tpl_2_delay_0;
        end
    end

    // valid_fanout_reg63(REG,412)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg63_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg63_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg64(REG,413)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg64_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg64_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp97181_push77_floydwarshall181(BLACKBOX,172)@2
    // out out_feedback_out_77@20000000
    // out out_feedback_valid_out_77@20000000
    floydWarshall_i_llvm_fpga_push_i1_notcmp97181_push77_floydwarshall0 thei_llvm_fpga_push_i1_notcmp97181_push77_floydwarshall181 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall180_out_data_out),
        .in_feedback_stall_in_77(i_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall180_out_feedback_stall_out_77),
        .in_keep_going(redist43_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg64_q),
        .out_data_out(),
        .out_feedback_out_77(i_llvm_fpga_push_i1_notcmp97181_push77_floydwarshall181_out_feedback_out_77),
        .out_feedback_valid_out_77(i_llvm_fpga_push_i1_notcmp97181_push77_floydwarshall181_out_feedback_valid_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_sync_together316_aunroll_x_in_c0_eni22_21_tpl_1(DELAY,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together316_aunroll_x_in_c0_eni22_21_tpl_1_q <= '0;
        end
        else
        begin
            redist20_sync_together316_aunroll_x_in_c0_eni22_21_tpl_1_q <= $unsigned(in_c0_eni22_21_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall180(BLACKBOX,148)@2
    // out out_feedback_stall_out_77@20000000
    floydWarshall_i_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall0 thei_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall180 (
        .in_data_in(redist20_sync_together316_aunroll_x_in_c0_eni22_21_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_77(i_llvm_fpga_push_i1_notcmp97181_push77_floydwarshall181_out_feedback_out_77),
        .in_feedback_valid_in_77(i_llvm_fpga_push_i1_notcmp97181_push77_floydwarshall181_out_feedback_valid_out_77),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg63_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall180_out_data_out),
        .out_feedback_stall_out_77(i_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall180_out_feedback_stall_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist41_i_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall180_out_data_out_1(DELAY,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall180_out_data_out_1_q <= '0;
        end
        else
        begin
            redist41_i_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall180_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall180_out_data_out);
        end
    end

    // valid_fanout_reg61(REG,410)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg61_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg61_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg62(REG,411)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg62_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg62_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond9180_push76_floydwarshall179(BLACKBOX,170)@3
    // out out_feedback_out_76@20000000
    // out out_feedback_valid_out_76@20000000
    floydWarshall_i_llvm_fpga_push_i1_exitcond9180_push76_floydwarshall0 thei_llvm_fpga_push_i1_exitcond9180_push76_floydwarshall179 (
        .in_data_in(redist42_i_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall178_out_data_out_1_q),
        .in_feedback_stall_in_76(i_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall178_out_feedback_stall_out_76),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg62_q),
        .out_data_out(),
        .out_feedback_out_76(i_llvm_fpga_push_i1_exitcond9180_push76_floydwarshall179_out_feedback_out_76),
        .out_feedback_valid_out_76(i_llvm_fpga_push_i1_exitcond9180_push76_floydwarshall179_out_feedback_valid_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_sync_together316_aunroll_x_in_c0_eni22_20_tpl_1(DELAY,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together316_aunroll_x_in_c0_eni22_20_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together316_aunroll_x_in_c0_eni22_20_tpl_1_q <= $unsigned(in_c0_eni22_20_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall178(BLACKBOX,147)@2
    // out out_feedback_stall_out_76@20000000
    floydWarshall_i_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall0 thei_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall178 (
        .in_data_in(redist19_sync_together316_aunroll_x_in_c0_eni22_20_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_76(i_llvm_fpga_push_i1_exitcond9180_push76_floydwarshall179_out_feedback_out_76),
        .in_feedback_valid_in_76(i_llvm_fpga_push_i1_exitcond9180_push76_floydwarshall179_out_feedback_valid_out_76),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg61_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall178_out_data_out),
        .out_feedback_stall_out_76(i_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall178_out_feedback_stall_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist42_i_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall178_out_data_out_1(DELAY,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall178_out_data_out_1_q <= '0;
        end
        else
        begin
            redist42_i_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall178_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall178_out_data_out);
        end
    end

    // valid_fanout_reg60(REG,409)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg60_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg60_q <= $unsigned(redist22_sync_together316_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg59(REG,408)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg59_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg59_q <= $unsigned(in_i_valid);
        end
    end

    // redist18_sync_together316_aunroll_x_in_c0_eni22_19_tpl_1(DELAY,447)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together316_aunroll_x_in_c0_eni22_19_tpl_1_q <= '0;
        end
        else
        begin
            redist18_sync_together316_aunroll_x_in_c0_eni22_19_tpl_1_q <= $unsigned(in_c0_eni22_19_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_inc55179_pop75_floydwarshall176(BLACKBOX,167)@2
    // out out_feedback_stall_out_75@20000000
    floydWarshall_i_llvm_fpga_pop_i32_inc55179_pop75_floydwarshall0 thei_llvm_fpga_pop_i32_inc55179_pop75_floydwarshall176 (
        .in_data_in(redist18_sync_together316_aunroll_x_in_c0_eni22_19_tpl_1_q),
        .in_dir(redist0_sync_together316_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_75(i_llvm_fpga_push_i32_inc55179_push75_floydwarshall177_out_feedback_out_75),
        .in_feedback_valid_in_75(i_llvm_fpga_push_i32_inc55179_push75_floydwarshall177_out_feedback_valid_out_75),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg59_q),
        .out_data_out(i_llvm_fpga_pop_i32_inc55179_pop75_floydwarshall176_out_data_out),
        .out_feedback_stall_out_75(i_llvm_fpga_pop_i32_inc55179_pop75_floydwarshall176_out_feedback_stall_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_pop_i32_inc55179_pop75_floydwarshall176_out_data_out_1(DELAY,453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_inc55179_pop75_floydwarshall176_out_data_out_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_inc55179_pop75_floydwarshall176_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_inc55179_pop75_floydwarshall176_out_data_out);
        end
    end

    // i_llvm_fpga_push_i32_inc55179_push75_floydwarshall177(BLACKBOX,192)@3
    // out out_feedback_out_75@20000000
    // out out_feedback_valid_out_75@20000000
    floydWarshall_i_llvm_fpga_push_i32_inc55179_push75_floydwarshall0 thei_llvm_fpga_push_i32_inc55179_push75_floydwarshall177 (
        .in_data_in(redist24_i_llvm_fpga_pop_i32_inc55179_pop75_floydwarshall176_out_data_out_1_q),
        .in_feedback_stall_in_75(i_llvm_fpga_pop_i32_inc55179_pop75_floydwarshall176_out_feedback_stall_out_75),
        .in_keep_going(redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg60_q),
        .out_data_out(i_llvm_fpga_push_i32_inc55179_push75_floydwarshall177_out_data_out),
        .out_feedback_out_75(i_llvm_fpga_push_i32_inc55179_push75_floydwarshall177_out_feedback_out_75),
        .out_feedback_valid_out_75(i_llvm_fpga_push_i32_inc55179_push75_floydwarshall177_out_feedback_valid_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked_floydwarshall175(LOGICAL,195)@2 + 1
    assign i_masked_floydwarshall175_qi = i_notcmp_floydwarshall152_q & i_first_cleanup_floydwarshall3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_floydwarshall175_delay ( .xin(i_masked_floydwarshall175_qi), .xout(i_masked_floydwarshall175_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,347)@3
    assign out_c0_exi22_0_tpl = GND_q;
    assign out_c0_exi22_1_tpl = redist44_i_llvm_fpga_pipeline_keep_going_floydwarshall6_out_data_out_2_q;
    assign out_c0_exi22_2_tpl = i_acl_floydwarshall86_q;
    assign out_c0_exi22_3_tpl = i_acl_235_floydwarshall90_q;
    assign out_c0_exi22_4_tpl = i_acl_236_floydwarshall94_q;
    assign out_c0_exi22_5_tpl = i_acl_237_floydwarshall98_q;
    assign out_c0_exi22_6_tpl = i_acl_238_floydwarshall102_q;
    assign out_c0_exi22_7_tpl = i_acl_239_floydwarshall106_q;
    assign out_c0_exi22_8_tpl = i_acl_240_floydwarshall110_q;
    assign out_c0_exi22_9_tpl = i_acl_241_floydwarshall114_q;
    assign out_c0_exi22_10_tpl = i_acl_242_floydwarshall118_q;
    assign out_c0_exi22_11_tpl = i_acl_243_floydwarshall122_q;
    assign out_c0_exi22_12_tpl = i_acl_244_floydwarshall126_q;
    assign out_c0_exi22_13_tpl = i_acl_245_floydwarshall130_q;
    assign out_c0_exi22_14_tpl = i_acl_246_floydwarshall134_q;
    assign out_c0_exi22_15_tpl = i_acl_247_floydwarshall138_q;
    assign out_c0_exi22_16_tpl = i_acl_248_floydwarshall142_q;
    assign out_c0_exi22_17_tpl = i_acl_249_floydwarshall145_q;
    assign out_c0_exi22_18_tpl = i_masked_floydwarshall175_q;
    assign out_c0_exi22_19_tpl = i_llvm_fpga_push_i32_inc55179_push75_floydwarshall177_out_data_out;
    assign out_c0_exi22_20_tpl = redist42_i_llvm_fpga_pop_i1_exitcond9180_pop76_floydwarshall178_out_data_out_1_q;
    assign out_c0_exi22_21_tpl = redist41_i_llvm_fpga_pop_i1_notcmp97181_pop77_floydwarshall180_out_data_out_1_q;
    assign out_c0_exi22_22_tpl = redist21_sync_together316_aunroll_x_in_c0_eni22_22_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_floydWarshall1 = GND_q;

endmodule
