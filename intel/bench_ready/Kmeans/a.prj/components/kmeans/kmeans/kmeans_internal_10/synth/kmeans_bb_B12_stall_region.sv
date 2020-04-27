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

// SystemVerilog created from kmeans_bb_B12_stall_region
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_bb_B12_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked111,
    input wire [31:0] in_i27_047_pop32130,
    input wire [0:0] in_notcmp46127,
    input wire [0:0] in_notcmp51108_pop33133,
    input wire [0:0] in_notcmp51126,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [31:0] out_c0_exe1209,
    output wire [15:0] out_c0_exe2210,
    output wire [0:0] out_c0_exe3211,
    output wire [0:0] out_c0_exe4212,
    output wire [0:0] out_c0_exe5213,
    output wire [0:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_1_tpl;
    wire [15:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_12_tpl;
    wire [0:0] kmeans_B12_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] kmeans_B12_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] kmeans_B12_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] kmeans_B12_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] kmeans_B12_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] kmeans_B12_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] kmeans_B12_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [35:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [119:0] bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_b;
    wire [15:0] bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_m;
    wire [35:0] bubble_join_kmeans_B12_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_kmeans_B12_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_kmeans_B12_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_kmeans_B12_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_kmeans_B12_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_kmeans_B12_merge_reg_aunroll_x_f;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_V0;
    wire [0:0] SE_out_kmeans_B12_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_kmeans_B12_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_kmeans_B12_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,24)
    assign bubble_join_stall_entry_q = {in_notcmp51126, in_notcmp51108_pop33133, in_notcmp46127, in_i27_047_pop32130, in_forked111};

    // bubble_select_stall_entry(BITSELECT,25)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);

    // SE_stall_entry(STALLENABLE,34)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = kmeans_B12_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // kmeans_B12_merge_reg_aunroll_x(BLACKBOX,22)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    kmeans_B12_merge_reg thekmeans_B12_merge_reg_aunroll_x (
        .in_stall_in(SE_out_kmeans_B12_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_f),
        .in_data_in_2_tpl(bubble_select_stall_entry_d),
        .in_data_in_3_tpl(bubble_select_stall_entry_c),
        .in_data_in_4_tpl(bubble_select_stall_entry_e),
        .out_stall_out(kmeans_B12_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(kmeans_B12_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(kmeans_B12_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(kmeans_B12_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(kmeans_B12_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(kmeans_B12_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(kmeans_B12_merge_reg_aunroll_x_out_data_out_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_kmeans_B12_merge_reg_aunroll_x(BITJOIN,32)
    assign bubble_join_kmeans_B12_merge_reg_aunroll_x_q = {kmeans_B12_merge_reg_aunroll_x_out_data_out_4_tpl, kmeans_B12_merge_reg_aunroll_x_out_data_out_3_tpl, kmeans_B12_merge_reg_aunroll_x_out_data_out_2_tpl, kmeans_B12_merge_reg_aunroll_x_out_data_out_1_tpl, kmeans_B12_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_kmeans_B12_merge_reg_aunroll_x(BITSELECT,33)
    assign bubble_select_kmeans_B12_merge_reg_aunroll_x_b = $unsigned(bubble_join_kmeans_B12_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_kmeans_B12_merge_reg_aunroll_x_c = $unsigned(bubble_join_kmeans_B12_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_kmeans_B12_merge_reg_aunroll_x_d = $unsigned(bubble_join_kmeans_B12_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_kmeans_B12_merge_reg_aunroll_x_e = $unsigned(bubble_join_kmeans_B12_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_kmeans_B12_merge_reg_aunroll_x_f = $unsigned(bubble_join_kmeans_B12_merge_reg_aunroll_x_q[35:35]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_kmeans_B12_merge_reg_aunroll_x(STALLENABLE,39)
    // Valid signal propagation
    assign SE_out_kmeans_B12_merge_reg_aunroll_x_V0 = SE_out_kmeans_B12_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_kmeans_B12_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_o_stall | ~ (SE_out_kmeans_B12_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_kmeans_B12_merge_reg_aunroll_x_wireValid = kmeans_B12_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x(STALLENABLE,37)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x(BLACKBOX,21)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit208_0_tpl@8
    // out out_c0_exit208_1_tpl@8
    // out out_c0_exit208_2_tpl@8
    // out out_c0_exit208_3_tpl@8
    // out out_c0_exit208_4_tpl@8
    // out out_c0_exit208_5_tpl@8
    // out out_c0_exit208_6_tpl@8
    // out out_c0_exit208_7_tpl@8
    // out out_c0_exit208_8_tpl@8
    // out out_c0_exit208_9_tpl@8
    // out out_c0_exit208_10_tpl@8
    // out out_c0_exit208_11_tpl@8
    // out out_c0_exit208_12_tpl@8
    kmeans_i_sfc_s_c0_in_for_cond37_preheader_s_c0_enter20020_kmeans1 thei_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_backStall),
        .in_i_valid(SE_out_kmeans_B12_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(bubble_select_kmeans_B12_merge_reg_aunroll_x_b),
        .in_c0_eni5_2_tpl(bubble_select_kmeans_B12_merge_reg_aunroll_x_f),
        .in_c0_eni5_3_tpl(bubble_select_kmeans_B12_merge_reg_aunroll_x_d),
        .in_c0_eni5_4_tpl(bubble_select_kmeans_B12_merge_reg_aunroll_x_e),
        .in_c0_eni5_5_tpl(bubble_select_kmeans_B12_merge_reg_aunroll_x_c),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_stall_out(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_valid_out(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit208_0_tpl(),
        .out_c0_exit208_1_tpl(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_1_tpl),
        .out_c0_exit208_2_tpl(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_2_tpl),
        .out_c0_exit208_3_tpl(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_3_tpl),
        .out_c0_exit208_4_tpl(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_4_tpl),
        .out_c0_exit208_5_tpl(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_5_tpl),
        .out_c0_exit208_6_tpl(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_6_tpl),
        .out_c0_exit208_7_tpl(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_7_tpl),
        .out_c0_exit208_8_tpl(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_8_tpl),
        .out_c0_exit208_9_tpl(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_9_tpl),
        .out_c0_exit208_10_tpl(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_10_tpl),
        .out_c0_exit208_11_tpl(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_11_tpl),
        .out_c0_exit208_12_tpl(i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_valid_out = i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_stall_out = i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,18)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x(BITJOIN,28)
    assign bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_q = {i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_12_tpl, i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_11_tpl, i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_10_tpl, i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_9_tpl, i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_8_tpl, i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_7_tpl, i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_6_tpl, i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_5_tpl, i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_4_tpl, i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_3_tpl, i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_2_tpl, i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_out_c0_exit208_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x(BITSELECT,29)
    assign bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_q[47:32]);
    assign bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_q[48:48]);
    assign bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_q[49:49]);
    assign bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_q[50:50]);
    assign bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_q[51:51]);
    assign bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_q[83:52]);
    assign bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_q[84:84]);
    assign bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_q[85:85]);
    assign bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_q[86:86]);
    assign bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_q[118:87]);
    assign bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_q[119:119]);

    // dupName_0_sync_out_x(GPOUT,20)@8
    assign out_c0_exe10 = bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_k;
    assign out_c0_exe11 = bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_l;
    assign out_c0_exe12 = bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_m;
    assign out_c0_exe1209 = bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_b;
    assign out_c0_exe2210 = bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_c;
    assign out_c0_exe3211 = bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_d;
    assign out_c0_exe4212 = bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_e;
    assign out_c0_exe5213 = bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_f;
    assign out_c0_exe6 = bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_g;
    assign out_c0_exe7 = bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_h;
    assign out_c0_exe8 = bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_i;
    assign out_c0_exe9 = bubble_select_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_j;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond37_preheader_kmeanss_c0_enter20020_kmeans1_aunroll_x_V0;

endmodule
