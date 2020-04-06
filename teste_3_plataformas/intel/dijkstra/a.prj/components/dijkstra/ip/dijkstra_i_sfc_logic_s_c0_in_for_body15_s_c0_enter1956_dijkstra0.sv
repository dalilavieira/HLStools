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

// SystemVerilog created from dijkstra_i_sfc_logic_s_c0_in_for_body15_s_c0_enter1956_dijkstra0
// SystemVerilog created on Mon Apr  6 10:27:28 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_i_sfc_logic_s_c0_in_for_body15_s_c0_enter1956_dijkstra0 (
    input wire [63:0] in_lm1_dijkstra_avm_readdata,
    input wire [0:0] in_lm1_dijkstra_avm_writeack,
    input wire [0:0] in_lm1_dijkstra_avm_waitrequest,
    input wire [0:0] in_lm1_dijkstra_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstra6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstra6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_38_0,
    input wire [31:0] in_intel_reserved_ffwd_39_0,
    input wire [31:0] in_intel_reserved_ffwd_40_0,
    input wire [31:0] in_intel_reserved_ffwd_41_0,
    input wire [31:0] in_intel_reserved_ffwd_42_0,
    input wire [31:0] in_intel_reserved_ffwd_43_0,
    input wire [31:0] in_intel_reserved_ffwd_44_0,
    input wire [31:0] in_intel_reserved_ffwd_45_0,
    input wire [31:0] in_intel_reserved_ffwd_46_0,
    input wire [31:0] in_intel_reserved_ffwd_49_0,
    input wire [31:0] in_intel_reserved_ffwd_50_0,
    output wire [31:0] out_intel_reserved_ffwd_60_0,
    output wire [63:0] out_lm1_dijkstra_avm_address,
    output wire [0:0] out_lm1_dijkstra_avm_enable,
    output wire [0:0] out_lm1_dijkstra_avm_read,
    output wire [0:0] out_lm1_dijkstra_avm_write,
    output wire [63:0] out_lm1_dijkstra_avm_writedata,
    output wire [7:0] out_lm1_dijkstra_avm_byteenable,
    output wire [0:0] out_lm1_dijkstra_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_61_0,
    output wire [31:0] out_intel_reserved_ffwd_62_0,
    output wire [31:0] out_intel_reserved_ffwd_63_0,
    output wire [31:0] out_intel_reserved_ffwd_64_0,
    output wire [31:0] out_intel_reserved_ffwd_65_0,
    output wire [31:0] out_intel_reserved_ffwd_66_0,
    output wire [31:0] out_intel_reserved_ffwd_67_0,
    output wire [31:0] out_intel_reserved_ffwd_68_0,
    input wire [31:0] in_intel_reserved_ffwd_59_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_59_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_59_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_59_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_59_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_59_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_59_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_59_0_7_tpl,
    output wire [0:0] out_c0_exi3200_0_tpl,
    output wire [0:0] out_c0_exi3200_1_tpl,
    output wire [0:0] out_c0_exi3200_2_tpl,
    output wire [31:0] out_c0_exi3200_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_dijkstra1,
    input wire [0:0] in_c0_eni2194_0_tpl,
    input wire [0:0] in_c0_eni2194_1_tpl,
    input wire [31:0] in_c0_eni2194_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_1203_q;
    wire [31:0] c_i32_0206_q;
    wire [31:0] c_i32_1214_q;
    wire [31:0] c_i32_2213_q;
    wire [31:0] c_i32_3212_q;
    wire [31:0] c_i32_4211_q;
    wire [31:0] c_i32_5210_q;
    wire [31:0] c_i32_6209_q;
    wire [31:0] c_i32_7208_q;
    wire [31:0] c_i32_8207_q;
    wire [4:0] c_i5_1219_q;
    wire [4:0] c_i5_7217_q;
    wire [0:0] comparator_q;
    wire [32:0] i_add_dijkstra72_a;
    wire [32:0] i_add_dijkstra72_b;
    logic [32:0] i_add_dijkstra72_o;
    wire [32:0] i_add_dijkstra72_q;
    wire [1:0] i_cleanups_shl_dijkstra5_vt_join_q;
    wire [0:0] i_cleanups_shl_dijkstra5_vt_select_1_b;
    wire [0:0] i_cmp26_dijkstra70_q;
    wire [33:0] i_cmp36_dijkstra75_a;
    wire [33:0] i_cmp36_dijkstra75_b;
    logic [33:0] i_cmp36_dijkstra75_o;
    wire [0:0] i_cmp36_dijkstra75_c;
    wire [0:0] i_dist_sroa_0_4_replace_phi_dijkstra10_s;
    reg [31:0] i_dist_sroa_0_4_replace_phi_dijkstra10_q;
    wire [0:0] i_dist_sroa_14_4_replace_phi_dijkstra16_s;
    reg [31:0] i_dist_sroa_14_4_replace_phi_dijkstra16_q;
    wire [0:0] i_dist_sroa_20_4_replace_phi_dijkstra19_s;
    reg [31:0] i_dist_sroa_20_4_replace_phi_dijkstra19_q;
    wire [0:0] i_dist_sroa_26_4_replace_phi_dijkstra22_s;
    reg [31:0] i_dist_sroa_26_4_replace_phi_dijkstra22_q;
    wire [0:0] i_dist_sroa_32_4_replace_phi_dijkstra25_s;
    reg [31:0] i_dist_sroa_32_4_replace_phi_dijkstra25_q;
    wire [0:0] i_dist_sroa_38_4_replace_phi_dijkstra28_s;
    reg [31:0] i_dist_sroa_38_4_replace_phi_dijkstra28_q;
    wire [0:0] i_dist_sroa_44_4_replace_phi_dijkstra31_s;
    reg [31:0] i_dist_sroa_44_4_replace_phi_dijkstra31_q;
    wire [0:0] i_dist_sroa_50_4_replace_phi_dijkstra34_s;
    reg [31:0] i_dist_sroa_50_4_replace_phi_dijkstra34_q;
    wire [0:0] i_dist_sroa_8_4_replace_phi_dijkstra13_s;
    reg [31:0] i_dist_sroa_8_4_replace_phi_dijkstra13_q;
    wire [0:0] i_first_cleanup_xor_or_dijkstra63_q;
    wire [5:0] i_fpga_indvars_iv_next7_dijkstra135_a;
    wire [5:0] i_fpga_indvars_iv_next7_dijkstra135_b;
    logic [5:0] i_fpga_indvars_iv_next7_dijkstra135_o;
    wire [5:0] i_fpga_indvars_iv_next7_dijkstra135_q;
    wire [63:0] i_idxprom16_dijkstra59_vt_join_q;
    wire [31:0] i_idxprom16_dijkstra59_vt_select_31_b;
    wire [32:0] i_inc47_dijkstra125_a;
    wire [32:0] i_inc47_dijkstra125_b;
    logic [32:0] i_inc47_dijkstra125_o;
    wire [32:0] i_inc47_dijkstra125_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt333_dijkstra69_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt342_dijkstra74_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_26565_dijkstra68_out_dest_data_out_49_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_26575_dijkstra35_out_dest_data_out_49_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_dist_sroa_0_3_replace_phi61_dijkstra8_out_dest_data_out_46_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_dist_sroa_14_3_replace_phi59_dijkstra14_out_dest_data_out_44_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_dist_sroa_20_3_replace_phi58_dijkstra17_out_dest_data_out_43_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_dist_sroa_26_3_replace_phi57_dijkstra20_out_dest_data_out_42_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_dist_sroa_32_3_replace_phi56_dijkstra23_out_dest_data_out_41_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_dist_sroa_38_3_replace_phi55_dijkstra26_out_dest_data_out_40_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_dist_sroa_44_3_replace_phi54_dijkstra29_out_dest_data_out_39_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_dist_sroa_50_3_replace_phi53_dijkstra32_out_dest_data_out_38_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_dist_sroa_8_3_replace_phi60_dijkstra11_out_dest_data_out_45_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select24776_dijkstra54_out_dest_data_out_50_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a9i32_graph369_dijkstra60_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra69_dijkstra137_out_intel_reserved_ffwd_60_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra70_dijkstra138_out_intel_reserved_ffwd_61_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra71_dijkstra139_out_intel_reserved_ffwd_62_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra72_dijkstra140_out_intel_reserved_ffwd_63_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra73_dijkstra141_out_intel_reserved_ffwd_64_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra74_dijkstra142_out_intel_reserved_ffwd_65_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra75_dijkstra143_out_intel_reserved_ffwd_66_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra76_dijkstra144_out_intel_reserved_ffwd_67_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra77_dijkstra145_out_intel_reserved_ffwd_68_0;
    wire [63:0] i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_dijkstra64_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstra6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstra6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstra6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstra6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dijkstra6_out_pipeline_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop49_dijkstra2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop49_dijkstra2_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_0_4_pop47_dijkstra9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_0_4_pop47_dijkstra9_out_feedback_stall_out_47;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_14_4_pop45_dijkstra15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_14_4_pop45_dijkstra15_out_feedback_stall_out_45;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_20_4_pop44_dijkstra18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_20_4_pop44_dijkstra18_out_feedback_stall_out_44;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_26_4_pop43_dijkstra21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_26_4_pop43_dijkstra21_out_feedback_stall_out_43;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_32_4_pop42_dijkstra24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_32_4_pop42_dijkstra24_out_feedback_stall_out_42;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_38_4_pop41_dijkstra27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_38_4_pop41_dijkstra27_out_feedback_stall_out_41;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_44_4_pop40_dijkstra30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_44_4_pop40_dijkstra30_out_feedback_stall_out_40;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_50_4_pop39_dijkstra33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_50_4_pop39_dijkstra33_out_feedback_stall_out_39;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_8_4_pop46_dijkstra12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_8_4_pop46_dijkstra12_out_feedback_stall_out_46;
    wire [31:0] i_llvm_fpga_pop_i32_inc50176_pop50_dijkstra147_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_inc50176_pop50_dijkstra147_out_feedback_stall_out_50;
    wire [31:0] i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_feedback_stall_out_48;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop38_dijkstra127_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop38_dijkstra127_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_dijkstra7_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_dijkstra7_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_dijkstra131_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_dijkstra131_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push49_dijkstra134_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push49_dijkstra134_out_feedback_valid_out_49;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_0_4_push47_dijkstra124_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_0_4_push47_dijkstra124_out_feedback_valid_out_47;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_14_4_push45_dijkstra116_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_14_4_push45_dijkstra116_out_feedback_valid_out_45;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_20_4_push44_dijkstra112_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_20_4_push44_dijkstra112_out_feedback_valid_out_44;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_26_4_push43_dijkstra108_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_26_4_push43_dijkstra108_out_feedback_valid_out_43;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_32_4_push42_dijkstra104_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_32_4_push42_dijkstra104_out_feedback_valid_out_42;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_38_4_push41_dijkstra100_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_38_4_push41_dijkstra100_out_feedback_valid_out_41;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_44_4_push40_dijkstra96_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_44_4_push40_dijkstra96_out_feedback_valid_out_40;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_50_4_push39_dijkstra92_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_50_4_push39_dijkstra92_out_feedback_valid_out_39;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_8_4_push46_dijkstra120_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_8_4_push46_dijkstra120_out_feedback_valid_out_46;
    wire [31:0] i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out;
    wire [31:0] i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_feedback_valid_out_50;
    wire [31:0] i_llvm_fpga_push_i32_v_033_push48_dijkstra126_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i32_v_033_push48_dijkstra126_out_feedback_valid_out_48;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv6_push38_dijkstra136_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv6_push38_dijkstra136_out_feedback_valid_out_38;
    wire [0:0] i_masked_dijkstra146_qi;
    reg [0:0] i_masked_dijkstra146_q;
    wire [0:0] i_next_cleanups_dijkstra133_s;
    reg [1:0] i_next_cleanups_dijkstra133_q;
    wire [0:0] i_not_cmp26_dijkstra79_q;
    wire [0:0] i_notcmp_dijkstra130_q;
    wire [0:0] i_or_dijkstra132_q;
    wire [0:0] i_reduction_dijkstra_0_dijkstra91_s;
    reg [31:0] i_reduction_dijkstra_0_dijkstra91_q;
    wire [0:0] i_reduction_dijkstra_10_dijkstra81_q;
    wire [0:0] i_reduction_dijkstra_11_dijkstra82_q;
    wire [0:0] i_reduction_dijkstra_13_dijkstra83_q;
    wire [0:0] i_reduction_dijkstra_14_dijkstra89_q;
    wire [0:0] i_reduction_dijkstra_15_dijkstra90_q;
    wire [0:0] i_reduction_dijkstra_16_dijkstra93_q;
    wire [0:0] i_reduction_dijkstra_17_dijkstra94_q;
    wire [0:0] i_reduction_dijkstra_18_dijkstra97_q;
    wire [0:0] i_reduction_dijkstra_19_dijkstra98_q;
    wire [0:0] i_reduction_dijkstra_1_dijkstra95_s;
    reg [31:0] i_reduction_dijkstra_1_dijkstra95_q;
    wire [0:0] i_reduction_dijkstra_20_dijkstra101_q;
    wire [0:0] i_reduction_dijkstra_21_dijkstra102_q;
    wire [0:0] i_reduction_dijkstra_22_dijkstra105_q;
    wire [0:0] i_reduction_dijkstra_23_dijkstra106_q;
    wire [0:0] i_reduction_dijkstra_24_dijkstra109_q;
    wire [0:0] i_reduction_dijkstra_25_dijkstra110_q;
    wire [0:0] i_reduction_dijkstra_26_dijkstra113_q;
    wire [0:0] i_reduction_dijkstra_27_dijkstra114_q;
    wire [0:0] i_reduction_dijkstra_28_dijkstra117_q;
    wire [0:0] i_reduction_dijkstra_29_dijkstra118_q;
    wire [0:0] i_reduction_dijkstra_2_dijkstra99_s;
    reg [31:0] i_reduction_dijkstra_2_dijkstra99_q;
    wire [0:0] i_reduction_dijkstra_30_dijkstra121_q;
    wire [0:0] i_reduction_dijkstra_31_dijkstra122_q;
    wire [0:0] i_reduction_dijkstra_3_dijkstra103_s;
    reg [31:0] i_reduction_dijkstra_3_dijkstra103_q;
    wire [0:0] i_reduction_dijkstra_4_dijkstra107_s;
    reg [31:0] i_reduction_dijkstra_4_dijkstra107_q;
    wire [0:0] i_reduction_dijkstra_5_dijkstra111_s;
    reg [31:0] i_reduction_dijkstra_5_dijkstra111_q;
    wire [0:0] i_reduction_dijkstra_6_dijkstra115_s;
    reg [31:0] i_reduction_dijkstra_6_dijkstra115_q;
    wire [0:0] i_reduction_dijkstra_7_dijkstra119_s;
    reg [31:0] i_reduction_dijkstra_7_dijkstra119_q;
    wire [0:0] i_reduction_dijkstra_8_dijkstra123_s;
    reg [31:0] i_reduction_dijkstra_8_dijkstra123_q;
    wire [0:0] i_reduction_dijkstra_9_dijkstra80_q;
    wire [0:0] i_selcond_dijkstra_0_dijkstra88_q;
    wire [0:0] i_tobool22_dijkstra65_q;
    wire [0:0] i_tobool_dijkstra57_q;
    wire [0:0] i_unnamed_dijkstra38_qi;
    reg [0:0] i_unnamed_dijkstra38_q;
    wire [0:0] i_unnamed_dijkstra40_qi;
    reg [0:0] i_unnamed_dijkstra40_q;
    wire [0:0] i_unnamed_dijkstra42_qi;
    reg [0:0] i_unnamed_dijkstra42_q;
    wire [0:0] i_unnamed_dijkstra44_qi;
    reg [0:0] i_unnamed_dijkstra44_q;
    wire [0:0] i_unnamed_dijkstra46_qi;
    reg [0:0] i_unnamed_dijkstra46_q;
    wire [0:0] i_unnamed_dijkstra48_qi;
    reg [0:0] i_unnamed_dijkstra48_q;
    wire [0:0] i_unnamed_dijkstra50_qi;
    reg [0:0] i_unnamed_dijkstra50_q;
    wire [0:0] i_unnamed_dijkstra52_qi;
    reg [0:0] i_unnamed_dijkstra52_q;
    wire [0:0] i_unnamed_dijkstra62_q;
    wire [0:0] i_unnamed_dijkstra77_qi;
    reg [0:0] i_unnamed_dijkstra77_q;
    wire [31:0] i_unnamed_dijkstra84_q;
    wire [0:0] i_unnamed_dijkstra85_q;
    wire [0:0] i_unnamed_dijkstra87_q;
    wire [0:0] i_xor_dijkstra4_q;
    wire [31:0] bgTrunc_i_add_dijkstra72_sel_x_b;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next7_dijkstra135_sel_x_b;
    wire [31:0] bgTrunc_i_inc47_dijkstra125_sel_x_b;
    wire [31:0] c_i32_2147483647216_recast_x_q;
    wire [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_q;
    wire [0:0] dupName_3_comparator_x_q;
    wire [0:0] dupName_4_comparator_x_q;
    wire [0:0] dupName_5_comparator_x_q;
    wire [0:0] dupName_6_comparator_x_q;
    wire [0:0] dupName_7_comparator_x_qi;
    reg [0:0] dupName_7_comparator_x_q;
    wire [0:0] dupName_8_comparator_x_qi;
    reg [0:0] dupName_8_comparator_x_q;
    wire [0:0] dupName_9_comparator_x_qi;
    reg [0:0] dupName_9_comparator_x_q;
    wire [0:0] dupName_10_comparator_x_qi;
    reg [0:0] dupName_10_comparator_x_q;
    wire [0:0] dupName_11_comparator_x_qi;
    reg [0:0] dupName_11_comparator_x_q;
    wire [0:0] dupName_12_comparator_x_qi;
    reg [0:0] dupName_12_comparator_x_q;
    wire [0:0] dupName_13_comparator_x_qi;
    reg [0:0] dupName_13_comparator_x_q;
    wire [0:0] dupName_14_comparator_x_qi;
    reg [0:0] dupName_14_comparator_x_q;
    wire [64:0] i_arrayidx21_dijkstra0_add_x_a;
    wire [64:0] i_arrayidx21_dijkstra0_add_x_b;
    logic [64:0] i_arrayidx21_dijkstra0_add_x_o;
    wire [64:0] i_arrayidx21_dijkstra0_add_x_q;
    wire [64:0] i_arrayidx21_dijkstra0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx21_dijkstra0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx21_dijkstra0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx21_dijkstra0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx21_dijkstra0_mult_extender_x_q;
    wire [57:0] i_arrayidx21_dijkstra0_mult_multconst_x_q;
    wire [63:0] i_arrayidx21_dijkstra0_trunc_sel_x_b;
    wire [127:0] i_arrayidx21_dijkstra0_dupName_0_mult_extender_x_q;
    wire [60:0] i_arrayidx21_dijkstra0_dupName_0_mult_multconst_x_q;
    wire [63:0] i_arrayidx21_dijkstra0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx21_dijkstra0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_arrayidx21_dijkstra0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_dijkstra3_sel_x_b;
    wire [63:0] i_idxprom10_dijkstra36_sel_x_b;
    wire [63:0] i_idxprom16_dijkstra59_sel_x_b;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_7_tpl;
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
    wire [0:0] i_exitcond8_dijkstra128_cmp_nsign_q;
    wire [35:0] i_arrayidx21_dijkstra0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx21_dijkstra0_mult_x_sums_align_0_qint;
    wire [59:0] i_arrayidx21_dijkstra0_mult_x_sums_join_1_q;
    wire [41:0] i_arrayidx21_dijkstra0_mult_x_sums_align_2_q;
    wire [41:0] i_arrayidx21_dijkstra0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx21_dijkstra0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx21_dijkstra0_mult_x_sums_align_3_qint;
    wire [69:0] i_arrayidx21_dijkstra0_mult_x_sums_join_4_q;
    wire [70:0] i_arrayidx21_dijkstra0_mult_x_sums_result_add_0_0_a;
    wire [70:0] i_arrayidx21_dijkstra0_mult_x_sums_result_add_0_0_b;
    logic [70:0] i_arrayidx21_dijkstra0_mult_x_sums_result_add_0_0_o;
    wire [70:0] i_arrayidx21_dijkstra0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid420_i_cleanups_shl_dijkstra0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid420_i_cleanups_shl_dijkstra0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid421_i_cleanups_shl_dijkstra0_shift_x_q;
    wire [0:0] leftShiftStage0_uid423_i_cleanups_shl_dijkstra0_shift_x_s;
    reg [1:0] leftShiftStage0_uid423_i_cleanups_shl_dijkstra0_shift_x_q;
    wire [12:0] i_arrayidx21_dijkstra0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx21_dijkstra0_mult_x_im0_shift0_qint;
    wire [13:0] i_arrayidx21_dijkstra0_mult_x_im0_add_1_a;
    wire [13:0] i_arrayidx21_dijkstra0_mult_x_im0_add_1_b;
    logic [13:0] i_arrayidx21_dijkstra0_mult_x_im0_add_1_o;
    wire [13:0] i_arrayidx21_dijkstra0_mult_x_im0_add_1_q;
    wire [15:0] i_arrayidx21_dijkstra0_mult_x_im0_shift2_q;
    wire [15:0] i_arrayidx21_dijkstra0_mult_x_im0_shift2_qint;
    wire [20:0] i_arrayidx21_dijkstra0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx21_dijkstra0_mult_x_im3_shift0_qint;
    wire [21:0] i_arrayidx21_dijkstra0_mult_x_im3_add_1_a;
    wire [21:0] i_arrayidx21_dijkstra0_mult_x_im3_add_1_b;
    logic [21:0] i_arrayidx21_dijkstra0_mult_x_im3_add_1_o;
    wire [21:0] i_arrayidx21_dijkstra0_mult_x_im3_add_1_q;
    wire [23:0] i_arrayidx21_dijkstra0_mult_x_im3_shift2_q;
    wire [23:0] i_arrayidx21_dijkstra0_mult_x_im3_shift2_qint;
    wire [20:0] i_arrayidx21_dijkstra0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx21_dijkstra0_mult_x_im6_shift0_qint;
    wire [21:0] i_arrayidx21_dijkstra0_mult_x_im6_add_1_a;
    wire [21:0] i_arrayidx21_dijkstra0_mult_x_im6_add_1_b;
    logic [21:0] i_arrayidx21_dijkstra0_mult_x_im6_add_1_o;
    wire [21:0] i_arrayidx21_dijkstra0_mult_x_im6_add_1_q;
    wire [23:0] i_arrayidx21_dijkstra0_mult_x_im6_shift2_q;
    wire [23:0] i_arrayidx21_dijkstra0_mult_x_im6_shift2_qint;
    wire [20:0] i_arrayidx21_dijkstra0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx21_dijkstra0_mult_x_im9_shift0_qint;
    wire [21:0] i_arrayidx21_dijkstra0_mult_x_im9_add_1_a;
    wire [21:0] i_arrayidx21_dijkstra0_mult_x_im9_add_1_b;
    logic [21:0] i_arrayidx21_dijkstra0_mult_x_im9_add_1_o;
    wire [21:0] i_arrayidx21_dijkstra0_mult_x_im9_add_1_q;
    wire [23:0] i_arrayidx21_dijkstra0_mult_x_im9_shift2_q;
    wire [23:0] i_arrayidx21_dijkstra0_mult_x_im9_shift2_qint;
    wire [11:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx21_dijkstra0_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_1_q;
    reg [0:0] redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q;
    reg [31:0] redist2_sync_together265_aunroll_x_in_c0_eni2194_2_tpl_1_q;
    reg [0:0] redist3_sync_together265_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_sync_together265_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist4_sync_together265_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist4_sync_together265_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist4_sync_together265_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist5_sync_together265_aunroll_x_in_i_valid_6_q;
    reg [63:0] redist6_i_arrayidx21_dijkstra0_trunc_sel_x_b_1_q;
    reg [0:0] redist7_dupName_6_comparator_x_q_5_q;
    reg [0:0] redist7_dupName_6_comparator_x_q_5_delay_0;
    reg [0:0] redist7_dupName_6_comparator_x_q_5_delay_1;
    reg [0:0] redist7_dupName_6_comparator_x_q_5_delay_2;
    reg [0:0] redist7_dupName_6_comparator_x_q_5_delay_3;
    reg [0:0] redist8_dupName_5_comparator_x_q_5_q;
    reg [0:0] redist8_dupName_5_comparator_x_q_5_delay_0;
    reg [0:0] redist8_dupName_5_comparator_x_q_5_delay_1;
    reg [0:0] redist8_dupName_5_comparator_x_q_5_delay_2;
    reg [0:0] redist8_dupName_5_comparator_x_q_5_delay_3;
    reg [0:0] redist9_dupName_4_comparator_x_q_5_q;
    reg [0:0] redist9_dupName_4_comparator_x_q_5_delay_0;
    reg [0:0] redist9_dupName_4_comparator_x_q_5_delay_1;
    reg [0:0] redist9_dupName_4_comparator_x_q_5_delay_2;
    reg [0:0] redist9_dupName_4_comparator_x_q_5_delay_3;
    reg [0:0] redist10_dupName_3_comparator_x_q_5_q;
    reg [0:0] redist10_dupName_3_comparator_x_q_5_delay_0;
    reg [0:0] redist10_dupName_3_comparator_x_q_5_delay_1;
    reg [0:0] redist10_dupName_3_comparator_x_q_5_delay_2;
    reg [0:0] redist10_dupName_3_comparator_x_q_5_delay_3;
    reg [0:0] redist11_dupName_2_comparator_x_q_5_q;
    reg [0:0] redist11_dupName_2_comparator_x_q_5_delay_0;
    reg [0:0] redist11_dupName_2_comparator_x_q_5_delay_1;
    reg [0:0] redist11_dupName_2_comparator_x_q_5_delay_2;
    reg [0:0] redist11_dupName_2_comparator_x_q_5_delay_3;
    reg [0:0] redist12_dupName_1_comparator_x_q_5_q;
    reg [0:0] redist12_dupName_1_comparator_x_q_5_delay_0;
    reg [0:0] redist12_dupName_1_comparator_x_q_5_delay_1;
    reg [0:0] redist12_dupName_1_comparator_x_q_5_delay_2;
    reg [0:0] redist12_dupName_1_comparator_x_q_5_delay_3;
    reg [0:0] redist13_dupName_0_comparator_x_q_5_q;
    reg [0:0] redist13_dupName_0_comparator_x_q_5_delay_0;
    reg [0:0] redist13_dupName_0_comparator_x_q_5_delay_1;
    reg [0:0] redist13_dupName_0_comparator_x_q_5_delay_2;
    reg [0:0] redist13_dupName_0_comparator_x_q_5_delay_3;
    reg [0:0] redist14_i_xor_dijkstra4_q_1_q;
    reg [0:0] redist15_i_xor_dijkstra4_q_6_q;
    reg [0:0] redist15_i_xor_dijkstra4_q_6_delay_0;
    reg [0:0] redist15_i_xor_dijkstra4_q_6_delay_1;
    reg [0:0] redist15_i_xor_dijkstra4_q_6_delay_2;
    reg [0:0] redist15_i_xor_dijkstra4_q_6_delay_3;
    reg [0:0] redist16_i_unnamed_dijkstra77_q_5_q;
    reg [0:0] redist16_i_unnamed_dijkstra77_q_5_delay_0;
    reg [0:0] redist16_i_unnamed_dijkstra77_q_5_delay_1;
    reg [0:0] redist16_i_unnamed_dijkstra77_q_5_delay_2;
    reg [0:0] redist17_i_unnamed_dijkstra52_q_5_q;
    reg [0:0] redist17_i_unnamed_dijkstra52_q_5_delay_0;
    reg [0:0] redist17_i_unnamed_dijkstra52_q_5_delay_1;
    reg [0:0] redist17_i_unnamed_dijkstra52_q_5_delay_2;
    reg [0:0] redist18_i_unnamed_dijkstra50_q_5_q;
    reg [0:0] redist18_i_unnamed_dijkstra50_q_5_delay_0;
    reg [0:0] redist18_i_unnamed_dijkstra50_q_5_delay_1;
    reg [0:0] redist18_i_unnamed_dijkstra50_q_5_delay_2;
    reg [0:0] redist19_i_unnamed_dijkstra48_q_5_q;
    reg [0:0] redist19_i_unnamed_dijkstra48_q_5_delay_0;
    reg [0:0] redist19_i_unnamed_dijkstra48_q_5_delay_1;
    reg [0:0] redist19_i_unnamed_dijkstra48_q_5_delay_2;
    reg [0:0] redist20_i_unnamed_dijkstra46_q_5_q;
    reg [0:0] redist20_i_unnamed_dijkstra46_q_5_delay_0;
    reg [0:0] redist20_i_unnamed_dijkstra46_q_5_delay_1;
    reg [0:0] redist20_i_unnamed_dijkstra46_q_5_delay_2;
    reg [0:0] redist21_i_unnamed_dijkstra44_q_5_q;
    reg [0:0] redist21_i_unnamed_dijkstra44_q_5_delay_0;
    reg [0:0] redist21_i_unnamed_dijkstra44_q_5_delay_1;
    reg [0:0] redist21_i_unnamed_dijkstra44_q_5_delay_2;
    reg [0:0] redist22_i_unnamed_dijkstra42_q_5_q;
    reg [0:0] redist22_i_unnamed_dijkstra42_q_5_delay_0;
    reg [0:0] redist22_i_unnamed_dijkstra42_q_5_delay_1;
    reg [0:0] redist22_i_unnamed_dijkstra42_q_5_delay_2;
    reg [0:0] redist23_i_unnamed_dijkstra40_q_5_q;
    reg [0:0] redist23_i_unnamed_dijkstra40_q_5_delay_0;
    reg [0:0] redist23_i_unnamed_dijkstra40_q_5_delay_1;
    reg [0:0] redist23_i_unnamed_dijkstra40_q_5_delay_2;
    reg [0:0] redist24_i_unnamed_dijkstra38_q_5_q;
    reg [0:0] redist24_i_unnamed_dijkstra38_q_5_delay_0;
    reg [0:0] redist24_i_unnamed_dijkstra38_q_5_delay_1;
    reg [0:0] redist24_i_unnamed_dijkstra38_q_5_delay_2;
    reg [0:0] redist25_i_tobool_dijkstra57_q_5_q;
    reg [0:0] redist25_i_tobool_dijkstra57_q_5_delay_0;
    reg [0:0] redist25_i_tobool_dijkstra57_q_5_delay_1;
    reg [0:0] redist25_i_tobool_dijkstra57_q_5_delay_2;
    reg [0:0] redist25_i_tobool_dijkstra57_q_5_delay_3;
    reg [0:0] redist26_i_masked_dijkstra146_q_6_q;
    reg [0:0] redist26_i_masked_dijkstra146_q_6_delay_0;
    reg [0:0] redist26_i_masked_dijkstra146_q_6_delay_1;
    reg [0:0] redist26_i_masked_dijkstra146_q_6_delay_2;
    reg [0:0] redist26_i_masked_dijkstra146_q_6_delay_3;
    reg [31:0] redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_1_q;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_2_q;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_q;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_0;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_1;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_2;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_3;
    reg [0:0] redist33_comparator_q_5_q;
    reg [0:0] redist33_comparator_q_5_delay_0;
    reg [0:0] redist33_comparator_q_5_delay_1;
    reg [0:0] redist33_comparator_q_5_delay_2;
    reg [0:0] redist33_comparator_q_5_delay_3;
    wire redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_reset0;
    wire [31:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_ia;
    wire [2:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_aa;
    wire [2:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_ab;
    wire [31:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_iq;
    wire [31:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_q;
    wire [2:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_q;
    (* preserve *) reg [2:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_i;
    (* preserve *) reg redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_eq;
    reg [2:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_wraddr_q;
    wire [2:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_last_q;
    wire [0:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_cmp_q;
    (* dont_merge *) reg [0:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_cmpReg_q;
    wire [0:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_notEnable_q;
    wire [0:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_nor_q;
    (* dont_merge *) reg [0:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_sticky_ena_q;
    wire [0:0] redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_enaAnd_q;
    reg [31:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_inputreg0_q;
    reg [31:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_outputreg0_q;
    wire redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_reset0;
    wire [31:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_ia;
    wire [0:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_aa;
    wire [0:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_ab;
    wire [31:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_iq;
    wire [31:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_q;
    wire [0:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_rdcnt_q;
    (* preserve *) reg [0:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_rdcnt_i;
    reg [0:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_wraddr_q;
    (* dont_merge *) reg [0:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_cmpReg_q;
    wire [0:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_notEnable_q;
    wire [0:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_nor_q;
    (* dont_merge *) reg [0:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_sticky_ena_q;
    wire [0:0] redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together265_aunroll_x_in_i_valid_1(DELAY,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together265_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together265_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist29_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_1(DELAY,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid420_i_cleanups_shl_dijkstra0_shift_x(BITSELECT,419)@2
    assign leftShiftStage0Idx1Rng1_uid420_i_cleanups_shl_dijkstra0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop49_dijkstra2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid420_i_cleanups_shl_dijkstra0_shift_x_b = leftShiftStage0Idx1Rng1_uid420_i_cleanups_shl_dijkstra0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid421_i_cleanups_shl_dijkstra0_shift_x(BITJOIN,420)@2
    assign leftShiftStage0Idx1_uid421_i_cleanups_shl_dijkstra0_shift_x_q = {leftShiftStage0Idx1Rng1_uid420_i_cleanups_shl_dijkstra0_shift_x_b, GND_q};

    // leftShiftStage0_uid423_i_cleanups_shl_dijkstra0_shift_x(MUX,422)@2
    assign leftShiftStage0_uid423_i_cleanups_shl_dijkstra0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid423_i_cleanups_shl_dijkstra0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop49_dijkstra2_out_data_out or leftShiftStage0Idx1_uid421_i_cleanups_shl_dijkstra0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid423_i_cleanups_shl_dijkstra0_shift_x_s)
            1'b0 : leftShiftStage0_uid423_i_cleanups_shl_dijkstra0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop49_dijkstra2_out_data_out;
            1'b1 : leftShiftStage0_uid423_i_cleanups_shl_dijkstra0_shift_x_q = leftShiftStage0Idx1_uid421_i_cleanups_shl_dijkstra0_shift_x_q;
            default : leftShiftStage0_uid423_i_cleanups_shl_dijkstra0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_dijkstra5_vt_select_1(BITSELECT,78)@2
    assign i_cleanups_shl_dijkstra5_vt_select_1_b = leftShiftStage0_uid423_i_cleanups_shl_dijkstra0_shift_x_q[1:1];

    // i_cleanups_shl_dijkstra5_vt_join(BITJOIN,77)@2
    assign i_cleanups_shl_dijkstra5_vt_join_q = {i_cleanups_shl_dijkstra5_vt_select_1_b, GND_q};

    // i_xor_dijkstra4(LOGICAL,208)@2
    assign i_xor_dijkstra4_q = i_first_cleanup_dijkstra3_sel_x_b ^ VCC_q;

    // i_notcmp_dijkstra130(LOGICAL,159)@2
    assign i_notcmp_dijkstra130_q = i_exitcond8_dijkstra128_cmp_nsign_q ^ VCC_q;

    // i_or_dijkstra132(LOGICAL,160)@2
    assign i_or_dijkstra132_q = i_notcmp_dijkstra130_q | i_xor_dijkstra4_q;

    // i_next_cleanups_dijkstra133(MUX,157)@2
    assign i_next_cleanups_dijkstra133_s = i_or_dijkstra132_q;
    always @(i_next_cleanups_dijkstra133_s or i_llvm_fpga_pop_i2_cleanups_pop49_dijkstra2_out_data_out or i_cleanups_shl_dijkstra5_vt_join_q)
    begin
        unique case (i_next_cleanups_dijkstra133_s)
            1'b0 : i_next_cleanups_dijkstra133_q = i_llvm_fpga_pop_i2_cleanups_pop49_dijkstra2_out_data_out;
            1'b1 : i_next_cleanups_dijkstra133_q = i_cleanups_shl_dijkstra5_vt_join_q;
            default : i_next_cleanups_dijkstra133_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push49_dijkstra134(BLACKBOX,143)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    dijkstra_i_llvm_fpga_push_i2_cleanups_push49_0 thei_llvm_fpga_push_i2_cleanups_push49_dijkstra134 (
        .in_data_in(i_next_cleanups_dijkstra133_q),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i2_cleanups_pop49_dijkstra2_out_feedback_stall_out_49),
        .in_keep_going(redist29_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together265_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i2_cleanups_push49_dijkstra134_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i2_cleanups_push49_dijkstra134_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_1(DELAY,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_1_q <= $unsigned(in_c0_eni2194_1_tpl);
        end
    end

    // c_i2_1203(CONSTANT,59)
    assign c_i2_1203_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop49_dijkstra2(BLACKBOX,128)@2
    // out out_feedback_stall_out_49@20000000
    dijkstra_i_llvm_fpga_pop_i2_cleanups_pop49_0 thei_llvm_fpga_pop_i2_cleanups_pop49_dijkstra2 (
        .in_data_in(c_i2_1203_q),
        .in_dir(redist0_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_i2_cleanups_push49_dijkstra134_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i2_cleanups_push49_dijkstra134_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together265_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop49_dijkstra2_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i2_cleanups_pop49_dijkstra2_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_dijkstra3_sel_x(BITSELECT,316)@2
    assign i_first_cleanup_dijkstra3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop49_dijkstra2_out_data_out[0:0];

    // c_i5_1219(CONSTANT,70)
    assign c_i5_1219_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next7_dijkstra135(ADD,93)@2
    assign i_fpga_indvars_iv_next7_dijkstra135_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop38_dijkstra127_out_data_out};
    assign i_fpga_indvars_iv_next7_dijkstra135_b = {1'b0, c_i5_1219_q};
    assign i_fpga_indvars_iv_next7_dijkstra135_o = $unsigned(i_fpga_indvars_iv_next7_dijkstra135_a) + $unsigned(i_fpga_indvars_iv_next7_dijkstra135_b);
    assign i_fpga_indvars_iv_next7_dijkstra135_q = i_fpga_indvars_iv_next7_dijkstra135_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next7_dijkstra135_sel_x(BITSELECT,244)@2
    assign bgTrunc_i_fpga_indvars_iv_next7_dijkstra135_sel_x_b = i_fpga_indvars_iv_next7_dijkstra135_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv6_push38_dijkstra136(BLACKBOX,155)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    dijkstra_i_llvm_fpga_push_i5_fpga_indvars_iv6_push38_0 thei_llvm_fpga_push_i5_fpga_indvars_iv6_push38_dijkstra136 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next7_dijkstra135_sel_x_b),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop38_dijkstra127_out_feedback_stall_out_38),
        .in_keep_going(redist29_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together265_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i5_fpga_indvars_iv6_push38_dijkstra136_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i5_fpga_indvars_iv6_push38_dijkstra136_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_7217(CONSTANT,71)
    assign c_i5_7217_q = $unsigned(5'b00111);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop38_dijkstra127(BLACKBOX,140)@2
    // out out_feedback_stall_out_38@20000000
    dijkstra_i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop38_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv6_pop38_dijkstra127 (
        .in_data_in(c_i5_7217_q),
        .in_dir(redist0_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i5_fpga_indvars_iv6_push38_dijkstra136_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i5_fpga_indvars_iv6_push38_dijkstra136_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together265_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop38_dijkstra127_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop38_dijkstra127_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond8_dijkstra128_cmp_nsign(LOGICAL,379)@2
    assign i_exitcond8_dijkstra128_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv6_pop38_dijkstra127_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond_dijkstra131(BLACKBOX,142)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    dijkstra_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_dijkstra131 (
        .in_data_in(i_exitcond8_dijkstra128_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_dijkstra6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_dijkstra3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together265_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_dijkstra131_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_dijkstra131_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,324)@1 + 1
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

    // i_llvm_fpga_push_i1_lastiniteration_dijkstra7(BLACKBOX,141)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    dijkstra_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_dijkstra7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_dijkstra6_out_initeration_stall_out),
        .in_keep_going(redist29_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_dijkstra7_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_dijkstra7_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_dijkstra6(BLACKBOX,127)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    dijkstra_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_dijkstra6 (
        .in_data_in(in_c0_eni2194_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_dijkstra7_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_dijkstra7_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_dijkstra131_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_dijkstra131_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_dijkstra6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_dijkstra6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_dijkstra6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_dijkstra6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_dijkstra6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,74)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstra6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_dijkstra6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dijkstra6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_dijkstra6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,226)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_dijkstra6_out_pipeline_valid_out;

    // redist4_sync_together265_aunroll_x_in_i_valid_5(DELAY,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together265_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist4_sync_together265_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist4_sync_together265_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist4_sync_together265_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist4_sync_together265_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist3_sync_together265_aunroll_x_in_i_valid_1_q);
            redist4_sync_together265_aunroll_x_in_i_valid_5_delay_1 <= redist4_sync_together265_aunroll_x_in_i_valid_5_delay_0;
            redist4_sync_together265_aunroll_x_in_i_valid_5_delay_2 <= redist4_sync_together265_aunroll_x_in_i_valid_5_delay_1;
            redist4_sync_together265_aunroll_x_in_i_valid_5_q <= redist4_sync_together265_aunroll_x_in_i_valid_5_delay_2;
        end
    end

    // redist5_sync_together265_aunroll_x_in_i_valid_6(DELAY,447)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together265_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist5_sync_together265_aunroll_x_in_i_valid_6_q <= $unsigned(redist4_sync_together265_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg37(REG,360)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg25(REG,348)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist3_sync_together265_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist14_i_xor_dijkstra4_q_1(DELAY,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_xor_dijkstra4_q_1_q <= '0;
        end
        else
        begin
            redist14_i_xor_dijkstra4_q_1_q <= $unsigned(i_xor_dijkstra4_q);
        end
    end

    // c_i32_0206(CONSTANT,60)
    assign c_i32_0206_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg22(REG,345)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist3_sync_together265_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_spec_select24776_dijkstra54(BLACKBOX,115)@3
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select24776_0 thei_llvm_fpga_ffwd_dest_i32_spec_select24776_dijkstra54 (
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_dest_data_out_50_0(i_llvm_fpga_ffwd_dest_i32_spec_select24776_dijkstra54_out_dest_data_out_50_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_8207(CONSTANT,68)
    assign c_i32_8207_q = $unsigned(32'b00000000000000000000000000001000);

    // valid_fanout_reg21(REG,344)@1 + 1
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

    // valid_fanout_reg36(REG,359)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist3_sync_together265_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist30_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_2(DELAY,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_2_q <= $unsigned(redist29_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_1_q);
        end
    end

    // c_i32_1214(CONSTANT,61)
    assign c_i32_1214_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc47_dijkstra125(ADD,100)@3
    assign i_inc47_dijkstra125_a = {1'b0, redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q};
    assign i_inc47_dijkstra125_b = {1'b0, c_i32_1214_q};
    assign i_inc47_dijkstra125_o = $unsigned(i_inc47_dijkstra125_a) + $unsigned(i_inc47_dijkstra125_b);
    assign i_inc47_dijkstra125_q = i_inc47_dijkstra125_o[32:0];

    // bgTrunc_i_inc47_dijkstra125_sel_x(BITSELECT,245)@3
    assign bgTrunc_i_inc47_dijkstra125_sel_x_b = i_inc47_dijkstra125_q[31:0];

    // i_llvm_fpga_push_i32_v_033_push48_dijkstra126(BLACKBOX,154)@3
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    dijkstra_i_llvm_fpga_push_i32_v_033_push48_0 thei_llvm_fpga_push_i32_v_033_push48_dijkstra126 (
        .in_data_in(bgTrunc_i_inc47_dijkstra125_sel_x_b),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_feedback_stall_out_48),
        .in_keep_going(redist30_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i32_v_033_push48_dijkstra126_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i32_v_033_push48_dijkstra126_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37(BLACKBOX,139)@2
    // out out_feedback_stall_out_48@20000000
    dijkstra_i_llvm_fpga_pop_i32_v_033_pop48_0 thei_llvm_fpga_pop_i32_v_033_pop48_dijkstra37 (
        .in_data_in(c_i32_0206_q),
        .in_dir(redist0_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i32_v_033_push48_dijkstra126_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i32_v_033_push48_dijkstra126_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1(DELAY,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out);
        end
    end

    // dupName_6_comparator_x(LOGICAL,273)@3
    assign dupName_6_comparator_x_q = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_8207_q ? 1'b1 : 1'b0);

    // c_i32_7208(CONSTANT,67)
    assign c_i32_7208_q = $unsigned(32'b00000000000000000000000000000111);

    // dupName_5_comparator_x(LOGICAL,271)@3
    assign dupName_5_comparator_x_q = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_7208_q ? 1'b1 : 1'b0);

    // c_i32_6209(CONSTANT,66)
    assign c_i32_6209_q = $unsigned(32'b00000000000000000000000000000110);

    // dupName_4_comparator_x(LOGICAL,269)@3
    assign dupName_4_comparator_x_q = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_6209_q ? 1'b1 : 1'b0);

    // c_i32_5210(CONSTANT,65)
    assign c_i32_5210_q = $unsigned(32'b00000000000000000000000000000101);

    // dupName_3_comparator_x(LOGICAL,267)@3
    assign dupName_3_comparator_x_q = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_5210_q ? 1'b1 : 1'b0);

    // c_i32_4211(CONSTANT,64)
    assign c_i32_4211_q = $unsigned(32'b00000000000000000000000000000100);

    // dupName_2_comparator_x(LOGICAL,264)@3
    assign dupName_2_comparator_x_q = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_4211_q ? 1'b1 : 1'b0);

    // c_i32_3212(CONSTANT,63)
    assign c_i32_3212_q = $unsigned(32'b00000000000000000000000000000011);

    // dupName_1_comparator_x(LOGICAL,261)@3
    assign dupName_1_comparator_x_q = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_3212_q ? 1'b1 : 1'b0);

    // c_i32_2213(CONSTANT,62)
    assign c_i32_2213_q = $unsigned(32'b00000000000000000000000000000010);

    // dupName_0_comparator_x(LOGICAL,257)@3
    assign dupName_0_comparator_x_q = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_2213_q ? 1'b1 : 1'b0);

    // valid_fanout_reg23(REG,346)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist3_sync_together265_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x(BLACKBOX,319)@3
    dijkstra_i_llvm_fpga_ffwd_dest_s_case_asA000000Zssign32394_dijkstra0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x (
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .in_intel_reserved_ffwd_59_0_0_tpl(in_intel_reserved_ffwd_59_0_0_tpl),
        .in_intel_reserved_ffwd_59_0_1_tpl(in_intel_reserved_ffwd_59_0_1_tpl),
        .in_intel_reserved_ffwd_59_0_2_tpl(in_intel_reserved_ffwd_59_0_2_tpl),
        .in_intel_reserved_ffwd_59_0_3_tpl(in_intel_reserved_ffwd_59_0_3_tpl),
        .in_intel_reserved_ffwd_59_0_4_tpl(in_intel_reserved_ffwd_59_0_4_tpl),
        .in_intel_reserved_ffwd_59_0_5_tpl(in_intel_reserved_ffwd_59_0_5_tpl),
        .in_intel_reserved_ffwd_59_0_6_tpl(in_intel_reserved_ffwd_59_0_6_tpl),
        .in_intel_reserved_ffwd_59_0_7_tpl(in_intel_reserved_ffwd_59_0_7_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_59_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_0_tpl),
        .out_dest_data_out_59_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_1_tpl),
        .out_dest_data_out_59_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_2_tpl),
        .out_dest_data_out_59_0_3_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_3_tpl),
        .out_dest_data_out_59_0_4_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_4_tpl),
        .out_dest_data_out_59_0_5_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_5_tpl),
        .out_dest_data_out_59_0_6_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_6_tpl),
        .out_dest_data_out_59_0_7_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // comparator(LOGICAL,72)@3
    assign comparator_q = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_1214_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56(SELECTOR,101)@3
    always @(comparator_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_0_tpl or dupName_0_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_1_tpl or dupName_1_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_2_tpl or dupName_2_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_3_tpl or dupName_3_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_4_tpl or dupName_4_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_5_tpl or dupName_5_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_6_tpl or dupName_6_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_7_tpl or i_llvm_fpga_ffwd_dest_i32_spec_select24776_dijkstra54_out_dest_data_out_50_0)
    begin
        i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q = i_llvm_fpga_ffwd_dest_i32_spec_select24776_dijkstra54_out_dest_data_out_50_0;
        if (dupName_6_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_7_tpl;
        end
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_6_tpl;
        end
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_5_tpl;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_4_tpl;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_3_tpl;
        end
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_2_tpl;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_1_tpl;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign32394_dijkstra55_aunroll_x_out_dest_data_out_59_0_0_tpl;
        end
    end

    // i_tobool_dijkstra57(LOGICAL,194)@3
    assign i_tobool_dijkstra57_q = $unsigned(i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q == c_i32_0206_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstra62(LOGICAL,203)@3
    assign i_unnamed_dijkstra62_q = i_tobool_dijkstra57_q ^ VCC_q;

    // i_first_cleanup_xor_or_dijkstra63(LOGICAL,92)@3
    assign i_first_cleanup_xor_or_dijkstra63_q = i_unnamed_dijkstra62_q | redist14_i_xor_dijkstra4_q_1_q;

    // i_arrayidx21_dijkstra0_dupName_0_mult_multconst_x(CONSTANT,308)
    assign i_arrayidx21_dijkstra0_dupName_0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // i_idxprom16_dijkstra59_sel_x(BITSELECT,318)@3
    assign i_idxprom16_dijkstra59_sel_x_b = {32'b00000000000000000000000000000000, redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q[31:0]};

    // i_idxprom16_dijkstra59_vt_select_31(BITSELECT,99)@3
    assign i_idxprom16_dijkstra59_vt_select_31_b = i_idxprom16_dijkstra59_sel_x_b[31:0];

    // i_idxprom16_dijkstra59_vt_join(BITJOIN,98)@3
    assign i_idxprom16_dijkstra59_vt_join_q = {c_i32_0206_q, i_idxprom16_dijkstra59_vt_select_31_b};

    // i_arrayidx21_dijkstra0_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,440)@3
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom16_dijkstra59_vt_join_q[63:54];
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom16_dijkstra59_vt_join_q[53:36];
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom16_dijkstra59_vt_join_q[35:18];
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom16_dijkstra59_vt_join_q[17:0];

    // i_arrayidx21_dijkstra0_dupName_0_mult_x_im0_shift0(BITSHIFT,436)@3
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_im0_shift0_qint = { i_arrayidx21_dijkstra0_dupName_0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_im0_shift0_q = i_arrayidx21_dijkstra0_dupName_0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_3(BITSHIFT,413)@3
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx21_dijkstra0_dupName_0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_3_q = i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx21_dijkstra0_dupName_0_mult_x_im6_shift0(BITSHIFT,438)@3
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_im6_shift0_qint = { i_arrayidx21_dijkstra0_dupName_0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_im6_shift0_q = i_arrayidx21_dijkstra0_dupName_0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_2(BITSHIFT,412)@3
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx21_dijkstra0_dupName_0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_2_q = i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_join_4(BITJOIN,414)@3
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_join_4_q = {i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_3_q, i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx21_dijkstra0_dupName_0_mult_x_im3_shift0(BITSHIFT,437)@3
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_im3_shift0_qint = { i_arrayidx21_dijkstra0_dupName_0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_im3_shift0_q = i_arrayidx21_dijkstra0_dupName_0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_0(BITSHIFT,410)@3
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx21_dijkstra0_dupName_0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_0_q = i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx21_dijkstra0_dupName_0_mult_x_im9_shift0(BITSHIFT,439)@3
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_im9_shift0_qint = { i_arrayidx21_dijkstra0_dupName_0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_im9_shift0_q = i_arrayidx21_dijkstra0_dupName_0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_join_1(BITJOIN,411)@3
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_join_1_q = {i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_align_0_q, {1'b0, i_arrayidx21_dijkstra0_dupName_0_mult_x_im9_shift0_q}};

    // i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_result_add_0_0(ADD,415)@3
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_join_1_q};
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_join_4_q};
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_result_add_0_0_q = i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx21_dijkstra0_dupName_0_mult_extender_x(BITJOIN,307)@3
    assign i_arrayidx21_dijkstra0_dupName_0_mult_extender_x_q = {i_arrayidx21_dijkstra0_dupName_0_mult_multconst_x_q, i_arrayidx21_dijkstra0_dupName_0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx21_dijkstra0_dupName_1_trunc_sel_x(BITSELECT,310)@3
    assign i_arrayidx21_dijkstra0_dupName_1_trunc_sel_x_b = i_arrayidx21_dijkstra0_dupName_0_mult_extender_x_q[63:0];

    // i_arrayidx21_dijkstra0_mult_multconst_x(CONSTANT,305)
    assign i_arrayidx21_dijkstra0_mult_multconst_x_q = $unsigned(58'b0000000000000000000000000000000000000000000000000000000000);

    // i_arrayidx21_dijkstra0_mult_x_im0_shift0(BITSHIFT,424)@2
    assign i_arrayidx21_dijkstra0_mult_x_im0_shift0_qint = { i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx21_dijkstra0_mult_x_im0_shift0_q = i_arrayidx21_dijkstra0_mult_x_im0_shift0_qint[12:0];

    // valid_fanout_reg20(REG,343)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_acl_26575_dijkstra35(BLACKBOX,105)@2
    dijkstra_i_llvm_fpga_ffwd_dest_i32_acl_26575_0 thei_llvm_fpga_ffwd_dest_i32_acl_26575_dijkstra35 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i32_acl_26575_dijkstra35_out_dest_data_out_49_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom10_dijkstra36_sel_x(BITSELECT,317)@2
    assign i_idxprom10_dijkstra36_sel_x_b = $unsigned({{32{i_llvm_fpga_ffwd_dest_i32_acl_26575_dijkstra35_out_dest_data_out_49_0[31]}}, i_llvm_fpga_ffwd_dest_i32_acl_26575_dijkstra35_out_dest_data_out_49_0[31:0]});

    // i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select(BITSELECT,441)@2
    assign i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_b = i_idxprom10_dijkstra36_sel_x_b[63:54];
    assign i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_c = i_idxprom10_dijkstra36_sel_x_b[53:36];
    assign i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_d = i_idxprom10_dijkstra36_sel_x_b[35:18];
    assign i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_e = i_idxprom10_dijkstra36_sel_x_b[17:0];

    // i_arrayidx21_dijkstra0_mult_x_im0_add_1(ADD,425)@2
    assign i_arrayidx21_dijkstra0_mult_x_im0_add_1_a = {4'b0000, i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_b};
    assign i_arrayidx21_dijkstra0_mult_x_im0_add_1_b = {1'b0, i_arrayidx21_dijkstra0_mult_x_im0_shift0_q};
    assign i_arrayidx21_dijkstra0_mult_x_im0_add_1_o = $unsigned(i_arrayidx21_dijkstra0_mult_x_im0_add_1_a) + $unsigned(i_arrayidx21_dijkstra0_mult_x_im0_add_1_b);
    assign i_arrayidx21_dijkstra0_mult_x_im0_add_1_q = i_arrayidx21_dijkstra0_mult_x_im0_add_1_o[13:0];

    // i_arrayidx21_dijkstra0_mult_x_im0_shift2(BITSHIFT,426)@2
    assign i_arrayidx21_dijkstra0_mult_x_im0_shift2_qint = { i_arrayidx21_dijkstra0_mult_x_im0_add_1_q, 2'b00 };
    assign i_arrayidx21_dijkstra0_mult_x_im0_shift2_q = i_arrayidx21_dijkstra0_mult_x_im0_shift2_qint[15:0];

    // i_arrayidx21_dijkstra0_mult_x_sums_align_3(BITSHIFT,395)@2
    assign i_arrayidx21_dijkstra0_mult_x_sums_align_3_qint = { i_arrayidx21_dijkstra0_mult_x_im0_shift2_q, 12'b000000000000 };
    assign i_arrayidx21_dijkstra0_mult_x_sums_align_3_q = i_arrayidx21_dijkstra0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx21_dijkstra0_mult_x_im6_shift0(BITSHIFT,430)@2
    assign i_arrayidx21_dijkstra0_mult_x_im6_shift0_qint = { i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx21_dijkstra0_mult_x_im6_shift0_q = i_arrayidx21_dijkstra0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx21_dijkstra0_mult_x_im6_add_1(ADD,431)@2
    assign i_arrayidx21_dijkstra0_mult_x_im6_add_1_a = {4'b0000, i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_d};
    assign i_arrayidx21_dijkstra0_mult_x_im6_add_1_b = {1'b0, i_arrayidx21_dijkstra0_mult_x_im6_shift0_q};
    assign i_arrayidx21_dijkstra0_mult_x_im6_add_1_o = $unsigned(i_arrayidx21_dijkstra0_mult_x_im6_add_1_a) + $unsigned(i_arrayidx21_dijkstra0_mult_x_im6_add_1_b);
    assign i_arrayidx21_dijkstra0_mult_x_im6_add_1_q = i_arrayidx21_dijkstra0_mult_x_im6_add_1_o[21:0];

    // i_arrayidx21_dijkstra0_mult_x_im6_shift2(BITSHIFT,432)@2
    assign i_arrayidx21_dijkstra0_mult_x_im6_shift2_qint = { i_arrayidx21_dijkstra0_mult_x_im6_add_1_q, 2'b00 };
    assign i_arrayidx21_dijkstra0_mult_x_im6_shift2_q = i_arrayidx21_dijkstra0_mult_x_im6_shift2_qint[23:0];

    // i_arrayidx21_dijkstra0_mult_x_sums_align_2(BITSHIFT,394)@2
    assign i_arrayidx21_dijkstra0_mult_x_sums_align_2_qint = { i_arrayidx21_dijkstra0_mult_x_im6_shift2_q, 18'b000000000000000000 };
    assign i_arrayidx21_dijkstra0_mult_x_sums_align_2_q = i_arrayidx21_dijkstra0_mult_x_sums_align_2_qint[41:0];

    // i_arrayidx21_dijkstra0_mult_x_sums_join_4(BITJOIN,396)@2
    assign i_arrayidx21_dijkstra0_mult_x_sums_join_4_q = {i_arrayidx21_dijkstra0_mult_x_sums_align_3_q, i_arrayidx21_dijkstra0_mult_x_sums_align_2_q};

    // i_arrayidx21_dijkstra0_mult_x_im3_shift0(BITSHIFT,427)@2
    assign i_arrayidx21_dijkstra0_mult_x_im3_shift0_qint = { i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx21_dijkstra0_mult_x_im3_shift0_q = i_arrayidx21_dijkstra0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx21_dijkstra0_mult_x_im3_add_1(ADD,428)@2
    assign i_arrayidx21_dijkstra0_mult_x_im3_add_1_a = {4'b0000, i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_c};
    assign i_arrayidx21_dijkstra0_mult_x_im3_add_1_b = {1'b0, i_arrayidx21_dijkstra0_mult_x_im3_shift0_q};
    assign i_arrayidx21_dijkstra0_mult_x_im3_add_1_o = $unsigned(i_arrayidx21_dijkstra0_mult_x_im3_add_1_a) + $unsigned(i_arrayidx21_dijkstra0_mult_x_im3_add_1_b);
    assign i_arrayidx21_dijkstra0_mult_x_im3_add_1_q = i_arrayidx21_dijkstra0_mult_x_im3_add_1_o[21:0];

    // i_arrayidx21_dijkstra0_mult_x_im3_shift2(BITSHIFT,429)@2
    assign i_arrayidx21_dijkstra0_mult_x_im3_shift2_qint = { i_arrayidx21_dijkstra0_mult_x_im3_add_1_q, 2'b00 };
    assign i_arrayidx21_dijkstra0_mult_x_im3_shift2_q = i_arrayidx21_dijkstra0_mult_x_im3_shift2_qint[23:0];

    // i_arrayidx21_dijkstra0_mult_x_sums_align_0(BITSHIFT,392)@2
    assign i_arrayidx21_dijkstra0_mult_x_sums_align_0_qint = { i_arrayidx21_dijkstra0_mult_x_im3_shift2_q, 12'b000000000000 };
    assign i_arrayidx21_dijkstra0_mult_x_sums_align_0_q = i_arrayidx21_dijkstra0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx21_dijkstra0_mult_x_im9_shift0(BITSHIFT,433)@2
    assign i_arrayidx21_dijkstra0_mult_x_im9_shift0_qint = { i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx21_dijkstra0_mult_x_im9_shift0_q = i_arrayidx21_dijkstra0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx21_dijkstra0_mult_x_im9_add_1(ADD,434)@2
    assign i_arrayidx21_dijkstra0_mult_x_im9_add_1_a = {4'b0000, i_arrayidx21_dijkstra0_mult_x_bs1_merged_bit_select_e};
    assign i_arrayidx21_dijkstra0_mult_x_im9_add_1_b = {1'b0, i_arrayidx21_dijkstra0_mult_x_im9_shift0_q};
    assign i_arrayidx21_dijkstra0_mult_x_im9_add_1_o = $unsigned(i_arrayidx21_dijkstra0_mult_x_im9_add_1_a) + $unsigned(i_arrayidx21_dijkstra0_mult_x_im9_add_1_b);
    assign i_arrayidx21_dijkstra0_mult_x_im9_add_1_q = i_arrayidx21_dijkstra0_mult_x_im9_add_1_o[21:0];

    // i_arrayidx21_dijkstra0_mult_x_im9_shift2(BITSHIFT,435)@2
    assign i_arrayidx21_dijkstra0_mult_x_im9_shift2_qint = { i_arrayidx21_dijkstra0_mult_x_im9_add_1_q, 2'b00 };
    assign i_arrayidx21_dijkstra0_mult_x_im9_shift2_q = i_arrayidx21_dijkstra0_mult_x_im9_shift2_qint[23:0];

    // i_arrayidx21_dijkstra0_mult_x_sums_join_1(BITJOIN,393)@2
    assign i_arrayidx21_dijkstra0_mult_x_sums_join_1_q = {i_arrayidx21_dijkstra0_mult_x_sums_align_0_q, i_arrayidx21_dijkstra0_mult_x_im9_shift2_q};

    // i_arrayidx21_dijkstra0_mult_x_sums_result_add_0_0(ADD,397)@2
    assign i_arrayidx21_dijkstra0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx21_dijkstra0_mult_x_sums_join_1_q};
    assign i_arrayidx21_dijkstra0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx21_dijkstra0_mult_x_sums_join_4_q};
    assign i_arrayidx21_dijkstra0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx21_dijkstra0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx21_dijkstra0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx21_dijkstra0_mult_x_sums_result_add_0_0_q = i_arrayidx21_dijkstra0_mult_x_sums_result_add_0_0_o[70:0];

    // i_arrayidx21_dijkstra0_mult_extender_x(BITJOIN,304)@2
    assign i_arrayidx21_dijkstra0_mult_extender_x_q = {i_arrayidx21_dijkstra0_mult_multconst_x_q, i_arrayidx21_dijkstra0_mult_x_sums_result_add_0_0_q[69:0]};

    // i_arrayidx21_dijkstra0_trunc_sel_x(BITSELECT,306)@2
    assign i_arrayidx21_dijkstra0_trunc_sel_x_b = i_arrayidx21_dijkstra0_mult_extender_x_q[63:0];

    // redist6_i_arrayidx21_dijkstra0_trunc_sel_x_b_1(DELAY,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx21_dijkstra0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist6_i_arrayidx21_dijkstra0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx21_dijkstra0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg24(REG,347)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist3_sync_together265_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a9i32_graph369_dijkstra60(BLACKBOX,116)@3
    dijkstra_i_llvm_fpga_ffwd_dest_p1024a9i32_graph369_0 thei_llvm_fpga_ffwd_dest_p1024a9i32_graph369_dijkstra60 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024a9i32_graph369_dijkstra60_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx21_dijkstra0_add_x(ADD,292)@3
    assign i_arrayidx21_dijkstra0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a9i32_graph369_dijkstra60_out_dest_data_out_1_0};
    assign i_arrayidx21_dijkstra0_add_x_b = {1'b0, redist6_i_arrayidx21_dijkstra0_trunc_sel_x_b_1_q};
    assign i_arrayidx21_dijkstra0_add_x_o = $unsigned(i_arrayidx21_dijkstra0_add_x_a) + $unsigned(i_arrayidx21_dijkstra0_add_x_b);
    assign i_arrayidx21_dijkstra0_add_x_q = i_arrayidx21_dijkstra0_add_x_o[64:0];

    // i_arrayidx21_dijkstra0_dupName_0_trunc_sel_x(BITSELECT,309)@3
    assign i_arrayidx21_dijkstra0_dupName_0_trunc_sel_x_b = i_arrayidx21_dijkstra0_add_x_q[63:0];

    // i_arrayidx21_dijkstra0_dupName_0_add_x(ADD,299)@3
    assign i_arrayidx21_dijkstra0_dupName_0_add_x_a = {1'b0, i_arrayidx21_dijkstra0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx21_dijkstra0_dupName_0_add_x_b = {1'b0, i_arrayidx21_dijkstra0_dupName_1_trunc_sel_x_b};
    assign i_arrayidx21_dijkstra0_dupName_0_add_x_o = $unsigned(i_arrayidx21_dijkstra0_dupName_0_add_x_a) + $unsigned(i_arrayidx21_dijkstra0_dupName_0_add_x_b);
    assign i_arrayidx21_dijkstra0_dupName_0_add_x_q = i_arrayidx21_dijkstra0_dupName_0_add_x_o[64:0];

    // i_arrayidx21_dijkstra0_dupName_2_trunc_sel_x(BITSELECT,311)@3
    assign i_arrayidx21_dijkstra0_dupName_2_trunc_sel_x_b = i_arrayidx21_dijkstra0_dupName_0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm1_dijkstra64(BLACKBOX,126)@3
    // in in_i_stall@20000000
    // out out_lm1_dijkstra_avm_address@20000000
    // out out_lm1_dijkstra_avm_burstcount@20000000
    // out out_lm1_dijkstra_avm_byteenable@20000000
    // out out_lm1_dijkstra_avm_enable@20000000
    // out out_lm1_dijkstra_avm_read@20000000
    // out out_lm1_dijkstra_avm_write@20000000
    // out out_lm1_dijkstra_avm_writedata@20000000
    // out out_o_readdata@8
    // out out_o_stall@7
    // out out_o_valid@8
    dijkstra_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_dijkstra64 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx21_dijkstra0_dupName_2_trunc_sel_x_b),
        .in_i_predicate(i_first_cleanup_xor_or_dijkstra63_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg25_q),
        .in_lm1_dijkstra_avm_readdata(in_lm1_dijkstra_avm_readdata),
        .in_lm1_dijkstra_avm_readdatavalid(in_lm1_dijkstra_avm_readdatavalid),
        .in_lm1_dijkstra_avm_waitrequest(in_lm1_dijkstra_avm_waitrequest),
        .in_lm1_dijkstra_avm_writeack(in_lm1_dijkstra_avm_writeack),
        .out_lm1_dijkstra_avm_address(i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_address),
        .out_lm1_dijkstra_avm_burstcount(i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_burstcount),
        .out_lm1_dijkstra_avm_byteenable(i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_byteenable),
        .out_lm1_dijkstra_avm_enable(i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_enable),
        .out_lm1_dijkstra_avm_read(i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_read),
        .out_lm1_dijkstra_avm_write(i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_write),
        .out_lm1_dijkstra_avm_writedata(i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_dijkstra64_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,325)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_dist_sroa_0_3_replace_phi61_dijkstra8(BLACKBOX,106)@8
    dijkstra_i_llvm_fpga_ffwd_dest_i32_dist_sroa_0_3_replace_phi61_0 thei_llvm_fpga_ffwd_dest_i32_dist_sroa_0_3_replace_phi61_dijkstra8 (
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_46_0(i_llvm_fpga_ffwd_dest_i32_dist_sroa_0_3_replace_phi61_dijkstra8_out_dest_data_out_46_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,326)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg35(REG,358)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7(DELAY,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_0 <= '0;
            redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_1 <= '0;
            redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_2 <= '0;
            redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_3 <= '0;
            redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_0 <= $unsigned(redist30_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_2_q);
            redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_1 <= redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_0;
            redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_2 <= redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_1;
            redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_3 <= redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_2;
            redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_q <= redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_delay_3;
        end
    end

    // i_unnamed_dijkstra77(LOGICAL,204)@3 + 1
    assign i_unnamed_dijkstra77_qi = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_0206_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_dijkstra77_delay ( .xin(i_unnamed_dijkstra77_qi), .xout(i_unnamed_dijkstra77_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_i_unnamed_dijkstra77_q_5(DELAY,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_unnamed_dijkstra77_q_5_delay_0 <= '0;
            redist16_i_unnamed_dijkstra77_q_5_delay_1 <= '0;
            redist16_i_unnamed_dijkstra77_q_5_delay_2 <= '0;
            redist16_i_unnamed_dijkstra77_q_5_q <= '0;
        end
        else
        begin
            redist16_i_unnamed_dijkstra77_q_5_delay_0 <= $unsigned(i_unnamed_dijkstra77_q);
            redist16_i_unnamed_dijkstra77_q_5_delay_1 <= redist16_i_unnamed_dijkstra77_q_5_delay_0;
            redist16_i_unnamed_dijkstra77_q_5_delay_2 <= redist16_i_unnamed_dijkstra77_q_5_delay_1;
            redist16_i_unnamed_dijkstra77_q_5_q <= redist16_i_unnamed_dijkstra77_q_5_delay_2;
        end
    end

    // i_tobool22_dijkstra65(LOGICAL,193)@8
    assign i_tobool22_dijkstra65_q = $unsigned(i_llvm_fpga_mem_lm1_dijkstra64_out_o_readdata != c_i32_0206_q ? 1'b1 : 1'b0);

    // redist25_i_tobool_dijkstra57_q_5(DELAY,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_tobool_dijkstra57_q_5_delay_0 <= '0;
            redist25_i_tobool_dijkstra57_q_5_delay_1 <= '0;
            redist25_i_tobool_dijkstra57_q_5_delay_2 <= '0;
            redist25_i_tobool_dijkstra57_q_5_delay_3 <= '0;
            redist25_i_tobool_dijkstra57_q_5_q <= '0;
        end
        else
        begin
            redist25_i_tobool_dijkstra57_q_5_delay_0 <= $unsigned(i_tobool_dijkstra57_q);
            redist25_i_tobool_dijkstra57_q_5_delay_1 <= redist25_i_tobool_dijkstra57_q_5_delay_0;
            redist25_i_tobool_dijkstra57_q_5_delay_2 <= redist25_i_tobool_dijkstra57_q_5_delay_1;
            redist25_i_tobool_dijkstra57_q_5_delay_3 <= redist25_i_tobool_dijkstra57_q_5_delay_2;
            redist25_i_tobool_dijkstra57_q_5_q <= redist25_i_tobool_dijkstra57_q_5_delay_3;
        end
    end

    // i_reduction_dijkstra_9_dijkstra80(LOGICAL,191)@8
    assign i_reduction_dijkstra_9_dijkstra80_q = redist25_i_tobool_dijkstra57_q_5_q & i_tobool22_dijkstra65_q;

    // c_i32_2147483647216_recast_x(CONSTANT,248)
    assign c_i32_2147483647216_recast_x_q = $unsigned(32'b01111111111111111111111111111111);

    // i_cmp26_dijkstra70(LOGICAL,79)@8
    assign i_cmp26_dijkstra70_q = $unsigned(i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt333_dijkstra69_q == c_i32_2147483647216_recast_x_q ? 1'b1 : 1'b0);

    // i_reduction_dijkstra_13_dijkstra83(LOGICAL,164)@8
    assign i_reduction_dijkstra_13_dijkstra83_q = i_cmp26_dijkstra70_q & i_reduction_dijkstra_9_dijkstra80_q;

    // redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_notEnable(LOGICAL,492)
    assign redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_nor(LOGICAL,493)
    assign redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_nor_q = ~ (redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_notEnable_q | redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_sticky_ena_q);

    // redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_cmpReg(REG,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_sticky_ena(REG,494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_nor_q == 1'b1)
        begin
            redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_sticky_ena_q <= $unsigned(redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_cmpReg_q);
        end
    end

    // redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_enaAnd(LOGICAL,495)
    assign redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_enaAnd_q = redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_sticky_ena_q & VCC_q;

    // redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_rdcnt(COUNTER,489)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_rdcnt_i <= $unsigned(redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_rdcnt_q = redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_rdcnt_i[0:0];

    // redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_inputreg0(DELAY,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_inputreg0_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_inputreg0_q <= $unsigned(i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q);
        end
    end

    // redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_wraddr(REG,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_wraddr_q <= $unsigned(redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_rdcnt_q);
        end
    end

    // redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem(DUALMEM,488)
    assign redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_ia = $unsigned(redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_inputreg0_q);
    assign redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_aa = redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_wraddr_q;
    assign redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_ab = redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_rdcnt_q;
    assign redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_dmem (
        .clocken1(redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_reset0),
        .clock1(clock),
        .address_a(redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_aa),
        .data_a(redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_ab),
        .q_b(redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_q = redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_iq[31:0];

    // redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_outputreg0(DELAY,487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_outputreg0_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_outputreg0_q <= $unsigned(redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_mem_q);
        end
    end

    // i_unnamed_dijkstra84(LOGICAL,205)@8
    assign i_unnamed_dijkstra84_q = redist32_i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt324_dijkstra56_q_5_outputreg0_q | i_llvm_fpga_mem_lm1_dijkstra64_out_o_readdata;

    // i_unnamed_dijkstra85(LOGICAL,206)@8
    assign i_unnamed_dijkstra85_q = $unsigned(i_unnamed_dijkstra84_q == c_i32_0206_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstra87(LOGICAL,207)@8
    assign i_unnamed_dijkstra87_q = i_unnamed_dijkstra85_q | i_reduction_dijkstra_13_dijkstra83_q;

    // i_selcond_dijkstra_0_dijkstra88(LOGICAL,192)@8
    assign i_selcond_dijkstra_0_dijkstra88_q = i_unnamed_dijkstra87_q ^ VCC_q;

    // i_reduction_dijkstra_30_dijkstra121(LOGICAL,183)@8
    assign i_reduction_dijkstra_30_dijkstra121_q = i_selcond_dijkstra_0_dijkstra88_q & redist16_i_unnamed_dijkstra77_q_5_q;

    // i_not_cmp26_dijkstra79(LOGICAL,158)@8
    assign i_not_cmp26_dijkstra79_q = i_cmp26_dijkstra70_q ^ VCC_q;

    // i_reduction_dijkstra_10_dijkstra81(LOGICAL,162)@8
    assign i_reduction_dijkstra_10_dijkstra81_q = i_not_cmp26_dijkstra79_q & i_reduction_dijkstra_9_dijkstra80_q;

    // redist7_dupName_6_comparator_x_q_5(DELAY,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_dupName_6_comparator_x_q_5_delay_0 <= '0;
            redist7_dupName_6_comparator_x_q_5_delay_1 <= '0;
            redist7_dupName_6_comparator_x_q_5_delay_2 <= '0;
            redist7_dupName_6_comparator_x_q_5_delay_3 <= '0;
            redist7_dupName_6_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist7_dupName_6_comparator_x_q_5_delay_0 <= $unsigned(dupName_6_comparator_x_q);
            redist7_dupName_6_comparator_x_q_5_delay_1 <= redist7_dupName_6_comparator_x_q_5_delay_0;
            redist7_dupName_6_comparator_x_q_5_delay_2 <= redist7_dupName_6_comparator_x_q_5_delay_1;
            redist7_dupName_6_comparator_x_q_5_delay_3 <= redist7_dupName_6_comparator_x_q_5_delay_2;
            redist7_dupName_6_comparator_x_q_5_q <= redist7_dupName_6_comparator_x_q_5_delay_3;
        end
    end

    // redist8_dupName_5_comparator_x_q_5(DELAY,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_dupName_5_comparator_x_q_5_delay_0 <= '0;
            redist8_dupName_5_comparator_x_q_5_delay_1 <= '0;
            redist8_dupName_5_comparator_x_q_5_delay_2 <= '0;
            redist8_dupName_5_comparator_x_q_5_delay_3 <= '0;
            redist8_dupName_5_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist8_dupName_5_comparator_x_q_5_delay_0 <= $unsigned(dupName_5_comparator_x_q);
            redist8_dupName_5_comparator_x_q_5_delay_1 <= redist8_dupName_5_comparator_x_q_5_delay_0;
            redist8_dupName_5_comparator_x_q_5_delay_2 <= redist8_dupName_5_comparator_x_q_5_delay_1;
            redist8_dupName_5_comparator_x_q_5_delay_3 <= redist8_dupName_5_comparator_x_q_5_delay_2;
            redist8_dupName_5_comparator_x_q_5_q <= redist8_dupName_5_comparator_x_q_5_delay_3;
        end
    end

    // redist9_dupName_4_comparator_x_q_5(DELAY,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_dupName_4_comparator_x_q_5_delay_0 <= '0;
            redist9_dupName_4_comparator_x_q_5_delay_1 <= '0;
            redist9_dupName_4_comparator_x_q_5_delay_2 <= '0;
            redist9_dupName_4_comparator_x_q_5_delay_3 <= '0;
            redist9_dupName_4_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist9_dupName_4_comparator_x_q_5_delay_0 <= $unsigned(dupName_4_comparator_x_q);
            redist9_dupName_4_comparator_x_q_5_delay_1 <= redist9_dupName_4_comparator_x_q_5_delay_0;
            redist9_dupName_4_comparator_x_q_5_delay_2 <= redist9_dupName_4_comparator_x_q_5_delay_1;
            redist9_dupName_4_comparator_x_q_5_delay_3 <= redist9_dupName_4_comparator_x_q_5_delay_2;
            redist9_dupName_4_comparator_x_q_5_q <= redist9_dupName_4_comparator_x_q_5_delay_3;
        end
    end

    // redist10_dupName_3_comparator_x_q_5(DELAY,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_dupName_3_comparator_x_q_5_delay_0 <= '0;
            redist10_dupName_3_comparator_x_q_5_delay_1 <= '0;
            redist10_dupName_3_comparator_x_q_5_delay_2 <= '0;
            redist10_dupName_3_comparator_x_q_5_delay_3 <= '0;
            redist10_dupName_3_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist10_dupName_3_comparator_x_q_5_delay_0 <= $unsigned(dupName_3_comparator_x_q);
            redist10_dupName_3_comparator_x_q_5_delay_1 <= redist10_dupName_3_comparator_x_q_5_delay_0;
            redist10_dupName_3_comparator_x_q_5_delay_2 <= redist10_dupName_3_comparator_x_q_5_delay_1;
            redist10_dupName_3_comparator_x_q_5_delay_3 <= redist10_dupName_3_comparator_x_q_5_delay_2;
            redist10_dupName_3_comparator_x_q_5_q <= redist10_dupName_3_comparator_x_q_5_delay_3;
        end
    end

    // redist11_dupName_2_comparator_x_q_5(DELAY,453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_dupName_2_comparator_x_q_5_delay_0 <= '0;
            redist11_dupName_2_comparator_x_q_5_delay_1 <= '0;
            redist11_dupName_2_comparator_x_q_5_delay_2 <= '0;
            redist11_dupName_2_comparator_x_q_5_delay_3 <= '0;
            redist11_dupName_2_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist11_dupName_2_comparator_x_q_5_delay_0 <= $unsigned(dupName_2_comparator_x_q);
            redist11_dupName_2_comparator_x_q_5_delay_1 <= redist11_dupName_2_comparator_x_q_5_delay_0;
            redist11_dupName_2_comparator_x_q_5_delay_2 <= redist11_dupName_2_comparator_x_q_5_delay_1;
            redist11_dupName_2_comparator_x_q_5_delay_3 <= redist11_dupName_2_comparator_x_q_5_delay_2;
            redist11_dupName_2_comparator_x_q_5_q <= redist11_dupName_2_comparator_x_q_5_delay_3;
        end
    end

    // redist12_dupName_1_comparator_x_q_5(DELAY,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_dupName_1_comparator_x_q_5_delay_0 <= '0;
            redist12_dupName_1_comparator_x_q_5_delay_1 <= '0;
            redist12_dupName_1_comparator_x_q_5_delay_2 <= '0;
            redist12_dupName_1_comparator_x_q_5_delay_3 <= '0;
            redist12_dupName_1_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist12_dupName_1_comparator_x_q_5_delay_0 <= $unsigned(dupName_1_comparator_x_q);
            redist12_dupName_1_comparator_x_q_5_delay_1 <= redist12_dupName_1_comparator_x_q_5_delay_0;
            redist12_dupName_1_comparator_x_q_5_delay_2 <= redist12_dupName_1_comparator_x_q_5_delay_1;
            redist12_dupName_1_comparator_x_q_5_delay_3 <= redist12_dupName_1_comparator_x_q_5_delay_2;
            redist12_dupName_1_comparator_x_q_5_q <= redist12_dupName_1_comparator_x_q_5_delay_3;
        end
    end

    // redist13_dupName_0_comparator_x_q_5(DELAY,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_dupName_0_comparator_x_q_5_delay_0 <= '0;
            redist13_dupName_0_comparator_x_q_5_delay_1 <= '0;
            redist13_dupName_0_comparator_x_q_5_delay_2 <= '0;
            redist13_dupName_0_comparator_x_q_5_delay_3 <= '0;
            redist13_dupName_0_comparator_x_q_5_q <= '0;
        end
        else
        begin
            redist13_dupName_0_comparator_x_q_5_delay_0 <= $unsigned(dupName_0_comparator_x_q);
            redist13_dupName_0_comparator_x_q_5_delay_1 <= redist13_dupName_0_comparator_x_q_5_delay_0;
            redist13_dupName_0_comparator_x_q_5_delay_2 <= redist13_dupName_0_comparator_x_q_5_delay_1;
            redist13_dupName_0_comparator_x_q_5_delay_3 <= redist13_dupName_0_comparator_x_q_5_delay_2;
            redist13_dupName_0_comparator_x_q_5_q <= redist13_dupName_0_comparator_x_q_5_delay_3;
        end
    end

    // redist33_comparator_q_5(DELAY,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_comparator_q_5_delay_0 <= '0;
            redist33_comparator_q_5_delay_1 <= '0;
            redist33_comparator_q_5_delay_2 <= '0;
            redist33_comparator_q_5_delay_3 <= '0;
            redist33_comparator_q_5_q <= '0;
        end
        else
        begin
            redist33_comparator_q_5_delay_0 <= $unsigned(comparator_q);
            redist33_comparator_q_5_delay_1 <= redist33_comparator_q_5_delay_0;
            redist33_comparator_q_5_delay_2 <= redist33_comparator_q_5_delay_1;
            redist33_comparator_q_5_delay_3 <= redist33_comparator_q_5_delay_2;
            redist33_comparator_q_5_q <= redist33_comparator_q_5_delay_3;
        end
    end

    // i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt342_dijkstra74(SELECTOR,103)@8
    always @(redist33_comparator_q_5_q or i_dist_sroa_8_4_replace_phi_dijkstra13_q or redist13_dupName_0_comparator_x_q_5_q or i_dist_sroa_14_4_replace_phi_dijkstra16_q or redist12_dupName_1_comparator_x_q_5_q or i_dist_sroa_20_4_replace_phi_dijkstra19_q or redist11_dupName_2_comparator_x_q_5_q or i_dist_sroa_26_4_replace_phi_dijkstra22_q or redist10_dupName_3_comparator_x_q_5_q or i_dist_sroa_32_4_replace_phi_dijkstra25_q or redist9_dupName_4_comparator_x_q_5_q or i_dist_sroa_38_4_replace_phi_dijkstra28_q or redist8_dupName_5_comparator_x_q_5_q or i_dist_sroa_44_4_replace_phi_dijkstra31_q or redist7_dupName_6_comparator_x_q_5_q or i_dist_sroa_50_4_replace_phi_dijkstra34_q or i_dist_sroa_0_4_replace_phi_dijkstra10_q)
    begin
        i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt342_dijkstra74_q = i_dist_sroa_0_4_replace_phi_dijkstra10_q;
        if (redist7_dupName_6_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt342_dijkstra74_q = i_dist_sroa_50_4_replace_phi_dijkstra34_q;
        end
        if (redist8_dupName_5_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt342_dijkstra74_q = i_dist_sroa_44_4_replace_phi_dijkstra31_q;
        end
        if (redist9_dupName_4_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt342_dijkstra74_q = i_dist_sroa_38_4_replace_phi_dijkstra28_q;
        end
        if (redist10_dupName_3_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt342_dijkstra74_q = i_dist_sroa_32_4_replace_phi_dijkstra25_q;
        end
        if (redist11_dupName_2_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt342_dijkstra74_q = i_dist_sroa_26_4_replace_phi_dijkstra22_q;
        end
        if (redist12_dupName_1_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt342_dijkstra74_q = i_dist_sroa_20_4_replace_phi_dijkstra19_q;
        end
        if (redist13_dupName_0_comparator_x_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt342_dijkstra74_q = i_dist_sroa_14_4_replace_phi_dijkstra16_q;
        end
        if (redist33_comparator_q_5_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt342_dijkstra74_q = i_dist_sroa_8_4_replace_phi_dijkstra13_q;
        end
    end

    // i_cmp36_dijkstra75(COMPARE,80)@8
    assign i_cmp36_dijkstra75_a = $unsigned({{2{bgTrunc_i_add_dijkstra72_sel_x_b[31]}}, bgTrunc_i_add_dijkstra72_sel_x_b});
    assign i_cmp36_dijkstra75_b = $unsigned({{2{i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt342_dijkstra74_q[31]}}, i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt342_dijkstra74_q});
    assign i_cmp36_dijkstra75_o = $unsigned($signed(i_cmp36_dijkstra75_a) - $signed(i_cmp36_dijkstra75_b));
    assign i_cmp36_dijkstra75_c[0] = i_cmp36_dijkstra75_o[33];

    // i_reduction_dijkstra_11_dijkstra82(LOGICAL,163)@8
    assign i_reduction_dijkstra_11_dijkstra82_q = i_cmp36_dijkstra75_c & i_reduction_dijkstra_10_dijkstra81_q;

    // i_reduction_dijkstra_31_dijkstra122(LOGICAL,184)@8
    assign i_reduction_dijkstra_31_dijkstra122_q = i_reduction_dijkstra_11_dijkstra82_q & i_reduction_dijkstra_30_dijkstra121_q;

    // i_reduction_dijkstra_8_dijkstra123(MUX,190)@8
    assign i_reduction_dijkstra_8_dijkstra123_s = i_reduction_dijkstra_31_dijkstra122_q;
    always @(i_reduction_dijkstra_8_dijkstra123_s or i_dist_sroa_0_4_replace_phi_dijkstra10_q or bgTrunc_i_add_dijkstra72_sel_x_b)
    begin
        unique case (i_reduction_dijkstra_8_dijkstra123_s)
            1'b0 : i_reduction_dijkstra_8_dijkstra123_q = i_dist_sroa_0_4_replace_phi_dijkstra10_q;
            1'b1 : i_reduction_dijkstra_8_dijkstra123_q = bgTrunc_i_add_dijkstra72_sel_x_b;
            default : i_reduction_dijkstra_8_dijkstra123_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_dist_sroa_0_4_push47_dijkstra124(BLACKBOX,144)@8
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_0_4_push47_0 thei_llvm_fpga_push_i32_dist_sroa_0_4_push47_dijkstra124 (
        .in_data_in(i_reduction_dijkstra_8_dijkstra123_q),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i32_dist_sroa_0_4_pop47_dijkstra9_out_feedback_stall_out_47),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i32_dist_sroa_0_4_push47_dijkstra124_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i32_dist_sroa_0_4_push47_dijkstra124_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_0_4_pop47_dijkstra9(BLACKBOX,129)@8
    // out out_feedback_stall_out_47@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_0_4_pop47_0 thei_llvm_fpga_pop_i32_dist_sroa_0_4_pop47_dijkstra9 (
        .in_data_in(c_i32_0206_q),
        .in_dir(redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q),
        .in_feedback_in_47(i_llvm_fpga_push_i32_dist_sroa_0_4_push47_dijkstra124_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i32_dist_sroa_0_4_push47_dijkstra124_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_0_4_pop47_dijkstra9_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i32_dist_sroa_0_4_pop47_dijkstra9_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7(DELAY,443)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7 ( .xin(redist0_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_1_q), .xout(redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_dist_sroa_0_4_replace_phi_dijkstra10(MUX,81)@8
    assign i_dist_sroa_0_4_replace_phi_dijkstra10_s = redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q;
    always @(i_dist_sroa_0_4_replace_phi_dijkstra10_s or i_llvm_fpga_pop_i32_dist_sroa_0_4_pop47_dijkstra9_out_data_out or i_llvm_fpga_ffwd_dest_i32_dist_sroa_0_3_replace_phi61_dijkstra8_out_dest_data_out_46_0)
    begin
        unique case (i_dist_sroa_0_4_replace_phi_dijkstra10_s)
            1'b0 : i_dist_sroa_0_4_replace_phi_dijkstra10_q = i_llvm_fpga_pop_i32_dist_sroa_0_4_pop47_dijkstra9_out_data_out;
            1'b1 : i_dist_sroa_0_4_replace_phi_dijkstra10_q = i_llvm_fpga_ffwd_dest_i32_dist_sroa_0_3_replace_phi61_dijkstra8_out_dest_data_out_46_0;
            default : i_dist_sroa_0_4_replace_phi_dijkstra10_q = 32'b0;
        endcase
    end

    // valid_fanout_reg26(REG,349)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist4_sync_together265_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_acl_26565_dijkstra68(BLACKBOX,104)@7
    dijkstra_i_llvm_fpga_ffwd_dest_i32_acl_26565_0 thei_llvm_fpga_ffwd_dest_i32_acl_26565_dijkstra68 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i32_acl_26565_dijkstra68_out_dest_data_out_49_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_comparator_x(LOGICAL,283)@7 + 1
    assign dupName_14_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_acl_26565_dijkstra68_out_dest_data_out_49_0 == c_i32_8207_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_14_comparator_x_delay ( .xin(dupName_14_comparator_x_qi), .xout(dupName_14_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg16(REG,339)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_dist_sroa_44_3_replace_phi54_dijkstra29(BLACKBOX,112)@8
    dijkstra_i_llvm_fpga_ffwd_dest_i32_dist_sroa_44_3_replace_phi54_0 thei_llvm_fpga_ffwd_dest_i32_dist_sroa_44_3_replace_phi54_dijkstra29 (
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_dest_data_out_39_0(i_llvm_fpga_ffwd_dest_i32_dist_sroa_44_3_replace_phi54_dijkstra29_out_dest_data_out_39_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg17(REG,340)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg28(REG,351)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_unnamed_dijkstra40(LOGICAL,196)@3 + 1
    assign i_unnamed_dijkstra40_qi = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_7208_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_dijkstra40_delay ( .xin(i_unnamed_dijkstra40_qi), .xout(i_unnamed_dijkstra40_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist23_i_unnamed_dijkstra40_q_5(DELAY,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_unnamed_dijkstra40_q_5_delay_0 <= '0;
            redist23_i_unnamed_dijkstra40_q_5_delay_1 <= '0;
            redist23_i_unnamed_dijkstra40_q_5_delay_2 <= '0;
            redist23_i_unnamed_dijkstra40_q_5_q <= '0;
        end
        else
        begin
            redist23_i_unnamed_dijkstra40_q_5_delay_0 <= $unsigned(i_unnamed_dijkstra40_q);
            redist23_i_unnamed_dijkstra40_q_5_delay_1 <= redist23_i_unnamed_dijkstra40_q_5_delay_0;
            redist23_i_unnamed_dijkstra40_q_5_delay_2 <= redist23_i_unnamed_dijkstra40_q_5_delay_1;
            redist23_i_unnamed_dijkstra40_q_5_q <= redist23_i_unnamed_dijkstra40_q_5_delay_2;
        end
    end

    // i_reduction_dijkstra_16_dijkstra93(LOGICAL,167)@8
    assign i_reduction_dijkstra_16_dijkstra93_q = i_selcond_dijkstra_0_dijkstra88_q & redist23_i_unnamed_dijkstra40_q_5_q;

    // i_reduction_dijkstra_17_dijkstra94(LOGICAL,168)@8
    assign i_reduction_dijkstra_17_dijkstra94_q = i_reduction_dijkstra_11_dijkstra82_q & i_reduction_dijkstra_16_dijkstra93_q;

    // i_reduction_dijkstra_1_dijkstra95(MUX,171)@8
    assign i_reduction_dijkstra_1_dijkstra95_s = i_reduction_dijkstra_17_dijkstra94_q;
    always @(i_reduction_dijkstra_1_dijkstra95_s or i_dist_sroa_44_4_replace_phi_dijkstra31_q or bgTrunc_i_add_dijkstra72_sel_x_b)
    begin
        unique case (i_reduction_dijkstra_1_dijkstra95_s)
            1'b0 : i_reduction_dijkstra_1_dijkstra95_q = i_dist_sroa_44_4_replace_phi_dijkstra31_q;
            1'b1 : i_reduction_dijkstra_1_dijkstra95_q = bgTrunc_i_add_dijkstra72_sel_x_b;
            default : i_reduction_dijkstra_1_dijkstra95_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_dist_sroa_44_4_push40_dijkstra96(BLACKBOX,150)@8
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_44_4_push40_0 thei_llvm_fpga_push_i32_dist_sroa_44_4_push40_dijkstra96 (
        .in_data_in(i_reduction_dijkstra_1_dijkstra95_q),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i32_dist_sroa_44_4_pop40_dijkstra30_out_feedback_stall_out_40),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i32_dist_sroa_44_4_push40_dijkstra96_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i32_dist_sroa_44_4_push40_dijkstra96_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_44_4_pop40_dijkstra30(BLACKBOX,135)@8
    // out out_feedback_stall_out_40@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_44_4_pop40_0 thei_llvm_fpga_pop_i32_dist_sroa_44_4_pop40_dijkstra30 (
        .in_data_in(c_i32_0206_q),
        .in_dir(redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q),
        .in_feedback_in_40(i_llvm_fpga_push_i32_dist_sroa_44_4_push40_dijkstra96_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i32_dist_sroa_44_4_push40_dijkstra96_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_44_4_pop40_dijkstra30_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i32_dist_sroa_44_4_pop40_dijkstra30_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_dist_sroa_44_4_replace_phi_dijkstra31(MUX,87)@8
    assign i_dist_sroa_44_4_replace_phi_dijkstra31_s = redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q;
    always @(i_dist_sroa_44_4_replace_phi_dijkstra31_s or i_llvm_fpga_pop_i32_dist_sroa_44_4_pop40_dijkstra30_out_data_out or i_llvm_fpga_ffwd_dest_i32_dist_sroa_44_3_replace_phi54_dijkstra29_out_dest_data_out_39_0)
    begin
        unique case (i_dist_sroa_44_4_replace_phi_dijkstra31_s)
            1'b0 : i_dist_sroa_44_4_replace_phi_dijkstra31_q = i_llvm_fpga_pop_i32_dist_sroa_44_4_pop40_dijkstra30_out_data_out;
            1'b1 : i_dist_sroa_44_4_replace_phi_dijkstra31_q = i_llvm_fpga_ffwd_dest_i32_dist_sroa_44_3_replace_phi54_dijkstra29_out_dest_data_out_39_0;
            default : i_dist_sroa_44_4_replace_phi_dijkstra31_q = 32'b0;
        endcase
    end

    // dupName_13_comparator_x(LOGICAL,282)@7 + 1
    assign dupName_13_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_acl_26565_dijkstra68_out_dest_data_out_49_0 == c_i32_7208_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_13_comparator_x_delay ( .xin(dupName_13_comparator_x_qi), .xout(dupName_13_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg14(REG,337)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_dist_sroa_38_3_replace_phi55_dijkstra26(BLACKBOX,111)@8
    dijkstra_i_llvm_fpga_ffwd_dest_i32_dist_sroa_38_3_replace_phi55_0 thei_llvm_fpga_ffwd_dest_i32_dist_sroa_38_3_replace_phi55_dijkstra26 (
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_40_0(i_llvm_fpga_ffwd_dest_i32_dist_sroa_38_3_replace_phi55_dijkstra26_out_dest_data_out_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg15(REG,338)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg29(REG,352)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_unnamed_dijkstra42(LOGICAL,197)@3 + 1
    assign i_unnamed_dijkstra42_qi = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_6209_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_dijkstra42_delay ( .xin(i_unnamed_dijkstra42_qi), .xout(i_unnamed_dijkstra42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_unnamed_dijkstra42_q_5(DELAY,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_unnamed_dijkstra42_q_5_delay_0 <= '0;
            redist22_i_unnamed_dijkstra42_q_5_delay_1 <= '0;
            redist22_i_unnamed_dijkstra42_q_5_delay_2 <= '0;
            redist22_i_unnamed_dijkstra42_q_5_q <= '0;
        end
        else
        begin
            redist22_i_unnamed_dijkstra42_q_5_delay_0 <= $unsigned(i_unnamed_dijkstra42_q);
            redist22_i_unnamed_dijkstra42_q_5_delay_1 <= redist22_i_unnamed_dijkstra42_q_5_delay_0;
            redist22_i_unnamed_dijkstra42_q_5_delay_2 <= redist22_i_unnamed_dijkstra42_q_5_delay_1;
            redist22_i_unnamed_dijkstra42_q_5_q <= redist22_i_unnamed_dijkstra42_q_5_delay_2;
        end
    end

    // i_reduction_dijkstra_18_dijkstra97(LOGICAL,169)@8
    assign i_reduction_dijkstra_18_dijkstra97_q = i_selcond_dijkstra_0_dijkstra88_q & redist22_i_unnamed_dijkstra42_q_5_q;

    // i_reduction_dijkstra_19_dijkstra98(LOGICAL,170)@8
    assign i_reduction_dijkstra_19_dijkstra98_q = i_reduction_dijkstra_11_dijkstra82_q & i_reduction_dijkstra_18_dijkstra97_q;

    // i_reduction_dijkstra_2_dijkstra99(MUX,182)@8
    assign i_reduction_dijkstra_2_dijkstra99_s = i_reduction_dijkstra_19_dijkstra98_q;
    always @(i_reduction_dijkstra_2_dijkstra99_s or i_dist_sroa_38_4_replace_phi_dijkstra28_q or bgTrunc_i_add_dijkstra72_sel_x_b)
    begin
        unique case (i_reduction_dijkstra_2_dijkstra99_s)
            1'b0 : i_reduction_dijkstra_2_dijkstra99_q = i_dist_sroa_38_4_replace_phi_dijkstra28_q;
            1'b1 : i_reduction_dijkstra_2_dijkstra99_q = bgTrunc_i_add_dijkstra72_sel_x_b;
            default : i_reduction_dijkstra_2_dijkstra99_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_dist_sroa_38_4_push41_dijkstra100(BLACKBOX,149)@8
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_38_4_push41_0 thei_llvm_fpga_push_i32_dist_sroa_38_4_push41_dijkstra100 (
        .in_data_in(i_reduction_dijkstra_2_dijkstra99_q),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i32_dist_sroa_38_4_pop41_dijkstra27_out_feedback_stall_out_41),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i32_dist_sroa_38_4_push41_dijkstra100_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i32_dist_sroa_38_4_push41_dijkstra100_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_38_4_pop41_dijkstra27(BLACKBOX,134)@8
    // out out_feedback_stall_out_41@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_38_4_pop41_0 thei_llvm_fpga_pop_i32_dist_sroa_38_4_pop41_dijkstra27 (
        .in_data_in(c_i32_0206_q),
        .in_dir(redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q),
        .in_feedback_in_41(i_llvm_fpga_push_i32_dist_sroa_38_4_push41_dijkstra100_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i32_dist_sroa_38_4_push41_dijkstra100_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_38_4_pop41_dijkstra27_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i32_dist_sroa_38_4_pop41_dijkstra27_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_dist_sroa_38_4_replace_phi_dijkstra28(MUX,86)@8
    assign i_dist_sroa_38_4_replace_phi_dijkstra28_s = redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q;
    always @(i_dist_sroa_38_4_replace_phi_dijkstra28_s or i_llvm_fpga_pop_i32_dist_sroa_38_4_pop41_dijkstra27_out_data_out or i_llvm_fpga_ffwd_dest_i32_dist_sroa_38_3_replace_phi55_dijkstra26_out_dest_data_out_40_0)
    begin
        unique case (i_dist_sroa_38_4_replace_phi_dijkstra28_s)
            1'b0 : i_dist_sroa_38_4_replace_phi_dijkstra28_q = i_llvm_fpga_pop_i32_dist_sroa_38_4_pop41_dijkstra27_out_data_out;
            1'b1 : i_dist_sroa_38_4_replace_phi_dijkstra28_q = i_llvm_fpga_ffwd_dest_i32_dist_sroa_38_3_replace_phi55_dijkstra26_out_dest_data_out_40_0;
            default : i_dist_sroa_38_4_replace_phi_dijkstra28_q = 32'b0;
        endcase
    end

    // dupName_12_comparator_x(LOGICAL,281)@7 + 1
    assign dupName_12_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_acl_26565_dijkstra68_out_dest_data_out_49_0 == c_i32_6209_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_12_comparator_x_delay ( .xin(dupName_12_comparator_x_qi), .xout(dupName_12_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg12(REG,335)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_dist_sroa_32_3_replace_phi56_dijkstra23(BLACKBOX,110)@8
    dijkstra_i_llvm_fpga_ffwd_dest_i32_dist_sroa_32_3_replace_phi56_0 thei_llvm_fpga_ffwd_dest_i32_dist_sroa_32_3_replace_phi56_dijkstra23 (
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_41_0(i_llvm_fpga_ffwd_dest_i32_dist_sroa_32_3_replace_phi56_dijkstra23_out_dest_data_out_41_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,336)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg30(REG,353)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_unnamed_dijkstra44(LOGICAL,198)@3 + 1
    assign i_unnamed_dijkstra44_qi = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_5210_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_dijkstra44_delay ( .xin(i_unnamed_dijkstra44_qi), .xout(i_unnamed_dijkstra44_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_i_unnamed_dijkstra44_q_5(DELAY,463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_unnamed_dijkstra44_q_5_delay_0 <= '0;
            redist21_i_unnamed_dijkstra44_q_5_delay_1 <= '0;
            redist21_i_unnamed_dijkstra44_q_5_delay_2 <= '0;
            redist21_i_unnamed_dijkstra44_q_5_q <= '0;
        end
        else
        begin
            redist21_i_unnamed_dijkstra44_q_5_delay_0 <= $unsigned(i_unnamed_dijkstra44_q);
            redist21_i_unnamed_dijkstra44_q_5_delay_1 <= redist21_i_unnamed_dijkstra44_q_5_delay_0;
            redist21_i_unnamed_dijkstra44_q_5_delay_2 <= redist21_i_unnamed_dijkstra44_q_5_delay_1;
            redist21_i_unnamed_dijkstra44_q_5_q <= redist21_i_unnamed_dijkstra44_q_5_delay_2;
        end
    end

    // i_reduction_dijkstra_20_dijkstra101(LOGICAL,172)@8
    assign i_reduction_dijkstra_20_dijkstra101_q = i_selcond_dijkstra_0_dijkstra88_q & redist21_i_unnamed_dijkstra44_q_5_q;

    // i_reduction_dijkstra_21_dijkstra102(LOGICAL,173)@8
    assign i_reduction_dijkstra_21_dijkstra102_q = i_reduction_dijkstra_11_dijkstra82_q & i_reduction_dijkstra_20_dijkstra101_q;

    // i_reduction_dijkstra_3_dijkstra103(MUX,185)@8
    assign i_reduction_dijkstra_3_dijkstra103_s = i_reduction_dijkstra_21_dijkstra102_q;
    always @(i_reduction_dijkstra_3_dijkstra103_s or i_dist_sroa_32_4_replace_phi_dijkstra25_q or bgTrunc_i_add_dijkstra72_sel_x_b)
    begin
        unique case (i_reduction_dijkstra_3_dijkstra103_s)
            1'b0 : i_reduction_dijkstra_3_dijkstra103_q = i_dist_sroa_32_4_replace_phi_dijkstra25_q;
            1'b1 : i_reduction_dijkstra_3_dijkstra103_q = bgTrunc_i_add_dijkstra72_sel_x_b;
            default : i_reduction_dijkstra_3_dijkstra103_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_dist_sroa_32_4_push42_dijkstra104(BLACKBOX,148)@8
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_32_4_push42_0 thei_llvm_fpga_push_i32_dist_sroa_32_4_push42_dijkstra104 (
        .in_data_in(i_reduction_dijkstra_3_dijkstra103_q),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i32_dist_sroa_32_4_pop42_dijkstra24_out_feedback_stall_out_42),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i32_dist_sroa_32_4_push42_dijkstra104_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i32_dist_sroa_32_4_push42_dijkstra104_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_32_4_pop42_dijkstra24(BLACKBOX,133)@8
    // out out_feedback_stall_out_42@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_32_4_pop42_0 thei_llvm_fpga_pop_i32_dist_sroa_32_4_pop42_dijkstra24 (
        .in_data_in(c_i32_0206_q),
        .in_dir(redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q),
        .in_feedback_in_42(i_llvm_fpga_push_i32_dist_sroa_32_4_push42_dijkstra104_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i32_dist_sroa_32_4_push42_dijkstra104_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_32_4_pop42_dijkstra24_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i32_dist_sroa_32_4_pop42_dijkstra24_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_dist_sroa_32_4_replace_phi_dijkstra25(MUX,85)@8
    assign i_dist_sroa_32_4_replace_phi_dijkstra25_s = redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q;
    always @(i_dist_sroa_32_4_replace_phi_dijkstra25_s or i_llvm_fpga_pop_i32_dist_sroa_32_4_pop42_dijkstra24_out_data_out or i_llvm_fpga_ffwd_dest_i32_dist_sroa_32_3_replace_phi56_dijkstra23_out_dest_data_out_41_0)
    begin
        unique case (i_dist_sroa_32_4_replace_phi_dijkstra25_s)
            1'b0 : i_dist_sroa_32_4_replace_phi_dijkstra25_q = i_llvm_fpga_pop_i32_dist_sroa_32_4_pop42_dijkstra24_out_data_out;
            1'b1 : i_dist_sroa_32_4_replace_phi_dijkstra25_q = i_llvm_fpga_ffwd_dest_i32_dist_sroa_32_3_replace_phi56_dijkstra23_out_dest_data_out_41_0;
            default : i_dist_sroa_32_4_replace_phi_dijkstra25_q = 32'b0;
        endcase
    end

    // dupName_11_comparator_x(LOGICAL,280)@7 + 1
    assign dupName_11_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_acl_26565_dijkstra68_out_dest_data_out_49_0 == c_i32_5210_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_11_comparator_x_delay ( .xin(dupName_11_comparator_x_qi), .xout(dupName_11_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg10(REG,333)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_dist_sroa_26_3_replace_phi57_dijkstra20(BLACKBOX,109)@8
    dijkstra_i_llvm_fpga_ffwd_dest_i32_dist_sroa_26_3_replace_phi57_0 thei_llvm_fpga_ffwd_dest_i32_dist_sroa_26_3_replace_phi57_dijkstra20 (
        .in_intel_reserved_ffwd_42_0(in_intel_reserved_ffwd_42_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_42_0(i_llvm_fpga_ffwd_dest_i32_dist_sroa_26_3_replace_phi57_dijkstra20_out_dest_data_out_42_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,334)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg31(REG,354)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_unnamed_dijkstra46(LOGICAL,199)@3 + 1
    assign i_unnamed_dijkstra46_qi = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_4211_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_dijkstra46_delay ( .xin(i_unnamed_dijkstra46_qi), .xout(i_unnamed_dijkstra46_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_i_unnamed_dijkstra46_q_5(DELAY,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_unnamed_dijkstra46_q_5_delay_0 <= '0;
            redist20_i_unnamed_dijkstra46_q_5_delay_1 <= '0;
            redist20_i_unnamed_dijkstra46_q_5_delay_2 <= '0;
            redist20_i_unnamed_dijkstra46_q_5_q <= '0;
        end
        else
        begin
            redist20_i_unnamed_dijkstra46_q_5_delay_0 <= $unsigned(i_unnamed_dijkstra46_q);
            redist20_i_unnamed_dijkstra46_q_5_delay_1 <= redist20_i_unnamed_dijkstra46_q_5_delay_0;
            redist20_i_unnamed_dijkstra46_q_5_delay_2 <= redist20_i_unnamed_dijkstra46_q_5_delay_1;
            redist20_i_unnamed_dijkstra46_q_5_q <= redist20_i_unnamed_dijkstra46_q_5_delay_2;
        end
    end

    // i_reduction_dijkstra_22_dijkstra105(LOGICAL,174)@8
    assign i_reduction_dijkstra_22_dijkstra105_q = i_selcond_dijkstra_0_dijkstra88_q & redist20_i_unnamed_dijkstra46_q_5_q;

    // i_reduction_dijkstra_23_dijkstra106(LOGICAL,175)@8
    assign i_reduction_dijkstra_23_dijkstra106_q = i_reduction_dijkstra_11_dijkstra82_q & i_reduction_dijkstra_22_dijkstra105_q;

    // i_reduction_dijkstra_4_dijkstra107(MUX,186)@8
    assign i_reduction_dijkstra_4_dijkstra107_s = i_reduction_dijkstra_23_dijkstra106_q;
    always @(i_reduction_dijkstra_4_dijkstra107_s or i_dist_sroa_26_4_replace_phi_dijkstra22_q or bgTrunc_i_add_dijkstra72_sel_x_b)
    begin
        unique case (i_reduction_dijkstra_4_dijkstra107_s)
            1'b0 : i_reduction_dijkstra_4_dijkstra107_q = i_dist_sroa_26_4_replace_phi_dijkstra22_q;
            1'b1 : i_reduction_dijkstra_4_dijkstra107_q = bgTrunc_i_add_dijkstra72_sel_x_b;
            default : i_reduction_dijkstra_4_dijkstra107_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_dist_sroa_26_4_push43_dijkstra108(BLACKBOX,147)@8
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_26_4_push43_0 thei_llvm_fpga_push_i32_dist_sroa_26_4_push43_dijkstra108 (
        .in_data_in(i_reduction_dijkstra_4_dijkstra107_q),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i32_dist_sroa_26_4_pop43_dijkstra21_out_feedback_stall_out_43),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i32_dist_sroa_26_4_push43_dijkstra108_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i32_dist_sroa_26_4_push43_dijkstra108_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_26_4_pop43_dijkstra21(BLACKBOX,132)@8
    // out out_feedback_stall_out_43@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_26_4_pop43_0 thei_llvm_fpga_pop_i32_dist_sroa_26_4_pop43_dijkstra21 (
        .in_data_in(c_i32_0206_q),
        .in_dir(redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q),
        .in_feedback_in_43(i_llvm_fpga_push_i32_dist_sroa_26_4_push43_dijkstra108_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i32_dist_sroa_26_4_push43_dijkstra108_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_26_4_pop43_dijkstra21_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i32_dist_sroa_26_4_pop43_dijkstra21_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_dist_sroa_26_4_replace_phi_dijkstra22(MUX,84)@8
    assign i_dist_sroa_26_4_replace_phi_dijkstra22_s = redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q;
    always @(i_dist_sroa_26_4_replace_phi_dijkstra22_s or i_llvm_fpga_pop_i32_dist_sroa_26_4_pop43_dijkstra21_out_data_out or i_llvm_fpga_ffwd_dest_i32_dist_sroa_26_3_replace_phi57_dijkstra20_out_dest_data_out_42_0)
    begin
        unique case (i_dist_sroa_26_4_replace_phi_dijkstra22_s)
            1'b0 : i_dist_sroa_26_4_replace_phi_dijkstra22_q = i_llvm_fpga_pop_i32_dist_sroa_26_4_pop43_dijkstra21_out_data_out;
            1'b1 : i_dist_sroa_26_4_replace_phi_dijkstra22_q = i_llvm_fpga_ffwd_dest_i32_dist_sroa_26_3_replace_phi57_dijkstra20_out_dest_data_out_42_0;
            default : i_dist_sroa_26_4_replace_phi_dijkstra22_q = 32'b0;
        endcase
    end

    // dupName_10_comparator_x(LOGICAL,279)@7 + 1
    assign dupName_10_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_acl_26565_dijkstra68_out_dest_data_out_49_0 == c_i32_4211_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_10_comparator_x_delay ( .xin(dupName_10_comparator_x_qi), .xout(dupName_10_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg8(REG,331)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_dist_sroa_20_3_replace_phi58_dijkstra17(BLACKBOX,108)@8
    dijkstra_i_llvm_fpga_ffwd_dest_i32_dist_sroa_20_3_replace_phi58_0 thei_llvm_fpga_ffwd_dest_i32_dist_sroa_20_3_replace_phi58_dijkstra17 (
        .in_intel_reserved_ffwd_43_0(in_intel_reserved_ffwd_43_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_43_0(i_llvm_fpga_ffwd_dest_i32_dist_sroa_20_3_replace_phi58_dijkstra17_out_dest_data_out_43_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,332)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg32(REG,355)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_unnamed_dijkstra48(LOGICAL,200)@3 + 1
    assign i_unnamed_dijkstra48_qi = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_3212_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_dijkstra48_delay ( .xin(i_unnamed_dijkstra48_qi), .xout(i_unnamed_dijkstra48_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_i_unnamed_dijkstra48_q_5(DELAY,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_unnamed_dijkstra48_q_5_delay_0 <= '0;
            redist19_i_unnamed_dijkstra48_q_5_delay_1 <= '0;
            redist19_i_unnamed_dijkstra48_q_5_delay_2 <= '0;
            redist19_i_unnamed_dijkstra48_q_5_q <= '0;
        end
        else
        begin
            redist19_i_unnamed_dijkstra48_q_5_delay_0 <= $unsigned(i_unnamed_dijkstra48_q);
            redist19_i_unnamed_dijkstra48_q_5_delay_1 <= redist19_i_unnamed_dijkstra48_q_5_delay_0;
            redist19_i_unnamed_dijkstra48_q_5_delay_2 <= redist19_i_unnamed_dijkstra48_q_5_delay_1;
            redist19_i_unnamed_dijkstra48_q_5_q <= redist19_i_unnamed_dijkstra48_q_5_delay_2;
        end
    end

    // i_reduction_dijkstra_24_dijkstra109(LOGICAL,176)@8
    assign i_reduction_dijkstra_24_dijkstra109_q = i_selcond_dijkstra_0_dijkstra88_q & redist19_i_unnamed_dijkstra48_q_5_q;

    // i_reduction_dijkstra_25_dijkstra110(LOGICAL,177)@8
    assign i_reduction_dijkstra_25_dijkstra110_q = i_reduction_dijkstra_11_dijkstra82_q & i_reduction_dijkstra_24_dijkstra109_q;

    // i_reduction_dijkstra_5_dijkstra111(MUX,187)@8
    assign i_reduction_dijkstra_5_dijkstra111_s = i_reduction_dijkstra_25_dijkstra110_q;
    always @(i_reduction_dijkstra_5_dijkstra111_s or i_dist_sroa_20_4_replace_phi_dijkstra19_q or bgTrunc_i_add_dijkstra72_sel_x_b)
    begin
        unique case (i_reduction_dijkstra_5_dijkstra111_s)
            1'b0 : i_reduction_dijkstra_5_dijkstra111_q = i_dist_sroa_20_4_replace_phi_dijkstra19_q;
            1'b1 : i_reduction_dijkstra_5_dijkstra111_q = bgTrunc_i_add_dijkstra72_sel_x_b;
            default : i_reduction_dijkstra_5_dijkstra111_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_dist_sroa_20_4_push44_dijkstra112(BLACKBOX,146)@8
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_20_4_push44_0 thei_llvm_fpga_push_i32_dist_sroa_20_4_push44_dijkstra112 (
        .in_data_in(i_reduction_dijkstra_5_dijkstra111_q),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i32_dist_sroa_20_4_pop44_dijkstra18_out_feedback_stall_out_44),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i32_dist_sroa_20_4_push44_dijkstra112_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i32_dist_sroa_20_4_push44_dijkstra112_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_20_4_pop44_dijkstra18(BLACKBOX,131)@8
    // out out_feedback_stall_out_44@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_20_4_pop44_0 thei_llvm_fpga_pop_i32_dist_sroa_20_4_pop44_dijkstra18 (
        .in_data_in(c_i32_0206_q),
        .in_dir(redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q),
        .in_feedback_in_44(i_llvm_fpga_push_i32_dist_sroa_20_4_push44_dijkstra112_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i32_dist_sroa_20_4_push44_dijkstra112_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_20_4_pop44_dijkstra18_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i32_dist_sroa_20_4_pop44_dijkstra18_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_dist_sroa_20_4_replace_phi_dijkstra19(MUX,83)@8
    assign i_dist_sroa_20_4_replace_phi_dijkstra19_s = redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q;
    always @(i_dist_sroa_20_4_replace_phi_dijkstra19_s or i_llvm_fpga_pop_i32_dist_sroa_20_4_pop44_dijkstra18_out_data_out or i_llvm_fpga_ffwd_dest_i32_dist_sroa_20_3_replace_phi58_dijkstra17_out_dest_data_out_43_0)
    begin
        unique case (i_dist_sroa_20_4_replace_phi_dijkstra19_s)
            1'b0 : i_dist_sroa_20_4_replace_phi_dijkstra19_q = i_llvm_fpga_pop_i32_dist_sroa_20_4_pop44_dijkstra18_out_data_out;
            1'b1 : i_dist_sroa_20_4_replace_phi_dijkstra19_q = i_llvm_fpga_ffwd_dest_i32_dist_sroa_20_3_replace_phi58_dijkstra17_out_dest_data_out_43_0;
            default : i_dist_sroa_20_4_replace_phi_dijkstra19_q = 32'b0;
        endcase
    end

    // dupName_9_comparator_x(LOGICAL,278)@7 + 1
    assign dupName_9_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_acl_26565_dijkstra68_out_dest_data_out_49_0 == c_i32_3212_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_9_comparator_x_delay ( .xin(dupName_9_comparator_x_qi), .xout(dupName_9_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg6(REG,329)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_dist_sroa_14_3_replace_phi59_dijkstra14(BLACKBOX,107)@8
    dijkstra_i_llvm_fpga_ffwd_dest_i32_dist_sroa_14_3_replace_phi59_0 thei_llvm_fpga_ffwd_dest_i32_dist_sroa_14_3_replace_phi59_dijkstra14 (
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_44_0(i_llvm_fpga_ffwd_dest_i32_dist_sroa_14_3_replace_phi59_dijkstra14_out_dest_data_out_44_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,330)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg33(REG,356)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_unnamed_dijkstra50(LOGICAL,201)@3 + 1
    assign i_unnamed_dijkstra50_qi = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_2213_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_dijkstra50_delay ( .xin(i_unnamed_dijkstra50_qi), .xout(i_unnamed_dijkstra50_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_i_unnamed_dijkstra50_q_5(DELAY,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_unnamed_dijkstra50_q_5_delay_0 <= '0;
            redist18_i_unnamed_dijkstra50_q_5_delay_1 <= '0;
            redist18_i_unnamed_dijkstra50_q_5_delay_2 <= '0;
            redist18_i_unnamed_dijkstra50_q_5_q <= '0;
        end
        else
        begin
            redist18_i_unnamed_dijkstra50_q_5_delay_0 <= $unsigned(i_unnamed_dijkstra50_q);
            redist18_i_unnamed_dijkstra50_q_5_delay_1 <= redist18_i_unnamed_dijkstra50_q_5_delay_0;
            redist18_i_unnamed_dijkstra50_q_5_delay_2 <= redist18_i_unnamed_dijkstra50_q_5_delay_1;
            redist18_i_unnamed_dijkstra50_q_5_q <= redist18_i_unnamed_dijkstra50_q_5_delay_2;
        end
    end

    // i_reduction_dijkstra_26_dijkstra113(LOGICAL,178)@8
    assign i_reduction_dijkstra_26_dijkstra113_q = i_selcond_dijkstra_0_dijkstra88_q & redist18_i_unnamed_dijkstra50_q_5_q;

    // i_reduction_dijkstra_27_dijkstra114(LOGICAL,179)@8
    assign i_reduction_dijkstra_27_dijkstra114_q = i_reduction_dijkstra_11_dijkstra82_q & i_reduction_dijkstra_26_dijkstra113_q;

    // i_reduction_dijkstra_6_dijkstra115(MUX,188)@8
    assign i_reduction_dijkstra_6_dijkstra115_s = i_reduction_dijkstra_27_dijkstra114_q;
    always @(i_reduction_dijkstra_6_dijkstra115_s or i_dist_sroa_14_4_replace_phi_dijkstra16_q or bgTrunc_i_add_dijkstra72_sel_x_b)
    begin
        unique case (i_reduction_dijkstra_6_dijkstra115_s)
            1'b0 : i_reduction_dijkstra_6_dijkstra115_q = i_dist_sroa_14_4_replace_phi_dijkstra16_q;
            1'b1 : i_reduction_dijkstra_6_dijkstra115_q = bgTrunc_i_add_dijkstra72_sel_x_b;
            default : i_reduction_dijkstra_6_dijkstra115_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_dist_sroa_14_4_push45_dijkstra116(BLACKBOX,145)@8
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_14_4_push45_0 thei_llvm_fpga_push_i32_dist_sroa_14_4_push45_dijkstra116 (
        .in_data_in(i_reduction_dijkstra_6_dijkstra115_q),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i32_dist_sroa_14_4_pop45_dijkstra15_out_feedback_stall_out_45),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i32_dist_sroa_14_4_push45_dijkstra116_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i32_dist_sroa_14_4_push45_dijkstra116_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_14_4_pop45_dijkstra15(BLACKBOX,130)@8
    // out out_feedback_stall_out_45@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_14_4_pop45_0 thei_llvm_fpga_pop_i32_dist_sroa_14_4_pop45_dijkstra15 (
        .in_data_in(c_i32_0206_q),
        .in_dir(redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q),
        .in_feedback_in_45(i_llvm_fpga_push_i32_dist_sroa_14_4_push45_dijkstra116_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i32_dist_sroa_14_4_push45_dijkstra116_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_14_4_pop45_dijkstra15_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i32_dist_sroa_14_4_pop45_dijkstra15_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_dist_sroa_14_4_replace_phi_dijkstra16(MUX,82)@8
    assign i_dist_sroa_14_4_replace_phi_dijkstra16_s = redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q;
    always @(i_dist_sroa_14_4_replace_phi_dijkstra16_s or i_llvm_fpga_pop_i32_dist_sroa_14_4_pop45_dijkstra15_out_data_out or i_llvm_fpga_ffwd_dest_i32_dist_sroa_14_3_replace_phi59_dijkstra14_out_dest_data_out_44_0)
    begin
        unique case (i_dist_sroa_14_4_replace_phi_dijkstra16_s)
            1'b0 : i_dist_sroa_14_4_replace_phi_dijkstra16_q = i_llvm_fpga_pop_i32_dist_sroa_14_4_pop45_dijkstra15_out_data_out;
            1'b1 : i_dist_sroa_14_4_replace_phi_dijkstra16_q = i_llvm_fpga_ffwd_dest_i32_dist_sroa_14_3_replace_phi59_dijkstra14_out_dest_data_out_44_0;
            default : i_dist_sroa_14_4_replace_phi_dijkstra16_q = 32'b0;
        endcase
    end

    // dupName_8_comparator_x(LOGICAL,277)@7 + 1
    assign dupName_8_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_acl_26565_dijkstra68_out_dest_data_out_49_0 == c_i32_2213_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_8_comparator_x_delay ( .xin(dupName_8_comparator_x_qi), .xout(dupName_8_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg4(REG,327)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_dist_sroa_8_3_replace_phi60_dijkstra11(BLACKBOX,114)@8
    dijkstra_i_llvm_fpga_ffwd_dest_i32_dist_sroa_8_3_replace_phi60_0 thei_llvm_fpga_ffwd_dest_i32_dist_sroa_8_3_replace_phi60_dijkstra11 (
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_45_0(i_llvm_fpga_ffwd_dest_i32_dist_sroa_8_3_replace_phi60_dijkstra11_out_dest_data_out_45_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,328)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg34(REG,357)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_unnamed_dijkstra52(LOGICAL,202)@3 + 1
    assign i_unnamed_dijkstra52_qi = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_1214_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_dijkstra52_delay ( .xin(i_unnamed_dijkstra52_qi), .xout(i_unnamed_dijkstra52_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_i_unnamed_dijkstra52_q_5(DELAY,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_unnamed_dijkstra52_q_5_delay_0 <= '0;
            redist17_i_unnamed_dijkstra52_q_5_delay_1 <= '0;
            redist17_i_unnamed_dijkstra52_q_5_delay_2 <= '0;
            redist17_i_unnamed_dijkstra52_q_5_q <= '0;
        end
        else
        begin
            redist17_i_unnamed_dijkstra52_q_5_delay_0 <= $unsigned(i_unnamed_dijkstra52_q);
            redist17_i_unnamed_dijkstra52_q_5_delay_1 <= redist17_i_unnamed_dijkstra52_q_5_delay_0;
            redist17_i_unnamed_dijkstra52_q_5_delay_2 <= redist17_i_unnamed_dijkstra52_q_5_delay_1;
            redist17_i_unnamed_dijkstra52_q_5_q <= redist17_i_unnamed_dijkstra52_q_5_delay_2;
        end
    end

    // i_reduction_dijkstra_28_dijkstra117(LOGICAL,180)@8
    assign i_reduction_dijkstra_28_dijkstra117_q = i_selcond_dijkstra_0_dijkstra88_q & redist17_i_unnamed_dijkstra52_q_5_q;

    // i_reduction_dijkstra_29_dijkstra118(LOGICAL,181)@8
    assign i_reduction_dijkstra_29_dijkstra118_q = i_reduction_dijkstra_11_dijkstra82_q & i_reduction_dijkstra_28_dijkstra117_q;

    // i_reduction_dijkstra_7_dijkstra119(MUX,189)@8
    assign i_reduction_dijkstra_7_dijkstra119_s = i_reduction_dijkstra_29_dijkstra118_q;
    always @(i_reduction_dijkstra_7_dijkstra119_s or i_dist_sroa_8_4_replace_phi_dijkstra13_q or bgTrunc_i_add_dijkstra72_sel_x_b)
    begin
        unique case (i_reduction_dijkstra_7_dijkstra119_s)
            1'b0 : i_reduction_dijkstra_7_dijkstra119_q = i_dist_sroa_8_4_replace_phi_dijkstra13_q;
            1'b1 : i_reduction_dijkstra_7_dijkstra119_q = bgTrunc_i_add_dijkstra72_sel_x_b;
            default : i_reduction_dijkstra_7_dijkstra119_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_dist_sroa_8_4_push46_dijkstra120(BLACKBOX,152)@8
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_8_4_push46_0 thei_llvm_fpga_push_i32_dist_sroa_8_4_push46_dijkstra120 (
        .in_data_in(i_reduction_dijkstra_7_dijkstra119_q),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i32_dist_sroa_8_4_pop46_dijkstra12_out_feedback_stall_out_46),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i32_dist_sroa_8_4_push46_dijkstra120_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i32_dist_sroa_8_4_push46_dijkstra120_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_8_4_pop46_dijkstra12(BLACKBOX,137)@8
    // out out_feedback_stall_out_46@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_8_4_pop46_0 thei_llvm_fpga_pop_i32_dist_sroa_8_4_pop46_dijkstra12 (
        .in_data_in(c_i32_0206_q),
        .in_dir(redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q),
        .in_feedback_in_46(i_llvm_fpga_push_i32_dist_sroa_8_4_push46_dijkstra120_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i32_dist_sroa_8_4_push46_dijkstra120_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_8_4_pop46_dijkstra12_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i32_dist_sroa_8_4_pop46_dijkstra12_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_dist_sroa_8_4_replace_phi_dijkstra13(MUX,89)@8
    assign i_dist_sroa_8_4_replace_phi_dijkstra13_s = redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q;
    always @(i_dist_sroa_8_4_replace_phi_dijkstra13_s or i_llvm_fpga_pop_i32_dist_sroa_8_4_pop46_dijkstra12_out_data_out or i_llvm_fpga_ffwd_dest_i32_dist_sroa_8_3_replace_phi60_dijkstra11_out_dest_data_out_45_0)
    begin
        unique case (i_dist_sroa_8_4_replace_phi_dijkstra13_s)
            1'b0 : i_dist_sroa_8_4_replace_phi_dijkstra13_q = i_llvm_fpga_pop_i32_dist_sroa_8_4_pop46_dijkstra12_out_data_out;
            1'b1 : i_dist_sroa_8_4_replace_phi_dijkstra13_q = i_llvm_fpga_ffwd_dest_i32_dist_sroa_8_3_replace_phi60_dijkstra11_out_dest_data_out_45_0;
            default : i_dist_sroa_8_4_replace_phi_dijkstra13_q = 32'b0;
        endcase
    end

    // dupName_7_comparator_x(LOGICAL,275)@7 + 1
    assign dupName_7_comparator_x_qi = $unsigned(i_llvm_fpga_ffwd_dest_i32_acl_26565_dijkstra68_out_dest_data_out_49_0 == c_i32_1214_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_7_comparator_x_delay ( .xin(dupName_7_comparator_x_qi), .xout(dupName_7_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt333_dijkstra69(SELECTOR,102)@8
    always @(dupName_7_comparator_x_q or i_dist_sroa_8_4_replace_phi_dijkstra13_q or dupName_8_comparator_x_q or i_dist_sroa_14_4_replace_phi_dijkstra16_q or dupName_9_comparator_x_q or i_dist_sroa_20_4_replace_phi_dijkstra19_q or dupName_10_comparator_x_q or i_dist_sroa_26_4_replace_phi_dijkstra22_q or dupName_11_comparator_x_q or i_dist_sroa_32_4_replace_phi_dijkstra25_q or dupName_12_comparator_x_q or i_dist_sroa_38_4_replace_phi_dijkstra28_q or dupName_13_comparator_x_q or i_dist_sroa_44_4_replace_phi_dijkstra31_q or dupName_14_comparator_x_q or i_dist_sroa_50_4_replace_phi_dijkstra34_q or i_dist_sroa_0_4_replace_phi_dijkstra10_q)
    begin
        i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt333_dijkstra69_q = i_dist_sroa_0_4_replace_phi_dijkstra10_q;
        if (dupName_14_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt333_dijkstra69_q = i_dist_sroa_50_4_replace_phi_dijkstra34_q;
        end
        if (dupName_13_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt333_dijkstra69_q = i_dist_sroa_44_4_replace_phi_dijkstra31_q;
        end
        if (dupName_12_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt333_dijkstra69_q = i_dist_sroa_38_4_replace_phi_dijkstra28_q;
        end
        if (dupName_11_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt333_dijkstra69_q = i_dist_sroa_32_4_replace_phi_dijkstra25_q;
        end
        if (dupName_10_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt333_dijkstra69_q = i_dist_sroa_26_4_replace_phi_dijkstra22_q;
        end
        if (dupName_9_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt333_dijkstra69_q = i_dist_sroa_20_4_replace_phi_dijkstra19_q;
        end
        if (dupName_8_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt333_dijkstra69_q = i_dist_sroa_14_4_replace_phi_dijkstra16_q;
        end
        if (dupName_7_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt333_dijkstra69_q = i_dist_sroa_8_4_replace_phi_dijkstra13_q;
        end
    end

    // i_add_dijkstra72(ADD,75)@8
    assign i_add_dijkstra72_a = {1'b0, i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt333_dijkstra69_q};
    assign i_add_dijkstra72_b = {1'b0, i_llvm_fpga_mem_lm1_dijkstra64_out_o_readdata};
    assign i_add_dijkstra72_o = $unsigned(i_add_dijkstra72_a) + $unsigned(i_add_dijkstra72_b);
    assign i_add_dijkstra72_q = i_add_dijkstra72_o[32:0];

    // bgTrunc_i_add_dijkstra72_sel_x(BITSELECT,243)@8
    assign bgTrunc_i_add_dijkstra72_sel_x_b = i_add_dijkstra72_q[31:0];

    // valid_fanout_reg18(REG,341)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_dist_sroa_50_3_replace_phi53_dijkstra32(BLACKBOX,113)@8
    dijkstra_i_llvm_fpga_ffwd_dest_i32_dist_sroa_50_3_replace_phi53_0 thei_llvm_fpga_ffwd_dest_i32_dist_sroa_50_3_replace_phi53_dijkstra32 (
        .in_intel_reserved_ffwd_38_0(in_intel_reserved_ffwd_38_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_dest_data_out_38_0(i_llvm_fpga_ffwd_dest_i32_dist_sroa_50_3_replace_phi53_dijkstra32_out_dest_data_out_38_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,342)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg27(REG,350)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_dist_sroa_50_4_push39_dijkstra92(BLACKBOX,151)@8
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_50_4_push39_0 thei_llvm_fpga_push_i32_dist_sroa_50_4_push39_dijkstra92 (
        .in_data_in(i_reduction_dijkstra_0_dijkstra91_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i32_dist_sroa_50_4_pop39_dijkstra33_out_feedback_stall_out_39),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i32_dist_sroa_50_4_push39_dijkstra92_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i32_dist_sroa_50_4_push39_dijkstra92_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_50_4_pop39_dijkstra33(BLACKBOX,136)@8
    // out out_feedback_stall_out_39@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_50_4_pop39_0 thei_llvm_fpga_pop_i32_dist_sroa_50_4_pop39_dijkstra33 (
        .in_data_in(c_i32_0206_q),
        .in_dir(redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q),
        .in_feedback_in_39(i_llvm_fpga_push_i32_dist_sroa_50_4_push39_dijkstra92_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i32_dist_sroa_50_4_push39_dijkstra92_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_50_4_pop39_dijkstra33_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i32_dist_sroa_50_4_pop39_dijkstra33_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_dist_sroa_50_4_replace_phi_dijkstra34(MUX,88)@8
    assign i_dist_sroa_50_4_replace_phi_dijkstra34_s = redist1_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_7_q;
    always @(i_dist_sroa_50_4_replace_phi_dijkstra34_s or i_llvm_fpga_pop_i32_dist_sroa_50_4_pop39_dijkstra33_out_data_out or i_llvm_fpga_ffwd_dest_i32_dist_sroa_50_3_replace_phi53_dijkstra32_out_dest_data_out_38_0)
    begin
        unique case (i_dist_sroa_50_4_replace_phi_dijkstra34_s)
            1'b0 : i_dist_sroa_50_4_replace_phi_dijkstra34_q = i_llvm_fpga_pop_i32_dist_sroa_50_4_pop39_dijkstra33_out_data_out;
            1'b1 : i_dist_sroa_50_4_replace_phi_dijkstra34_q = i_llvm_fpga_ffwd_dest_i32_dist_sroa_50_3_replace_phi53_dijkstra32_out_dest_data_out_38_0;
            default : i_dist_sroa_50_4_replace_phi_dijkstra34_q = 32'b0;
        endcase
    end

    // i_unnamed_dijkstra38(LOGICAL,195)@3 + 1
    assign i_unnamed_dijkstra38_qi = $unsigned(redist28_i_llvm_fpga_pop_i32_v_033_pop48_dijkstra37_out_data_out_1_q == c_i32_8207_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_dijkstra38_delay ( .xin(i_unnamed_dijkstra38_qi), .xout(i_unnamed_dijkstra38_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_i_unnamed_dijkstra38_q_5(DELAY,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_unnamed_dijkstra38_q_5_delay_0 <= '0;
            redist24_i_unnamed_dijkstra38_q_5_delay_1 <= '0;
            redist24_i_unnamed_dijkstra38_q_5_delay_2 <= '0;
            redist24_i_unnamed_dijkstra38_q_5_q <= '0;
        end
        else
        begin
            redist24_i_unnamed_dijkstra38_q_5_delay_0 <= $unsigned(i_unnamed_dijkstra38_q);
            redist24_i_unnamed_dijkstra38_q_5_delay_1 <= redist24_i_unnamed_dijkstra38_q_5_delay_0;
            redist24_i_unnamed_dijkstra38_q_5_delay_2 <= redist24_i_unnamed_dijkstra38_q_5_delay_1;
            redist24_i_unnamed_dijkstra38_q_5_q <= redist24_i_unnamed_dijkstra38_q_5_delay_2;
        end
    end

    // i_reduction_dijkstra_14_dijkstra89(LOGICAL,165)@8
    assign i_reduction_dijkstra_14_dijkstra89_q = i_selcond_dijkstra_0_dijkstra88_q & redist24_i_unnamed_dijkstra38_q_5_q;

    // i_reduction_dijkstra_15_dijkstra90(LOGICAL,166)@8
    assign i_reduction_dijkstra_15_dijkstra90_q = i_reduction_dijkstra_11_dijkstra82_q & i_reduction_dijkstra_14_dijkstra89_q;

    // i_reduction_dijkstra_0_dijkstra91(MUX,161)@8
    assign i_reduction_dijkstra_0_dijkstra91_s = i_reduction_dijkstra_15_dijkstra90_q;
    always @(i_reduction_dijkstra_0_dijkstra91_s or i_dist_sroa_50_4_replace_phi_dijkstra34_q or bgTrunc_i_add_dijkstra72_sel_x_b)
    begin
        unique case (i_reduction_dijkstra_0_dijkstra91_s)
            1'b0 : i_reduction_dijkstra_0_dijkstra91_q = i_dist_sroa_50_4_replace_phi_dijkstra34_q;
            1'b1 : i_reduction_dijkstra_0_dijkstra91_q = bgTrunc_i_add_dijkstra72_sel_x_b;
            default : i_reduction_dijkstra_0_dijkstra91_q = 32'b0;
        endcase
    end

    // redist15_i_xor_dijkstra4_q_6(DELAY,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_xor_dijkstra4_q_6_delay_0 <= '0;
            redist15_i_xor_dijkstra4_q_6_delay_1 <= '0;
            redist15_i_xor_dijkstra4_q_6_delay_2 <= '0;
            redist15_i_xor_dijkstra4_q_6_delay_3 <= '0;
            redist15_i_xor_dijkstra4_q_6_q <= '0;
        end
        else
        begin
            redist15_i_xor_dijkstra4_q_6_delay_0 <= $unsigned(redist14_i_xor_dijkstra4_q_1_q);
            redist15_i_xor_dijkstra4_q_6_delay_1 <= redist15_i_xor_dijkstra4_q_6_delay_0;
            redist15_i_xor_dijkstra4_q_6_delay_2 <= redist15_i_xor_dijkstra4_q_6_delay_1;
            redist15_i_xor_dijkstra4_q_6_delay_3 <= redist15_i_xor_dijkstra4_q_6_delay_2;
            redist15_i_xor_dijkstra4_q_6_q <= redist15_i_xor_dijkstra4_q_6_delay_3;
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra69_dijkstra137(BLACKBOX,117)@8
    // out out_intel_reserved_ffwd_60_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_69_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra69_dijkstra137 (
        .in_predicate_in(redist15_i_xor_dijkstra4_q_6_q),
        .in_src_data_in_60_0(i_reduction_dijkstra_0_dijkstra91_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_intel_reserved_ffwd_60_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra69_dijkstra137_out_intel_reserved_ffwd_60_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,240)
    assign out_intel_reserved_ffwd_60_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra69_dijkstra137_out_intel_reserved_ffwd_60_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,258)
    assign out_lm1_dijkstra_avm_address = i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_address;
    assign out_lm1_dijkstra_avm_enable = i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_enable;
    assign out_lm1_dijkstra_avm_read = i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_read;
    assign out_lm1_dijkstra_avm_write = i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_write;
    assign out_lm1_dijkstra_avm_writedata = i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_writedata;
    assign out_lm1_dijkstra_avm_byteenable = i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_byteenable;
    assign out_lm1_dijkstra_avm_burstcount = i_llvm_fpga_mem_lm1_dijkstra64_out_lm1_dijkstra_avm_burstcount;

    // valid_fanout_reg38(REG,361)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra70_dijkstra138(BLACKBOX,118)@8
    // out out_intel_reserved_ffwd_61_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_70_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra70_dijkstra138 (
        .in_predicate_in(redist15_i_xor_dijkstra4_q_6_q),
        .in_src_data_in_61_0(i_reduction_dijkstra_1_dijkstra95_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_intel_reserved_ffwd_61_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra70_dijkstra138_out_intel_reserved_ffwd_61_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,259)
    assign out_intel_reserved_ffwd_61_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra70_dijkstra138_out_intel_reserved_ffwd_61_0;

    // valid_fanout_reg39(REG,362)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra71_dijkstra139(BLACKBOX,119)@8
    // out out_intel_reserved_ffwd_62_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_71_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra71_dijkstra139 (
        .in_predicate_in(redist15_i_xor_dijkstra4_q_6_q),
        .in_src_data_in_62_0(i_reduction_dijkstra_2_dijkstra99_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_intel_reserved_ffwd_62_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra71_dijkstra139_out_intel_reserved_ffwd_62_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,262)
    assign out_intel_reserved_ffwd_62_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra71_dijkstra139_out_intel_reserved_ffwd_62_0;

    // valid_fanout_reg40(REG,363)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra72_dijkstra140(BLACKBOX,120)@8
    // out out_intel_reserved_ffwd_63_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_72_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra72_dijkstra140 (
        .in_predicate_in(redist15_i_xor_dijkstra4_q_6_q),
        .in_src_data_in_63_0(i_reduction_dijkstra_3_dijkstra103_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_intel_reserved_ffwd_63_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra72_dijkstra140_out_intel_reserved_ffwd_63_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,265)
    assign out_intel_reserved_ffwd_63_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra72_dijkstra140_out_intel_reserved_ffwd_63_0;

    // valid_fanout_reg41(REG,364)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra73_dijkstra141(BLACKBOX,121)@8
    // out out_intel_reserved_ffwd_64_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_73_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra73_dijkstra141 (
        .in_predicate_in(redist15_i_xor_dijkstra4_q_6_q),
        .in_src_data_in_64_0(i_reduction_dijkstra_4_dijkstra107_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_intel_reserved_ffwd_64_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra73_dijkstra141_out_intel_reserved_ffwd_64_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,268)
    assign out_intel_reserved_ffwd_64_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra73_dijkstra141_out_intel_reserved_ffwd_64_0;

    // valid_fanout_reg42(REG,365)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra74_dijkstra142(BLACKBOX,122)@8
    // out out_intel_reserved_ffwd_65_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_74_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra74_dijkstra142 (
        .in_predicate_in(redist15_i_xor_dijkstra4_q_6_q),
        .in_src_data_in_65_0(i_reduction_dijkstra_5_dijkstra111_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_intel_reserved_ffwd_65_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra74_dijkstra142_out_intel_reserved_ffwd_65_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,270)
    assign out_intel_reserved_ffwd_65_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra74_dijkstra142_out_intel_reserved_ffwd_65_0;

    // valid_fanout_reg43(REG,366)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra75_dijkstra143(BLACKBOX,123)@8
    // out out_intel_reserved_ffwd_66_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_75_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra75_dijkstra143 (
        .in_predicate_in(redist15_i_xor_dijkstra4_q_6_q),
        .in_src_data_in_66_0(i_reduction_dijkstra_6_dijkstra115_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_intel_reserved_ffwd_66_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra75_dijkstra143_out_intel_reserved_ffwd_66_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,272)
    assign out_intel_reserved_ffwd_66_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra75_dijkstra143_out_intel_reserved_ffwd_66_0;

    // valid_fanout_reg44(REG,367)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra76_dijkstra144(BLACKBOX,124)@8
    // out out_intel_reserved_ffwd_67_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_76_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra76_dijkstra144 (
        .in_predicate_in(redist15_i_xor_dijkstra4_q_6_q),
        .in_src_data_in_67_0(i_reduction_dijkstra_7_dijkstra119_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_intel_reserved_ffwd_67_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra76_dijkstra144_out_intel_reserved_ffwd_67_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,274)
    assign out_intel_reserved_ffwd_67_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra76_dijkstra144_out_intel_reserved_ffwd_67_0;

    // valid_fanout_reg45(REG,368)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra77_dijkstra145(BLACKBOX,125)@8
    // out out_intel_reserved_ffwd_68_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_77_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra77_dijkstra145 (
        .in_predicate_in(redist15_i_xor_dijkstra4_q_6_q),
        .in_src_data_in_68_0(i_reduction_dijkstra_8_dijkstra123_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_intel_reserved_ffwd_68_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra77_dijkstra145_out_intel_reserved_ffwd_68_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,276)
    assign out_intel_reserved_ffwd_68_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra77_dijkstra145_out_intel_reserved_ffwd_68_0;

    // valid_fanout_reg0(REG,323)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together265_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_notEnable(LOGICAL,482)
    assign redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_nor(LOGICAL,483)
    assign redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_nor_q = ~ (redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_notEnable_q | redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_sticky_ena_q);

    // redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_last(CONSTANT,479)
    assign redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_last_q = $unsigned(3'b011);

    // redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_cmp(LOGICAL,480)
    assign redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_cmp_q = $unsigned(redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_last_q == redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_cmpReg(REG,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_cmpReg_q <= $unsigned(redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_cmp_q);
        end
    end

    // redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_sticky_ena(REG,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_nor_q == 1'b1)
        begin
            redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_sticky_ena_q <= $unsigned(redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_cmpReg_q);
        end
    end

    // redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_enaAnd(LOGICAL,485)
    assign redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_enaAnd_q = redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_sticky_ena_q & VCC_q;

    // redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt(COUNTER,477)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_i <= 3'd0;
            redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_i == 3'd3)
            begin
                redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_eq <= 1'b0;
            end
            if (redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_eq == 1'b1)
            begin
                redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_i <= $unsigned(redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_i <= $unsigned(redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_q = redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_i[2:0];

    // valid_fanout_reg47(REG,370)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg46(REG,369)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_sync_together265_aunroll_x_in_c0_eni2194_2_tpl_1(DELAY,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together265_aunroll_x_in_c0_eni2194_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together265_aunroll_x_in_c0_eni2194_2_tpl_1_q <= $unsigned(in_c0_eni2194_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_inc50176_pop50_dijkstra147(BLACKBOX,138)@2
    // out out_feedback_stall_out_50@20000000
    dijkstra_i_llvm_fpga_pop_i32_inc50176_pop50_0 thei_llvm_fpga_pop_i32_inc50176_pop50_dijkstra147 (
        .in_data_in(redist2_sync_together265_aunroll_x_in_c0_eni2194_2_tpl_1_q),
        .in_dir(redist0_sync_together265_aunroll_x_in_c0_eni2194_1_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_data_out(i_llvm_fpga_pop_i32_inc50176_pop50_dijkstra147_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i32_inc50176_pop50_dijkstra147_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_inc50176_push50_dijkstra148(BLACKBOX,153)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    dijkstra_i_llvm_fpga_push_i32_inc50176_push50_0 thei_llvm_fpga_push_i32_inc50176_push50_dijkstra148 (
        .in_data_in(i_llvm_fpga_pop_i32_inc50176_pop50_dijkstra147_out_data_out),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i32_inc50176_pop50_dijkstra147_out_feedback_stall_out_50),
        .in_keep_going(redist29_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_data_out(i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out),
        .out_feedback_out_50(i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_wraddr(REG,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_wraddr_q <= $unsigned(redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_q);
        end
    end

    // redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem(DUALMEM,476)
    assign redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_ia = $unsigned(i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out);
    assign redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_aa = redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_wraddr_q;
    assign redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_ab = redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_rdcnt_q;
    assign redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(5),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_dmem (
        .clocken1(redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_reset0),
        .clock1(clock),
        .address_a(redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_aa),
        .data_a(redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_ab),
        .q_b(redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_q = redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_iq[31:0];

    // i_masked_dijkstra146(LOGICAL,156)@2 + 1
    assign i_masked_dijkstra146_qi = i_notcmp_dijkstra130_q & i_first_cleanup_dijkstra3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_dijkstra146_delay ( .xin(i_masked_dijkstra146_qi), .xout(i_masked_dijkstra146_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist26_i_masked_dijkstra146_q_6(DELAY,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_masked_dijkstra146_q_6_delay_0 <= '0;
            redist26_i_masked_dijkstra146_q_6_delay_1 <= '0;
            redist26_i_masked_dijkstra146_q_6_delay_2 <= '0;
            redist26_i_masked_dijkstra146_q_6_delay_3 <= '0;
            redist26_i_masked_dijkstra146_q_6_q <= '0;
        end
        else
        begin
            redist26_i_masked_dijkstra146_q_6_delay_0 <= $unsigned(i_masked_dijkstra146_q);
            redist26_i_masked_dijkstra146_q_6_delay_1 <= redist26_i_masked_dijkstra146_q_6_delay_0;
            redist26_i_masked_dijkstra146_q_6_delay_2 <= redist26_i_masked_dijkstra146_q_6_delay_1;
            redist26_i_masked_dijkstra146_q_6_delay_3 <= redist26_i_masked_dijkstra146_q_6_delay_2;
            redist26_i_masked_dijkstra146_q_6_q <= redist26_i_masked_dijkstra146_q_6_delay_3;
        end
    end

    // sync_out_aunroll_x(GPOUT,321)@8
    assign out_c0_exi3200_0_tpl = GND_q;
    assign out_c0_exi3200_1_tpl = redist31_i_llvm_fpga_pipeline_keep_going_dijkstra6_out_data_out_7_q;
    assign out_c0_exi3200_2_tpl = redist26_i_masked_dijkstra146_q_6_q;
    assign out_c0_exi3200_3_tpl = redist27_i_llvm_fpga_push_i32_inc50176_push50_dijkstra148_out_data_out_6_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_dijkstra1 = GND_q;

endmodule
