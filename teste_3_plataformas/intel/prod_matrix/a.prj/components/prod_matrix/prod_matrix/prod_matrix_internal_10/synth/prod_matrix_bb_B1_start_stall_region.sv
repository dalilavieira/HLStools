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

// SystemVerilog created from prod_matrix_bb_B1_start_stall_region
// SystemVerilog created on Mon Apr  6 12:55:33 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module prod_matrix_bb_B1_start_stall_region (
    input wire [191:0] in_iord_bl_call_prod_matrix_i_fifodata,
    input wire [0:0] in_iord_bl_call_prod_matrix_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_prod_matrix1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_prod_matrix1_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_prod_matrix_o_fifoready,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_intel_reserved_ffwd_3_0,
    output wire [32:0] out_intel_reserved_ffwd_4_0,
    output wire [32:0] out_intel_reserved_ffwd_5_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_131_q;
    wire [31:0] c_i32_132_q;
    wire [32:0] c_i33_133_q;
    wire [33:0] i_cmp20_prod_matrix6_a;
    wire [33:0] i_cmp20_prod_matrix6_b;
    logic [33:0] i_cmp20_prod_matrix6_o;
    wire [0:0] i_cmp20_prod_matrix6_c;
    wire [33:0] i_cmp217_prod_matrix10_a;
    wire [33:0] i_cmp217_prod_matrix10_b;
    logic [33:0] i_cmp217_prod_matrix10_o;
    wire [0:0] i_cmp217_prod_matrix10_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix5_prod_matrix14_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix5_prod_matrix14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix5_prod_matrix14_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix7_prod_matrix25_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix7_prod_matrix25_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix7_prod_matrix25_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix8_prod_matrix26_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix8_prod_matrix26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix8_prod_matrix26_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_out_valid_out;
    wire [0:0] i_smax7_prod_matrix17_s;
    reg [31:0] i_smax7_prod_matrix17_q;
    wire [31:0] i_smax7_prod_matrix17_vt_join_q;
    wire [30:0] i_smax7_prod_matrix17_vt_select_30_b;
    wire [0:0] i_smax_prod_matrix15_s;
    reg [31:0] i_smax_prod_matrix15_q;
    wire [31:0] i_smax_prod_matrix15_vt_join_q;
    wire [30:0] i_smax_prod_matrix15_vt_select_30_b;
    wire [33:0] i_unnamed_prod_matrix12_a;
    wire [33:0] i_unnamed_prod_matrix12_b;
    logic [33:0] i_unnamed_prod_matrix12_o;
    wire [0:0] i_unnamed_prod_matrix12_c;
    wire [0:0] i_unnamed_prod_matrix16_q;
    wire [32:0] i_unnamed_prod_matrix18_a;
    wire [32:0] i_unnamed_prod_matrix18_b;
    logic [32:0] i_unnamed_prod_matrix18_o;
    wire [32:0] i_unnamed_prod_matrix18_q;
    wire [32:0] i_unnamed_prod_matrix20_a;
    wire [32:0] i_unnamed_prod_matrix20_b;
    logic [32:0] i_unnamed_prod_matrix20_o;
    wire [32:0] i_unnamed_prod_matrix20_q;
    wire [32:0] i_unnamed_prod_matrix21_vt_join_q;
    wire [31:0] i_unnamed_prod_matrix21_vt_select_31_b;
    wire [32:0] i_unnamed_prod_matrix22_vt_join_q;
    wire [31:0] i_unnamed_prod_matrix22_vt_select_31_b;
    wire [33:0] i_unnamed_prod_matrix23_a;
    wire [33:0] i_unnamed_prod_matrix23_b;
    logic [33:0] i_unnamed_prod_matrix23_o;
    wire [33:0] i_unnamed_prod_matrix23_q;
    wire [33:0] i_unnamed_prod_matrix24_a;
    wire [33:0] i_unnamed_prod_matrix24_b;
    logic [33:0] i_unnamed_prod_matrix24_o;
    wire [33:0] i_unnamed_prod_matrix24_q;
    wire [33:0] i_unnamed_prod_matrix8_a;
    wire [33:0] i_unnamed_prod_matrix8_b;
    logic [33:0] i_unnamed_prod_matrix8_o;
    wire [0:0] i_unnamed_prod_matrix8_c;
    wire [0:0] prod_matrix_B1_start_merge_reg_out_stall_out;
    wire [0:0] prod_matrix_B1_start_merge_reg_out_valid_out;
    wire [31:0] bgTrunc_i_unnamed_prod_matrix18_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_prod_matrix20_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_prod_matrix23_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_prod_matrix24_sel_x_b;
    wire [31:0] c_i32_030_recast_x_q;
    wire [0:0] i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_iord_bl_call_prod_matrix_o_fifoready;
    wire [0:0] i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_data_2_tpl;
    wire [31:0] i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_data_3_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_prod_matrix1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_prod_matrix1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_pipeline_valid_out;
    wire [32:0] i_unnamed_prod_matrix21_sel_x_b;
    wire [32:0] i_unnamed_prod_matrix22_sel_x_b;
    reg [30:0] redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_q;
    reg [30:0] redist1_i_smax7_prod_matrix17_vt_select_30_b_1_0_q;
    reg [0:0] redist2_i_cmp20_prod_matrix6_c_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_b;
    wire [191:0] bubble_join_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_d;
    wire [31:0] bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_e;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_V0;
    wire [0:0] SE_out_prod_matrix_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_prod_matrix_B1_start_merge_reg_wireStall;
    wire [0:0] SE_out_prod_matrix_B1_start_merge_reg_StallValid;
    wire [0:0] SE_out_prod_matrix_B1_start_merge_reg_toReg0;
    reg [0:0] SE_out_prod_matrix_B1_start_merge_reg_fromReg0;
    wire [0:0] SE_out_prod_matrix_B1_start_merge_reg_consumed0;
    wire [0:0] SE_out_prod_matrix_B1_start_merge_reg_toReg1;
    reg [0:0] SE_out_prod_matrix_B1_start_merge_reg_fromReg1;
    wire [0:0] SE_out_prod_matrix_B1_start_merge_reg_consumed1;
    wire [0:0] SE_out_prod_matrix_B1_start_merge_reg_or0;
    wire [0:0] SE_out_prod_matrix_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_prod_matrix_B1_start_merge_reg_V0;
    wire [0:0] SE_out_prod_matrix_B1_start_merge_reg_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_toReg3;
    reg [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed3;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_or2;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_V2;
    wire [0:0] SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_V0;
    reg [0:0] SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_0;
    reg [0:0] SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_1;
    reg [0:0] SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_2;
    wire [0:0] SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_v_s_0;
    wire [0:0] SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_s_tv_1;
    wire [0:0] SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_s_tv_2;
    wire [0:0] SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_backEN;
    wire [0:0] SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_or0;
    wire [0:0] SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_or1;
    wire [0:0] SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_backStall;
    wire [0:0] SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_V0;
    wire [0:0] SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_V1;
    wire [0:0] SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_V2;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and1;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and2;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and3;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and4;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and5;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_V0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19(STALLENABLE,136)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg(STALLENABLE,209)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_s_tv_0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5(STALLENABLE,144)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_wireValid = i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg(STALLENABLE,211)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_s_tv_0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4(STALLENABLE,142)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_wireValid = i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg(STALLENABLE,210)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_s_tv_0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg(STALLFIFO,212)
    assign bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_valid_in = SE_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1(STALLENABLE,208)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and0 = bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_valid_out;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and1 = i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix8_prod_matrix26_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and0;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and2 = i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix7_prod_matrix25_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and1;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and3 = i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix5_prod_matrix14_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and2;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and4 = bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_1_reg_V0 & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and3;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and5 = bubble_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_1_reg_V0 & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and4;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_1_reg_V0 & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_and5;

    // c_i33_133(CONSTANT,10)
    assign c_i33_133_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_132(CONSTANT,9)
    assign c_i32_132_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x(BITJOIN,128)
    assign bubble_join_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_q = {i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_data_3_tpl, i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x(BITSELECT,129)
    assign bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_q[159:128]);
    assign bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_q[191:160]);

    // c_i32_131(CONSTANT,8)
    assign c_i32_131_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_prod_matrix12(COMPARE,36)@2
    assign i_unnamed_prod_matrix12_a = $unsigned({{2{c_i32_131_q[31]}}, c_i32_131_q});
    assign i_unnamed_prod_matrix12_b = $unsigned({{2{bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_e[31]}}, bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_e});
    assign i_unnamed_prod_matrix12_o = $unsigned($signed(i_unnamed_prod_matrix12_a) - $signed(i_unnamed_prod_matrix12_b));
    assign i_unnamed_prod_matrix12_c[0] = i_unnamed_prod_matrix12_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax7_prod_matrix17(MUX,28)@2
    assign i_smax7_prod_matrix17_s = i_unnamed_prod_matrix12_c;
    always @(i_smax7_prod_matrix17_s or c_i32_131_q or bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_e)
    begin
        unique case (i_smax7_prod_matrix17_s)
            1'b0 : i_smax7_prod_matrix17_q = c_i32_131_q;
            1'b1 : i_smax7_prod_matrix17_q = bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_e;
            default : i_smax7_prod_matrix17_q = 32'b0;
        endcase
    end

    // i_smax7_prod_matrix17_vt_select_30(BITSELECT,31)@2
    assign i_smax7_prod_matrix17_vt_select_30_b = i_smax7_prod_matrix17_q[30:0];

    // redist1_i_smax7_prod_matrix17_vt_select_30_b_1_0(REG,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_smax7_prod_matrix17_vt_select_30_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_backEN == 1'b1)
        begin
            redist1_i_smax7_prod_matrix17_vt_select_30_b_1_0_q <= $unsigned(i_smax7_prod_matrix17_vt_select_30_b);
        end
    end

    // i_smax7_prod_matrix17_vt_join(BITJOIN,30)@3
    assign i_smax7_prod_matrix17_vt_join_q = {GND_q, redist1_i_smax7_prod_matrix17_vt_select_30_b_1_0_q};

    // i_unnamed_prod_matrix20(ADD,39)@3
    assign i_unnamed_prod_matrix20_a = {1'b0, i_smax7_prod_matrix17_vt_join_q};
    assign i_unnamed_prod_matrix20_b = {1'b0, c_i32_132_q};
    assign i_unnamed_prod_matrix20_o = $unsigned(i_unnamed_prod_matrix20_a) + $unsigned(i_unnamed_prod_matrix20_b);
    assign i_unnamed_prod_matrix20_q = i_unnamed_prod_matrix20_o[32:0];

    // bgTrunc_i_unnamed_prod_matrix20_sel_x(BITSELECT,85)@3
    assign bgTrunc_i_unnamed_prod_matrix20_sel_x_b = i_unnamed_prod_matrix20_q[31:0];

    // i_unnamed_prod_matrix22_sel_x(BITSELECT,102)@3
    assign i_unnamed_prod_matrix22_sel_x_b = {1'b0, bgTrunc_i_unnamed_prod_matrix20_sel_x_b[31:0]};

    // i_unnamed_prod_matrix22_vt_select_31(BITSELECT,47)@3
    assign i_unnamed_prod_matrix22_vt_select_31_b = i_unnamed_prod_matrix22_sel_x_b[31:0];

    // i_unnamed_prod_matrix22_vt_join(BITJOIN,46)@3
    assign i_unnamed_prod_matrix22_vt_join_q = {GND_q, i_unnamed_prod_matrix22_vt_select_31_b};

    // i_unnamed_prod_matrix24(ADD,49)@3
    assign i_unnamed_prod_matrix24_a = {1'b0, i_unnamed_prod_matrix22_vt_join_q};
    assign i_unnamed_prod_matrix24_b = {1'b0, c_i33_133_q};
    assign i_unnamed_prod_matrix24_o = $unsigned(i_unnamed_prod_matrix24_a) + $unsigned(i_unnamed_prod_matrix24_b);
    assign i_unnamed_prod_matrix24_q = i_unnamed_prod_matrix24_o[33:0];

    // bgTrunc_i_unnamed_prod_matrix24_sel_x(BITSELECT,87)@3
    assign bgTrunc_i_unnamed_prod_matrix24_sel_x_b = i_unnamed_prod_matrix24_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix8_prod_matrix26(BLACKBOX,24)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    prod_matrix_i_llvm_fpga_ffwd_source_i33_unnamed_8_prod_matrix0 thei_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix8_prod_matrix26 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(bgTrunc_i_unnamed_prod_matrix24_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_backStall),
        .in_valid_in(SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_V2),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix8_prod_matrix26_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix8_prod_matrix26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix8_prod_matrix26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_prod_matrix8(COMPARE,50)@2
    assign i_unnamed_prod_matrix8_a = $unsigned({{2{c_i32_131_q[31]}}, c_i32_131_q});
    assign i_unnamed_prod_matrix8_b = $unsigned({{2{bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_d[31]}}, bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_d});
    assign i_unnamed_prod_matrix8_o = $unsigned($signed(i_unnamed_prod_matrix8_a) - $signed(i_unnamed_prod_matrix8_b));
    assign i_unnamed_prod_matrix8_c[0] = i_unnamed_prod_matrix8_o[33];

    // i_smax_prod_matrix15(MUX,32)@2
    assign i_smax_prod_matrix15_s = i_unnamed_prod_matrix8_c;
    always @(i_smax_prod_matrix15_s or c_i32_131_q or bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_d)
    begin
        unique case (i_smax_prod_matrix15_s)
            1'b0 : i_smax_prod_matrix15_q = c_i32_131_q;
            1'b1 : i_smax_prod_matrix15_q = bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_d;
            default : i_smax_prod_matrix15_q = 32'b0;
        endcase
    end

    // i_smax_prod_matrix15_vt_select_30(BITSELECT,35)@2
    assign i_smax_prod_matrix15_vt_select_30_b = i_smax_prod_matrix15_q[30:0];

    // redist0_i_smax_prod_matrix15_vt_select_30_b_1_0(REG,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_backEN == 1'b1)
        begin
            redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_q <= $unsigned(i_smax_prod_matrix15_vt_select_30_b);
        end
    end

    // i_smax_prod_matrix15_vt_join(BITJOIN,34)@3
    assign i_smax_prod_matrix15_vt_join_q = {GND_q, redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_q};

    // i_unnamed_prod_matrix18(ADD,38)@3
    assign i_unnamed_prod_matrix18_a = {1'b0, i_smax_prod_matrix15_vt_join_q};
    assign i_unnamed_prod_matrix18_b = {1'b0, c_i32_132_q};
    assign i_unnamed_prod_matrix18_o = $unsigned(i_unnamed_prod_matrix18_a) + $unsigned(i_unnamed_prod_matrix18_b);
    assign i_unnamed_prod_matrix18_q = i_unnamed_prod_matrix18_o[32:0];

    // bgTrunc_i_unnamed_prod_matrix18_sel_x(BITSELECT,84)@3
    assign bgTrunc_i_unnamed_prod_matrix18_sel_x_b = i_unnamed_prod_matrix18_q[31:0];

    // i_unnamed_prod_matrix21_sel_x(BITSELECT,101)@3
    assign i_unnamed_prod_matrix21_sel_x_b = {1'b0, bgTrunc_i_unnamed_prod_matrix18_sel_x_b[31:0]};

    // i_unnamed_prod_matrix21_vt_select_31(BITSELECT,43)@3
    assign i_unnamed_prod_matrix21_vt_select_31_b = i_unnamed_prod_matrix21_sel_x_b[31:0];

    // i_unnamed_prod_matrix21_vt_join(BITJOIN,42)@3
    assign i_unnamed_prod_matrix21_vt_join_q = {GND_q, i_unnamed_prod_matrix21_vt_select_31_b};

    // i_unnamed_prod_matrix23(ADD,48)@3
    assign i_unnamed_prod_matrix23_a = {1'b0, i_unnamed_prod_matrix21_vt_join_q};
    assign i_unnamed_prod_matrix23_b = {1'b0, c_i33_133_q};
    assign i_unnamed_prod_matrix23_o = $unsigned(i_unnamed_prod_matrix23_a) + $unsigned(i_unnamed_prod_matrix23_b);
    assign i_unnamed_prod_matrix23_q = i_unnamed_prod_matrix23_o[33:0];

    // bgTrunc_i_unnamed_prod_matrix23_sel_x(BITSELECT,86)@3
    assign bgTrunc_i_unnamed_prod_matrix23_sel_x_b = i_unnamed_prod_matrix23_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix7_prod_matrix25(BLACKBOX,23)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    prod_matrix_i_llvm_fpga_ffwd_source_i33_unnamed_7_prod_matrix0 thei_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix7_prod_matrix25 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(bgTrunc_i_unnamed_prod_matrix23_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_backStall),
        .in_valid_in(SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_V1),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix7_prod_matrix25_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix7_prod_matrix25_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix7_prod_matrix25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_030_recast_x(CONSTANT,88)
    assign c_i32_030_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp20_prod_matrix6(COMPARE,19)@2
    assign i_cmp20_prod_matrix6_a = $unsigned({{2{c_i32_030_recast_x_q[31]}}, c_i32_030_recast_x_q});
    assign i_cmp20_prod_matrix6_b = $unsigned({{2{bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_d[31]}}, bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_d});
    assign i_cmp20_prod_matrix6_o = $unsigned($signed(i_cmp20_prod_matrix6_a) - $signed(i_cmp20_prod_matrix6_b));
    assign i_cmp20_prod_matrix6_c[0] = i_cmp20_prod_matrix6_o[33];

    // redist2_i_cmp20_prod_matrix6_c_1_0(REG,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_cmp20_prod_matrix6_c_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_backEN == 1'b1)
        begin
            redist2_i_cmp20_prod_matrix6_c_1_0_q <= $unsigned(i_cmp20_prod_matrix6_c);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix5_prod_matrix14(BLACKBOX,21)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    prod_matrix_i_llvm_fpga_ffwd_source_i1_unnamed_5_prod_matrix0 thei_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix5_prod_matrix14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(redist2_i_cmp20_prod_matrix6_c_1_0_q),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_backStall),
        .in_valid_in(SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_V0),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix5_prod_matrix14_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix5_prod_matrix14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix5_prod_matrix14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0(STALLENABLE,178)
    // Valid signal propagation
    assign SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_V0 = SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_0;
    assign SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_V1 = SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_1;
    assign SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_V2 = SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_2;
    // Stall signal propagation
    assign SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_s_tv_0 = i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix5_prod_matrix14_out_stall_out & SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_0;
    assign SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_s_tv_1 = i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix7_prod_matrix25_out_stall_out & SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_1;
    assign SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_s_tv_2 = i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix8_prod_matrix26_out_stall_out & SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_2;
    // Backward Enable generation
    assign SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_or0 = SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_s_tv_0;
    assign SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_or1 = SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_s_tv_1 | SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_or0;
    assign SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_backEN = ~ (SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_s_tv_2 | SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_v_s_0 = SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_backEN & SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_V3;
    // Backward Stall generation
    assign SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_backStall = ~ (SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_0 <= 1'b0;
            SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_1 <= 1'b0;
            SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_0 <= SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_0 & SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_0 <= SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_v_s_0;
            end

            if (SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_1 <= SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_1 & SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_1 <= SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_v_s_0;
            end

            if (SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_2 <= SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_2 & SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_s_tv_2;
            end
            else
            begin
                SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_R_v_2 <= SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_v_s_0;
            end

        end
    end

    // i_cmp217_prod_matrix10(COMPARE,20)@2
    assign i_cmp217_prod_matrix10_a = $unsigned({{2{c_i32_030_recast_x_q[31]}}, c_i32_030_recast_x_q});
    assign i_cmp217_prod_matrix10_b = $unsigned({{2{bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_e[31]}}, bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_e});
    assign i_cmp217_prod_matrix10_o = $unsigned($signed(i_cmp217_prod_matrix10_a) - $signed(i_cmp217_prod_matrix10_b));
    assign i_cmp217_prod_matrix10_c[0] = i_cmp217_prod_matrix10_o[33];

    // i_unnamed_prod_matrix16(LOGICAL,37)@2
    assign i_unnamed_prod_matrix16_q = i_cmp20_prod_matrix6_c & i_cmp217_prod_matrix10_c;

    // i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19(BLACKBOX,22)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    prod_matrix_i_llvm_fpga_ffwd_source_i1_unnamed_6_prod_matrix0 thei_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(i_unnamed_prod_matrix16_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_V2),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5(BLACKBOX,26)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    prod_matrix_i_llvm_fpga_ffwd_source_p102A000000Znamed_4_prod_matrix0 thei_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_V1),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4(BLACKBOX,25)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    prod_matrix_i_llvm_fpga_ffwd_source_p102A000000Znamed_3_prod_matrix0 thei_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(bubble_select_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_V0),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x(STALLENABLE,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg2 <= '0;
            SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg3 <= SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_out_stall_out) & SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_out_stall_out) & SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_out_stall_out) & SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg2;
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed3 = (~ (SE_redist0_i_smax_prod_matrix15_vt_select_30_b_1_0_backStall) & SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_StallValid = SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_backStall & SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_toReg0 = SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_StallValid & SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_toReg1 = SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_StallValid & SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_toReg2 = SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_StallValid & SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed2;
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_toReg3 = SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_StallValid & SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_or0 = SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_or1 = SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed1 & SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_or2 = SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed2 & SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_or1;
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_consumed3 & SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_or2);
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_backStall = SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_V0 = SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_V1 = SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_V2 = SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg2);
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_V3 = SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_wireValid = i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1(BITJOIN,122)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1(BITSELECT,123)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_q[0:0]);

    // i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x(BLACKBOX,99)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_prod_matrix_o_fifoready@20000000
    // out out_o_stall@20000000
    prod_matrix_i_iord_bl_call_unnamed_prod_matrix2_prod_matrix0 thei_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_b),
        .in_i_stall(SE_out_i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_V0),
        .in_iord_bl_call_prod_matrix_i_fifodata(in_iord_bl_call_prod_matrix_i_fifodata),
        .in_iord_bl_call_prod_matrix_i_fifovalid(in_iord_bl_call_prod_matrix_i_fifovalid),
        .out_iord_bl_call_prod_matrix_o_fifoready(i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_iord_bl_call_prod_matrix_o_fifoready),
        .out_o_stall(i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1(STALLENABLE,146)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_backStall = i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1(BLACKBOX,27)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    prod_matrix_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_backStall),
        .in_valid_in(SE_out_prod_matrix_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,166)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = prod_matrix_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // prod_matrix_B1_start_merge_reg(BLACKBOX,77)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    prod_matrix_B1_start_merge_reg theprod_matrix_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_prod_matrix_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(prod_matrix_B1_start_merge_reg_out_stall_out),
        .out_valid_out(prod_matrix_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_prod_matrix_B1_start_merge_reg(STALLENABLE,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_prod_matrix_B1_start_merge_reg_fromReg0 <= '0;
            SE_out_prod_matrix_B1_start_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_prod_matrix_B1_start_merge_reg_fromReg0 <= SE_out_prod_matrix_B1_start_merge_reg_toReg0;
            // Successor 1
            SE_out_prod_matrix_B1_start_merge_reg_fromReg1 <= SE_out_prod_matrix_B1_start_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_prod_matrix_B1_start_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_out_stall_out) & SE_out_prod_matrix_B1_start_merge_reg_wireValid) | SE_out_prod_matrix_B1_start_merge_reg_fromReg0;
    assign SE_out_prod_matrix_B1_start_merge_reg_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_o_stall) & SE_out_prod_matrix_B1_start_merge_reg_wireValid) | SE_out_prod_matrix_B1_start_merge_reg_fromReg1;
    // Consuming
    assign SE_out_prod_matrix_B1_start_merge_reg_StallValid = SE_out_prod_matrix_B1_start_merge_reg_backStall & SE_out_prod_matrix_B1_start_merge_reg_wireValid;
    assign SE_out_prod_matrix_B1_start_merge_reg_toReg0 = SE_out_prod_matrix_B1_start_merge_reg_StallValid & SE_out_prod_matrix_B1_start_merge_reg_consumed0;
    assign SE_out_prod_matrix_B1_start_merge_reg_toReg1 = SE_out_prod_matrix_B1_start_merge_reg_StallValid & SE_out_prod_matrix_B1_start_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_prod_matrix_B1_start_merge_reg_or0 = SE_out_prod_matrix_B1_start_merge_reg_consumed0;
    assign SE_out_prod_matrix_B1_start_merge_reg_wireStall = ~ (SE_out_prod_matrix_B1_start_merge_reg_consumed1 & SE_out_prod_matrix_B1_start_merge_reg_or0);
    assign SE_out_prod_matrix_B1_start_merge_reg_backStall = SE_out_prod_matrix_B1_start_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_prod_matrix_B1_start_merge_reg_V0 = SE_out_prod_matrix_B1_start_merge_reg_wireValid & ~ (SE_out_prod_matrix_B1_start_merge_reg_fromReg0);
    assign SE_out_prod_matrix_B1_start_merge_reg_V1 = SE_out_prod_matrix_B1_start_merge_reg_wireValid & ~ (SE_out_prod_matrix_B1_start_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_prod_matrix_B1_start_merge_reg_wireValid = prod_matrix_B1_start_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x(STALLENABLE,175)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_backStall = bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_reg_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x(BLACKBOX,100)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_prod_matrix1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_prod_matrix1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    prod_matrix_i_sfc_s_c0_in_wt_entry_s_c0_enter9_prod_matrix0 thei_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_backStall),
        .in_i_valid(SE_out_prod_matrix_B1_start_merge_reg_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_prod_matrix0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_prod_matrix1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_prod_matrix1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_prod_matrix1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_prod_matrix1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,15)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_prod_matrix1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_prod_matrix1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_prod_matrix1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_prod_matrix1_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,17)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_prod_matrix1_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,76)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,78)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix3_prod_matrix4_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,82)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,90)
    assign out_iord_bl_call_prod_matrix_o_fifoready = i_iord_bl_call_prod_matrix_unnamed_prod_matrix2_prod_matrix2_aunroll_x_out_iord_bl_call_prod_matrix_o_fifoready;

    // dupName_0_regfree_osync_x(GPOUT,91)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1024a100i32_unnamed_prod_matrix4_prod_matrix5_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,92)@3
    assign out_valid_out = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_prod_matrixs_c0_enter9_prod_matrix0_aunroll_x_1_V0;

    // dupName_1_regfree_osync_x(GPOUT,95)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix5_prod_matrix14_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,96)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i1_unnamed_prod_matrix6_prod_matrix19_out_intel_reserved_ffwd_3_0;

    // dupName_3_regfree_osync_x(GPOUT,97)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix7_prod_matrix25_out_intel_reserved_ffwd_4_0;

    // dupName_4_regfree_osync_x(GPOUT,98)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i33_unnamed_prod_matrix8_prod_matrix26_out_intel_reserved_ffwd_5_0;

endmodule
