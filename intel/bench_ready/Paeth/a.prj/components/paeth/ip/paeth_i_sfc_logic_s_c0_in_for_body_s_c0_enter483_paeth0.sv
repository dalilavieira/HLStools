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

// SystemVerilog created from paeth_i_sfc_logic_s_c0_in_for_body_s_c0_enter483_paeth0
// SystemVerilog created on Sun Apr 19 21:42:11 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module paeth_i_sfc_logic_s_c0_in_for_body_s_c0_enter483_paeth0 (
    input wire [15:0] in_memdep_paeth_avm_readdata,
    input wire [0:0] in_memdep_paeth_avm_writeack,
    input wire [0:0] in_memdep_paeth_avm_waitrequest,
    input wire [0:0] in_memdep_paeth_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_paeth6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_paeth6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [15:0] in_memdep_1_paeth_avm_readdata,
    input wire [0:0] in_memdep_1_paeth_avm_writeack,
    input wire [0:0] in_memdep_1_paeth_avm_waitrequest,
    input wire [0:0] in_memdep_1_paeth_avm_readdatavalid,
    output wire [31:0] out_memdep_paeth_avm_address,
    output wire [0:0] out_memdep_paeth_avm_enable,
    output wire [0:0] out_memdep_paeth_avm_read,
    output wire [0:0] out_memdep_paeth_avm_write,
    output wire [15:0] out_memdep_paeth_avm_writedata,
    output wire [1:0] out_memdep_paeth_avm_byteenable,
    output wire [0:0] out_memdep_paeth_avm_burstcount,
    input wire [15:0] in_memdep_2_paeth_avm_readdata,
    input wire [0:0] in_memdep_2_paeth_avm_writeack,
    input wire [0:0] in_memdep_2_paeth_avm_waitrequest,
    input wire [0:0] in_memdep_2_paeth_avm_readdatavalid,
    output wire [31:0] out_memdep_1_paeth_avm_address,
    output wire [0:0] out_memdep_1_paeth_avm_enable,
    output wire [0:0] out_memdep_1_paeth_avm_read,
    output wire [0:0] out_memdep_1_paeth_avm_write,
    output wire [15:0] out_memdep_1_paeth_avm_writedata,
    output wire [1:0] out_memdep_1_paeth_avm_byteenable,
    output wire [0:0] out_memdep_1_paeth_avm_burstcount,
    input wire [15:0] in_memdep_3_paeth_avm_readdata,
    input wire [0:0] in_memdep_3_paeth_avm_writeack,
    input wire [0:0] in_memdep_3_paeth_avm_waitrequest,
    input wire [0:0] in_memdep_3_paeth_avm_readdatavalid,
    output wire [31:0] out_memdep_2_paeth_avm_address,
    output wire [0:0] out_memdep_2_paeth_avm_enable,
    output wire [0:0] out_memdep_2_paeth_avm_read,
    output wire [0:0] out_memdep_2_paeth_avm_write,
    output wire [15:0] out_memdep_2_paeth_avm_writedata,
    output wire [1:0] out_memdep_2_paeth_avm_byteenable,
    output wire [0:0] out_memdep_2_paeth_avm_burstcount,
    output wire [31:0] out_memdep_3_paeth_avm_address,
    output wire [0:0] out_memdep_3_paeth_avm_enable,
    output wire [0:0] out_memdep_3_paeth_avm_read,
    output wire [0:0] out_memdep_3_paeth_avm_write,
    output wire [15:0] out_memdep_3_paeth_avm_writedata,
    output wire [1:0] out_memdep_3_paeth_avm_byteenable,
    output wire [0:0] out_memdep_3_paeth_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_paeth1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_102260_q;
    wire [10:0] c_i11_162_q;
    wire [15:0] c_i16_058_q;
    wire [15:0] c_i16_102357_q;
    wire [31:0] c_i32_056_q;
    wire [31:0] c_i32_159_q;
    wire [3:0] c_i4_753_q;
    wire [63:0] c_paeth_a_pmem_q;
    wire [63:0] c_paeth_b_pmem_q;
    wire [63:0] c_paeth_c_pmem_q;
    wire [63:0] c_paeth_out_pmem_q;
    wire [63:0] i_arrayidx104_paeth22_vt_join_q;
    wire [62:0] i_arrayidx104_paeth22_vt_select_63_b;
    wire [63:0] i_arrayidx1_paeth16_vt_join_q;
    wire [62:0] i_arrayidx1_paeth16_vt_select_63_b;
    wire [63:0] i_arrayidx42_paeth18_vt_join_q;
    wire [62:0] i_arrayidx42_paeth18_vt_select_63_b;
    wire [63:0] i_arrayidx83_paeth20_vt_join_q;
    wire [62:0] i_arrayidx83_paeth20_vt_select_63_b;
    wire [3:0] i_cleanups_shl29_paeth5_vt_join_q;
    wire [2:0] i_cleanups_shl29_paeth5_vt_select_3_b;
    wire [15:0] i_conv_paeth14_q;
    wire [5:0] i_conv_paeth14_vt_const_15_q;
    wire [15:0] i_conv_paeth14_vt_join_q;
    wire [9:0] i_conv_paeth14_vt_select_9_b;
    wire [11:0] i_fpga_indvars_iv_next_paeth34_a;
    wire [11:0] i_fpga_indvars_iv_next_paeth34_b;
    logic [11:0] i_fpga_indvars_iv_next_paeth34_o;
    wire [11:0] i_fpga_indvars_iv_next_paeth34_q;
    wire [63:0] i_idxprom_paeth15_vt_join_q;
    wire [31:0] i_idxprom_paeth15_vt_select_31_b;
    wire [32:0] i_inc_paeth24_a;
    wire [32:0] i_inc_paeth24_b;
    logic [32:0] i_inc_paeth24_o;
    wire [32:0] i_inc_paeth24_q;
    wire [31:0] i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_paeth6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_paeth6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_paeth6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_paeth6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_paeth6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_paeth26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_paeth26_out_feedback_stall_out_10;
    wire [31:0] i_llvm_fpga_pop_i32_k_041_pop11_paeth12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_041_pop11_paeth12_out_feedback_stall_out_11;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups28_pop13_paeth2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups28_pop13_paeth2_out_feedback_stall_out_13;
    wire [3:0] i_llvm_fpga_pop_i4_initerations23_pop12_paeth7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations23_pop12_paeth7_out_feedback_stall_out_12;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push10_paeth35_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push10_paeth35_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration27_paeth11_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration27_paeth11_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond35_paeth30_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond35_paeth30_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_k_041_push11_paeth25_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_k_041_push11_paeth25_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i4_cleanups28_push13_paeth33_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i4_cleanups28_push13_paeth33_out_feedback_valid_out_13;
    wire [7:0] i_llvm_fpga_push_i4_initerations23_push12_paeth9_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i4_initerations23_push12_paeth9_out_feedback_valid_out_12;
    wire [0:0] i_masked34_paeth36_qi;
    reg [0:0] i_masked34_paeth36_q;
    wire [0:0] i_next_cleanups33_paeth32_s;
    reg [3:0] i_next_cleanups33_paeth32_q;
    wire [3:0] i_next_initerations24_paeth8_vt_join_q;
    wire [2:0] i_next_initerations24_paeth8_vt_select_2_b;
    wire [0:0] i_notcmp21_paeth29_q;
    wire [0:0] i_or32_paeth31_q;
    wire [0:0] i_xor31_paeth4_q;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next_paeth34_sel_x_b;
    wire [31:0] bgTrunc_i_inc_paeth24_sel_x_b;
    wire [64:0] i_arrayidx104_paeth0_add_x_a;
    wire [64:0] i_arrayidx104_paeth0_add_x_b;
    logic [64:0] i_arrayidx104_paeth0_add_x_o;
    wire [64:0] i_arrayidx104_paeth0_add_x_q;
    wire [127:0] i_arrayidx104_paeth0_mult_extender_x_q;
    wire [61:0] i_arrayidx104_paeth0_mult_multconst_x_q;
    wire [63:0] i_arrayidx104_paeth0_trunc_sel_x_b;
    wire [63:0] i_arrayidx104_paeth0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx1_paeth0_add_x_a;
    wire [64:0] i_arrayidx1_paeth0_add_x_b;
    logic [64:0] i_arrayidx1_paeth0_add_x_o;
    wire [64:0] i_arrayidx1_paeth0_add_x_q;
    wire [127:0] i_arrayidx1_paeth0_mult_extender_x_q;
    wire [63:0] i_arrayidx1_paeth0_trunc_sel_x_b;
    wire [63:0] i_arrayidx1_paeth0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx42_paeth0_add_x_a;
    wire [64:0] i_arrayidx42_paeth0_add_x_b;
    logic [64:0] i_arrayidx42_paeth0_add_x_o;
    wire [64:0] i_arrayidx42_paeth0_add_x_q;
    wire [127:0] i_arrayidx42_paeth0_mult_extender_x_q;
    wire [63:0] i_arrayidx42_paeth0_trunc_sel_x_b;
    wire [63:0] i_arrayidx42_paeth0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx83_paeth0_add_x_a;
    wire [64:0] i_arrayidx83_paeth0_add_x_b;
    logic [64:0] i_arrayidx83_paeth0_add_x_o;
    wire [64:0] i_arrayidx83_paeth0_add_x_q;
    wire [127:0] i_arrayidx83_paeth0_mult_extender_x_q;
    wire [63:0] i_arrayidx83_paeth0_trunc_sel_x_b;
    wire [63:0] i_arrayidx83_paeth0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup30_paeth3_sel_x_b;
    wire [63:0] i_idxprom_paeth15_sel_x_b;
    wire [0:0] i_last_initeration26_paeth10_sel_x_b;
    wire [15:0] i_unnamed_paeth13_sel_x_b;
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
    wire [0:0] i_exitcond_paeth27_cmp_nsign_q;
    wire [35:0] i_arrayidx104_paeth0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx104_paeth0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx104_paeth0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx104_paeth0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx104_paeth0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx104_paeth0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx104_paeth0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx104_paeth0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx104_paeth0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx104_paeth0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx104_paeth0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx104_paeth0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx1_paeth0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx1_paeth0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx1_paeth0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx1_paeth0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx1_paeth0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx1_paeth0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx1_paeth0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx1_paeth0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx1_paeth0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx1_paeth0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx1_paeth0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx1_paeth0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx42_paeth0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx42_paeth0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx42_paeth0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx42_paeth0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx42_paeth0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx42_paeth0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx42_paeth0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx42_paeth0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx42_paeth0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx42_paeth0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx42_paeth0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx42_paeth0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx83_paeth0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx83_paeth0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx83_paeth0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx83_paeth0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx83_paeth0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx83_paeth0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx83_paeth0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx83_paeth0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx83_paeth0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx83_paeth0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx83_paeth0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx83_paeth0_mult_x_sums_result_add_0_0_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid251_i_cleanups_shl29_paeth0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid251_i_cleanups_shl29_paeth0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid252_i_cleanups_shl29_paeth0_shift_x_q;
    wire [0:0] leftShiftStage0_uid254_i_cleanups_shl29_paeth0_shift_x_s;
    reg [3:0] leftShiftStage0_uid254_i_cleanups_shl29_paeth0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid258_i_next_initerations24_paeth0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid260_i_next_initerations24_paeth0_shift_x_q;
    wire [0:0] rightShiftStage0_uid262_i_next_initerations24_paeth0_shift_x_s;
    reg [3:0] rightShiftStage0_uid262_i_next_initerations24_paeth0_shift_x_q;
    wire [10:0] i_arrayidx104_paeth0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx104_paeth0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx104_paeth0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx104_paeth0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx104_paeth0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx104_paeth0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx104_paeth0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx104_paeth0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx1_paeth0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx1_paeth0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx1_paeth0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx1_paeth0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx1_paeth0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx1_paeth0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx1_paeth0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx1_paeth0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx42_paeth0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx42_paeth0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx42_paeth0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx42_paeth0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx42_paeth0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx42_paeth0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx42_paeth0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx42_paeth0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx83_paeth0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx83_paeth0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx83_paeth0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx83_paeth0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx83_paeth0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx83_paeth0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx83_paeth0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx83_paeth0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together77_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together77_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist2_sync_together77_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together77_aunroll_x_in_i_valid_2_q;
    reg [31:0] redist4_i_llvm_fpga_pop_i32_k_041_pop11_paeth12_out_data_out_1_q;
    reg [0:0] redist5_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_1_q;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_2_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_3_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together77_aunroll_x_in_i_valid_1(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together77_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together77_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together77_aunroll_x_in_i_valid_2(DELAY,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together77_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist3_sync_together77_aunroll_x_in_i_valid_2_q <= $unsigned(redist2_sync_together77_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist5_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_1(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out);
        end
    end

    // redist6_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_2(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_2_q <= $unsigned(redist5_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid251_i_cleanups_shl29_paeth0_shift_x(BITSELECT,250)@3
    assign leftShiftStage0Idx1Rng1_uid251_i_cleanups_shl29_paeth0_shift_x_in = i_llvm_fpga_pop_i4_cleanups28_pop13_paeth2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid251_i_cleanups_shl29_paeth0_shift_x_b = leftShiftStage0Idx1Rng1_uid251_i_cleanups_shl29_paeth0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid252_i_cleanups_shl29_paeth0_shift_x(BITJOIN,251)@3
    assign leftShiftStage0Idx1_uid252_i_cleanups_shl29_paeth0_shift_x_q = {leftShiftStage0Idx1Rng1_uid251_i_cleanups_shl29_paeth0_shift_x_b, GND_q};

    // leftShiftStage0_uid254_i_cleanups_shl29_paeth0_shift_x(MUX,253)@3
    assign leftShiftStage0_uid254_i_cleanups_shl29_paeth0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid254_i_cleanups_shl29_paeth0_shift_x_s or i_llvm_fpga_pop_i4_cleanups28_pop13_paeth2_out_data_out or leftShiftStage0Idx1_uid252_i_cleanups_shl29_paeth0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid254_i_cleanups_shl29_paeth0_shift_x_s)
            1'b0 : leftShiftStage0_uid254_i_cleanups_shl29_paeth0_shift_x_q = i_llvm_fpga_pop_i4_cleanups28_pop13_paeth2_out_data_out;
            1'b1 : leftShiftStage0_uid254_i_cleanups_shl29_paeth0_shift_x_q = leftShiftStage0Idx1_uid252_i_cleanups_shl29_paeth0_shift_x_q;
            default : leftShiftStage0_uid254_i_cleanups_shl29_paeth0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl29_paeth5_vt_select_3(BITSELECT,48)@3
    assign i_cleanups_shl29_paeth5_vt_select_3_b = leftShiftStage0_uid254_i_cleanups_shl29_paeth0_shift_x_q[3:1];

    // i_cleanups_shl29_paeth5_vt_join(BITJOIN,47)@3
    assign i_cleanups_shl29_paeth5_vt_join_q = {i_cleanups_shl29_paeth5_vt_select_3_b, GND_q};

    // i_xor31_paeth4(LOGICAL,85)@3
    assign i_xor31_paeth4_q = i_first_cleanup30_paeth3_sel_x_b ^ VCC_q;

    // i_notcmp21_paeth29(LOGICAL,82)@3
    assign i_notcmp21_paeth29_q = i_exitcond_paeth27_cmp_nsign_q ^ VCC_q;

    // i_or32_paeth31(LOGICAL,83)@3
    assign i_or32_paeth31_q = i_notcmp21_paeth29_q | i_xor31_paeth4_q;

    // i_next_cleanups33_paeth32(MUX,78)@3
    assign i_next_cleanups33_paeth32_s = i_or32_paeth31_q;
    always @(i_next_cleanups33_paeth32_s or i_llvm_fpga_pop_i4_cleanups28_pop13_paeth2_out_data_out or i_cleanups_shl29_paeth5_vt_join_q)
    begin
        unique case (i_next_cleanups33_paeth32_s)
            1'b0 : i_next_cleanups33_paeth32_q = i_llvm_fpga_pop_i4_cleanups28_pop13_paeth2_out_data_out;
            1'b1 : i_next_cleanups33_paeth32_q = i_cleanups_shl29_paeth5_vt_join_q;
            default : i_next_cleanups33_paeth32_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups28_push13_paeth33(BLACKBOX,75)@3
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    paeth_i_llvm_fpga_push_i4_cleanups28_push13_0 thei_llvm_fpga_push_i4_cleanups28_push13_paeth33 (
        .in_data_in(i_next_cleanups33_paeth32_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i4_cleanups28_pop13_paeth2_out_feedback_stall_out_13),
        .in_keep_going25(redist6_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together77_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i4_cleanups28_push13_paeth33_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i4_cleanups28_push13_paeth33_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together77_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together77_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together77_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist1_sync_together77_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together77_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together77_aunroll_x_in_c0_eni1_1_tpl_2_q <= $unsigned(redist0_sync_together77_aunroll_x_in_c0_eni1_1_tpl_1_q);
        end
    end

    // c_i4_753(CONSTANT,27)
    assign c_i4_753_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups28_pop13_paeth2(BLACKBOX,69)@3
    // out out_feedback_stall_out_13@20000000
    paeth_i_llvm_fpga_pop_i4_cleanups28_pop13_0 thei_llvm_fpga_pop_i4_cleanups28_pop13_paeth2 (
        .in_data_in(c_i4_753_q),
        .in_dir(redist1_sync_together77_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_13(i_llvm_fpga_push_i4_cleanups28_push13_paeth33_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i4_cleanups28_push13_paeth33_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together77_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups28_pop13_paeth2_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i4_cleanups28_pop13_paeth2_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup30_paeth3_sel_x(BITSELECT,145)@3
    assign i_first_cleanup30_paeth3_sel_x_b = i_llvm_fpga_pop_i4_cleanups28_pop13_paeth2_out_data_out[0:0];

    // c_i11_162(CONSTANT,5)
    assign c_i11_162_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next_paeth34(ADD,55)@3
    assign i_fpga_indvars_iv_next_paeth34_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_paeth26_out_data_out};
    assign i_fpga_indvars_iv_next_paeth34_b = {1'b0, c_i11_162_q};
    assign i_fpga_indvars_iv_next_paeth34_o = $unsigned(i_fpga_indvars_iv_next_paeth34_a) + $unsigned(i_fpga_indvars_iv_next_paeth34_b);
    assign i_fpga_indvars_iv_next_paeth34_q = i_fpga_indvars_iv_next_paeth34_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next_paeth34_sel_x(BITSELECT,91)@3
    assign bgTrunc_i_fpga_indvars_iv_next_paeth34_sel_x_b = i_fpga_indvars_iv_next_paeth34_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push10_paeth35(BLACKBOX,71)@3
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    paeth_i_llvm_fpga_push_i11_fpga_indvars_iv_push10_0 thei_llvm_fpga_push_i11_fpga_indvars_iv_push10_paeth35 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_paeth34_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_paeth26_out_feedback_stall_out_10),
        .in_keep_going25(redist6_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together77_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i11_fpga_indvars_iv_push10_paeth35_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i11_fpga_indvars_iv_push10_paeth35_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_102260(CONSTANT,4)
    assign c_i11_102260_q = $unsigned(11'b01111111110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_paeth26(BLACKBOX,67)@3
    // out out_feedback_stall_out_10@20000000
    paeth_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_paeth26 (
        .in_data_in(c_i11_102260_q),
        .in_dir(redist1_sync_together77_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_10(i_llvm_fpga_push_i11_fpga_indvars_iv_push10_paeth35_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i11_fpga_indvars_iv_push10_paeth35_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together77_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_paeth26_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_paeth26_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_paeth27_cmp_nsign(LOGICAL,174)@3
    assign i_exitcond_paeth27_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv_pop10_paeth26_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond35_paeth30(BLACKBOX,73)@3
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    paeth_i_llvm_fpga_push_i1_notexitcond35_0 thei_llvm_fpga_push_i1_notexitcond35_paeth30 (
        .in_data_in(i_exitcond_paeth27_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going25_paeth6_out_not_exitcond_stall_out),
        .in_first_cleanup30(i_first_cleanup30_paeth3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together77_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond35_paeth30_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond35_paeth30_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,158)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid258_i_next_initerations24_paeth0_shift_x(BITSELECT,257)@2
    assign rightShiftStage0Idx1Rng1_uid258_i_next_initerations24_paeth0_shift_x_b = i_llvm_fpga_pop_i4_initerations23_pop12_paeth7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid260_i_next_initerations24_paeth0_shift_x(BITJOIN,259)@2
    assign rightShiftStage0Idx1_uid260_i_next_initerations24_paeth0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid258_i_next_initerations24_paeth0_shift_x_b};

    // valid_fanout_reg1(REG,156)@1 + 1
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

    // valid_fanout_reg2(REG,157)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations23_push12_paeth9(BLACKBOX,76)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    paeth_i_llvm_fpga_push_i4_initerations23_push12_0 thei_llvm_fpga_push_i4_initerations23_push12_paeth9 (
        .in_data_in(i_next_initerations24_paeth8_vt_join_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i4_initerations23_pop12_paeth7_out_feedback_stall_out_12),
        .in_keep_going25(redist5_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i4_initerations23_push12_paeth9_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i4_initerations23_push12_paeth9_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations23_pop12_paeth7(BLACKBOX,70)@2
    // out out_feedback_stall_out_12@20000000
    paeth_i_llvm_fpga_pop_i4_initerations23_pop12_0 thei_llvm_fpga_pop_i4_initerations23_pop12_paeth7 (
        .in_data_in(c_i4_753_q),
        .in_dir(redist0_sync_together77_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i4_initerations23_push12_paeth9_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i4_initerations23_push12_paeth9_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations23_pop12_paeth7_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i4_initerations23_pop12_paeth7_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid262_i_next_initerations24_paeth0_shift_x(MUX,261)@2
    assign rightShiftStage0_uid262_i_next_initerations24_paeth0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid262_i_next_initerations24_paeth0_shift_x_s or i_llvm_fpga_pop_i4_initerations23_pop12_paeth7_out_data_out or rightShiftStage0Idx1_uid260_i_next_initerations24_paeth0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid262_i_next_initerations24_paeth0_shift_x_s)
            1'b0 : rightShiftStage0_uid262_i_next_initerations24_paeth0_shift_x_q = i_llvm_fpga_pop_i4_initerations23_pop12_paeth7_out_data_out;
            1'b1 : rightShiftStage0_uid262_i_next_initerations24_paeth0_shift_x_q = rightShiftStage0Idx1_uid260_i_next_initerations24_paeth0_shift_x_q;
            default : rightShiftStage0_uid262_i_next_initerations24_paeth0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations24_paeth8_vt_select_2(BITSELECT,81)@2
    assign i_next_initerations24_paeth8_vt_select_2_b = rightShiftStage0_uid262_i_next_initerations24_paeth0_shift_x_q[2:0];

    // i_next_initerations24_paeth8_vt_join(BITJOIN,80)@2
    assign i_next_initerations24_paeth8_vt_join_q = {GND_q, i_next_initerations24_paeth8_vt_select_2_b};

    // i_last_initeration26_paeth10_sel_x(BITSELECT,147)@2
    assign i_last_initeration26_paeth10_sel_x_b = i_next_initerations24_paeth8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration27_paeth11(BLACKBOX,72)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    paeth_i_llvm_fpga_push_i1_lastiniteration27_0 thei_llvm_fpga_push_i1_lastiniteration27_paeth11 (
        .in_data_in(i_last_initeration26_paeth10_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going25_paeth6_out_initeration_stall_out),
        .in_keep_going25(redist5_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration27_paeth11_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration27_paeth11_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going25_paeth6(BLACKBOX,66)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    paeth_i_llvm_fpga_pipeline_keep_going25_0 thei_llvm_fpga_pipeline_keep_going25_paeth6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration27_paeth11_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration27_paeth11_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond35_paeth30_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond35_paeth30_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going25_paeth6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going25_paeth6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going25_paeth6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going25_paeth6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going25_paeth6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,33)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_paeth6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going25_paeth6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_paeth6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going25_paeth6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,88)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going25_paeth6_out_pipeline_valid_out;

    // i_conv_paeth14_vt_const_15(CONSTANT,50)
    assign i_conv_paeth14_vt_const_15_q = $unsigned(6'b000000);

    // c_i16_102357(CONSTANT,7)
    assign c_i16_102357_q = $unsigned(16'b0000001111111111);

    // valid_fanout_reg4(REG,159)@1 + 1
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

    // valid_fanout_reg9(REG,164)@1 + 1
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

    // c_i32_159(CONSTANT,25)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_paeth24(ADD,60)@2
    assign i_inc_paeth24_a = {1'b0, i_llvm_fpga_pop_i32_k_041_pop11_paeth12_out_data_out};
    assign i_inc_paeth24_b = {1'b0, c_i32_159_q};
    assign i_inc_paeth24_o = $unsigned(i_inc_paeth24_a) + $unsigned(i_inc_paeth24_b);
    assign i_inc_paeth24_q = i_inc_paeth24_o[32:0];

    // bgTrunc_i_inc_paeth24_sel_x(BITSELECT,92)@2
    assign bgTrunc_i_inc_paeth24_sel_x_b = i_inc_paeth24_q[31:0];

    // i_llvm_fpga_push_i32_k_041_push11_paeth25(BLACKBOX,74)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    paeth_i_llvm_fpga_push_i32_k_041_push11_0 thei_llvm_fpga_push_i32_k_041_push11_paeth25 (
        .in_data_in(bgTrunc_i_inc_paeth24_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_k_041_pop11_paeth12_out_feedback_stall_out_11),
        .in_keep_going25(redist5_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_k_041_push11_paeth25_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_k_041_push11_paeth25_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_056(CONSTANT,24)
    assign c_i32_056_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_041_pop11_paeth12(BLACKBOX,68)@2
    // out out_feedback_stall_out_11@20000000
    paeth_i_llvm_fpga_pop_i32_k_041_pop11_0 thei_llvm_fpga_pop_i32_k_041_pop11_paeth12 (
        .in_data_in(c_i32_056_q),
        .in_dir(redist0_sync_together77_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_k_041_push11_paeth25_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_k_041_push11_paeth25_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_041_pop11_paeth12_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_k_041_pop11_paeth12_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i32_k_041_pop11_paeth12_out_data_out_1(DELAY,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_k_041_pop11_paeth12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i32_k_041_pop11_paeth12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k_041_pop11_paeth12_out_data_out);
        end
    end

    // i_unnamed_paeth13_sel_x(BITSELECT,152)@3
    assign i_unnamed_paeth13_sel_x_b = redist4_i_llvm_fpga_pop_i32_k_041_pop11_paeth12_out_data_out_1_q[15:0];

    // i_conv_paeth14(LOGICAL,49)@3
    assign i_conv_paeth14_q = i_unnamed_paeth13_sel_x_b & c_i16_102357_q;

    // i_conv_paeth14_vt_select_9(BITSELECT,52)@3
    assign i_conv_paeth14_vt_select_9_b = i_conv_paeth14_q[9:0];

    // i_conv_paeth14_vt_join(BITJOIN,51)@3
    assign i_conv_paeth14_vt_join_q = {i_conv_paeth14_vt_const_15_q, i_conv_paeth14_vt_select_9_b};

    // valid_fanout_reg5(REG,160)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together77_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx104_paeth0_mult_multconst_x(CONSTANT,108)
    assign i_arrayidx104_paeth0_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // i_idxprom_paeth15_sel_x(BITSELECT,146)@3
    assign i_idxprom_paeth15_sel_x_b = {32'b00000000000000000000000000000000, redist4_i_llvm_fpga_pop_i32_k_041_pop11_paeth12_out_data_out_1_q[31:0]};

    // i_idxprom_paeth15_vt_select_31(BITSELECT,59)@3
    assign i_idxprom_paeth15_vt_select_31_b = i_idxprom_paeth15_sel_x_b[31:0];

    // i_idxprom_paeth15_vt_join(BITJOIN,58)@3
    assign i_idxprom_paeth15_vt_join_q = {c_i32_056_q, i_idxprom_paeth15_vt_select_31_b};

    // i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select(BITSELECT,279)@3
    assign i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_b = i_idxprom_paeth15_vt_join_q[63:54];
    assign i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_c = i_idxprom_paeth15_vt_join_q[53:36];
    assign i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_d = i_idxprom_paeth15_vt_join_q[35:18];
    assign i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_e = i_idxprom_paeth15_vt_join_q[17:0];

    // i_arrayidx1_paeth0_mult_x_im0_shift0(BITSHIFT,267)@3
    assign i_arrayidx1_paeth0_mult_x_im0_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx1_paeth0_mult_x_im0_shift0_q = i_arrayidx1_paeth0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx1_paeth0_mult_x_sums_align_3(BITSHIFT,208)@3
    assign i_arrayidx1_paeth0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx1_paeth0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx1_paeth0_mult_x_sums_align_3_q = i_arrayidx1_paeth0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx1_paeth0_mult_x_im6_shift0(BITSHIFT,269)@3
    assign i_arrayidx1_paeth0_mult_x_im6_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx1_paeth0_mult_x_im6_shift0_q = i_arrayidx1_paeth0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx1_paeth0_mult_x_sums_align_2(BITSHIFT,207)@3
    assign i_arrayidx1_paeth0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx1_paeth0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx1_paeth0_mult_x_sums_align_2_q = i_arrayidx1_paeth0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx1_paeth0_mult_x_sums_join_4(BITJOIN,209)@3
    assign i_arrayidx1_paeth0_mult_x_sums_join_4_q = {i_arrayidx1_paeth0_mult_x_sums_align_3_q, i_arrayidx1_paeth0_mult_x_sums_align_2_q};

    // i_arrayidx1_paeth0_mult_x_im3_shift0(BITSHIFT,268)@3
    assign i_arrayidx1_paeth0_mult_x_im3_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx1_paeth0_mult_x_im3_shift0_q = i_arrayidx1_paeth0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx1_paeth0_mult_x_sums_align_0(BITSHIFT,205)@3
    assign i_arrayidx1_paeth0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx1_paeth0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx1_paeth0_mult_x_sums_align_0_q = i_arrayidx1_paeth0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx1_paeth0_mult_x_im9_shift0(BITSHIFT,270)@3
    assign i_arrayidx1_paeth0_mult_x_im9_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx1_paeth0_mult_x_im9_shift0_q = i_arrayidx1_paeth0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx1_paeth0_mult_x_sums_join_1(BITJOIN,206)@3
    assign i_arrayidx1_paeth0_mult_x_sums_join_1_q = {i_arrayidx1_paeth0_mult_x_sums_align_0_q, {1'b0, i_arrayidx1_paeth0_mult_x_im9_shift0_q}};

    // i_arrayidx1_paeth0_mult_x_sums_result_add_0_0(ADD,210)@3
    assign i_arrayidx1_paeth0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx1_paeth0_mult_x_sums_join_1_q};
    assign i_arrayidx1_paeth0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx1_paeth0_mult_x_sums_join_4_q};
    assign i_arrayidx1_paeth0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx1_paeth0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx1_paeth0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx1_paeth0_mult_x_sums_result_add_0_0_q = i_arrayidx1_paeth0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx1_paeth0_mult_extender_x(BITJOIN,117)@3
    assign i_arrayidx1_paeth0_mult_extender_x_q = {i_arrayidx104_paeth0_mult_multconst_x_q, i_arrayidx1_paeth0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx1_paeth0_trunc_sel_x(BITSELECT,119)@3
    assign i_arrayidx1_paeth0_trunc_sel_x_b = i_arrayidx1_paeth0_mult_extender_x_q[63:0];

    // c_paeth_a_pmem(CONSTANT,28)
    assign c_paeth_a_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx1_paeth0_add_x(ADD,111)@3
    assign i_arrayidx1_paeth0_add_x_a = {1'b0, c_paeth_a_pmem_q};
    assign i_arrayidx1_paeth0_add_x_b = {1'b0, i_arrayidx1_paeth0_trunc_sel_x_b};
    assign i_arrayidx1_paeth0_add_x_o = $unsigned(i_arrayidx1_paeth0_add_x_a) + $unsigned(i_arrayidx1_paeth0_add_x_b);
    assign i_arrayidx1_paeth0_add_x_q = i_arrayidx1_paeth0_add_x_o[64:0];

    // i_arrayidx1_paeth0_dupName_0_trunc_sel_x(BITSELECT,120)@3
    assign i_arrayidx1_paeth0_dupName_0_trunc_sel_x_b = i_arrayidx1_paeth0_add_x_q[63:0];

    // i_arrayidx1_paeth16_vt_select_63(BITSELECT,39)@3
    assign i_arrayidx1_paeth16_vt_select_63_b = i_arrayidx1_paeth0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx1_paeth16_vt_join(BITJOIN,38)@3
    assign i_arrayidx1_paeth16_vt_join_q = {i_arrayidx1_paeth16_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_paeth17(BLACKBOX,65)@3
    // out out_memdep_paeth_avm_address@20000000
    // out out_memdep_paeth_avm_burstcount@20000000
    // out out_memdep_paeth_avm_byteenable@20000000
    // out out_memdep_paeth_avm_enable@20000000
    // out out_memdep_paeth_avm_read@20000000
    // out out_memdep_paeth_avm_write@20000000
    // out out_memdep_paeth_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    paeth_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_paeth17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_paeth16_vt_join_q),
        .in_i_predicate(i_xor31_paeth4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_i_writedata(i_conv_paeth14_vt_join_q),
        .in_memdep_paeth_avm_readdata(in_memdep_paeth_avm_readdata),
        .in_memdep_paeth_avm_readdatavalid(in_memdep_paeth_avm_readdatavalid),
        .in_memdep_paeth_avm_waitrequest(in_memdep_paeth_avm_waitrequest),
        .in_memdep_paeth_avm_writeack(in_memdep_paeth_avm_writeack),
        .out_memdep_paeth_avm_address(i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_address),
        .out_memdep_paeth_avm_burstcount(i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_burstcount),
        .out_memdep_paeth_avm_byteenable(i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_byteenable),
        .out_memdep_paeth_avm_enable(i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_enable),
        .out_memdep_paeth_avm_read(i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_read),
        .out_memdep_paeth_avm_write(i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_write),
        .out_memdep_paeth_avm_writedata(i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,95)
    assign out_memdep_paeth_avm_address = i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_address;
    assign out_memdep_paeth_avm_enable = i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_enable;
    assign out_memdep_paeth_avm_read = i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_read;
    assign out_memdep_paeth_avm_write = i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_write;
    assign out_memdep_paeth_avm_writedata = i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_writedata;
    assign out_memdep_paeth_avm_byteenable = i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_byteenable;
    assign out_memdep_paeth_avm_burstcount = i_llvm_fpga_mem_memdep_paeth17_out_memdep_paeth_avm_burstcount;

    // valid_fanout_reg6(REG,161)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist2_sync_together77_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx42_paeth0_mult_x_im0_shift0(BITSHIFT,271)@3
    assign i_arrayidx42_paeth0_mult_x_im0_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx42_paeth0_mult_x_im0_shift0_q = i_arrayidx42_paeth0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx42_paeth0_mult_x_sums_align_3(BITSHIFT,226)@3
    assign i_arrayidx42_paeth0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx42_paeth0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx42_paeth0_mult_x_sums_align_3_q = i_arrayidx42_paeth0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx42_paeth0_mult_x_im6_shift0(BITSHIFT,273)@3
    assign i_arrayidx42_paeth0_mult_x_im6_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx42_paeth0_mult_x_im6_shift0_q = i_arrayidx42_paeth0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx42_paeth0_mult_x_sums_align_2(BITSHIFT,225)@3
    assign i_arrayidx42_paeth0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx42_paeth0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx42_paeth0_mult_x_sums_align_2_q = i_arrayidx42_paeth0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx42_paeth0_mult_x_sums_join_4(BITJOIN,227)@3
    assign i_arrayidx42_paeth0_mult_x_sums_join_4_q = {i_arrayidx42_paeth0_mult_x_sums_align_3_q, i_arrayidx42_paeth0_mult_x_sums_align_2_q};

    // i_arrayidx42_paeth0_mult_x_im3_shift0(BITSHIFT,272)@3
    assign i_arrayidx42_paeth0_mult_x_im3_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx42_paeth0_mult_x_im3_shift0_q = i_arrayidx42_paeth0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx42_paeth0_mult_x_sums_align_0(BITSHIFT,223)@3
    assign i_arrayidx42_paeth0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx42_paeth0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx42_paeth0_mult_x_sums_align_0_q = i_arrayidx42_paeth0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx42_paeth0_mult_x_im9_shift0(BITSHIFT,274)@3
    assign i_arrayidx42_paeth0_mult_x_im9_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx42_paeth0_mult_x_im9_shift0_q = i_arrayidx42_paeth0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx42_paeth0_mult_x_sums_join_1(BITJOIN,224)@3
    assign i_arrayidx42_paeth0_mult_x_sums_join_1_q = {i_arrayidx42_paeth0_mult_x_sums_align_0_q, {1'b0, i_arrayidx42_paeth0_mult_x_im9_shift0_q}};

    // i_arrayidx42_paeth0_mult_x_sums_result_add_0_0(ADD,228)@3
    assign i_arrayidx42_paeth0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx42_paeth0_mult_x_sums_join_1_q};
    assign i_arrayidx42_paeth0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx42_paeth0_mult_x_sums_join_4_q};
    assign i_arrayidx42_paeth0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx42_paeth0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx42_paeth0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx42_paeth0_mult_x_sums_result_add_0_0_q = i_arrayidx42_paeth0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx42_paeth0_mult_extender_x(BITJOIN,127)@3
    assign i_arrayidx42_paeth0_mult_extender_x_q = {i_arrayidx104_paeth0_mult_multconst_x_q, i_arrayidx42_paeth0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx42_paeth0_trunc_sel_x(BITSELECT,129)@3
    assign i_arrayidx42_paeth0_trunc_sel_x_b = i_arrayidx42_paeth0_mult_extender_x_q[63:0];

    // c_paeth_b_pmem(CONSTANT,29)
    assign c_paeth_b_pmem_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // i_arrayidx42_paeth0_add_x(ADD,121)@3
    assign i_arrayidx42_paeth0_add_x_a = {1'b0, c_paeth_b_pmem_q};
    assign i_arrayidx42_paeth0_add_x_b = {1'b0, i_arrayidx42_paeth0_trunc_sel_x_b};
    assign i_arrayidx42_paeth0_add_x_o = $unsigned(i_arrayidx42_paeth0_add_x_a) + $unsigned(i_arrayidx42_paeth0_add_x_b);
    assign i_arrayidx42_paeth0_add_x_q = i_arrayidx42_paeth0_add_x_o[64:0];

    // i_arrayidx42_paeth0_dupName_0_trunc_sel_x(BITSELECT,130)@3
    assign i_arrayidx42_paeth0_dupName_0_trunc_sel_x_b = i_arrayidx42_paeth0_add_x_q[63:0];

    // i_arrayidx42_paeth18_vt_select_63(BITSELECT,42)@3
    assign i_arrayidx42_paeth18_vt_select_63_b = i_arrayidx42_paeth0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx42_paeth18_vt_join(BITJOIN,41)@3
    assign i_arrayidx42_paeth18_vt_join_q = {i_arrayidx42_paeth18_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_1_paeth19(BLACKBOX,62)@3
    // out out_memdep_1_paeth_avm_address@20000000
    // out out_memdep_1_paeth_avm_burstcount@20000000
    // out out_memdep_1_paeth_avm_byteenable@20000000
    // out out_memdep_1_paeth_avm_enable@20000000
    // out out_memdep_1_paeth_avm_read@20000000
    // out out_memdep_1_paeth_avm_write@20000000
    // out out_memdep_1_paeth_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    paeth_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_paeth19 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx42_paeth18_vt_join_q),
        .in_i_predicate(i_xor31_paeth4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_i_writedata(i_conv_paeth14_vt_join_q),
        .in_memdep_1_paeth_avm_readdata(in_memdep_1_paeth_avm_readdata),
        .in_memdep_1_paeth_avm_readdatavalid(in_memdep_1_paeth_avm_readdatavalid),
        .in_memdep_1_paeth_avm_waitrequest(in_memdep_1_paeth_avm_waitrequest),
        .in_memdep_1_paeth_avm_writeack(in_memdep_1_paeth_avm_writeack),
        .out_memdep_1_paeth_avm_address(i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_address),
        .out_memdep_1_paeth_avm_burstcount(i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_burstcount),
        .out_memdep_1_paeth_avm_byteenable(i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_byteenable),
        .out_memdep_1_paeth_avm_enable(i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_enable),
        .out_memdep_1_paeth_avm_read(i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_read),
        .out_memdep_1_paeth_avm_write(i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_write),
        .out_memdep_1_paeth_avm_writedata(i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,97)
    assign out_memdep_1_paeth_avm_address = i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_address;
    assign out_memdep_1_paeth_avm_enable = i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_enable;
    assign out_memdep_1_paeth_avm_read = i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_read;
    assign out_memdep_1_paeth_avm_write = i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_write;
    assign out_memdep_1_paeth_avm_writedata = i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_writedata;
    assign out_memdep_1_paeth_avm_byteenable = i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_byteenable;
    assign out_memdep_1_paeth_avm_burstcount = i_llvm_fpga_mem_memdep_1_paeth19_out_memdep_1_paeth_avm_burstcount;

    // valid_fanout_reg7(REG,162)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist2_sync_together77_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx83_paeth0_mult_x_im0_shift0(BITSHIFT,275)@3
    assign i_arrayidx83_paeth0_mult_x_im0_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx83_paeth0_mult_x_im0_shift0_q = i_arrayidx83_paeth0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx83_paeth0_mult_x_sums_align_3(BITSHIFT,244)@3
    assign i_arrayidx83_paeth0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx83_paeth0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx83_paeth0_mult_x_sums_align_3_q = i_arrayidx83_paeth0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx83_paeth0_mult_x_im6_shift0(BITSHIFT,277)@3
    assign i_arrayidx83_paeth0_mult_x_im6_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx83_paeth0_mult_x_im6_shift0_q = i_arrayidx83_paeth0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx83_paeth0_mult_x_sums_align_2(BITSHIFT,243)@3
    assign i_arrayidx83_paeth0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx83_paeth0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx83_paeth0_mult_x_sums_align_2_q = i_arrayidx83_paeth0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx83_paeth0_mult_x_sums_join_4(BITJOIN,245)@3
    assign i_arrayidx83_paeth0_mult_x_sums_join_4_q = {i_arrayidx83_paeth0_mult_x_sums_align_3_q, i_arrayidx83_paeth0_mult_x_sums_align_2_q};

    // i_arrayidx83_paeth0_mult_x_im3_shift0(BITSHIFT,276)@3
    assign i_arrayidx83_paeth0_mult_x_im3_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx83_paeth0_mult_x_im3_shift0_q = i_arrayidx83_paeth0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx83_paeth0_mult_x_sums_align_0(BITSHIFT,241)@3
    assign i_arrayidx83_paeth0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx83_paeth0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx83_paeth0_mult_x_sums_align_0_q = i_arrayidx83_paeth0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx83_paeth0_mult_x_im9_shift0(BITSHIFT,278)@3
    assign i_arrayidx83_paeth0_mult_x_im9_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx83_paeth0_mult_x_im9_shift0_q = i_arrayidx83_paeth0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx83_paeth0_mult_x_sums_join_1(BITJOIN,242)@3
    assign i_arrayidx83_paeth0_mult_x_sums_join_1_q = {i_arrayidx83_paeth0_mult_x_sums_align_0_q, {1'b0, i_arrayidx83_paeth0_mult_x_im9_shift0_q}};

    // i_arrayidx83_paeth0_mult_x_sums_result_add_0_0(ADD,246)@3
    assign i_arrayidx83_paeth0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx83_paeth0_mult_x_sums_join_1_q};
    assign i_arrayidx83_paeth0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx83_paeth0_mult_x_sums_join_4_q};
    assign i_arrayidx83_paeth0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx83_paeth0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx83_paeth0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx83_paeth0_mult_x_sums_result_add_0_0_q = i_arrayidx83_paeth0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx83_paeth0_mult_extender_x(BITJOIN,137)@3
    assign i_arrayidx83_paeth0_mult_extender_x_q = {i_arrayidx104_paeth0_mult_multconst_x_q, i_arrayidx83_paeth0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx83_paeth0_trunc_sel_x(BITSELECT,139)@3
    assign i_arrayidx83_paeth0_trunc_sel_x_b = i_arrayidx83_paeth0_mult_extender_x_q[63:0];

    // c_paeth_c_pmem(CONSTANT,30)
    assign c_paeth_c_pmem_q = $unsigned(64'b0100000000001000000000000000000000000000000000000000000000000000);

    // i_arrayidx83_paeth0_add_x(ADD,131)@3
    assign i_arrayidx83_paeth0_add_x_a = {1'b0, c_paeth_c_pmem_q};
    assign i_arrayidx83_paeth0_add_x_b = {1'b0, i_arrayidx83_paeth0_trunc_sel_x_b};
    assign i_arrayidx83_paeth0_add_x_o = $unsigned(i_arrayidx83_paeth0_add_x_a) + $unsigned(i_arrayidx83_paeth0_add_x_b);
    assign i_arrayidx83_paeth0_add_x_q = i_arrayidx83_paeth0_add_x_o[64:0];

    // i_arrayidx83_paeth0_dupName_0_trunc_sel_x(BITSELECT,140)@3
    assign i_arrayidx83_paeth0_dupName_0_trunc_sel_x_b = i_arrayidx83_paeth0_add_x_q[63:0];

    // i_arrayidx83_paeth20_vt_select_63(BITSELECT,45)@3
    assign i_arrayidx83_paeth20_vt_select_63_b = i_arrayidx83_paeth0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx83_paeth20_vt_join(BITJOIN,44)@3
    assign i_arrayidx83_paeth20_vt_join_q = {i_arrayidx83_paeth20_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_2_paeth21(BLACKBOX,63)@3
    // out out_memdep_2_paeth_avm_address@20000000
    // out out_memdep_2_paeth_avm_burstcount@20000000
    // out out_memdep_2_paeth_avm_byteenable@20000000
    // out out_memdep_2_paeth_avm_enable@20000000
    // out out_memdep_2_paeth_avm_read@20000000
    // out out_memdep_2_paeth_avm_write@20000000
    // out out_memdep_2_paeth_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    paeth_i_llvm_fpga_mem_memdep_2_0 thei_llvm_fpga_mem_memdep_2_paeth21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx83_paeth20_vt_join_q),
        .in_i_predicate(i_xor31_paeth4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_i_writedata(i_conv_paeth14_vt_join_q),
        .in_memdep_2_paeth_avm_readdata(in_memdep_2_paeth_avm_readdata),
        .in_memdep_2_paeth_avm_readdatavalid(in_memdep_2_paeth_avm_readdatavalid),
        .in_memdep_2_paeth_avm_waitrequest(in_memdep_2_paeth_avm_waitrequest),
        .in_memdep_2_paeth_avm_writeack(in_memdep_2_paeth_avm_writeack),
        .out_memdep_2_paeth_avm_address(i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_address),
        .out_memdep_2_paeth_avm_burstcount(i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_burstcount),
        .out_memdep_2_paeth_avm_byteenable(i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_byteenable),
        .out_memdep_2_paeth_avm_enable(i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_enable),
        .out_memdep_2_paeth_avm_read(i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_read),
        .out_memdep_2_paeth_avm_write(i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_write),
        .out_memdep_2_paeth_avm_writedata(i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,99)
    assign out_memdep_2_paeth_avm_address = i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_address;
    assign out_memdep_2_paeth_avm_enable = i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_enable;
    assign out_memdep_2_paeth_avm_read = i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_read;
    assign out_memdep_2_paeth_avm_write = i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_write;
    assign out_memdep_2_paeth_avm_writedata = i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_writedata;
    assign out_memdep_2_paeth_avm_byteenable = i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_byteenable;
    assign out_memdep_2_paeth_avm_burstcount = i_llvm_fpga_mem_memdep_2_paeth21_out_memdep_2_paeth_avm_burstcount;

    // c_i16_058(CONSTANT,6)
    assign c_i16_058_q = $unsigned(16'b0000000000000000);

    // valid_fanout_reg8(REG,163)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist2_sync_together77_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_arrayidx104_paeth0_mult_x_im0_shift0(BITSHIFT,263)@3
    assign i_arrayidx104_paeth0_mult_x_im0_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx104_paeth0_mult_x_im0_shift0_q = i_arrayidx104_paeth0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx104_paeth0_mult_x_sums_align_3(BITSHIFT,190)@3
    assign i_arrayidx104_paeth0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx104_paeth0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx104_paeth0_mult_x_sums_align_3_q = i_arrayidx104_paeth0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx104_paeth0_mult_x_im6_shift0(BITSHIFT,265)@3
    assign i_arrayidx104_paeth0_mult_x_im6_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx104_paeth0_mult_x_im6_shift0_q = i_arrayidx104_paeth0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx104_paeth0_mult_x_sums_align_2(BITSHIFT,189)@3
    assign i_arrayidx104_paeth0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx104_paeth0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx104_paeth0_mult_x_sums_align_2_q = i_arrayidx104_paeth0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx104_paeth0_mult_x_sums_join_4(BITJOIN,191)@3
    assign i_arrayidx104_paeth0_mult_x_sums_join_4_q = {i_arrayidx104_paeth0_mult_x_sums_align_3_q, i_arrayidx104_paeth0_mult_x_sums_align_2_q};

    // i_arrayidx104_paeth0_mult_x_im3_shift0(BITSHIFT,264)@3
    assign i_arrayidx104_paeth0_mult_x_im3_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx104_paeth0_mult_x_im3_shift0_q = i_arrayidx104_paeth0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx104_paeth0_mult_x_sums_align_0(BITSHIFT,187)@3
    assign i_arrayidx104_paeth0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx104_paeth0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx104_paeth0_mult_x_sums_align_0_q = i_arrayidx104_paeth0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx104_paeth0_mult_x_im9_shift0(BITSHIFT,266)@3
    assign i_arrayidx104_paeth0_mult_x_im9_shift0_qint = { i_arrayidx104_paeth0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx104_paeth0_mult_x_im9_shift0_q = i_arrayidx104_paeth0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx104_paeth0_mult_x_sums_join_1(BITJOIN,188)@3
    assign i_arrayidx104_paeth0_mult_x_sums_join_1_q = {i_arrayidx104_paeth0_mult_x_sums_align_0_q, {1'b0, i_arrayidx104_paeth0_mult_x_im9_shift0_q}};

    // i_arrayidx104_paeth0_mult_x_sums_result_add_0_0(ADD,192)@3
    assign i_arrayidx104_paeth0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx104_paeth0_mult_x_sums_join_1_q};
    assign i_arrayidx104_paeth0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx104_paeth0_mult_x_sums_join_4_q};
    assign i_arrayidx104_paeth0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx104_paeth0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx104_paeth0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx104_paeth0_mult_x_sums_result_add_0_0_q = i_arrayidx104_paeth0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx104_paeth0_mult_extender_x(BITJOIN,107)@3
    assign i_arrayidx104_paeth0_mult_extender_x_q = {i_arrayidx104_paeth0_mult_multconst_x_q, i_arrayidx104_paeth0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx104_paeth0_trunc_sel_x(BITSELECT,109)@3
    assign i_arrayidx104_paeth0_trunc_sel_x_b = i_arrayidx104_paeth0_mult_extender_x_q[63:0];

    // c_paeth_out_pmem(CONSTANT,31)
    assign c_paeth_out_pmem_q = $unsigned(64'b0100000000001001000000000000000000000000000000000000000000000000);

    // i_arrayidx104_paeth0_add_x(ADD,101)@3
    assign i_arrayidx104_paeth0_add_x_a = {1'b0, c_paeth_out_pmem_q};
    assign i_arrayidx104_paeth0_add_x_b = {1'b0, i_arrayidx104_paeth0_trunc_sel_x_b};
    assign i_arrayidx104_paeth0_add_x_o = $unsigned(i_arrayidx104_paeth0_add_x_a) + $unsigned(i_arrayidx104_paeth0_add_x_b);
    assign i_arrayidx104_paeth0_add_x_q = i_arrayidx104_paeth0_add_x_o[64:0];

    // i_arrayidx104_paeth0_dupName_0_trunc_sel_x(BITSELECT,110)@3
    assign i_arrayidx104_paeth0_dupName_0_trunc_sel_x_b = i_arrayidx104_paeth0_add_x_q[63:0];

    // i_arrayidx104_paeth22_vt_select_63(BITSELECT,36)@3
    assign i_arrayidx104_paeth22_vt_select_63_b = i_arrayidx104_paeth0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx104_paeth22_vt_join(BITJOIN,35)@3
    assign i_arrayidx104_paeth22_vt_join_q = {i_arrayidx104_paeth22_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_3_paeth23(BLACKBOX,64)@3
    // out out_memdep_3_paeth_avm_address@20000000
    // out out_memdep_3_paeth_avm_burstcount@20000000
    // out out_memdep_3_paeth_avm_byteenable@20000000
    // out out_memdep_3_paeth_avm_enable@20000000
    // out out_memdep_3_paeth_avm_read@20000000
    // out out_memdep_3_paeth_avm_write@20000000
    // out out_memdep_3_paeth_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    paeth_i_llvm_fpga_mem_memdep_3_0 thei_llvm_fpga_mem_memdep_3_paeth23 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx104_paeth22_vt_join_q),
        .in_i_predicate(i_xor31_paeth4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_i_writedata(c_i16_058_q),
        .in_memdep_3_paeth_avm_readdata(in_memdep_3_paeth_avm_readdata),
        .in_memdep_3_paeth_avm_readdatavalid(in_memdep_3_paeth_avm_readdatavalid),
        .in_memdep_3_paeth_avm_waitrequest(in_memdep_3_paeth_avm_waitrequest),
        .in_memdep_3_paeth_avm_writeack(in_memdep_3_paeth_avm_writeack),
        .out_memdep_3_paeth_avm_address(i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_address),
        .out_memdep_3_paeth_avm_burstcount(i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_burstcount),
        .out_memdep_3_paeth_avm_byteenable(i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_byteenable),
        .out_memdep_3_paeth_avm_enable(i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_enable),
        .out_memdep_3_paeth_avm_read(i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_read),
        .out_memdep_3_paeth_avm_write(i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_write),
        .out_memdep_3_paeth_avm_writedata(i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_ext_sig_sync_out_x(GPOUT,100)
    assign out_memdep_3_paeth_avm_address = i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_address;
    assign out_memdep_3_paeth_avm_enable = i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_enable;
    assign out_memdep_3_paeth_avm_read = i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_read;
    assign out_memdep_3_paeth_avm_write = i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_write;
    assign out_memdep_3_paeth_avm_writedata = i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_writedata;
    assign out_memdep_3_paeth_avm_byteenable = i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_byteenable;
    assign out_memdep_3_paeth_avm_burstcount = i_llvm_fpga_mem_memdep_3_paeth23_out_memdep_3_paeth_avm_burstcount;

    // valid_fanout_reg0(REG,155)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together77_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_masked34_paeth36(LOGICAL,77)@3 + 1
    assign i_masked34_paeth36_qi = i_notcmp21_paeth29_q & i_first_cleanup30_paeth3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked34_paeth36_delay ( .xin(i_masked34_paeth36_qi), .xout(i_masked34_paeth36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_3(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_3_q <= $unsigned(redist6_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_2_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,153)@4
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist7_i_llvm_fpga_pipeline_keep_going25_paeth6_out_data_out_3_q;
    assign out_c0_exi2_2_tpl = i_masked34_paeth36_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_paeth1 = GND_q;

endmodule
