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

// SystemVerilog created from fir_i_sfc_logic_s_c0_in_for_body26_s_c0_enter12311_fir0
// SystemVerilog created on Sun Apr 19 22:13:18 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_i_sfc_logic_s_c0_in_for_body26_s_c0_enter12311_fir0 (
    input wire [15:0] in_lm2_fir_avm_readdata,
    input wire [0:0] in_lm2_fir_avm_writeack,
    input wire [0:0] in_lm2_fir_avm_waitrequest,
    input wire [0:0] in_lm2_fir_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    input wire [15:0] in_lm121_fir_avm_readdata,
    input wire [0:0] in_lm121_fir_avm_writeack,
    input wire [0:0] in_lm121_fir_avm_waitrequest,
    input wire [0:0] in_lm121_fir_avm_readdatavalid,
    output wire [31:0] out_lm2_fir_avm_address,
    output wire [0:0] out_lm2_fir_avm_enable,
    output wire [0:0] out_lm2_fir_avm_read,
    output wire [0:0] out_lm2_fir_avm_write,
    output wire [15:0] out_lm2_fir_avm_writedata,
    output wire [1:0] out_lm2_fir_avm_byteenable,
    output wire [0:0] out_lm2_fir_avm_burstcount,
    output wire [31:0] out_lm121_fir_avm_address,
    output wire [0:0] out_lm121_fir_avm_enable,
    output wire [0:0] out_lm121_fir_avm_read,
    output wire [0:0] out_lm121_fir_avm_write,
    output wire [15:0] out_lm121_fir_avm_writedata,
    output wire [1:0] out_lm121_fir_avm_byteenable,
    output wire [0:0] out_lm121_fir_avm_burstcount,
    output wire [0:0] out_c0_exi7_0_tpl,
    output wire [0:0] out_c0_exi7_1_tpl,
    output wire [31:0] out_c0_exi7_2_tpl,
    output wire [15:0] out_c0_exi7_3_tpl,
    output wire [0:0] out_c0_exi7_4_tpl,
    output wire [0:0] out_c0_exi7_5_tpl,
    output wire [0:0] out_c0_exi7_6_tpl,
    output wire [0:0] out_c0_exi7_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_fir1,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [31:0] in_c0_eni5_2_tpl,
    input wire [0:0] in_c0_eni5_3_tpl,
    input wire [0:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_fir_coef_pmem_q;
    wire [63:0] c_fir_data_in_pmem_q;
    wire [15:0] c_i16_083_q;
    wire [1:0] c_i2_178_q;
    wire [31:0] c_i32_081_q;
    wire [31:0] c_i32_182_q;
    wire [31:0] c_i32_184_q;
    wire [32:0] c_i33_186_q;
    wire [32:0] c_i33_undef80_q;
    wire [32:0] i_add27_fir16_a;
    wire [32:0] i_add27_fir16_b;
    logic [32:0] i_add27_fir16_o;
    wire [32:0] i_add27_fir16_q;
    wire [63:0] i_arrayidx296_fir18_vt_join_q;
    wire [62:0] i_arrayidx296_fir18_vt_select_63_b;
    wire [63:0] i_arrayidx337_fir25_vt_join_q;
    wire [62:0] i_arrayidx337_fir25_vt_select_63_b;
    wire [1:0] i_cleanups_shl_fir5_vt_join_q;
    wire [0:0] i_cleanups_shl_fir5_vt_select_1_b;
    wire [16:0] i_dot_prod_add_fir31_a;
    wire [16:0] i_dot_prod_add_fir31_b;
    logic [16:0] i_dot_prod_add_fir31_o;
    wire [16:0] i_dot_prod_add_fir31_q;
    wire [0:0] i_first_cleanup_xor_or_fir19_q;
    wire [0:0] i_fpga_indvars_iv9_replace_phi_fir10_s;
    reg [32:0] i_fpga_indvars_iv9_replace_phi_fir10_q;
    wire [33:0] i_fpga_indvars_iv_next10_fir37_a;
    wire [33:0] i_fpga_indvars_iv_next10_fir37_b;
    logic [33:0] i_fpga_indvars_iv_next10_fir37_o;
    wire [33:0] i_fpga_indvars_iv_next10_fir37_q;
    wire [63:0] i_idxprom28_fir17_vt_join_q;
    wire [31:0] i_idxprom28_fir17_vt_select_31_b;
    wire [32:0] i_inc39_fir33_a;
    wire [32:0] i_inc39_fir33_b;
    logic [32:0] i_inc39_fir33_o;
    wire [32:0] i_inc39_fir33_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp242420_fir39_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp242421_fir11_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp242422_fir46_out_dest_data_out_3_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_taps3319_fir22_out_dest_data_out_2_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_fir12_fir8_out_dest_data_out_4_0;
    wire [31:0] i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_write;
    wire [15:0] i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_lm121_fir26_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_write;
    wire [15:0] i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_writedata;
    wire [15:0] i_llvm_fpga_mem_lm2_fir20_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_valid_out;
    wire [15:0] i_llvm_fpga_pop_i16_fir_025_pop28_fir27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_fir_025_pop28_fir27_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2974_pop30_fir49_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2974_pop30_fir49_out_feedback_stall_out_30;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop29_fir2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop29_fir2_out_feedback_stall_out_29;
    wire [31:0] i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_feedback_stall_out_32;
    wire [31:0] i_llvm_fpga_pop_i32_k22_026_pop27_fir13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k22_026_pop27_fir13_out_feedback_stall_out_27;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop26_fir9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop26_fir9_out_feedback_stall_out_26;
    wire [15:0] i_llvm_fpga_push_i16_fir_025_push28_fir32_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i16_fir_025_push28_fir32_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_fir7_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_fir7_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2475_push31_fir52_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2475_push31_fir52_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2974_push30_fir50_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2974_push30_fir50_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fir42_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fir42_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push29_fir45_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push29_fir45_out_feedback_valid_out_29;
    wire [31:0] i_llvm_fpga_push_i32_j_027_pop2476_push32_fir15_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i32_j_027_pop2476_push32_fir15_out_feedback_valid_out_32;
    wire [31:0] i_llvm_fpga_push_i32_k22_026_push27_fir34_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_k22_026_push27_fir34_out_feedback_valid_out_27;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv9_push26_fir38_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv9_push26_fir38_out_feedback_valid_out_26;
    wire [0:0] i_masked_fir48_qi;
    reg [0:0] i_masked_fir48_q;
    wire [0:0] i_next_cleanups_fir44_s;
    reg [1:0] i_next_cleanups_fir44_q;
    wire [0:0] i_notcmp_fir41_q;
    wire [0:0] i_or_fir43_q;
    wire [0:0] i_select8_fir47_s;
    reg [15:0] i_select8_fir47_q;
    wire [32:0] i_sub31_fir23_a;
    wire [32:0] i_sub31_fir23_b;
    logic [32:0] i_sub31_fir23_o;
    wire [32:0] i_sub31_fir23_q;
    wire [0:0] i_unnamed_fir12_q;
    wire [31:0] i_unnamed_fir21_q;
    wire [0:0] i_unnamed_fir40_q;
    wire [0:0] i_xor_fir4_q;
    wire [31:0] bgTrunc_i_add27_fir16_sel_x_b;
    wire [15:0] bgTrunc_i_dot_prod_add_fir31_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next10_fir37_sel_x_b;
    wire [31:0] bgTrunc_i_inc39_fir33_sel_x_b;
    wire [31:0] bgTrunc_i_sub31_fir23_sel_x_b;
    wire [64:0] i_arrayidx296_fir0_add_x_a;
    wire [64:0] i_arrayidx296_fir0_add_x_b;
    logic [64:0] i_arrayidx296_fir0_add_x_o;
    wire [64:0] i_arrayidx296_fir0_add_x_q;
    wire [127:0] i_arrayidx296_fir0_mult_extender_x_q;
    wire [61:0] i_arrayidx296_fir0_mult_multconst_x_q;
    wire [63:0] i_arrayidx296_fir0_trunc_sel_x_b;
    wire [63:0] i_arrayidx296_fir0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx337_fir0_add_x_a;
    wire [64:0] i_arrayidx337_fir0_add_x_b;
    logic [64:0] i_arrayidx337_fir0_add_x_o;
    wire [64:0] i_arrayidx337_fir0_add_x_q;
    wire [127:0] i_arrayidx337_fir0_mult_extender_x_q;
    wire [63:0] i_arrayidx337_fir0_trunc_sel_x_b;
    wire [63:0] i_arrayidx337_fir0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_fir3_sel_x_b;
    wire [63:0] i_idxprom28_fir17_sel_x_b;
    wire [63:0] i_idxprom32_fir24_sel_x_b;
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
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_reset;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_a0;
    wire [15:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_c0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_s0;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_qq;
    wire [31:0] i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_q;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_ena1;
    wire i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_ena2;
    wire [0:0] i_exitcond11_fir35_cmp_nsign_q;
    wire [35:0] i_arrayidx296_fir0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx296_fir0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx296_fir0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx296_fir0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx296_fir0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx296_fir0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx296_fir0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx296_fir0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx296_fir0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx296_fir0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx296_fir0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx296_fir0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx337_fir0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx337_fir0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx337_fir0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx337_fir0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx337_fir0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx337_fir0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx337_fir0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx337_fir0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx337_fir0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx337_fir0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx337_fir0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx337_fir0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid219_i_cleanups_shl_fir0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid219_i_cleanups_shl_fir0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid220_i_cleanups_shl_fir0_shift_x_q;
    wire [0:0] leftShiftStage0_uid222_i_cleanups_shl_fir0_shift_x_s;
    reg [1:0] leftShiftStage0_uid222_i_cleanups_shl_fir0_shift_x_q;
    wire [10:0] i_arrayidx296_fir0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx296_fir0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx296_fir0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx296_fir0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx296_fir0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx296_fir0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx296_fir0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx296_fir0_mult_x_im9_shift0_qint;
    wire [10:0] i_arrayidx337_fir0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx337_fir0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx337_fir0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx337_fir0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx337_fir0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx337_fir0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx337_fir0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx337_fir0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx296_fir0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx296_fir0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx296_fir0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx296_fir0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx337_fir0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx337_fir0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx337_fir0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx337_fir0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together110_aunroll_x_in_c0_eni5_1_tpl_1_q;
    reg [0:0] redist1_sync_together110_aunroll_x_in_c0_eni5_1_tpl_9_q;
    reg [31:0] redist2_sync_together110_aunroll_x_in_c0_eni5_2_tpl_1_q;
    reg [0:0] redist3_sync_together110_aunroll_x_in_c0_eni5_3_tpl_9_q;
    reg [0:0] redist4_sync_together110_aunroll_x_in_c0_eni5_4_tpl_1_q;
    reg [0:0] redist5_sync_together110_aunroll_x_in_c0_eni5_5_tpl_9_q;
    reg [0:0] redist6_sync_together110_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist7_sync_together110_aunroll_x_in_i_valid_8_q;
    reg [31:0] redist8_bgTrunc_i_sub31_fir23_sel_x_b_1_q;
    reg [0:0] redist9_i_xor_fir4_q_1_q;
    reg [0:0] redist10_i_masked_fir48_q_8_q;
    reg [0:0] redist12_i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_data_out_1_q;
    reg [0:0] redist13_i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_data_out_8_q;
    reg [0:0] redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q;
    reg [0:0] redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_9_q;
    reg [31:0] redist17_i_idxprom28_fir17_vt_select_31_b_1_q;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_inputreg0_q;
    wire redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_reset0;
    wire [31:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_ia;
    wire [2:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_aa;
    wire [2:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_ab;
    wire [31:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_iq;
    wire [31:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_q;
    wire [2:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_q;
    (* preserve *) reg [2:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_i;
    (* preserve *) reg redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_eq;
    reg [2:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_wraddr_q;
    wire [3:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_last_q;
    wire [3:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_cmp_b;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_cmp_q;
    (* dont_merge *) reg [0:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_cmpReg_q;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_notEnable_q;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_nor_q;
    (* dont_merge *) reg [0:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_sticky_ena_q;
    wire [0:0] redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist6_sync_together110_aunroll_x_in_i_valid_1(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together110_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist6_sync_together110_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1(DELAY,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_fir6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid219_i_cleanups_shl_fir0_shift_x(BITSELECT,218)@2
    assign leftShiftStage0Idx1Rng1_uid219_i_cleanups_shl_fir0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop29_fir2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid219_i_cleanups_shl_fir0_shift_x_b = leftShiftStage0Idx1Rng1_uid219_i_cleanups_shl_fir0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid220_i_cleanups_shl_fir0_shift_x(BITJOIN,219)@2
    assign leftShiftStage0Idx1_uid220_i_cleanups_shl_fir0_shift_x_q = {leftShiftStage0Idx1Rng1_uid219_i_cleanups_shl_fir0_shift_x_b, GND_q};

    // leftShiftStage0_uid222_i_cleanups_shl_fir0_shift_x(MUX,221)@2
    assign leftShiftStage0_uid222_i_cleanups_shl_fir0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid222_i_cleanups_shl_fir0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop29_fir2_out_data_out or leftShiftStage0Idx1_uid220_i_cleanups_shl_fir0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid222_i_cleanups_shl_fir0_shift_x_s)
            1'b0 : leftShiftStage0_uid222_i_cleanups_shl_fir0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop29_fir2_out_data_out;
            1'b1 : leftShiftStage0_uid222_i_cleanups_shl_fir0_shift_x_q = leftShiftStage0Idx1_uid220_i_cleanups_shl_fir0_shift_x_q;
            default : leftShiftStage0_uid222_i_cleanups_shl_fir0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_fir5_vt_select_1(BITSELECT,52)@2
    assign i_cleanups_shl_fir5_vt_select_1_b = leftShiftStage0_uid222_i_cleanups_shl_fir0_shift_x_q[1:1];

    // i_cleanups_shl_fir5_vt_join(BITJOIN,51)@2
    assign i_cleanups_shl_fir5_vt_join_q = {i_cleanups_shl_fir5_vt_select_1_b, GND_q};

    // i_xor_fir4(LOGICAL,99)@2
    assign i_xor_fir4_q = i_first_cleanup_fir3_sel_x_b ^ VCC_q;

    // i_notcmp_fir41(LOGICAL,92)@2
    assign i_notcmp_fir41_q = i_unnamed_fir40_q ^ VCC_q;

    // i_or_fir43(LOGICAL,93)@2
    assign i_or_fir43_q = i_notcmp_fir41_q | i_xor_fir4_q;

    // i_next_cleanups_fir44(MUX,91)@2
    assign i_next_cleanups_fir44_s = i_or_fir43_q;
    always @(i_next_cleanups_fir44_s or i_llvm_fpga_pop_i2_cleanups_pop29_fir2_out_data_out or i_cleanups_shl_fir5_vt_join_q)
    begin
        unique case (i_next_cleanups_fir44_s)
            1'b0 : i_next_cleanups_fir44_q = i_llvm_fpga_pop_i2_cleanups_pop29_fir2_out_data_out;
            1'b1 : i_next_cleanups_fir44_q = i_cleanups_shl_fir5_vt_join_q;
            default : i_next_cleanups_fir44_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push29_fir45(BLACKBOX,86)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    fir_i_llvm_fpga_push_i2_cleanups_push29_0 thei_llvm_fpga_push_i2_cleanups_push29_fir45 (
        .in_data_in(i_next_cleanups_fir44_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i2_cleanups_pop29_fir2_out_feedback_stall_out_29),
        .in_keep_going(redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i2_cleanups_push29_fir45_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i2_cleanups_push29_fir45_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together110_aunroll_x_in_c0_eni5_1_tpl_1(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together110_aunroll_x_in_c0_eni5_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together110_aunroll_x_in_c0_eni5_1_tpl_1_q <= $unsigned(in_c0_eni5_1_tpl);
        end
    end

    // c_i2_178(CONSTANT,35)
    assign c_i2_178_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop29_fir2(BLACKBOX,77)@2
    // out out_feedback_stall_out_29@20000000
    fir_i_llvm_fpga_pop_i2_cleanups_pop29_0 thei_llvm_fpga_pop_i2_cleanups_pop29_fir2 (
        .in_data_in(c_i2_178_q),
        .in_dir(redist0_sync_together110_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i2_cleanups_push29_fir45_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i2_cleanups_push29_fir45_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop29_fir2_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i2_cleanups_pop29_fir2_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_fir3_sel_x(BITSELECT,142)@2
    assign i_first_cleanup_fir3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop29_fir2_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_fir12_fir8(BLACKBOX,70)@2
    fir_i_llvm_fpga_ffwd_dest_i33_unnamed_12_fir0 thei_llvm_fpga_ffwd_dest_i33_unnamed_fir12_fir8 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i33_unnamed_fir12_fir8_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_186(CONSTANT,39)
    assign c_i33_186_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next10_fir37(ADD,58)@2
    assign i_fpga_indvars_iv_next10_fir37_a = {1'b0, i_fpga_indvars_iv9_replace_phi_fir10_q};
    assign i_fpga_indvars_iv_next10_fir37_b = {1'b0, c_i33_186_q};
    assign i_fpga_indvars_iv_next10_fir37_o = $unsigned(i_fpga_indvars_iv_next10_fir37_a) + $unsigned(i_fpga_indvars_iv_next10_fir37_b);
    assign i_fpga_indvars_iv_next10_fir37_q = i_fpga_indvars_iv_next10_fir37_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next10_fir37_sel_x(BITSELECT,111)@2
    assign bgTrunc_i_fpga_indvars_iv_next10_fir37_sel_x_b = i_fpga_indvars_iv_next10_fir37_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv9_push26_fir38(BLACKBOX,89)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    fir_i_llvm_fpga_push_i33_fpga_indvars_iv9_push26_0 thei_llvm_fpga_push_i33_fpga_indvars_iv9_push26_fir38 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next10_fir37_sel_x_b),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop26_fir9_out_feedback_stall_out_26),
        .in_keep_going(redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i33_fpga_indvars_iv9_push26_fir38_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i33_fpga_indvars_iv9_push26_fir38_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef80(CONSTANT,40)
    assign c_i33_undef80_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop26_fir9(BLACKBOX,80)@2
    // out out_feedback_stall_out_26@20000000
    fir_i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop26_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv9_pop26_fir9 (
        .in_data_in(c_i33_undef80_q),
        .in_dir(redist0_sync_together110_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i33_fpga_indvars_iv9_push26_fir38_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i33_fpga_indvars_iv9_push26_fir38_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop26_fir9_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop26_fir9_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv9_replace_phi_fir10(MUX,57)@2
    assign i_fpga_indvars_iv9_replace_phi_fir10_s = redist0_sync_together110_aunroll_x_in_c0_eni5_1_tpl_1_q;
    always @(i_fpga_indvars_iv9_replace_phi_fir10_s or i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop26_fir9_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_fir12_fir8_out_dest_data_out_4_0)
    begin
        unique case (i_fpga_indvars_iv9_replace_phi_fir10_s)
            1'b0 : i_fpga_indvars_iv9_replace_phi_fir10_q = i_llvm_fpga_pop_i33_fpga_indvars_iv9_pop26_fir9_out_data_out;
            1'b1 : i_fpga_indvars_iv9_replace_phi_fir10_q = i_llvm_fpga_ffwd_dest_i33_unnamed_fir12_fir8_out_dest_data_out_4_0;
            default : i_fpga_indvars_iv9_replace_phi_fir10_q = 33'b0;
        endcase
    end

    // i_exitcond11_fir35_cmp_nsign(LOGICAL,178)@2
    assign i_exitcond11_fir35_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv9_replace_phi_fir10_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp242420_fir39(BLACKBOX,66)@2
    fir_i_llvm_fpga_ffwd_dest_i1_cmp242420_0 thei_llvm_fpga_ffwd_dest_i1_cmp242420_fir39 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_cmp242420_fir39_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_fir40(LOGICAL,98)@2
    assign i_unnamed_fir40_q = i_llvm_fpga_ffwd_dest_i1_cmp242420_fir39_out_dest_data_out_3_0 & i_exitcond11_fir35_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_fir42(BLACKBOX,85)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    fir_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_fir42 (
        .in_data_in(i_unnamed_fir40_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_fir6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_fir3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_fir42_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_fir42_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,151)@1 + 1
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

    // i_llvm_fpga_push_i1_lastiniteration_fir7(BLACKBOX,82)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    fir_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_fir7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_fir6_out_initeration_stall_out),
        .in_keep_going(redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_fir7_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_fir7_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_fir6(BLACKBOX,73)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    fir_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_fir6 (
        .in_data_in(in_c0_eni5_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_fir7_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_fir7_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_fir42_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_fir42_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_fir6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_fir6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_fir6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,42)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,103)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_valid_out;

    // valid_fanout_reg6(REG,156)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist6_sync_together110_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist9_i_xor_fir4_q_1(DELAY,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_xor_fir4_q_1_q <= '0;
        end
        else
        begin
            redist9_i_xor_fir4_q_1_q <= $unsigned(i_xor_fir4_q);
        end
    end

    // valid_fanout_reg2(REG,152)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist6_sync_together110_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp242421_fir11(BLACKBOX,67)@3
    fir_i_llvm_fpga_ffwd_dest_i1_cmp242421_0 thei_llvm_fpga_ffwd_dest_i1_cmp242421_fir11 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_cmp242421_fir11_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_fir12(LOGICAL,96)@3
    assign i_unnamed_fir12_q = i_llvm_fpga_ffwd_dest_i1_cmp242421_fir11_out_dest_data_out_3_0 ^ VCC_q;

    // i_first_cleanup_xor_or_fir19(LOGICAL,56)@3
    assign i_first_cleanup_xor_or_fir19_q = i_unnamed_fir12_q | redist9_i_xor_fir4_q_1_q;

    // i_arrayidx296_fir0_mult_multconst_x(CONSTANT,125)
    assign i_arrayidx296_fir0_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // c_i32_081(CONSTANT,36)
    assign c_i32_081_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,154)@1 + 1
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

    // valid_fanout_reg5(REG,155)@1 + 1
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

    // i_llvm_fpga_push_i32_j_027_pop2476_push32_fir15(BLACKBOX,87)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    fir_i_llvm_fpga_push_i32_j_027_pop2476_push32_0 thei_llvm_fpga_push_i32_j_027_pop2476_push32_fir15 (
        .in_data_in(i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_feedback_stall_out_32),
        .in_keep_going(redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i32_j_027_pop2476_push32_fir15_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i32_j_027_pop2476_push32_fir15_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together110_aunroll_x_in_c0_eni5_2_tpl_1(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together110_aunroll_x_in_c0_eni5_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together110_aunroll_x_in_c0_eni5_2_tpl_1_q <= $unsigned(in_c0_eni5_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14(BLACKBOX,78)@2
    // out out_feedback_stall_out_32@20000000
    fir_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_0 thei_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14 (
        .in_data_in(redist2_sync_together110_aunroll_x_in_c0_eni5_2_tpl_1_q),
        .in_dir(redist0_sync_together110_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i32_j_027_pop2476_push32_fir15_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i32_j_027_pop2476_push32_fir15_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,153)@1 + 1
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

    // valid_fanout_reg11(REG,161)@1 + 1
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

    // c_i32_184(CONSTANT,38)
    assign c_i32_184_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc39_fir33(ADD,65)@2
    assign i_inc39_fir33_a = {1'b0, i_llvm_fpga_pop_i32_k22_026_pop27_fir13_out_data_out};
    assign i_inc39_fir33_b = {1'b0, c_i32_184_q};
    assign i_inc39_fir33_o = $unsigned(i_inc39_fir33_a) + $unsigned(i_inc39_fir33_b);
    assign i_inc39_fir33_q = i_inc39_fir33_o[32:0];

    // bgTrunc_i_inc39_fir33_sel_x(BITSELECT,112)@2
    assign bgTrunc_i_inc39_fir33_sel_x_b = i_inc39_fir33_q[31:0];

    // i_llvm_fpga_push_i32_k22_026_push27_fir34(BLACKBOX,88)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    fir_i_llvm_fpga_push_i32_k22_026_push27_0 thei_llvm_fpga_push_i32_k22_026_push27_fir34 (
        .in_data_in(bgTrunc_i_inc39_fir33_sel_x_b),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_k22_026_pop27_fir13_out_feedback_stall_out_27),
        .in_keep_going(redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_k22_026_push27_fir34_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_k22_026_push27_fir34_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k22_026_pop27_fir13(BLACKBOX,79)@2
    // out out_feedback_stall_out_27@20000000
    fir_i_llvm_fpga_pop_i32_k22_026_pop27_0 thei_llvm_fpga_pop_i32_k22_026_pop27_fir13 (
        .in_data_in(c_i32_081_q),
        .in_dir(redist0_sync_together110_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i32_k22_026_push27_fir34_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_k22_026_push27_fir34_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_k22_026_pop27_fir13_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_k22_026_pop27_fir13_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add27_fir16(ADD,43)@2
    assign i_add27_fir16_a = {1'b0, i_llvm_fpga_pop_i32_k22_026_pop27_fir13_out_data_out};
    assign i_add27_fir16_b = {1'b0, i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out};
    assign i_add27_fir16_o = $unsigned(i_add27_fir16_a) + $unsigned(i_add27_fir16_b);
    assign i_add27_fir16_q = i_add27_fir16_o[32:0];

    // bgTrunc_i_add27_fir16_sel_x(BITSELECT,109)@2
    assign bgTrunc_i_add27_fir16_sel_x_b = i_add27_fir16_q[31:0];

    // i_idxprom28_fir17_sel_x(BITSELECT,143)@2
    assign i_idxprom28_fir17_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add27_fir16_sel_x_b[31:0]};

    // i_idxprom28_fir17_vt_select_31(BITSELECT,62)@2
    assign i_idxprom28_fir17_vt_select_31_b = i_idxprom28_fir17_sel_x_b[31:0];

    // redist17_i_idxprom28_fir17_vt_select_31_b_1(DELAY,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_idxprom28_fir17_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist17_i_idxprom28_fir17_vt_select_31_b_1_q <= $unsigned(i_idxprom28_fir17_vt_select_31_b);
        end
    end

    // i_idxprom28_fir17_vt_join(BITJOIN,61)@3
    assign i_idxprom28_fir17_vt_join_q = {c_i32_081_q, redist17_i_idxprom28_fir17_vt_select_31_b_1_q};

    // i_arrayidx296_fir0_mult_x_bs1_merged_bit_select(BITSELECT,231)@3
    assign i_arrayidx296_fir0_mult_x_bs1_merged_bit_select_b = i_idxprom28_fir17_vt_join_q[63:54];
    assign i_arrayidx296_fir0_mult_x_bs1_merged_bit_select_c = i_idxprom28_fir17_vt_join_q[53:36];
    assign i_arrayidx296_fir0_mult_x_bs1_merged_bit_select_d = i_idxprom28_fir17_vt_join_q[35:18];
    assign i_arrayidx296_fir0_mult_x_bs1_merged_bit_select_e = i_idxprom28_fir17_vt_join_q[17:0];

    // i_arrayidx296_fir0_mult_x_im0_shift0(BITSHIFT,223)@3
    assign i_arrayidx296_fir0_mult_x_im0_shift0_qint = { i_arrayidx296_fir0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx296_fir0_mult_x_im0_shift0_q = i_arrayidx296_fir0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx296_fir0_mult_x_sums_align_3(BITSHIFT,194)@3
    assign i_arrayidx296_fir0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx296_fir0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx296_fir0_mult_x_sums_align_3_q = i_arrayidx296_fir0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx296_fir0_mult_x_im6_shift0(BITSHIFT,225)@3
    assign i_arrayidx296_fir0_mult_x_im6_shift0_qint = { i_arrayidx296_fir0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx296_fir0_mult_x_im6_shift0_q = i_arrayidx296_fir0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx296_fir0_mult_x_sums_align_2(BITSHIFT,193)@3
    assign i_arrayidx296_fir0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx296_fir0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx296_fir0_mult_x_sums_align_2_q = i_arrayidx296_fir0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx296_fir0_mult_x_sums_join_4(BITJOIN,195)@3
    assign i_arrayidx296_fir0_mult_x_sums_join_4_q = {i_arrayidx296_fir0_mult_x_sums_align_3_q, i_arrayidx296_fir0_mult_x_sums_align_2_q};

    // i_arrayidx296_fir0_mult_x_im3_shift0(BITSHIFT,224)@3
    assign i_arrayidx296_fir0_mult_x_im3_shift0_qint = { i_arrayidx296_fir0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx296_fir0_mult_x_im3_shift0_q = i_arrayidx296_fir0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx296_fir0_mult_x_sums_align_0(BITSHIFT,191)@3
    assign i_arrayidx296_fir0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx296_fir0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx296_fir0_mult_x_sums_align_0_q = i_arrayidx296_fir0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx296_fir0_mult_x_im9_shift0(BITSHIFT,226)@3
    assign i_arrayidx296_fir0_mult_x_im9_shift0_qint = { i_arrayidx296_fir0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx296_fir0_mult_x_im9_shift0_q = i_arrayidx296_fir0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx296_fir0_mult_x_sums_join_1(BITJOIN,192)@3
    assign i_arrayidx296_fir0_mult_x_sums_join_1_q = {i_arrayidx296_fir0_mult_x_sums_align_0_q, {1'b0, i_arrayidx296_fir0_mult_x_im9_shift0_q}};

    // i_arrayidx296_fir0_mult_x_sums_result_add_0_0(ADD,196)@3
    assign i_arrayidx296_fir0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx296_fir0_mult_x_sums_join_1_q};
    assign i_arrayidx296_fir0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx296_fir0_mult_x_sums_join_4_q};
    assign i_arrayidx296_fir0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx296_fir0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx296_fir0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx296_fir0_mult_x_sums_result_add_0_0_q = i_arrayidx296_fir0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx296_fir0_mult_extender_x(BITJOIN,124)@3
    assign i_arrayidx296_fir0_mult_extender_x_q = {i_arrayidx296_fir0_mult_multconst_x_q, i_arrayidx296_fir0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx296_fir0_trunc_sel_x(BITSELECT,126)@3
    assign i_arrayidx296_fir0_trunc_sel_x_b = i_arrayidx296_fir0_mult_extender_x_q[63:0];

    // c_fir_data_in_pmem(CONSTANT,8)
    assign c_fir_data_in_pmem_q = $unsigned(64'b0100000000000111000000000000000000000000000000000000000000000000);

    // i_arrayidx296_fir0_add_x(ADD,118)@3
    assign i_arrayidx296_fir0_add_x_a = {1'b0, c_fir_data_in_pmem_q};
    assign i_arrayidx296_fir0_add_x_b = {1'b0, i_arrayidx296_fir0_trunc_sel_x_b};
    assign i_arrayidx296_fir0_add_x_o = $unsigned(i_arrayidx296_fir0_add_x_a) + $unsigned(i_arrayidx296_fir0_add_x_b);
    assign i_arrayidx296_fir0_add_x_q = i_arrayidx296_fir0_add_x_o[64:0];

    // i_arrayidx296_fir0_dupName_0_trunc_sel_x(BITSELECT,127)@3
    assign i_arrayidx296_fir0_dupName_0_trunc_sel_x_b = i_arrayidx296_fir0_add_x_q[63:0];

    // i_arrayidx296_fir18_vt_select_63(BITSELECT,46)@3
    assign i_arrayidx296_fir18_vt_select_63_b = i_arrayidx296_fir0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx296_fir18_vt_join(BITJOIN,45)@3
    assign i_arrayidx296_fir18_vt_join_q = {i_arrayidx296_fir18_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_lm2_fir20(BLACKBOX,72)@3
    // in in_i_stall@20000000
    // out out_lm2_fir_avm_address@20000000
    // out out_lm2_fir_avm_burstcount@20000000
    // out out_lm2_fir_avm_byteenable@20000000
    // out out_lm2_fir_avm_enable@20000000
    // out out_lm2_fir_avm_read@20000000
    // out out_lm2_fir_avm_write@20000000
    // out out_lm2_fir_avm_writedata@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    fir_i_llvm_fpga_mem_lm2_0 thei_llvm_fpga_mem_lm2_fir20 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx296_fir18_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_or_fir19_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_lm2_fir_avm_readdata(in_lm2_fir_avm_readdata),
        .in_lm2_fir_avm_readdatavalid(in_lm2_fir_avm_readdatavalid),
        .in_lm2_fir_avm_waitrequest(in_lm2_fir_avm_waitrequest),
        .in_lm2_fir_avm_writeack(in_lm2_fir_avm_writeack),
        .out_lm2_fir_avm_address(i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_address),
        .out_lm2_fir_avm_burstcount(i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_burstcount),
        .out_lm2_fir_avm_byteenable(i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_byteenable),
        .out_lm2_fir_avm_enable(i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_enable),
        .out_lm2_fir_avm_read(i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_read),
        .out_lm2_fir_avm_write(i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_write),
        .out_lm2_fir_avm_writedata(i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm2_fir20_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,116)
    assign out_lm2_fir_avm_address = i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_address;
    assign out_lm2_fir_avm_enable = i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_enable;
    assign out_lm2_fir_avm_read = i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_read;
    assign out_lm2_fir_avm_write = i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_write;
    assign out_lm2_fir_avm_writedata = i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_writedata;
    assign out_lm2_fir_avm_byteenable = i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_byteenable;
    assign out_lm2_fir_avm_burstcount = i_llvm_fpga_mem_lm2_fir20_out_lm2_fir_avm_burstcount;

    // valid_fanout_reg8(REG,158)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist6_sync_together110_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_182(CONSTANT,37)
    assign c_i32_182_q = $unsigned(32'b11111111111111111111111111111111);

    // i_unnamed_fir21(LOGICAL,97)@2
    assign i_unnamed_fir21_q = i_llvm_fpga_pop_i32_k22_026_pop27_fir13_out_data_out ^ c_i32_182_q;

    // valid_fanout_reg7(REG,157)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_taps3319_fir22(BLACKBOX,69)@2
    fir_i_llvm_fpga_ffwd_dest_i32_taps3319_0 thei_llvm_fpga_ffwd_dest_i32_taps3319_fir22 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_taps3319_fir22_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sub31_fir23(ADD,95)@2
    assign i_sub31_fir23_a = {1'b0, i_llvm_fpga_ffwd_dest_i32_taps3319_fir22_out_dest_data_out_2_0};
    assign i_sub31_fir23_b = {1'b0, i_unnamed_fir21_q};
    assign i_sub31_fir23_o = $unsigned(i_sub31_fir23_a) + $unsigned(i_sub31_fir23_b);
    assign i_sub31_fir23_q = i_sub31_fir23_o[32:0];

    // bgTrunc_i_sub31_fir23_sel_x(BITSELECT,113)@2
    assign bgTrunc_i_sub31_fir23_sel_x_b = i_sub31_fir23_q[31:0];

    // redist8_bgTrunc_i_sub31_fir23_sel_x_b_1(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_bgTrunc_i_sub31_fir23_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist8_bgTrunc_i_sub31_fir23_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub31_fir23_sel_x_b);
        end
    end

    // i_idxprom32_fir24_sel_x(BITSELECT,144)@3
    assign i_idxprom32_fir24_sel_x_b = $unsigned({{32{redist8_bgTrunc_i_sub31_fir23_sel_x_b_1_q[31]}}, redist8_bgTrunc_i_sub31_fir23_sel_x_b_1_q[31:0]});

    // i_arrayidx337_fir0_mult_x_bs1_merged_bit_select(BITSELECT,232)@3
    assign i_arrayidx337_fir0_mult_x_bs1_merged_bit_select_b = i_idxprom32_fir24_sel_x_b[63:54];
    assign i_arrayidx337_fir0_mult_x_bs1_merged_bit_select_c = i_idxprom32_fir24_sel_x_b[53:36];
    assign i_arrayidx337_fir0_mult_x_bs1_merged_bit_select_d = i_idxprom32_fir24_sel_x_b[35:18];
    assign i_arrayidx337_fir0_mult_x_bs1_merged_bit_select_e = i_idxprom32_fir24_sel_x_b[17:0];

    // i_arrayidx337_fir0_mult_x_im0_shift0(BITSHIFT,227)@3
    assign i_arrayidx337_fir0_mult_x_im0_shift0_qint = { i_arrayidx337_fir0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx337_fir0_mult_x_im0_shift0_q = i_arrayidx337_fir0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx337_fir0_mult_x_sums_align_3(BITSHIFT,212)@3
    assign i_arrayidx337_fir0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx337_fir0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx337_fir0_mult_x_sums_align_3_q = i_arrayidx337_fir0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx337_fir0_mult_x_im6_shift0(BITSHIFT,229)@3
    assign i_arrayidx337_fir0_mult_x_im6_shift0_qint = { i_arrayidx337_fir0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx337_fir0_mult_x_im6_shift0_q = i_arrayidx337_fir0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx337_fir0_mult_x_sums_align_2(BITSHIFT,211)@3
    assign i_arrayidx337_fir0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx337_fir0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx337_fir0_mult_x_sums_align_2_q = i_arrayidx337_fir0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx337_fir0_mult_x_sums_join_4(BITJOIN,213)@3
    assign i_arrayidx337_fir0_mult_x_sums_join_4_q = {i_arrayidx337_fir0_mult_x_sums_align_3_q, i_arrayidx337_fir0_mult_x_sums_align_2_q};

    // i_arrayidx337_fir0_mult_x_im3_shift0(BITSHIFT,228)@3
    assign i_arrayidx337_fir0_mult_x_im3_shift0_qint = { i_arrayidx337_fir0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx337_fir0_mult_x_im3_shift0_q = i_arrayidx337_fir0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx337_fir0_mult_x_sums_align_0(BITSHIFT,209)@3
    assign i_arrayidx337_fir0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx337_fir0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx337_fir0_mult_x_sums_align_0_q = i_arrayidx337_fir0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx337_fir0_mult_x_im9_shift0(BITSHIFT,230)@3
    assign i_arrayidx337_fir0_mult_x_im9_shift0_qint = { i_arrayidx337_fir0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx337_fir0_mult_x_im9_shift0_q = i_arrayidx337_fir0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx337_fir0_mult_x_sums_join_1(BITJOIN,210)@3
    assign i_arrayidx337_fir0_mult_x_sums_join_1_q = {i_arrayidx337_fir0_mult_x_sums_align_0_q, {1'b0, i_arrayidx337_fir0_mult_x_im9_shift0_q}};

    // i_arrayidx337_fir0_mult_x_sums_result_add_0_0(ADD,214)@3
    assign i_arrayidx337_fir0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx337_fir0_mult_x_sums_join_1_q};
    assign i_arrayidx337_fir0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx337_fir0_mult_x_sums_join_4_q};
    assign i_arrayidx337_fir0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx337_fir0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx337_fir0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx337_fir0_mult_x_sums_result_add_0_0_q = i_arrayidx337_fir0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx337_fir0_mult_extender_x(BITJOIN,134)@3
    assign i_arrayidx337_fir0_mult_extender_x_q = {i_arrayidx296_fir0_mult_multconst_x_q, i_arrayidx337_fir0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx337_fir0_trunc_sel_x(BITSELECT,136)@3
    assign i_arrayidx337_fir0_trunc_sel_x_b = i_arrayidx337_fir0_mult_extender_x_q[63:0];

    // c_fir_coef_pmem(CONSTANT,7)
    assign c_fir_coef_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx337_fir0_add_x(ADD,128)@3
    assign i_arrayidx337_fir0_add_x_a = {1'b0, c_fir_coef_pmem_q};
    assign i_arrayidx337_fir0_add_x_b = {1'b0, i_arrayidx337_fir0_trunc_sel_x_b};
    assign i_arrayidx337_fir0_add_x_o = $unsigned(i_arrayidx337_fir0_add_x_a) + $unsigned(i_arrayidx337_fir0_add_x_b);
    assign i_arrayidx337_fir0_add_x_q = i_arrayidx337_fir0_add_x_o[64:0];

    // i_arrayidx337_fir0_dupName_0_trunc_sel_x(BITSELECT,137)@3
    assign i_arrayidx337_fir0_dupName_0_trunc_sel_x_b = i_arrayidx337_fir0_add_x_q[63:0];

    // i_arrayidx337_fir25_vt_select_63(BITSELECT,49)@3
    assign i_arrayidx337_fir25_vt_select_63_b = i_arrayidx337_fir0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx337_fir25_vt_join(BITJOIN,48)@3
    assign i_arrayidx337_fir25_vt_join_q = {i_arrayidx337_fir25_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_lm121_fir26(BLACKBOX,71)@3
    // in in_i_stall@20000000
    // out out_lm121_fir_avm_address@20000000
    // out out_lm121_fir_avm_burstcount@20000000
    // out out_lm121_fir_avm_byteenable@20000000
    // out out_lm121_fir_avm_enable@20000000
    // out out_lm121_fir_avm_read@20000000
    // out out_lm121_fir_avm_write@20000000
    // out out_lm121_fir_avm_writedata@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    fir_i_llvm_fpga_mem_lm121_0 thei_llvm_fpga_mem_lm121_fir26 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx337_fir25_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_or_fir19_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_lm121_fir_avm_readdata(in_lm121_fir_avm_readdata),
        .in_lm121_fir_avm_readdatavalid(in_lm121_fir_avm_readdatavalid),
        .in_lm121_fir_avm_waitrequest(in_lm121_fir_avm_waitrequest),
        .in_lm121_fir_avm_writeack(in_lm121_fir_avm_writeack),
        .out_lm121_fir_avm_address(i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_address),
        .out_lm121_fir_avm_burstcount(i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_burstcount),
        .out_lm121_fir_avm_byteenable(i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_byteenable),
        .out_lm121_fir_avm_enable(i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_enable),
        .out_lm121_fir_avm_read(i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_read),
        .out_lm121_fir_avm_write(i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_write),
        .out_lm121_fir_avm_writedata(i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm121_fir26_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,117)
    assign out_lm121_fir_avm_address = i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_address;
    assign out_lm121_fir_avm_enable = i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_enable;
    assign out_lm121_fir_avm_read = i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_read;
    assign out_lm121_fir_avm_write = i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_write;
    assign out_lm121_fir_avm_writedata = i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_writedata;
    assign out_lm121_fir_avm_byteenable = i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_byteenable;
    assign out_lm121_fir_avm_burstcount = i_llvm_fpga_mem_lm121_fir26_out_lm121_fir_avm_burstcount;

    // redist7_sync_together110_aunroll_x_in_i_valid_8(DELAY,240)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_sync_together110_aunroll_x_in_i_valid_8 ( .xin(redist6_sync_together110_aunroll_x_in_i_valid_1_q), .xout(redist7_sync_together110_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,150)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist7_sync_together110_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist5_sync_together110_aunroll_x_in_c0_eni5_5_tpl_9(DELAY,238)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_sync_together110_aunroll_x_in_c0_eni5_5_tpl_9 ( .xin(in_c0_eni5_5_tpl), .xout(redist5_sync_together110_aunroll_x_in_c0_eni5_5_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg15(REG,165)@1 + 1
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

    // valid_fanout_reg16(REG,166)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist6_sync_together110_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2(DELAY,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q <= $unsigned(redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2475_push31_fir52(BLACKBOX,83)@3
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    fir_i_llvm_fpga_push_i1_notcmp2475_push31_0 thei_llvm_fpga_push_i1_notcmp2475_push31_fir52 (
        .in_data_in(redist12_i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_data_out_1_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_feedback_stall_out_31),
        .in_keep_going(redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i1_notcmp2475_push31_fir52_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i1_notcmp2475_push31_fir52_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together110_aunroll_x_in_c0_eni5_4_tpl_1(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together110_aunroll_x_in_c0_eni5_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together110_aunroll_x_in_c0_eni5_4_tpl_1_q <= $unsigned(in_c0_eni5_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51(BLACKBOX,75)@2
    // out out_feedback_stall_out_31@20000000
    fir_i_llvm_fpga_pop_i1_notcmp2475_pop31_0 thei_llvm_fpga_pop_i1_notcmp2475_pop31_fir51 (
        .in_data_in(redist4_sync_together110_aunroll_x_in_c0_eni5_4_tpl_1_q),
        .in_dir(redist0_sync_together110_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i1_notcmp2475_push31_fir52_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i1_notcmp2475_push31_fir52_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_data_out_1(DELAY,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_data_out_1_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_data_out);
        end
    end

    // redist13_i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_data_out_8(DELAY,246)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_data_out_8 ( .xin(redist12_i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_data_out_1_q), .xout(redist13_i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_data_out_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg13(REG,163)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist7_sync_together110_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg14(REG,164)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist7_sync_together110_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2974_push30_fir50(BLACKBOX,84)@10
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    fir_i_llvm_fpga_push_i1_notcmp2974_push30_0 thei_llvm_fpga_push_i1_notcmp2974_push30_fir50 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2974_pop30_fir49_out_data_out),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i1_notcmp2974_pop30_fir49_out_feedback_stall_out_30),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_9_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i1_notcmp2974_push30_fir50_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i1_notcmp2974_push30_fir50_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together110_aunroll_x_in_c0_eni5_1_tpl_9(DELAY,234)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together110_aunroll_x_in_c0_eni5_1_tpl_9 ( .xin(redist0_sync_together110_aunroll_x_in_c0_eni5_1_tpl_1_q), .xout(redist1_sync_together110_aunroll_x_in_c0_eni5_1_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_sync_together110_aunroll_x_in_c0_eni5_3_tpl_9(DELAY,236)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together110_aunroll_x_in_c0_eni5_3_tpl_9 ( .xin(in_c0_eni5_3_tpl), .xout(redist3_sync_together110_aunroll_x_in_c0_eni5_3_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_notcmp2974_pop30_fir49(BLACKBOX,76)@10
    // out out_feedback_stall_out_30@20000000
    fir_i_llvm_fpga_pop_i1_notcmp2974_pop30_0 thei_llvm_fpga_pop_i1_notcmp2974_pop30_fir49 (
        .in_data_in(redist3_sync_together110_aunroll_x_in_c0_eni5_3_tpl_9_q),
        .in_dir(redist1_sync_together110_aunroll_x_in_c0_eni5_1_tpl_9_q),
        .in_feedback_in_30(i_llvm_fpga_push_i1_notcmp2974_push30_fir50_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i1_notcmp2974_push30_fir50_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2974_pop30_fir49_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i1_notcmp2974_pop30_fir49_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked_fir48(LOGICAL,90)@2 + 1
    assign i_masked_fir48_qi = i_notcmp_fir41_q & i_first_cleanup_fir3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_fir48_delay ( .xin(i_masked_fir48_qi), .xout(i_masked_fir48_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_i_masked_fir48_q_8(DELAY,243)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_i_masked_fir48_q_8 ( .xin(i_masked_fir48_q), .xout(redist10_i_masked_fir48_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg9(REG,159)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist7_sync_together110_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg10(REG,160)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist7_sync_together110_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_push_i16_fir_025_push28_fir32(BLACKBOX,81)@10
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    fir_i_llvm_fpga_push_i16_025_push28_fir0 thei_llvm_fpga_push_i16_fir_025_push28_fir32 (
        .in_data_in(bgTrunc_i_dot_prod_add_fir31_sel_x_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i16_fir_025_pop28_fir27_out_feedback_stall_out_28),
        .in_keep_going(redist16_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_9_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i16_fir_025_push28_fir32_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i16_fir_025_push28_fir32_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_fir_025_pop28_fir27(BLACKBOX,74)@10
    // out out_feedback_stall_out_28@20000000
    fir_i_llvm_fpga_pop_i16_025_pop28_fir0 thei_llvm_fpga_pop_i16_fir_025_pop28_fir27 (
        .in_data_in(c_i16_083_q),
        .in_dir(redist1_sync_together110_aunroll_x_in_c0_eni5_1_tpl_9_q),
        .in_feedback_in_28(i_llvm_fpga_push_i16_fir_025_push28_fir32_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i16_fir_025_push28_fir32_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i16_fir_025_pop28_fir27_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i16_fir_025_pop28_fir27_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0(CHAINMULTADD,167)@7 + 3
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_reset = ~ (resetn);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_ena0 = 1'b1;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_ena1 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_ena0;
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_ena2 = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_ena0;

    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_a0 = $unsigned(i_llvm_fpga_mem_lm121_fir26_out_o_readdata);
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_c0 = $unsigned(i_llvm_fpga_mem_lm2_fir20_out_o_readdata);
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
    ) i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_ena2, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_ena1, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_ena0 }),
        .aclr({ i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_reset, i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_reset }),
        .ay(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_a0),
        .ax(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_c0),
        .resulta(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_s0),
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
    i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_delay ( .xin(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_s0), .xout(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_q = $unsigned(i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_qq[31:0]);

    // i_dot_prod_add_fir31(ADD,53)@10
    assign i_dot_prod_add_fir31_a = i_llvm_fpga_dot_product_i16_i16_v1i16_dot_prod_fir0_dspb_native_dot_product_vunroll_x_cma0_q[16:0];
    assign i_dot_prod_add_fir31_b = {1'b0, i_llvm_fpga_pop_i16_fir_025_pop28_fir27_out_data_out};
    assign i_dot_prod_add_fir31_o = $unsigned(i_dot_prod_add_fir31_a) + $unsigned(i_dot_prod_add_fir31_b);
    assign i_dot_prod_add_fir31_q = i_dot_prod_add_fir31_o[16:0];

    // bgTrunc_i_dot_prod_add_fir31_sel_x(BITSELECT,110)@10
    assign bgTrunc_i_dot_prod_add_fir31_sel_x_b = i_dot_prod_add_fir31_q[15:0];

    // c_i16_083(CONSTANT,9)
    assign c_i16_083_q = $unsigned(16'b0000000000000000);

    // valid_fanout_reg12(REG,162)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist7_sync_together110_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp242422_fir46(BLACKBOX,68)@10
    fir_i_llvm_fpga_ffwd_dest_i1_cmp242422_0 thei_llvm_fpga_ffwd_dest_i1_cmp242422_fir46 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_cmp242422_fir46_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select8_fir47(MUX,94)@10
    assign i_select8_fir47_s = i_llvm_fpga_ffwd_dest_i1_cmp242422_fir46_out_dest_data_out_3_0;
    always @(i_select8_fir47_s or c_i16_083_q or bgTrunc_i_dot_prod_add_fir31_sel_x_b)
    begin
        unique case (i_select8_fir47_s)
            1'b0 : i_select8_fir47_q = c_i16_083_q;
            1'b1 : i_select8_fir47_q = bgTrunc_i_dot_prod_add_fir31_sel_x_b;
            default : i_select8_fir47_q = 16'b0;
        endcase
    end

    // redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_notEnable(LOGICAL,258)
    assign redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_nor(LOGICAL,259)
    assign redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_nor_q = ~ (redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_notEnable_q | redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_sticky_ena_q);

    // redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_last(CONSTANT,255)
    assign redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_last_q = $unsigned(4'b0100);

    // redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_cmp(LOGICAL,256)
    assign redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_cmp_b = {1'b0, redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_q};
    assign redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_cmp_q = $unsigned(redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_last_q == redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_cmp_b ? 1'b1 : 1'b0);

    // redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_cmpReg(REG,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_cmpReg_q <= $unsigned(redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_cmp_q);
        end
    end

    // redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_sticky_ena(REG,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_nor_q == 1'b1)
        begin
            redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_sticky_ena_q <= $unsigned(redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_cmpReg_q);
        end
    end

    // redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_enaAnd(LOGICAL,261)
    assign redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_enaAnd_q = redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_sticky_ena_q & VCC_q;

    // redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt(COUNTER,253)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_i <= 3'd0;
            redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_i == 3'd4)
            begin
                redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_eq <= 1'b0;
            end
            if (redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_eq == 1'b1)
            begin
                redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_i <= $unsigned(redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_i <= $unsigned(redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_q = redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_i[2:0];

    // redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_inputreg0(DELAY,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_inputreg0_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out);
        end
    end

    // redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_wraddr(REG,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_wraddr_q <= $unsigned(redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_q);
        end
    end

    // redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem(DUALMEM,252)
    assign redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_ia = $unsigned(redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_inputreg0_q);
    assign redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_aa = redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_wraddr_q;
    assign redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_ab = redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_rdcnt_q;
    assign redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_dmem (
        .clocken1(redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_reset0),
        .clock1(clock),
        .address_a(redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_aa),
        .data_a(redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_ab),
        .q_b(redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_iq),
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
    assign redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_q = redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_iq[31:0];

    // redist16_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_9(DELAY,249)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_9 ( .xin(redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q), .xout(redist16_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,148)@10
    assign out_c0_exi7_0_tpl = GND_q;
    assign out_c0_exi7_1_tpl = redist16_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_9_q;
    assign out_c0_exi7_2_tpl = redist11_i_llvm_fpga_pop_i32_j_027_pop2476_pop32_fir14_out_data_out_8_mem_q;
    assign out_c0_exi7_3_tpl = i_select8_fir47_q;
    assign out_c0_exi7_4_tpl = redist10_i_masked_fir48_q_8_q;
    assign out_c0_exi7_5_tpl = i_llvm_fpga_pop_i1_notcmp2974_pop30_fir49_out_data_out;
    assign out_c0_exi7_6_tpl = redist13_i_llvm_fpga_pop_i1_notcmp2475_pop31_fir51_out_data_out_8_q;
    assign out_c0_exi7_7_tpl = redist5_sync_together110_aunroll_x_in_c0_eni5_5_tpl_9_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_fir1 = GND_q;

endmodule
