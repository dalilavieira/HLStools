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

// SystemVerilog created from sgfilter_i_sfc_logic_s_c0_in_for_body_s_c0_enter763_sgfilter0
// SystemVerilog created on Mon Apr 27 09:54:21 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sgfilter_i_sfc_logic_s_c0_in_for_body_s_c0_enter763_sgfilter0 (
    input wire [15:0] in_memdep_sgfilter_avm_readdata,
    input wire [0:0] in_memdep_sgfilter_avm_writeack,
    input wire [0:0] in_memdep_sgfilter_avm_waitrequest,
    input wire [0:0] in_memdep_sgfilter_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_sgfilter6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_sgfilter6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [15:0] in_memdep_1_sgfilter_avm_readdata,
    input wire [0:0] in_memdep_1_sgfilter_avm_writeack,
    input wire [0:0] in_memdep_1_sgfilter_avm_waitrequest,
    input wire [0:0] in_memdep_1_sgfilter_avm_readdatavalid,
    output wire [31:0] out_memdep_sgfilter_avm_address,
    output wire [0:0] out_memdep_sgfilter_avm_enable,
    output wire [0:0] out_memdep_sgfilter_avm_read,
    output wire [0:0] out_memdep_sgfilter_avm_write,
    output wire [15:0] out_memdep_sgfilter_avm_writedata,
    output wire [1:0] out_memdep_sgfilter_avm_byteenable,
    output wire [0:0] out_memdep_sgfilter_avm_burstcount,
    input wire [15:0] in_memdep_2_sgfilter_avm_readdata,
    input wire [0:0] in_memdep_2_sgfilter_avm_writeack,
    input wire [0:0] in_memdep_2_sgfilter_avm_waitrequest,
    input wire [0:0] in_memdep_2_sgfilter_avm_readdatavalid,
    output wire [31:0] out_memdep_1_sgfilter_avm_address,
    output wire [0:0] out_memdep_1_sgfilter_avm_enable,
    output wire [0:0] out_memdep_1_sgfilter_avm_read,
    output wire [0:0] out_memdep_1_sgfilter_avm_write,
    output wire [15:0] out_memdep_1_sgfilter_avm_writedata,
    output wire [1:0] out_memdep_1_sgfilter_avm_byteenable,
    output wire [0:0] out_memdep_1_sgfilter_avm_burstcount,
    output wire [31:0] out_memdep_2_sgfilter_avm_address,
    output wire [0:0] out_memdep_2_sgfilter_avm_enable,
    output wire [0:0] out_memdep_2_sgfilter_avm_read,
    output wire [0:0] out_memdep_2_sgfilter_avm_write,
    output wire [15:0] out_memdep_2_sgfilter_avm_writedata,
    output wire [1:0] out_memdep_2_sgfilter_avm_byteenable,
    output wire [0:0] out_memdep_2_sgfilter_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_sgfilter1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_102257_q;
    wire [10:0] c_i11_159_q;
    wire [15:0] c_i16_055_q;
    wire [15:0] c_i16_102354_q;
    wire [31:0] c_i32_053_q;
    wire [31:0] c_i32_156_q;
    wire [3:0] c_i4_750_q;
    wire [63:0] c_sgfilter_OUT_pmem_q;
    wire [63:0] c_sgfilter_a_pmem_q;
    wire [63:0] c_sgfilter_b_pmem_q;
    wire [63:0] i_arrayidx1_sgfilter16_vt_join_q;
    wire [62:0] i_arrayidx1_sgfilter16_vt_select_63_b;
    wire [63:0] i_arrayidx43_sgfilter18_vt_join_q;
    wire [62:0] i_arrayidx43_sgfilter18_vt_select_63_b;
    wire [63:0] i_arrayidx64_sgfilter20_vt_join_q;
    wire [62:0] i_arrayidx64_sgfilter20_vt_select_63_b;
    wire [3:0] i_cleanups_shl30_sgfilter5_vt_join_q;
    wire [2:0] i_cleanups_shl30_sgfilter5_vt_select_3_b;
    wire [15:0] i_conv_sgfilter14_q;
    wire [5:0] i_conv_sgfilter14_vt_const_15_q;
    wire [15:0] i_conv_sgfilter14_vt_join_q;
    wire [9:0] i_conv_sgfilter14_vt_select_9_b;
    wire [11:0] i_fpga_indvars_iv_next_sgfilter32_a;
    wire [11:0] i_fpga_indvars_iv_next_sgfilter32_b;
    logic [11:0] i_fpga_indvars_iv_next_sgfilter32_o;
    wire [11:0] i_fpga_indvars_iv_next_sgfilter32_q;
    wire [63:0] i_idxprom_sgfilter15_vt_join_q;
    wire [31:0] i_idxprom_sgfilter15_vt_select_31_b;
    wire [32:0] i_inc_sgfilter22_a;
    wire [32:0] i_inc_sgfilter22_b;
    logic [32:0] i_inc_sgfilter22_o;
    wire [32:0] i_inc_sgfilter22_q;
    wire [31:0] i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_sgfilter24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_sgfilter24_out_feedback_stall_out_10;
    wire [31:0] i_llvm_fpga_pop_i32_k_025_pop11_sgfilter12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_025_pop11_sgfilter12_out_feedback_stall_out_11;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups29_pop13_sgfilter2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups29_pop13_sgfilter2_out_feedback_stall_out_13;
    wire [3:0] i_llvm_fpga_pop_i4_initerations24_pop12_sgfilter7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations24_pop12_sgfilter7_out_feedback_stall_out_12;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push10_sgfilter33_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push10_sgfilter33_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration28_sgfilter11_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration28_sgfilter11_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond36_sgfilter28_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond36_sgfilter28_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_k_025_push11_sgfilter23_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_k_025_push11_sgfilter23_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i4_cleanups29_push13_sgfilter31_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i4_cleanups29_push13_sgfilter31_out_feedback_valid_out_13;
    wire [7:0] i_llvm_fpga_push_i4_initerations24_push12_sgfilter9_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i4_initerations24_push12_sgfilter9_out_feedback_valid_out_12;
    wire [0:0] i_masked35_sgfilter34_qi;
    reg [0:0] i_masked35_sgfilter34_q;
    wire [0:0] i_next_cleanups34_sgfilter30_s;
    reg [3:0] i_next_cleanups34_sgfilter30_q;
    wire [3:0] i_next_initerations25_sgfilter8_vt_join_q;
    wire [2:0] i_next_initerations25_sgfilter8_vt_select_2_b;
    wire [0:0] i_notcmp22_sgfilter27_q;
    wire [0:0] i_or33_sgfilter29_q;
    wire [0:0] i_xor32_sgfilter4_q;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next_sgfilter32_sel_x_b;
    wire [31:0] bgTrunc_i_inc_sgfilter22_sel_x_b;
    wire [64:0] i_arrayidx1_sgfilter0_add_x_a;
    wire [64:0] i_arrayidx1_sgfilter0_add_x_b;
    logic [64:0] i_arrayidx1_sgfilter0_add_x_o;
    wire [64:0] i_arrayidx1_sgfilter0_add_x_q;
    wire [127:0] i_arrayidx1_sgfilter0_mult_extender_x_q;
    wire [61:0] i_arrayidx1_sgfilter0_mult_multconst_x_q;
    wire [63:0] i_arrayidx1_sgfilter0_trunc_sel_x_b;
    wire [63:0] i_arrayidx1_sgfilter0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx43_sgfilter0_add_x_a;
    wire [64:0] i_arrayidx43_sgfilter0_add_x_b;
    logic [64:0] i_arrayidx43_sgfilter0_add_x_o;
    wire [64:0] i_arrayidx43_sgfilter0_add_x_q;
    wire [127:0] i_arrayidx43_sgfilter0_mult_extender_x_q;
    wire [63:0] i_arrayidx43_sgfilter0_trunc_sel_x_b;
    wire [63:0] i_arrayidx43_sgfilter0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx64_sgfilter0_add_x_a;
    wire [64:0] i_arrayidx64_sgfilter0_add_x_b;
    logic [64:0] i_arrayidx64_sgfilter0_add_x_o;
    wire [64:0] i_arrayidx64_sgfilter0_add_x_q;
    wire [127:0] i_arrayidx64_sgfilter0_mult_extender_x_q;
    wire [63:0] i_arrayidx64_sgfilter0_trunc_sel_x_b;
    wire [63:0] i_arrayidx64_sgfilter0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup31_sgfilter3_sel_x_b;
    wire [63:0] i_idxprom_sgfilter15_sel_x_b;
    wire [0:0] i_last_initeration27_sgfilter10_sel_x_b;
    wire [15:0] i_unnamed_sgfilter13_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond_sgfilter25_cmp_nsign_q;
    wire [35:0] i_arrayidx1_sgfilter0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx1_sgfilter0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx1_sgfilter0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx1_sgfilter0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx1_sgfilter0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx1_sgfilter0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx1_sgfilter0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx1_sgfilter0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx1_sgfilter0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx1_sgfilter0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx1_sgfilter0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx1_sgfilter0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx43_sgfilter0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx43_sgfilter0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx43_sgfilter0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx43_sgfilter0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx43_sgfilter0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx43_sgfilter0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx43_sgfilter0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx43_sgfilter0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx43_sgfilter0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx43_sgfilter0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx43_sgfilter0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx43_sgfilter0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx64_sgfilter0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx64_sgfilter0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx64_sgfilter0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx64_sgfilter0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx64_sgfilter0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx64_sgfilter0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx64_sgfilter0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx64_sgfilter0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx64_sgfilter0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx64_sgfilter0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx64_sgfilter0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx64_sgfilter0_mult_x_sums_result_add_0_0_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid214_i_cleanups_shl30_sgfilter0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid214_i_cleanups_shl30_sgfilter0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid215_i_cleanups_shl30_sgfilter0_shift_x_q;
    wire [0:0] leftShiftStage0_uid217_i_cleanups_shl30_sgfilter0_shift_x_s;
    reg [3:0] leftShiftStage0_uid217_i_cleanups_shl30_sgfilter0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid221_i_next_initerations25_sgfilter0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid223_i_next_initerations25_sgfilter0_shift_x_q;
    wire [0:0] rightShiftStage0_uid225_i_next_initerations25_sgfilter0_shift_x_s;
    reg [3:0] rightShiftStage0_uid225_i_next_initerations25_sgfilter0_shift_x_q;
    wire [10:0] i_arrayidx1_sgfilter0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx1_sgfilter0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx1_sgfilter0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx1_sgfilter0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx1_sgfilter0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx1_sgfilter0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx1_sgfilter0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx1_sgfilter0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx43_sgfilter0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx43_sgfilter0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx43_sgfilter0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx43_sgfilter0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx43_sgfilter0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx43_sgfilter0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx43_sgfilter0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx43_sgfilter0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx64_sgfilter0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx64_sgfilter0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx64_sgfilter0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx64_sgfilter0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx64_sgfilter0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx64_sgfilter0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx64_sgfilter0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx64_sgfilter0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together74_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist2_sync_together74_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together74_aunroll_x_in_i_valid_2_q;
    reg [31:0] redist4_i_llvm_fpga_pop_i32_k_025_pop11_sgfilter12_out_data_out_1_q;
    reg [0:0] redist5_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_1_q;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_2_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_3_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together74_aunroll_x_in_i_valid_1(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together74_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together74_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together74_aunroll_x_in_i_valid_2(DELAY,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together74_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist3_sync_together74_aunroll_x_in_i_valid_2_q <= $unsigned(redist2_sync_together74_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist5_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_1(DELAY,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out);
        end
    end

    // redist6_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_2(DELAY,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_2_q <= $unsigned(redist5_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid214_i_cleanups_shl30_sgfilter0_shift_x(BITSELECT,213)@3
    assign leftShiftStage0Idx1Rng1_uid214_i_cleanups_shl30_sgfilter0_shift_x_in = i_llvm_fpga_pop_i4_cleanups29_pop13_sgfilter2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid214_i_cleanups_shl30_sgfilter0_shift_x_b = leftShiftStage0Idx1Rng1_uid214_i_cleanups_shl30_sgfilter0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid215_i_cleanups_shl30_sgfilter0_shift_x(BITJOIN,214)@3
    assign leftShiftStage0Idx1_uid215_i_cleanups_shl30_sgfilter0_shift_x_q = {leftShiftStage0Idx1Rng1_uid214_i_cleanups_shl30_sgfilter0_shift_x_b, GND_q};

    // leftShiftStage0_uid217_i_cleanups_shl30_sgfilter0_shift_x(MUX,216)@3
    assign leftShiftStage0_uid217_i_cleanups_shl30_sgfilter0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid217_i_cleanups_shl30_sgfilter0_shift_x_s or i_llvm_fpga_pop_i4_cleanups29_pop13_sgfilter2_out_data_out or leftShiftStage0Idx1_uid215_i_cleanups_shl30_sgfilter0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid217_i_cleanups_shl30_sgfilter0_shift_x_s)
            1'b0 : leftShiftStage0_uid217_i_cleanups_shl30_sgfilter0_shift_x_q = i_llvm_fpga_pop_i4_cleanups29_pop13_sgfilter2_out_data_out;
            1'b1 : leftShiftStage0_uid217_i_cleanups_shl30_sgfilter0_shift_x_q = leftShiftStage0Idx1_uid215_i_cleanups_shl30_sgfilter0_shift_x_q;
            default : leftShiftStage0_uid217_i_cleanups_shl30_sgfilter0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl30_sgfilter5_vt_select_3(BITSELECT,43)@3
    assign i_cleanups_shl30_sgfilter5_vt_select_3_b = leftShiftStage0_uid217_i_cleanups_shl30_sgfilter0_shift_x_q[3:1];

    // i_cleanups_shl30_sgfilter5_vt_join(BITJOIN,42)@3
    assign i_cleanups_shl30_sgfilter5_vt_join_q = {i_cleanups_shl30_sgfilter5_vt_select_3_b, GND_q};

    // i_xor32_sgfilter4(LOGICAL,79)@3
    assign i_xor32_sgfilter4_q = i_first_cleanup31_sgfilter3_sel_x_b ^ VCC_q;

    // i_notcmp22_sgfilter27(LOGICAL,76)@3
    assign i_notcmp22_sgfilter27_q = i_exitcond_sgfilter25_cmp_nsign_q ^ VCC_q;

    // i_or33_sgfilter29(LOGICAL,77)@3
    assign i_or33_sgfilter29_q = i_notcmp22_sgfilter27_q | i_xor32_sgfilter4_q;

    // i_next_cleanups34_sgfilter30(MUX,72)@3
    assign i_next_cleanups34_sgfilter30_s = i_or33_sgfilter29_q;
    always @(i_next_cleanups34_sgfilter30_s or i_llvm_fpga_pop_i4_cleanups29_pop13_sgfilter2_out_data_out or i_cleanups_shl30_sgfilter5_vt_join_q)
    begin
        unique case (i_next_cleanups34_sgfilter30_s)
            1'b0 : i_next_cleanups34_sgfilter30_q = i_llvm_fpga_pop_i4_cleanups29_pop13_sgfilter2_out_data_out;
            1'b1 : i_next_cleanups34_sgfilter30_q = i_cleanups_shl30_sgfilter5_vt_join_q;
            default : i_next_cleanups34_sgfilter30_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups29_push13_sgfilter31(BLACKBOX,69)@3
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    sgfilter_i_llvm_fpga_push_i4_cleanups29_push13_0 thei_llvm_fpga_push_i4_cleanups29_push13_sgfilter31 (
        .in_data_in(i_next_cleanups34_sgfilter30_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i4_cleanups29_pop13_sgfilter2_out_feedback_stall_out_13),
        .in_keep_going26(redist6_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together74_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i4_cleanups29_push13_sgfilter31_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i4_cleanups29_push13_sgfilter31_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist1_sync_together74_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together74_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together74_aunroll_x_in_c0_eni1_1_tpl_2_q <= $unsigned(redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q);
        end
    end

    // c_i4_750(CONSTANT,26)
    assign c_i4_750_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups29_pop13_sgfilter2(BLACKBOX,63)@3
    // out out_feedback_stall_out_13@20000000
    sgfilter_i_llvm_fpga_pop_i4_cleanups29_pop13_0 thei_llvm_fpga_pop_i4_cleanups29_pop13_sgfilter2 (
        .in_data_in(c_i4_750_q),
        .in_dir(redist1_sync_together74_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_13(i_llvm_fpga_push_i4_cleanups29_push13_sgfilter31_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i4_cleanups29_push13_sgfilter31_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together74_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups29_pop13_sgfilter2_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i4_cleanups29_pop13_sgfilter2_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup31_sgfilter3_sel_x(BITSELECT,127)@3
    assign i_first_cleanup31_sgfilter3_sel_x_b = i_llvm_fpga_pop_i4_cleanups29_pop13_sgfilter2_out_data_out[0:0];

    // c_i11_159(CONSTANT,5)
    assign c_i11_159_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next_sgfilter32(ADD,50)@3
    assign i_fpga_indvars_iv_next_sgfilter32_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_sgfilter24_out_data_out};
    assign i_fpga_indvars_iv_next_sgfilter32_b = {1'b0, c_i11_159_q};
    assign i_fpga_indvars_iv_next_sgfilter32_o = $unsigned(i_fpga_indvars_iv_next_sgfilter32_a) + $unsigned(i_fpga_indvars_iv_next_sgfilter32_b);
    assign i_fpga_indvars_iv_next_sgfilter32_q = i_fpga_indvars_iv_next_sgfilter32_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next_sgfilter32_sel_x(BITSELECT,85)@3
    assign bgTrunc_i_fpga_indvars_iv_next_sgfilter32_sel_x_b = i_fpga_indvars_iv_next_sgfilter32_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push10_sgfilter33(BLACKBOX,65)@3
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    sgfilter_i_llvm_fpga_push_i11_fpga_indvars_iv_push10_0 thei_llvm_fpga_push_i11_fpga_indvars_iv_push10_sgfilter33 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_sgfilter32_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_sgfilter24_out_feedback_stall_out_10),
        .in_keep_going26(redist6_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together74_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i11_fpga_indvars_iv_push10_sgfilter33_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i11_fpga_indvars_iv_push10_sgfilter33_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_102257(CONSTANT,4)
    assign c_i11_102257_q = $unsigned(11'b01111111110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_sgfilter24(BLACKBOX,61)@3
    // out out_feedback_stall_out_10@20000000
    sgfilter_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_sgfilter24 (
        .in_data_in(c_i11_102257_q),
        .in_dir(redist1_sync_together74_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_10(i_llvm_fpga_push_i11_fpga_indvars_iv_push10_sgfilter33_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i11_fpga_indvars_iv_push10_sgfilter33_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together74_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_sgfilter24_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_sgfilter24_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_sgfilter25_cmp_nsign(LOGICAL,155)@3
    assign i_exitcond_sgfilter25_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_sgfilter24_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond36_sgfilter28(BLACKBOX,67)@3
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    sgfilter_i_llvm_fpga_push_i1_notexitcond36_0 thei_llvm_fpga_push_i1_notexitcond36_sgfilter28 (
        .in_data_in(i_exitcond_sgfilter25_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_not_exitcond_stall_out),
        .in_first_cleanup31(i_first_cleanup31_sgfilter3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together74_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond36_sgfilter28_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond36_sgfilter28_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,140)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid221_i_next_initerations25_sgfilter0_shift_x(BITSELECT,220)@2
    assign rightShiftStage0Idx1Rng1_uid221_i_next_initerations25_sgfilter0_shift_x_b = i_llvm_fpga_pop_i4_initerations24_pop12_sgfilter7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid223_i_next_initerations25_sgfilter0_shift_x(BITJOIN,222)@2
    assign rightShiftStage0Idx1_uid223_i_next_initerations25_sgfilter0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid221_i_next_initerations25_sgfilter0_shift_x_b};

    // valid_fanout_reg1(REG,138)@1 + 1
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

    // valid_fanout_reg2(REG,139)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations24_push12_sgfilter9(BLACKBOX,70)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    sgfilter_i_llvm_fpga_push_i4_initerations24_push12_0 thei_llvm_fpga_push_i4_initerations24_push12_sgfilter9 (
        .in_data_in(i_next_initerations25_sgfilter8_vt_join_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i4_initerations24_pop12_sgfilter7_out_feedback_stall_out_12),
        .in_keep_going26(redist5_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i4_initerations24_push12_sgfilter9_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i4_initerations24_push12_sgfilter9_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations24_pop12_sgfilter7(BLACKBOX,64)@2
    // out out_feedback_stall_out_12@20000000
    sgfilter_i_llvm_fpga_pop_i4_initerations24_pop12_0 thei_llvm_fpga_pop_i4_initerations24_pop12_sgfilter7 (
        .in_data_in(c_i4_750_q),
        .in_dir(redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i4_initerations24_push12_sgfilter9_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i4_initerations24_push12_sgfilter9_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations24_pop12_sgfilter7_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i4_initerations24_pop12_sgfilter7_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid225_i_next_initerations25_sgfilter0_shift_x(MUX,224)@2
    assign rightShiftStage0_uid225_i_next_initerations25_sgfilter0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid225_i_next_initerations25_sgfilter0_shift_x_s or i_llvm_fpga_pop_i4_initerations24_pop12_sgfilter7_out_data_out or rightShiftStage0Idx1_uid223_i_next_initerations25_sgfilter0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid225_i_next_initerations25_sgfilter0_shift_x_s)
            1'b0 : rightShiftStage0_uid225_i_next_initerations25_sgfilter0_shift_x_q = i_llvm_fpga_pop_i4_initerations24_pop12_sgfilter7_out_data_out;
            1'b1 : rightShiftStage0_uid225_i_next_initerations25_sgfilter0_shift_x_q = rightShiftStage0Idx1_uid223_i_next_initerations25_sgfilter0_shift_x_q;
            default : rightShiftStage0_uid225_i_next_initerations25_sgfilter0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations25_sgfilter8_vt_select_2(BITSELECT,75)@2
    assign i_next_initerations25_sgfilter8_vt_select_2_b = rightShiftStage0_uid225_i_next_initerations25_sgfilter0_shift_x_q[2:0];

    // i_next_initerations25_sgfilter8_vt_join(BITJOIN,74)@2
    assign i_next_initerations25_sgfilter8_vt_join_q = {GND_q, i_next_initerations25_sgfilter8_vt_select_2_b};

    // i_last_initeration27_sgfilter10_sel_x(BITSELECT,129)@2
    assign i_last_initeration27_sgfilter10_sel_x_b = i_next_initerations25_sgfilter8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration28_sgfilter11(BLACKBOX,66)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    sgfilter_i_llvm_fpga_push_i1_lastiniteration28_0 thei_llvm_fpga_push_i1_lastiniteration28_sgfilter11 (
        .in_data_in(i_last_initeration27_sgfilter10_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_initeration_stall_out),
        .in_keep_going26(redist5_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration28_sgfilter11_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration28_sgfilter11_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going26_sgfilter6(BLACKBOX,60)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    sgfilter_i_llvm_fpga_pipeline_keep_going26_0 thei_llvm_fpga_pipeline_keep_going26_sgfilter6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration28_sgfilter11_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration28_sgfilter11_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond36_sgfilter28_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond36_sgfilter28_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,31)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_sgfilter6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_sgfilter6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,82)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_pipeline_valid_out;

    // i_conv_sgfilter14_vt_const_15(CONSTANT,45)
    assign i_conv_sgfilter14_vt_const_15_q = $unsigned(6'b000000);

    // c_i16_102354(CONSTANT,7)
    assign c_i16_102354_q = $unsigned(16'b0000001111111111);

    // valid_fanout_reg4(REG,141)@1 + 1
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

    // valid_fanout_reg8(REG,145)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist2_sync_together74_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_156(CONSTANT,24)
    assign c_i32_156_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_sgfilter22(ADD,55)@3
    assign i_inc_sgfilter22_a = {1'b0, redist4_i_llvm_fpga_pop_i32_k_025_pop11_sgfilter12_out_data_out_1_q};
    assign i_inc_sgfilter22_b = {1'b0, c_i32_156_q};
    assign i_inc_sgfilter22_o = $unsigned(i_inc_sgfilter22_a) + $unsigned(i_inc_sgfilter22_b);
    assign i_inc_sgfilter22_q = i_inc_sgfilter22_o[32:0];

    // bgTrunc_i_inc_sgfilter22_sel_x(BITSELECT,86)@3
    assign bgTrunc_i_inc_sgfilter22_sel_x_b = i_inc_sgfilter22_q[31:0];

    // i_llvm_fpga_push_i32_k_025_push11_sgfilter23(BLACKBOX,68)@3
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    sgfilter_i_llvm_fpga_push_i32_k_025_push11_0 thei_llvm_fpga_push_i32_k_025_push11_sgfilter23 (
        .in_data_in(bgTrunc_i_inc_sgfilter22_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_k_025_pop11_sgfilter12_out_feedback_stall_out_11),
        .in_keep_going26(redist6_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_k_025_push11_sgfilter23_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_k_025_push11_sgfilter23_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_053(CONSTANT,23)
    assign c_i32_053_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_025_pop11_sgfilter12(BLACKBOX,62)@2
    // out out_feedback_stall_out_11@20000000
    sgfilter_i_llvm_fpga_pop_i32_k_025_pop11_0 thei_llvm_fpga_pop_i32_k_025_pop11_sgfilter12 (
        .in_data_in(c_i32_053_q),
        .in_dir(redist0_sync_together74_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_k_025_push11_sgfilter23_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_k_025_push11_sgfilter23_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_025_pop11_sgfilter12_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_k_025_pop11_sgfilter12_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i32_k_025_pop11_sgfilter12_out_data_out_1(DELAY,243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_k_025_pop11_sgfilter12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i32_k_025_pop11_sgfilter12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k_025_pop11_sgfilter12_out_data_out);
        end
    end

    // i_unnamed_sgfilter13_sel_x(BITSELECT,134)@3
    assign i_unnamed_sgfilter13_sel_x_b = redist4_i_llvm_fpga_pop_i32_k_025_pop11_sgfilter12_out_data_out_1_q[15:0];

    // i_conv_sgfilter14(LOGICAL,44)@3
    assign i_conv_sgfilter14_q = i_unnamed_sgfilter13_sel_x_b & c_i16_102354_q;

    // i_conv_sgfilter14_vt_select_9(BITSELECT,47)@3
    assign i_conv_sgfilter14_vt_select_9_b = i_conv_sgfilter14_q[9:0];

    // i_conv_sgfilter14_vt_join(BITJOIN,46)@3
    assign i_conv_sgfilter14_vt_join_q = {i_conv_sgfilter14_vt_const_15_q, i_conv_sgfilter14_vt_select_9_b};

    // valid_fanout_reg5(REG,142)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together74_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx1_sgfilter0_mult_multconst_x(CONSTANT,100)
    assign i_arrayidx1_sgfilter0_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // i_idxprom_sgfilter15_sel_x(BITSELECT,128)@3
    assign i_idxprom_sgfilter15_sel_x_b = {32'b00000000000000000000000000000000, redist4_i_llvm_fpga_pop_i32_k_025_pop11_sgfilter12_out_data_out_1_q[31:0]};

    // i_idxprom_sgfilter15_vt_select_31(BITSELECT,54)@3
    assign i_idxprom_sgfilter15_vt_select_31_b = i_idxprom_sgfilter15_sel_x_b[31:0];

    // i_idxprom_sgfilter15_vt_join(BITJOIN,53)@3
    assign i_idxprom_sgfilter15_vt_join_q = {c_i32_053_q, i_idxprom_sgfilter15_vt_select_31_b};

    // i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select(BITSELECT,238)@3
    assign i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_b = i_idxprom_sgfilter15_vt_join_q[63:54];
    assign i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_c = i_idxprom_sgfilter15_vt_join_q[53:36];
    assign i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_d = i_idxprom_sgfilter15_vt_join_q[35:18];
    assign i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_e = i_idxprom_sgfilter15_vt_join_q[17:0];

    // i_arrayidx1_sgfilter0_mult_x_im0_shift0(BITSHIFT,226)@3
    assign i_arrayidx1_sgfilter0_mult_x_im0_shift0_qint = { i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx1_sgfilter0_mult_x_im0_shift0_q = i_arrayidx1_sgfilter0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx1_sgfilter0_mult_x_sums_align_3(BITSHIFT,171)@3
    assign i_arrayidx1_sgfilter0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx1_sgfilter0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx1_sgfilter0_mult_x_sums_align_3_q = i_arrayidx1_sgfilter0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx1_sgfilter0_mult_x_im6_shift0(BITSHIFT,228)@3
    assign i_arrayidx1_sgfilter0_mult_x_im6_shift0_qint = { i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx1_sgfilter0_mult_x_im6_shift0_q = i_arrayidx1_sgfilter0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx1_sgfilter0_mult_x_sums_align_2(BITSHIFT,170)@3
    assign i_arrayidx1_sgfilter0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx1_sgfilter0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx1_sgfilter0_mult_x_sums_align_2_q = i_arrayidx1_sgfilter0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx1_sgfilter0_mult_x_sums_join_4(BITJOIN,172)@3
    assign i_arrayidx1_sgfilter0_mult_x_sums_join_4_q = {i_arrayidx1_sgfilter0_mult_x_sums_align_3_q, i_arrayidx1_sgfilter0_mult_x_sums_align_2_q};

    // i_arrayidx1_sgfilter0_mult_x_im3_shift0(BITSHIFT,227)@3
    assign i_arrayidx1_sgfilter0_mult_x_im3_shift0_qint = { i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx1_sgfilter0_mult_x_im3_shift0_q = i_arrayidx1_sgfilter0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx1_sgfilter0_mult_x_sums_align_0(BITSHIFT,168)@3
    assign i_arrayidx1_sgfilter0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx1_sgfilter0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx1_sgfilter0_mult_x_sums_align_0_q = i_arrayidx1_sgfilter0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx1_sgfilter0_mult_x_im9_shift0(BITSHIFT,229)@3
    assign i_arrayidx1_sgfilter0_mult_x_im9_shift0_qint = { i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx1_sgfilter0_mult_x_im9_shift0_q = i_arrayidx1_sgfilter0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx1_sgfilter0_mult_x_sums_join_1(BITJOIN,169)@3
    assign i_arrayidx1_sgfilter0_mult_x_sums_join_1_q = {i_arrayidx1_sgfilter0_mult_x_sums_align_0_q, {1'b0, i_arrayidx1_sgfilter0_mult_x_im9_shift0_q}};

    // i_arrayidx1_sgfilter0_mult_x_sums_result_add_0_0(ADD,173)@3
    assign i_arrayidx1_sgfilter0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx1_sgfilter0_mult_x_sums_join_1_q};
    assign i_arrayidx1_sgfilter0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx1_sgfilter0_mult_x_sums_join_4_q};
    assign i_arrayidx1_sgfilter0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx1_sgfilter0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx1_sgfilter0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx1_sgfilter0_mult_x_sums_result_add_0_0_q = i_arrayidx1_sgfilter0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx1_sgfilter0_mult_extender_x(BITJOIN,99)@3
    assign i_arrayidx1_sgfilter0_mult_extender_x_q = {i_arrayidx1_sgfilter0_mult_multconst_x_q, i_arrayidx1_sgfilter0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx1_sgfilter0_trunc_sel_x(BITSELECT,101)@3
    assign i_arrayidx1_sgfilter0_trunc_sel_x_b = i_arrayidx1_sgfilter0_mult_extender_x_q[63:0];

    // c_sgfilter_a_pmem(CONSTANT,28)
    assign c_sgfilter_a_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx1_sgfilter0_add_x(ADD,93)@3
    assign i_arrayidx1_sgfilter0_add_x_a = {1'b0, c_sgfilter_a_pmem_q};
    assign i_arrayidx1_sgfilter0_add_x_b = {1'b0, i_arrayidx1_sgfilter0_trunc_sel_x_b};
    assign i_arrayidx1_sgfilter0_add_x_o = $unsigned(i_arrayidx1_sgfilter0_add_x_a) + $unsigned(i_arrayidx1_sgfilter0_add_x_b);
    assign i_arrayidx1_sgfilter0_add_x_q = i_arrayidx1_sgfilter0_add_x_o[64:0];

    // i_arrayidx1_sgfilter0_dupName_0_trunc_sel_x(BITSELECT,102)@3
    assign i_arrayidx1_sgfilter0_dupName_0_trunc_sel_x_b = i_arrayidx1_sgfilter0_add_x_q[63:0];

    // i_arrayidx1_sgfilter16_vt_select_63(BITSELECT,34)@3
    assign i_arrayidx1_sgfilter16_vt_select_63_b = i_arrayidx1_sgfilter0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx1_sgfilter16_vt_join(BITJOIN,33)@3
    assign i_arrayidx1_sgfilter16_vt_join_q = {i_arrayidx1_sgfilter16_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_sgfilter17(BLACKBOX,59)@3
    // out out_memdep_sgfilter_avm_address@20000000
    // out out_memdep_sgfilter_avm_burstcount@20000000
    // out out_memdep_sgfilter_avm_byteenable@20000000
    // out out_memdep_sgfilter_avm_enable@20000000
    // out out_memdep_sgfilter_avm_read@20000000
    // out out_memdep_sgfilter_avm_write@20000000
    // out out_memdep_sgfilter_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    sgfilter_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_sgfilter17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_sgfilter16_vt_join_q),
        .in_i_predicate(i_xor32_sgfilter4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_i_writedata(i_conv_sgfilter14_vt_join_q),
        .in_memdep_sgfilter_avm_readdata(in_memdep_sgfilter_avm_readdata),
        .in_memdep_sgfilter_avm_readdatavalid(in_memdep_sgfilter_avm_readdatavalid),
        .in_memdep_sgfilter_avm_waitrequest(in_memdep_sgfilter_avm_waitrequest),
        .in_memdep_sgfilter_avm_writeack(in_memdep_sgfilter_avm_writeack),
        .out_memdep_sgfilter_avm_address(i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_address),
        .out_memdep_sgfilter_avm_burstcount(i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_burstcount),
        .out_memdep_sgfilter_avm_byteenable(i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_byteenable),
        .out_memdep_sgfilter_avm_enable(i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_enable),
        .out_memdep_sgfilter_avm_read(i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_read),
        .out_memdep_sgfilter_avm_write(i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_write),
        .out_memdep_sgfilter_avm_writedata(i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,89)
    assign out_memdep_sgfilter_avm_address = i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_address;
    assign out_memdep_sgfilter_avm_enable = i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_enable;
    assign out_memdep_sgfilter_avm_read = i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_read;
    assign out_memdep_sgfilter_avm_write = i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_write;
    assign out_memdep_sgfilter_avm_writedata = i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_writedata;
    assign out_memdep_sgfilter_avm_byteenable = i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_byteenable;
    assign out_memdep_sgfilter_avm_burstcount = i_llvm_fpga_mem_memdep_sgfilter17_out_memdep_sgfilter_avm_burstcount;

    // valid_fanout_reg6(REG,143)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist2_sync_together74_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx43_sgfilter0_mult_x_im0_shift0(BITSHIFT,230)@3
    assign i_arrayidx43_sgfilter0_mult_x_im0_shift0_qint = { i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx43_sgfilter0_mult_x_im0_shift0_q = i_arrayidx43_sgfilter0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx43_sgfilter0_mult_x_sums_align_3(BITSHIFT,189)@3
    assign i_arrayidx43_sgfilter0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx43_sgfilter0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx43_sgfilter0_mult_x_sums_align_3_q = i_arrayidx43_sgfilter0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx43_sgfilter0_mult_x_im6_shift0(BITSHIFT,232)@3
    assign i_arrayidx43_sgfilter0_mult_x_im6_shift0_qint = { i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx43_sgfilter0_mult_x_im6_shift0_q = i_arrayidx43_sgfilter0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx43_sgfilter0_mult_x_sums_align_2(BITSHIFT,188)@3
    assign i_arrayidx43_sgfilter0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx43_sgfilter0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx43_sgfilter0_mult_x_sums_align_2_q = i_arrayidx43_sgfilter0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx43_sgfilter0_mult_x_sums_join_4(BITJOIN,190)@3
    assign i_arrayidx43_sgfilter0_mult_x_sums_join_4_q = {i_arrayidx43_sgfilter0_mult_x_sums_align_3_q, i_arrayidx43_sgfilter0_mult_x_sums_align_2_q};

    // i_arrayidx43_sgfilter0_mult_x_im3_shift0(BITSHIFT,231)@3
    assign i_arrayidx43_sgfilter0_mult_x_im3_shift0_qint = { i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx43_sgfilter0_mult_x_im3_shift0_q = i_arrayidx43_sgfilter0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx43_sgfilter0_mult_x_sums_align_0(BITSHIFT,186)@3
    assign i_arrayidx43_sgfilter0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx43_sgfilter0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx43_sgfilter0_mult_x_sums_align_0_q = i_arrayidx43_sgfilter0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx43_sgfilter0_mult_x_im9_shift0(BITSHIFT,233)@3
    assign i_arrayidx43_sgfilter0_mult_x_im9_shift0_qint = { i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx43_sgfilter0_mult_x_im9_shift0_q = i_arrayidx43_sgfilter0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx43_sgfilter0_mult_x_sums_join_1(BITJOIN,187)@3
    assign i_arrayidx43_sgfilter0_mult_x_sums_join_1_q = {i_arrayidx43_sgfilter0_mult_x_sums_align_0_q, {1'b0, i_arrayidx43_sgfilter0_mult_x_im9_shift0_q}};

    // i_arrayidx43_sgfilter0_mult_x_sums_result_add_0_0(ADD,191)@3
    assign i_arrayidx43_sgfilter0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx43_sgfilter0_mult_x_sums_join_1_q};
    assign i_arrayidx43_sgfilter0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx43_sgfilter0_mult_x_sums_join_4_q};
    assign i_arrayidx43_sgfilter0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx43_sgfilter0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx43_sgfilter0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx43_sgfilter0_mult_x_sums_result_add_0_0_q = i_arrayidx43_sgfilter0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx43_sgfilter0_mult_extender_x(BITJOIN,109)@3
    assign i_arrayidx43_sgfilter0_mult_extender_x_q = {i_arrayidx1_sgfilter0_mult_multconst_x_q, i_arrayidx43_sgfilter0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx43_sgfilter0_trunc_sel_x(BITSELECT,111)@3
    assign i_arrayidx43_sgfilter0_trunc_sel_x_b = i_arrayidx43_sgfilter0_mult_extender_x_q[63:0];

    // c_sgfilter_b_pmem(CONSTANT,29)
    assign c_sgfilter_b_pmem_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // i_arrayidx43_sgfilter0_add_x(ADD,103)@3
    assign i_arrayidx43_sgfilter0_add_x_a = {1'b0, c_sgfilter_b_pmem_q};
    assign i_arrayidx43_sgfilter0_add_x_b = {1'b0, i_arrayidx43_sgfilter0_trunc_sel_x_b};
    assign i_arrayidx43_sgfilter0_add_x_o = $unsigned(i_arrayidx43_sgfilter0_add_x_a) + $unsigned(i_arrayidx43_sgfilter0_add_x_b);
    assign i_arrayidx43_sgfilter0_add_x_q = i_arrayidx43_sgfilter0_add_x_o[64:0];

    // i_arrayidx43_sgfilter0_dupName_0_trunc_sel_x(BITSELECT,112)@3
    assign i_arrayidx43_sgfilter0_dupName_0_trunc_sel_x_b = i_arrayidx43_sgfilter0_add_x_q[63:0];

    // i_arrayidx43_sgfilter18_vt_select_63(BITSELECT,37)@3
    assign i_arrayidx43_sgfilter18_vt_select_63_b = i_arrayidx43_sgfilter0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx43_sgfilter18_vt_join(BITJOIN,36)@3
    assign i_arrayidx43_sgfilter18_vt_join_q = {i_arrayidx43_sgfilter18_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_1_sgfilter19(BLACKBOX,57)@3
    // out out_memdep_1_sgfilter_avm_address@20000000
    // out out_memdep_1_sgfilter_avm_burstcount@20000000
    // out out_memdep_1_sgfilter_avm_byteenable@20000000
    // out out_memdep_1_sgfilter_avm_enable@20000000
    // out out_memdep_1_sgfilter_avm_read@20000000
    // out out_memdep_1_sgfilter_avm_write@20000000
    // out out_memdep_1_sgfilter_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    sgfilter_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_sgfilter19 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx43_sgfilter18_vt_join_q),
        .in_i_predicate(i_xor32_sgfilter4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_i_writedata(i_conv_sgfilter14_vt_join_q),
        .in_memdep_1_sgfilter_avm_readdata(in_memdep_1_sgfilter_avm_readdata),
        .in_memdep_1_sgfilter_avm_readdatavalid(in_memdep_1_sgfilter_avm_readdatavalid),
        .in_memdep_1_sgfilter_avm_waitrequest(in_memdep_1_sgfilter_avm_waitrequest),
        .in_memdep_1_sgfilter_avm_writeack(in_memdep_1_sgfilter_avm_writeack),
        .out_memdep_1_sgfilter_avm_address(i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_address),
        .out_memdep_1_sgfilter_avm_burstcount(i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_burstcount),
        .out_memdep_1_sgfilter_avm_byteenable(i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_byteenable),
        .out_memdep_1_sgfilter_avm_enable(i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_enable),
        .out_memdep_1_sgfilter_avm_read(i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_read),
        .out_memdep_1_sgfilter_avm_write(i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_write),
        .out_memdep_1_sgfilter_avm_writedata(i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,91)
    assign out_memdep_1_sgfilter_avm_address = i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_address;
    assign out_memdep_1_sgfilter_avm_enable = i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_enable;
    assign out_memdep_1_sgfilter_avm_read = i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_read;
    assign out_memdep_1_sgfilter_avm_write = i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_write;
    assign out_memdep_1_sgfilter_avm_writedata = i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_writedata;
    assign out_memdep_1_sgfilter_avm_byteenable = i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_byteenable;
    assign out_memdep_1_sgfilter_avm_burstcount = i_llvm_fpga_mem_memdep_1_sgfilter19_out_memdep_1_sgfilter_avm_burstcount;

    // c_i16_055(CONSTANT,6)
    assign c_i16_055_q = $unsigned(16'b0000000000000000);

    // valid_fanout_reg7(REG,144)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist2_sync_together74_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx64_sgfilter0_mult_x_im0_shift0(BITSHIFT,234)@3
    assign i_arrayidx64_sgfilter0_mult_x_im0_shift0_qint = { i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx64_sgfilter0_mult_x_im0_shift0_q = i_arrayidx64_sgfilter0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx64_sgfilter0_mult_x_sums_align_3(BITSHIFT,207)@3
    assign i_arrayidx64_sgfilter0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx64_sgfilter0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx64_sgfilter0_mult_x_sums_align_3_q = i_arrayidx64_sgfilter0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx64_sgfilter0_mult_x_im6_shift0(BITSHIFT,236)@3
    assign i_arrayidx64_sgfilter0_mult_x_im6_shift0_qint = { i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx64_sgfilter0_mult_x_im6_shift0_q = i_arrayidx64_sgfilter0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx64_sgfilter0_mult_x_sums_align_2(BITSHIFT,206)@3
    assign i_arrayidx64_sgfilter0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx64_sgfilter0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx64_sgfilter0_mult_x_sums_align_2_q = i_arrayidx64_sgfilter0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx64_sgfilter0_mult_x_sums_join_4(BITJOIN,208)@3
    assign i_arrayidx64_sgfilter0_mult_x_sums_join_4_q = {i_arrayidx64_sgfilter0_mult_x_sums_align_3_q, i_arrayidx64_sgfilter0_mult_x_sums_align_2_q};

    // i_arrayidx64_sgfilter0_mult_x_im3_shift0(BITSHIFT,235)@3
    assign i_arrayidx64_sgfilter0_mult_x_im3_shift0_qint = { i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx64_sgfilter0_mult_x_im3_shift0_q = i_arrayidx64_sgfilter0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx64_sgfilter0_mult_x_sums_align_0(BITSHIFT,204)@3
    assign i_arrayidx64_sgfilter0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx64_sgfilter0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx64_sgfilter0_mult_x_sums_align_0_q = i_arrayidx64_sgfilter0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx64_sgfilter0_mult_x_im9_shift0(BITSHIFT,237)@3
    assign i_arrayidx64_sgfilter0_mult_x_im9_shift0_qint = { i_arrayidx1_sgfilter0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx64_sgfilter0_mult_x_im9_shift0_q = i_arrayidx64_sgfilter0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx64_sgfilter0_mult_x_sums_join_1(BITJOIN,205)@3
    assign i_arrayidx64_sgfilter0_mult_x_sums_join_1_q = {i_arrayidx64_sgfilter0_mult_x_sums_align_0_q, {1'b0, i_arrayidx64_sgfilter0_mult_x_im9_shift0_q}};

    // i_arrayidx64_sgfilter0_mult_x_sums_result_add_0_0(ADD,209)@3
    assign i_arrayidx64_sgfilter0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx64_sgfilter0_mult_x_sums_join_1_q};
    assign i_arrayidx64_sgfilter0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx64_sgfilter0_mult_x_sums_join_4_q};
    assign i_arrayidx64_sgfilter0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx64_sgfilter0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx64_sgfilter0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx64_sgfilter0_mult_x_sums_result_add_0_0_q = i_arrayidx64_sgfilter0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx64_sgfilter0_mult_extender_x(BITJOIN,119)@3
    assign i_arrayidx64_sgfilter0_mult_extender_x_q = {i_arrayidx1_sgfilter0_mult_multconst_x_q, i_arrayidx64_sgfilter0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx64_sgfilter0_trunc_sel_x(BITSELECT,121)@3
    assign i_arrayidx64_sgfilter0_trunc_sel_x_b = i_arrayidx64_sgfilter0_mult_extender_x_q[63:0];

    // c_sgfilter_OUT_pmem(CONSTANT,27)
    assign c_sgfilter_OUT_pmem_q = $unsigned(64'b0100000000001000000000000000000000000000000000000000000000000000);

    // i_arrayidx64_sgfilter0_add_x(ADD,113)@3
    assign i_arrayidx64_sgfilter0_add_x_a = {1'b0, c_sgfilter_OUT_pmem_q};
    assign i_arrayidx64_sgfilter0_add_x_b = {1'b0, i_arrayidx64_sgfilter0_trunc_sel_x_b};
    assign i_arrayidx64_sgfilter0_add_x_o = $unsigned(i_arrayidx64_sgfilter0_add_x_a) + $unsigned(i_arrayidx64_sgfilter0_add_x_b);
    assign i_arrayidx64_sgfilter0_add_x_q = i_arrayidx64_sgfilter0_add_x_o[64:0];

    // i_arrayidx64_sgfilter0_dupName_0_trunc_sel_x(BITSELECT,122)@3
    assign i_arrayidx64_sgfilter0_dupName_0_trunc_sel_x_b = i_arrayidx64_sgfilter0_add_x_q[63:0];

    // i_arrayidx64_sgfilter20_vt_select_63(BITSELECT,40)@3
    assign i_arrayidx64_sgfilter20_vt_select_63_b = i_arrayidx64_sgfilter0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx64_sgfilter20_vt_join(BITJOIN,39)@3
    assign i_arrayidx64_sgfilter20_vt_join_q = {i_arrayidx64_sgfilter20_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_2_sgfilter21(BLACKBOX,58)@3
    // out out_memdep_2_sgfilter_avm_address@20000000
    // out out_memdep_2_sgfilter_avm_burstcount@20000000
    // out out_memdep_2_sgfilter_avm_byteenable@20000000
    // out out_memdep_2_sgfilter_avm_enable@20000000
    // out out_memdep_2_sgfilter_avm_read@20000000
    // out out_memdep_2_sgfilter_avm_write@20000000
    // out out_memdep_2_sgfilter_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    sgfilter_i_llvm_fpga_mem_memdep_2_0 thei_llvm_fpga_mem_memdep_2_sgfilter21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx64_sgfilter20_vt_join_q),
        .in_i_predicate(i_xor32_sgfilter4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_i_writedata(c_i16_055_q),
        .in_memdep_2_sgfilter_avm_readdata(in_memdep_2_sgfilter_avm_readdata),
        .in_memdep_2_sgfilter_avm_readdatavalid(in_memdep_2_sgfilter_avm_readdatavalid),
        .in_memdep_2_sgfilter_avm_waitrequest(in_memdep_2_sgfilter_avm_waitrequest),
        .in_memdep_2_sgfilter_avm_writeack(in_memdep_2_sgfilter_avm_writeack),
        .out_memdep_2_sgfilter_avm_address(i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_address),
        .out_memdep_2_sgfilter_avm_burstcount(i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_burstcount),
        .out_memdep_2_sgfilter_avm_byteenable(i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_byteenable),
        .out_memdep_2_sgfilter_avm_enable(i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_enable),
        .out_memdep_2_sgfilter_avm_read(i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_read),
        .out_memdep_2_sgfilter_avm_write(i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_write),
        .out_memdep_2_sgfilter_avm_writedata(i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,92)
    assign out_memdep_2_sgfilter_avm_address = i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_address;
    assign out_memdep_2_sgfilter_avm_enable = i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_enable;
    assign out_memdep_2_sgfilter_avm_read = i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_read;
    assign out_memdep_2_sgfilter_avm_write = i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_write;
    assign out_memdep_2_sgfilter_avm_writedata = i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_writedata;
    assign out_memdep_2_sgfilter_avm_byteenable = i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_byteenable;
    assign out_memdep_2_sgfilter_avm_burstcount = i_llvm_fpga_mem_memdep_2_sgfilter21_out_memdep_2_sgfilter_avm_burstcount;

    // valid_fanout_reg0(REG,137)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together74_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_masked35_sgfilter34(LOGICAL,71)@3 + 1
    assign i_masked35_sgfilter34_qi = i_notcmp22_sgfilter27_q & i_first_cleanup31_sgfilter3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked35_sgfilter34_delay ( .xin(i_masked35_sgfilter34_qi), .xout(i_masked35_sgfilter34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_3(DELAY,246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_3_q <= $unsigned(redist6_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_2_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,135)@4
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist7_i_llvm_fpga_pipeline_keep_going26_sgfilter6_out_data_out_3_q;
    assign out_c0_exi2_2_tpl = i_masked35_sgfilter34_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_sgfilter1 = GND_q;

endmodule
