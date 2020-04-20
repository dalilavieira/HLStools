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

// SystemVerilog created from kmeans_bb_B1_start_stall_region
// SystemVerilog created on Sun Apr 19 22:13:38 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_bb_B1_start_stall_region (
    input wire [95:0] in_iord_bl_call_kmeans_i_fifodata,
    input wire [0:0] in_iord_bl_call_kmeans_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going103_kmeans1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going103_kmeans1_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_kmeans_o_fifoready,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_intel_reserved_ffwd_3_0,
    output wire [32:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_0_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_0_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_123_q;
    wire [31:0] c_i32_124_q;
    wire [32:0] c_i33_125_q;
    wire [33:0] i_cmp53_kmeans6_a;
    wire [33:0] i_cmp53_kmeans6_b;
    logic [33:0] i_cmp53_kmeans6_o;
    wire [0:0] i_cmp53_kmeans6_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_kmeans6_kmeans10_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_kmeans6_kmeans10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_kmeans6_kmeans10_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_kmeans7_kmeans17_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_kmeans7_kmeans17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_kmeans7_kmeans17_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_out_valid_out;
    wire [0:0] i_smax_kmeans13_s;
    reg [31:0] i_smax_kmeans13_q;
    wire [8:0] i_smax_kmeans13_vt_const_9_q;
    wire [31:0] i_smax_kmeans13_vt_join_q;
    wire [33:0] i_unnamed_kmeans11_a;
    wire [33:0] i_unnamed_kmeans11_b;
    logic [33:0] i_unnamed_kmeans11_o;
    wire [0:0] i_unnamed_kmeans11_c;
    wire [32:0] i_unnamed_kmeans14_a;
    wire [32:0] i_unnamed_kmeans14_b;
    logic [32:0] i_unnamed_kmeans14_o;
    wire [32:0] i_unnamed_kmeans14_q;
    wire [32:0] i_unnamed_kmeans15_vt_join_q;
    wire [31:0] i_unnamed_kmeans15_vt_select_31_b;
    wire [33:0] i_unnamed_kmeans16_a;
    wire [33:0] i_unnamed_kmeans16_b;
    logic [33:0] i_unnamed_kmeans16_o;
    wire [33:0] i_unnamed_kmeans16_q;
    wire [9:0] i_unnamed_kmeans8_vt_const_9_q;
    wire [31:0] i_unnamed_kmeans8_vt_join_q;
    wire [21:0] i_unnamed_kmeans8_vt_select_31_b;
    wire [0:0] kmeans_B1_start_merge_reg_out_stall_out;
    wire [0:0] kmeans_B1_start_merge_reg_out_valid_out;
    wire [31:0] bgTrunc_i_unnamed_kmeans14_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_kmeans16_sel_x_b;
    wire [31:0] c_i32_021_recast_x_q;
    wire [0:0] i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_iord_bl_call_kmeans_o_fifoready;
    wire [0:0] i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_valid;
    wire [31:0] i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_data_0_tpl;
    wire [31:0] i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_data_2_tpl;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going103_kmeans1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going103_kmeans1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_pipeline_valid_out;
    wire [32:0] i_unnamed_kmeans15_sel_x_b;
    wire [1:0] leftShiftStage0Idx1Pad2_uid94_i_unnamed_kmeans0_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid95_i_unnamed_kmeans0_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid95_i_unnamed_kmeans0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid96_i_unnamed_kmeans0_shift_x_q;
    wire [0:0] leftShiftStage0_uid98_i_unnamed_kmeans0_shift_x_s;
    reg [31:0] leftShiftStage0_uid98_i_unnamed_kmeans0_shift_x_q;
    wire [7:0] leftShiftStage1Idx1Pad8_uid99_i_unnamed_kmeans0_shift_x_q;
    wire [23:0] leftShiftStage1Idx1Rng8_uid100_i_unnamed_kmeans0_shift_x_in;
    wire [23:0] leftShiftStage1Idx1Rng8_uid100_i_unnamed_kmeans0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid101_i_unnamed_kmeans0_shift_x_q;
    wire [0:0] leftShiftStage1_uid103_i_unnamed_kmeans0_shift_x_s;
    reg [31:0] leftShiftStage1_uid103_i_unnamed_kmeans0_shift_x_q;
    wire [30:0] i_smax_kmeans13_vt_select_0_merged_bit_select_in;
    wire [0:0] i_smax_kmeans13_vt_select_0_merged_bit_select_b;
    wire [20:0] i_smax_kmeans13_vt_select_0_merged_bit_select_c;
    wire [21:0] join_for_coalesced_delay_0_q;
    wire [20:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [21:0] coalesced_delay_0_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_b;
    wire [95:0] bubble_join_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_q;
    wire [31:0] bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_b;
    wire [31:0] bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_d;
    reg [0:0] SE_i_cmp53_kmeans6_R_v_0;
    reg [0:0] SE_i_cmp53_kmeans6_R_v_1;
    wire [0:0] SE_i_cmp53_kmeans6_v_s_0;
    wire [0:0] SE_i_cmp53_kmeans6_s_tv_0;
    wire [0:0] SE_i_cmp53_kmeans6_s_tv_1;
    wire [0:0] SE_i_cmp53_kmeans6_backEN;
    wire [0:0] SE_i_cmp53_kmeans6_or0;
    wire [0:0] SE_i_cmp53_kmeans6_backStall;
    wire [0:0] SE_i_cmp53_kmeans6_V0;
    wire [0:0] SE_i_cmp53_kmeans6_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_V0;
    wire [0:0] SE_out_kmeans_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_kmeans_B1_start_merge_reg_wireStall;
    wire [0:0] SE_out_kmeans_B1_start_merge_reg_StallValid;
    wire [0:0] SE_out_kmeans_B1_start_merge_reg_toReg0;
    reg [0:0] SE_out_kmeans_B1_start_merge_reg_fromReg0;
    wire [0:0] SE_out_kmeans_B1_start_merge_reg_consumed0;
    wire [0:0] SE_out_kmeans_B1_start_merge_reg_toReg1;
    reg [0:0] SE_out_kmeans_B1_start_merge_reg_fromReg1;
    wire [0:0] SE_out_kmeans_B1_start_merge_reg_consumed1;
    wire [0:0] SE_out_kmeans_B1_start_merge_reg_or0;
    wire [0:0] SE_out_kmeans_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_kmeans_B1_start_merge_reg_V0;
    wire [0:0] SE_out_kmeans_B1_start_merge_reg_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_toReg3;
    reg [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed3;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_or2;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_V2;
    wire [0:0] SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_V3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_V0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and1;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and2;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and3;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and4;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_V0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x(BITJOIN,122)
    assign bubble_join_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_q = {i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x(BITSELECT,123)
    assign bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_q[31:0]);
    assign bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_q[63:32]);
    assign bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_q[95:64]);

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9(STALLENABLE,132)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg(STALLENABLE,196)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_s_tv_0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5(STALLENABLE,130)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg(STALLENABLE,195)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_s_tv_0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_v_s_0;
            end

        end
    end

    // c_i32_021_recast_x(CONSTANT,70)
    assign c_i32_021_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp53_kmeans6(COMPARE,18)@2 + 1
    assign i_cmp53_kmeans6_a = $unsigned({{2{c_i32_021_recast_x_q[31]}}, c_i32_021_recast_x_q});
    assign i_cmp53_kmeans6_b = $unsigned({{2{bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_d[31]}}, bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_d});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp53_kmeans6_o <= 34'b0;
        end
        else if (SE_i_cmp53_kmeans6_backEN == 1'b1)
        begin
            i_cmp53_kmeans6_o <= $unsigned($signed(i_cmp53_kmeans6_a) - $signed(i_cmp53_kmeans6_b));
        end
    end
    assign i_cmp53_kmeans6_c[0] = i_cmp53_kmeans6_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_kmeans6_kmeans10(BLACKBOX,19)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    kmeans_i_llvm_fpga_ffwd_source_i1_unnamed_6_kmeans0 thei_llvm_fpga_ffwd_source_i1_unnamed_kmeans6_kmeans10 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(i_cmp53_kmeans6_c),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_backStall),
        .in_valid_in(SE_i_cmp53_kmeans6_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i1_unnamed_kmeans6_kmeans10_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_kmeans6_kmeans10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_kmeans6_kmeans10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_125(CONSTANT,9)
    assign c_i33_125_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_124(CONSTANT,8)
    assign c_i32_124_q = $unsigned(32'b11111111111111111111111111111111);

    // i_smax_kmeans13_vt_const_9(CONSTANT,26)
    assign i_smax_kmeans13_vt_const_9_q = $unsigned(9'b000000000);

    // leftShiftStage1Idx1Rng8_uid100_i_unnamed_kmeans0_shift_x(BITSELECT,99)@2
    assign leftShiftStage1Idx1Rng8_uid100_i_unnamed_kmeans0_shift_x_in = leftShiftStage0_uid98_i_unnamed_kmeans0_shift_x_q[23:0];
    assign leftShiftStage1Idx1Rng8_uid100_i_unnamed_kmeans0_shift_x_b = leftShiftStage1Idx1Rng8_uid100_i_unnamed_kmeans0_shift_x_in[23:0];

    // leftShiftStage1Idx1Pad8_uid99_i_unnamed_kmeans0_shift_x(CONSTANT,98)
    assign leftShiftStage1Idx1Pad8_uid99_i_unnamed_kmeans0_shift_x_q = $unsigned(8'b00000000);

    // leftShiftStage1Idx1_uid101_i_unnamed_kmeans0_shift_x(BITJOIN,100)@2
    assign leftShiftStage1Idx1_uid101_i_unnamed_kmeans0_shift_x_q = {leftShiftStage1Idx1Rng8_uid100_i_unnamed_kmeans0_shift_x_b, leftShiftStage1Idx1Pad8_uid99_i_unnamed_kmeans0_shift_x_q};

    // leftShiftStage0Idx1Rng2_uid95_i_unnamed_kmeans0_shift_x(BITSELECT,94)@2
    assign leftShiftStage0Idx1Rng2_uid95_i_unnamed_kmeans0_shift_x_in = bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_d[29:0];
    assign leftShiftStage0Idx1Rng2_uid95_i_unnamed_kmeans0_shift_x_b = leftShiftStage0Idx1Rng2_uid95_i_unnamed_kmeans0_shift_x_in[29:0];

    // leftShiftStage0Idx1Pad2_uid94_i_unnamed_kmeans0_shift_x(CONSTANT,93)
    assign leftShiftStage0Idx1Pad2_uid94_i_unnamed_kmeans0_shift_x_q = $unsigned(2'b00);

    // leftShiftStage0Idx1_uid96_i_unnamed_kmeans0_shift_x(BITJOIN,95)@2
    assign leftShiftStage0Idx1_uid96_i_unnamed_kmeans0_shift_x_q = {leftShiftStage0Idx1Rng2_uid95_i_unnamed_kmeans0_shift_x_b, leftShiftStage0Idx1Pad2_uid94_i_unnamed_kmeans0_shift_x_q};

    // leftShiftStage0_uid98_i_unnamed_kmeans0_shift_x(MUX,97)@2
    assign leftShiftStage0_uid98_i_unnamed_kmeans0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid98_i_unnamed_kmeans0_shift_x_s or bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_d or leftShiftStage0Idx1_uid96_i_unnamed_kmeans0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid98_i_unnamed_kmeans0_shift_x_s)
            1'b0 : leftShiftStage0_uid98_i_unnamed_kmeans0_shift_x_q = bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_d;
            1'b1 : leftShiftStage0_uid98_i_unnamed_kmeans0_shift_x_q = leftShiftStage0Idx1_uid96_i_unnamed_kmeans0_shift_x_q;
            default : leftShiftStage0_uid98_i_unnamed_kmeans0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid103_i_unnamed_kmeans0_shift_x(MUX,102)@2
    assign leftShiftStage1_uid103_i_unnamed_kmeans0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid103_i_unnamed_kmeans0_shift_x_s or leftShiftStage0_uid98_i_unnamed_kmeans0_shift_x_q or leftShiftStage1Idx1_uid101_i_unnamed_kmeans0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid103_i_unnamed_kmeans0_shift_x_s)
            1'b0 : leftShiftStage1_uid103_i_unnamed_kmeans0_shift_x_q = leftShiftStage0_uid98_i_unnamed_kmeans0_shift_x_q;
            1'b1 : leftShiftStage1_uid103_i_unnamed_kmeans0_shift_x_q = leftShiftStage1Idx1_uid101_i_unnamed_kmeans0_shift_x_q;
            default : leftShiftStage1_uid103_i_unnamed_kmeans0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_kmeans8_vt_select_31(BITSELECT,39)@2
    assign i_unnamed_kmeans8_vt_select_31_b = leftShiftStage1_uid103_i_unnamed_kmeans0_shift_x_q[31:10];

    // i_unnamed_kmeans8_vt_const_9(CONSTANT,37)
    assign i_unnamed_kmeans8_vt_const_9_q = $unsigned(10'b0000000000);

    // i_unnamed_kmeans8_vt_join(BITJOIN,38)@2
    assign i_unnamed_kmeans8_vt_join_q = {i_unnamed_kmeans8_vt_select_31_b, i_unnamed_kmeans8_vt_const_9_q};

    // c_i32_123(CONSTANT,7)
    assign c_i32_123_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_kmeans11(COMPARE,30)@2
    assign i_unnamed_kmeans11_a = $unsigned({{2{c_i32_123_q[31]}}, c_i32_123_q});
    assign i_unnamed_kmeans11_b = $unsigned({{2{i_unnamed_kmeans8_vt_join_q[31]}}, i_unnamed_kmeans8_vt_join_q});
    assign i_unnamed_kmeans11_o = $unsigned($signed(i_unnamed_kmeans11_a) - $signed(i_unnamed_kmeans11_b));
    assign i_unnamed_kmeans11_c[0] = i_unnamed_kmeans11_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax_kmeans13(MUX,24)@2
    assign i_smax_kmeans13_s = i_unnamed_kmeans11_c;
    always @(i_smax_kmeans13_s or c_i32_123_q or i_unnamed_kmeans8_vt_join_q)
    begin
        unique case (i_smax_kmeans13_s)
            1'b0 : i_smax_kmeans13_q = c_i32_123_q;
            1'b1 : i_smax_kmeans13_q = i_unnamed_kmeans8_vt_join_q;
            default : i_smax_kmeans13_q = 32'b0;
        endcase
    end

    // i_smax_kmeans13_vt_select_0_merged_bit_select(BITSELECT,104)@2
    assign i_smax_kmeans13_vt_select_0_merged_bit_select_in = i_smax_kmeans13_q[30:0];
    assign i_smax_kmeans13_vt_select_0_merged_bit_select_b = i_smax_kmeans13_vt_select_0_merged_bit_select_in[0:0];
    assign i_smax_kmeans13_vt_select_0_merged_bit_select_c = i_smax_kmeans13_vt_select_0_merged_bit_select_in[30:10];

    // join_for_coalesced_delay_0(BITJOIN,108)
    assign join_for_coalesced_delay_0_q = {i_smax_kmeans13_vt_select_0_merged_bit_select_b, i_smax_kmeans13_vt_select_0_merged_bit_select_c};

    // coalesced_delay_0_0(REG,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(22'b0000000000000000000000);
        end
        else if (SE_i_cmp53_kmeans6_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,109)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[20:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[21:21]);

    // i_smax_kmeans13_vt_join(BITJOIN,27)@3
    assign i_smax_kmeans13_vt_join_q = {GND_q, sel_for_coalesced_delay_0_b, i_smax_kmeans13_vt_const_9_q, sel_for_coalesced_delay_0_c};

    // i_unnamed_kmeans14(ADD,31)@3
    assign i_unnamed_kmeans14_a = {1'b0, i_smax_kmeans13_vt_join_q};
    assign i_unnamed_kmeans14_b = {1'b0, c_i32_124_q};
    assign i_unnamed_kmeans14_o = $unsigned(i_unnamed_kmeans14_a) + $unsigned(i_unnamed_kmeans14_b);
    assign i_unnamed_kmeans14_q = i_unnamed_kmeans14_o[32:0];

    // bgTrunc_i_unnamed_kmeans14_sel_x(BITSELECT,68)@3
    assign bgTrunc_i_unnamed_kmeans14_sel_x_b = i_unnamed_kmeans14_q[31:0];

    // i_unnamed_kmeans15_sel_x(BITSELECT,85)@3
    assign i_unnamed_kmeans15_sel_x_b = {1'b0, bgTrunc_i_unnamed_kmeans14_sel_x_b[31:0]};

    // i_unnamed_kmeans15_vt_select_31(BITSELECT,35)@3
    assign i_unnamed_kmeans15_vt_select_31_b = i_unnamed_kmeans15_sel_x_b[31:0];

    // i_unnamed_kmeans15_vt_join(BITJOIN,34)@3
    assign i_unnamed_kmeans15_vt_join_q = {GND_q, i_unnamed_kmeans15_vt_select_31_b};

    // i_unnamed_kmeans16(ADD,36)@3
    assign i_unnamed_kmeans16_a = {1'b0, i_unnamed_kmeans15_vt_join_q};
    assign i_unnamed_kmeans16_b = {1'b0, c_i33_125_q};
    assign i_unnamed_kmeans16_o = $unsigned(i_unnamed_kmeans16_a) + $unsigned(i_unnamed_kmeans16_b);
    assign i_unnamed_kmeans16_q = i_unnamed_kmeans16_o[33:0];

    // bgTrunc_i_unnamed_kmeans16_sel_x(BITSELECT,69)@3
    assign bgTrunc_i_unnamed_kmeans16_sel_x_b = i_unnamed_kmeans16_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_kmeans7_kmeans17(BLACKBOX,22)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    kmeans_i_llvm_fpga_ffwd_source_i33_unnamed_7_kmeans0 thei_llvm_fpga_ffwd_source_i33_unnamed_kmeans7_kmeans17 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(bgTrunc_i_unnamed_kmeans16_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_backStall),
        .in_valid_in(SE_i_cmp53_kmeans6_V1),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i33_unnamed_kmeans7_kmeans17_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_kmeans7_kmeans17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_kmeans7_kmeans17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg(STALLFIFO,198)
    assign bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_valid_in = SE_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1(STALLENABLE,194)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and0 = bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_valid_out;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and1 = i_llvm_fpga_ffwd_source_i33_unnamed_kmeans7_kmeans17_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and0;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and2 = i_llvm_fpga_ffwd_source_i1_unnamed_kmeans6_kmeans10_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and1;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and3 = bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_V0 & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and2;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and4 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_1_reg_V0 & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and3;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_1_reg_V0 & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_and4;

    // bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg(STALLENABLE,197)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_s_tv_0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x(STALLENABLE,155)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_backStall = bubble_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_wireValid = i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x(BLACKBOX,79)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_intel_reserved_ffwd_0_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_2_tpl@20000000
    kmeans_i_llvm_fpga_ffwd_source_s_struct_A000000Zamed_kmeans3_kmeans0 thei_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x (
        .in_predicate_in(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_V3),
        .in_src_data_in_0_0_0_tpl(bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_b),
        .in_src_data_in_0_0_1_tpl(bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_c),
        .in_src_data_in_0_0_2_tpl(bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_d),
        .out_stall_out(i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_valid_out),
        .out_intel_reserved_ffwd_0_0_0_tpl(i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9(BLACKBOX,21)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    kmeans_i_llvm_fpga_ffwd_source_i32_unnamed_5_kmeans0 thei_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_d),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_V2),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5(BLACKBOX,20)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    kmeans_i_llvm_fpga_ffwd_source_i32_unnamed_4_kmeans0 thei_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_V1),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_cmp53_kmeans6(STALLENABLE,126)
    // Valid signal propagation
    assign SE_i_cmp53_kmeans6_V0 = SE_i_cmp53_kmeans6_R_v_0;
    assign SE_i_cmp53_kmeans6_V1 = SE_i_cmp53_kmeans6_R_v_1;
    // Stall signal propagation
    assign SE_i_cmp53_kmeans6_s_tv_0 = i_llvm_fpga_ffwd_source_i1_unnamed_kmeans6_kmeans10_out_stall_out & SE_i_cmp53_kmeans6_R_v_0;
    assign SE_i_cmp53_kmeans6_s_tv_1 = i_llvm_fpga_ffwd_source_i33_unnamed_kmeans7_kmeans17_out_stall_out & SE_i_cmp53_kmeans6_R_v_1;
    // Backward Enable generation
    assign SE_i_cmp53_kmeans6_or0 = SE_i_cmp53_kmeans6_s_tv_0;
    assign SE_i_cmp53_kmeans6_backEN = ~ (SE_i_cmp53_kmeans6_s_tv_1 | SE_i_cmp53_kmeans6_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp53_kmeans6_v_s_0 = SE_i_cmp53_kmeans6_backEN & SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_V0;
    // Backward Stall generation
    assign SE_i_cmp53_kmeans6_backStall = ~ (SE_i_cmp53_kmeans6_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp53_kmeans6_R_v_0 <= 1'b0;
            SE_i_cmp53_kmeans6_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp53_kmeans6_backEN == 1'b0)
            begin
                SE_i_cmp53_kmeans6_R_v_0 <= SE_i_cmp53_kmeans6_R_v_0 & SE_i_cmp53_kmeans6_s_tv_0;
            end
            else
            begin
                SE_i_cmp53_kmeans6_R_v_0 <= SE_i_cmp53_kmeans6_v_s_0;
            end

            if (SE_i_cmp53_kmeans6_backEN == 1'b0)
            begin
                SE_i_cmp53_kmeans6_R_v_1 <= SE_i_cmp53_kmeans6_R_v_1 & SE_i_cmp53_kmeans6_s_tv_1;
            end
            else
            begin
                SE_i_cmp53_kmeans6_R_v_1 <= SE_i_cmp53_kmeans6_v_s_0;
            end

        end
    end

    // SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x(STALLENABLE,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg2 <= '0;
            SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg3 <= SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed0 = (~ (SE_i_cmp53_kmeans6_backStall) & SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_out_stall_out) & SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_out_stall_out) & SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg2;
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_stall_out) & SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_StallValid = SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_backStall & SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_toReg0 = SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_StallValid & SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_toReg1 = SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_StallValid & SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_toReg2 = SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_StallValid & SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed2;
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_toReg3 = SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_StallValid & SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_or0 = SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_or1 = SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed1 & SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_or2 = SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed2 & SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_or1;
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_consumed3 & SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_or2);
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_backStall = SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_V0 = SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_V1 = SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_V2 = SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg2);
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_V3 = SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_wireValid = i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1(BITJOIN,116)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1(BITSELECT,117)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_q[0:0]);

    // i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x(BLACKBOX,78)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_kmeans_o_fifoready@20000000
    // out out_o_stall@20000000
    kmeans_i_iord_bl_call_unnamed_kmeans2_kmeans0 thei_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_b),
        .in_i_stall(SE_out_i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_V0),
        .in_iord_bl_call_kmeans_i_fifodata(in_iord_bl_call_kmeans_i_fifodata),
        .in_iord_bl_call_kmeans_i_fifovalid(in_iord_bl_call_kmeans_i_fifovalid),
        .out_iord_bl_call_kmeans_o_fifoready(i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_iord_bl_call_kmeans_o_fifoready),
        .out_o_stall(i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1(STALLENABLE,136)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_backStall = i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1(BLACKBOX,23)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    kmeans_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_backStall),
        .in_valid_in(SE_out_kmeans_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,148)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = kmeans_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // kmeans_B1_start_merge_reg(BLACKBOX,49)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    kmeans_B1_start_merge_reg thekmeans_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_kmeans_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(kmeans_B1_start_merge_reg_out_stall_out),
        .out_valid_out(kmeans_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_kmeans_B1_start_merge_reg(STALLENABLE,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_kmeans_B1_start_merge_reg_fromReg0 <= '0;
            SE_out_kmeans_B1_start_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_kmeans_B1_start_merge_reg_fromReg0 <= SE_out_kmeans_B1_start_merge_reg_toReg0;
            // Successor 1
            SE_out_kmeans_B1_start_merge_reg_fromReg1 <= SE_out_kmeans_B1_start_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_kmeans_B1_start_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_out_stall_out) & SE_out_kmeans_B1_start_merge_reg_wireValid) | SE_out_kmeans_B1_start_merge_reg_fromReg0;
    assign SE_out_kmeans_B1_start_merge_reg_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_o_stall) & SE_out_kmeans_B1_start_merge_reg_wireValid) | SE_out_kmeans_B1_start_merge_reg_fromReg1;
    // Consuming
    assign SE_out_kmeans_B1_start_merge_reg_StallValid = SE_out_kmeans_B1_start_merge_reg_backStall & SE_out_kmeans_B1_start_merge_reg_wireValid;
    assign SE_out_kmeans_B1_start_merge_reg_toReg0 = SE_out_kmeans_B1_start_merge_reg_StallValid & SE_out_kmeans_B1_start_merge_reg_consumed0;
    assign SE_out_kmeans_B1_start_merge_reg_toReg1 = SE_out_kmeans_B1_start_merge_reg_StallValid & SE_out_kmeans_B1_start_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_kmeans_B1_start_merge_reg_or0 = SE_out_kmeans_B1_start_merge_reg_consumed0;
    assign SE_out_kmeans_B1_start_merge_reg_wireStall = ~ (SE_out_kmeans_B1_start_merge_reg_consumed1 & SE_out_kmeans_B1_start_merge_reg_or0);
    assign SE_out_kmeans_B1_start_merge_reg_backStall = SE_out_kmeans_B1_start_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_kmeans_B1_start_merge_reg_V0 = SE_out_kmeans_B1_start_merge_reg_wireValid & ~ (SE_out_kmeans_B1_start_merge_reg_fromReg0);
    assign SE_out_kmeans_B1_start_merge_reg_V1 = SE_out_kmeans_B1_start_merge_reg_wireValid & ~ (SE_out_kmeans_B1_start_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_kmeans_B1_start_merge_reg_wireValid = kmeans_B1_start_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x(STALLENABLE,157)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_backStall = bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_reg_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x(BLACKBOX,80)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going103_kmeans1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going103_kmeans1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    kmeans_i_sfc_s_c0_in_wt_entry_s_c0_enter14_kmeans0 thei_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_backStall),
        .in_i_valid(SE_out_kmeans_B1_start_merge_reg_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_kmeans0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going103_kmeans1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going103_kmeans1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going103_kmeans1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going103_kmeans1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,14)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going103_kmeans1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going103_kmeans1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going103_kmeans1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going103_kmeans1_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,16)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_kmeans1_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,62)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,66)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,72)
    assign out_iord_bl_call_kmeans_o_fifoready = i_iord_bl_call_kmeans_unnamed_kmeans2_kmeans2_aunroll_x_out_iord_bl_call_kmeans_o_fifoready;

    // dupName_0_regfree_osync_x(GPOUT,73)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i32_unnamed_kmeans4_kmeans5_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,74)@3
    assign out_valid_out = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_kmeanss_c0_enter14_kmeans0_aunroll_x_1_V0;

    // dupName_1_regfree_osync_x(GPOUT,75)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_kmeans5_kmeans9_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,76)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i1_unnamed_kmeans6_kmeans10_out_intel_reserved_ffwd_3_0;

    // dupName_3_regfree_osync_x(GPOUT,77)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i33_unnamed_kmeans7_kmeans17_out_intel_reserved_ffwd_4_0;

    // regfree_osync_aunroll_x(GPOUT,86)
    assign out_intel_reserved_ffwd_0_0_0_tpl = i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    assign out_intel_reserved_ffwd_0_0_1_tpl = i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    assign out_intel_reserved_ffwd_0_0_2_tpl = i_llvm_fpga_ffwd_source_s_struct_z6kmeansiii_inputss_unnamed_kmeans3_kmeans4_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;

endmodule
