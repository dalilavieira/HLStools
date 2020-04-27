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

// SystemVerilog created from sobel_filter_i_sfc_logic_s_c0_in_for_bodA000000Zr31837_sobel_filter0
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_i_sfc_logic_s_c0_in_for_bodA000000Zr31837_sobel_filter0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi13336_0_tpl,
    output wire [0:0] out_c0_exi13336_1_tpl,
    output wire [31:0] out_c0_exi13336_2_tpl,
    output wire [0:0] out_c0_exi13336_3_tpl,
    output wire [0:0] out_c0_exi13336_4_tpl,
    output wire [0:0] out_c0_exi13336_5_tpl,
    output wire [0:0] out_c0_exi13336_6_tpl,
    output wire [0:0] out_c0_exi13336_7_tpl,
    output wire [63:0] out_c0_exi13336_8_tpl,
    output wire [0:0] out_c0_exi13336_9_tpl,
    output wire [0:0] out_c0_exi13336_10_tpl,
    output wire [0:0] out_c0_exi13336_11_tpl,
    output wire [0:0] out_c0_exi13336_12_tpl,
    output wire [0:0] out_c0_exi13336_13_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_sobel_filter3,
    input wire [0:0] in_c0_eni15_0_tpl,
    input wire [0:0] in_c0_eni15_1_tpl,
    input wire [31:0] in_c0_eni15_2_tpl,
    input wire [31:0] in_c0_eni15_3_tpl,
    input wire [31:0] in_c0_eni15_4_tpl,
    input wire [31:0] in_c0_eni15_5_tpl,
    input wire [31:0] in_c0_eni15_6_tpl,
    input wire [31:0] in_c0_eni15_7_tpl,
    input wire [31:0] in_c0_eni15_8_tpl,
    input wire [31:0] in_c0_eni15_9_tpl,
    input wire [31:0] in_c0_eni15_10_tpl,
    input wire [0:0] in_c0_eni15_11_tpl,
    input wire [0:0] in_c0_eni15_12_tpl,
    input wire [0:0] in_c0_eni15_13_tpl,
    input wire [0:0] in_c0_eni15_14_tpl,
    input wire [63:0] in_c0_eni15_15_tpl,
    input wire [0:0] in_c0_eni15_16_tpl,
    input wire [0:0] in_c0_eni15_17_tpl,
    input wire [0:0] in_c0_eni15_18_tpl,
    input wire [0:0] in_c0_eni15_19_tpl,
    input wire [0:0] in_c0_eni15_20_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_179_q;
    wire [31:0] c_i32_181_q;
    wire [31:0] c_i32_386_q;
    wire [31:0] c_i32_487_q;
    wire [31:0] c_i32_588_q;
    wire [31:0] c_i32_689_q;
    wire [31:0] c_i32_790_q;
    wire [31:0] c_i32_882_q;
    wire [3:0] c_i4_185_q;
    wire [3:0] c_i4_683_q;
    wire [0:0] comparator_qi;
    reg [0:0] comparator_q;
    wire [32:0] i_add_i15_i_sobel_filter16_a;
    wire [32:0] i_add_i15_i_sobel_filter16_b;
    logic [32:0] i_add_i15_i_sobel_filter16_o;
    wire [32:0] i_add_i15_i_sobel_filter16_q;
    wire [1:0] i_arrayidx3_i_i96_sobel_filter11_vt_const_1_q;
    wire [63:0] i_arrayidx3_i_i96_sobel_filter11_vt_join_q;
    wire [61:0] i_arrayidx3_i_i96_sobel_filter11_vt_select_63_b;
    wire [1:0] i_cleanups_shl102_sobel_filter5_vt_join_q;
    wire [0:0] i_cleanups_shl102_sobel_filter5_vt_select_1_b;
    wire [4:0] i_fpga_indvars_iv_next26_sobel_filter28_a;
    wire [4:0] i_fpga_indvars_iv_next26_sobel_filter28_b;
    logic [4:0] i_fpga_indvars_iv_next26_sobel_filter28_o;
    wire [4:0] i_fpga_indvars_iv_next26_sobel_filter28_q;
    wire [32:0] i_inc_i_i_sobel_filter18_a;
    wire [32:0] i_inc_i_i_sobel_filter18_b;
    logic [32:0] i_inc_i_i_sobel_filter18_o;
    wire [32:0] i_inc_i_i_sobel_filter18_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v6i32_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_stmt_sobel_filter34_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_feedback_stall_out_61;
    wire [0:0] i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_feedback_stall_out_60;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_feedback_stall_out_63;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_feedback_stall_out_67;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_feedback_stall_out_62;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups101_pop59_sobel_filter2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups101_pop59_sobel_filter2_out_feedback_stall_out_59;
    wire [31:0] i_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30_out_feedback_stall_out_64;
    wire [31:0] i_llvm_fpga_pop_i32_add_i15_i147_pop58_sobel_filter15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add_i15_i147_pop58_sobel_filter15_out_feedback_stall_out_58;
    wire [31:0] i_llvm_fpga_pop_i32_inc_i_i148_pop57_sobel_filter8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_inc_i_i148_pop57_sobel_filter8_out_feedback_stall_out_57;
    wire [31:0] i_llvm_fpga_pop_i32_pre_pop56_sobel_filter13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_pre_pop56_sobel_filter13_out_feedback_stall_out_56;
    wire [3:0] i_llvm_fpga_pop_i4_fpga_indvars_iv25_pop55_sobel_filter20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv25_pop55_sobel_filter20_out_feedback_stall_out_55;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_feedback_stall_out_65;
    wire [0:0] i_llvm_fpga_push_i1_exitcond45163_push61_sobel_filter40_out_feedback_out_61;
    wire [0:0] i_llvm_fpga_push_i1_exitcond45163_push61_sobel_filter40_out_feedback_valid_out_61;
    wire [0:0] i_llvm_fpga_push_i1_forked156159_push60_sobel_filter38_out_feedback_out_60;
    wire [0:0] i_llvm_fpga_push_i1_forked156159_push60_sobel_filter38_out_feedback_valid_out_60;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration100_sobel_filter7_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration100_sobel_filter7_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop27177_push63_sobel_filter44_out_feedback_out_63;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop27177_push63_sobel_filter44_out_feedback_valid_out_63;
    wire [0:0] i_llvm_fpga_push_i1_notcmp110184_push67_sobel_filter48_out_feedback_out_67;
    wire [0:0] i_llvm_fpga_push_i1_notcmp110184_push67_sobel_filter48_out_feedback_valid_out_67;
    wire [0:0] i_llvm_fpga_push_i1_notcmp131170_push62_sobel_filter42_out_feedback_out_62;
    wire [0:0] i_llvm_fpga_push_i1_notcmp131170_push62_sobel_filter42_out_feedback_valid_out_62;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond108_sobel_filter24_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond108_sobel_filter24_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i2_cleanups101_push59_sobel_filter27_out_feedback_out_59;
    wire [0:0] i_llvm_fpga_push_i2_cleanups101_push59_sobel_filter27_out_feedback_valid_out_59;
    wire [31:0] i_llvm_fpga_push_i32_acl_114181_push64_sobel_filter31_out_feedback_out_64;
    wire [0:0] i_llvm_fpga_push_i32_acl_114181_push64_sobel_filter31_out_feedback_valid_out_64;
    wire [31:0] i_llvm_fpga_push_i32_add_i15_i147_push58_sobel_filter17_out_feedback_out_58;
    wire [0:0] i_llvm_fpga_push_i32_add_i15_i147_push58_sobel_filter17_out_feedback_valid_out_58;
    wire [31:0] i_llvm_fpga_push_i32_inc_i_i148_push57_sobel_filter19_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_i32_inc_i_i148_push57_sobel_filter19_out_feedback_valid_out_57;
    wire [31:0] i_llvm_fpga_push_i32_pre_push56_sobel_filter35_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_i32_pre_push56_sobel_filter35_out_feedback_valid_out_56;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv25_push55_sobel_filter29_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv25_push55_sobel_filter29_out_feedback_valid_out_55;
    wire [63:0] i_llvm_fpga_push_i64_idxprom43_i_i182_push65_sobel_filter46_out_feedback_out_65;
    wire [0:0] i_llvm_fpga_push_i64_idxprom43_i_i182_push65_sobel_filter46_out_feedback_valid_out_65;
    wire [0:0] i_masked107_sobel_filter36_qi;
    reg [0:0] i_masked107_sobel_filter36_q;
    wire [0:0] i_next_cleanups106_sobel_filter26_s;
    reg [1:0] i_next_cleanups106_sobel_filter26_q;
    wire [0:0] i_notcmp94_sobel_filter23_q;
    wire [0:0] i_or105_sobel_filter25_q;
    wire [32:0] i_sub1_i_i_sobel_filter9_a;
    wire [32:0] i_sub1_i_i_sobel_filter9_b;
    logic [32:0] i_sub1_i_i_sobel_filter9_o;
    wire [32:0] i_sub1_i_i_sobel_filter9_q;
    wire [0:0] i_xor104_sobel_filter4_q;
    wire [31:0] bgTrunc_i_add_i15_i_sobel_filter16_sel_x_b;
    wire [3:0] bgTrunc_i_fpga_indvars_iv_next26_sobel_filter28_sel_x_b;
    wire [31:0] bgTrunc_i_inc_i_i_sobel_filter18_sel_x_b;
    wire [63:0] bgTrunc_i_mul_i_i_sobel_filter14_sel_x_in;
    wire [31:0] bgTrunc_i_mul_i_i_sobel_filter14_sel_x_b;
    wire [31:0] bgTrunc_i_sub1_i_i_sobel_filter9_sel_x_b;
    wire [0:0] dupName_0_comparator_x_qi;
    reg [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_qi;
    reg [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_qi;
    reg [0:0] dupName_2_comparator_x_q;
    wire [0:0] dupName_3_comparator_x_qi;
    reg [0:0] dupName_3_comparator_x_q;
    wire [0:0] dupName_4_comparator_x_qi;
    reg [0:0] dupName_4_comparator_x_q;
    wire [127:0] i_arrayidx3_i_i96_sobel_filter0_mult_extender_x_q;
    wire [60:0] i_arrayidx3_i_i96_sobel_filter0_mult_multconst_x_q;
    wire [63:0] i_arrayidx3_i_i96_sobel_filter0_trunc_sel_x_b;
    wire [64:0] i_arrayidx3_i_i96_sobel_filter0_dupName_0_trunc_sel_x_in;
    wire [63:0] i_arrayidx3_i_i96_sobel_filter0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup103_sobel_filter3_sel_x_b;
    wire [63:0] i_idxprom2_i_i_sobel_filter10_sel_x_b;
    wire [0:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_feedback_stall_out_66;
    wire [31:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_3_tpl;
    wire [31:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_4_tpl;
    wire [31:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_5_tpl;
    wire [191:0] i_llvm_fpga_push_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_push66_sobel_filter33_aunroll_x_out_feedback_out_66;
    wire [0:0] i_llvm_fpga_push_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_push66_sobel_filter33_aunroll_x_out_feedback_valid_out_66;
    reg [31:0] i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_NO_NAME_x_q;
    wire [3:0] i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_ROM_word_addr_extract_x_b;
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
    wire [0:0] i_exitcond27_sobel_filter21_cmp_nsign_q;
    wire [63:0] i_mul_i_i_sobel_filter14_sums_join_0_q;
    wire [50:0] i_mul_i_i_sobel_filter14_sums_align_1_q;
    wire [50:0] i_mul_i_i_sobel_filter14_sums_align_1_qint;
    wire [64:0] i_mul_i_i_sobel_filter14_sums_result_add_0_0_a;
    wire [64:0] i_mul_i_i_sobel_filter14_sums_result_add_0_0_b;
    logic [64:0] i_mul_i_i_sobel_filter14_sums_result_add_0_0_o;
    wire [64:0] i_mul_i_i_sobel_filter14_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid207_i_cleanups_shl102_sobel_filter0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid207_i_cleanups_shl102_sobel_filter0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid208_i_cleanups_shl102_sobel_filter0_shift_x_q;
    wire [0:0] leftShiftStage0_uid210_i_cleanups_shl102_sobel_filter0_shift_x_s;
    reg [1:0] leftShiftStage0_uid210_i_cleanups_shl102_sobel_filter0_shift_x_q;
    wire [11:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_im9_shift0_qint;
    wire i_mul_i_i_sobel_filter14_im0_cma_reset;
    wire [13:0] i_mul_i_i_sobel_filter14_im0_cma_a0;
    wire [13:0] i_mul_i_i_sobel_filter14_im0_cma_c0;
    wire [27:0] i_mul_i_i_sobel_filter14_im0_cma_s0;
    wire [27:0] i_mul_i_i_sobel_filter14_im0_cma_qq;
    wire [27:0] i_mul_i_i_sobel_filter14_im0_cma_q;
    wire i_mul_i_i_sobel_filter14_im0_cma_ena0;
    wire i_mul_i_i_sobel_filter14_im0_cma_ena1;
    wire i_mul_i_i_sobel_filter14_im0_cma_ena2;
    wire i_mul_i_i_sobel_filter14_im8_cma_reset;
    wire [17:0] i_mul_i_i_sobel_filter14_im8_cma_a0;
    wire [17:0] i_mul_i_i_sobel_filter14_im8_cma_c0;
    wire [35:0] i_mul_i_i_sobel_filter14_im8_cma_s0;
    wire [35:0] i_mul_i_i_sobel_filter14_im8_cma_qq;
    wire [35:0] i_mul_i_i_sobel_filter14_im8_cma_q;
    wire i_mul_i_i_sobel_filter14_im8_cma_ena0;
    wire i_mul_i_i_sobel_filter14_im8_cma_ena1;
    wire i_mul_i_i_sobel_filter14_im8_cma_ena2;
    wire i_mul_i_i_sobel_filter14_ma3_cma_reset;
    wire [13:0] i_mul_i_i_sobel_filter14_ma3_cma_a0;
    wire [17:0] i_mul_i_i_sobel_filter14_ma3_cma_c0;
    wire [13:0] i_mul_i_i_sobel_filter14_ma3_cma_a1;
    wire [17:0] i_mul_i_i_sobel_filter14_ma3_cma_c1;
    wire [32:0] i_mul_i_i_sobel_filter14_ma3_cma_s0;
    wire [32:0] i_mul_i_i_sobel_filter14_ma3_cma_qq;
    wire [32:0] i_mul_i_i_sobel_filter14_ma3_cma_q;
    wire i_mul_i_i_sobel_filter14_ma3_cma_ena0;
    wire i_mul_i_i_sobel_filter14_ma3_cma_ena1;
    wire i_mul_i_i_sobel_filter14_ma3_cma_ena2;
    wire [13:0] i_mul_i_i_sobel_filter14_bs2_merged_bit_select_b;
    wire [17:0] i_mul_i_i_sobel_filter14_bs2_merged_bit_select_c;
    wire [9:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx3_i_i96_sobel_filter0_mult_x_bs1_merged_bit_select_e;
    wire [13:0] i_mul_i_i_sobel_filter14_bs1_merged_bit_select_b;
    wire [17:0] i_mul_i_i_sobel_filter14_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q;
    reg [0:0] redist1_sync_together124_aunroll_x_in_c0_eni15_1_tpl_2_q;
    reg [0:0] redist2_sync_together124_aunroll_x_in_c0_eni15_1_tpl_5_q;
    reg [0:0] redist2_sync_together124_aunroll_x_in_c0_eni15_1_tpl_5_delay_0;
    reg [0:0] redist2_sync_together124_aunroll_x_in_c0_eni15_1_tpl_5_delay_1;
    reg [31:0] redist3_sync_together124_aunroll_x_in_c0_eni15_2_tpl_2_q;
    reg [31:0] redist3_sync_together124_aunroll_x_in_c0_eni15_2_tpl_2_delay_0;
    reg [31:0] redist5_sync_together124_aunroll_x_in_c0_eni15_4_tpl_1_q;
    reg [31:0] redist6_sync_together124_aunroll_x_in_c0_eni15_5_tpl_1_q;
    reg [31:0] redist7_sync_together124_aunroll_x_in_c0_eni15_6_tpl_1_q;
    reg [31:0] redist8_sync_together124_aunroll_x_in_c0_eni15_7_tpl_1_q;
    reg [31:0] redist9_sync_together124_aunroll_x_in_c0_eni15_8_tpl_1_q;
    reg [31:0] redist10_sync_together124_aunroll_x_in_c0_eni15_9_tpl_1_q;
    reg [31:0] redist11_sync_together124_aunroll_x_in_c0_eni15_10_tpl_1_q;
    reg [0:0] redist12_sync_together124_aunroll_x_in_c0_eni15_11_tpl_1_q;
    reg [0:0] redist13_sync_together124_aunroll_x_in_c0_eni15_12_tpl_1_q;
    reg [0:0] redist14_sync_together124_aunroll_x_in_c0_eni15_13_tpl_1_q;
    reg [0:0] redist15_sync_together124_aunroll_x_in_c0_eni15_14_tpl_1_q;
    reg [63:0] redist16_sync_together124_aunroll_x_in_c0_eni15_15_tpl_1_q;
    reg [0:0] redist17_sync_together124_aunroll_x_in_c0_eni15_16_tpl_1_q;
    reg [0:0] redist18_sync_together124_aunroll_x_in_c0_eni15_17_tpl_6_q;
    reg [0:0] redist19_sync_together124_aunroll_x_in_c0_eni15_18_tpl_6_q;
    reg [0:0] redist20_sync_together124_aunroll_x_in_c0_eni15_19_tpl_6_q;
    reg [0:0] redist21_sync_together124_aunroll_x_in_c0_eni15_20_tpl_6_q;
    reg [0:0] redist22_sync_together124_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist23_sync_together124_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist23_sync_together124_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist23_sync_together124_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist24_sync_together124_aunroll_x_in_i_valid_5_q;
    reg [31:0] redist25_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_0_tpl_1_q;
    reg [31:0] redist26_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_1_tpl_1_q;
    reg [31:0] redist27_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_2_tpl_1_q;
    reg [31:0] redist28_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_3_tpl_1_q;
    reg [31:0] redist29_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_4_tpl_1_q;
    reg [31:0] redist30_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_5_tpl_1_q;
    reg [31:0] redist31_bgTrunc_i_sub1_i_i_sobel_filter9_sel_x_b_1_q;
    reg [31:0] redist32_bgTrunc_i_mul_i_i_sobel_filter14_sel_x_b_1_q;
    reg [0:0] redist33_i_masked107_sobel_filter36_q_5_q;
    reg [0:0] redist33_i_masked107_sobel_filter36_q_5_delay_0;
    reg [0:0] redist33_i_masked107_sobel_filter36_q_5_delay_1;
    reg [0:0] redist33_i_masked107_sobel_filter36_q_5_delay_2;
    reg [31:0] redist35_i_llvm_fpga_pop_i32_add_i15_i147_pop58_sobel_filter15_out_data_out_1_q;
    reg [31:0] redist36_i_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30_out_data_out_1_q;
    reg [0:0] redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_q;
    reg [0:0] redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_0;
    reg [0:0] redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_1;
    reg [0:0] redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_2;
    reg [0:0] redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_3;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_q;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_0;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_1;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_2;
    reg [0:0] redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_3;
    reg [0:0] redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_q;
    reg [0:0] redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_0;
    reg [0:0] redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_1;
    reg [0:0] redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_2;
    reg [0:0] redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_3;
    reg [0:0] redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_q;
    reg [0:0] redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_0;
    reg [0:0] redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_1;
    reg [0:0] redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_2;
    reg [0:0] redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_3;
    reg [0:0] redist41_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_1_q;
    reg [0:0] redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_q;
    reg [0:0] redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_delay_0;
    reg [0:0] redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_delay_1;
    reg [0:0] redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_delay_2;
    reg [0:0] redist43_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_1_q;
    reg [0:0] redist44_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_2_q;
    reg [0:0] redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_q;
    reg [0:0] redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_delay_0;
    reg [0:0] redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_delay_1;
    reg [0:0] redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_delay_2;
    wire redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_reset0;
    wire [31:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_ia;
    wire [1:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_aa;
    wire [1:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_ab;
    wire [31:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_iq;
    wire [31:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_q;
    wire [1:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_i;
    reg [1:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_wraddr_q;
    wire [2:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_last_q;
    wire [2:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_cmp_b;
    wire [0:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_cmpReg_q;
    wire [0:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_notEnable_q;
    wire [0:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_sticky_ena_q;
    wire [0:0] redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_enaAnd_q;
    wire redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_reset0;
    wire [63:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_ia;
    wire [1:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_aa;
    wire [1:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_ab;
    wire [63:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_iq;
    wire [63:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_q;
    wire [1:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_rdcnt_i;
    reg [1:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_wraddr_q;
    wire [2:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_last_q;
    wire [2:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_cmp_b;
    wire [0:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_cmpReg_q;
    wire [0:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_notEnable_q;
    wire [0:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_sticky_ena_q;
    wire [0:0] redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist22_sync_together124_aunroll_x_in_i_valid_1(DELAY,243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together124_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist22_sync_together124_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist43_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_1(DELAY,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist43_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid207_i_cleanups_shl102_sobel_filter0_shift_x(BITSELECT,206)@2
    assign leftShiftStage0Idx1Rng1_uid207_i_cleanups_shl102_sobel_filter0_shift_x_in = i_llvm_fpga_pop_i2_cleanups101_pop59_sobel_filter2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid207_i_cleanups_shl102_sobel_filter0_shift_x_b = leftShiftStage0Idx1Rng1_uid207_i_cleanups_shl102_sobel_filter0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid208_i_cleanups_shl102_sobel_filter0_shift_x(BITJOIN,207)@2
    assign leftShiftStage0Idx1_uid208_i_cleanups_shl102_sobel_filter0_shift_x_q = {leftShiftStage0Idx1Rng1_uid207_i_cleanups_shl102_sobel_filter0_shift_x_b, GND_q};

    // leftShiftStage0_uid210_i_cleanups_shl102_sobel_filter0_shift_x(MUX,209)@2
    assign leftShiftStage0_uid210_i_cleanups_shl102_sobel_filter0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid210_i_cleanups_shl102_sobel_filter0_shift_x_s or i_llvm_fpga_pop_i2_cleanups101_pop59_sobel_filter2_out_data_out or leftShiftStage0Idx1_uid208_i_cleanups_shl102_sobel_filter0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid210_i_cleanups_shl102_sobel_filter0_shift_x_s)
            1'b0 : leftShiftStage0_uid210_i_cleanups_shl102_sobel_filter0_shift_x_q = i_llvm_fpga_pop_i2_cleanups101_pop59_sobel_filter2_out_data_out;
            1'b1 : leftShiftStage0_uid210_i_cleanups_shl102_sobel_filter0_shift_x_q = leftShiftStage0Idx1_uid208_i_cleanups_shl102_sobel_filter0_shift_x_q;
            default : leftShiftStage0_uid210_i_cleanups_shl102_sobel_filter0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl102_sobel_filter5_vt_select_1(BITSELECT,56)@2
    assign i_cleanups_shl102_sobel_filter5_vt_select_1_b = leftShiftStage0_uid210_i_cleanups_shl102_sobel_filter0_shift_x_q[1:1];

    // i_cleanups_shl102_sobel_filter5_vt_join(BITJOIN,55)@2
    assign i_cleanups_shl102_sobel_filter5_vt_join_q = {i_cleanups_shl102_sobel_filter5_vt_select_1_b, GND_q};

    // i_xor104_sobel_filter4(LOGICAL,97)@2
    assign i_xor104_sobel_filter4_q = i_first_cleanup103_sobel_filter3_sel_x_b ^ VCC_q;

    // i_notcmp94_sobel_filter23(LOGICAL,94)@2
    assign i_notcmp94_sobel_filter23_q = i_exitcond27_sobel_filter21_cmp_nsign_q ^ VCC_q;

    // i_or105_sobel_filter25(LOGICAL,95)@2
    assign i_or105_sobel_filter25_q = i_notcmp94_sobel_filter23_q | i_xor104_sobel_filter4_q;

    // i_next_cleanups106_sobel_filter26(MUX,93)@2
    assign i_next_cleanups106_sobel_filter26_s = i_or105_sobel_filter25_q;
    always @(i_next_cleanups106_sobel_filter26_s or i_llvm_fpga_pop_i2_cleanups101_pop59_sobel_filter2_out_data_out or i_cleanups_shl102_sobel_filter5_vt_join_q)
    begin
        unique case (i_next_cleanups106_sobel_filter26_s)
            1'b0 : i_next_cleanups106_sobel_filter26_q = i_llvm_fpga_pop_i2_cleanups101_pop59_sobel_filter2_out_data_out;
            1'b1 : i_next_cleanups106_sobel_filter26_q = i_cleanups_shl102_sobel_filter5_vt_join_q;
            default : i_next_cleanups106_sobel_filter26_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups101_push59_sobel_filter27(BLACKBOX,84)@2
    // out out_feedback_out_59@20000000
    // out out_feedback_valid_out_59@20000000
    sobel_filter_i_llvm_fpga_push_i2_cleanups101_push59_0 thei_llvm_fpga_push_i2_cleanups101_push59_sobel_filter27 (
        .in_data_in(i_next_cleanups106_sobel_filter26_q),
        .in_feedback_stall_in_59(i_llvm_fpga_pop_i2_cleanups101_pop59_sobel_filter2_out_feedback_stall_out_59),
        .in_keep_going98(redist43_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist22_sync_together124_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_59(i_llvm_fpga_push_i2_cleanups101_push59_sobel_filter27_out_feedback_out_59),
        .out_feedback_valid_out_59(i_llvm_fpga_push_i2_cleanups101_push59_sobel_filter27_out_feedback_valid_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q <= $unsigned(in_c0_eni15_1_tpl);
        end
    end

    // c_i2_179(CONSTANT,37)
    assign c_i2_179_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups101_pop59_sobel_filter2(BLACKBOX,70)@2
    // out out_feedback_stall_out_59@20000000
    sobel_filter_i_llvm_fpga_pop_i2_cleanups101_pop59_0 thei_llvm_fpga_pop_i2_cleanups101_pop59_sobel_filter2 (
        .in_data_in(c_i2_179_q),
        .in_dir(redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_59(i_llvm_fpga_push_i2_cleanups101_push59_sobel_filter27_out_feedback_out_59),
        .in_feedback_valid_in_59(i_llvm_fpga_push_i2_cleanups101_push59_sobel_filter27_out_feedback_valid_out_59),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist22_sync_together124_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups101_pop59_sobel_filter2_out_data_out),
        .out_feedback_stall_out_59(i_llvm_fpga_pop_i2_cleanups101_pop59_sobel_filter2_out_feedback_stall_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup103_sobel_filter3_sel_x(BITSELECT,128)@2
    assign i_first_cleanup103_sobel_filter3_sel_x_b = i_llvm_fpga_pop_i2_cleanups101_pop59_sobel_filter2_out_data_out[0:0];

    // c_i4_185(CONSTANT,45)
    assign c_i4_185_q = $unsigned(4'b1111);

    // i_fpga_indvars_iv_next26_sobel_filter28(ADD,59)@2
    assign i_fpga_indvars_iv_next26_sobel_filter28_a = {1'b0, i_llvm_fpga_pop_i4_fpga_indvars_iv25_pop55_sobel_filter20_out_data_out};
    assign i_fpga_indvars_iv_next26_sobel_filter28_b = {1'b0, c_i4_185_q};
    assign i_fpga_indvars_iv_next26_sobel_filter28_o = $unsigned(i_fpga_indvars_iv_next26_sobel_filter28_a) + $unsigned(i_fpga_indvars_iv_next26_sobel_filter28_b);
    assign i_fpga_indvars_iv_next26_sobel_filter28_q = i_fpga_indvars_iv_next26_sobel_filter28_o[4:0];

    // bgTrunc_i_fpga_indvars_iv_next26_sobel_filter28_sel_x(BITSELECT,104)@2
    assign bgTrunc_i_fpga_indvars_iv_next26_sobel_filter28_sel_x_b = i_fpga_indvars_iv_next26_sobel_filter28_q[3:0];

    // i_llvm_fpga_push_i4_fpga_indvars_iv25_push55_sobel_filter29(BLACKBOX,89)@2
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    sobel_filter_i_llvm_fpga_push_i4_fpga_indvars_iv25_push55_0 thei_llvm_fpga_push_i4_fpga_indvars_iv25_push55_sobel_filter29 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next26_sobel_filter28_sel_x_b),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_i4_fpga_indvars_iv25_pop55_sobel_filter20_out_feedback_stall_out_55),
        .in_keep_going98(redist43_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist22_sync_together124_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_i4_fpga_indvars_iv25_push55_sobel_filter29_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_i4_fpga_indvars_iv25_push55_sobel_filter29_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_683(CONSTANT,46)
    assign c_i4_683_q = $unsigned(4'b0110);

    // i_llvm_fpga_pop_i4_fpga_indvars_iv25_pop55_sobel_filter20(BLACKBOX,75)@2
    // out out_feedback_stall_out_55@20000000
    sobel_filter_i_llvm_fpga_pop_i4_fpga_indvars_iv25_pop55_0 thei_llvm_fpga_pop_i4_fpga_indvars_iv25_pop55_sobel_filter20 (
        .in_data_in(c_i4_683_q),
        .in_dir(redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_55(i_llvm_fpga_push_i4_fpga_indvars_iv25_push55_sobel_filter29_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_i4_fpga_indvars_iv25_push55_sobel_filter29_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist22_sync_together124_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_fpga_indvars_iv25_pop55_sobel_filter20_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_i4_fpga_indvars_iv25_pop55_sobel_filter20_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond27_sobel_filter21_cmp_nsign(LOGICAL,169)@2
    assign i_exitcond27_sobel_filter21_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i4_fpga_indvars_iv25_pop55_sobel_filter20_out_data_out[3:3]));

    // i_llvm_fpga_push_i1_notexitcond108_sobel_filter24(BLACKBOX,83)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    sobel_filter_i_llvm_fpga_push_i1_notexitcond108_0 thei_llvm_fpga_push_i1_notexitcond108_sobel_filter24 (
        .in_data_in(i_exitcond27_sobel_filter21_cmp_nsign_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_not_exitcond_stall_out),
        .in_first_cleanup103(i_first_cleanup103_sobel_filter3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist22_sync_together124_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond108_sobel_filter24_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond108_sobel_filter24_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,137)@1 + 1
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

    // i_llvm_fpga_push_i1_lastiniteration100_sobel_filter7(BLACKBOX,79)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    sobel_filter_i_llvm_fpga_push_i1_lastiniteration100_0 thei_llvm_fpga_push_i1_lastiniteration100_sobel_filter7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_initeration_stall_out),
        .in_keep_going98(redist43_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_lastiniteration100_sobel_filter7_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_lastiniteration100_sobel_filter7_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going98_sobel_filter6(BLACKBOX,64)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    sobel_filter_i_llvm_fpga_pipeline_keep_going98_0 thei_llvm_fpga_pipeline_keep_going98_sobel_filter6 (
        .in_data_in(in_c0_eni15_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration100_sobel_filter7_out_feedback_out_10),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration100_sobel_filter7_out_feedback_valid_out_10),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond108_sobel_filter24_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond108_sobel_filter24_out_feedback_valid_out_11),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,49)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,101)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_pipeline_valid_out;

    // redist23_sync_together124_aunroll_x_in_i_valid_4(DELAY,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together124_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist23_sync_together124_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist23_sync_together124_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist23_sync_together124_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist22_sync_together124_aunroll_x_in_i_valid_1_q);
            redist23_sync_together124_aunroll_x_in_i_valid_4_delay_1 <= redist23_sync_together124_aunroll_x_in_i_valid_4_delay_0;
            redist23_sync_together124_aunroll_x_in_i_valid_4_q <= redist23_sync_together124_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // redist24_sync_together124_aunroll_x_in_i_valid_5(DELAY,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together124_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist24_sync_together124_aunroll_x_in_i_valid_5_q <= $unsigned(redist23_sync_together124_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg0(REG,136)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist24_sync_together124_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist21_sync_together124_aunroll_x_in_c0_eni15_20_tpl_6(DELAY,242)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_sync_together124_aunroll_x_in_c0_eni15_20_tpl_6 ( .xin(in_c0_eni15_20_tpl), .xout(redist21_sync_together124_aunroll_x_in_c0_eni15_20_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_sync_together124_aunroll_x_in_c0_eni15_19_tpl_6(DELAY,241)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist20_sync_together124_aunroll_x_in_c0_eni15_19_tpl_6 ( .xin(in_c0_eni15_19_tpl), .xout(redist20_sync_together124_aunroll_x_in_c0_eni15_19_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_sync_together124_aunroll_x_in_c0_eni15_18_tpl_6(DELAY,240)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist19_sync_together124_aunroll_x_in_c0_eni15_18_tpl_6 ( .xin(in_c0_eni15_18_tpl), .xout(redist19_sync_together124_aunroll_x_in_c0_eni15_18_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_sync_together124_aunroll_x_in_c0_eni15_17_tpl_6(DELAY,239)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist18_sync_together124_aunroll_x_in_c0_eni15_17_tpl_6 ( .xin(in_c0_eni15_17_tpl), .xout(redist18_sync_together124_aunroll_x_in_c0_eni15_17_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg22(REG,158)@1 + 1
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

    // valid_fanout_reg23(REG,159)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp110184_push67_sobel_filter48(BLACKBOX,81)@2
    // out out_feedback_out_67@20000000
    // out out_feedback_valid_out_67@20000000
    sobel_filter_i_llvm_fpga_push_i1_notcmp110184_push67_0 thei_llvm_fpga_push_i1_notcmp110184_push67_sobel_filter48 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out),
        .in_feedback_stall_in_67(i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_feedback_stall_out_67),
        .in_keep_going98(redist43_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_67(i_llvm_fpga_push_i1_notcmp110184_push67_sobel_filter48_out_feedback_out_67),
        .out_feedback_valid_out_67(i_llvm_fpga_push_i1_notcmp110184_push67_sobel_filter48_out_feedback_valid_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_sync_together124_aunroll_x_in_c0_eni15_16_tpl_1(DELAY,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together124_aunroll_x_in_c0_eni15_16_tpl_1_q <= '0;
        end
        else
        begin
            redist17_sync_together124_aunroll_x_in_c0_eni15_16_tpl_1_q <= $unsigned(in_c0_eni15_16_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47(BLACKBOX,68)@2
    // out out_feedback_stall_out_67@20000000
    sobel_filter_i_llvm_fpga_pop_i1_notcmp110184_pop67_0 thei_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47 (
        .in_data_in(redist17_sync_together124_aunroll_x_in_c0_eni15_16_tpl_1_q),
        .in_dir(redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_67(i_llvm_fpga_push_i1_notcmp110184_push67_sobel_filter48_out_feedback_out_67),
        .in_feedback_valid_in_67(i_llvm_fpga_push_i1_notcmp110184_push67_sobel_filter48_out_feedback_valid_out_67),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out),
        .out_feedback_stall_out_67(i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_feedback_stall_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5(DELAY,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_0 <= '0;
            redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_1 <= '0;
            redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_2 <= '0;
            redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_3 <= '0;
            redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_q <= '0;
        end
        else
        begin
            redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out);
            redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_1 <= redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_0;
            redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_2 <= redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_1;
            redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_3 <= redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_2;
            redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_q <= redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_delay_3;
        end
    end

    // redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_notEnable(LOGICAL,283)
    assign redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_nor(LOGICAL,284)
    assign redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_nor_q = ~ (redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_notEnable_q | redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_sticky_ena_q);

    // redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_last(CONSTANT,280)
    assign redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_last_q = $unsigned(3'b010);

    // redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_cmp(LOGICAL,281)
    assign redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_cmp_b = {1'b0, redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_rdcnt_q};
    assign redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_cmp_q = $unsigned(redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_last_q == redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_cmp_b ? 1'b1 : 1'b0);

    // redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_cmpReg(REG,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_cmpReg_q <= $unsigned(redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_cmp_q);
        end
    end

    // redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_sticky_ena(REG,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_nor_q == 1'b1)
        begin
            redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_sticky_ena_q <= $unsigned(redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_cmpReg_q);
        end
    end

    // redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_enaAnd(LOGICAL,286)
    assign redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_enaAnd_q = redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_sticky_ena_q & VCC_q;

    // redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_rdcnt(COUNTER,278)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_rdcnt_i <= $unsigned(redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_rdcnt_q = redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_rdcnt_i[1:0];

    // valid_fanout_reg20(REG,156)@1 + 1
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

    // valid_fanout_reg21(REG,157)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom43_i_i182_push65_sobel_filter46(BLACKBOX,90)@2
    // out out_feedback_out_65@20000000
    // out out_feedback_valid_out_65@20000000
    sobel_filter_i_llvm_fpga_push_i64_idxprom43_i_i182_push65_0 thei_llvm_fpga_push_i64_idxprom43_i_i182_push65_sobel_filter46 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out),
        .in_feedback_stall_in_65(i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_feedback_stall_out_65),
        .in_keep_going98(redist43_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_65(i_llvm_fpga_push_i64_idxprom43_i_i182_push65_sobel_filter46_out_feedback_out_65),
        .out_feedback_valid_out_65(i_llvm_fpga_push_i64_idxprom43_i_i182_push65_sobel_filter46_out_feedback_valid_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_sync_together124_aunroll_x_in_c0_eni15_15_tpl_1(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together124_aunroll_x_in_c0_eni15_15_tpl_1_q <= '0;
        end
        else
        begin
            redist16_sync_together124_aunroll_x_in_c0_eni15_15_tpl_1_q <= $unsigned(in_c0_eni15_15_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45(BLACKBOX,76)@2
    // out out_feedback_stall_out_65@20000000
    sobel_filter_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_0 thei_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45 (
        .in_data_in(redist16_sync_together124_aunroll_x_in_c0_eni15_15_tpl_1_q),
        .in_dir(redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_65(i_llvm_fpga_push_i64_idxprom43_i_i182_push65_sobel_filter46_out_feedback_out_65),
        .in_feedback_valid_in_65(i_llvm_fpga_push_i64_idxprom43_i_i182_push65_sobel_filter46_out_feedback_valid_out_65),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out),
        .out_feedback_stall_out_65(i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_feedback_stall_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_wraddr(REG,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_wraddr_q <= $unsigned(redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_rdcnt_q);
        end
    end

    // redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem(DUALMEM,277)
    assign redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_ia = $unsigned(i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out);
    assign redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_aa = redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_wraddr_q;
    assign redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_ab = redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_rdcnt_q;
    assign redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
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
    ) redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_dmem (
        .clocken1(redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_aa),
        .data_a(redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_ab),
        .q_b(redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_iq),
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
    assign redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_q = redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_iq[63:0];

    // valid_fanout_reg18(REG,154)@1 + 1
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

    // valid_fanout_reg19(REG,155)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi_pop27177_push63_sobel_filter44(BLACKBOX,80)@2
    // out out_feedback_out_63@20000000
    // out out_feedback_valid_out_63@20000000
    sobel_filter_i_llvm_fpga_push_i1_memdep_phi_pop27177_push63_0 thei_llvm_fpga_push_i1_memdep_phi_pop27177_push63_sobel_filter44 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out),
        .in_feedback_stall_in_63(i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_feedback_stall_out_63),
        .in_keep_going98(redist43_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_63(i_llvm_fpga_push_i1_memdep_phi_pop27177_push63_sobel_filter44_out_feedback_out_63),
        .out_feedback_valid_out_63(i_llvm_fpga_push_i1_memdep_phi_pop27177_push63_sobel_filter44_out_feedback_valid_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_sync_together124_aunroll_x_in_c0_eni15_14_tpl_1(DELAY,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together124_aunroll_x_in_c0_eni15_14_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together124_aunroll_x_in_c0_eni15_14_tpl_1_q <= $unsigned(in_c0_eni15_14_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43(BLACKBOX,67)@2
    // out out_feedback_stall_out_63@20000000
    sobel_filter_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_0 thei_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43 (
        .in_data_in(redist15_sync_together124_aunroll_x_in_c0_eni15_14_tpl_1_q),
        .in_dir(redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_63(i_llvm_fpga_push_i1_memdep_phi_pop27177_push63_sobel_filter44_out_feedback_out_63),
        .in_feedback_valid_in_63(i_llvm_fpga_push_i1_memdep_phi_pop27177_push63_sobel_filter44_out_feedback_valid_out_63),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out),
        .out_feedback_stall_out_63(i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_feedback_stall_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5(DELAY,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_0 <= '0;
            redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_1 <= '0;
            redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_2 <= '0;
            redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_3 <= '0;
            redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_q <= '0;
        end
        else
        begin
            redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out);
            redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_1 <= redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_0;
            redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_2 <= redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_1;
            redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_3 <= redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_2;
            redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_q <= redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_delay_3;
        end
    end

    // valid_fanout_reg16(REG,152)@1 + 1
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

    // valid_fanout_reg17(REG,153)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp131170_push62_sobel_filter42(BLACKBOX,82)@2
    // out out_feedback_out_62@20000000
    // out out_feedback_valid_out_62@20000000
    sobel_filter_i_llvm_fpga_push_i1_notcmp131170_push62_0 thei_llvm_fpga_push_i1_notcmp131170_push62_sobel_filter42 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out),
        .in_feedback_stall_in_62(i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_feedback_stall_out_62),
        .in_keep_going98(redist43_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_62(i_llvm_fpga_push_i1_notcmp131170_push62_sobel_filter42_out_feedback_out_62),
        .out_feedback_valid_out_62(i_llvm_fpga_push_i1_notcmp131170_push62_sobel_filter42_out_feedback_valid_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together124_aunroll_x_in_c0_eni15_13_tpl_1(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together124_aunroll_x_in_c0_eni15_13_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together124_aunroll_x_in_c0_eni15_13_tpl_1_q <= $unsigned(in_c0_eni15_13_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41(BLACKBOX,69)@2
    // out out_feedback_stall_out_62@20000000
    sobel_filter_i_llvm_fpga_pop_i1_notcmp131170_pop62_0 thei_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41 (
        .in_data_in(redist14_sync_together124_aunroll_x_in_c0_eni15_13_tpl_1_q),
        .in_dir(redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_62(i_llvm_fpga_push_i1_notcmp131170_push62_sobel_filter42_out_feedback_out_62),
        .in_feedback_valid_in_62(i_llvm_fpga_push_i1_notcmp131170_push62_sobel_filter42_out_feedback_valid_out_62),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out),
        .out_feedback_stall_out_62(i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_feedback_stall_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5(DELAY,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_0 <= '0;
            redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_1 <= '0;
            redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_2 <= '0;
            redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_3 <= '0;
            redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_q <= '0;
        end
        else
        begin
            redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out);
            redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_1 <= redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_0;
            redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_2 <= redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_1;
            redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_3 <= redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_2;
            redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_q <= redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_delay_3;
        end
    end

    // valid_fanout_reg14(REG,150)@1 + 1
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

    // valid_fanout_reg15(REG,151)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist22_sync_together124_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist44_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_2(DELAY,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist44_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_2_q <= $unsigned(redist43_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond45163_push61_sobel_filter40(BLACKBOX,77)@3
    // out out_feedback_out_61@20000000
    // out out_feedback_valid_out_61@20000000
    sobel_filter_i_llvm_fpga_push_i1_exitcond45163_push61_0 thei_llvm_fpga_push_i1_exitcond45163_push61_sobel_filter40 (
        .in_data_in(redist41_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_1_q),
        .in_feedback_stall_in_61(i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_feedback_stall_out_61),
        .in_keep_going98(redist44_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_61(i_llvm_fpga_push_i1_exitcond45163_push61_sobel_filter40_out_feedback_out_61),
        .out_feedback_valid_out_61(i_llvm_fpga_push_i1_exitcond45163_push61_sobel_filter40_out_feedback_valid_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together124_aunroll_x_in_c0_eni15_12_tpl_1(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together124_aunroll_x_in_c0_eni15_12_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together124_aunroll_x_in_c0_eni15_12_tpl_1_q <= $unsigned(in_c0_eni15_12_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39(BLACKBOX,65)@2
    // out out_feedback_stall_out_61@20000000
    sobel_filter_i_llvm_fpga_pop_i1_exitcond45163_pop61_0 thei_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39 (
        .in_data_in(redist13_sync_together124_aunroll_x_in_c0_eni15_12_tpl_1_q),
        .in_dir(redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_61(i_llvm_fpga_push_i1_exitcond45163_push61_sobel_filter40_out_feedback_out_61),
        .in_feedback_valid_in_61(i_llvm_fpga_push_i1_exitcond45163_push61_sobel_filter40_out_feedback_valid_out_61),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out),
        .out_feedback_stall_out_61(i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_feedback_stall_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist41_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_1(DELAY,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_1_q <= '0;
        end
        else
        begin
            redist41_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out);
        end
    end

    // redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5(DELAY,263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_delay_0 <= '0;
            redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_delay_1 <= '0;
            redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_delay_2 <= '0;
            redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_q <= '0;
        end
        else
        begin
            redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_delay_0 <= $unsigned(redist41_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_1_q);
            redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_delay_1 <= redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_delay_0;
            redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_delay_2 <= redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_delay_1;
            redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_q <= redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_delay_2;
        end
    end

    // valid_fanout_reg12(REG,148)@1 + 1
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

    // valid_fanout_reg13(REG,149)@1 + 1
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

    // i_llvm_fpga_push_i1_forked156159_push60_sobel_filter38(BLACKBOX,78)@2
    // out out_feedback_out_60@20000000
    // out out_feedback_valid_out_60@20000000
    sobel_filter_i_llvm_fpga_push_i1_forked156159_push60_0 thei_llvm_fpga_push_i1_forked156159_push60_sobel_filter38 (
        .in_data_in(i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out),
        .in_feedback_stall_in_60(i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_feedback_stall_out_60),
        .in_keep_going98(redist43_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_60(i_llvm_fpga_push_i1_forked156159_push60_sobel_filter38_out_feedback_out_60),
        .out_feedback_valid_out_60(i_llvm_fpga_push_i1_forked156159_push60_sobel_filter38_out_feedback_valid_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together124_aunroll_x_in_c0_eni15_11_tpl_1(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together124_aunroll_x_in_c0_eni15_11_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together124_aunroll_x_in_c0_eni15_11_tpl_1_q <= $unsigned(in_c0_eni15_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37(BLACKBOX,66)@2
    // out out_feedback_stall_out_60@20000000
    sobel_filter_i_llvm_fpga_pop_i1_forked156159_pop60_0 thei_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37 (
        .in_data_in(redist12_sync_together124_aunroll_x_in_c0_eni15_11_tpl_1_q),
        .in_dir(redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_60(i_llvm_fpga_push_i1_forked156159_push60_sobel_filter38_out_feedback_out_60),
        .in_feedback_valid_in_60(i_llvm_fpga_push_i1_forked156159_push60_sobel_filter38_out_feedback_valid_out_60),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out),
        .out_feedback_stall_out_60(i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_feedback_stall_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5(DELAY,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_0 <= '0;
            redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_1 <= '0;
            redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_2 <= '0;
            redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_3 <= '0;
            redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_q <= '0;
        end
        else
        begin
            redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out);
            redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_1 <= redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_0;
            redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_2 <= redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_1;
            redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_3 <= redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_2;
            redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_q <= redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_delay_3;
        end
    end

    // i_masked107_sobel_filter36(LOGICAL,91)@2 + 1
    assign i_masked107_sobel_filter36_qi = i_notcmp94_sobel_filter23_q & i_first_cleanup103_sobel_filter3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked107_sobel_filter36_delay ( .xin(i_masked107_sobel_filter36_qi), .xout(i_masked107_sobel_filter36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist33_i_masked107_sobel_filter36_q_5(DELAY,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_masked107_sobel_filter36_q_5_delay_0 <= '0;
            redist33_i_masked107_sobel_filter36_q_5_delay_1 <= '0;
            redist33_i_masked107_sobel_filter36_q_5_delay_2 <= '0;
            redist33_i_masked107_sobel_filter36_q_5_q <= '0;
        end
        else
        begin
            redist33_i_masked107_sobel_filter36_q_5_delay_0 <= $unsigned(i_masked107_sobel_filter36_q);
            redist33_i_masked107_sobel_filter36_q_5_delay_1 <= redist33_i_masked107_sobel_filter36_q_5_delay_0;
            redist33_i_masked107_sobel_filter36_q_5_delay_2 <= redist33_i_masked107_sobel_filter36_q_5_delay_1;
            redist33_i_masked107_sobel_filter36_q_5_q <= redist33_i_masked107_sobel_filter36_q_5_delay_2;
        end
    end

    // valid_fanout_reg4(REG,140)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist23_sync_together124_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg5(REG,141)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist24_sync_together124_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i32_add_i15_i147_push58_sobel_filter17(BLACKBOX,86)@7
    // out out_feedback_out_58@20000000
    // out out_feedback_valid_out_58@20000000
    sobel_filter_i_llvm_fpga_push_i32_add_i15_i147_push58_0 thei_llvm_fpga_push_i32_add_i15_i147_push58_sobel_filter17 (
        .in_data_in(bgTrunc_i_add_i15_i_sobel_filter16_sel_x_b),
        .in_feedback_stall_in_58(i_llvm_fpga_pop_i32_add_i15_i147_pop58_sobel_filter15_out_feedback_stall_out_58),
        .in_keep_going98(redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_58(i_llvm_fpga_push_i32_add_i15_i147_push58_sobel_filter17_out_feedback_out_58),
        .out_feedback_valid_out_58(i_llvm_fpga_push_i32_add_i15_i147_push58_sobel_filter17_out_feedback_valid_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together124_aunroll_x_in_c0_eni15_1_tpl_2(DELAY,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together124_aunroll_x_in_c0_eni15_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together124_aunroll_x_in_c0_eni15_1_tpl_2_q <= $unsigned(redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q);
        end
    end

    // redist2_sync_together124_aunroll_x_in_c0_eni15_1_tpl_5(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together124_aunroll_x_in_c0_eni15_1_tpl_5_delay_0 <= '0;
            redist2_sync_together124_aunroll_x_in_c0_eni15_1_tpl_5_delay_1 <= '0;
            redist2_sync_together124_aunroll_x_in_c0_eni15_1_tpl_5_q <= '0;
        end
        else
        begin
            redist2_sync_together124_aunroll_x_in_c0_eni15_1_tpl_5_delay_0 <= $unsigned(redist1_sync_together124_aunroll_x_in_c0_eni15_1_tpl_2_q);
            redist2_sync_together124_aunroll_x_in_c0_eni15_1_tpl_5_delay_1 <= redist2_sync_together124_aunroll_x_in_c0_eni15_1_tpl_5_delay_0;
            redist2_sync_together124_aunroll_x_in_c0_eni15_1_tpl_5_q <= redist2_sync_together124_aunroll_x_in_c0_eni15_1_tpl_5_delay_1;
        end
    end

    // redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_notEnable(LOGICAL,273)
    assign redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_nor(LOGICAL,274)
    assign redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_nor_q = ~ (redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_notEnable_q | redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_sticky_ena_q);

    // redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_last(CONSTANT,270)
    assign redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_cmp(LOGICAL,271)
    assign redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_cmp_b = {1'b0, redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_q};
    assign redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_cmp_q = $unsigned(redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_last_q == redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_cmpReg(REG,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_cmpReg_q <= $unsigned(redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_cmp_q);
        end
    end

    // redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_sticky_ena(REG,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_nor_q == 1'b1)
        begin
            redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_sticky_ena_q <= $unsigned(redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_cmpReg_q);
        end
    end

    // redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_enaAnd(LOGICAL,276)
    assign redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_enaAnd_q = redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_sticky_ena_q & VCC_q;

    // redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt(COUNTER,268)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_i <= $unsigned(redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_q = redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_i[1:0];

    // redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_wraddr(REG,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_wraddr_q <= $unsigned(redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_q);
        end
    end

    // redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem(DUALMEM,267)
    assign redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_ia = $unsigned(in_c0_eni15_3_tpl);
    assign redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_aa = redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_wraddr_q;
    assign redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_ab = redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_rdcnt_q;
    assign redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_reset0 = ~ (resetn);
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
    ) redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_dmem (
        .clocken1(redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_aa),
        .data_a(redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_ab),
        .q_b(redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_iq),
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
    assign redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_q = redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_add_i15_i147_pop58_sobel_filter15(BLACKBOX,72)@6
    // out out_feedback_stall_out_58@20000000
    sobel_filter_i_llvm_fpga_pop_i32_add_i15_i147_pop58_0 thei_llvm_fpga_pop_i32_add_i15_i147_pop58_sobel_filter15 (
        .in_data_in(redist4_sync_together124_aunroll_x_in_c0_eni15_3_tpl_5_mem_q),
        .in_dir(redist2_sync_together124_aunroll_x_in_c0_eni15_1_tpl_5_q),
        .in_feedback_in_58(i_llvm_fpga_push_i32_add_i15_i147_push58_sobel_filter17_out_feedback_out_58),
        .in_feedback_valid_in_58(i_llvm_fpga_push_i32_add_i15_i147_push58_sobel_filter17_out_feedback_valid_out_58),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_add_i15_i147_pop58_sobel_filter15_out_data_out),
        .out_feedback_stall_out_58(i_llvm_fpga_pop_i32_add_i15_i147_pop58_sobel_filter15_out_feedback_stall_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_i_llvm_fpga_pop_i32_add_i15_i147_pop58_sobel_filter15_out_data_out_1(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_pop_i32_add_i15_i147_pop58_sobel_filter15_out_data_out_1_q <= '0;
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i32_add_i15_i147_pop58_sobel_filter15_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_add_i15_i147_pop58_sobel_filter15_out_data_out);
        end
    end

    // valid_fanout_reg3(REG,139)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist22_sync_together124_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg11(REG,147)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist22_sync_together124_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg7(REG,143)@1 + 1
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

    // valid_fanout_reg8(REG,144)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist22_sync_together124_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_acl_114181_push64_sobel_filter31(BLACKBOX,85)@3
    // out out_feedback_out_64@20000000
    // out out_feedback_valid_out_64@20000000
    sobel_filter_i_llvm_fpga_push_i32_acl_114181_push64_0 thei_llvm_fpga_push_i32_acl_114181_push64_sobel_filter31 (
        .in_data_in(redist36_i_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30_out_data_out_1_q),
        .in_feedback_stall_in_64(i_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30_out_feedback_stall_out_64),
        .in_keep_going98(redist44_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_64(i_llvm_fpga_push_i32_acl_114181_push64_sobel_filter31_out_feedback_out_64),
        .out_feedback_valid_out_64(i_llvm_fpga_push_i32_acl_114181_push64_sobel_filter31_out_feedback_valid_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together124_aunroll_x_in_c0_eni15_4_tpl_1(DELAY,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together124_aunroll_x_in_c0_eni15_4_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together124_aunroll_x_in_c0_eni15_4_tpl_1_q <= $unsigned(in_c0_eni15_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30(BLACKBOX,71)@2
    // out out_feedback_stall_out_64@20000000
    sobel_filter_i_llvm_fpga_pop_i32_acl_114181_pop64_0 thei_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30 (
        .in_data_in(redist5_sync_together124_aunroll_x_in_c0_eni15_4_tpl_1_q),
        .in_dir(redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_64(i_llvm_fpga_push_i32_acl_114181_push64_sobel_filter31_out_feedback_out_64),
        .in_feedback_valid_in_64(i_llvm_fpga_push_i32_acl_114181_push64_sobel_filter31_out_feedback_valid_out_64),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30_out_data_out),
        .out_feedback_stall_out_64(i_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30_out_feedback_stall_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30_out_data_out_1(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30_out_data_out_1_q <= '0;
        end
        else
        begin
            redist36_i_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30_out_data_out);
        end
    end

    // redist11_sync_together124_aunroll_x_in_c0_eni15_10_tpl_1(DELAY,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together124_aunroll_x_in_c0_eni15_10_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together124_aunroll_x_in_c0_eni15_10_tpl_1_q <= $unsigned(in_c0_eni15_10_tpl);
        end
    end

    // redist10_sync_together124_aunroll_x_in_c0_eni15_9_tpl_1(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together124_aunroll_x_in_c0_eni15_9_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together124_aunroll_x_in_c0_eni15_9_tpl_1_q <= $unsigned(in_c0_eni15_9_tpl);
        end
    end

    // redist9_sync_together124_aunroll_x_in_c0_eni15_8_tpl_1(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together124_aunroll_x_in_c0_eni15_8_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together124_aunroll_x_in_c0_eni15_8_tpl_1_q <= $unsigned(in_c0_eni15_8_tpl);
        end
    end

    // redist8_sync_together124_aunroll_x_in_c0_eni15_7_tpl_1(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together124_aunroll_x_in_c0_eni15_7_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together124_aunroll_x_in_c0_eni15_7_tpl_1_q <= $unsigned(in_c0_eni15_7_tpl);
        end
    end

    // redist7_sync_together124_aunroll_x_in_c0_eni15_6_tpl_1(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together124_aunroll_x_in_c0_eni15_6_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together124_aunroll_x_in_c0_eni15_6_tpl_1_q <= $unsigned(in_c0_eni15_6_tpl);
        end
    end

    // redist6_sync_together124_aunroll_x_in_c0_eni15_5_tpl_1(DELAY,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together124_aunroll_x_in_c0_eni15_5_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together124_aunroll_x_in_c0_eni15_5_tpl_1_q <= $unsigned(in_c0_eni15_5_tpl);
        end
    end

    // valid_fanout_reg9(REG,145)@1 + 1
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

    // valid_fanout_reg10(REG,146)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist22_sync_together124_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_push66_sobel_filter33_aunroll_x(BLACKBOX,131)@3
    // out out_feedback_out_66@20000000
    // out out_feedback_valid_out_66@20000000
    sobel_filter_i_llvm_fpga_push_s_case_assA000000Zpush66_sobel_filter0 thei_llvm_fpga_push_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_push66_sobel_filter33_aunroll_x (
        .in_feedback_stall_in_66(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_feedback_stall_out_66),
        .in_keep_going98(redist44_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .in_data_in_0_tpl(redist25_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_0_tpl_1_q),
        .in_data_in_1_tpl(redist26_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_1_tpl_1_q),
        .in_data_in_2_tpl(redist27_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_2_tpl_1_q),
        .in_data_in_3_tpl(redist28_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_3_tpl_1_q),
        .in_data_in_4_tpl(redist29_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_4_tpl_1_q),
        .in_data_in_5_tpl(redist30_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_5_tpl_1_q),
        .out_feedback_out_66(i_llvm_fpga_push_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_push66_sobel_filter33_aunroll_x_out_feedback_out_66),
        .out_feedback_valid_out_66(i_llvm_fpga_push_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_push66_sobel_filter33_aunroll_x_out_feedback_valid_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .out_data_out_0_tpl(),
        .out_data_out_1_tpl(),
        .out_data_out_2_tpl(),
        .out_data_out_3_tpl(),
        .out_data_out_4_tpl(),
        .out_data_out_5_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x(BLACKBOX,130)@2
    // out out_feedback_stall_out_66@20000000
    sobel_filter_i_llvm_fpga_pop_s_case_assiA000000Z_pop66_sobel_filter0 thei_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x (
        .in_dir(redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_66(i_llvm_fpga_push_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_push66_sobel_filter33_aunroll_x_out_feedback_out_66),
        .in_feedback_valid_in_66(i_llvm_fpga_push_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_push66_sobel_filter33_aunroll_x_out_feedback_valid_out_66),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .in_data_in_0_tpl(redist6_sync_together124_aunroll_x_in_c0_eni15_5_tpl_1_q),
        .in_data_in_1_tpl(redist7_sync_together124_aunroll_x_in_c0_eni15_6_tpl_1_q),
        .in_data_in_2_tpl(redist8_sync_together124_aunroll_x_in_c0_eni15_7_tpl_1_q),
        .in_data_in_3_tpl(redist9_sync_together124_aunroll_x_in_c0_eni15_8_tpl_1_q),
        .in_data_in_4_tpl(redist10_sync_together124_aunroll_x_in_c0_eni15_9_tpl_1_q),
        .in_data_in_5_tpl(redist11_sync_together124_aunroll_x_in_c0_eni15_10_tpl_1_q),
        .out_feedback_stall_out_66(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_feedback_stall_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .out_data_out_0_tpl(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_5_tpl_1(DELAY,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_5_tpl_1_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_5_tpl_1_q <= $unsigned(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_5_tpl);
        end
    end

    // c_i32_882(CONSTANT,44)
    assign c_i32_882_q = $unsigned(32'b00000000000000000000000000001000);

    // c_i32_181(CONSTANT,38)
    assign c_i32_181_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg2(REG,138)@1 + 1
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

    // valid_fanout_reg6(REG,142)@1 + 1
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

    // i_llvm_fpga_push_i32_inc_i_i148_push57_sobel_filter19(BLACKBOX,87)@2
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    sobel_filter_i_llvm_fpga_push_i32_inc_i_i148_push57_0 thei_llvm_fpga_push_i32_inc_i_i148_push57_sobel_filter19 (
        .in_data_in(bgTrunc_i_inc_i_i_sobel_filter18_sel_x_b),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_i32_inc_i_i148_pop57_sobel_filter8_out_feedback_stall_out_57),
        .in_keep_going98(redist43_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_i32_inc_i_i148_push57_sobel_filter19_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_i32_inc_i_i148_push57_sobel_filter19_out_feedback_valid_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_inc_i_i148_pop57_sobel_filter8(BLACKBOX,73)@2
    // out out_feedback_stall_out_57@20000000
    sobel_filter_i_llvm_fpga_pop_i32_inc_i_i148_pop57_0 thei_llvm_fpga_pop_i32_inc_i_i148_pop57_sobel_filter8 (
        .in_data_in(c_i32_181_q),
        .in_dir(redist0_sync_together124_aunroll_x_in_c0_eni15_1_tpl_1_q),
        .in_feedback_in_57(i_llvm_fpga_push_i32_inc_i_i148_push57_sobel_filter19_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_i32_inc_i_i148_push57_sobel_filter19_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_inc_i_i148_pop57_sobel_filter8_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_i32_inc_i_i148_pop57_sobel_filter8_out_feedback_stall_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_inc_i_i_sobel_filter18(ADD,62)@2
    assign i_inc_i_i_sobel_filter18_a = {1'b0, i_llvm_fpga_pop_i32_inc_i_i148_pop57_sobel_filter8_out_data_out};
    assign i_inc_i_i_sobel_filter18_b = {1'b0, c_i32_181_q};
    assign i_inc_i_i_sobel_filter18_o = $unsigned(i_inc_i_i_sobel_filter18_a) + $unsigned(i_inc_i_i_sobel_filter18_b);
    assign i_inc_i_i_sobel_filter18_q = i_inc_i_i_sobel_filter18_o[32:0];

    // bgTrunc_i_inc_i_i_sobel_filter18_sel_x(BITSELECT,105)@2
    assign bgTrunc_i_inc_i_i_sobel_filter18_sel_x_b = i_inc_i_i_sobel_filter18_q[31:0];

    // dupName_4_comparator_x(LOGICAL,113)@2 + 1
    assign dupName_4_comparator_x_qi = $unsigned(bgTrunc_i_inc_i_i_sobel_filter18_sel_x_b == c_i32_882_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_4_comparator_x_delay ( .xin(dupName_4_comparator_x_qi), .xout(dupName_4_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_4_tpl_1(DELAY,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_4_tpl_1_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_4_tpl_1_q <= $unsigned(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_4_tpl);
        end
    end

    // c_i32_790(CONSTANT,43)
    assign c_i32_790_q = $unsigned(32'b00000000000000000000000000000111);

    // dupName_3_comparator_x(LOGICAL,112)@2 + 1
    assign dupName_3_comparator_x_qi = $unsigned(bgTrunc_i_inc_i_i_sobel_filter18_sel_x_b == c_i32_790_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_3_comparator_x_delay ( .xin(dupName_3_comparator_x_qi), .xout(dupName_3_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist28_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_3_tpl_1(DELAY,249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_3_tpl_1_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_3_tpl_1_q <= $unsigned(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_3_tpl);
        end
    end

    // c_i32_689(CONSTANT,42)
    assign c_i32_689_q = $unsigned(32'b00000000000000000000000000000110);

    // dupName_2_comparator_x(LOGICAL,111)@2 + 1
    assign dupName_2_comparator_x_qi = $unsigned(bgTrunc_i_inc_i_i_sobel_filter18_sel_x_b == c_i32_689_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_2_comparator_x_delay ( .xin(dupName_2_comparator_x_qi), .xout(dupName_2_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist27_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_2_tpl_1(DELAY,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_2_tpl_1_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_2_tpl_1_q <= $unsigned(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_2_tpl);
        end
    end

    // c_i32_588(CONSTANT,41)
    assign c_i32_588_q = $unsigned(32'b00000000000000000000000000000101);

    // dupName_1_comparator_x(LOGICAL,110)@2 + 1
    assign dupName_1_comparator_x_qi = $unsigned(bgTrunc_i_inc_i_i_sobel_filter18_sel_x_b == c_i32_588_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_1_comparator_x_delay ( .xin(dupName_1_comparator_x_qi), .xout(dupName_1_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist26_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_1_tpl_1(DELAY,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_1_tpl_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_1_tpl_1_q <= $unsigned(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_1_tpl);
        end
    end

    // c_i32_487(CONSTANT,40)
    assign c_i32_487_q = $unsigned(32'b00000000000000000000000000000100);

    // dupName_0_comparator_x(LOGICAL,109)@2 + 1
    assign dupName_0_comparator_x_qi = $unsigned(bgTrunc_i_inc_i_i_sobel_filter18_sel_x_b == c_i32_487_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_0_comparator_x_delay ( .xin(dupName_0_comparator_x_qi), .xout(dupName_0_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist25_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_0_tpl_1(DELAY,246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_0_tpl_1_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_0_tpl_1_q <= $unsigned(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_0_tpl);
        end
    end

    // c_i32_386(CONSTANT,39)
    assign c_i32_386_q = $unsigned(32'b00000000000000000000000000000011);

    // comparator(LOGICAL,47)@2 + 1
    assign comparator_qi = $unsigned(bgTrunc_i_inc_i_i_sobel_filter18_sel_x_b == c_i32_386_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    comparator_delay ( .xin(comparator_qi), .xout(comparator_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i32_i32_v6i32_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_stmt_sobel_filter34(SELECTOR,63)@3
    always @(comparator_q or redist25_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_0_tpl_1_q or dupName_0_comparator_x_q or redist26_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_1_tpl_1_q or dupName_1_comparator_x_q or redist27_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_2_tpl_1_q or dupName_2_comparator_x_q or redist28_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_3_tpl_1_q or dupName_3_comparator_x_q or redist29_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_4_tpl_1_q or dupName_4_comparator_x_q or redist30_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_5_tpl_1_q or redist36_i_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30_out_data_out_1_q)
    begin
        i_llvm_fpga_case_i32_i32_v6i32_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_stmt_sobel_filter34_q = redist36_i_llvm_fpga_pop_i32_acl_114181_pop64_sobel_filter30_out_data_out_1_q;
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v6i32_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_stmt_sobel_filter34_q = redist30_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_5_tpl_1_q;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v6i32_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_stmt_sobel_filter34_q = redist29_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_4_tpl_1_q;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v6i32_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_stmt_sobel_filter34_q = redist28_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_3_tpl_1_q;
        end
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v6i32_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_stmt_sobel_filter34_q = redist27_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_2_tpl_1_q;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v6i32_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_stmt_sobel_filter34_q = redist26_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_1_tpl_1_q;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v6i32_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_stmt_sobel_filter34_q = redist25_i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign172183_pop66_sobel_filter32_aunroll_x_out_data_out_0_tpl_1_q;
        end
    end

    // i_llvm_fpga_push_i32_pre_push56_sobel_filter35(BLACKBOX,88)@3
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    sobel_filter_i_llvm_fpga_push_i32_pre_push56_0 thei_llvm_fpga_push_i32_pre_push56_sobel_filter35 (
        .in_data_in(i_llvm_fpga_case_i32_i32_v6i32_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_stmt_sobel_filter34_q),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_i32_pre_pop56_sobel_filter13_out_feedback_stall_out_56),
        .in_keep_going98(redist44_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_i32_pre_push56_sobel_filter35_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_i32_pre_push56_sobel_filter35_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together124_aunroll_x_in_c0_eni15_2_tpl_2(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together124_aunroll_x_in_c0_eni15_2_tpl_2_delay_0 <= '0;
            redist3_sync_together124_aunroll_x_in_c0_eni15_2_tpl_2_q <= '0;
        end
        else
        begin
            redist3_sync_together124_aunroll_x_in_c0_eni15_2_tpl_2_delay_0 <= $unsigned(in_c0_eni15_2_tpl);
            redist3_sync_together124_aunroll_x_in_c0_eni15_2_tpl_2_q <= redist3_sync_together124_aunroll_x_in_c0_eni15_2_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_pre_pop56_sobel_filter13(BLACKBOX,74)@3
    // out out_feedback_stall_out_56@20000000
    sobel_filter_i_llvm_fpga_pop_i32_pre_pop56_0 thei_llvm_fpga_pop_i32_pre_pop56_sobel_filter13 (
        .in_data_in(redist3_sync_together124_aunroll_x_in_c0_eni15_2_tpl_2_q),
        .in_dir(redist1_sync_together124_aunroll_x_in_c0_eni15_1_tpl_2_q),
        .in_feedback_in_56(i_llvm_fpga_push_i32_pre_push56_sobel_filter35_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_i32_pre_push56_sobel_filter35_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_pre_pop56_sobel_filter13_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_i32_pre_pop56_sobel_filter13_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i_i_sobel_filter14_bs2_merged_bit_select(BITSELECT,218)@3
    assign i_mul_i_i_sobel_filter14_bs2_merged_bit_select_b = i_llvm_fpga_pop_i32_pre_pop56_sobel_filter13_out_data_out[31:18];
    assign i_mul_i_i_sobel_filter14_bs2_merged_bit_select_c = i_llvm_fpga_pop_i32_pre_pop56_sobel_filter13_out_data_out[17:0];

    // i_arrayidx3_i_i96_sobel_filter0_mult_multconst_x(CONSTANT,121)
    assign i_arrayidx3_i_i96_sobel_filter0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // i_sub1_i_i_sobel_filter9(SUB,96)@2
    assign i_sub1_i_i_sobel_filter9_a = {1'b0, c_i32_882_q};
    assign i_sub1_i_i_sobel_filter9_b = {1'b0, i_llvm_fpga_pop_i32_inc_i_i148_pop57_sobel_filter8_out_data_out};
    assign i_sub1_i_i_sobel_filter9_o = $unsigned(i_sub1_i_i_sobel_filter9_a) - $unsigned(i_sub1_i_i_sobel_filter9_b);
    assign i_sub1_i_i_sobel_filter9_q = i_sub1_i_i_sobel_filter9_o[32:0];

    // bgTrunc_i_sub1_i_i_sobel_filter9_sel_x(BITSELECT,107)@2
    assign bgTrunc_i_sub1_i_i_sobel_filter9_sel_x_b = $unsigned(i_sub1_i_i_sobel_filter9_q[31:0]);

    // redist31_bgTrunc_i_sub1_i_i_sobel_filter9_sel_x_b_1(DELAY,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_bgTrunc_i_sub1_i_i_sobel_filter9_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist31_bgTrunc_i_sub1_i_i_sobel_filter9_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub1_i_i_sobel_filter9_sel_x_b);
        end
    end

    // i_idxprom2_i_i_sobel_filter10_sel_x(BITSELECT,129)@3
    assign i_idxprom2_i_i_sobel_filter10_sel_x_b = $unsigned({{32{redist31_bgTrunc_i_sub1_i_i_sobel_filter9_sel_x_b_1_q[31]}}, redist31_bgTrunc_i_sub1_i_i_sobel_filter9_sel_x_b_1_q[31:0]});

    // i_arrayidx3_i_i96_sobel_filter0_mult_x_bs1_merged_bit_select(BITSELECT,219)@3
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_bs1_merged_bit_select_b = i_idxprom2_i_i_sobel_filter10_sel_x_b[63:54];
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_bs1_merged_bit_select_c = i_idxprom2_i_i_sobel_filter10_sel_x_b[53:36];
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_bs1_merged_bit_select_d = i_idxprom2_i_i_sobel_filter10_sel_x_b[35:18];
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_bs1_merged_bit_select_e = i_idxprom2_i_i_sobel_filter10_sel_x_b[17:0];

    // i_arrayidx3_i_i96_sobel_filter0_mult_x_im0_shift0(BITSHIFT,211)@3
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_im0_shift0_qint = { i_arrayidx3_i_i96_sobel_filter0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_im0_shift0_q = i_arrayidx3_i_i96_sobel_filter0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_3(BITSHIFT,200)@3
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx3_i_i96_sobel_filter0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_3_q = i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx3_i_i96_sobel_filter0_mult_x_im6_shift0(BITSHIFT,213)@3
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_im6_shift0_qint = { i_arrayidx3_i_i96_sobel_filter0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_im6_shift0_q = i_arrayidx3_i_i96_sobel_filter0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_2(BITSHIFT,199)@3
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx3_i_i96_sobel_filter0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_2_q = i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_join_4(BITJOIN,201)@3
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_join_4_q = {i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_3_q, i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_2_q};

    // i_arrayidx3_i_i96_sobel_filter0_mult_x_im3_shift0(BITSHIFT,212)@3
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_im3_shift0_qint = { i_arrayidx3_i_i96_sobel_filter0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_im3_shift0_q = i_arrayidx3_i_i96_sobel_filter0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_0(BITSHIFT,197)@3
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx3_i_i96_sobel_filter0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_0_q = i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx3_i_i96_sobel_filter0_mult_x_im9_shift0(BITSHIFT,214)@3
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_im9_shift0_qint = { i_arrayidx3_i_i96_sobel_filter0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_im9_shift0_q = i_arrayidx3_i_i96_sobel_filter0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_join_1(BITJOIN,198)@3
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_join_1_q = {i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_align_0_q, {1'b0, i_arrayidx3_i_i96_sobel_filter0_mult_x_im9_shift0_q}};

    // i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_result_add_0_0(ADD,202)@3
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_join_1_q};
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_join_4_q};
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_result_add_0_0_q = i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx3_i_i96_sobel_filter0_mult_extender_x(BITJOIN,120)@3
    assign i_arrayidx3_i_i96_sobel_filter0_mult_extender_x_q = {i_arrayidx3_i_i96_sobel_filter0_mult_multconst_x_q, i_arrayidx3_i_i96_sobel_filter0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx3_i_i96_sobel_filter0_trunc_sel_x(BITSELECT,122)@3
    assign i_arrayidx3_i_i96_sobel_filter0_trunc_sel_x_b = i_arrayidx3_i_i96_sobel_filter0_mult_extender_x_q[63:0];

    // i_arrayidx3_i_i96_sobel_filter0_dupName_0_trunc_sel_x(BITSELECT,123)@3
    assign i_arrayidx3_i_i96_sobel_filter0_dupName_0_trunc_sel_x_in = {1'b0, i_arrayidx3_i_i96_sobel_filter0_trunc_sel_x_b};
    assign i_arrayidx3_i_i96_sobel_filter0_dupName_0_trunc_sel_x_b = i_arrayidx3_i_i96_sobel_filter0_dupName_0_trunc_sel_x_in[63:0];

    // i_arrayidx3_i_i96_sobel_filter11_vt_select_63(BITSELECT,53)@3
    assign i_arrayidx3_i_i96_sobel_filter11_vt_select_63_b = i_arrayidx3_i_i96_sobel_filter0_dupName_0_trunc_sel_x_b[63:2];

    // i_arrayidx3_i_i96_sobel_filter11_vt_const_1(CONSTANT,51)
    assign i_arrayidx3_i_i96_sobel_filter11_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx3_i_i96_sobel_filter11_vt_join(BITJOIN,52)@3
    assign i_arrayidx3_i_i96_sobel_filter11_vt_join_q = {i_arrayidx3_i_i96_sobel_filter11_vt_select_63_b, i_arrayidx3_i_i96_sobel_filter11_vt_const_1_q};

    // i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_ROM_word_addr_extract_x(BITSELECT,133)@3
    assign i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_ROM_word_addr_extract_x_b = i_arrayidx3_i_i96_sobel_filter11_vt_join_q[5:2];

    // i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_NO_NAME_x(LOOKUP,132)@3
    always @(i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_ROM_word_addr_extract_x_b)
    begin
        // Begin reserved scope level
        unique case (i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_ROM_word_addr_extract_x_b)
            4'b0000 : i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_NO_NAME_x_q = 32'b11111111111111111111111111111111;
            4'b0001 : i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_NO_NAME_x_q = 32'b00000000000000000000000000000000;
            4'b0010 : i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_NO_NAME_x_q = 32'b00000000000000000000000000000001;
            4'b0011 : i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_NO_NAME_x_q = 32'b11111111111111111111111111111110;
            4'b0100 : i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_NO_NAME_x_q = 32'b00000000000000000000000000000000;
            4'b0101 : i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_NO_NAME_x_q = 32'b00000000000000000000000000000010;
            4'b0110 : i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_NO_NAME_x_q = 32'b11111111111111111111111111111111;
            4'b0111 : i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_NO_NAME_x_q = 32'b00000000000000000000000000000000;
            4'b1000 : i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_NO_NAME_x_q = 32'b00000000000000000000000000000001;
            default : i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_NO_NAME_x_q = 32'b11111111111111111111111111111111;
        endcase
        // End reserved scope level
    end

    // i_mul_i_i_sobel_filter14_bs1_merged_bit_select(BITSELECT,220)@3
    assign i_mul_i_i_sobel_filter14_bs1_merged_bit_select_b = i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_NO_NAME_x_q[31:18];
    assign i_mul_i_i_sobel_filter14_bs1_merged_bit_select_c = i_llvm_fpga_rom_lookup_i32_p6i32_a9i32_unnamed_sobel_filter11_sobel_filter0_NO_NAME_x_q[17:0];

    // i_mul_i_i_sobel_filter14_ma3_cma(CHAINMULTADD,217)@3 + 3
    assign i_mul_i_i_sobel_filter14_ma3_cma_reset = ~ (resetn);
    assign i_mul_i_i_sobel_filter14_ma3_cma_ena0 = 1'b1;
    assign i_mul_i_i_sobel_filter14_ma3_cma_ena1 = i_mul_i_i_sobel_filter14_ma3_cma_ena0;
    assign i_mul_i_i_sobel_filter14_ma3_cma_ena2 = i_mul_i_i_sobel_filter14_ma3_cma_ena0;

    assign i_mul_i_i_sobel_filter14_ma3_cma_a0 = i_mul_i_i_sobel_filter14_bs1_merged_bit_select_b;
    assign i_mul_i_i_sobel_filter14_ma3_cma_c0 = i_mul_i_i_sobel_filter14_bs2_merged_bit_select_c;
    assign i_mul_i_i_sobel_filter14_ma3_cma_a1 = i_mul_i_i_sobel_filter14_bs2_merged_bit_select_b;
    assign i_mul_i_i_sobel_filter14_ma3_cma_c1 = i_mul_i_i_sobel_filter14_bs1_merged_bit_select_c;
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
    ) i_mul_i_i_sobel_filter14_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_i_i_sobel_filter14_ma3_cma_ena2, i_mul_i_i_sobel_filter14_ma3_cma_ena1, i_mul_i_i_sobel_filter14_ma3_cma_ena0 }),
        .aclr({ i_mul_i_i_sobel_filter14_ma3_cma_reset, i_mul_i_i_sobel_filter14_ma3_cma_reset }),
        .ay(i_mul_i_i_sobel_filter14_ma3_cma_a1),
        .by(i_mul_i_i_sobel_filter14_ma3_cma_a0),
        .ax(i_mul_i_i_sobel_filter14_ma3_cma_c1),
        .bx(i_mul_i_i_sobel_filter14_ma3_cma_c0),
        .resulta(i_mul_i_i_sobel_filter14_ma3_cma_s0),
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
    i_mul_i_i_sobel_filter14_ma3_cma_delay ( .xin(i_mul_i_i_sobel_filter14_ma3_cma_s0), .xout(i_mul_i_i_sobel_filter14_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i_i_sobel_filter14_ma3_cma_q = $unsigned(i_mul_i_i_sobel_filter14_ma3_cma_qq[32:0]);

    // i_mul_i_i_sobel_filter14_sums_align_1(BITSHIFT,182)@6
    assign i_mul_i_i_sobel_filter14_sums_align_1_qint = { i_mul_i_i_sobel_filter14_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_i_i_sobel_filter14_sums_align_1_q = i_mul_i_i_sobel_filter14_sums_align_1_qint[50:0];

    // i_mul_i_i_sobel_filter14_im0_cma(CHAINMULTADD,215)@3 + 3
    assign i_mul_i_i_sobel_filter14_im0_cma_reset = ~ (resetn);
    assign i_mul_i_i_sobel_filter14_im0_cma_ena0 = 1'b1;
    assign i_mul_i_i_sobel_filter14_im0_cma_ena1 = i_mul_i_i_sobel_filter14_im0_cma_ena0;
    assign i_mul_i_i_sobel_filter14_im0_cma_ena2 = i_mul_i_i_sobel_filter14_im0_cma_ena0;

    assign i_mul_i_i_sobel_filter14_im0_cma_a0 = i_mul_i_i_sobel_filter14_bs1_merged_bit_select_b;
    assign i_mul_i_i_sobel_filter14_im0_cma_c0 = i_mul_i_i_sobel_filter14_bs2_merged_bit_select_b;
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
    ) i_mul_i_i_sobel_filter14_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_i_i_sobel_filter14_im0_cma_ena2, i_mul_i_i_sobel_filter14_im0_cma_ena1, i_mul_i_i_sobel_filter14_im0_cma_ena0 }),
        .aclr({ i_mul_i_i_sobel_filter14_im0_cma_reset, i_mul_i_i_sobel_filter14_im0_cma_reset }),
        .ay(i_mul_i_i_sobel_filter14_im0_cma_a0),
        .ax(i_mul_i_i_sobel_filter14_im0_cma_c0),
        .resulta(i_mul_i_i_sobel_filter14_im0_cma_s0),
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
    i_mul_i_i_sobel_filter14_im0_cma_delay ( .xin(i_mul_i_i_sobel_filter14_im0_cma_s0), .xout(i_mul_i_i_sobel_filter14_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i_i_sobel_filter14_im0_cma_q = $unsigned(i_mul_i_i_sobel_filter14_im0_cma_qq[27:0]);

    // i_mul_i_i_sobel_filter14_im8_cma(CHAINMULTADD,216)@3 + 3
    assign i_mul_i_i_sobel_filter14_im8_cma_reset = ~ (resetn);
    assign i_mul_i_i_sobel_filter14_im8_cma_ena0 = 1'b1;
    assign i_mul_i_i_sobel_filter14_im8_cma_ena1 = i_mul_i_i_sobel_filter14_im8_cma_ena0;
    assign i_mul_i_i_sobel_filter14_im8_cma_ena2 = i_mul_i_i_sobel_filter14_im8_cma_ena0;

    assign i_mul_i_i_sobel_filter14_im8_cma_a0 = i_mul_i_i_sobel_filter14_bs1_merged_bit_select_c;
    assign i_mul_i_i_sobel_filter14_im8_cma_c0 = i_mul_i_i_sobel_filter14_bs2_merged_bit_select_c;
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
    ) i_mul_i_i_sobel_filter14_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_i_i_sobel_filter14_im8_cma_ena2, i_mul_i_i_sobel_filter14_im8_cma_ena1, i_mul_i_i_sobel_filter14_im8_cma_ena0 }),
        .aclr({ i_mul_i_i_sobel_filter14_im8_cma_reset, i_mul_i_i_sobel_filter14_im8_cma_reset }),
        .ay(i_mul_i_i_sobel_filter14_im8_cma_a0),
        .ax(i_mul_i_i_sobel_filter14_im8_cma_c0),
        .resulta(i_mul_i_i_sobel_filter14_im8_cma_s0),
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
    i_mul_i_i_sobel_filter14_im8_cma_delay ( .xin(i_mul_i_i_sobel_filter14_im8_cma_s0), .xout(i_mul_i_i_sobel_filter14_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i_i_sobel_filter14_im8_cma_q = $unsigned(i_mul_i_i_sobel_filter14_im8_cma_qq[35:0]);

    // i_mul_i_i_sobel_filter14_sums_join_0(BITJOIN,181)@6
    assign i_mul_i_i_sobel_filter14_sums_join_0_q = {i_mul_i_i_sobel_filter14_im0_cma_q, i_mul_i_i_sobel_filter14_im8_cma_q};

    // i_mul_i_i_sobel_filter14_sums_result_add_0_0(ADD,184)@6
    assign i_mul_i_i_sobel_filter14_sums_result_add_0_0_a = {1'b0, i_mul_i_i_sobel_filter14_sums_join_0_q};
    assign i_mul_i_i_sobel_filter14_sums_result_add_0_0_b = {14'b00000000000000, i_mul_i_i_sobel_filter14_sums_align_1_q};
    assign i_mul_i_i_sobel_filter14_sums_result_add_0_0_o = $unsigned(i_mul_i_i_sobel_filter14_sums_result_add_0_0_a) + $unsigned(i_mul_i_i_sobel_filter14_sums_result_add_0_0_b);
    assign i_mul_i_i_sobel_filter14_sums_result_add_0_0_q = i_mul_i_i_sobel_filter14_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_i_i_sobel_filter14_sel_x(BITSELECT,106)@6
    assign bgTrunc_i_mul_i_i_sobel_filter14_sel_x_in = i_mul_i_i_sobel_filter14_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_i_i_sobel_filter14_sel_x_b = bgTrunc_i_mul_i_i_sobel_filter14_sel_x_in[31:0];

    // redist32_bgTrunc_i_mul_i_i_sobel_filter14_sel_x_b_1(DELAY,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_bgTrunc_i_mul_i_i_sobel_filter14_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist32_bgTrunc_i_mul_i_i_sobel_filter14_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_i_i_sobel_filter14_sel_x_b);
        end
    end

    // i_add_i15_i_sobel_filter16(ADD,50)@7
    assign i_add_i15_i_sobel_filter16_a = {1'b0, redist32_bgTrunc_i_mul_i_i_sobel_filter14_sel_x_b_1_q};
    assign i_add_i15_i_sobel_filter16_b = {1'b0, redist35_i_llvm_fpga_pop_i32_add_i15_i147_pop58_sobel_filter15_out_data_out_1_q};
    assign i_add_i15_i_sobel_filter16_o = $unsigned(i_add_i15_i_sobel_filter16_a) + $unsigned(i_add_i15_i_sobel_filter16_b);
    assign i_add_i15_i_sobel_filter16_q = i_add_i15_i_sobel_filter16_o[32:0];

    // bgTrunc_i_add_i15_i_sobel_filter16_sel_x(BITSELECT,103)@7
    assign bgTrunc_i_add_i15_i_sobel_filter16_sel_x_b = i_add_i15_i_sobel_filter16_q[31:0];

    // redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6(DELAY,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_delay_0 <= '0;
            redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_delay_1 <= '0;
            redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_delay_2 <= '0;
            redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_q <= '0;
        end
        else
        begin
            redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_delay_0 <= $unsigned(redist44_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_2_q);
            redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_delay_1 <= redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_delay_0;
            redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_delay_2 <= redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_delay_1;
            redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_q <= redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_delay_2;
        end
    end

    // sync_out_aunroll_x(GPOUT,134)@7
    assign out_c0_exi13336_0_tpl = GND_q;
    assign out_c0_exi13336_1_tpl = redist45_i_llvm_fpga_pipeline_keep_going98_sobel_filter6_out_data_out_6_q;
    assign out_c0_exi13336_2_tpl = bgTrunc_i_add_i15_i_sobel_filter16_sel_x_b;
    assign out_c0_exi13336_3_tpl = redist33_i_masked107_sobel_filter36_q_5_q;
    assign out_c0_exi13336_4_tpl = redist40_i_llvm_fpga_pop_i1_forked156159_pop60_sobel_filter37_out_data_out_5_q;
    assign out_c0_exi13336_5_tpl = redist42_i_llvm_fpga_pop_i1_exitcond45163_pop61_sobel_filter39_out_data_out_5_q;
    assign out_c0_exi13336_6_tpl = redist37_i_llvm_fpga_pop_i1_notcmp131170_pop62_sobel_filter41_out_data_out_5_q;
    assign out_c0_exi13336_7_tpl = redist39_i_llvm_fpga_pop_i1_memdep_phi_pop27177_pop63_sobel_filter43_out_data_out_5_q;
    assign out_c0_exi13336_8_tpl = redist34_i_llvm_fpga_pop_i64_idxprom43_i_i182_pop65_sobel_filter45_out_data_out_5_mem_q;
    assign out_c0_exi13336_9_tpl = redist38_i_llvm_fpga_pop_i1_notcmp110184_pop67_sobel_filter47_out_data_out_5_q;
    assign out_c0_exi13336_10_tpl = redist18_sync_together124_aunroll_x_in_c0_eni15_17_tpl_6_q;
    assign out_c0_exi13336_11_tpl = redist19_sync_together124_aunroll_x_in_c0_eni15_18_tpl_6_q;
    assign out_c0_exi13336_12_tpl = redist20_sync_together124_aunroll_x_in_c0_eni15_19_tpl_6_q;
    assign out_c0_exi13336_13_tpl = redist21_sync_together124_aunroll_x_in_c0_eni15_20_tpl_6_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_sobel_filter3 = GND_q;

endmodule
