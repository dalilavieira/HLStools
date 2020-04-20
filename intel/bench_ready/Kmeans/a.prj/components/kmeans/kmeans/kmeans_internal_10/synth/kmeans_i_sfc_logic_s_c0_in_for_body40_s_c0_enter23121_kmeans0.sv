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

// SystemVerilog created from kmeans_i_sfc_logic_s_c0_in_for_body40_s_c0_enter23121_kmeans0
// SystemVerilog created on Sun Apr 19 22:13:38 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_i_sfc_logic_s_c0_in_for_body40_s_c0_enter23121_kmeans0 (
    input wire [15:0] in_lm1_kmeans_avm_readdata,
    input wire [0:0] in_lm1_kmeans_avm_writeack,
    input wire [0:0] in_lm1_kmeans_avm_waitrequest,
    input wire [0:0] in_lm1_kmeans_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [32:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_9_0,
    input wire [15:0] in_lm252_kmeans_avm_readdata,
    input wire [0:0] in_lm252_kmeans_avm_writeack,
    input wire [0:0] in_lm252_kmeans_avm_waitrequest,
    input wire [0:0] in_lm252_kmeans_avm_readdatavalid,
    output wire [31:0] out_lm1_kmeans_avm_address,
    output wire [0:0] out_lm1_kmeans_avm_enable,
    output wire [0:0] out_lm1_kmeans_avm_read,
    output wire [0:0] out_lm1_kmeans_avm_write,
    output wire [15:0] out_lm1_kmeans_avm_writedata,
    output wire [1:0] out_lm1_kmeans_avm_byteenable,
    output wire [0:0] out_lm1_kmeans_avm_burstcount,
    output wire [31:0] out_lm252_kmeans_avm_address,
    output wire [0:0] out_lm252_kmeans_avm_enable,
    output wire [0:0] out_lm252_kmeans_avm_read,
    output wire [0:0] out_lm252_kmeans_avm_write,
    output wire [15:0] out_lm252_kmeans_avm_writedata,
    output wire [1:0] out_lm252_kmeans_avm_byteenable,
    output wire [0:0] out_lm252_kmeans_avm_burstcount,
    output wire [0:0] out_c0_exi14_0_tpl,
    output wire [0:0] out_c0_exi14_1_tpl,
    output wire [31:0] out_c0_exi14_2_tpl,
    output wire [0:0] out_c0_exi14_3_tpl,
    output wire [15:0] out_c0_exi14_4_tpl,
    output wire [0:0] out_c0_exi14_5_tpl,
    output wire [0:0] out_c0_exi14_6_tpl,
    output wire [0:0] out_c0_exi14_7_tpl,
    output wire [15:0] out_c0_exi14_8_tpl,
    output wire [0:0] out_c0_exi14_9_tpl,
    output wire [0:0] out_c0_exi14_10_tpl,
    output wire [0:0] out_c0_exi14_11_tpl,
    output wire [0:0] out_c0_exi14_12_tpl,
    output wire [31:0] out_c0_exi14_13_tpl,
    output wire [0:0] out_c0_exi14_14_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kmeans1,
    input wire [0:0] in_c0_eni13_0_tpl,
    input wire [0:0] in_c0_eni13_1_tpl,
    input wire [31:0] in_c0_eni13_2_tpl,
    input wire [31:0] in_c0_eni13_3_tpl,
    input wire [0:0] in_c0_eni13_4_tpl,
    input wire [0:0] in_c0_eni13_5_tpl,
    input wire [0:0] in_c0_eni13_6_tpl,
    input wire [15:0] in_c0_eni13_7_tpl,
    input wire [0:0] in_c0_eni13_8_tpl,
    input wire [0:0] in_c0_eni13_9_tpl,
    input wire [0:0] in_c0_eni13_10_tpl,
    input wire [0:0] in_c0_eni13_11_tpl,
    input wire [31:0] in_c0_eni13_12_tpl,
    input wire [0:0] in_c0_eni13_13_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [15:0] c_i16_033_q;
    wire [1:0] c_i2_1101_q;
    wire [31:0] c_i32_0104_q;
    wire [31:0] c_i32_1105_q;
    wire [32:0] c_i33_1107_q;
    wire [32:0] c_i33_undef103_q;
    wire [63:0] c_kmeans_centroids_pmem_q;
    wire [63:0] c_kmeans_data_in_pmem_q;
    wire [32:0] i_add47_kmeans25_a;
    wire [32:0] i_add47_kmeans25_b;
    logic [32:0] i_add47_kmeans25_o;
    wire [32:0] i_add47_kmeans25_q;
    wire [32:0] i_add_kmeans18_a;
    wire [32:0] i_add_kmeans18_b;
    logic [32:0] i_add_kmeans18_o;
    wire [32:0] i_add_kmeans18_q;
    wire [63:0] i_arrayidx434_kmeans20_vt_join_q;
    wire [62:0] i_arrayidx434_kmeans20_vt_select_63_b;
    wire [63:0] i_arrayidx495_kmeans27_vt_join_q;
    wire [62:0] i_arrayidx495_kmeans27_vt_select_63_b;
    wire [1:0] i_cleanups_shl_kmeans5_vt_join_q;
    wire [0:0] i_cleanups_shl_kmeans5_vt_select_1_b;
    wire [0:0] i_do_directly_for_cond_cleanup39_loopexit_select_kmeans53_s;
    reg [15:0] i_do_directly_for_cond_cleanup39_loopexit_select_kmeans53_q;
    wire [0:0] i_first_cleanup_xor_or_kmeans21_q;
    wire [0:0] i_fpga_indvars_iv14_replace_phi_kmeans10_s;
    reg [32:0] i_fpga_indvars_iv14_replace_phi_kmeans10_q;
    wire [33:0] i_fpga_indvars_iv_next15_kmeans42_a;
    wire [33:0] i_fpga_indvars_iv_next15_kmeans42_b;
    logic [33:0] i_fpga_indvars_iv_next15_kmeans42_o;
    wire [33:0] i_fpga_indvars_iv_next15_kmeans42_q;
    wire [32:0] i_inc55_kmeans38_a;
    wire [32:0] i_inc55_kmeans38_b;
    logic [32:0] i_inc55_kmeans38_o;
    wire [32:0] i_inc55_kmeans38_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_kmeans24_kmeans11_out_dest_data_out_9_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_kmeans25_kmeans44_out_dest_data_out_9_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_kmeans26_kmeans52_out_dest_data_out_9_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_num_dim5726_kmeans13_out_dest_data_out_2_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_kmeans23_kmeans8_out_dest_data_out_10_0;
    wire [31:0] i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_write;
    wire [15:0] i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_lm1_kmeans22_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_write;
    wire [15:0] i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kmeans6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kmeans6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kmeans6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kmeans6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kmeans6_out_pipeline_valid_out;
    wire [15:0] i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_feedback_stall_out_50;
    wire [15:0] i_llvm_fpga_pop_i16_sum_039_pop43_kmeans29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_sum_039_pop43_kmeans29_out_feedback_stall_out_43;
    wire [0:0] i_llvm_fpga_pop_i1_forked111116_pop48_kmeans58_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked111116_pop48_kmeans58_out_feedback_stall_out_48;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp41119_pop52_kmeans64_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp41119_pop52_kmeans64_out_feedback_stall_out_52;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp46113_pop46_kmeans56_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp46113_pop46_kmeans56_out_feedback_stall_out_46;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp51110_pop45_kmeans54_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp51110_pop45_kmeans54_out_feedback_stall_out_45;
    wire [0:0] i_llvm_fpga_pop_i1_pop51_kmeans62_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop51_kmeans62_out_feedback_stall_out_51;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop44_kmeans2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop44_kmeans2_out_feedback_stall_out_44;
    wire [31:0] i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_feedback_stall_out_47;
    wire [31:0] i_llvm_fpga_pop_i32_j_040_pop42_kmeans14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_040_pop42_kmeans14_out_feedback_stall_out_42;
    wire [31:0] i_llvm_fpga_pop_i32_mul46117_pop49_kmeans23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul46117_pop49_kmeans23_out_feedback_stall_out_49;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop41_kmeans9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop41_kmeans9_out_feedback_stall_out_41;
    wire [15:0] i_llvm_fpga_push_i16_c_044_pop35118_push50_kmeans61_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i16_c_044_pop35118_push50_kmeans61_out_feedback_valid_out_50;
    wire [15:0] i_llvm_fpga_push_i16_sum_039_push43_kmeans37_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i16_sum_039_push43_kmeans37_out_feedback_valid_out_43;
    wire [0:0] i_llvm_fpga_push_i1_forked111116_push48_kmeans59_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i1_forked111116_push48_kmeans59_out_feedback_valid_out_48;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_kmeans7_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_kmeans7_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp41119_push52_kmeans65_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i1_notcmp41119_push52_kmeans65_out_feedback_valid_out_52;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46113_push46_kmeans57_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46113_push46_kmeans57_out_feedback_valid_out_46;
    wire [0:0] i_llvm_fpga_push_i1_notcmp51110_push45_kmeans55_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notcmp51110_push45_kmeans55_out_feedback_valid_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_kmeans47_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_kmeans47_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_push51_kmeans63_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i1_push51_kmeans63_out_feedback_valid_out_51;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push44_kmeans50_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push44_kmeans50_out_feedback_valid_out_44;
    wire [31:0] i_llvm_fpga_push_i32_i27_047_pop32115_push47_kmeans17_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i32_i27_047_pop32115_push47_kmeans17_out_feedback_valid_out_47;
    wire [31:0] i_llvm_fpga_push_i32_j_040_push42_kmeans39_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i32_j_040_push42_kmeans39_out_feedback_valid_out_42;
    wire [31:0] i_llvm_fpga_push_i32_mul46117_push49_kmeans24_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i32_mul46117_push49_kmeans24_out_feedback_valid_out_49;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv14_push41_kmeans43_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv14_push41_kmeans43_out_feedback_valid_out_41;
    wire [16:0] i_lm252_neg_kmeans30_a;
    wire [16:0] i_lm252_neg_kmeans30_b;
    logic [16:0] i_lm252_neg_kmeans30_o;
    wire [16:0] i_lm252_neg_kmeans30_q;
    wire [0:0] i_masked_kmeans51_qi;
    reg [0:0] i_masked_kmeans51_q;
    wire [0:0] i_next_cleanups_kmeans49_s;
    reg [1:0] i_next_cleanups_kmeans49_q;
    wire [0:0] i_notcmp_kmeans46_q;
    wire [0:0] i_or_kmeans48_q;
    wire [0:0] i_unnamed_kmeans12_q;
    wire [0:0] i_unnamed_kmeans45_q;
    wire [0:0] i_xor_kmeans4_q;
    wire [31:0] bgTrunc_i_add47_kmeans25_sel_x_b;
    wire [31:0] bgTrunc_i_add_kmeans18_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next15_kmeans42_sel_x_b;
    wire [31:0] bgTrunc_i_inc55_kmeans38_sel_x_b;
    wire [15:0] bgTrunc_i_lm252_neg_kmeans30_sel_x_b;
    wire [63:0] bgTrunc_i_mul41_kmeans15_sel_x_in;
    wire [31:0] bgTrunc_i_mul41_kmeans15_sel_x_b;
    wire [64:0] i_arrayidx434_kmeans0_add_x_a;
    wire [64:0] i_arrayidx434_kmeans0_add_x_b;
    logic [64:0] i_arrayidx434_kmeans0_add_x_o;
    wire [64:0] i_arrayidx434_kmeans0_add_x_q;
    wire [127:0] i_arrayidx434_kmeans0_mult_extender_x_q;
    wire [61:0] i_arrayidx434_kmeans0_mult_multconst_x_q;
    wire [63:0] i_arrayidx434_kmeans0_trunc_sel_x_b;
    wire [63:0] i_arrayidx434_kmeans0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx495_kmeans0_add_x_a;
    wire [64:0] i_arrayidx495_kmeans0_add_x_b;
    logic [64:0] i_arrayidx495_kmeans0_add_x_o;
    wire [64:0] i_arrayidx495_kmeans0_add_x_q;
    wire [127:0] i_arrayidx495_kmeans0_mult_extender_x_q;
    wire [63:0] i_arrayidx495_kmeans0_trunc_sel_x_b;
    wire [63:0] i_arrayidx495_kmeans0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_kmeans3_sel_x_b;
    wire [63:0] i_idxprom42_kmeans19_sel_x_b;
    wire [63:0] i_idxprom48_kmeans26_sel_x_b;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_0_0_a;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_0_0_b;
    logic [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_0_0_o;
    wire [16:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_0_0_q;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0_a;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0_b;
    logic [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0_o;
    wire [15:0] i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0_q;
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
    wire [0:0] i_exitcond16_kmeans40_cmp_nsign_q;
    wire [63:0] i_mul41_kmeans15_sums_join_0_q;
    wire [50:0] i_mul41_kmeans15_sums_align_1_q;
    wire [50:0] i_mul41_kmeans15_sums_align_1_qint;
    wire [64:0] i_mul41_kmeans15_sums_result_add_0_0_a;
    wire [64:0] i_mul41_kmeans15_sums_result_add_0_0_b;
    logic [64:0] i_mul41_kmeans15_sums_result_add_0_0_o;
    wire [64:0] i_mul41_kmeans15_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx434_kmeans0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx434_kmeans0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx434_kmeans0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx434_kmeans0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx434_kmeans0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx434_kmeans0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx434_kmeans0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx434_kmeans0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx434_kmeans0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx434_kmeans0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx434_kmeans0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx434_kmeans0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx495_kmeans0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx495_kmeans0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx495_kmeans0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx495_kmeans0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx495_kmeans0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx495_kmeans0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx495_kmeans0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx495_kmeans0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx495_kmeans0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx495_kmeans0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx495_kmeans0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx495_kmeans0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid264_i_cleanups_shl_kmeans0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid264_i_cleanups_shl_kmeans0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid265_i_cleanups_shl_kmeans0_shift_x_q;
    wire [0:0] leftShiftStage0_uid267_i_cleanups_shl_kmeans0_shift_x_s;
    reg [1:0] leftShiftStage0_uid267_i_cleanups_shl_kmeans0_shift_x_q;
    wire [10:0] i_arrayidx434_kmeans0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx434_kmeans0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx434_kmeans0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx434_kmeans0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx434_kmeans0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx434_kmeans0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx434_kmeans0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx434_kmeans0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx495_kmeans0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx495_kmeans0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx495_kmeans0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx495_kmeans0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx495_kmeans0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx495_kmeans0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx495_kmeans0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx495_kmeans0_mult_x_im9_shift0_qint;
    wire i_mul41_kmeans15_im0_cma_reset;
    wire [13:0] i_mul41_kmeans15_im0_cma_a0;
    wire [13:0] i_mul41_kmeans15_im0_cma_c0;
    wire [27:0] i_mul41_kmeans15_im0_cma_s0;
    wire [27:0] i_mul41_kmeans15_im0_cma_qq;
    wire [27:0] i_mul41_kmeans15_im0_cma_q;
    wire i_mul41_kmeans15_im0_cma_ena0;
    wire i_mul41_kmeans15_im0_cma_ena1;
    wire i_mul41_kmeans15_im0_cma_ena2;
    wire i_mul41_kmeans15_im8_cma_reset;
    wire [17:0] i_mul41_kmeans15_im8_cma_a0;
    wire [17:0] i_mul41_kmeans15_im8_cma_c0;
    wire [35:0] i_mul41_kmeans15_im8_cma_s0;
    wire [35:0] i_mul41_kmeans15_im8_cma_qq;
    wire [35:0] i_mul41_kmeans15_im8_cma_q;
    wire i_mul41_kmeans15_im8_cma_ena0;
    wire i_mul41_kmeans15_im8_cma_ena1;
    wire i_mul41_kmeans15_im8_cma_ena2;
    wire i_mul41_kmeans15_ma3_cma_reset;
    wire [13:0] i_mul41_kmeans15_ma3_cma_a0;
    wire [17:0] i_mul41_kmeans15_ma3_cma_c0;
    wire [13:0] i_mul41_kmeans15_ma3_cma_a1;
    wire [17:0] i_mul41_kmeans15_ma3_cma_c1;
    wire [32:0] i_mul41_kmeans15_ma3_cma_s0;
    wire [32:0] i_mul41_kmeans15_ma3_cma_qq;
    wire [32:0] i_mul41_kmeans15_ma3_cma_q;
    wire i_mul41_kmeans15_ma3_cma_ena0;
    wire i_mul41_kmeans15_ma3_cma_ena1;
    wire i_mul41_kmeans15_ma3_cma_ena2;
    wire [13:0] i_mul41_kmeans15_bs2_merged_bit_select_b;
    wire [17:0] i_mul41_kmeans15_bs2_merged_bit_select_c;
    wire [13:0] i_mul41_kmeans15_bs1_merged_bit_select_b;
    wire [17:0] i_mul41_kmeans15_bs1_merged_bit_select_c;
    wire [9:0] i_arrayidx434_kmeans0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx434_kmeans0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx434_kmeans0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx434_kmeans0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx495_kmeans0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx495_kmeans0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx495_kmeans0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx495_kmeans0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q;
    reg [0:0] redist1_sync_together141_aunroll_x_in_c0_eni13_1_tpl_10_q;
    reg [31:0] redist2_sync_together141_aunroll_x_in_c0_eni13_2_tpl_1_q;
    reg [31:0] redist3_sync_together141_aunroll_x_in_c0_eni13_3_tpl_1_q;
    reg [0:0] redist4_sync_together141_aunroll_x_in_c0_eni13_4_tpl_1_q;
    reg [0:0] redist5_sync_together141_aunroll_x_in_c0_eni13_5_tpl_1_q;
    reg [0:0] redist6_sync_together141_aunroll_x_in_c0_eni13_6_tpl_1_q;
    reg [15:0] redist7_sync_together141_aunroll_x_in_c0_eni13_7_tpl_1_q;
    reg [0:0] redist8_sync_together141_aunroll_x_in_c0_eni13_8_tpl_1_q;
    reg [0:0] redist9_sync_together141_aunroll_x_in_c0_eni13_9_tpl_1_q;
    reg [0:0] redist10_sync_together141_aunroll_x_in_c0_eni13_10_tpl_10_q;
    reg [0:0] redist11_sync_together141_aunroll_x_in_c0_eni13_11_tpl_10_q;
    reg [0:0] redist13_sync_together141_aunroll_x_in_c0_eni13_13_tpl_10_q;
    reg [0:0] redist14_sync_together141_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist15_sync_together141_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist15_sync_together141_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist15_sync_together141_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist15_sync_together141_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist16_sync_together141_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist16_sync_together141_aunroll_x_in_i_valid_9_delay_0;
    reg [0:0] redist16_sync_together141_aunroll_x_in_i_valid_9_delay_1;
    reg [0:0] redist16_sync_together141_aunroll_x_in_i_valid_9_delay_2;
    reg [31:0] redist17_bgTrunc_i_mul41_kmeans15_sel_x_b_1_q;
    reg [15:0] redist18_bgTrunc_i_lm252_neg_kmeans30_sel_x_b_1_q;
    reg [31:0] redist19_bgTrunc_i_add_kmeans18_sel_x_b_1_q;
    reg [31:0] redist20_bgTrunc_i_add47_kmeans25_sel_x_b_1_q;
    reg [0:0] redist21_i_xor_kmeans4_q_1_q;
    reg [0:0] redist22_i_masked_kmeans51_q_9_q;
    reg [31:0] redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_q;
    reg [31:0] redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_delay_0;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_pop51_kmeans62_out_data_out_9_q;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_notcmp51110_pop45_kmeans54_out_data_out_9_q;
    reg [0:0] redist27_i_llvm_fpga_pop_i1_notcmp46113_pop46_kmeans56_out_data_out_9_q;
    reg [0:0] redist28_i_llvm_fpga_pop_i1_notcmp41119_pop52_kmeans64_out_data_out_9_q;
    reg [0:0] redist29_i_llvm_fpga_pop_i1_forked111116_pop48_kmeans58_out_data_out_9_q;
    reg [0:0] redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q;
    reg [0:0] redist32_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_10_q;
    reg [15:0] redist33_i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata_3_q;
    reg [15:0] redist33_i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata_3_delay_0;
    reg [0:0] redist34_i_first_cleanup_xor_or_kmeans21_q_4_q;
    reg [0:0] redist34_i_first_cleanup_xor_or_kmeans21_q_4_delay_0;
    reg [0:0] redist34_i_first_cleanup_xor_or_kmeans21_q_4_delay_1;
    reg [0:0] redist34_i_first_cleanup_xor_or_kmeans21_q_4_delay_2;
    wire redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_reset0;
    wire [31:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_ia;
    wire [3:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_aa;
    wire [3:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_ab;
    wire [31:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_iq;
    wire [31:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_q;
    wire [3:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_q;
    (* preserve *) reg [3:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_i;
    (* preserve *) reg redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_eq;
    reg [3:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_wraddr_q;
    wire [3:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_last_q;
    wire [0:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_cmpReg_q;
    wire [0:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_notEnable_q;
    wire [0:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_sticky_ena_q;
    wire [0:0] redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_enaAnd_q;
    reg [31:0] redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_inputreg0_q;
    reg [31:0] redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_outputreg0_q;
    wire redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_reset0;
    wire [31:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_ia;
    wire [1:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_aa;
    wire [1:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_ab;
    wire [31:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_iq;
    wire [31:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_q;
    wire [1:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_rdcnt_q;
    (* preserve *) reg [1:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_rdcnt_i;
    reg [1:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_wraddr_q;
    wire [2:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_last_q;
    wire [2:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_cmp_b;
    wire [0:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_cmpReg_q;
    wire [0:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_notEnable_q;
    wire [0:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_sticky_ena_q;
    wire [0:0] redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_enaAnd_q;
    reg [15:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_inputreg0_q;
    wire redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_reset0;
    wire [15:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_ia;
    wire [2:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_aa;
    wire [2:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_ab;
    wire [15:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_iq;
    wire [15:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_q;
    wire [2:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_q;
    (* preserve *) reg [2:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_i;
    (* preserve *) reg redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_eq;
    reg [2:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_wraddr_q;
    wire [3:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_last_q;
    wire [3:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_cmp_b;
    wire [0:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_cmpReg_q;
    wire [0:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_notEnable_q;
    wire [0:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_sticky_ena_q;
    wire [0:0] redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_enaAnd_q;
    reg [15:0] redist33_i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata_3_inputreg0_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist14_sync_together141_aunroll_x_in_i_valid_1(DELAY,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together141_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist14_sync_together141_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1(DELAY,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid264_i_cleanups_shl_kmeans0_shift_x(BITSELECT,263)@2
    assign leftShiftStage0Idx1Rng1_uid264_i_cleanups_shl_kmeans0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop44_kmeans2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid264_i_cleanups_shl_kmeans0_shift_x_b = leftShiftStage0Idx1Rng1_uid264_i_cleanups_shl_kmeans0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid265_i_cleanups_shl_kmeans0_shift_x(BITJOIN,264)@2
    assign leftShiftStage0Idx1_uid265_i_cleanups_shl_kmeans0_shift_x_q = {leftShiftStage0Idx1Rng1_uid264_i_cleanups_shl_kmeans0_shift_x_b, GND_q};

    // leftShiftStage0_uid267_i_cleanups_shl_kmeans0_shift_x(MUX,266)@2
    assign leftShiftStage0_uid267_i_cleanups_shl_kmeans0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid267_i_cleanups_shl_kmeans0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop44_kmeans2_out_data_out or leftShiftStage0Idx1_uid265_i_cleanups_shl_kmeans0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid267_i_cleanups_shl_kmeans0_shift_x_s)
            1'b0 : leftShiftStage0_uid267_i_cleanups_shl_kmeans0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop44_kmeans2_out_data_out;
            1'b1 : leftShiftStage0_uid267_i_cleanups_shl_kmeans0_shift_x_q = leftShiftStage0Idx1_uid265_i_cleanups_shl_kmeans0_shift_x_q;
            default : leftShiftStage0_uid267_i_cleanups_shl_kmeans0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_kmeans5_vt_select_1(BITSELECT,63)@2
    assign i_cleanups_shl_kmeans5_vt_select_1_b = leftShiftStage0_uid267_i_cleanups_shl_kmeans0_shift_x_q[1:1];

    // i_cleanups_shl_kmeans5_vt_join(BITJOIN,62)@2
    assign i_cleanups_shl_kmeans5_vt_join_q = {i_cleanups_shl_kmeans5_vt_select_1_b, GND_q};

    // i_xor_kmeans4(LOGICAL,118)@2
    assign i_xor_kmeans4_q = i_first_cleanup_kmeans3_sel_x_b ^ VCC_q;

    // i_notcmp_kmeans46(LOGICAL,114)@2
    assign i_notcmp_kmeans46_q = i_unnamed_kmeans45_q ^ VCC_q;

    // i_or_kmeans48(LOGICAL,115)@2
    assign i_or_kmeans48_q = i_notcmp_kmeans46_q | i_xor_kmeans4_q;

    // i_next_cleanups_kmeans49(MUX,113)@2
    assign i_next_cleanups_kmeans49_s = i_or_kmeans48_q;
    always @(i_next_cleanups_kmeans49_s or i_llvm_fpga_pop_i2_cleanups_pop44_kmeans2_out_data_out or i_cleanups_shl_kmeans5_vt_join_q)
    begin
        unique case (i_next_cleanups_kmeans49_s)
            1'b0 : i_next_cleanups_kmeans49_q = i_llvm_fpga_pop_i2_cleanups_pop44_kmeans2_out_data_out;
            1'b1 : i_next_cleanups_kmeans49_q = i_cleanups_shl_kmeans5_vt_join_q;
            default : i_next_cleanups_kmeans49_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push44_kmeans50(BLACKBOX,105)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    kmeans_i_llvm_fpga_push_i2_cleanups_push44_0 thei_llvm_fpga_push_i2_cleanups_push44_kmeans50 (
        .in_data_in(i_next_cleanups_kmeans49_q),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i2_cleanups_pop44_kmeans2_out_feedback_stall_out_44),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i2_cleanups_push44_kmeans50_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i2_cleanups_push44_kmeans50_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1(DELAY,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q <= $unsigned(in_c0_eni13_1_tpl);
        end
    end

    // c_i2_1101(CONSTANT,44)
    assign c_i2_1101_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop44_kmeans2(BLACKBOX,91)@2
    // out out_feedback_stall_out_44@20000000
    kmeans_i_llvm_fpga_pop_i2_cleanups_pop44_0 thei_llvm_fpga_pop_i2_cleanups_pop44_kmeans2 (
        .in_data_in(c_i2_1101_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i2_cleanups_push44_kmeans50_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i2_cleanups_push44_kmeans50_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop44_kmeans2_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i2_cleanups_pop44_kmeans2_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_kmeans3_sel_x(BITSELECT,163)@2
    assign i_first_cleanup_kmeans3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop44_kmeans2_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_kmeans23_kmeans8(BLACKBOX,80)@2
    kmeans_i_llvm_fpga_ffwd_dest_i33_unnamed_23_kmeans0 thei_llvm_fpga_ffwd_dest_i33_unnamed_kmeans23_kmeans8 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i33_unnamed_kmeans23_kmeans8_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_1107(CONSTANT,47)
    assign c_i33_1107_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next15_kmeans42(ADD,69)@2
    assign i_fpga_indvars_iv_next15_kmeans42_a = {1'b0, i_fpga_indvars_iv14_replace_phi_kmeans10_q};
    assign i_fpga_indvars_iv_next15_kmeans42_b = {1'b0, c_i33_1107_q};
    assign i_fpga_indvars_iv_next15_kmeans42_o = $unsigned(i_fpga_indvars_iv_next15_kmeans42_a) + $unsigned(i_fpga_indvars_iv_next15_kmeans42_b);
    assign i_fpga_indvars_iv_next15_kmeans42_q = i_fpga_indvars_iv_next15_kmeans42_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next15_kmeans42_sel_x(BITSELECT,130)@2
    assign bgTrunc_i_fpga_indvars_iv_next15_kmeans42_sel_x_b = i_fpga_indvars_iv_next15_kmeans42_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv14_push41_kmeans43(BLACKBOX,109)@2
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    kmeans_i_llvm_fpga_push_i33_fpga_indvars_iv14_push41_0 thei_llvm_fpga_push_i33_fpga_indvars_iv14_push41_kmeans43 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next15_kmeans42_sel_x_b),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop41_kmeans9_out_feedback_stall_out_41),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i33_fpga_indvars_iv14_push41_kmeans43_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i33_fpga_indvars_iv14_push41_kmeans43_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef103(CONSTANT,48)
    assign c_i33_undef103_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop41_kmeans9(BLACKBOX,95)@2
    // out out_feedback_stall_out_41@20000000
    kmeans_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop41_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv14_pop41_kmeans9 (
        .in_data_in(c_i33_undef103_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_41(i_llvm_fpga_push_i33_fpga_indvars_iv14_push41_kmeans43_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i33_fpga_indvars_iv14_push41_kmeans43_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop41_kmeans9_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop41_kmeans9_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv14_replace_phi_kmeans10(MUX,68)@2
    assign i_fpga_indvars_iv14_replace_phi_kmeans10_s = redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q;
    always @(i_fpga_indvars_iv14_replace_phi_kmeans10_s or i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop41_kmeans9_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_kmeans23_kmeans8_out_dest_data_out_10_0)
    begin
        unique case (i_fpga_indvars_iv14_replace_phi_kmeans10_s)
            1'b0 : i_fpga_indvars_iv14_replace_phi_kmeans10_q = i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop41_kmeans9_out_data_out;
            1'b1 : i_fpga_indvars_iv14_replace_phi_kmeans10_q = i_llvm_fpga_ffwd_dest_i33_unnamed_kmeans23_kmeans8_out_dest_data_out_10_0;
            default : i_fpga_indvars_iv14_replace_phi_kmeans10_q = 33'b0;
        endcase
    end

    // i_exitcond16_kmeans40_cmp_nsign(LOGICAL,208)@2
    assign i_exitcond16_kmeans40_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv14_replace_phi_kmeans10_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_kmeans25_kmeans44(BLACKBOX,77)@2
    kmeans_i_llvm_fpga_ffwd_dest_i1_unnamed_25_kmeans0 thei_llvm_fpga_ffwd_dest_i1_unnamed_kmeans25_kmeans44 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i1_unnamed_kmeans25_kmeans44_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_kmeans45(LOGICAL,117)@2
    assign i_unnamed_kmeans45_q = i_llvm_fpga_ffwd_dest_i1_unnamed_kmeans25_kmeans44_out_dest_data_out_9_0 & i_exitcond16_kmeans40_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_kmeans47(BLACKBOX,103)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    kmeans_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_kmeans47 (
        .in_data_in(i_unnamed_kmeans45_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_kmeans6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_kmeans3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together141_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_kmeans47_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_kmeans47_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,171)@1 + 1
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

    // i_llvm_fpga_push_i1_lastiniteration_kmeans7(BLACKBOX,99)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    kmeans_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_kmeans7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_kmeans6_out_initeration_stall_out),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_kmeans7_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_kmeans7_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kmeans6(BLACKBOX,83)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kmeans_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_kmeans6 (
        .in_data_in(in_c0_eni13_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_kmeans7_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_kmeans7_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_kmeans47_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_kmeans47_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_kmeans6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_kmeans6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_kmeans6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_kmeans6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_kmeans6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,52)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_kmeans6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_kmeans6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_kmeans6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,122)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_kmeans6_out_pipeline_valid_out;

    // redist15_sync_together141_aunroll_x_in_i_valid_5(DELAY,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together141_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist15_sync_together141_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist15_sync_together141_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist15_sync_together141_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist15_sync_together141_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist14_sync_together141_aunroll_x_in_i_valid_1_q);
            redist15_sync_together141_aunroll_x_in_i_valid_5_delay_1 <= redist15_sync_together141_aunroll_x_in_i_valid_5_delay_0;
            redist15_sync_together141_aunroll_x_in_i_valid_5_delay_2 <= redist15_sync_together141_aunroll_x_in_i_valid_5_delay_1;
            redist15_sync_together141_aunroll_x_in_i_valid_5_q <= redist15_sync_together141_aunroll_x_in_i_valid_5_delay_2;
        end
    end

    // valid_fanout_reg7(REG,177)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist15_sync_together141_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist21_i_xor_kmeans4_q_1(DELAY,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_xor_kmeans4_q_1_q <= '0;
        end
        else
        begin
            redist21_i_xor_kmeans4_q_1_q <= $unsigned(i_xor_kmeans4_q);
        end
    end

    // valid_fanout_reg2(REG,172)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist14_sync_together141_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_kmeans24_kmeans11(BLACKBOX,76)@3
    kmeans_i_llvm_fpga_ffwd_dest_i1_unnamed_24_kmeans0 thei_llvm_fpga_ffwd_dest_i1_unnamed_kmeans24_kmeans11 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i1_unnamed_kmeans24_kmeans11_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_kmeans12(LOGICAL,116)@3
    assign i_unnamed_kmeans12_q = i_llvm_fpga_ffwd_dest_i1_unnamed_kmeans24_kmeans11_out_dest_data_out_9_0 ^ VCC_q;

    // i_first_cleanup_xor_or_kmeans21(LOGICAL,67)@3
    assign i_first_cleanup_xor_or_kmeans21_q = i_unnamed_kmeans12_q | redist21_i_xor_kmeans4_q_1_q;

    // redist34_i_first_cleanup_xor_or_kmeans21_q_4(DELAY,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_first_cleanup_xor_or_kmeans21_q_4_delay_0 <= '0;
            redist34_i_first_cleanup_xor_or_kmeans21_q_4_delay_1 <= '0;
            redist34_i_first_cleanup_xor_or_kmeans21_q_4_delay_2 <= '0;
            redist34_i_first_cleanup_xor_or_kmeans21_q_4_q <= '0;
        end
        else
        begin
            redist34_i_first_cleanup_xor_or_kmeans21_q_4_delay_0 <= $unsigned(i_first_cleanup_xor_or_kmeans21_q);
            redist34_i_first_cleanup_xor_or_kmeans21_q_4_delay_1 <= redist34_i_first_cleanup_xor_or_kmeans21_q_4_delay_0;
            redist34_i_first_cleanup_xor_or_kmeans21_q_4_delay_2 <= redist34_i_first_cleanup_xor_or_kmeans21_q_4_delay_1;
            redist34_i_first_cleanup_xor_or_kmeans21_q_4_q <= redist34_i_first_cleanup_xor_or_kmeans21_q_4_delay_2;
        end
    end

    // i_arrayidx434_kmeans0_mult_multconst_x(CONSTANT,146)
    assign i_arrayidx434_kmeans0_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // valid_fanout_reg5(REG,175)@1 + 1
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

    // valid_fanout_reg6(REG,176)@1 + 1
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

    // i_llvm_fpga_push_i32_i27_047_pop32115_push47_kmeans17(BLACKBOX,106)@2
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    kmeans_i_llvm_fpga_push_i32_i27_047_pop32115_push47_0 thei_llvm_fpga_push_i32_i27_047_pop32115_push47_kmeans17 (
        .in_data_in(i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_feedback_stall_out_47),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i32_i27_047_pop32115_push47_kmeans17_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i32_i27_047_pop32115_push47_kmeans17_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together141_aunroll_x_in_c0_eni13_2_tpl_1(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together141_aunroll_x_in_c0_eni13_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together141_aunroll_x_in_c0_eni13_2_tpl_1_q <= $unsigned(in_c0_eni13_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16(BLACKBOX,92)@2
    // out out_feedback_stall_out_47@20000000
    kmeans_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_0 thei_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16 (
        .in_data_in(redist2_sync_together141_aunroll_x_in_c0_eni13_2_tpl_1_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_i32_i27_047_pop32115_push47_kmeans17_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i32_i27_047_pop32115_push47_kmeans17_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_inputreg0(DELAY,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_inputreg0_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out);
        end
    end

    // redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4(DELAY,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_delay_0 <= '0;
            redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_delay_0 <= $unsigned(redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_inputreg0_q);
            redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_q <= redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_delay_0;
        end
    end

    // redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_outputreg0(DELAY,329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_outputreg0_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_outputreg0_q <= $unsigned(redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_q);
        end
    end

    // valid_fanout_reg3(REG,173)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_num_dim5726_kmeans13(BLACKBOX,79)@2
    kmeans_i_llvm_fpga_ffwd_dest_i32_num_dim5726_0 thei_llvm_fpga_ffwd_dest_i32_num_dim5726_kmeans13 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_num_dim5726_kmeans13_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul41_kmeans15_bs2_merged_bit_select(BITSELECT,279)@2
    assign i_mul41_kmeans15_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_num_dim5726_kmeans13_out_dest_data_out_2_0[31:18];
    assign i_mul41_kmeans15_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_num_dim5726_kmeans13_out_dest_data_out_2_0[17:0];

    // valid_fanout_reg4(REG,174)@1 + 1
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

    // valid_fanout_reg13(REG,183)@1 + 1
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

    // c_i32_1105(CONSTANT,46)
    assign c_i32_1105_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc55_kmeans38(ADD,74)@2
    assign i_inc55_kmeans38_a = {1'b0, i_llvm_fpga_pop_i32_j_040_pop42_kmeans14_out_data_out};
    assign i_inc55_kmeans38_b = {1'b0, c_i32_1105_q};
    assign i_inc55_kmeans38_o = $unsigned(i_inc55_kmeans38_a) + $unsigned(i_inc55_kmeans38_b);
    assign i_inc55_kmeans38_q = i_inc55_kmeans38_o[32:0];

    // bgTrunc_i_inc55_kmeans38_sel_x(BITSELECT,131)@2
    assign bgTrunc_i_inc55_kmeans38_sel_x_b = i_inc55_kmeans38_q[31:0];

    // i_llvm_fpga_push_i32_j_040_push42_kmeans39(BLACKBOX,107)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    kmeans_i_llvm_fpga_push_i32_j_040_push42_0 thei_llvm_fpga_push_i32_j_040_push42_kmeans39 (
        .in_data_in(bgTrunc_i_inc55_kmeans38_sel_x_b),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i32_j_040_pop42_kmeans14_out_feedback_stall_out_42),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i32_j_040_push42_kmeans39_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i32_j_040_push42_kmeans39_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0104(CONSTANT,45)
    assign c_i32_0104_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_j_040_pop42_kmeans14(BLACKBOX,93)@2
    // out out_feedback_stall_out_42@20000000
    kmeans_i_llvm_fpga_pop_i32_j_040_pop42_0 thei_llvm_fpga_pop_i32_j_040_pop42_kmeans14 (
        .in_data_in(c_i32_0104_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i32_j_040_push42_kmeans39_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i32_j_040_push42_kmeans39_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_040_pop42_kmeans14_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i32_j_040_pop42_kmeans14_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul41_kmeans15_bs1_merged_bit_select(BITSELECT,280)@2
    assign i_mul41_kmeans15_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_j_040_pop42_kmeans14_out_data_out[31:18];
    assign i_mul41_kmeans15_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_j_040_pop42_kmeans14_out_data_out[17:0];

    // i_mul41_kmeans15_ma3_cma(CHAINMULTADD,278)@2 + 3
    assign i_mul41_kmeans15_ma3_cma_reset = ~ (resetn);
    assign i_mul41_kmeans15_ma3_cma_ena0 = 1'b1;
    assign i_mul41_kmeans15_ma3_cma_ena1 = i_mul41_kmeans15_ma3_cma_ena0;
    assign i_mul41_kmeans15_ma3_cma_ena2 = i_mul41_kmeans15_ma3_cma_ena0;

    assign i_mul41_kmeans15_ma3_cma_a0 = i_mul41_kmeans15_bs1_merged_bit_select_b;
    assign i_mul41_kmeans15_ma3_cma_c0 = i_mul41_kmeans15_bs2_merged_bit_select_c;
    assign i_mul41_kmeans15_ma3_cma_a1 = i_mul41_kmeans15_bs2_merged_bit_select_b;
    assign i_mul41_kmeans15_ma3_cma_c1 = i_mul41_kmeans15_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul41_kmeans15_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul41_kmeans15_ma3_cma_ena2, i_mul41_kmeans15_ma3_cma_ena1, i_mul41_kmeans15_ma3_cma_ena0 }),
        .aclr({ i_mul41_kmeans15_ma3_cma_reset, i_mul41_kmeans15_ma3_cma_reset }),
        .ay(i_mul41_kmeans15_ma3_cma_a1),
        .by(i_mul41_kmeans15_ma3_cma_a0),
        .ax(i_mul41_kmeans15_ma3_cma_c1),
        .bx(i_mul41_kmeans15_ma3_cma_c0),
        .resulta(i_mul41_kmeans15_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul41_kmeans15_ma3_cma_delay ( .xin(i_mul41_kmeans15_ma3_cma_s0), .xout(i_mul41_kmeans15_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul41_kmeans15_ma3_cma_q = $unsigned(i_mul41_kmeans15_ma3_cma_qq[32:0]);

    // i_mul41_kmeans15_sums_align_1(BITSHIFT,221)@5
    assign i_mul41_kmeans15_sums_align_1_qint = { i_mul41_kmeans15_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul41_kmeans15_sums_align_1_q = i_mul41_kmeans15_sums_align_1_qint[50:0];

    // i_mul41_kmeans15_im0_cma(CHAINMULTADD,276)@2 + 3
    assign i_mul41_kmeans15_im0_cma_reset = ~ (resetn);
    assign i_mul41_kmeans15_im0_cma_ena0 = 1'b1;
    assign i_mul41_kmeans15_im0_cma_ena1 = i_mul41_kmeans15_im0_cma_ena0;
    assign i_mul41_kmeans15_im0_cma_ena2 = i_mul41_kmeans15_im0_cma_ena0;

    assign i_mul41_kmeans15_im0_cma_a0 = i_mul41_kmeans15_bs1_merged_bit_select_b;
    assign i_mul41_kmeans15_im0_cma_c0 = i_mul41_kmeans15_bs2_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul41_kmeans15_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul41_kmeans15_im0_cma_ena2, i_mul41_kmeans15_im0_cma_ena1, i_mul41_kmeans15_im0_cma_ena0 }),
        .aclr({ i_mul41_kmeans15_im0_cma_reset, i_mul41_kmeans15_im0_cma_reset }),
        .ay(i_mul41_kmeans15_im0_cma_a0),
        .ax(i_mul41_kmeans15_im0_cma_c0),
        .resulta(i_mul41_kmeans15_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul41_kmeans15_im0_cma_delay ( .xin(i_mul41_kmeans15_im0_cma_s0), .xout(i_mul41_kmeans15_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul41_kmeans15_im0_cma_q = $unsigned(i_mul41_kmeans15_im0_cma_qq[27:0]);

    // i_mul41_kmeans15_im8_cma(CHAINMULTADD,277)@2 + 3
    assign i_mul41_kmeans15_im8_cma_reset = ~ (resetn);
    assign i_mul41_kmeans15_im8_cma_ena0 = 1'b1;
    assign i_mul41_kmeans15_im8_cma_ena1 = i_mul41_kmeans15_im8_cma_ena0;
    assign i_mul41_kmeans15_im8_cma_ena2 = i_mul41_kmeans15_im8_cma_ena0;

    assign i_mul41_kmeans15_im8_cma_a0 = i_mul41_kmeans15_bs1_merged_bit_select_c;
    assign i_mul41_kmeans15_im8_cma_c0 = i_mul41_kmeans15_bs2_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul41_kmeans15_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul41_kmeans15_im8_cma_ena2, i_mul41_kmeans15_im8_cma_ena1, i_mul41_kmeans15_im8_cma_ena0 }),
        .aclr({ i_mul41_kmeans15_im8_cma_reset, i_mul41_kmeans15_im8_cma_reset }),
        .ay(i_mul41_kmeans15_im8_cma_a0),
        .ax(i_mul41_kmeans15_im8_cma_c0),
        .resulta(i_mul41_kmeans15_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul41_kmeans15_im8_cma_delay ( .xin(i_mul41_kmeans15_im8_cma_s0), .xout(i_mul41_kmeans15_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul41_kmeans15_im8_cma_q = $unsigned(i_mul41_kmeans15_im8_cma_qq[35:0]);

    // i_mul41_kmeans15_sums_join_0(BITJOIN,220)@5
    assign i_mul41_kmeans15_sums_join_0_q = {i_mul41_kmeans15_im0_cma_q, i_mul41_kmeans15_im8_cma_q};

    // i_mul41_kmeans15_sums_result_add_0_0(ADD,223)@5
    assign i_mul41_kmeans15_sums_result_add_0_0_a = {1'b0, i_mul41_kmeans15_sums_join_0_q};
    assign i_mul41_kmeans15_sums_result_add_0_0_b = {14'b00000000000000, i_mul41_kmeans15_sums_align_1_q};
    assign i_mul41_kmeans15_sums_result_add_0_0_o = $unsigned(i_mul41_kmeans15_sums_result_add_0_0_a) + $unsigned(i_mul41_kmeans15_sums_result_add_0_0_b);
    assign i_mul41_kmeans15_sums_result_add_0_0_q = i_mul41_kmeans15_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul41_kmeans15_sel_x(BITSELECT,133)@5
    assign bgTrunc_i_mul41_kmeans15_sel_x_in = i_mul41_kmeans15_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul41_kmeans15_sel_x_b = bgTrunc_i_mul41_kmeans15_sel_x_in[31:0];

    // redist17_bgTrunc_i_mul41_kmeans15_sel_x_b_1(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_bgTrunc_i_mul41_kmeans15_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_bgTrunc_i_mul41_kmeans15_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul41_kmeans15_sel_x_b);
        end
    end

    // i_add_kmeans18(ADD,54)@6
    assign i_add_kmeans18_a = {1'b0, redist17_bgTrunc_i_mul41_kmeans15_sel_x_b_1_q};
    assign i_add_kmeans18_b = {1'b0, redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_outputreg0_q};
    assign i_add_kmeans18_o = $unsigned(i_add_kmeans18_a) + $unsigned(i_add_kmeans18_b);
    assign i_add_kmeans18_q = i_add_kmeans18_o[32:0];

    // bgTrunc_i_add_kmeans18_sel_x(BITSELECT,129)@6
    assign bgTrunc_i_add_kmeans18_sel_x_b = i_add_kmeans18_q[31:0];

    // redist19_bgTrunc_i_add_kmeans18_sel_x_b_1(DELAY,302)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_bgTrunc_i_add_kmeans18_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist19_bgTrunc_i_add_kmeans18_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_kmeans18_sel_x_b);
        end
    end

    // i_idxprom42_kmeans19_sel_x(BITSELECT,164)@7
    assign i_idxprom42_kmeans19_sel_x_b = $unsigned({{32{redist19_bgTrunc_i_add_kmeans18_sel_x_b_1_q[31]}}, redist19_bgTrunc_i_add_kmeans18_sel_x_b_1_q[31:0]});

    // i_arrayidx434_kmeans0_mult_x_bs1_merged_bit_select(BITSELECT,281)@7
    assign i_arrayidx434_kmeans0_mult_x_bs1_merged_bit_select_b = i_idxprom42_kmeans19_sel_x_b[63:54];
    assign i_arrayidx434_kmeans0_mult_x_bs1_merged_bit_select_c = i_idxprom42_kmeans19_sel_x_b[53:36];
    assign i_arrayidx434_kmeans0_mult_x_bs1_merged_bit_select_d = i_idxprom42_kmeans19_sel_x_b[35:18];
    assign i_arrayidx434_kmeans0_mult_x_bs1_merged_bit_select_e = i_idxprom42_kmeans19_sel_x_b[17:0];

    // i_arrayidx434_kmeans0_mult_x_im0_shift0(BITSHIFT,268)@7
    assign i_arrayidx434_kmeans0_mult_x_im0_shift0_qint = { i_arrayidx434_kmeans0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx434_kmeans0_mult_x_im0_shift0_q = i_arrayidx434_kmeans0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx434_kmeans0_mult_x_sums_align_3(BITSHIFT,239)@7
    assign i_arrayidx434_kmeans0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx434_kmeans0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx434_kmeans0_mult_x_sums_align_3_q = i_arrayidx434_kmeans0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx434_kmeans0_mult_x_im6_shift0(BITSHIFT,270)@7
    assign i_arrayidx434_kmeans0_mult_x_im6_shift0_qint = { i_arrayidx434_kmeans0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx434_kmeans0_mult_x_im6_shift0_q = i_arrayidx434_kmeans0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx434_kmeans0_mult_x_sums_align_2(BITSHIFT,238)@7
    assign i_arrayidx434_kmeans0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx434_kmeans0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx434_kmeans0_mult_x_sums_align_2_q = i_arrayidx434_kmeans0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx434_kmeans0_mult_x_sums_join_4(BITJOIN,240)@7
    assign i_arrayidx434_kmeans0_mult_x_sums_join_4_q = {i_arrayidx434_kmeans0_mult_x_sums_align_3_q, i_arrayidx434_kmeans0_mult_x_sums_align_2_q};

    // i_arrayidx434_kmeans0_mult_x_im3_shift0(BITSHIFT,269)@7
    assign i_arrayidx434_kmeans0_mult_x_im3_shift0_qint = { i_arrayidx434_kmeans0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx434_kmeans0_mult_x_im3_shift0_q = i_arrayidx434_kmeans0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx434_kmeans0_mult_x_sums_align_0(BITSHIFT,236)@7
    assign i_arrayidx434_kmeans0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx434_kmeans0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx434_kmeans0_mult_x_sums_align_0_q = i_arrayidx434_kmeans0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx434_kmeans0_mult_x_im9_shift0(BITSHIFT,271)@7
    assign i_arrayidx434_kmeans0_mult_x_im9_shift0_qint = { i_arrayidx434_kmeans0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx434_kmeans0_mult_x_im9_shift0_q = i_arrayidx434_kmeans0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx434_kmeans0_mult_x_sums_join_1(BITJOIN,237)@7
    assign i_arrayidx434_kmeans0_mult_x_sums_join_1_q = {i_arrayidx434_kmeans0_mult_x_sums_align_0_q, {1'b0, i_arrayidx434_kmeans0_mult_x_im9_shift0_q}};

    // i_arrayidx434_kmeans0_mult_x_sums_result_add_0_0(ADD,241)@7
    assign i_arrayidx434_kmeans0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx434_kmeans0_mult_x_sums_join_1_q};
    assign i_arrayidx434_kmeans0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx434_kmeans0_mult_x_sums_join_4_q};
    assign i_arrayidx434_kmeans0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx434_kmeans0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx434_kmeans0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx434_kmeans0_mult_x_sums_result_add_0_0_q = i_arrayidx434_kmeans0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx434_kmeans0_mult_extender_x(BITJOIN,145)@7
    assign i_arrayidx434_kmeans0_mult_extender_x_q = {i_arrayidx434_kmeans0_mult_multconst_x_q, i_arrayidx434_kmeans0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx434_kmeans0_trunc_sel_x(BITSELECT,147)@7
    assign i_arrayidx434_kmeans0_trunc_sel_x_b = i_arrayidx434_kmeans0_mult_extender_x_q[63:0];

    // c_kmeans_data_in_pmem(CONSTANT,50)
    assign c_kmeans_data_in_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx434_kmeans0_add_x(ADD,139)@7
    assign i_arrayidx434_kmeans0_add_x_a = {1'b0, c_kmeans_data_in_pmem_q};
    assign i_arrayidx434_kmeans0_add_x_b = {1'b0, i_arrayidx434_kmeans0_trunc_sel_x_b};
    assign i_arrayidx434_kmeans0_add_x_o = $unsigned(i_arrayidx434_kmeans0_add_x_a) + $unsigned(i_arrayidx434_kmeans0_add_x_b);
    assign i_arrayidx434_kmeans0_add_x_q = i_arrayidx434_kmeans0_add_x_o[64:0];

    // i_arrayidx434_kmeans0_dupName_0_trunc_sel_x(BITSELECT,148)@7
    assign i_arrayidx434_kmeans0_dupName_0_trunc_sel_x_b = i_arrayidx434_kmeans0_add_x_q[63:0];

    // i_arrayidx434_kmeans20_vt_select_63(BITSELECT,57)@7
    assign i_arrayidx434_kmeans20_vt_select_63_b = i_arrayidx434_kmeans0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx434_kmeans20_vt_join(BITJOIN,56)@7
    assign i_arrayidx434_kmeans20_vt_join_q = {i_arrayidx434_kmeans20_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_lm1_kmeans22(BLACKBOX,81)@7
    // in in_i_stall@20000000
    // out out_lm1_kmeans_avm_address@20000000
    // out out_lm1_kmeans_avm_burstcount@20000000
    // out out_lm1_kmeans_avm_byteenable@20000000
    // out out_lm1_kmeans_avm_enable@20000000
    // out out_lm1_kmeans_avm_read@20000000
    // out out_lm1_kmeans_avm_write@20000000
    // out out_lm1_kmeans_avm_writedata@20000000
    // out out_o_readdata@11
    // out out_o_stall@10
    // out out_o_valid@11
    kmeans_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_kmeans22 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx434_kmeans20_vt_join_q),
        .in_i_predicate(redist34_i_first_cleanup_xor_or_kmeans21_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_lm1_kmeans_avm_readdata(in_lm1_kmeans_avm_readdata),
        .in_lm1_kmeans_avm_readdatavalid(in_lm1_kmeans_avm_readdatavalid),
        .in_lm1_kmeans_avm_waitrequest(in_lm1_kmeans_avm_waitrequest),
        .in_lm1_kmeans_avm_writeack(in_lm1_kmeans_avm_writeack),
        .out_lm1_kmeans_avm_address(i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_address),
        .out_lm1_kmeans_avm_burstcount(i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_burstcount),
        .out_lm1_kmeans_avm_byteenable(i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_byteenable),
        .out_lm1_kmeans_avm_enable(i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_enable),
        .out_lm1_kmeans_avm_read(i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_read),
        .out_lm1_kmeans_avm_write(i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_write),
        .out_lm1_kmeans_avm_writedata(i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_kmeans22_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,136)
    assign out_lm1_kmeans_avm_address = i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_address;
    assign out_lm1_kmeans_avm_enable = i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_enable;
    assign out_lm1_kmeans_avm_read = i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_read;
    assign out_lm1_kmeans_avm_write = i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_write;
    assign out_lm1_kmeans_avm_writedata = i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_writedata;
    assign out_lm1_kmeans_avm_byteenable = i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_byteenable;
    assign out_lm1_kmeans_avm_burstcount = i_llvm_fpga_mem_lm1_kmeans22_out_lm1_kmeans_avm_burstcount;

    // valid_fanout_reg10(REG,180)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist14_sync_together141_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg8(REG,178)@1 + 1
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

    // valid_fanout_reg9(REG,179)@1 + 1
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

    // i_llvm_fpga_push_i32_mul46117_push49_kmeans24(BLACKBOX,108)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    kmeans_i_llvm_fpga_push_i32_mul46117_push49_0 thei_llvm_fpga_push_i32_mul46117_push49_kmeans24 (
        .in_data_in(i_llvm_fpga_pop_i32_mul46117_pop49_kmeans23_out_data_out),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i32_mul46117_pop49_kmeans23_out_feedback_stall_out_49),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i32_mul46117_push49_kmeans24_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i32_mul46117_push49_kmeans24_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together141_aunroll_x_in_c0_eni13_3_tpl_1(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together141_aunroll_x_in_c0_eni13_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together141_aunroll_x_in_c0_eni13_3_tpl_1_q <= $unsigned(in_c0_eni13_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul46117_pop49_kmeans23(BLACKBOX,94)@2
    // out out_feedback_stall_out_49@20000000
    kmeans_i_llvm_fpga_pop_i32_mul46117_pop49_0 thei_llvm_fpga_pop_i32_mul46117_pop49_kmeans23 (
        .in_data_in(redist3_sync_together141_aunroll_x_in_c0_eni13_3_tpl_1_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_i32_mul46117_push49_kmeans24_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i32_mul46117_push49_kmeans24_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul46117_pop49_kmeans23_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i32_mul46117_pop49_kmeans23_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add47_kmeans25(ADD,53)@2
    assign i_add47_kmeans25_a = {1'b0, i_llvm_fpga_pop_i32_j_040_pop42_kmeans14_out_data_out};
    assign i_add47_kmeans25_b = {1'b0, i_llvm_fpga_pop_i32_mul46117_pop49_kmeans23_out_data_out};
    assign i_add47_kmeans25_o = $unsigned(i_add47_kmeans25_a) + $unsigned(i_add47_kmeans25_b);
    assign i_add47_kmeans25_q = i_add47_kmeans25_o[32:0];

    // bgTrunc_i_add47_kmeans25_sel_x(BITSELECT,128)@2
    assign bgTrunc_i_add47_kmeans25_sel_x_b = i_add47_kmeans25_q[31:0];

    // redist20_bgTrunc_i_add47_kmeans25_sel_x_b_1(DELAY,303)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_bgTrunc_i_add47_kmeans25_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist20_bgTrunc_i_add47_kmeans25_sel_x_b_1_q <= $unsigned(bgTrunc_i_add47_kmeans25_sel_x_b);
        end
    end

    // i_idxprom48_kmeans26_sel_x(BITSELECT,165)@3
    assign i_idxprom48_kmeans26_sel_x_b = $unsigned({{32{redist20_bgTrunc_i_add47_kmeans25_sel_x_b_1_q[31]}}, redist20_bgTrunc_i_add47_kmeans25_sel_x_b_1_q[31:0]});

    // i_arrayidx495_kmeans0_mult_x_bs1_merged_bit_select(BITSELECT,282)@3
    assign i_arrayidx495_kmeans0_mult_x_bs1_merged_bit_select_b = i_idxprom48_kmeans26_sel_x_b[63:54];
    assign i_arrayidx495_kmeans0_mult_x_bs1_merged_bit_select_c = i_idxprom48_kmeans26_sel_x_b[53:36];
    assign i_arrayidx495_kmeans0_mult_x_bs1_merged_bit_select_d = i_idxprom48_kmeans26_sel_x_b[35:18];
    assign i_arrayidx495_kmeans0_mult_x_bs1_merged_bit_select_e = i_idxprom48_kmeans26_sel_x_b[17:0];

    // i_arrayidx495_kmeans0_mult_x_im0_shift0(BITSHIFT,272)@3
    assign i_arrayidx495_kmeans0_mult_x_im0_shift0_qint = { i_arrayidx495_kmeans0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx495_kmeans0_mult_x_im0_shift0_q = i_arrayidx495_kmeans0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx495_kmeans0_mult_x_sums_align_3(BITSHIFT,257)@3
    assign i_arrayidx495_kmeans0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx495_kmeans0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx495_kmeans0_mult_x_sums_align_3_q = i_arrayidx495_kmeans0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx495_kmeans0_mult_x_im6_shift0(BITSHIFT,274)@3
    assign i_arrayidx495_kmeans0_mult_x_im6_shift0_qint = { i_arrayidx495_kmeans0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx495_kmeans0_mult_x_im6_shift0_q = i_arrayidx495_kmeans0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx495_kmeans0_mult_x_sums_align_2(BITSHIFT,256)@3
    assign i_arrayidx495_kmeans0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx495_kmeans0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx495_kmeans0_mult_x_sums_align_2_q = i_arrayidx495_kmeans0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx495_kmeans0_mult_x_sums_join_4(BITJOIN,258)@3
    assign i_arrayidx495_kmeans0_mult_x_sums_join_4_q = {i_arrayidx495_kmeans0_mult_x_sums_align_3_q, i_arrayidx495_kmeans0_mult_x_sums_align_2_q};

    // i_arrayidx495_kmeans0_mult_x_im3_shift0(BITSHIFT,273)@3
    assign i_arrayidx495_kmeans0_mult_x_im3_shift0_qint = { i_arrayidx495_kmeans0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx495_kmeans0_mult_x_im3_shift0_q = i_arrayidx495_kmeans0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx495_kmeans0_mult_x_sums_align_0(BITSHIFT,254)@3
    assign i_arrayidx495_kmeans0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx495_kmeans0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx495_kmeans0_mult_x_sums_align_0_q = i_arrayidx495_kmeans0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx495_kmeans0_mult_x_im9_shift0(BITSHIFT,275)@3
    assign i_arrayidx495_kmeans0_mult_x_im9_shift0_qint = { i_arrayidx495_kmeans0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx495_kmeans0_mult_x_im9_shift0_q = i_arrayidx495_kmeans0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx495_kmeans0_mult_x_sums_join_1(BITJOIN,255)@3
    assign i_arrayidx495_kmeans0_mult_x_sums_join_1_q = {i_arrayidx495_kmeans0_mult_x_sums_align_0_q, {1'b0, i_arrayidx495_kmeans0_mult_x_im9_shift0_q}};

    // i_arrayidx495_kmeans0_mult_x_sums_result_add_0_0(ADD,259)@3
    assign i_arrayidx495_kmeans0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx495_kmeans0_mult_x_sums_join_1_q};
    assign i_arrayidx495_kmeans0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx495_kmeans0_mult_x_sums_join_4_q};
    assign i_arrayidx495_kmeans0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx495_kmeans0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx495_kmeans0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx495_kmeans0_mult_x_sums_result_add_0_0_q = i_arrayidx495_kmeans0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx495_kmeans0_mult_extender_x(BITJOIN,155)@3
    assign i_arrayidx495_kmeans0_mult_extender_x_q = {i_arrayidx434_kmeans0_mult_multconst_x_q, i_arrayidx495_kmeans0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx495_kmeans0_trunc_sel_x(BITSELECT,157)@3
    assign i_arrayidx495_kmeans0_trunc_sel_x_b = i_arrayidx495_kmeans0_mult_extender_x_q[63:0];

    // c_kmeans_centroids_pmem(CONSTANT,49)
    assign c_kmeans_centroids_pmem_q = $unsigned(64'b0100000000001000000000000000000000000000000000000000000000000000);

    // i_arrayidx495_kmeans0_add_x(ADD,149)@3
    assign i_arrayidx495_kmeans0_add_x_a = {1'b0, c_kmeans_centroids_pmem_q};
    assign i_arrayidx495_kmeans0_add_x_b = {1'b0, i_arrayidx495_kmeans0_trunc_sel_x_b};
    assign i_arrayidx495_kmeans0_add_x_o = $unsigned(i_arrayidx495_kmeans0_add_x_a) + $unsigned(i_arrayidx495_kmeans0_add_x_b);
    assign i_arrayidx495_kmeans0_add_x_q = i_arrayidx495_kmeans0_add_x_o[64:0];

    // i_arrayidx495_kmeans0_dupName_0_trunc_sel_x(BITSELECT,158)@3
    assign i_arrayidx495_kmeans0_dupName_0_trunc_sel_x_b = i_arrayidx495_kmeans0_add_x_q[63:0];

    // i_arrayidx495_kmeans27_vt_select_63(BITSELECT,60)@3
    assign i_arrayidx495_kmeans27_vt_select_63_b = i_arrayidx495_kmeans0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx495_kmeans27_vt_join(BITJOIN,59)@3
    assign i_arrayidx495_kmeans27_vt_join_q = {i_arrayidx495_kmeans27_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_lm252_kmeans28(BLACKBOX,82)@3
    // in in_i_stall@20000000
    // out out_lm252_kmeans_avm_address@20000000
    // out out_lm252_kmeans_avm_burstcount@20000000
    // out out_lm252_kmeans_avm_byteenable@20000000
    // out out_lm252_kmeans_avm_enable@20000000
    // out out_lm252_kmeans_avm_read@20000000
    // out out_lm252_kmeans_avm_write@20000000
    // out out_lm252_kmeans_avm_writedata@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    kmeans_i_llvm_fpga_mem_lm252_0 thei_llvm_fpga_mem_lm252_kmeans28 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx495_kmeans27_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_or_kmeans21_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_lm252_kmeans_avm_readdata(in_lm252_kmeans_avm_readdata),
        .in_lm252_kmeans_avm_readdatavalid(in_lm252_kmeans_avm_readdatavalid),
        .in_lm252_kmeans_avm_waitrequest(in_lm252_kmeans_avm_waitrequest),
        .in_lm252_kmeans_avm_writeack(in_lm252_kmeans_avm_writeack),
        .out_lm252_kmeans_avm_address(i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_address),
        .out_lm252_kmeans_avm_burstcount(i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_burstcount),
        .out_lm252_kmeans_avm_byteenable(i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_byteenable),
        .out_lm252_kmeans_avm_enable(i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_enable),
        .out_lm252_kmeans_avm_read(i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_read),
        .out_lm252_kmeans_avm_write(i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_write),
        .out_lm252_kmeans_avm_writedata(i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,138)
    assign out_lm252_kmeans_avm_address = i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_address;
    assign out_lm252_kmeans_avm_enable = i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_enable;
    assign out_lm252_kmeans_avm_read = i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_read;
    assign out_lm252_kmeans_avm_write = i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_write;
    assign out_lm252_kmeans_avm_writedata = i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_writedata;
    assign out_lm252_kmeans_avm_byteenable = i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_byteenable;
    assign out_lm252_kmeans_avm_burstcount = i_llvm_fpga_mem_lm252_kmeans28_out_lm252_kmeans_avm_burstcount;

    // redist16_sync_together141_aunroll_x_in_i_valid_9(DELAY,299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together141_aunroll_x_in_i_valid_9_delay_0 <= '0;
            redist16_sync_together141_aunroll_x_in_i_valid_9_delay_1 <= '0;
            redist16_sync_together141_aunroll_x_in_i_valid_9_delay_2 <= '0;
            redist16_sync_together141_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist16_sync_together141_aunroll_x_in_i_valid_9_delay_0 <= $unsigned(redist15_sync_together141_aunroll_x_in_i_valid_5_q);
            redist16_sync_together141_aunroll_x_in_i_valid_9_delay_1 <= redist16_sync_together141_aunroll_x_in_i_valid_9_delay_0;
            redist16_sync_together141_aunroll_x_in_i_valid_9_delay_2 <= redist16_sync_together141_aunroll_x_in_i_valid_9_delay_1;
            redist16_sync_together141_aunroll_x_in_i_valid_9_q <= redist16_sync_together141_aunroll_x_in_i_valid_9_delay_2;
        end
    end

    // valid_fanout_reg0(REG,170)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist16_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist13_sync_together141_aunroll_x_in_c0_eni13_13_tpl_10(DELAY,296)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_sync_together141_aunroll_x_in_c0_eni13_13_tpl_10 ( .xin(in_c0_eni13_13_tpl), .xout(redist13_sync_together141_aunroll_x_in_c0_eni13_13_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_notEnable(LOGICAL,324)
    assign redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_nor(LOGICAL,325)
    assign redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_nor_q = ~ (redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_notEnable_q | redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_sticky_ena_q);

    // redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_last(CONSTANT,321)
    assign redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_last_q = $unsigned(4'b0111);

    // redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_cmp(LOGICAL,322)
    assign redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_cmp_q = $unsigned(redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_last_q == redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_q ? 1'b1 : 1'b0);

    // redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_cmpReg(REG,323)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_cmpReg_q <= $unsigned(redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_cmp_q);
        end
    end

    // redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_sticky_ena(REG,326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_nor_q == 1'b1)
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_sticky_ena_q <= $unsigned(redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_cmpReg_q);
        end
    end

    // redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_enaAnd(LOGICAL,327)
    assign redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_enaAnd_q = redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_sticky_ena_q & VCC_q;

    // redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt(COUNTER,319)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_i <= 4'd0;
            redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_i == 4'd7)
            begin
                redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_eq <= 1'b0;
            end
            if (redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_eq == 1'b1)
            begin
                redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_i <= $unsigned(redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_i <= $unsigned(redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_q = redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_i[3:0];

    // redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_wraddr(REG,320)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_wraddr_q <= $unsigned(redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_q);
        end
    end

    // redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem(DUALMEM,318)
    assign redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_ia = $unsigned(in_c0_eni13_12_tpl);
    assign redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_aa = redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_wraddr_q;
    assign redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_ab = redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_rdcnt_q;
    assign redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(9),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(9),
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
    ) redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_dmem (
        .clocken1(redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_aa),
        .data_a(redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_ab),
        .q_b(redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_iq),
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
    assign redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_q = redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_iq[31:0];

    // redist11_sync_together141_aunroll_x_in_c0_eni13_11_tpl_10(DELAY,294)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_sync_together141_aunroll_x_in_c0_eni13_11_tpl_10 ( .xin(in_c0_eni13_11_tpl), .xout(redist11_sync_together141_aunroll_x_in_c0_eni13_11_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_sync_together141_aunroll_x_in_c0_eni13_10_tpl_10(DELAY,293)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_sync_together141_aunroll_x_in_c0_eni13_10_tpl_10 ( .xin(in_c0_eni13_10_tpl), .xout(redist10_sync_together141_aunroll_x_in_c0_eni13_10_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg25(REG,195)@1 + 1
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

    // valid_fanout_reg26(REG,196)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp41119_push52_kmeans65(BLACKBOX,100)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    kmeans_i_llvm_fpga_push_i1_notcmp41119_push52_0 thei_llvm_fpga_push_i1_notcmp41119_push52_kmeans65 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp41119_pop52_kmeans64_out_data_out),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i1_notcmp41119_pop52_kmeans64_out_feedback_stall_out_52),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i1_notcmp41119_push52_kmeans65_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i1_notcmp41119_push52_kmeans65_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together141_aunroll_x_in_c0_eni13_9_tpl_1(DELAY,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together141_aunroll_x_in_c0_eni13_9_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together141_aunroll_x_in_c0_eni13_9_tpl_1_q <= $unsigned(in_c0_eni13_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp41119_pop52_kmeans64(BLACKBOX,87)@2
    // out out_feedback_stall_out_52@20000000
    kmeans_i_llvm_fpga_pop_i1_notcmp41119_pop52_0 thei_llvm_fpga_pop_i1_notcmp41119_pop52_kmeans64 (
        .in_data_in(redist9_sync_together141_aunroll_x_in_c0_eni13_9_tpl_1_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_52(i_llvm_fpga_push_i1_notcmp41119_push52_kmeans65_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i1_notcmp41119_push52_kmeans65_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp41119_pop52_kmeans64_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i1_notcmp41119_pop52_kmeans64_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_pop_i1_notcmp41119_pop52_kmeans64_out_data_out_9(DELAY,311)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist28_i_llvm_fpga_pop_i1_notcmp41119_pop52_kmeans64_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_notcmp41119_pop52_kmeans64_out_data_out), .xout(redist28_i_llvm_fpga_pop_i1_notcmp41119_pop52_kmeans64_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg23(REG,193)@1 + 1
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

    // valid_fanout_reg24(REG,194)@1 + 1
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

    // i_llvm_fpga_push_i1_push51_kmeans63(BLACKBOX,104)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    kmeans_i_llvm_fpga_push_i1_push51_0 thei_llvm_fpga_push_i1_push51_kmeans63 (
        .in_data_in(i_llvm_fpga_pop_i1_pop51_kmeans62_out_data_out),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i1_pop51_kmeans62_out_feedback_stall_out_51),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i1_push51_kmeans63_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i1_push51_kmeans63_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together141_aunroll_x_in_c0_eni13_8_tpl_1(DELAY,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together141_aunroll_x_in_c0_eni13_8_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together141_aunroll_x_in_c0_eni13_8_tpl_1_q <= $unsigned(in_c0_eni13_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop51_kmeans62(BLACKBOX,90)@2
    // out out_feedback_stall_out_51@20000000
    kmeans_i_llvm_fpga_pop_i1_pop51_0 thei_llvm_fpga_pop_i1_pop51_kmeans62 (
        .in_data_in(redist8_sync_together141_aunroll_x_in_c0_eni13_8_tpl_1_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i1_push51_kmeans63_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i1_push51_kmeans63_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop51_kmeans62_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i1_pop51_kmeans62_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_pop_i1_pop51_kmeans62_out_data_out_9(DELAY,308)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist25_i_llvm_fpga_pop_i1_pop51_kmeans62_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_pop51_kmeans62_out_data_out), .xout(redist25_i_llvm_fpga_pop_i1_pop51_kmeans62_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_notEnable(LOGICAL,347)
    assign redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_nor(LOGICAL,348)
    assign redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_nor_q = ~ (redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_notEnable_q | redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_sticky_ena_q);

    // redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_last(CONSTANT,344)
    assign redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_last_q = $unsigned(4'b0101);

    // redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_cmp(LOGICAL,345)
    assign redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_cmp_b = {1'b0, redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_q};
    assign redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_cmp_q = $unsigned(redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_last_q == redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_cmpReg(REG,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_cmpReg_q <= $unsigned(redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_cmp_q);
        end
    end

    // redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_sticky_ena(REG,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_nor_q == 1'b1)
        begin
            redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_sticky_ena_q <= $unsigned(redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_cmpReg_q);
        end
    end

    // redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_enaAnd(LOGICAL,350)
    assign redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_enaAnd_q = redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_sticky_ena_q & VCC_q;

    // redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt(COUNTER,342)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_i <= 3'd0;
            redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_i == 3'd5)
            begin
                redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_eq <= 1'b0;
            end
            if (redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_eq == 1'b1)
            begin
                redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_i <= $unsigned(redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_i <= $unsigned(redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_q = redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_i[2:0];

    // valid_fanout_reg21(REG,191)@1 + 1
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

    // valid_fanout_reg22(REG,192)@1 + 1
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

    // i_llvm_fpga_push_i16_c_044_pop35118_push50_kmeans61(BLACKBOX,96)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    kmeans_i_llvm_fpga_push_i16_c_044_pop35118_push50_0 thei_llvm_fpga_push_i16_c_044_pop35118_push50_kmeans61 (
        .in_data_in(i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_feedback_stall_out_50),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i16_c_044_pop35118_push50_kmeans61_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i16_c_044_pop35118_push50_kmeans61_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together141_aunroll_x_in_c0_eni13_7_tpl_1(DELAY,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together141_aunroll_x_in_c0_eni13_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together141_aunroll_x_in_c0_eni13_7_tpl_1_q <= $unsigned(in_c0_eni13_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60(BLACKBOX,84)@2
    // out out_feedback_stall_out_50@20000000
    kmeans_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_0 thei_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60 (
        .in_data_in(redist7_sync_together141_aunroll_x_in_c0_eni13_7_tpl_1_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i16_c_044_pop35118_push50_kmeans61_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i16_c_044_pop35118_push50_kmeans61_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_inputreg0(DELAY,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_inputreg0_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out);
        end
    end

    // redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_wraddr(REG,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_wraddr_q <= $unsigned(redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_q);
        end
    end

    // redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem(DUALMEM,341)
    assign redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_ia = $unsigned(redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_inputreg0_q);
    assign redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_aa = redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_wraddr_q;
    assign redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_ab = redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_rdcnt_q;
    assign redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(16),
        .widthad_a(3),
        .numwords_a(7),
        .width_b(16),
        .widthad_b(3),
        .numwords_b(7),
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
    ) redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_dmem (
        .clocken1(redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_aa),
        .data_a(redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_ab),
        .q_b(redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_iq),
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
    assign redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_q = redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_iq[15:0];

    // valid_fanout_reg19(REG,189)@1 + 1
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

    // valid_fanout_reg20(REG,190)@1 + 1
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

    // i_llvm_fpga_push_i1_forked111116_push48_kmeans59(BLACKBOX,98)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    kmeans_i_llvm_fpga_push_i1_forked111116_push48_0 thei_llvm_fpga_push_i1_forked111116_push48_kmeans59 (
        .in_data_in(i_llvm_fpga_pop_i1_forked111116_pop48_kmeans58_out_data_out),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i1_forked111116_pop48_kmeans58_out_feedback_stall_out_48),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i1_forked111116_push48_kmeans59_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i1_forked111116_push48_kmeans59_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together141_aunroll_x_in_c0_eni13_6_tpl_1(DELAY,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together141_aunroll_x_in_c0_eni13_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together141_aunroll_x_in_c0_eni13_6_tpl_1_q <= $unsigned(in_c0_eni13_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked111116_pop48_kmeans58(BLACKBOX,86)@2
    // out out_feedback_stall_out_48@20000000
    kmeans_i_llvm_fpga_pop_i1_forked111116_pop48_0 thei_llvm_fpga_pop_i1_forked111116_pop48_kmeans58 (
        .in_data_in(redist6_sync_together141_aunroll_x_in_c0_eni13_6_tpl_1_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i1_forked111116_push48_kmeans59_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i1_forked111116_push48_kmeans59_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked111116_pop48_kmeans58_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i1_forked111116_pop48_kmeans58_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_i_llvm_fpga_pop_i1_forked111116_pop48_kmeans58_out_data_out_9(DELAY,312)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist29_i_llvm_fpga_pop_i1_forked111116_pop48_kmeans58_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_forked111116_pop48_kmeans58_out_data_out), .xout(redist29_i_llvm_fpga_pop_i1_forked111116_pop48_kmeans58_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg17(REG,187)@1 + 1
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

    // valid_fanout_reg18(REG,188)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp46113_push46_kmeans57(BLACKBOX,101)@2
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    kmeans_i_llvm_fpga_push_i1_notcmp46113_push46_0 thei_llvm_fpga_push_i1_notcmp46113_push46_kmeans57 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp46113_pop46_kmeans56_out_data_out),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i1_notcmp46113_pop46_kmeans56_out_feedback_stall_out_46),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i1_notcmp46113_push46_kmeans57_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i1_notcmp46113_push46_kmeans57_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together141_aunroll_x_in_c0_eni13_5_tpl_1(DELAY,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together141_aunroll_x_in_c0_eni13_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together141_aunroll_x_in_c0_eni13_5_tpl_1_q <= $unsigned(in_c0_eni13_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp46113_pop46_kmeans56(BLACKBOX,88)@2
    // out out_feedback_stall_out_46@20000000
    kmeans_i_llvm_fpga_pop_i1_notcmp46113_pop46_0 thei_llvm_fpga_pop_i1_notcmp46113_pop46_kmeans56 (
        .in_data_in(redist5_sync_together141_aunroll_x_in_c0_eni13_5_tpl_1_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i1_notcmp46113_push46_kmeans57_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i1_notcmp46113_push46_kmeans57_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp46113_pop46_kmeans56_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i1_notcmp46113_pop46_kmeans56_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_pop_i1_notcmp46113_pop46_kmeans56_out_data_out_9(DELAY,310)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist27_i_llvm_fpga_pop_i1_notcmp46113_pop46_kmeans56_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_notcmp46113_pop46_kmeans56_out_data_out), .xout(redist27_i_llvm_fpga_pop_i1_notcmp46113_pop46_kmeans56_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg15(REG,185)@1 + 1
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

    // valid_fanout_reg16(REG,186)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp51110_push45_kmeans55(BLACKBOX,102)@2
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    kmeans_i_llvm_fpga_push_i1_notcmp51110_push45_0 thei_llvm_fpga_push_i1_notcmp51110_push45_kmeans55 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp51110_pop45_kmeans54_out_data_out),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i1_notcmp51110_pop45_kmeans54_out_feedback_stall_out_45),
        .in_keep_going(redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i1_notcmp51110_push45_kmeans55_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i1_notcmp51110_push45_kmeans55_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together141_aunroll_x_in_c0_eni13_4_tpl_1(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together141_aunroll_x_in_c0_eni13_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together141_aunroll_x_in_c0_eni13_4_tpl_1_q <= $unsigned(in_c0_eni13_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp51110_pop45_kmeans54(BLACKBOX,89)@2
    // out out_feedback_stall_out_45@20000000
    kmeans_i_llvm_fpga_pop_i1_notcmp51110_pop45_0 thei_llvm_fpga_pop_i1_notcmp51110_pop45_kmeans54 (
        .in_data_in(redist4_sync_together141_aunroll_x_in_c0_eni13_4_tpl_1_q),
        .in_dir(redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_i1_notcmp51110_push45_kmeans55_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i1_notcmp51110_push45_kmeans55_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp51110_pop45_kmeans54_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i1_notcmp51110_pop45_kmeans54_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_llvm_fpga_pop_i1_notcmp51110_pop45_kmeans54_out_data_out_9(DELAY,309)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist26_i_llvm_fpga_pop_i1_notcmp51110_pop45_kmeans54_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_notcmp51110_pop45_kmeans54_out_data_out), .xout(redist26_i_llvm_fpga_pop_i1_notcmp51110_pop45_kmeans54_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg11(REG,181)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist16_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg12(REG,182)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist16_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i16_sum_039_push43_kmeans37(BLACKBOX,97)@11
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    kmeans_i_llvm_fpga_push_i16_sum_039_push43_0 thei_llvm_fpga_push_i16_sum_039_push43_kmeans37 (
        .in_data_in(i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0_q),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i16_sum_039_pop43_kmeans29_out_feedback_stall_out_43),
        .in_keep_going(redist32_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i16_sum_039_push43_kmeans37_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i16_sum_039_push43_kmeans37_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together141_aunroll_x_in_c0_eni13_1_tpl_10(DELAY,284)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together141_aunroll_x_in_c0_eni13_1_tpl_10 ( .xin(redist0_sync_together141_aunroll_x_in_c0_eni13_1_tpl_1_q), .xout(redist1_sync_together141_aunroll_x_in_c0_eni13_1_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i16_sum_039_pop43_kmeans29(BLACKBOX,85)@11
    // out out_feedback_stall_out_43@20000000
    kmeans_i_llvm_fpga_pop_i16_sum_039_pop43_0 thei_llvm_fpga_pop_i16_sum_039_pop43_kmeans29 (
        .in_data_in(c_i16_033_q),
        .in_dir(redist1_sync_together141_aunroll_x_in_c0_eni13_1_tpl_10_q),
        .in_feedback_in_43(i_llvm_fpga_push_i16_sum_039_push43_kmeans37_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i16_sum_039_push43_kmeans37_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i16_sum_039_pop43_kmeans29_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i16_sum_039_pop43_kmeans29_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata_3_inputreg0(DELAY,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata_3_inputreg0_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata_3_inputreg0_q <= $unsigned(i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata);
        end
    end

    // redist33_i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata_3(DELAY,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata_3_delay_0 <= '0;
            redist33_i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata_3_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata_3_delay_0 <= $unsigned(redist33_i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata_3_inputreg0_q);
            redist33_i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata_3_q <= redist33_i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata_3_delay_0;
        end
    end

    // i_lm252_neg_kmeans30(SUB,110)@10
    assign i_lm252_neg_kmeans30_a = {1'b0, c_i16_033_q};
    assign i_lm252_neg_kmeans30_b = {1'b0, redist33_i_llvm_fpga_mem_lm252_kmeans28_out_o_readdata_3_q};
    assign i_lm252_neg_kmeans30_o = $unsigned(i_lm252_neg_kmeans30_a) - $unsigned(i_lm252_neg_kmeans30_b);
    assign i_lm252_neg_kmeans30_q = i_lm252_neg_kmeans30_o[16:0];

    // bgTrunc_i_lm252_neg_kmeans30_sel_x(BITSELECT,132)@10
    assign bgTrunc_i_lm252_neg_kmeans30_sel_x_b = $unsigned(i_lm252_neg_kmeans30_q[15:0]);

    // redist18_bgTrunc_i_lm252_neg_kmeans30_sel_x_b_1(DELAY,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_bgTrunc_i_lm252_neg_kmeans30_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist18_bgTrunc_i_lm252_neg_kmeans30_sel_x_b_1_q <= $unsigned(bgTrunc_i_lm252_neg_kmeans30_sel_x_b);
        end
    end

    // i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_0_0(ADD,168)@11
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_0_0_a = {1'b0, i_llvm_fpga_mem_lm1_kmeans22_out_o_readdata};
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_0_0_b = {1'b0, redist18_bgTrunc_i_lm252_neg_kmeans30_sel_x_b_1_q};
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_0_0_o = $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_0_0_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_0_0_b);
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_0_0_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_0_0_o[16:0];

    // i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0(ADD,169)@11
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0_a = i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_0_0_q[15:0];
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0_b = i_llvm_fpga_pop_i16_sum_039_pop43_kmeans29_out_data_out;
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0_o = $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0_a) + $unsigned(i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0_b);
    assign i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0_o[15:0];

    // c_i16_033(CONSTANT,8)
    assign c_i16_033_q = $unsigned(16'b0000000000000000);

    // valid_fanout_reg14(REG,184)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist16_sync_together141_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_kmeans26_kmeans52(BLACKBOX,78)@11
    kmeans_i_llvm_fpga_ffwd_dest_i1_unnamed_26_kmeans0 thei_llvm_fpga_ffwd_dest_i1_unnamed_kmeans26_kmeans52 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i1_unnamed_kmeans26_kmeans52_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_do_directly_for_cond_cleanup39_loopexit_select_kmeans53(MUX,64)@11
    assign i_do_directly_for_cond_cleanup39_loopexit_select_kmeans53_s = i_llvm_fpga_ffwd_dest_i1_unnamed_kmeans26_kmeans52_out_dest_data_out_9_0;
    always @(i_do_directly_for_cond_cleanup39_loopexit_select_kmeans53_s or c_i16_033_q or i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0_q)
    begin
        unique case (i_do_directly_for_cond_cleanup39_loopexit_select_kmeans53_s)
            1'b0 : i_do_directly_for_cond_cleanup39_loopexit_select_kmeans53_q = c_i16_033_q;
            1'b1 : i_do_directly_for_cond_cleanup39_loopexit_select_kmeans53_q = i_llvm_experimental_vector_reduce_add_v3i16_add_red_kmeans36_vunroll_re_add_1_0_q;
            default : i_do_directly_for_cond_cleanup39_loopexit_select_kmeans53_q = 16'b0;
        endcase
    end

    // i_masked_kmeans51(LOGICAL,111)@2 + 1
    assign i_masked_kmeans51_qi = i_notcmp_kmeans46_q & i_first_cleanup_kmeans3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_kmeans51_delay ( .xin(i_masked_kmeans51_qi), .xout(i_masked_kmeans51_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_masked_kmeans51_q_9(DELAY,305)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_i_masked_kmeans51_q_9 ( .xin(i_masked_kmeans51_q), .xout(redist22_i_masked_kmeans51_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_notEnable(LOGICAL,336)
    assign redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_nor(LOGICAL,337)
    assign redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_nor_q = ~ (redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_notEnable_q | redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_sticky_ena_q);

    // redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_last(CONSTANT,333)
    assign redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_last_q = $unsigned(3'b010);

    // redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_cmp(LOGICAL,334)
    assign redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_cmp_b = {1'b0, redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_rdcnt_q};
    assign redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_cmp_q = $unsigned(redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_last_q == redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_cmpReg(REG,335)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_cmpReg_q <= $unsigned(redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_cmp_q);
        end
    end

    // redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_sticky_ena(REG,338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_nor_q == 1'b1)
        begin
            redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_sticky_ena_q <= $unsigned(redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_cmpReg_q);
        end
    end

    // redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_enaAnd(LOGICAL,339)
    assign redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_enaAnd_q = redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_sticky_ena_q & VCC_q;

    // redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_rdcnt(COUNTER,331)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_rdcnt_i <= $unsigned(redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_rdcnt_q = redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_rdcnt_i[1:0];

    // redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_wraddr(REG,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_wraddr_q <= $unsigned(redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_rdcnt_q);
        end
    end

    // redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem(DUALMEM,330)
    assign redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_ia = $unsigned(redist23_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_4_outputreg0_q);
    assign redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_aa = redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_wraddr_q;
    assign redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_ab = redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_rdcnt_q;
    assign redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_dmem (
        .clocken1(redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_aa),
        .data_a(redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_ab),
        .q_b(redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_iq),
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
    assign redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_q = redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_iq[31:0];

    // redist32_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_10(DELAY,315)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist32_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_10 ( .xin(redist31_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_1_q), .xout(redist32_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,166)@11
    assign out_c0_exi14_0_tpl = GND_q;
    assign out_c0_exi14_1_tpl = redist32_i_llvm_fpga_pipeline_keep_going_kmeans6_out_data_out_10_q;
    assign out_c0_exi14_2_tpl = redist24_i_llvm_fpga_pop_i32_i27_047_pop32115_pop47_kmeans16_out_data_out_9_mem_q;
    assign out_c0_exi14_3_tpl = redist22_i_masked_kmeans51_q_9_q;
    assign out_c0_exi14_4_tpl = i_do_directly_for_cond_cleanup39_loopexit_select_kmeans53_q;
    assign out_c0_exi14_5_tpl = redist26_i_llvm_fpga_pop_i1_notcmp51110_pop45_kmeans54_out_data_out_9_q;
    assign out_c0_exi14_6_tpl = redist27_i_llvm_fpga_pop_i1_notcmp46113_pop46_kmeans56_out_data_out_9_q;
    assign out_c0_exi14_7_tpl = redist29_i_llvm_fpga_pop_i1_forked111116_pop48_kmeans58_out_data_out_9_q;
    assign out_c0_exi14_8_tpl = redist30_i_llvm_fpga_pop_i16_c_044_pop35118_pop50_kmeans60_out_data_out_9_mem_q;
    assign out_c0_exi14_9_tpl = redist25_i_llvm_fpga_pop_i1_pop51_kmeans62_out_data_out_9_q;
    assign out_c0_exi14_10_tpl = redist28_i_llvm_fpga_pop_i1_notcmp41119_pop52_kmeans64_out_data_out_9_q;
    assign out_c0_exi14_11_tpl = redist10_sync_together141_aunroll_x_in_c0_eni13_10_tpl_10_q;
    assign out_c0_exi14_12_tpl = redist11_sync_together141_aunroll_x_in_c0_eni13_11_tpl_10_q;
    assign out_c0_exi14_13_tpl = redist12_sync_together141_aunroll_x_in_c0_eni13_12_tpl_10_mem_q;
    assign out_c0_exi14_14_tpl = redist13_sync_together141_aunroll_x_in_c0_eni13_13_tpl_10_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kmeans1 = GND_q;

endmodule
