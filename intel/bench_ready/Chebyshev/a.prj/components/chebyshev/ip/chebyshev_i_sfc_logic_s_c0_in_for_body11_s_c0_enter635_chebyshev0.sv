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

// SystemVerilog created from chebyshev_i_sfc_logic_s_c0_in_for_body11_s_c0_enter635_chebyshev0
// SystemVerilog created on Sun Apr 19 21:27:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module chebyshev_i_sfc_logic_s_c0_in_for_body11_s_c0_enter635_chebyshev0 (
    input wire [15:0] in_unnamed_chebyshev7_chebyshev_avm_readdata,
    input wire [0:0] in_unnamed_chebyshev7_chebyshev_avm_writeack,
    input wire [0:0] in_unnamed_chebyshev7_chebyshev_avm_waitrequest,
    input wire [0:0] in_unnamed_chebyshev7_chebyshev_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_chebyshev6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_chebyshev6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [15:0] in_memdep_2_chebyshev_avm_readdata,
    input wire [0:0] in_memdep_2_chebyshev_avm_writeack,
    input wire [0:0] in_memdep_2_chebyshev_avm_waitrequest,
    input wire [0:0] in_memdep_2_chebyshev_avm_readdatavalid,
    output wire [31:0] out_unnamed_chebyshev7_chebyshev_avm_address,
    output wire [0:0] out_unnamed_chebyshev7_chebyshev_avm_enable,
    output wire [0:0] out_unnamed_chebyshev7_chebyshev_avm_read,
    output wire [0:0] out_unnamed_chebyshev7_chebyshev_avm_write,
    output wire [15:0] out_unnamed_chebyshev7_chebyshev_avm_writedata,
    output wire [1:0] out_unnamed_chebyshev7_chebyshev_avm_byteenable,
    output wire [0:0] out_unnamed_chebyshev7_chebyshev_avm_burstcount,
    output wire [31:0] out_memdep_2_chebyshev_avm_address,
    output wire [0:0] out_memdep_2_chebyshev_avm_enable,
    output wire [0:0] out_memdep_2_chebyshev_avm_read,
    output wire [0:0] out_memdep_2_chebyshev_avm_write,
    output wire [15:0] out_memdep_2_chebyshev_avm_writedata,
    output wire [1:0] out_memdep_2_chebyshev_avm_byteenable,
    output wire [0:0] out_memdep_2_chebyshev_avm_burstcount,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_chebyshev1,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [0:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_chebyshev_data_in_pmem_q;
    wire [63:0] c_chebyshev_data_out_pmem_q;
    wire [10:0] c_i11_102261_q;
    wire [10:0] c_i11_163_q;
    wire [15:0] c_i16_2058_q;
    wire [15:0] c_i16_559_q;
    wire [1:0] c_i2_154_q;
    wire [31:0] c_i32_056_q;
    wire [31:0] c_i32_160_q;
    wire [63:0] i_arrayidx133_chebyshev10_vt_join_q;
    wire [62:0] i_arrayidx133_chebyshev10_vt_select_63_b;
    wire [63:0] i_arrayidx214_chebyshev23_vt_join_q;
    wire [62:0] i_arrayidx214_chebyshev23_vt_select_63_b;
    wire [1:0] i_cleanups_shl_chebyshev5_vt_join_q;
    wire [0:0] i_cleanups_shl_chebyshev5_vt_select_1_b;
    wire [16:0] i_dot_prod_add43_chebyshev21_a;
    wire [16:0] i_dot_prod_add43_chebyshev21_b;
    logic [16:0] i_dot_prod_add43_chebyshev21_o;
    wire [16:0] i_dot_prod_add43_chebyshev21_q;
    wire [16:0] i_dot_prod_add_chebyshev16_a;
    wire [16:0] i_dot_prod_add_chebyshev16_b;
    logic [16:0] i_dot_prod_add_chebyshev16_o;
    wire [16:0] i_dot_prod_add_chebyshev16_q;
    wire [11:0] i_fpga_indvars_iv_next4_chebyshev35_a;
    wire [11:0] i_fpga_indvars_iv_next4_chebyshev35_b;
    logic [11:0] i_fpga_indvars_iv_next4_chebyshev35_o;
    wire [11:0] i_fpga_indvars_iv_next4_chebyshev35_q;
    wire [63:0] i_idxprom12_chebyshev9_vt_join_q;
    wire [31:0] i_idxprom12_chebyshev9_vt_select_31_b;
    wire [32:0] i_inc23_chebyshev25_a;
    wire [32:0] i_inc23_chebyshev25_b;
    logic [32:0] i_inc23_chebyshev25_o;
    wire [32:0] i_inc23_chebyshev25_q;
    wire [31:0] i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_write;
    wire [15:0] i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_chebyshev6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_chebyshev6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_chebyshev6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_chebyshev6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_chebyshev6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv3_pop15_chebyshev27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv3_pop15_chebyshev27_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1138_pop18_chebyshev38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1138_pop18_chebyshev38_out_feedback_stall_out_18;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop17_chebyshev2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop17_chebyshev2_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_k7_018_pop16_chebyshev8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k7_018_pop16_chebyshev8_out_feedback_stall_out_16;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv3_push15_chebyshev36_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv3_push15_chebyshev36_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_chebyshev7_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_chebyshev7_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1138_push18_chebyshev39_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1138_push18_chebyshev39_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_chebyshev31_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_chebyshev31_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push17_chebyshev34_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push17_chebyshev34_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_k7_018_push16_chebyshev26_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_k7_018_push16_chebyshev26_out_feedback_valid_out_16;
    wire [0:0] i_masked_chebyshev37_qi;
    reg [0:0] i_masked_chebyshev37_q;
    wire [3:0] i_mul_chebyshev12_vt_const_3_q;
    wire [15:0] i_mul_chebyshev12_vt_join_q;
    wire [11:0] i_mul_chebyshev12_vt_select_15_b;
    wire [0:0] i_next_cleanups_chebyshev33_s;
    reg [1:0] i_next_cleanups_chebyshev33_q;
    wire [0:0] i_notcmp_chebyshev30_q;
    wire [0:0] i_or_chebyshev32_q;
    wire [0:0] i_xor_chebyshev4_q;
    wire [15:0] bgTrunc_i_dot_prod_add43_chebyshev21_sel_x_b;
    wire [15:0] bgTrunc_i_dot_prod_add_chebyshev16_sel_x_b;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next4_chebyshev35_sel_x_b;
    wire [31:0] bgTrunc_i_inc23_chebyshev25_sel_x_b;
    wire [15:0] bgTrunc_i_mul16_chebyshev17_sel_x_b;
    wire [15:0] bgTrunc_i_mul18_chebyshev22_sel_x_b;
    wire [64:0] i_arrayidx133_chebyshev0_add_x_a;
    wire [64:0] i_arrayidx133_chebyshev0_add_x_b;
    logic [64:0] i_arrayidx133_chebyshev0_add_x_o;
    wire [64:0] i_arrayidx133_chebyshev0_add_x_q;
    wire [127:0] i_arrayidx133_chebyshev0_mult_extender_x_q;
    wire [61:0] i_arrayidx133_chebyshev0_mult_multconst_x_q;
    wire [63:0] i_arrayidx133_chebyshev0_trunc_sel_x_b;
    wire [63:0] i_arrayidx133_chebyshev0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx214_chebyshev0_add_x_a;
    wire [64:0] i_arrayidx214_chebyshev0_add_x_b;
    logic [64:0] i_arrayidx214_chebyshev0_add_x_o;
    wire [64:0] i_arrayidx214_chebyshev0_add_x_q;
    wire [127:0] i_arrayidx214_chebyshev0_mult_extender_x_q;
    wire [63:0] i_arrayidx214_chebyshev0_trunc_sel_x_b;
    wire [63:0] i_arrayidx214_chebyshev0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_chebyshev3_sel_x_b;
    wire [63:0] i_idxprom12_chebyshev9_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire [0:0] i_exitcond5_chebyshev28_cmp_nsign_q;
    wire [35:0] i_arrayidx133_chebyshev0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx133_chebyshev0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx133_chebyshev0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx133_chebyshev0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx133_chebyshev0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx133_chebyshev0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx133_chebyshev0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx133_chebyshev0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx133_chebyshev0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx133_chebyshev0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx133_chebyshev0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx133_chebyshev0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx214_chebyshev0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx214_chebyshev0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx214_chebyshev0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx214_chebyshev0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx214_chebyshev0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx214_chebyshev0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx214_chebyshev0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx214_chebyshev0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx214_chebyshev0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx214_chebyshev0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx214_chebyshev0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx214_chebyshev0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid191_i_cleanups_shl_chebyshev0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid191_i_cleanups_shl_chebyshev0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid192_i_cleanups_shl_chebyshev0_shift_x_q;
    wire [0:0] leftShiftStage0_uid194_i_cleanups_shl_chebyshev0_shift_x_s;
    reg [1:0] leftShiftStage0_uid194_i_cleanups_shl_chebyshev0_shift_x_q;
    wire [11:0] leftShiftStage0Idx1Rng4_uid199_i_mul_chebyshev0_shift_x_in;
    wire [11:0] leftShiftStage0Idx1Rng4_uid199_i_mul_chebyshev0_shift_x_b;
    wire [15:0] leftShiftStage0Idx1_uid200_i_mul_chebyshev0_shift_x_q;
    wire [0:0] leftShiftStage0_uid202_i_mul_chebyshev0_shift_x_s;
    reg [15:0] leftShiftStage0_uid202_i_mul_chebyshev0_shift_x_q;
    wire [10:0] i_arrayidx133_chebyshev0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx133_chebyshev0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx133_chebyshev0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx133_chebyshev0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx133_chebyshev0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx133_chebyshev0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx133_chebyshev0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx133_chebyshev0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx214_chebyshev0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx214_chebyshev0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx214_chebyshev0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx214_chebyshev0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx214_chebyshev0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx214_chebyshev0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx214_chebyshev0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx214_chebyshev0_mult_x_im9_shift0_qint;
    wire i_mul16_chebyshev17_cma_reset;
    wire [15:0] i_mul16_chebyshev17_cma_a0;
    wire [15:0] i_mul16_chebyshev17_cma_c0;
    wire [31:0] i_mul16_chebyshev17_cma_s0;
    wire [31:0] i_mul16_chebyshev17_cma_qq;
    wire [31:0] i_mul16_chebyshev17_cma_q;
    wire i_mul16_chebyshev17_cma_ena0;
    wire i_mul16_chebyshev17_cma_ena1;
    wire i_mul16_chebyshev17_cma_ena2;
    wire i_mul18_chebyshev22_cma_reset;
    wire [15:0] i_mul18_chebyshev22_cma_a0;
    wire [15:0] i_mul18_chebyshev22_cma_c0;
    wire [31:0] i_mul18_chebyshev22_cma_s0;
    wire [31:0] i_mul18_chebyshev22_cma_qq;
    wire [31:0] i_mul18_chebyshev22_cma_q;
    wire i_mul18_chebyshev22_cma_ena0;
    wire i_mul18_chebyshev22_cma_ena1;
    wire i_mul18_chebyshev22_cma_ena2;
    wire [9:0] i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together78_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist1_sync_together78_aunroll_x_in_c0_eni2_2_tpl_1_q;
    reg [0:0] redist2_sync_together78_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together78_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist4_sync_together78_aunroll_x_in_i_valid_15_q;
    reg [0:0] redist5_i_xor_chebyshev4_q_1_q;
    reg [0:0] redist6_i_xor_chebyshev4_q_14_q;
    reg [0:0] redist7_i_masked_chebyshev37_q_15_q;
    reg [0:0] redist8_i_llvm_fpga_pop_i1_notcmp1138_pop18_chebyshev38_out_data_out_15_q;
    reg [0:0] redist9_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_1_q;
    reg [0:0] redist10_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_16_q;
    reg [31:0] redist12_i_idxprom12_chebyshev9_vt_select_31_b_1_q;
    reg [15:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_inputreg0_q;
    wire redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_reset0;
    wire [15:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_ia;
    wire [1:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_aa;
    wire [1:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_ab;
    wire [15:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_iq;
    wire [15:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_q;
    wire [1:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_rdcnt_q;
    (* preserve *) reg [1:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_rdcnt_i;
    reg [1:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_wraddr_q;
    wire [2:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_last_q;
    wire [2:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_cmp_b;
    wire [0:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_cmp_q;
    (* dont_merge *) reg [0:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_cmpReg_q;
    wire [0:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_notEnable_q;
    wire [0:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_nor_q;
    (* dont_merge *) reg [0:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_sticky_ena_q;
    wire [0:0] redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_enaAnd_q;
    reg [62:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_inputreg0_q;
    wire redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_reset0;
    wire [62:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_ia;
    wire [3:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_aa;
    wire [3:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_ab;
    wire [62:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_iq;
    wire [62:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_q;
    wire [3:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_q;
    (* preserve *) reg [3:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_i;
    (* preserve *) reg redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_eq;
    reg [3:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_wraddr_q;
    wire [4:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_last_q;
    wire [4:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_cmp_b;
    wire [0:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_cmp_q;
    (* dont_merge *) reg [0:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_cmpReg_q;
    wire [0:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_notEnable_q;
    wire [0:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_nor_q;
    (* dont_merge *) reg [0:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_sticky_ena_q;
    wire [0:0] redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together78_aunroll_x_in_i_valid_1(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together78_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together78_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist9_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_1(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid191_i_cleanups_shl_chebyshev0_shift_x(BITSELECT,190)@2
    assign leftShiftStage0Idx1Rng1_uid191_i_cleanups_shl_chebyshev0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop17_chebyshev2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid191_i_cleanups_shl_chebyshev0_shift_x_b = leftShiftStage0Idx1Rng1_uid191_i_cleanups_shl_chebyshev0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid192_i_cleanups_shl_chebyshev0_shift_x(BITJOIN,191)@2
    assign leftShiftStage0Idx1_uid192_i_cleanups_shl_chebyshev0_shift_x_q = {leftShiftStage0Idx1Rng1_uid191_i_cleanups_shl_chebyshev0_shift_x_b, GND_q};

    // leftShiftStage0_uid194_i_cleanups_shl_chebyshev0_shift_x(MUX,193)@2
    assign leftShiftStage0_uid194_i_cleanups_shl_chebyshev0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid194_i_cleanups_shl_chebyshev0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop17_chebyshev2_out_data_out or leftShiftStage0Idx1_uid192_i_cleanups_shl_chebyshev0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid194_i_cleanups_shl_chebyshev0_shift_x_s)
            1'b0 : leftShiftStage0_uid194_i_cleanups_shl_chebyshev0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop17_chebyshev2_out_data_out;
            1'b1 : leftShiftStage0_uid194_i_cleanups_shl_chebyshev0_shift_x_q = leftShiftStage0Idx1_uid192_i_cleanups_shl_chebyshev0_shift_x_q;
            default : leftShiftStage0_uid194_i_cleanups_shl_chebyshev0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_chebyshev5_vt_select_1(BITSELECT,42)@2
    assign i_cleanups_shl_chebyshev5_vt_select_1_b = leftShiftStage0_uid194_i_cleanups_shl_chebyshev0_shift_x_q[1:1];

    // i_cleanups_shl_chebyshev5_vt_join(BITJOIN,41)@2
    assign i_cleanups_shl_chebyshev5_vt_join_q = {i_cleanups_shl_chebyshev5_vt_select_1_b, GND_q};

    // i_xor_chebyshev4(LOGICAL,75)@2
    assign i_xor_chebyshev4_q = i_first_cleanup_chebyshev3_sel_x_b ^ VCC_q;

    // i_notcmp_chebyshev30(LOGICAL,73)@2
    assign i_notcmp_chebyshev30_q = i_exitcond5_chebyshev28_cmp_nsign_q ^ VCC_q;

    // i_or_chebyshev32(LOGICAL,74)@2
    assign i_or_chebyshev32_q = i_notcmp_chebyshev30_q | i_xor_chebyshev4_q;

    // i_next_cleanups_chebyshev33(MUX,72)@2
    assign i_next_cleanups_chebyshev33_s = i_or_chebyshev32_q;
    always @(i_next_cleanups_chebyshev33_s or i_llvm_fpga_pop_i2_cleanups_pop17_chebyshev2_out_data_out or i_cleanups_shl_chebyshev5_vt_join_q)
    begin
        unique case (i_next_cleanups_chebyshev33_s)
            1'b0 : i_next_cleanups_chebyshev33_q = i_llvm_fpga_pop_i2_cleanups_pop17_chebyshev2_out_data_out;
            1'b1 : i_next_cleanups_chebyshev33_q = i_cleanups_shl_chebyshev5_vt_join_q;
            default : i_next_cleanups_chebyshev33_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push17_chebyshev34(BLACKBOX,64)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    chebyshev_i_llvm_fpga_push_i2_cleanups_push17_0 thei_llvm_fpga_push_i2_cleanups_push17_chebyshev34 (
        .in_data_in(i_next_cleanups_chebyshev33_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i2_cleanups_pop17_chebyshev2_out_feedback_stall_out_17),
        .in_keep_going(redist9_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i2_cleanups_push17_chebyshev34_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i2_cleanups_push17_chebyshev34_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together78_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together78_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together78_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // c_i2_154(CONSTANT,29)
    assign c_i2_154_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop17_chebyshev2(BLACKBOX,58)@2
    // out out_feedback_stall_out_17@20000000
    chebyshev_i_llvm_fpga_pop_i2_cleanups_pop17_0 thei_llvm_fpga_pop_i2_cleanups_pop17_chebyshev2 (
        .in_data_in(c_i2_154_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i2_cleanups_push17_chebyshev34_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i2_cleanups_push17_chebyshev34_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop17_chebyshev2_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i2_cleanups_pop17_chebyshev2_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_chebyshev3_sel_x(BITSELECT,115)@2
    assign i_first_cleanup_chebyshev3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop17_chebyshev2_out_data_out[0:0];

    // c_i11_163(CONSTANT,11)
    assign c_i11_163_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next4_chebyshev35(ADD,47)@2
    assign i_fpga_indvars_iv_next4_chebyshev35_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv3_pop15_chebyshev27_out_data_out};
    assign i_fpga_indvars_iv_next4_chebyshev35_b = {1'b0, c_i11_163_q};
    assign i_fpga_indvars_iv_next4_chebyshev35_o = $unsigned(i_fpga_indvars_iv_next4_chebyshev35_a) + $unsigned(i_fpga_indvars_iv_next4_chebyshev35_b);
    assign i_fpga_indvars_iv_next4_chebyshev35_q = i_fpga_indvars_iv_next4_chebyshev35_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next4_chebyshev35_sel_x(BITSELECT,83)@2
    assign bgTrunc_i_fpga_indvars_iv_next4_chebyshev35_sel_x_b = i_fpga_indvars_iv_next4_chebyshev35_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv3_push15_chebyshev36(BLACKBOX,60)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    chebyshev_i_llvm_fpga_push_i11_fpga_indvars_iv3_push15_0 thei_llvm_fpga_push_i11_fpga_indvars_iv3_push15_chebyshev36 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next4_chebyshev35_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i11_fpga_indvars_iv3_pop15_chebyshev27_out_feedback_stall_out_15),
        .in_keep_going(redist9_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv3_push15_chebyshev36_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i11_fpga_indvars_iv3_push15_chebyshev36_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_102261(CONSTANT,10)
    assign c_i11_102261_q = $unsigned(11'b01111111110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv3_pop15_chebyshev27(BLACKBOX,56)@2
    // out out_feedback_stall_out_15@20000000
    chebyshev_i_llvm_fpga_pop_i11_fpga_indvars_iv3_pop15_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv3_pop15_chebyshev27 (
        .in_data_in(c_i11_102261_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv3_push15_chebyshev36_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i11_fpga_indvars_iv3_push15_chebyshev36_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv3_pop15_chebyshev27_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i11_fpga_indvars_iv3_pop15_chebyshev27_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond5_chebyshev28_cmp_nsign(LOGICAL,150)@2
    assign i_exitcond5_chebyshev28_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv3_pop15_chebyshev27_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond_chebyshev31(BLACKBOX,63)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    chebyshev_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_chebyshev31 (
        .in_data_in(i_exitcond5_chebyshev28_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_chebyshev6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_chebyshev3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_chebyshev31_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_chebyshev31_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,130)@1 + 1
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

    // i_llvm_fpga_push_i1_lastiniteration_chebyshev7(BLACKBOX,61)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    chebyshev_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_chebyshev7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_chebyshev6_out_initeration_stall_out),
        .in_keep_going(redist9_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_chebyshev7_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_chebyshev7_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_chebyshev6(BLACKBOX,55)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    chebyshev_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_chebyshev6 (
        .in_data_in(in_c0_eni2_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_chebyshev7_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_chebyshev7_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_chebyshev31_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_chebyshev31_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_chebyshev6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_chebyshev6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_chebyshev6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_chebyshev6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_chebyshev6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,33)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_chebyshev6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_chebyshev6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_chebyshev6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_chebyshev6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,78)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_chebyshev6_out_pipeline_valid_out;

    // valid_fanout_reg3(REG,132)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist2_sync_together78_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist5_i_xor_chebyshev4_q_1(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_xor_chebyshev4_q_1_q <= '0;
        end
        else
        begin
            redist5_i_xor_chebyshev4_q_1_q <= $unsigned(i_xor_chebyshev4_q);
        end
    end

    // i_arrayidx133_chebyshev0_mult_multconst_x(CONSTANT,98)
    assign i_arrayidx133_chebyshev0_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // c_i32_056(CONSTANT,30)
    assign c_i32_056_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,131)@1 + 1
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

    // valid_fanout_reg5(REG,134)@1 + 1
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

    // c_i32_160(CONSTANT,31)
    assign c_i32_160_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc23_chebyshev25(ADD,52)@2
    assign i_inc23_chebyshev25_a = {1'b0, i_llvm_fpga_pop_i32_k7_018_pop16_chebyshev8_out_data_out};
    assign i_inc23_chebyshev25_b = {1'b0, c_i32_160_q};
    assign i_inc23_chebyshev25_o = $unsigned(i_inc23_chebyshev25_a) + $unsigned(i_inc23_chebyshev25_b);
    assign i_inc23_chebyshev25_q = i_inc23_chebyshev25_o[32:0];

    // bgTrunc_i_inc23_chebyshev25_sel_x(BITSELECT,84)@2
    assign bgTrunc_i_inc23_chebyshev25_sel_x_b = i_inc23_chebyshev25_q[31:0];

    // i_llvm_fpga_push_i32_k7_018_push16_chebyshev26(BLACKBOX,65)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    chebyshev_i_llvm_fpga_push_i32_k7_018_push16_0 thei_llvm_fpga_push_i32_k7_018_push16_chebyshev26 (
        .in_data_in(bgTrunc_i_inc23_chebyshev25_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_k7_018_pop16_chebyshev8_out_feedback_stall_out_16),
        .in_keep_going(redist9_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_k7_018_push16_chebyshev26_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_k7_018_push16_chebyshev26_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k7_018_pop16_chebyshev8(BLACKBOX,59)@2
    // out out_feedback_stall_out_16@20000000
    chebyshev_i_llvm_fpga_pop_i32_k7_018_pop16_0 thei_llvm_fpga_pop_i32_k7_018_pop16_chebyshev8 (
        .in_data_in(c_i32_056_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_k7_018_push16_chebyshev26_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_k7_018_push16_chebyshev26_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_k7_018_pop16_chebyshev8_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_k7_018_pop16_chebyshev8_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom12_chebyshev9_sel_x(BITSELECT,116)@2
    assign i_idxprom12_chebyshev9_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_k7_018_pop16_chebyshev8_out_data_out[31:0]};

    // i_idxprom12_chebyshev9_vt_select_31(BITSELECT,51)@2
    assign i_idxprom12_chebyshev9_vt_select_31_b = i_idxprom12_chebyshev9_sel_x_b[31:0];

    // redist12_i_idxprom12_chebyshev9_vt_select_31_b_1(DELAY,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_idxprom12_chebyshev9_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist12_i_idxprom12_chebyshev9_vt_select_31_b_1_q <= $unsigned(i_idxprom12_chebyshev9_vt_select_31_b);
        end
    end

    // i_idxprom12_chebyshev9_vt_join(BITJOIN,50)@3
    assign i_idxprom12_chebyshev9_vt_join_q = {c_i32_056_q, redist12_i_idxprom12_chebyshev9_vt_select_31_b_1_q};

    // i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select(BITSELECT,213)@3
    assign i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_b = i_idxprom12_chebyshev9_vt_join_q[63:54];
    assign i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_c = i_idxprom12_chebyshev9_vt_join_q[53:36];
    assign i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_d = i_idxprom12_chebyshev9_vt_join_q[35:18];
    assign i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_e = i_idxprom12_chebyshev9_vt_join_q[17:0];

    // i_arrayidx133_chebyshev0_mult_x_im0_shift0(BITSHIFT,203)@3
    assign i_arrayidx133_chebyshev0_mult_x_im0_shift0_qint = { i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx133_chebyshev0_mult_x_im0_shift0_q = i_arrayidx133_chebyshev0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx133_chebyshev0_mult_x_sums_align_3(BITSHIFT,166)@3
    assign i_arrayidx133_chebyshev0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx133_chebyshev0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx133_chebyshev0_mult_x_sums_align_3_q = i_arrayidx133_chebyshev0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx133_chebyshev0_mult_x_im6_shift0(BITSHIFT,205)@3
    assign i_arrayidx133_chebyshev0_mult_x_im6_shift0_qint = { i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx133_chebyshev0_mult_x_im6_shift0_q = i_arrayidx133_chebyshev0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx133_chebyshev0_mult_x_sums_align_2(BITSHIFT,165)@3
    assign i_arrayidx133_chebyshev0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx133_chebyshev0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx133_chebyshev0_mult_x_sums_align_2_q = i_arrayidx133_chebyshev0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx133_chebyshev0_mult_x_sums_join_4(BITJOIN,167)@3
    assign i_arrayidx133_chebyshev0_mult_x_sums_join_4_q = {i_arrayidx133_chebyshev0_mult_x_sums_align_3_q, i_arrayidx133_chebyshev0_mult_x_sums_align_2_q};

    // i_arrayidx133_chebyshev0_mult_x_im3_shift0(BITSHIFT,204)@3
    assign i_arrayidx133_chebyshev0_mult_x_im3_shift0_qint = { i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx133_chebyshev0_mult_x_im3_shift0_q = i_arrayidx133_chebyshev0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx133_chebyshev0_mult_x_sums_align_0(BITSHIFT,163)@3
    assign i_arrayidx133_chebyshev0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx133_chebyshev0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx133_chebyshev0_mult_x_sums_align_0_q = i_arrayidx133_chebyshev0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx133_chebyshev0_mult_x_im9_shift0(BITSHIFT,206)@3
    assign i_arrayidx133_chebyshev0_mult_x_im9_shift0_qint = { i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx133_chebyshev0_mult_x_im9_shift0_q = i_arrayidx133_chebyshev0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx133_chebyshev0_mult_x_sums_join_1(BITJOIN,164)@3
    assign i_arrayidx133_chebyshev0_mult_x_sums_join_1_q = {i_arrayidx133_chebyshev0_mult_x_sums_align_0_q, {1'b0, i_arrayidx133_chebyshev0_mult_x_im9_shift0_q}};

    // i_arrayidx133_chebyshev0_mult_x_sums_result_add_0_0(ADD,168)@3
    assign i_arrayidx133_chebyshev0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx133_chebyshev0_mult_x_sums_join_1_q};
    assign i_arrayidx133_chebyshev0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx133_chebyshev0_mult_x_sums_join_4_q};
    assign i_arrayidx133_chebyshev0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx133_chebyshev0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx133_chebyshev0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx133_chebyshev0_mult_x_sums_result_add_0_0_q = i_arrayidx133_chebyshev0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx133_chebyshev0_mult_extender_x(BITJOIN,97)@3
    assign i_arrayidx133_chebyshev0_mult_extender_x_q = {i_arrayidx133_chebyshev0_mult_multconst_x_q, i_arrayidx133_chebyshev0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx133_chebyshev0_trunc_sel_x(BITSELECT,99)@3
    assign i_arrayidx133_chebyshev0_trunc_sel_x_b = i_arrayidx133_chebyshev0_mult_extender_x_q[63:0];

    // c_chebyshev_data_in_pmem(CONSTANT,8)
    assign c_chebyshev_data_in_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx133_chebyshev0_add_x(ADD,91)@3
    assign i_arrayidx133_chebyshev0_add_x_a = {1'b0, c_chebyshev_data_in_pmem_q};
    assign i_arrayidx133_chebyshev0_add_x_b = {1'b0, i_arrayidx133_chebyshev0_trunc_sel_x_b};
    assign i_arrayidx133_chebyshev0_add_x_o = $unsigned(i_arrayidx133_chebyshev0_add_x_a) + $unsigned(i_arrayidx133_chebyshev0_add_x_b);
    assign i_arrayidx133_chebyshev0_add_x_q = i_arrayidx133_chebyshev0_add_x_o[64:0];

    // i_arrayidx133_chebyshev0_dupName_0_trunc_sel_x(BITSELECT,100)@3
    assign i_arrayidx133_chebyshev0_dupName_0_trunc_sel_x_b = i_arrayidx133_chebyshev0_add_x_q[63:0];

    // i_arrayidx133_chebyshev10_vt_select_63(BITSELECT,36)@3
    assign i_arrayidx133_chebyshev10_vt_select_63_b = i_arrayidx133_chebyshev0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx133_chebyshev10_vt_join(BITJOIN,35)@3
    assign i_arrayidx133_chebyshev10_vt_join_q = {i_arrayidx133_chebyshev10_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11(BLACKBOX,54)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_chebyshev7_chebyshev_avm_address@20000000
    // out out_unnamed_chebyshev7_chebyshev_avm_burstcount@20000000
    // out out_unnamed_chebyshev7_chebyshev_avm_byteenable@20000000
    // out out_unnamed_chebyshev7_chebyshev_avm_enable@20000000
    // out out_unnamed_chebyshev7_chebyshev_avm_read@20000000
    // out out_unnamed_chebyshev7_chebyshev_avm_write@20000000
    // out out_unnamed_chebyshev7_chebyshev_avm_writedata@20000000
    chebyshev_i_llvm_fpga_mem_unnamed_7_chebyshev0 thei_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx133_chebyshev10_vt_join_q),
        .in_i_predicate(redist5_i_xor_chebyshev4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_unnamed_chebyshev7_chebyshev_avm_readdata(in_unnamed_chebyshev7_chebyshev_avm_readdata),
        .in_unnamed_chebyshev7_chebyshev_avm_readdatavalid(in_unnamed_chebyshev7_chebyshev_avm_readdatavalid),
        .in_unnamed_chebyshev7_chebyshev_avm_waitrequest(in_unnamed_chebyshev7_chebyshev_avm_waitrequest),
        .in_unnamed_chebyshev7_chebyshev_avm_writeack(in_unnamed_chebyshev7_chebyshev_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_chebyshev7_chebyshev_avm_address(i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_address),
        .out_unnamed_chebyshev7_chebyshev_avm_burstcount(i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_burstcount),
        .out_unnamed_chebyshev7_chebyshev_avm_byteenable(i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_byteenable),
        .out_unnamed_chebyshev7_chebyshev_avm_enable(i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_enable),
        .out_unnamed_chebyshev7_chebyshev_avm_read(i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_read),
        .out_unnamed_chebyshev7_chebyshev_avm_write(i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_write),
        .out_unnamed_chebyshev7_chebyshev_avm_writedata(i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,89)
    assign out_unnamed_chebyshev7_chebyshev_avm_address = i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_address;
    assign out_unnamed_chebyshev7_chebyshev_avm_enable = i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_enable;
    assign out_unnamed_chebyshev7_chebyshev_avm_read = i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_read;
    assign out_unnamed_chebyshev7_chebyshev_avm_write = i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_write;
    assign out_unnamed_chebyshev7_chebyshev_avm_writedata = i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_writedata;
    assign out_unnamed_chebyshev7_chebyshev_avm_byteenable = i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_byteenable;
    assign out_unnamed_chebyshev7_chebyshev_avm_burstcount = i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_unnamed_chebyshev7_chebyshev_avm_burstcount;

    // redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_notEnable(LOGICAL,235)
    assign redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_nor(LOGICAL,236)
    assign redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_nor_q = ~ (redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_notEnable_q | redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_sticky_ena_q);

    // redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_last(CONSTANT,232)
    assign redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_last_q = $unsigned(3'b010);

    // redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_cmp(LOGICAL,233)
    assign redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_cmp_b = {1'b0, redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_rdcnt_q};
    assign redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_cmp_q = $unsigned(redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_last_q == redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_cmp_b ? 1'b1 : 1'b0);

    // redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_cmpReg(REG,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_cmpReg_q <= $unsigned(redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_cmp_q);
        end
    end

    // redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_sticky_ena(REG,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_nor_q == 1'b1)
        begin
            redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_sticky_ena_q <= $unsigned(redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_cmpReg_q);
        end
    end

    // redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_enaAnd(LOGICAL,238)
    assign redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_enaAnd_q = redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_sticky_ena_q & VCC_q;

    // redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_rdcnt(COUNTER,230)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_rdcnt_i <= $unsigned(redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_rdcnt_q = redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_rdcnt_i[1:0];

    // redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_inputreg0(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_inputreg0_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_inputreg0_q <= $unsigned(i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata);
        end
    end

    // redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_wraddr(REG,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_wraddr_q <= $unsigned(redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_rdcnt_q);
        end
    end

    // redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem(DUALMEM,229)
    assign redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_ia = $unsigned(redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_inputreg0_q);
    assign redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_aa = redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_wraddr_q;
    assign redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_ab = redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_rdcnt_q;
    assign redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(16),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(16),
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
    ) redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_dmem (
        .clocken1(redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_reset0),
        .clock1(clock),
        .address_a(redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_aa),
        .data_a(redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_ab),
        .q_b(redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_iq),
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
    assign redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_q = redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_iq[15:0];

    // c_i16_559(CONSTANT,14)
    assign c_i16_559_q = $unsigned(16'b0000000000000101);

    // c_i16_2058(CONSTANT,12)
    assign c_i16_2058_q = $unsigned(16'b1111111111101100);

    // leftShiftStage0Idx1Rng4_uid199_i_mul_chebyshev0_shift_x(BITSELECT,198)@7
    assign leftShiftStage0Idx1Rng4_uid199_i_mul_chebyshev0_shift_x_in = i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata[11:0];
    assign leftShiftStage0Idx1Rng4_uid199_i_mul_chebyshev0_shift_x_b = leftShiftStage0Idx1Rng4_uid199_i_mul_chebyshev0_shift_x_in[11:0];

    // leftShiftStage0Idx1_uid200_i_mul_chebyshev0_shift_x(BITJOIN,199)@7
    assign leftShiftStage0Idx1_uid200_i_mul_chebyshev0_shift_x_q = {leftShiftStage0Idx1Rng4_uid199_i_mul_chebyshev0_shift_x_b, i_mul_chebyshev12_vt_const_3_q};

    // leftShiftStage0_uid202_i_mul_chebyshev0_shift_x(MUX,201)@7
    assign leftShiftStage0_uid202_i_mul_chebyshev0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid202_i_mul_chebyshev0_shift_x_s or i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata or leftShiftStage0Idx1_uid200_i_mul_chebyshev0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid202_i_mul_chebyshev0_shift_x_s)
            1'b0 : leftShiftStage0_uid202_i_mul_chebyshev0_shift_x_q = i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata;
            1'b1 : leftShiftStage0_uid202_i_mul_chebyshev0_shift_x_q = leftShiftStage0Idx1_uid200_i_mul_chebyshev0_shift_x_q;
            default : leftShiftStage0_uid202_i_mul_chebyshev0_shift_x_q = 16'b0;
        endcase
    end

    // i_mul_chebyshev12_vt_select_15(BITSELECT,71)@7
    assign i_mul_chebyshev12_vt_select_15_b = leftShiftStage0_uid202_i_mul_chebyshev0_shift_x_q[15:4];

    // i_mul_chebyshev12_vt_const_3(CONSTANT,69)
    assign i_mul_chebyshev12_vt_const_3_q = $unsigned(4'b0000);

    // i_mul_chebyshev12_vt_join(BITJOIN,70)@7
    assign i_mul_chebyshev12_vt_join_q = {i_mul_chebyshev12_vt_select_15_b, i_mul_chebyshev12_vt_const_3_q};

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,138)@7 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(i_mul_chebyshev12_vt_join_q);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata);
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(32)
    ) i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    dspba_delay_ver #( .width(32), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add_chebyshev16(ADD,44)@10
    assign i_dot_prod_add_chebyshev16_a = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add_chebyshev16_b = {1'b0, c_i16_2058_q};
    assign i_dot_prod_add_chebyshev16_o = $unsigned(i_dot_prod_add_chebyshev16_a) + $unsigned(i_dot_prod_add_chebyshev16_b);
    assign i_dot_prod_add_chebyshev16_q = i_dot_prod_add_chebyshev16_o[16:0];

    // bgTrunc_i_dot_prod_add_chebyshev16_sel_x(BITSELECT,82)@10
    assign bgTrunc_i_dot_prod_add_chebyshev16_sel_x_b = i_dot_prod_add_chebyshev16_q[15:0];

    // i_mul16_chebyshev17_cma(CHAINMULTADD,211)@7 + 3
    assign i_mul16_chebyshev17_cma_reset = ~ (resetn);
    assign i_mul16_chebyshev17_cma_ena0 = 1'b1;
    assign i_mul16_chebyshev17_cma_ena1 = i_mul16_chebyshev17_cma_ena0;
    assign i_mul16_chebyshev17_cma_ena2 = i_mul16_chebyshev17_cma_ena0;

    assign i_mul16_chebyshev17_cma_a0 = i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata;
    assign i_mul16_chebyshev17_cma_c0 = i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(32)
    ) i_mul16_chebyshev17_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul16_chebyshev17_cma_ena2, i_mul16_chebyshev17_cma_ena1, i_mul16_chebyshev17_cma_ena0 }),
        .aclr({ i_mul16_chebyshev17_cma_reset, i_mul16_chebyshev17_cma_reset }),
        .ay(i_mul16_chebyshev17_cma_a0),
        .ax(i_mul16_chebyshev17_cma_c0),
        .resulta(i_mul16_chebyshev17_cma_s0),
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
    dspba_delay_ver #( .width(32), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul16_chebyshev17_cma_delay ( .xin(i_mul16_chebyshev17_cma_s0), .xout(i_mul16_chebyshev17_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul16_chebyshev17_cma_q = $unsigned(i_mul16_chebyshev17_cma_qq[31:0]);

    // bgTrunc_i_mul16_chebyshev17_sel_x(BITSELECT,85)@10
    assign bgTrunc_i_mul16_chebyshev17_sel_x_b = i_mul16_chebyshev17_cma_q[15:0];

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,137)@10 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(bgTrunc_i_mul16_chebyshev17_sel_x_b);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(bgTrunc_i_dot_prod_add_chebyshev16_sel_x_b);
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("true"),
        .signed_max("true"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(32)
    ) i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    dspba_delay_ver #( .width(32), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add43_chebyshev21(ADD,43)@13
    assign i_dot_prod_add43_chebyshev21_a = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod42_chebyshev0_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add43_chebyshev21_b = {1'b0, c_i16_559_q};
    assign i_dot_prod_add43_chebyshev21_o = $unsigned(i_dot_prod_add43_chebyshev21_a) + $unsigned(i_dot_prod_add43_chebyshev21_b);
    assign i_dot_prod_add43_chebyshev21_q = i_dot_prod_add43_chebyshev21_o[16:0];

    // bgTrunc_i_dot_prod_add43_chebyshev21_sel_x(BITSELECT,81)@13
    assign bgTrunc_i_dot_prod_add43_chebyshev21_sel_x_b = i_dot_prod_add43_chebyshev21_q[15:0];

    // i_mul18_chebyshev22_cma(CHAINMULTADD,212)@13 + 3
    assign i_mul18_chebyshev22_cma_reset = ~ (resetn);
    assign i_mul18_chebyshev22_cma_ena0 = 1'b1;
    assign i_mul18_chebyshev22_cma_ena1 = i_mul18_chebyshev22_cma_ena0;
    assign i_mul18_chebyshev22_cma_ena2 = i_mul18_chebyshev22_cma_ena0;

    assign i_mul18_chebyshev22_cma_a0 = bgTrunc_i_dot_prod_add43_chebyshev21_sel_x_b;
    assign i_mul18_chebyshev22_cma_c0 = redist11_i_llvm_fpga_mem_unnamed_chebyshev7_chebyshev11_out_o_readdata_6_mem_q;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(16),
        .ax_clock("0"),
        .ax_width(16),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(32)
    ) i_mul18_chebyshev22_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul18_chebyshev22_cma_ena2, i_mul18_chebyshev22_cma_ena1, i_mul18_chebyshev22_cma_ena0 }),
        .aclr({ i_mul18_chebyshev22_cma_reset, i_mul18_chebyshev22_cma_reset }),
        .ay(i_mul18_chebyshev22_cma_a0),
        .ax(i_mul18_chebyshev22_cma_c0),
        .resulta(i_mul18_chebyshev22_cma_s0),
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
    dspba_delay_ver #( .width(32), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul18_chebyshev22_cma_delay ( .xin(i_mul18_chebyshev22_cma_s0), .xout(i_mul18_chebyshev22_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul18_chebyshev22_cma_q = $unsigned(i_mul18_chebyshev22_cma_qq[31:0]);

    // bgTrunc_i_mul18_chebyshev22_sel_x(BITSELECT,86)@16
    assign bgTrunc_i_mul18_chebyshev22_sel_x_b = i_mul18_chebyshev22_cma_q[15:0];

    // redist3_sync_together78_aunroll_x_in_i_valid_14(DELAY,217)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together78_aunroll_x_in_i_valid_14 ( .xin(redist2_sync_together78_aunroll_x_in_i_valid_1_q), .xout(redist3_sync_together78_aunroll_x_in_i_valid_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg4(REG,133)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together78_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist6_i_xor_chebyshev4_q_14(DELAY,220)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_i_xor_chebyshev4_q_14 ( .xin(redist5_i_xor_chebyshev4_q_1_q), .xout(redist6_i_xor_chebyshev4_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_notEnable(LOGICAL,246)
    assign redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_nor(LOGICAL,247)
    assign redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_nor_q = ~ (redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_notEnable_q | redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_sticky_ena_q);

    // redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_last(CONSTANT,243)
    assign redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_last_q = $unsigned(5'b01001);

    // redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_cmp(LOGICAL,244)
    assign redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_cmp_b = {1'b0, redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_q};
    assign redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_cmp_q = $unsigned(redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_last_q == redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_cmp_b ? 1'b1 : 1'b0);

    // redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_cmpReg(REG,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_cmpReg_q <= $unsigned(redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_cmp_q);
        end
    end

    // redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_sticky_ena(REG,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_nor_q == 1'b1)
        begin
            redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_sticky_ena_q <= $unsigned(redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_cmpReg_q);
        end
    end

    // redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_enaAnd(LOGICAL,249)
    assign redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_enaAnd_q = redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_sticky_ena_q & VCC_q;

    // redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt(COUNTER,241)
    // low=0, high=10, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_i <= 4'd0;
            redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_i == 4'd9)
            begin
                redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_eq <= 1'b0;
            end
            if (redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_eq == 1'b1)
            begin
                redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_i <= $unsigned(redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_i) + $unsigned(4'd6);
            end
            else
            begin
                redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_i <= $unsigned(redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_q = redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_i[3:0];

    // i_arrayidx214_chebyshev0_mult_x_im0_shift0(BITSHIFT,207)@3
    assign i_arrayidx214_chebyshev0_mult_x_im0_shift0_qint = { i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx214_chebyshev0_mult_x_im0_shift0_q = i_arrayidx214_chebyshev0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx214_chebyshev0_mult_x_sums_align_3(BITSHIFT,184)@3
    assign i_arrayidx214_chebyshev0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx214_chebyshev0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx214_chebyshev0_mult_x_sums_align_3_q = i_arrayidx214_chebyshev0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx214_chebyshev0_mult_x_im6_shift0(BITSHIFT,209)@3
    assign i_arrayidx214_chebyshev0_mult_x_im6_shift0_qint = { i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx214_chebyshev0_mult_x_im6_shift0_q = i_arrayidx214_chebyshev0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx214_chebyshev0_mult_x_sums_align_2(BITSHIFT,183)@3
    assign i_arrayidx214_chebyshev0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx214_chebyshev0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx214_chebyshev0_mult_x_sums_align_2_q = i_arrayidx214_chebyshev0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx214_chebyshev0_mult_x_sums_join_4(BITJOIN,185)@3
    assign i_arrayidx214_chebyshev0_mult_x_sums_join_4_q = {i_arrayidx214_chebyshev0_mult_x_sums_align_3_q, i_arrayidx214_chebyshev0_mult_x_sums_align_2_q};

    // i_arrayidx214_chebyshev0_mult_x_im3_shift0(BITSHIFT,208)@3
    assign i_arrayidx214_chebyshev0_mult_x_im3_shift0_qint = { i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx214_chebyshev0_mult_x_im3_shift0_q = i_arrayidx214_chebyshev0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx214_chebyshev0_mult_x_sums_align_0(BITSHIFT,181)@3
    assign i_arrayidx214_chebyshev0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx214_chebyshev0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx214_chebyshev0_mult_x_sums_align_0_q = i_arrayidx214_chebyshev0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx214_chebyshev0_mult_x_im9_shift0(BITSHIFT,210)@3
    assign i_arrayidx214_chebyshev0_mult_x_im9_shift0_qint = { i_arrayidx133_chebyshev0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx214_chebyshev0_mult_x_im9_shift0_q = i_arrayidx214_chebyshev0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx214_chebyshev0_mult_x_sums_join_1(BITJOIN,182)@3
    assign i_arrayidx214_chebyshev0_mult_x_sums_join_1_q = {i_arrayidx214_chebyshev0_mult_x_sums_align_0_q, {1'b0, i_arrayidx214_chebyshev0_mult_x_im9_shift0_q}};

    // i_arrayidx214_chebyshev0_mult_x_sums_result_add_0_0(ADD,186)@3
    assign i_arrayidx214_chebyshev0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx214_chebyshev0_mult_x_sums_join_1_q};
    assign i_arrayidx214_chebyshev0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx214_chebyshev0_mult_x_sums_join_4_q};
    assign i_arrayidx214_chebyshev0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx214_chebyshev0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx214_chebyshev0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx214_chebyshev0_mult_x_sums_result_add_0_0_q = i_arrayidx214_chebyshev0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx214_chebyshev0_mult_extender_x(BITJOIN,107)@3
    assign i_arrayidx214_chebyshev0_mult_extender_x_q = {i_arrayidx133_chebyshev0_mult_multconst_x_q, i_arrayidx214_chebyshev0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx214_chebyshev0_trunc_sel_x(BITSELECT,109)@3
    assign i_arrayidx214_chebyshev0_trunc_sel_x_b = i_arrayidx214_chebyshev0_mult_extender_x_q[63:0];

    // c_chebyshev_data_out_pmem(CONSTANT,9)
    assign c_chebyshev_data_out_pmem_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // i_arrayidx214_chebyshev0_add_x(ADD,101)@3
    assign i_arrayidx214_chebyshev0_add_x_a = {1'b0, c_chebyshev_data_out_pmem_q};
    assign i_arrayidx214_chebyshev0_add_x_b = {1'b0, i_arrayidx214_chebyshev0_trunc_sel_x_b};
    assign i_arrayidx214_chebyshev0_add_x_o = $unsigned(i_arrayidx214_chebyshev0_add_x_a) + $unsigned(i_arrayidx214_chebyshev0_add_x_b);
    assign i_arrayidx214_chebyshev0_add_x_q = i_arrayidx214_chebyshev0_add_x_o[64:0];

    // i_arrayidx214_chebyshev0_dupName_0_trunc_sel_x(BITSELECT,110)@3
    assign i_arrayidx214_chebyshev0_dupName_0_trunc_sel_x_b = i_arrayidx214_chebyshev0_add_x_q[63:0];

    // i_arrayidx214_chebyshev23_vt_select_63(BITSELECT,39)@3
    assign i_arrayidx214_chebyshev23_vt_select_63_b = i_arrayidx214_chebyshev0_dupName_0_trunc_sel_x_b[63:1];

    // redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_inputreg0(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_inputreg0_q <= '0;
        end
        else
        begin
            redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_inputreg0_q <= $unsigned(i_arrayidx214_chebyshev23_vt_select_63_b);
        end
    end

    // redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_wraddr(REG,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_wraddr_q <= $unsigned(4'b1010);
        end
        else
        begin
            redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_wraddr_q <= $unsigned(redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_q);
        end
    end

    // redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem(DUALMEM,240)
    assign redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_ia = $unsigned(redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_inputreg0_q);
    assign redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_aa = redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_wraddr_q;
    assign redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_ab = redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_rdcnt_q;
    assign redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(63),
        .widthad_a(4),
        .numwords_a(11),
        .width_b(63),
        .widthad_b(4),
        .numwords_b(11),
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
    ) redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_dmem (
        .clocken1(redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_reset0),
        .clock1(clock),
        .address_a(redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_aa),
        .data_a(redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_ab),
        .q_b(redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_iq),
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
    assign redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_q = redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_iq[62:0];

    // i_arrayidx214_chebyshev23_vt_join(BITJOIN,38)@16
    assign i_arrayidx214_chebyshev23_vt_join_q = {redist13_i_arrayidx214_chebyshev23_vt_select_63_b_13_mem_q, GND_q};

    // i_llvm_fpga_mem_memdep_2_chebyshev24(BLACKBOX,53)@16
    // out out_memdep_2_chebyshev_avm_address@20000000
    // out out_memdep_2_chebyshev_avm_burstcount@20000000
    // out out_memdep_2_chebyshev_avm_byteenable@20000000
    // out out_memdep_2_chebyshev_avm_enable@20000000
    // out out_memdep_2_chebyshev_avm_read@20000000
    // out out_memdep_2_chebyshev_avm_write@20000000
    // out out_memdep_2_chebyshev_avm_writedata@20000000
    // out out_o_stall@17
    // out out_o_valid@17
    // out out_o_writeack@17
    chebyshev_i_llvm_fpga_mem_memdep_2_0 thei_llvm_fpga_mem_memdep_2_chebyshev24 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx214_chebyshev23_vt_join_q),
        .in_i_predicate(redist6_i_xor_chebyshev4_q_14_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_i_writedata(bgTrunc_i_mul18_chebyshev22_sel_x_b),
        .in_memdep_2_chebyshev_avm_readdata(in_memdep_2_chebyshev_avm_readdata),
        .in_memdep_2_chebyshev_avm_readdatavalid(in_memdep_2_chebyshev_avm_readdatavalid),
        .in_memdep_2_chebyshev_avm_waitrequest(in_memdep_2_chebyshev_avm_waitrequest),
        .in_memdep_2_chebyshev_avm_writeack(in_memdep_2_chebyshev_avm_writeack),
        .out_memdep_2_chebyshev_avm_address(i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_address),
        .out_memdep_2_chebyshev_avm_burstcount(i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_burstcount),
        .out_memdep_2_chebyshev_avm_byteenable(i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_byteenable),
        .out_memdep_2_chebyshev_avm_enable(i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_enable),
        .out_memdep_2_chebyshev_avm_read(i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_read),
        .out_memdep_2_chebyshev_avm_write(i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_write),
        .out_memdep_2_chebyshev_avm_writedata(i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,90)
    assign out_memdep_2_chebyshev_avm_address = i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_address;
    assign out_memdep_2_chebyshev_avm_enable = i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_enable;
    assign out_memdep_2_chebyshev_avm_read = i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_read;
    assign out_memdep_2_chebyshev_avm_write = i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_write;
    assign out_memdep_2_chebyshev_avm_writedata = i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_writedata;
    assign out_memdep_2_chebyshev_avm_byteenable = i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_byteenable;
    assign out_memdep_2_chebyshev_avm_burstcount = i_llvm_fpga_mem_memdep_2_chebyshev24_out_memdep_2_chebyshev_avm_burstcount;

    // redist4_sync_together78_aunroll_x_in_i_valid_15(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together78_aunroll_x_in_i_valid_15_q <= '0;
        end
        else
        begin
            redist4_sync_together78_aunroll_x_in_i_valid_15_q <= $unsigned(redist3_sync_together78_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg0(REG,129)@16 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist4_sync_together78_aunroll_x_in_i_valid_15_q);
        end
    end

    // valid_fanout_reg6(REG,135)@1 + 1
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

    // valid_fanout_reg7(REG,136)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp1138_push18_chebyshev39(BLACKBOX,62)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    chebyshev_i_llvm_fpga_push_i1_notcmp1138_push18_0 thei_llvm_fpga_push_i1_notcmp1138_push18_chebyshev39 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1138_pop18_chebyshev38_out_data_out),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_notcmp1138_pop18_chebyshev38_out_feedback_stall_out_18),
        .in_keep_going(redist9_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_notcmp1138_push18_chebyshev39_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_notcmp1138_push18_chebyshev39_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together78_aunroll_x_in_c0_eni2_2_tpl_1(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together78_aunroll_x_in_c0_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together78_aunroll_x_in_c0_eni2_2_tpl_1_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1138_pop18_chebyshev38(BLACKBOX,57)@2
    // out out_feedback_stall_out_18@20000000
    chebyshev_i_llvm_fpga_pop_i1_notcmp1138_pop18_0 thei_llvm_fpga_pop_i1_notcmp1138_pop18_chebyshev38 (
        .in_data_in(redist1_sync_together78_aunroll_x_in_c0_eni2_2_tpl_1_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_notcmp1138_push18_chebyshev39_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_notcmp1138_push18_chebyshev39_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1138_pop18_chebyshev38_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_notcmp1138_pop18_chebyshev38_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_i1_notcmp1138_pop18_chebyshev38_out_data_out_15(DELAY,222)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_i_llvm_fpga_pop_i1_notcmp1138_pop18_chebyshev38_out_data_out_15 ( .xin(i_llvm_fpga_pop_i1_notcmp1138_pop18_chebyshev38_out_data_out), .xout(redist8_i_llvm_fpga_pop_i1_notcmp1138_pop18_chebyshev38_out_data_out_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_chebyshev37(LOGICAL,66)@2 + 1
    assign i_masked_chebyshev37_qi = i_notcmp_chebyshev30_q & i_first_cleanup_chebyshev3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_chebyshev37_delay ( .xin(i_masked_chebyshev37_qi), .xout(i_masked_chebyshev37_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_masked_chebyshev37_q_15(DELAY,221)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_i_masked_chebyshev37_q_15 ( .xin(i_masked_chebyshev37_q), .xout(redist7_i_masked_chebyshev37_q_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_16(DELAY,224)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_16 ( .xin(redist9_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_1_q), .xout(redist10_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,127)@17
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = redist10_i_llvm_fpga_pipeline_keep_going_chebyshev6_out_data_out_16_q;
    assign out_c0_exi3_2_tpl = redist7_i_masked_chebyshev37_q_15_q;
    assign out_c0_exi3_3_tpl = redist8_i_llvm_fpga_pop_i1_notcmp1138_pop18_chebyshev38_out_data_out_15_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_chebyshev1 = GND_q;

endmodule
