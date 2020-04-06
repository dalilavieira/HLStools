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

// SystemVerilog created from sum_vector_bb_B3_stall_region
// SystemVerilog created on Mon Apr  6 10:16:58 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sum_vector_bb_B3_stall_region (
    input wire [63:0] in_lm1_sum_vector_avm_readdata,
    input wire [0:0] in_lm1_sum_vector_avm_writeack,
    input wire [0:0] in_lm1_sum_vector_avm_waitrequest,
    input wire [0:0] in_lm1_sum_vector_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sum_vector4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sum_vector4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_lm32_sum_vector_avm_readdata,
    input wire [0:0] in_lm32_sum_vector_avm_writeack,
    input wire [0:0] in_lm32_sum_vector_avm_waitrequest,
    input wire [0:0] in_lm32_sum_vector_avm_readdatavalid,
    output wire [63:0] out_lm1_sum_vector_avm_address,
    output wire [0:0] out_lm1_sum_vector_avm_enable,
    output wire [0:0] out_lm1_sum_vector_avm_read,
    output wire [0:0] out_lm1_sum_vector_avm_write,
    output wire [63:0] out_lm1_sum_vector_avm_writedata,
    output wire [7:0] out_lm1_sum_vector_avm_byteenable,
    output wire [0:0] out_lm1_sum_vector_avm_burstcount,
    output wire [0:0] out_masked,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_memdep_sum_vector_avm_readdata,
    input wire [0:0] in_memdep_sum_vector_avm_writeack,
    input wire [0:0] in_memdep_sum_vector_avm_waitrequest,
    input wire [0:0] in_memdep_sum_vector_avm_readdatavalid,
    output wire [63:0] out_lm32_sum_vector_avm_address,
    output wire [0:0] out_lm32_sum_vector_avm_enable,
    output wire [0:0] out_lm32_sum_vector_avm_read,
    output wire [0:0] out_lm32_sum_vector_avm_write,
    output wire [63:0] out_lm32_sum_vector_avm_writedata,
    output wire [7:0] out_lm32_sum_vector_avm_byteenable,
    output wire [0:0] out_lm32_sum_vector_avm_burstcount,
    output wire [63:0] out_memdep_sum_vector_avm_address,
    output wire [0:0] out_memdep_sum_vector_avm_enable,
    output wire [0:0] out_memdep_sum_vector_avm_read,
    output wire [0:0] out_memdep_sum_vector_avm_write,
    output wire [63:0] out_memdep_sum_vector_avm_writedata,
    output wire [7:0] out_memdep_sum_vector_avm_byteenable,
    output wire [0:0] out_memdep_sum_vector_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_049_q;
    wire [31:0] c_i32_150_q;
    wire [32:0] c_i33_152_q;
    wire [32:0] c_i33_undef48_q;
    wire [3:0] c_i4_744_q;
    wire [32:0] i_add_sum_vector25_a;
    wire [32:0] i_add_sum_vector25_b;
    logic [32:0] i_add_sum_vector25_o;
    wire [32:0] i_add_sum_vector25_q;
    wire [3:0] i_cleanups_shl_sum_vector3_vt_join_q;
    wire [2:0] i_cleanups_shl_sum_vector3_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_or_sum_vector19_q;
    wire [33:0] i_fpga_indvars_iv_next_sum_vector34_a;
    wire [33:0] i_fpga_indvars_iv_next_sum_vector34_b;
    logic [33:0] i_fpga_indvars_iv_next_sum_vector34_o;
    wire [33:0] i_fpga_indvars_iv_next_sum_vector34_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_sum_vector12_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_sum_vector12_q;
    wire [63:0] i_idxprom_sum_vector16_vt_join_q;
    wire [31:0] i_idxprom_sum_vector16_vt_select_31_b;
    wire [32:0] i_inc_sum_vector30_a;
    wire [32:0] i_inc_sum_vector30_b;
    logic [32:0] i_inc_sum_vector30_o;
    wire [32:0] i_inc_sum_vector30_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_sum_vector21_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1_sum_vector21_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1_sum_vector21_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm32_sum_vector24_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm32_sum_vector24_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm32_sum_vector24_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_sum_vector28_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_sum_vector28_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_sum_vector28_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_sum_vector28_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sum_vector4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sum_vector4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sum_vector4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sum_vector4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sum_vector4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sum_vector4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_sum_vector4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_out_feedback_stall_out_7;
    wire [0:0] i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_out_valid_out;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_out_feedback_stall_out_6;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_sum_vector9_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_sum_vector9_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_sum_vector9_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_sum_vector9_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_sum_vector39_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_sum_vector39_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_sum_vector39_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_sum_vector39_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_07_push7_sum_vector31_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i32_i_07_push7_sum_vector31_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i32_i_07_push7_sum_vector31_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_07_push7_sum_vector31_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push9_sum_vector7_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_sum_vector7_out_feedback_valid_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_sum_vector7_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_sum_vector7_out_valid_out;
    wire [0:0] i_masked_sum_vector43_qi;
    reg [0:0] i_masked_sum_vector43_q;
    wire [0:0] i_next_cleanups_sum_vector41_s;
    reg [3:0] i_next_cleanups_sum_vector41_q;
    wire [3:0] i_next_initerations_sum_vector6_vt_join_q;
    wire [2:0] i_next_initerations_sum_vector6_vt_select_2_b;
    wire [0:0] i_notcmp_sum_vector38_q;
    wire [0:0] i_or_sum_vector40_q;
    wire [0:0] i_unnamed_sum_vector14_q;
    wire [0:0] i_unnamed_sum_vector37_q;
    wire [0:0] i_xor_sum_vector2_q;
    wire [31:0] bgTrunc_i_add_sum_vector25_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_sum_vector34_sel_x_b;
    wire [31:0] bgTrunc_i_inc_sum_vector30_sel_x_b;
    wire [64:0] i_arrayidx2_sum_vector0_add_x_a;
    wire [64:0] i_arrayidx2_sum_vector0_add_x_b;
    logic [64:0] i_arrayidx2_sum_vector0_add_x_o;
    wire [64:0] i_arrayidx2_sum_vector0_add_x_q;
    wire [127:0] i_arrayidx2_sum_vector0_mult_extender_x_q;
    wire [60:0] i_arrayidx2_sum_vector0_mult_multconst_x_q;
    wire [63:0] i_arrayidx2_sum_vector0_trunc_sel_x_b;
    wire [63:0] i_arrayidx2_sum_vector0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx4_sum_vector0_add_x_a;
    wire [64:0] i_arrayidx4_sum_vector0_add_x_b;
    logic [64:0] i_arrayidx4_sum_vector0_add_x_o;
    wire [64:0] i_arrayidx4_sum_vector0_add_x_q;
    wire [127:0] i_arrayidx4_sum_vector0_mult_extender_x_q;
    wire [63:0] i_arrayidx4_sum_vector0_trunc_sel_x_b;
    wire [63:0] i_arrayidx4_sum_vector0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_sum_vector0_add_x_a;
    wire [64:0] i_arrayidx_sum_vector0_add_x_b;
    logic [64:0] i_arrayidx_sum_vector0_add_x_o;
    wire [64:0] i_arrayidx_sum_vector0_add_x_q;
    wire [127:0] i_arrayidx_sum_vector0_mult_extender_x_q;
    wire [63:0] i_arrayidx_sum_vector0_trunc_sel_x_b;
    wire [63:0] i_arrayidx_sum_vector0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_sum_vector1_sel_x_b;
    wire [63:0] i_idxprom_sum_vector16_sel_x_b;
    wire [0:0] i_last_initeration_sum_vector8_sel_x_b;
    wire [0:0] sum_vector_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] sum_vector_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_exitcond_sum_vector32_cmp_nsign_q;
    wire [35:0] i_arrayidx2_sum_vector0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx2_sum_vector0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx2_sum_vector0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx2_sum_vector0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx2_sum_vector0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx2_sum_vector0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx2_sum_vector0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx2_sum_vector0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx2_sum_vector0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx2_sum_vector0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx2_sum_vector0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx2_sum_vector0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx4_sum_vector0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx4_sum_vector0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx4_sum_vector0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx4_sum_vector0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx4_sum_vector0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx4_sum_vector0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx4_sum_vector0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx4_sum_vector0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx4_sum_vector0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx4_sum_vector0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx4_sum_vector0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx4_sum_vector0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx_sum_vector0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx_sum_vector0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx_sum_vector0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx_sum_vector0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx_sum_vector0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx_sum_vector0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx_sum_vector0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx_sum_vector0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx_sum_vector0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx_sum_vector0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx_sum_vector0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx_sum_vector0_mult_x_sums_result_add_0_0_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid245_i_cleanups_shl_sum_vector0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid245_i_cleanups_shl_sum_vector0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid246_i_cleanups_shl_sum_vector0_shift_x_q;
    wire [0:0] leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_s;
    reg [3:0] leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid252_i_next_initerations_sum_vector0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid254_i_next_initerations_sum_vector0_shift_x_q;
    wire [0:0] rightShiftStage0_uid256_i_next_initerations_sum_vector0_shift_x_s;
    reg [3:0] rightShiftStage0_uid256_i_next_initerations_sum_vector0_shift_x_q;
    wire [11:0] i_arrayidx2_sum_vector0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx2_sum_vector0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx2_sum_vector0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx2_sum_vector0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx2_sum_vector0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx2_sum_vector0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx2_sum_vector0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx2_sum_vector0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx4_sum_vector0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx4_sum_vector0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx4_sum_vector0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx4_sum_vector0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx4_sum_vector0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx4_sum_vector0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx4_sum_vector0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx4_sum_vector0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx_sum_vector0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx_sum_vector0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx_sum_vector0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx_sum_vector0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx_sum_vector0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx_sum_vector0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx_sum_vector0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx_sum_vector0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_e;
    wire [64:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_in;
    wire redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_in;
    wire redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_data_in;
    wire [0:0] redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_out;
    wire redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_out;
    wire redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_data_out;
    reg [0:0] redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_q;
    wire [0:0] redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_valid_in;
    wire redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_stall_in;
    wire redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_data_in;
    wire [0:0] redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_valid_out;
    wire redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_stall_out;
    wire redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_data_out;
    wire [0:0] redist4_i_masked_sum_vector43_q_63_fifo_valid_in;
    wire redist4_i_masked_sum_vector43_q_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_i_masked_sum_vector43_q_63_fifo_stall_in;
    wire redist4_i_masked_sum_vector43_q_63_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_i_masked_sum_vector43_q_63_fifo_data_in;
    wire [0:0] redist4_i_masked_sum_vector43_q_63_fifo_valid_out;
    wire redist4_i_masked_sum_vector43_q_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_i_masked_sum_vector43_q_63_fifo_stall_out;
    wire redist4_i_masked_sum_vector43_q_63_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_i_masked_sum_vector43_q_63_fifo_data_out;
    wire [0:0] redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_valid_in;
    wire redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_stall_in;
    wire redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_data_in;
    wire [0:0] redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_valid_out;
    wire redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_stall_out;
    wire redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_b;
    wire [32:0] bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_q;
    wire [32:0] bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1_sum_vector21_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1_sum_vector21_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm32_sum_vector24_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm32_sum_vector24_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_sum_vector28_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_sum_vector4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_sum_vector4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_b;
    wire [32:0] bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_q;
    wire [32:0] bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_sum_vector_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_sum_vector_B3_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_q;
    wire [0:0] bubble_select_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b;
    wire [0:0] bubble_join_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_q;
    wire [0:0] bubble_select_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_b;
    wire [0:0] bubble_join_redist4_i_masked_sum_vector43_q_63_fifo_q;
    wire [0:0] bubble_select_redist4_i_masked_sum_vector43_q_63_fifo_b;
    wire [0:0] bubble_join_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_q;
    wire [0:0] bubble_select_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_wireValid;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_wireStall;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_StallValid;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_toReg0;
    reg [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_fromReg0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_consumed0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_toReg1;
    reg [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_fromReg1;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_consumed1;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_and0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_and1;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_or0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_backStall;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_V0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_sum_vector12_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_or1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_V2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sum_vector28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sum_vector28_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sum_vector28_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sum_vector28_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_sum_vector28_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sum_vector28_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sum_vector28_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_sum_vector28_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sum_vector28_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sum_vector28_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sum_vector28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sum_vector28_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_sum_vector28_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_sum_vector9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_sum_vector9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_sum_vector39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_sum_vector39_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push9_sum_vector7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push9_sum_vector7_backStall;
    reg [0:0] SE_i_masked_sum_vector43_R_v_0;
    wire [0:0] SE_i_masked_sum_vector43_v_s_0;
    wire [0:0] SE_i_masked_sum_vector43_s_tv_0;
    wire [0:0] SE_i_masked_sum_vector43_backEN;
    wire [0:0] SE_i_masked_sum_vector43_backStall;
    wire [0:0] SE_i_masked_sum_vector43_V0;
    wire [0:0] SE_i_next_initerations_sum_vector6_vt_join_wireValid;
    wire [0:0] SE_i_next_initerations_sum_vector6_vt_join_wireStall;
    wire [0:0] SE_i_next_initerations_sum_vector6_vt_join_StallValid;
    wire [0:0] SE_i_next_initerations_sum_vector6_vt_join_toReg0;
    reg [0:0] SE_i_next_initerations_sum_vector6_vt_join_fromReg0;
    wire [0:0] SE_i_next_initerations_sum_vector6_vt_join_consumed0;
    wire [0:0] SE_i_next_initerations_sum_vector6_vt_join_toReg1;
    reg [0:0] SE_i_next_initerations_sum_vector6_vt_join_fromReg1;
    wire [0:0] SE_i_next_initerations_sum_vector6_vt_join_consumed1;
    wire [0:0] SE_i_next_initerations_sum_vector6_vt_join_and0;
    wire [0:0] SE_i_next_initerations_sum_vector6_vt_join_or0;
    wire [0:0] SE_i_next_initerations_sum_vector6_vt_join_backStall;
    wire [0:0] SE_i_next_initerations_sum_vector6_vt_join_V0;
    wire [0:0] SE_i_next_initerations_sum_vector6_vt_join_V1;
    wire [0:0] SE_i_unnamed_sum_vector37_wireValid;
    wire [0:0] SE_i_unnamed_sum_vector37_wireStall;
    wire [0:0] SE_i_unnamed_sum_vector37_StallValid;
    wire [0:0] SE_i_unnamed_sum_vector37_toReg0;
    reg [0:0] SE_i_unnamed_sum_vector37_fromReg0;
    wire [0:0] SE_i_unnamed_sum_vector37_consumed0;
    wire [0:0] SE_i_unnamed_sum_vector37_toReg1;
    reg [0:0] SE_i_unnamed_sum_vector37_fromReg1;
    wire [0:0] SE_i_unnamed_sum_vector37_consumed1;
    wire [0:0] SE_i_unnamed_sum_vector37_and0;
    wire [0:0] SE_i_unnamed_sum_vector37_or0;
    wire [0:0] SE_i_unnamed_sum_vector37_backStall;
    wire [0:0] SE_i_unnamed_sum_vector37_V0;
    wire [0:0] SE_i_unnamed_sum_vector37_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_sum_vector_B3_merge_reg_aunroll_x_V6;
    wire [0:0] SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_V0;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireStall;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_StallValid;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg0;
    reg [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg0;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed0;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg1;
    reg [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg1;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed1;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg2;
    reg [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg2;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed2;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg3;
    reg [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg3;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed3;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg4;
    reg [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg4;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed4;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg5;
    reg [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg5;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed5;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or0;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or1;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or2;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or3;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or4;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_backStall;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V0;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V1;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V2;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V3;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V4;
    wire [0:0] SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V5;
    reg [0:0] SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_R_v_0;
    reg [0:0] SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_R_v_1;
    wire [0:0] SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_v_s_0;
    wire [0:0] SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_s_tv_0;
    wire [0:0] SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_s_tv_1;
    wire [0:0] SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_backEN;
    wire [0:0] SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_or0;
    wire [0:0] SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_backStall;
    wire [0:0] SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_V0;
    wire [0:0] SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_V1;
    wire [0:0] SE_out_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_wireValid;
    wire [0:0] SE_out_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_backStall;
    wire [0:0] SE_out_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_V0;
    wire [0:0] SE_in_redist4_i_masked_sum_vector43_q_63_fifo_wireValid;
    wire [0:0] SE_in_redist4_i_masked_sum_vector43_q_63_fifo_backStall;
    wire [0:0] SE_in_redist4_i_masked_sum_vector43_q_63_fifo_V0;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_wireValid;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_wireStall;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_StallValid;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_toReg0;
    reg [0:0] SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_fromReg0;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_consumed0;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_toReg1;
    reg [0:0] SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_fromReg1;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_consumed1;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_or0;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_backStall;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_V0;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_and0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_V0;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_V0;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_wireValid;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_backStall;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_V0;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_wireValid;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_backStall;
    wire [0:0] SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_valid_in;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_stall_in;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_valid_out;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_stall_out;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_valid_in;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_stall_in;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_valid_out;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_stall_out;
    wire bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_i_masked_sum_vector43_i_valid;
    reg [0:0] SR_SE_i_masked_sum_vector43_r_valid;
    wire [0:0] SR_SE_i_masked_sum_vector43_and0;
    reg [0:0] SR_SE_i_masked_sum_vector43_r_data0;
    reg [0:0] SR_SE_i_masked_sum_vector43_r_data1;
    wire [0:0] SR_SE_i_masked_sum_vector43_backStall;
    wire [0:0] SR_SE_i_masked_sum_vector43_V;
    wire [0:0] SR_SE_i_masked_sum_vector43_D0;
    wire [0:0] SR_SE_i_masked_sum_vector43_D1;
    wire [0:0] SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_i_valid;
    reg [0:0] SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_valid;
    wire [0:0] SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_and0;
    wire [0:0] SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_and1;
    reg [3:0] SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_data0;
    reg [0:0] SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_data1;
    wire [0:0] SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_backStall;
    wire [0:0] SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_V;
    wire [3:0] SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_D0;
    wire [0:0] SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_D1;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0(BITJOIN,331)
    assign bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_q = i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0(BITSELECT,332)
    assign bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_q[3:0]);

    // i_first_cleanup_sum_vector1_sel_x(BITSELECT,169)@65
    assign i_first_cleanup_sum_vector1_sel_x_b = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_b[0:0];

    // i_xor_sum_vector2(LOGICAL,63)@65
    assign i_xor_sum_vector2_q = i_first_cleanup_sum_vector1_sel_x_b ^ VCC_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13(BITJOIN,291)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_q = i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13(BITSELECT,292)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_q[0:0]);

    // i_unnamed_sum_vector14(LOGICAL,61)@65
    assign i_unnamed_sum_vector14_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_b ^ VCC_q;

    // i_first_cleanup_xor_or_sum_vector19(LOGICAL,23)@65
    assign i_first_cleanup_xor_or_sum_vector19_q = i_unnamed_sum_vector14_q | i_xor_sum_vector2_q;

    // i_arrayidx2_sum_vector0_mult_multconst_x(CONSTANT,142)
    assign i_arrayidx2_sum_vector0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // c_i32_049(CONSTANT,7)
    assign c_i32_049_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15(BITJOIN,324)
    assign bubble_join_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_q = i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15(BITSELECT,325)
    assign bubble_select_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_q[31:0]);

    // i_idxprom_sum_vector16_sel_x(BITSELECT,170)@65
    assign i_idxprom_sum_vector16_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_b[31:0]};

    // i_idxprom_sum_vector16_vt_select_31(BITSELECT,29)@65
    assign i_idxprom_sum_vector16_vt_select_31_b = i_idxprom_sum_vector16_sel_x_b[31:0];

    // i_idxprom_sum_vector16_vt_join(BITJOIN,28)@65
    assign i_idxprom_sum_vector16_vt_join_q = {c_i32_049_q, i_idxprom_sum_vector16_vt_select_31_b};

    // i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select(BITSELECT,269)@65
    assign i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_b = i_idxprom_sum_vector16_vt_join_q[63:54];
    assign i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_c = i_idxprom_sum_vector16_vt_join_q[53:36];
    assign i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_d = i_idxprom_sum_vector16_vt_join_q[35:18];
    assign i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_e = i_idxprom_sum_vector16_vt_join_q[17:0];

    // i_arrayidx4_sum_vector0_mult_x_im0_shift0(BITSHIFT,261)@65
    assign i_arrayidx4_sum_vector0_mult_x_im0_shift0_qint = { i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx4_sum_vector0_mult_x_im0_shift0_q = i_arrayidx4_sum_vector0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx4_sum_vector0_mult_x_sums_align_3(BITSHIFT,220)@65
    assign i_arrayidx4_sum_vector0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx4_sum_vector0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx4_sum_vector0_mult_x_sums_align_3_q = i_arrayidx4_sum_vector0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx4_sum_vector0_mult_x_im6_shift0(BITSHIFT,263)@65
    assign i_arrayidx4_sum_vector0_mult_x_im6_shift0_qint = { i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx4_sum_vector0_mult_x_im6_shift0_q = i_arrayidx4_sum_vector0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx4_sum_vector0_mult_x_sums_align_2(BITSHIFT,219)@65
    assign i_arrayidx4_sum_vector0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx4_sum_vector0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx4_sum_vector0_mult_x_sums_align_2_q = i_arrayidx4_sum_vector0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx4_sum_vector0_mult_x_sums_join_4(BITJOIN,221)@65
    assign i_arrayidx4_sum_vector0_mult_x_sums_join_4_q = {i_arrayidx4_sum_vector0_mult_x_sums_align_3_q, i_arrayidx4_sum_vector0_mult_x_sums_align_2_q};

    // i_arrayidx4_sum_vector0_mult_x_im3_shift0(BITSHIFT,262)@65
    assign i_arrayidx4_sum_vector0_mult_x_im3_shift0_qint = { i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx4_sum_vector0_mult_x_im3_shift0_q = i_arrayidx4_sum_vector0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx4_sum_vector0_mult_x_sums_align_0(BITSHIFT,217)@65
    assign i_arrayidx4_sum_vector0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx4_sum_vector0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx4_sum_vector0_mult_x_sums_align_0_q = i_arrayidx4_sum_vector0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx4_sum_vector0_mult_x_im9_shift0(BITSHIFT,264)@65
    assign i_arrayidx4_sum_vector0_mult_x_im9_shift0_qint = { i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx4_sum_vector0_mult_x_im9_shift0_q = i_arrayidx4_sum_vector0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx4_sum_vector0_mult_x_sums_join_1(BITJOIN,218)@65
    assign i_arrayidx4_sum_vector0_mult_x_sums_join_1_q = {i_arrayidx4_sum_vector0_mult_x_sums_align_0_q, {1'b0, i_arrayidx4_sum_vector0_mult_x_im9_shift0_q}};

    // i_arrayidx4_sum_vector0_mult_x_sums_result_add_0_0(ADD,222)@65
    assign i_arrayidx4_sum_vector0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx4_sum_vector0_mult_x_sums_join_1_q};
    assign i_arrayidx4_sum_vector0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx4_sum_vector0_mult_x_sums_join_4_q};
    assign i_arrayidx4_sum_vector0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx4_sum_vector0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx4_sum_vector0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx4_sum_vector0_mult_x_sums_result_add_0_0_q = i_arrayidx4_sum_vector0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx4_sum_vector0_mult_extender_x(BITJOIN,151)@65
    assign i_arrayidx4_sum_vector0_mult_extender_x_q = {i_arrayidx2_sum_vector0_mult_multconst_x_q, i_arrayidx4_sum_vector0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx4_sum_vector0_trunc_sel_x(BITSELECT,153)@65
    assign i_arrayidx4_sum_vector0_trunc_sel_x_b = i_arrayidx4_sum_vector0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26(BITJOIN,304)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_q = i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26(BITSELECT,305)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_q[63:0]);

    // i_arrayidx4_sum_vector0_add_x(ADD,145)@65
    assign i_arrayidx4_sum_vector0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_b};
    assign i_arrayidx4_sum_vector0_add_x_b = {1'b0, i_arrayidx4_sum_vector0_trunc_sel_x_b};
    assign i_arrayidx4_sum_vector0_add_x_o = $unsigned(i_arrayidx4_sum_vector0_add_x_a) + $unsigned(i_arrayidx4_sum_vector0_add_x_b);
    assign i_arrayidx4_sum_vector0_add_x_q = i_arrayidx4_sum_vector0_add_x_o[64:0];

    // i_arrayidx4_sum_vector0_dupName_0_trunc_sel_x(BITSELECT,154)@65
    assign i_arrayidx4_sum_vector0_dupName_0_trunc_sel_x_b = i_arrayidx4_sum_vector0_add_x_q[63:0];

    // join_for_coalesced_delay_0(BITJOIN,278)
    assign join_for_coalesced_delay_0_q = {i_first_cleanup_xor_or_sum_vector19_q, i_arrayidx4_sum_vector0_dupName_0_trunc_sel_x_b};

    // bubble_join_i_llvm_fpga_mem_lm1_sum_vector21(BITJOIN,307)
    assign bubble_join_i_llvm_fpga_mem_lm1_sum_vector21_q = i_llvm_fpga_mem_lm1_sum_vector21_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1_sum_vector21(BITSELECT,308)
    assign bubble_select_i_llvm_fpga_mem_lm1_sum_vector21_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1_sum_vector21_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm32_sum_vector24(BITJOIN,310)
    assign bubble_join_i_llvm_fpga_mem_lm32_sum_vector24_q = i_llvm_fpga_mem_lm32_sum_vector24_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm32_sum_vector24(BITSELECT,311)
    assign bubble_select_i_llvm_fpga_mem_lm32_sum_vector24_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm32_sum_vector24_q[31:0]);

    // i_add_sum_vector25(ADD,17)@97
    assign i_add_sum_vector25_a = {1'b0, bubble_select_i_llvm_fpga_mem_lm32_sum_vector24_b};
    assign i_add_sum_vector25_b = {1'b0, bubble_select_i_llvm_fpga_mem_lm1_sum_vector21_b};
    assign i_add_sum_vector25_o = $unsigned(i_add_sum_vector25_a) + $unsigned(i_add_sum_vector25_b);
    assign i_add_sum_vector25_q = i_add_sum_vector25_o[32:0];

    // bgTrunc_i_add_sum_vector25_sel_x(BITSELECT,124)@97
    assign bgTrunc_i_add_sum_vector25_sel_x_b = i_add_sum_vector25_q[31:0];

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29(STALLENABLE,407)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_wireValid = i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_out_valid_out;

    // bubble_join_i_llvm_fpga_pipeline_keep_going_sum_vector4(BITJOIN,317)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_sum_vector4_q = i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_sum_vector4(BITSELECT,318)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_sum_vector4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_sum_vector4_q[0:0]);

    // redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo(STALLFIFO,284)
    assign redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V4;
    assign redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_stall_in = SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_backStall;
    assign redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_data_in = bubble_select_i_llvm_fpga_pipeline_keep_going_sum_vector4_b;
    assign redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_valid_in_bitsignaltemp = redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_valid_in[0];
    assign redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_stall_in_bitsignaltemp = redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_stall_in[0];
    assign redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_valid_out[0] = redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_valid_out_bitsignaltemp;
    assign redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_stall_out[0] = redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo (
        .valid_in(redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pipeline_keep_going_sum_vector4_b),
        .valid_out(redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo(BITJOIN,360)
    assign bubble_join_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_q = redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_data_out;

    // bubble_select_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo(BITSELECT,361)
    assign bubble_select_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_b = $unsigned(bubble_join_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_sum_vector28(BITJOIN,313)
    assign bubble_join_i_llvm_fpga_mem_memdep_sum_vector28_q = i_llvm_fpga_mem_memdep_sum_vector28_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_sum_vector28(BITSELECT,314)
    assign bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_sum_vector28_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29(BLACKBOX,48)@128
    // in in_stall_in@20000000
    // out out_data_out@129
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@129
    sum_vector_i_llvm_fpga_push_i1_memdep_phi_push8_0 thei_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_out_feedback_stall_out_8),
        .in_keep_going(bubble_select_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_backStall),
        .in_valid_in(SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_V0),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_out_feedback_valid_out_8),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i4_initerations_push9_sum_vector7(STALLENABLE,417)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_initerations_push9_sum_vector7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_initerations_push9_sum_vector7_wireValid = i_llvm_fpga_push_i4_initerations_push9_sum_vector7_out_valid_out;

    // redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0(REG,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_backEN == 1'b1)
        begin
            redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_q <= $unsigned(bubble_select_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b);
        end
    end

    // redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo(STALLFIFO,282)
    assign redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_valid_in = SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_V1;
    assign redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_stall_in = SE_out_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_backStall;
    assign redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_data_in = redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_q;
    assign redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_valid_in_bitsignaltemp = redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_valid_in[0];
    assign redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_stall_in_bitsignaltemp = redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_stall_in[0];
    assign redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_valid_out[0] = redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_valid_out_bitsignaltemp;
    assign redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_stall_out[0] = redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo (
        .valid_in(redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_stall_in_bitsignaltemp),
        .data_in(redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_q),
        .valid_out(redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo(STALLENABLE,493)
    // Valid signal propagation
    assign SE_out_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_V0 = SE_out_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_backStall = i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_out_stall_out | ~ (SE_out_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_wireValid = redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_valid_out;

    // bubble_join_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo(BITJOIN,354)
    assign bubble_join_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_q = redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_data_out;

    // bubble_select_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo(BITSELECT,355)
    assign bubble_select_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_b = $unsigned(bubble_join_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_q[0:0]);

    // i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5(BLACKBOX,46)@127
    // in in_stall_in@20000000
    // out out_data_out@128
    // out out_feedback_stall_out_9@20000000
    // out out_stall_out@20000000
    // out out_valid_out@128
    sum_vector_i_llvm_fpga_pop_i4_initerations_pop9_0 thei_llvm_fpga_pop_i4_initerations_pop9_sum_vector5 (
        .in_data_in(c_i4_744_q),
        .in_dir(bubble_select_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_b),
        .in_feedback_in_9(i_llvm_fpga_push_i4_initerations_push9_sum_vector7_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i4_initerations_push9_sum_vector7_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_backStall),
        .in_valid_in(SE_out_redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_out_feedback_stall_out_9),
        .out_stall_out(i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0Idx1Rng1_uid252_i_next_initerations_sum_vector0_shift_x(BITSELECT,251)@128
    assign rightShiftStage0Idx1Rng1_uid252_i_next_initerations_sum_vector0_shift_x_b = bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_b[3:1];

    // rightShiftStage0Idx1_uid254_i_next_initerations_sum_vector0_shift_x(BITJOIN,253)@128
    assign rightShiftStage0Idx1_uid254_i_next_initerations_sum_vector0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid252_i_next_initerations_sum_vector0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5(BITJOIN,334)
    assign bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_q = i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5(BITSELECT,335)
    assign bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_q[3:0]);

    // rightShiftStage0_uid256_i_next_initerations_sum_vector0_shift_x(MUX,255)@128
    assign rightShiftStage0_uid256_i_next_initerations_sum_vector0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid256_i_next_initerations_sum_vector0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_b or rightShiftStage0Idx1_uid254_i_next_initerations_sum_vector0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid256_i_next_initerations_sum_vector0_shift_x_s)
            1'b0 : rightShiftStage0_uid256_i_next_initerations_sum_vector0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_b;
            1'b1 : rightShiftStage0_uid256_i_next_initerations_sum_vector0_shift_x_q = rightShiftStage0Idx1_uid254_i_next_initerations_sum_vector0_shift_x_q;
            default : rightShiftStage0_uid256_i_next_initerations_sum_vector0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_sum_vector6_vt_select_2(BITSELECT,58)@128
    assign i_next_initerations_sum_vector6_vt_select_2_b = rightShiftStage0_uid256_i_next_initerations_sum_vector0_shift_x_q[2:0];

    // i_next_initerations_sum_vector6_vt_join(BITJOIN,57)@128
    assign i_next_initerations_sum_vector6_vt_join_q = {GND_q, i_next_initerations_sum_vector6_vt_select_2_b};

    // i_llvm_fpga_push_i4_initerations_push9_sum_vector7(BLACKBOX,53)@128
    // in in_stall_in@20000000
    // out out_data_out@129
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    // out out_stall_out@20000000
    // out out_valid_out@129
    sum_vector_i_llvm_fpga_push_i4_initerations_push9_0 thei_llvm_fpga_push_i4_initerations_push9_sum_vector7 (
        .in_data_in(i_next_initerations_sum_vector6_vt_join_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_out_feedback_stall_out_9),
        .in_keep_going(bubble_select_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_initerations_push9_sum_vector7_backStall),
        .in_valid_in(SE_i_next_initerations_sum_vector6_vt_join_V1),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i4_initerations_push9_sum_vector7_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i4_initerations_push9_sum_vector7_out_feedback_valid_out_9),
        .out_stall_out(i_llvm_fpga_push_i4_initerations_push9_sum_vector7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_initerations_push9_sum_vector7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5(STALLENABLE,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_consumed1 = (~ (SE_i_next_initerations_sum_vector6_vt_join_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_StallValid = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_backStall & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_toReg0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_toReg1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_or0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_consumed1 & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_or0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_backStall = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_V0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_V1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_wireValid = i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_out_valid_out;

    // SE_i_next_initerations_sum_vector6_vt_join(STALLENABLE,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_sum_vector6_vt_join_fromReg0 <= '0;
            SE_i_next_initerations_sum_vector6_vt_join_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_sum_vector6_vt_join_fromReg0 <= SE_i_next_initerations_sum_vector6_vt_join_toReg0;
            // Successor 1
            SE_i_next_initerations_sum_vector6_vt_join_fromReg1 <= SE_i_next_initerations_sum_vector6_vt_join_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_sum_vector6_vt_join_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_sum_vector9_out_stall_out) & SE_i_next_initerations_sum_vector6_vt_join_wireValid) | SE_i_next_initerations_sum_vector6_vt_join_fromReg0;
    assign SE_i_next_initerations_sum_vector6_vt_join_consumed1 = (~ (i_llvm_fpga_push_i4_initerations_push9_sum_vector7_out_stall_out) & SE_i_next_initerations_sum_vector6_vt_join_wireValid) | SE_i_next_initerations_sum_vector6_vt_join_fromReg1;
    // Consuming
    assign SE_i_next_initerations_sum_vector6_vt_join_StallValid = SE_i_next_initerations_sum_vector6_vt_join_backStall & SE_i_next_initerations_sum_vector6_vt_join_wireValid;
    assign SE_i_next_initerations_sum_vector6_vt_join_toReg0 = SE_i_next_initerations_sum_vector6_vt_join_StallValid & SE_i_next_initerations_sum_vector6_vt_join_consumed0;
    assign SE_i_next_initerations_sum_vector6_vt_join_toReg1 = SE_i_next_initerations_sum_vector6_vt_join_StallValid & SE_i_next_initerations_sum_vector6_vt_join_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_sum_vector6_vt_join_or0 = SE_i_next_initerations_sum_vector6_vt_join_consumed0;
    assign SE_i_next_initerations_sum_vector6_vt_join_wireStall = ~ (SE_i_next_initerations_sum_vector6_vt_join_consumed1 & SE_i_next_initerations_sum_vector6_vt_join_or0);
    assign SE_i_next_initerations_sum_vector6_vt_join_backStall = SE_i_next_initerations_sum_vector6_vt_join_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_sum_vector6_vt_join_V0 = SE_i_next_initerations_sum_vector6_vt_join_wireValid & ~ (SE_i_next_initerations_sum_vector6_vt_join_fromReg0);
    assign SE_i_next_initerations_sum_vector6_vt_join_V1 = SE_i_next_initerations_sum_vector6_vt_join_wireValid & ~ (SE_i_next_initerations_sum_vector6_vt_join_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_sum_vector6_vt_join_and0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_V1;
    assign SE_i_next_initerations_sum_vector6_vt_join_wireValid = SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_V0 & SE_i_next_initerations_sum_vector6_vt_join_and0;

    // SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo(STALLENABLE,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_fromReg0 <= '0;
            SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_fromReg0 <= SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_toReg0;
            // Successor 1
            SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_fromReg1 <= SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_consumed0 = (~ (SE_i_next_initerations_sum_vector6_vt_join_backStall) & SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_wireValid) | SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_fromReg0;
    assign SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_backStall) & SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_wireValid) | SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_fromReg1;
    // Consuming
    assign SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_StallValid = SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_backStall & SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_wireValid;
    assign SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_toReg0 = SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_StallValid & SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_consumed0;
    assign SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_toReg1 = SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_StallValid & SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_or0 = SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_consumed0;
    assign SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_wireStall = ~ (SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_consumed1 & SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_or0);
    assign SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_backStall = SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_V0 = SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_wireValid & ~ (SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_fromReg0);
    assign SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_V1 = SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_wireValid & ~ (SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_wireValid = redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_valid_out;

    // SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28(STALLENABLE,539)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_V0 = SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_backStall = i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_out_stall_out | ~ (SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_and0 = SE_out_i_llvm_fpga_mem_memdep_sum_vector28_V1;
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_wireValid = SE_out_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_V1 & SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_and0;

    // SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35(STALLENABLE,413)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_wireValid = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_out_valid_out;

    // c_i33_152(CONSTANT,9)
    assign c_i33_152_q = $unsigned(33'b111111111111111111111111111111111);

    // SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_6(STALLENABLE,593)
    // Valid signal propagation
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_V0 = SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_backStall = i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_out_stall_out | ~ (SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_wireValid = bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_valid_out;

    // bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg(STALLFIFO,623)
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_valid_in = SE_out_sum_vector_B3_merge_reg_aunroll_x_V5;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_stall_in = SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_backStall;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp = bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_valid_in[0];
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp = bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_stall_in[0];
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_valid_out[0] = bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_stall_out[0] = bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg (
        .valid_in(bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_5(STALLENABLE,591)
    // Valid signal propagation
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_V0 = SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_backStall = i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_out_stall_out | ~ (SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_wireValid = bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_valid_out;

    // bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg(STALLFIFO,622)
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_valid_in = SE_out_sum_vector_B3_merge_reg_aunroll_x_V4;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_stall_in = SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_backStall;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp = bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_valid_in[0];
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp = bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_stall_in[0];
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_valid_out[0] = bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_stall_out[0] = bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg (
        .valid_in(bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22(BLACKBOX,36)@65
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    sum_vector_i_llvm_fpga_ffwd_dest_p1024i32_b94_0 thei_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_backStall),
        .in_valid_in(SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_4(STALLENABLE,589)
    // Valid signal propagation
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_out_stall_out | ~ (SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_wireValid = bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_valid_out;

    // bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg(STALLFIFO,621)
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_valid_in = SE_out_sum_vector_B3_merge_reg_aunroll_x_V3;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17(BLACKBOX,35)@65
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    sum_vector_i_llvm_fpga_ffwd_dest_p1024i32_a83_0 thei_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_backStall),
        .in_valid_in(SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_3(STALLENABLE,587)
    // Valid signal propagation
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_out_stall_out | ~ (SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_wireValid = bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_valid_out;

    // bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg(STALLFIFO,620)
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_valid_in = SE_out_sum_vector_B3_merge_reg_aunroll_x_V2;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_2(STALLENABLE,585)
    // Valid signal propagation
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_out_stall_out | ~ (SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_wireValid = bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_valid_out;

    // bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg(STALLFIFO,619)
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_valid_in = SE_out_sum_vector_B3_merge_reg_aunroll_x_V1;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,338)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,339)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,427)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = sum_vector_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sum_vector_B3_merge_reg_aunroll_x(BLACKBOX,176)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    sum_vector_B3_merge_reg thesum_vector_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_sum_vector_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(sum_vector_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(sum_vector_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_sum_vector_B3_merge_reg_aunroll_x(STALLENABLE,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg0 <= SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg1 <= SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg2 <= SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg3 <= SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg4 <= SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg5 <= SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg6 <= SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid) | SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg0;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid) | SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg1;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_sum_vector_B3_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid) | SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg2;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_sum_vector_B3_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid) | SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg3;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed4 = (~ (bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_reg_stall_out) & SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid) | SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg4;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed5 = (~ (bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_reg_stall_out) & SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid) | SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg5;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed6 = (~ (redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_out) & SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid) | SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg6;
    // Consuming
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_StallValid = SE_out_sum_vector_B3_merge_reg_aunroll_x_backStall & SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg0 = SE_out_sum_vector_B3_merge_reg_aunroll_x_StallValid & SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg1 = SE_out_sum_vector_B3_merge_reg_aunroll_x_StallValid & SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed1;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg2 = SE_out_sum_vector_B3_merge_reg_aunroll_x_StallValid & SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed2;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg3 = SE_out_sum_vector_B3_merge_reg_aunroll_x_StallValid & SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed3;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg4 = SE_out_sum_vector_B3_merge_reg_aunroll_x_StallValid & SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed4;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg5 = SE_out_sum_vector_B3_merge_reg_aunroll_x_StallValid & SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed5;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_toReg6 = SE_out_sum_vector_B3_merge_reg_aunroll_x_StallValid & SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed6;
    // Backward Stall generation
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_or0 = SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_or1 = SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed1 & SE_out_sum_vector_B3_merge_reg_aunroll_x_or0;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_or2 = SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed2 & SE_out_sum_vector_B3_merge_reg_aunroll_x_or1;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_or3 = SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed3 & SE_out_sum_vector_B3_merge_reg_aunroll_x_or2;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_or4 = SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed4 & SE_out_sum_vector_B3_merge_reg_aunroll_x_or3;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_or5 = SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed5 & SE_out_sum_vector_B3_merge_reg_aunroll_x_or4;
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_wireStall = ~ (SE_out_sum_vector_B3_merge_reg_aunroll_x_consumed6 & SE_out_sum_vector_B3_merge_reg_aunroll_x_or5);
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_backStall = SE_out_sum_vector_B3_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_V0 = SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg0);
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_V1 = SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg1);
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_V2 = SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg2);
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_V3 = SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg3);
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_V4 = SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg4);
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_V5 = SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg5);
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_V6 = SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_sum_vector_B3_merge_reg_aunroll_x_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_sum_vector_B3_merge_reg_aunroll_x_wireValid = sum_vector_B3_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg(STALLFIFO,618)
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_valid_in = SE_out_sum_vector_B3_merge_reg_aunroll_x_V0;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_1(STALLENABLE,583)
    // Valid signal propagation
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_out_stall_out | ~ (SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_wireValid = bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10(BLACKBOX,34)@65
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    sum_vector_i_llvm_fpga_ffwd_dest_i33_unnamed_9_sum_vector0 thei_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_backStall),
        .in_valid_in(SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10(BITJOIN,294)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_q = i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10(BITSELECT,295)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_q[32:0]);

    // bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11(BITJOIN,327)
    assign bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11(BITSELECT,328)
    assign bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_b = $unsigned(bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_q[32:0]);

    // i_fpga_indvars_iv_replace_phi_sum_vector12(MUX,25)@65
    assign i_fpga_indvars_iv_replace_phi_sum_vector12_s = redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_q;
    always @(i_fpga_indvars_iv_replace_phi_sum_vector12_s or bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_b or bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_b)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_sum_vector12_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_sum_vector12_q = bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_b;
            1'b1 : i_fpga_indvars_iv_replace_phi_sum_vector12_q = bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_b;
            default : i_fpga_indvars_iv_replace_phi_sum_vector12_q = 33'b0;
        endcase
    end

    // i_fpga_indvars_iv_next_sum_vector34(ADD,24)@65
    assign i_fpga_indvars_iv_next_sum_vector34_a = {1'b0, i_fpga_indvars_iv_replace_phi_sum_vector12_q};
    assign i_fpga_indvars_iv_next_sum_vector34_b = {1'b0, c_i33_152_q};
    assign i_fpga_indvars_iv_next_sum_vector34_o = $unsigned(i_fpga_indvars_iv_next_sum_vector34_a) + $unsigned(i_fpga_indvars_iv_next_sum_vector34_b);
    assign i_fpga_indvars_iv_next_sum_vector34_q = i_fpga_indvars_iv_next_sum_vector34_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_sum_vector34_sel_x(BITSELECT,125)@65
    assign bgTrunc_i_fpga_indvars_iv_next_sum_vector34_sel_x_b = i_fpga_indvars_iv_next_sum_vector34_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35(BLACKBOX,51)@65
    // in in_stall_in@20000000
    // out out_data_out@66
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    // out out_stall_out@20000000
    // out out_valid_out@66
    sum_vector_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_sum_vector34_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_out_feedback_stall_out_6),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_sum_vector4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_V0),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_out_feedback_valid_out_6),
        .out_stall_out(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35(STALLENABLE,412)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_V0 = SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_backStall = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_and0 = SE_i_fpga_indvars_iv_replace_phi_sum_vector12_V1;
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V2 & SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_and0;

    // SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11(STALLENABLE,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_fromReg0 <= SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_fromReg1 <= SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_wireValid) | SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_consumed1 = (~ (SE_i_fpga_indvars_iv_replace_phi_sum_vector12_backStall) & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_wireValid) | SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_StallValid = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_backStall & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_wireValid;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_toReg0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_StallValid & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_toReg1 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_StallValid & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_or0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_wireStall = ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_consumed1 & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_or0);
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_backStall = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_V0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_V1 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_wireValid = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10(STALLENABLE,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_consumed1 = (~ (SE_i_fpga_indvars_iv_replace_phi_sum_vector12_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_backStall & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_or0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_backStall = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_V0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_V1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_wireValid = i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_out_valid_out;

    // SE_i_fpga_indvars_iv_replace_phi_sum_vector12(STALLENABLE,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_fpga_indvars_iv_replace_phi_sum_vector12_fromReg0 <= '0;
            SE_i_fpga_indvars_iv_replace_phi_sum_vector12_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_fpga_indvars_iv_replace_phi_sum_vector12_fromReg0 <= SE_i_fpga_indvars_iv_replace_phi_sum_vector12_toReg0;
            // Successor 1
            SE_i_fpga_indvars_iv_replace_phi_sum_vector12_fromReg1 <= SE_i_fpga_indvars_iv_replace_phi_sum_vector12_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_fpga_indvars_iv_replace_phi_sum_vector12_consumed0 = (~ (SE_i_unnamed_sum_vector37_backStall) & SE_i_fpga_indvars_iv_replace_phi_sum_vector12_wireValid) | SE_i_fpga_indvars_iv_replace_phi_sum_vector12_fromReg0;
    assign SE_i_fpga_indvars_iv_replace_phi_sum_vector12_consumed1 = (~ (SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_backStall) & SE_i_fpga_indvars_iv_replace_phi_sum_vector12_wireValid) | SE_i_fpga_indvars_iv_replace_phi_sum_vector12_fromReg1;
    // Consuming
    assign SE_i_fpga_indvars_iv_replace_phi_sum_vector12_StallValid = SE_i_fpga_indvars_iv_replace_phi_sum_vector12_backStall & SE_i_fpga_indvars_iv_replace_phi_sum_vector12_wireValid;
    assign SE_i_fpga_indvars_iv_replace_phi_sum_vector12_toReg0 = SE_i_fpga_indvars_iv_replace_phi_sum_vector12_StallValid & SE_i_fpga_indvars_iv_replace_phi_sum_vector12_consumed0;
    assign SE_i_fpga_indvars_iv_replace_phi_sum_vector12_toReg1 = SE_i_fpga_indvars_iv_replace_phi_sum_vector12_StallValid & SE_i_fpga_indvars_iv_replace_phi_sum_vector12_consumed1;
    // Backward Stall generation
    assign SE_i_fpga_indvars_iv_replace_phi_sum_vector12_or0 = SE_i_fpga_indvars_iv_replace_phi_sum_vector12_consumed0;
    assign SE_i_fpga_indvars_iv_replace_phi_sum_vector12_wireStall = ~ (SE_i_fpga_indvars_iv_replace_phi_sum_vector12_consumed1 & SE_i_fpga_indvars_iv_replace_phi_sum_vector12_or0);
    assign SE_i_fpga_indvars_iv_replace_phi_sum_vector12_backStall = SE_i_fpga_indvars_iv_replace_phi_sum_vector12_wireStall;
    // Valid signal propagation
    assign SE_i_fpga_indvars_iv_replace_phi_sum_vector12_V0 = SE_i_fpga_indvars_iv_replace_phi_sum_vector12_wireValid & ~ (SE_i_fpga_indvars_iv_replace_phi_sum_vector12_fromReg0);
    assign SE_i_fpga_indvars_iv_replace_phi_sum_vector12_V1 = SE_i_fpga_indvars_iv_replace_phi_sum_vector12_wireValid & ~ (SE_i_fpga_indvars_iv_replace_phi_sum_vector12_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_fpga_indvars_iv_replace_phi_sum_vector12_and0 = SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_V0;
    assign SE_i_fpga_indvars_iv_replace_phi_sum_vector12_and1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_V1 & SE_i_fpga_indvars_iv_replace_phi_sum_vector12_and0;
    assign SE_i_fpga_indvars_iv_replace_phi_sum_vector12_wireValid = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_V1 & SE_i_fpga_indvars_iv_replace_phi_sum_vector12_and1;

    // SE_i_unnamed_sum_vector37(STALLENABLE,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_sum_vector37_fromReg0 <= '0;
            SE_i_unnamed_sum_vector37_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_sum_vector37_fromReg0 <= SE_i_unnamed_sum_vector37_toReg0;
            // Successor 1
            SE_i_unnamed_sum_vector37_fromReg1 <= SE_i_unnamed_sum_vector37_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_sum_vector37_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_backStall) & SE_i_unnamed_sum_vector37_wireValid) | SE_i_unnamed_sum_vector37_fromReg0;
    assign SE_i_unnamed_sum_vector37_consumed1 = (~ (SR_SE_i_masked_sum_vector43_backStall) & SE_i_unnamed_sum_vector37_wireValid) | SE_i_unnamed_sum_vector37_fromReg1;
    // Consuming
    assign SE_i_unnamed_sum_vector37_StallValid = SE_i_unnamed_sum_vector37_backStall & SE_i_unnamed_sum_vector37_wireValid;
    assign SE_i_unnamed_sum_vector37_toReg0 = SE_i_unnamed_sum_vector37_StallValid & SE_i_unnamed_sum_vector37_consumed0;
    assign SE_i_unnamed_sum_vector37_toReg1 = SE_i_unnamed_sum_vector37_StallValid & SE_i_unnamed_sum_vector37_consumed1;
    // Backward Stall generation
    assign SE_i_unnamed_sum_vector37_or0 = SE_i_unnamed_sum_vector37_consumed0;
    assign SE_i_unnamed_sum_vector37_wireStall = ~ (SE_i_unnamed_sum_vector37_consumed1 & SE_i_unnamed_sum_vector37_or0);
    assign SE_i_unnamed_sum_vector37_backStall = SE_i_unnamed_sum_vector37_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_sum_vector37_V0 = SE_i_unnamed_sum_vector37_wireValid & ~ (SE_i_unnamed_sum_vector37_fromReg0);
    assign SE_i_unnamed_sum_vector37_V1 = SE_i_unnamed_sum_vector37_wireValid & ~ (SE_i_unnamed_sum_vector37_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_sum_vector37_and0 = SE_i_fpga_indvars_iv_replace_phi_sum_vector12_V0;
    assign SE_i_unnamed_sum_vector37_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_V1 & SE_i_unnamed_sum_vector37_and0;

    // i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36(BLACKBOX,32)@65
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    sum_vector_i_llvm_fpga_ffwd_dest_i1_cmp66_0 thei_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_backStall),
        .in_valid_in(SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_6_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36(STALLENABLE,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_consumed1 = (~ (SE_i_unnamed_sum_vector37_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg(STALLFIFO,614)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg(STALLFIFO,615)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_masked_sum_vector43(STALLENABLE,418)
    // Valid signal propagation
    assign SE_i_masked_sum_vector43_V0 = SE_i_masked_sum_vector43_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_sum_vector43_s_tv_0 = SE_in_redist4_i_masked_sum_vector43_q_63_fifo_backStall & SE_i_masked_sum_vector43_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_sum_vector43_backEN = ~ (SE_i_masked_sum_vector43_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_sum_vector43_v_s_0 = SE_i_masked_sum_vector43_backEN & SR_SE_i_masked_sum_vector43_V;
    // Backward Stall generation
    assign SE_i_masked_sum_vector43_backStall = ~ (SE_i_masked_sum_vector43_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_sum_vector43_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_sum_vector43_backEN == 1'b0)
            begin
                SE_i_masked_sum_vector43_R_v_0 <= SE_i_masked_sum_vector43_R_v_0 & SE_i_masked_sum_vector43_s_tv_0;
            end
            else
            begin
                SE_i_masked_sum_vector43_R_v_0 <= SE_i_masked_sum_vector43_v_s_0;
            end

        end
    end

    // i_masked_sum_vector43(LOGICAL,54)@65 + 1
    assign i_masked_sum_vector43_qi = SR_SE_i_masked_sum_vector43_D0 & SR_SE_i_masked_sum_vector43_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_sum_vector43_delay ( .xin(i_masked_sum_vector43_qi), .xout(i_masked_sum_vector43_q), .ena(SE_i_masked_sum_vector43_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_in_redist4_i_masked_sum_vector43_q_63_fifo(STALLENABLE,494)
    // Valid signal propagation
    assign SE_in_redist4_i_masked_sum_vector43_q_63_fifo_V0 = SE_in_redist4_i_masked_sum_vector43_q_63_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist4_i_masked_sum_vector43_q_63_fifo_backStall = redist4_i_masked_sum_vector43_q_63_fifo_stall_out | ~ (SE_in_redist4_i_masked_sum_vector43_q_63_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist4_i_masked_sum_vector43_q_63_fifo_wireValid = SE_i_masked_sum_vector43_V0;

    // redist4_i_masked_sum_vector43_q_63_fifo(STALLFIFO,283)
    assign redist4_i_masked_sum_vector43_q_63_fifo_valid_in = SE_in_redist4_i_masked_sum_vector43_q_63_fifo_V0;
    assign redist4_i_masked_sum_vector43_q_63_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_backStall;
    assign redist4_i_masked_sum_vector43_q_63_fifo_data_in = i_masked_sum_vector43_q;
    assign redist4_i_masked_sum_vector43_q_63_fifo_valid_in_bitsignaltemp = redist4_i_masked_sum_vector43_q_63_fifo_valid_in[0];
    assign redist4_i_masked_sum_vector43_q_63_fifo_stall_in_bitsignaltemp = redist4_i_masked_sum_vector43_q_63_fifo_stall_in[0];
    assign redist4_i_masked_sum_vector43_q_63_fifo_valid_out[0] = redist4_i_masked_sum_vector43_q_63_fifo_valid_out_bitsignaltemp;
    assign redist4_i_masked_sum_vector43_q_63_fifo_stall_out[0] = redist4_i_masked_sum_vector43_q_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_i_masked_sum_vector43_q_63_fifo (
        .valid_in(redist4_i_masked_sum_vector43_q_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_i_masked_sum_vector43_q_63_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_sum_vector43_q),
        .valid_out(redist4_i_masked_sum_vector43_q_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_i_masked_sum_vector43_q_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_i_masked_sum_vector43_q_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg(STALLFIFO,616)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg(STALLFIFO,617)
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_V0;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1(STALLENABLE,561)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and0 = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and1 = bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and2 = redist4_i_masked_sum_vector43_q_63_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and3 = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_sum_vector9_sum_vector10_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and4 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and5 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_sum_vector5_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_sum_vector28_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_and5;

    // SE_out_i_llvm_fpga_mem_memdep_sum_vector28(STALLENABLE,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_sum_vector28_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_sum_vector28_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_sum_vector28_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_sum_vector28_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_sum_vector28_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_sum_vector28_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_sum_vector28_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_sum_vector28_wireValid) | SE_out_i_llvm_fpga_mem_memdep_sum_vector28_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_sum_vector28_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_mem_memdep_sum_vector28_backStall) & SE_out_i_llvm_fpga_mem_memdep_sum_vector28_wireValid) | SE_out_i_llvm_fpga_mem_memdep_sum_vector28_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_sum_vector28_StallValid = SE_out_i_llvm_fpga_mem_memdep_sum_vector28_backStall & SE_out_i_llvm_fpga_mem_memdep_sum_vector28_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_sum_vector28_toReg0 = SE_out_i_llvm_fpga_mem_memdep_sum_vector28_StallValid & SE_out_i_llvm_fpga_mem_memdep_sum_vector28_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_sum_vector28_toReg1 = SE_out_i_llvm_fpga_mem_memdep_sum_vector28_StallValid & SE_out_i_llvm_fpga_mem_memdep_sum_vector28_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_sum_vector28_or0 = SE_out_i_llvm_fpga_mem_memdep_sum_vector28_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_sum_vector28_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_sum_vector28_consumed1 & SE_out_i_llvm_fpga_mem_memdep_sum_vector28_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_sum_vector28_backStall = SE_out_i_llvm_fpga_mem_memdep_sum_vector28_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_sum_vector28_V0 = SE_out_i_llvm_fpga_mem_memdep_sum_vector28_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_sum_vector28_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_sum_vector28_V1 = SE_out_i_llvm_fpga_mem_memdep_sum_vector28_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_sum_vector28_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_sum_vector28_wireValid = i_llvm_fpga_mem_memdep_sum_vector28_out_o_valid;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,363)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,364)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[64:0]);

    // sel_for_coalesced_delay_0(BITSELECT,279)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_sum_vector28(BLACKBOX,40)@97
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_sum_vector_avm_address@20000000
    // out out_memdep_sum_vector_avm_burstcount@20000000
    // out out_memdep_sum_vector_avm_byteenable@20000000
    // out out_memdep_sum_vector_avm_enable@20000000
    // out out_memdep_sum_vector_avm_read@20000000
    // out out_memdep_sum_vector_avm_write@20000000
    // out out_memdep_sum_vector_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@128
    // out out_o_writeack@128
    sum_vector_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_sum_vector28 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_predicate(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_sum_vector28_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_i_writedata(bgTrunc_i_add_sum_vector25_sel_x_b),
        .in_memdep_sum_vector_avm_readdata(in_memdep_sum_vector_avm_readdata),
        .in_memdep_sum_vector_avm_readdatavalid(in_memdep_sum_vector_avm_readdatavalid),
        .in_memdep_sum_vector_avm_waitrequest(in_memdep_sum_vector_avm_waitrequest),
        .in_memdep_sum_vector_avm_writeack(in_memdep_sum_vector_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_sum_vector28_out_lsu_memdep_o_active),
        .out_memdep_sum_vector_avm_address(i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_address),
        .out_memdep_sum_vector_avm_burstcount(i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_burstcount),
        .out_memdep_sum_vector_avm_byteenable(i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_byteenable),
        .out_memdep_sum_vector_avm_enable(i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_enable),
        .out_memdep_sum_vector_avm_read(i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_read),
        .out_memdep_sum_vector_avm_write(i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_write),
        .out_memdep_sum_vector_avm_writedata(i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_sum_vector28_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_sum_vector28_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_sum_vector28_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20(BITJOIN,321)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_q = i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20(BITSELECT,322)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_q[0:0]);

    // i_arrayidx_sum_vector0_mult_x_im0_shift0(BITSHIFT,265)@65
    assign i_arrayidx_sum_vector0_mult_x_im0_shift0_qint = { i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx_sum_vector0_mult_x_im0_shift0_q = i_arrayidx_sum_vector0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx_sum_vector0_mult_x_sums_align_3(BITSHIFT,238)@65
    assign i_arrayidx_sum_vector0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx_sum_vector0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx_sum_vector0_mult_x_sums_align_3_q = i_arrayidx_sum_vector0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx_sum_vector0_mult_x_im6_shift0(BITSHIFT,267)@65
    assign i_arrayidx_sum_vector0_mult_x_im6_shift0_qint = { i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx_sum_vector0_mult_x_im6_shift0_q = i_arrayidx_sum_vector0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx_sum_vector0_mult_x_sums_align_2(BITSHIFT,237)@65
    assign i_arrayidx_sum_vector0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx_sum_vector0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx_sum_vector0_mult_x_sums_align_2_q = i_arrayidx_sum_vector0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx_sum_vector0_mult_x_sums_join_4(BITJOIN,239)@65
    assign i_arrayidx_sum_vector0_mult_x_sums_join_4_q = {i_arrayidx_sum_vector0_mult_x_sums_align_3_q, i_arrayidx_sum_vector0_mult_x_sums_align_2_q};

    // i_arrayidx_sum_vector0_mult_x_im3_shift0(BITSHIFT,266)@65
    assign i_arrayidx_sum_vector0_mult_x_im3_shift0_qint = { i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx_sum_vector0_mult_x_im3_shift0_q = i_arrayidx_sum_vector0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx_sum_vector0_mult_x_sums_align_0(BITSHIFT,235)@65
    assign i_arrayidx_sum_vector0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx_sum_vector0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx_sum_vector0_mult_x_sums_align_0_q = i_arrayidx_sum_vector0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx_sum_vector0_mult_x_im9_shift0(BITSHIFT,268)@65
    assign i_arrayidx_sum_vector0_mult_x_im9_shift0_qint = { i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx_sum_vector0_mult_x_im9_shift0_q = i_arrayidx_sum_vector0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx_sum_vector0_mult_x_sums_join_1(BITJOIN,236)@65
    assign i_arrayidx_sum_vector0_mult_x_sums_join_1_q = {i_arrayidx_sum_vector0_mult_x_sums_align_0_q, {1'b0, i_arrayidx_sum_vector0_mult_x_im9_shift0_q}};

    // i_arrayidx_sum_vector0_mult_x_sums_result_add_0_0(ADD,240)@65
    assign i_arrayidx_sum_vector0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx_sum_vector0_mult_x_sums_join_1_q};
    assign i_arrayidx_sum_vector0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx_sum_vector0_mult_x_sums_join_4_q};
    assign i_arrayidx_sum_vector0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx_sum_vector0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx_sum_vector0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx_sum_vector0_mult_x_sums_result_add_0_0_q = i_arrayidx_sum_vector0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx_sum_vector0_mult_extender_x(BITJOIN,161)@65
    assign i_arrayidx_sum_vector0_mult_extender_x_q = {i_arrayidx2_sum_vector0_mult_multconst_x_q, i_arrayidx_sum_vector0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx_sum_vector0_trunc_sel_x(BITSELECT,163)@65
    assign i_arrayidx_sum_vector0_trunc_sel_x_b = i_arrayidx_sum_vector0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17(BITJOIN,298)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_q = i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17(BITSELECT,299)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_q[63:0]);

    // i_arrayidx_sum_vector0_add_x(ADD,155)@65
    assign i_arrayidx_sum_vector0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_b};
    assign i_arrayidx_sum_vector0_add_x_b = {1'b0, i_arrayidx_sum_vector0_trunc_sel_x_b};
    assign i_arrayidx_sum_vector0_add_x_o = $unsigned(i_arrayidx_sum_vector0_add_x_a) + $unsigned(i_arrayidx_sum_vector0_add_x_b);
    assign i_arrayidx_sum_vector0_add_x_q = i_arrayidx_sum_vector0_add_x_o[64:0];

    // i_arrayidx_sum_vector0_dupName_0_trunc_sel_x(BITSELECT,164)@65
    assign i_arrayidx_sum_vector0_dupName_0_trunc_sel_x_b = i_arrayidx_sum_vector0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm1_sum_vector21(BLACKBOX,38)@65
    // in in_i_stall@20000000
    // out out_lm1_sum_vector_avm_address@20000000
    // out out_lm1_sum_vector_avm_burstcount@20000000
    // out out_lm1_sum_vector_avm_byteenable@20000000
    // out out_lm1_sum_vector_avm_enable@20000000
    // out out_lm1_sum_vector_avm_read@20000000
    // out out_lm1_sum_vector_avm_write@20000000
    // out out_lm1_sum_vector_avm_writedata@20000000
    // out out_o_readdata@97
    // out out_o_stall@20000000
    // out out_o_valid@97
    sum_vector_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_sum_vector21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx_sum_vector0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_b),
        .in_i_predicate(i_first_cleanup_xor_or_sum_vector19_q),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_V0),
        .in_lm1_sum_vector_avm_readdata(in_lm1_sum_vector_avm_readdata),
        .in_lm1_sum_vector_avm_readdatavalid(in_lm1_sum_vector_avm_readdatavalid),
        .in_lm1_sum_vector_avm_waitrequest(in_lm1_sum_vector_avm_waitrequest),
        .in_lm1_sum_vector_avm_writeack(in_lm1_sum_vector_avm_writeack),
        .out_lm1_sum_vector_avm_address(i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_address),
        .out_lm1_sum_vector_avm_burstcount(i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_burstcount),
        .out_lm1_sum_vector_avm_byteenable(i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_byteenable),
        .out_lm1_sum_vector_avm_enable(i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_enable),
        .out_lm1_sum_vector_avm_read(i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_read),
        .out_lm1_sum_vector_avm_write(i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_write),
        .out_lm1_sum_vector_avm_writedata(i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_sum_vector21_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1_sum_vector21_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1_sum_vector21_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx2_sum_vector0_mult_x_im0_shift0(BITSHIFT,257)@65
    assign i_arrayidx2_sum_vector0_mult_x_im0_shift0_qint = { i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx2_sum_vector0_mult_x_im0_shift0_q = i_arrayidx2_sum_vector0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx2_sum_vector0_mult_x_sums_align_3(BITSHIFT,202)@65
    assign i_arrayidx2_sum_vector0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx2_sum_vector0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx2_sum_vector0_mult_x_sums_align_3_q = i_arrayidx2_sum_vector0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx2_sum_vector0_mult_x_im6_shift0(BITSHIFT,259)@65
    assign i_arrayidx2_sum_vector0_mult_x_im6_shift0_qint = { i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx2_sum_vector0_mult_x_im6_shift0_q = i_arrayidx2_sum_vector0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx2_sum_vector0_mult_x_sums_align_2(BITSHIFT,201)@65
    assign i_arrayidx2_sum_vector0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx2_sum_vector0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx2_sum_vector0_mult_x_sums_align_2_q = i_arrayidx2_sum_vector0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx2_sum_vector0_mult_x_sums_join_4(BITJOIN,203)@65
    assign i_arrayidx2_sum_vector0_mult_x_sums_join_4_q = {i_arrayidx2_sum_vector0_mult_x_sums_align_3_q, i_arrayidx2_sum_vector0_mult_x_sums_align_2_q};

    // i_arrayidx2_sum_vector0_mult_x_im3_shift0(BITSHIFT,258)@65
    assign i_arrayidx2_sum_vector0_mult_x_im3_shift0_qint = { i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx2_sum_vector0_mult_x_im3_shift0_q = i_arrayidx2_sum_vector0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx2_sum_vector0_mult_x_sums_align_0(BITSHIFT,199)@65
    assign i_arrayidx2_sum_vector0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx2_sum_vector0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx2_sum_vector0_mult_x_sums_align_0_q = i_arrayidx2_sum_vector0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx2_sum_vector0_mult_x_im9_shift0(BITSHIFT,260)@65
    assign i_arrayidx2_sum_vector0_mult_x_im9_shift0_qint = { i_arrayidx2_sum_vector0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx2_sum_vector0_mult_x_im9_shift0_q = i_arrayidx2_sum_vector0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx2_sum_vector0_mult_x_sums_join_1(BITJOIN,200)@65
    assign i_arrayidx2_sum_vector0_mult_x_sums_join_1_q = {i_arrayidx2_sum_vector0_mult_x_sums_align_0_q, {1'b0, i_arrayidx2_sum_vector0_mult_x_im9_shift0_q}};

    // i_arrayidx2_sum_vector0_mult_x_sums_result_add_0_0(ADD,204)@65
    assign i_arrayidx2_sum_vector0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx2_sum_vector0_mult_x_sums_join_1_q};
    assign i_arrayidx2_sum_vector0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx2_sum_vector0_mult_x_sums_join_4_q};
    assign i_arrayidx2_sum_vector0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx2_sum_vector0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx2_sum_vector0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx2_sum_vector0_mult_x_sums_result_add_0_0_q = i_arrayidx2_sum_vector0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx2_sum_vector0_mult_extender_x(BITJOIN,141)@65
    assign i_arrayidx2_sum_vector0_mult_extender_x_q = {i_arrayidx2_sum_vector0_mult_multconst_x_q, i_arrayidx2_sum_vector0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx2_sum_vector0_trunc_sel_x(BITSELECT,143)@65
    assign i_arrayidx2_sum_vector0_trunc_sel_x_b = i_arrayidx2_sum_vector0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22(BITJOIN,301)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_q = i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22(BITSELECT,302)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_q[63:0]);

    // i_arrayidx2_sum_vector0_add_x(ADD,135)@65
    assign i_arrayidx2_sum_vector0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_b};
    assign i_arrayidx2_sum_vector0_add_x_b = {1'b0, i_arrayidx2_sum_vector0_trunc_sel_x_b};
    assign i_arrayidx2_sum_vector0_add_x_o = $unsigned(i_arrayidx2_sum_vector0_add_x_a) + $unsigned(i_arrayidx2_sum_vector0_add_x_b);
    assign i_arrayidx2_sum_vector0_add_x_q = i_arrayidx2_sum_vector0_add_x_o[64:0];

    // i_arrayidx2_sum_vector0_dupName_0_trunc_sel_x(BITSELECT,144)@65
    assign i_arrayidx2_sum_vector0_dupName_0_trunc_sel_x_b = i_arrayidx2_sum_vector0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm32_sum_vector24(BLACKBOX,39)@65
    // in in_i_stall@20000000
    // out out_lm32_sum_vector_avm_address@20000000
    // out out_lm32_sum_vector_avm_burstcount@20000000
    // out out_lm32_sum_vector_avm_byteenable@20000000
    // out out_lm32_sum_vector_avm_enable@20000000
    // out out_lm32_sum_vector_avm_read@20000000
    // out out_lm32_sum_vector_avm_write@20000000
    // out out_lm32_sum_vector_avm_writedata@20000000
    // out out_o_readdata@97
    // out out_o_stall@20000000
    // out out_o_valid@97
    sum_vector_i_llvm_fpga_mem_lm32_0 thei_llvm_fpga_mem_lm32_sum_vector24 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx2_sum_vector0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_b),
        .in_i_predicate(i_first_cleanup_xor_or_sum_vector19_q),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_V0),
        .in_lm32_sum_vector_avm_readdata(in_lm32_sum_vector_avm_readdata),
        .in_lm32_sum_vector_avm_readdatavalid(in_lm32_sum_vector_avm_readdatavalid),
        .in_lm32_sum_vector_avm_waitrequest(in_lm32_sum_vector_avm_waitrequest),
        .in_lm32_sum_vector_avm_writeack(in_lm32_sum_vector_avm_writeack),
        .out_lm32_sum_vector_avm_address(i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_address),
        .out_lm32_sum_vector_avm_burstcount(i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_burstcount),
        .out_lm32_sum_vector_avm_byteenable(i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_byteenable),
        .out_lm32_sum_vector_avm_enable(i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_enable),
        .out_lm32_sum_vector_avm_read(i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_read),
        .out_lm32_sum_vector_avm_write(i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_write),
        .out_lm32_sum_vector_avm_writedata(i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm32_sum_vector24_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm32_sum_vector24_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm32_sum_vector24_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,499)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_llvm_fpga_mem_memdep_sum_vector28_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_llvm_fpga_mem_lm32_sum_vector24_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_lm1_sum_vector21_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // coalesced_delay_0_fifo(STALLFIFO,285)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_V0;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i32_i_07_push7_sum_vector31(STALLENABLE,411)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_wireValid = i_llvm_fpga_push_i32_i_07_push7_sum_vector31_out_valid_out;

    // c_i32_150(CONSTANT,8)
    assign c_i32_150_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_sum_vector30(ADD,30)@65
    assign i_inc_sum_vector30_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_b};
    assign i_inc_sum_vector30_b = {1'b0, c_i32_150_q};
    assign i_inc_sum_vector30_o = $unsigned(i_inc_sum_vector30_a) + $unsigned(i_inc_sum_vector30_b);
    assign i_inc_sum_vector30_q = i_inc_sum_vector30_o[32:0];

    // bgTrunc_i_inc_sum_vector30_sel_x(BITSELECT,126)@65
    assign bgTrunc_i_inc_sum_vector30_sel_x_b = i_inc_sum_vector30_q[31:0];

    // i_llvm_fpga_push_i32_i_07_push7_sum_vector31(BLACKBOX,50)@65
    // in in_stall_in@20000000
    // out out_data_out@66
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    // out out_stall_out@20000000
    // out out_valid_out@66
    sum_vector_i_llvm_fpga_push_i32_i_07_push7_0 thei_llvm_fpga_push_i32_i_07_push7_sum_vector31 (
        .in_data_in(bgTrunc_i_inc_sum_vector30_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_out_feedback_stall_out_7),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_sum_vector4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_V0),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i32_i_07_push7_sum_vector31_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i32_i_07_push7_sum_vector31_out_feedback_valid_out_7),
        .out_stall_out(i_llvm_fpga_push_i32_i_07_push7_sum_vector31_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_07_push7_sum_vector31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31(STALLENABLE,410)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_V0 = SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_backStall = i_llvm_fpga_push_i32_i_07_push7_sum_vector31_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_and0 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_V0;
    assign SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V1 & SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_and0;

    // SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15(STALLENABLE,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg2 <= SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg3 <= SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed0 = (~ (SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_backStall) & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_backStall) & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed2 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_backStall) & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed3 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_backStall) & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_StallValid = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_backStall & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_toReg0 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_StallValid & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_toReg1 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_StallValid & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed1;
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_toReg2 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_StallValid & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed2;
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_toReg3 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_StallValid & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_or0 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_or1 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed1 & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_or0;
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_or2 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed2 & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_or1;
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_consumed3 & SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_or2);
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_backStall = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_V0 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_V1 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_V2 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_V3 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_wireValid = i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26(BLACKBOX,37)@65
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    sum_vector_i_llvm_fpga_ffwd_dest_p1024i32_c105_0 thei_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_backStall),
        .in_valid_in(SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_5_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26(STALLENABLE,385)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_backStall = coalesced_delay_0_fifo_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_and0 = i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_and1 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_V2 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_V2 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_and1;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20(STALLENABLE,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22(STALLENABLE,383)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_backStall = i_llvm_fpga_mem_lm32_sum_vector24_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_and0 = i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_and1 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_and2 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_and2;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17(STALLENABLE,381)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_backStall = i_llvm_fpga_mem_lm1_sum_vector21_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_and0 = i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_and1 = SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_V3 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_and2 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_and2;

    // i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13(BLACKBOX,33)@65
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    sum_vector_i_llvm_fpga_ffwd_dest_i1_cmp67_0 thei_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_backStall),
        .in_valid_in(SE_out_bubble_out_sum_vector_B3_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13(STALLENABLE,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg1 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg2 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_a83_sum_vector17_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_b94_sum_vector22_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_consumed2 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_c105_sum_vector26_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_consumed1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_toReg2 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_or1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_or0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_consumed2 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_or1);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg1);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_V2 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_and0 = i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_wireValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_V3 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_and0;

    // i_exitcond_sum_vector32_cmp_nsign(LOGICAL,186)@65
    assign i_exitcond_sum_vector32_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_sum_vector12_q[32:32]));

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36(BITJOIN,287)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_q = i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36(BITSELECT,288)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_q[0:0]);

    // i_unnamed_sum_vector37(LOGICAL,62)@65
    assign i_unnamed_sum_vector37_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp66_sum_vector36_b & i_exitcond_sum_vector32_cmp_nsign_q;

    // i_notcmp_sum_vector38(LOGICAL,59)@65
    assign i_notcmp_sum_vector38_q = i_unnamed_sum_vector37_q ^ VCC_q;

    // SR_SE_i_masked_sum_vector43(STALLREG,624)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_sum_vector43_r_valid <= 1'b0;
            SR_SE_i_masked_sum_vector43_r_data0 <= 1'bx;
            SR_SE_i_masked_sum_vector43_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_sum_vector43_r_valid <= SE_i_masked_sum_vector43_backStall & (SR_SE_i_masked_sum_vector43_r_valid | SR_SE_i_masked_sum_vector43_i_valid);

            if (SR_SE_i_masked_sum_vector43_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_sum_vector43_r_data0 <= i_notcmp_sum_vector38_q;
                SR_SE_i_masked_sum_vector43_r_data1 <= i_first_cleanup_sum_vector1_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_sum_vector43_and0 = SE_i_unnamed_sum_vector37_V1;
    assign SR_SE_i_masked_sum_vector43_i_valid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_V2 & SR_SE_i_masked_sum_vector43_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_sum_vector43_backStall = SR_SE_i_masked_sum_vector43_r_valid | ~ (SR_SE_i_masked_sum_vector43_i_valid);

    // Valid
    assign SR_SE_i_masked_sum_vector43_V = SR_SE_i_masked_sum_vector43_r_valid == 1'b1 ? SR_SE_i_masked_sum_vector43_r_valid : SR_SE_i_masked_sum_vector43_i_valid;

    // Data0
    assign SR_SE_i_masked_sum_vector43_D0 = SR_SE_i_masked_sum_vector43_r_valid == 1'b1 ? SR_SE_i_masked_sum_vector43_r_data0 : i_notcmp_sum_vector38_q;
    // Data1
    assign SR_SE_i_masked_sum_vector43_D1 = SR_SE_i_masked_sum_vector43_r_valid == 1'b1 ? SR_SE_i_masked_sum_vector43_r_data1 : i_first_cleanup_sum_vector1_sel_x_b;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39(STALLENABLE,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_sum_vector39_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_consumed1 = (~ (SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_and0 = SE_i_unnamed_sum_vector37_V0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_wireValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_and0;

    // leftShiftStage0Idx1Rng1_uid245_i_cleanups_shl_sum_vector0_shift_x(BITSELECT,244)@65
    assign leftShiftStage0Idx1Rng1_uid245_i_cleanups_shl_sum_vector0_shift_x_in = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_b[2:0];
    assign leftShiftStage0Idx1Rng1_uid245_i_cleanups_shl_sum_vector0_shift_x_b = leftShiftStage0Idx1Rng1_uid245_i_cleanups_shl_sum_vector0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid246_i_cleanups_shl_sum_vector0_shift_x(BITJOIN,245)@65
    assign leftShiftStage0Idx1_uid246_i_cleanups_shl_sum_vector0_shift_x_q = {leftShiftStage0Idx1Rng1_uid245_i_cleanups_shl_sum_vector0_shift_x_b, GND_q};

    // leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x(MUX,247)@65
    assign leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_b or leftShiftStage0Idx1_uid246_i_cleanups_shl_sum_vector0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_s)
            1'b0 : leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_b;
            1'b1 : leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_q = leftShiftStage0Idx1_uid246_i_cleanups_shl_sum_vector0_shift_x_q;
            default : leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_sum_vector3_vt_select_3(BITSELECT,20)@65
    assign i_cleanups_shl_sum_vector3_vt_select_3_b = leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_q[3:1];

    // i_cleanups_shl_sum_vector3_vt_join(BITJOIN,19)@65
    assign i_cleanups_shl_sum_vector3_vt_join_q = {i_cleanups_shl_sum_vector3_vt_select_3_b, GND_q};

    // i_or_sum_vector40(LOGICAL,60)@65
    assign i_or_sum_vector40_q = i_notcmp_sum_vector38_q | i_xor_sum_vector2_q;

    // i_next_cleanups_sum_vector41(MUX,55)@65
    assign i_next_cleanups_sum_vector41_s = i_or_sum_vector40_q;
    always @(i_next_cleanups_sum_vector41_s or bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_b or i_cleanups_shl_sum_vector3_vt_join_q)
    begin
        unique case (i_next_cleanups_sum_vector41_s)
            1'b0 : i_next_cleanups_sum_vector41_q = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_b;
            1'b1 : i_next_cleanups_sum_vector41_q = i_cleanups_shl_sum_vector3_vt_join_q;
            default : i_next_cleanups_sum_vector41_q = 4'b0;
        endcase
    end

    // SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x(STALLENABLE,470)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_V0 = SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_backStall = i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_out_stall_out | ~ (SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_wireValid = SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_V;

    // SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x(STALLREG,625)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_valid <= 1'b0;
            SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_data0 <= 4'bxxxx;
            SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_valid <= SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_backStall & (SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_valid | SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_i_valid);

            if (SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_data0 <= i_next_cleanups_sum_vector41_q;
                SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_sum_vector4_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_V1;
    assign SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_and1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_V0 & SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_and0;
    assign SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V3 & SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_and1;
    // Stall signal propagation
    assign SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_backStall = SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_valid | ~ (SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_i_valid);

    // Valid
    assign SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_V = SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_valid : SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_i_valid;

    // Data0
    assign SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_D0 = SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_data0 : i_next_cleanups_sum_vector41_q;
    // Data1
    assign SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_D1 = SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_sum_vector4_b;

    // SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0(STALLENABLE,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg2 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg3 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed0 = (~ (SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed2 = (~ (SR_SE_i_masked_sum_vector43_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed3 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp67_sum_vector13_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_StallValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_backStall & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_toReg0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_toReg1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_toReg2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_toReg3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_or0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_or1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed1 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_or0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_or2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed2 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_or1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_consumed3 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_or2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_backStall = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_V0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_V1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_V2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_V3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_wireValid = i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i4_cleanups_push10_sum_vector42(STALLENABLE,415)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_wireValid = i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_out_valid_out;

    // i_llvm_fpga_push_i4_cleanups_push10_sum_vector42(BLACKBOX,52)@65
    // in in_stall_in@20000000
    // out out_data_out@66
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@66
    sum_vector_i_llvm_fpga_push_i4_cleanups_push10_0 thei_llvm_fpga_push_i4_cleanups_push10_sum_vector42 (
        .in_data_in(SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_D0),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_out_feedback_stall_out_10),
        .in_keep_going(SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_backStall),
        .in_valid_in(SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_out_feedback_valid_out_10),
        .out_stall_out(i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_744(CONSTANT,12)
    assign c_i4_744_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0(BLACKBOX,45)@64
    // in in_stall_in@20000000
    // out out_data_out@65
    // out out_feedback_stall_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@65
    sum_vector_i_llvm_fpga_pop_i4_cleanups_pop10_0 thei_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0 (
        .in_data_in(c_i4_744_q),
        .in_dir(bubble_select_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_sum_vector42_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_backStall),
        .in_valid_in(SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V5),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_out_feedback_stall_out_10),
        .out_stall_out(i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef48(CONSTANT,10)
    assign c_i33_undef48_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11(BLACKBOX,44)@64
    // in in_stall_in@20000000
    // out out_data_out@65
    // out out_feedback_stall_out_6@20000000
    // out out_stall_out@20000000
    // out out_valid_out@65
    sum_vector_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11 (
        .in_data_in(c_i33_undef48_q),
        .in_dir(bubble_select_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b),
        .in_feedback_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_backStall),
        .in_valid_in(SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V4),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_out_feedback_stall_out_6),
        .out_stall_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15(BLACKBOX,43)@64
    // in in_stall_in@20000000
    // out out_data_out@65
    // out out_feedback_stall_out_7@20000000
    // out out_stall_out@20000000
    // out out_valid_out@65
    sum_vector_i_llvm_fpga_pop_i32_i_07_pop7_0 thei_llvm_fpga_pop_i32_i_07_pop7_sum_vector15 (
        .in_data_in(c_i32_049_q),
        .in_dir(bubble_select_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b),
        .in_feedback_in_7(i_llvm_fpga_push_i32_i_07_push7_sum_vector31_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i32_i_07_push7_sum_vector31_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_backStall),
        .in_valid_in(SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V3),
        .out_data_out(i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_out_feedback_stall_out_7),
        .out_stall_out(i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20(BLACKBOX,42)@64
    // in in_stall_in@20000000
    // out out_data_out@65
    // out out_feedback_stall_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@65
    sum_vector_i_llvm_fpga_pop_i1_memdep_phi_pop8_0 thei_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b),
        .in_feedback_in_8(i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i1_memdep_phi_push8_sum_vector29_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_backStall),
        .in_valid_in(SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_out_feedback_stall_out_8),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0(STALLENABLE,491)
    // Valid signal propagation
    assign SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_V0 = SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_R_v_0;
    assign SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_V1 = SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_R_v_1;
    // Stall signal propagation
    assign SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_s_tv_0 = SE_i_fpga_indvars_iv_replace_phi_sum_vector12_backStall & SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_R_v_0;
    assign SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_s_tv_1 = redist2_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_126_fifo_stall_out & SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_R_v_1;
    // Backward Enable generation
    assign SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_or0 = SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_s_tv_0;
    assign SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_backEN = ~ (SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_s_tv_1 | SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_v_s_0 = SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_backEN & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V0;
    // Backward Stall generation
    assign SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_backStall = ~ (SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_R_v_0 <= 1'b0;
            SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_backEN == 1'b0)
            begin
                SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_R_v_0 <= SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_R_v_0 & SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_s_tv_0;
            end
            else
            begin
                SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_R_v_0 <= SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_v_s_0;
            end

            if (SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_backEN == 1'b0)
            begin
                SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_R_v_1 <= SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_R_v_1 & SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_s_tv_1;
            end
            else
            begin
                SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_R_v_1 <= SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_v_s_0;
            end

        end
    end

    // bubble_join_sum_vector_B3_merge_reg_aunroll_x(BITJOIN,342)
    assign bubble_join_sum_vector_B3_merge_reg_aunroll_x_q = sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_sum_vector_B3_merge_reg_aunroll_x(BITSELECT,343)
    assign bubble_select_sum_vector_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_sum_vector_B3_merge_reg_aunroll_x_q[0:0]);

    // redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo(STALLFIFO,280)
    assign redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_in = SE_out_sum_vector_B3_merge_reg_aunroll_x_V6;
    assign redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_in = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_backStall;
    assign redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_data_in = bubble_select_sum_vector_B3_merge_reg_aunroll_x_b;
    assign redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_in_bitsignaltemp = redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_in[0];
    assign redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_in_bitsignaltemp = redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_in[0];
    assign redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_out[0] = redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_out_bitsignaltemp;
    assign redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_out[0] = redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo (
        .valid_in(redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_sum_vector_B3_merge_reg_aunroll_x_b),
        .valid_out(redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo(STALLENABLE,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg0 <= '0;
            SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg1 <= '0;
            SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg2 <= '0;
            SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg3 <= '0;
            SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg4 <= '0;
            SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg0 <= SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg0;
            // Successor 1
            SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg1 <= SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg1;
            // Successor 2
            SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg2 <= SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg2;
            // Successor 3
            SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg3 <= SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg3;
            // Successor 4
            SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg4 <= SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg4;
            // Successor 5
            SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg5 <= SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed0 = (~ (SE_redist1_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_64_0_backStall) & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid) | SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg0;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed1 = (~ (i_llvm_fpga_pipeline_keep_going_sum_vector4_out_stall_out) & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid) | SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg1;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed2 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop8_sum_vector20_out_stall_out) & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid) | SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg2;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed3 = (~ (i_llvm_fpga_pop_i32_i_07_pop7_sum_vector15_out_stall_out) & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid) | SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg3;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed4 = (~ (i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_out_stall_out) & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid) | SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg4;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed5 = (~ (i_llvm_fpga_pop_i4_cleanups_pop10_sum_vector0_out_stall_out) & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid) | SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg5;
    // Consuming
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_StallValid = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_backStall & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg0 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_StallValid & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed0;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg1 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_StallValid & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed1;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg2 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_StallValid & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed2;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg3 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_StallValid & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed3;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg4 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_StallValid & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed4;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg5 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_StallValid & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed5;
    // Backward Stall generation
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or0 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed0;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or1 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed1 & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or0;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or2 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed2 & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or1;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or3 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed3 & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or2;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or4 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed4 & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or3;
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireStall = ~ (SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed5 & SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or4);
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_backStall = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V0 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid & ~ (SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg0);
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V1 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid & ~ (SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg1);
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V2 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid & ~ (SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg2);
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V3 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid & ~ (SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg3);
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V4 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid & ~ (SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg4);
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V5 = SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid & ~ (SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid = redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_out;

    // SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4(STALLENABLE,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_i_07_push7_sum_vector31_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed2 = (~ (SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_sum_vector35_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed3 = (~ (SR_SE_leftShiftStage0_uid248_i_cleanups_shl_sum_vector0_shift_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed4 = (~ (redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_or3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_wireValid = i_llvm_fpga_pipeline_keep_going_sum_vector4_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_sum_vector39(STALLENABLE,409)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_sum_vector39_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_sum_vector39_wireValid = i_llvm_fpga_push_i1_notexitcond_sum_vector39_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_sum_vector39(BLACKBOX,49)@65
    // in in_stall_in@20000000
    // out out_data_out@66
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@66
    sum_vector_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_sum_vector39 (
        .in_data_in(i_unnamed_sum_vector37_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_sum_vector4_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_sum_vector1_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_sum_vector39_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_sum_vector39_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_sum_vector39_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_sum_vector39_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_sum_vector39_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_sum_vector39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_sum_vector9(STALLENABLE,405)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_sum_vector9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_sum_vector9_wireValid = i_llvm_fpga_push_i1_lastiniteration_sum_vector9_out_valid_out;

    // i_last_initeration_sum_vector8_sel_x(BITSELECT,171)@128
    assign i_last_initeration_sum_vector8_sel_x_b = i_next_initerations_sum_vector6_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_sum_vector9(BLACKBOX,47)@128
    // in in_stall_in@20000000
    // out out_data_out@129
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@129
    sum_vector_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_sum_vector9 (
        .in_data_in(i_last_initeration_sum_vector8_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_sum_vector4_out_initeration_stall_out),
        .in_keep_going(bubble_select_redist5_i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out_63_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_sum_vector9_backStall),
        .in_valid_in(SE_i_next_initerations_sum_vector6_vt_join_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_sum_vector9_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_sum_vector9_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_sum_vector9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_sum_vector9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo(BITJOIN,351)
    assign bubble_join_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_q = redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_data_out;

    // bubble_select_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo(BITSELECT,352)
    assign bubble_select_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b = $unsigned(bubble_join_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going_sum_vector4(BLACKBOX,41)@64
    // in in_stall_in@20000000
    // out out_data_out@65
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@65
    sum_vector_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_sum_vector4 (
        .in_data_in(bubble_select_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_sum_vector9_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_sum_vector9_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_sum_vector39_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_sum_vector39_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_sum_vector4_backStall),
        .in_valid_in(SE_out_redist0_sum_vector_B3_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_sum_vector4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_sum_vector4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_sum_vector4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_sum_vector4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_sum_vector4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_sum_vector4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_sum_vector4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_sum_vector4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,16)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sum_vector4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_sum_vector4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sum_vector4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_sum_vector4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,112)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_sum_vector4_out_pipeline_valid_out;

    // sync_out(GPOUT,122)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,129)
    assign out_lm1_sum_vector_avm_address = i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_address;
    assign out_lm1_sum_vector_avm_enable = i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_enable;
    assign out_lm1_sum_vector_avm_read = i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_read;
    assign out_lm1_sum_vector_avm_write = i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_write;
    assign out_lm1_sum_vector_avm_writedata = i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_writedata;
    assign out_lm1_sum_vector_avm_byteenable = i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_byteenable;
    assign out_lm1_sum_vector_avm_burstcount = i_llvm_fpga_mem_lm1_sum_vector21_out_lm1_sum_vector_avm_burstcount;

    // bubble_join_redist4_i_masked_sum_vector43_q_63_fifo(BITJOIN,357)
    assign bubble_join_redist4_i_masked_sum_vector43_q_63_fifo_q = redist4_i_masked_sum_vector43_q_63_fifo_data_out;

    // bubble_select_redist4_i_masked_sum_vector43_q_63_fifo(BITSELECT,358)
    assign bubble_select_redist4_i_masked_sum_vector43_q_63_fifo_b = $unsigned(bubble_join_redist4_i_masked_sum_vector43_q_63_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,130)@128
    assign out_masked = bubble_select_redist4_i_masked_sum_vector43_q_63_fifo_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_sum_vector11_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,132)
    assign out_lm32_sum_vector_avm_address = i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_address;
    assign out_lm32_sum_vector_avm_enable = i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_enable;
    assign out_lm32_sum_vector_avm_read = i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_read;
    assign out_lm32_sum_vector_avm_write = i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_write;
    assign out_lm32_sum_vector_avm_writedata = i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_writedata;
    assign out_lm32_sum_vector_avm_byteenable = i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_byteenable;
    assign out_lm32_sum_vector_avm_burstcount = i_llvm_fpga_mem_lm32_sum_vector24_out_lm32_sum_vector_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,133)
    assign out_memdep_sum_vector_avm_address = i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_address;
    assign out_memdep_sum_vector_avm_enable = i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_enable;
    assign out_memdep_sum_vector_avm_read = i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_read;
    assign out_memdep_sum_vector_avm_write = i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_write;
    assign out_memdep_sum_vector_avm_writedata = i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_writedata;
    assign out_memdep_sum_vector_avm_byteenable = i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_byteenable;
    assign out_memdep_sum_vector_avm_burstcount = i_llvm_fpga_mem_memdep_sum_vector28_out_memdep_sum_vector_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,134)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_sum_vector28_out_lsu_memdep_o_active;

endmodule
