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

// SystemVerilog created from euler_bb_B4_stall_region
// SystemVerilog created on Mon Apr  6 12:54:32 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_bb_B4_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked24,
    input wire [0:0] in_forked35,
    input wire [0:0] in_notcmp2536,
    input wire [32:0] in_unnamed_euler7,
    input wire [0:0] in_unnamed_euler8,
    input wire [0:0] in_unnamed_euler9,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe256,
    output wire [0:0] out_c0_exe357,
    output wire [0:0] out_c0_exe458,
    output wire [0:0] out_c0_exe559,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] euler_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] euler_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] euler_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] euler_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [32:0] euler_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] euler_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] euler_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] euler_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_pipeline_valid_out;
    wire [63:0] i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_7_tpl;
    wire [37:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [32:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [37:0] bubble_join_euler_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_euler_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_euler_B4_merge_reg_aunroll_x_c;
    wire [32:0] bubble_select_euler_B4_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_euler_B4_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_euler_B4_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_euler_B4_merge_reg_aunroll_x_g;
    wire [68:0] bubble_join_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_g;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_euler_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_euler_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_euler_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,22)
    assign bubble_join_stall_entry_q = {in_unnamed_euler9, in_unnamed_euler8, in_unnamed_euler7, in_notcmp2536, in_forked35, in_forked24};

    // bubble_select_stall_entry(BITSELECT,23)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[35:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[36:36]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[37:37]);

    // SE_stall_entry(STALLENABLE,32)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = euler_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // euler_B4_merge_reg_aunroll_x(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    euler_B4_merge_reg theeuler_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_euler_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .in_data_in_2_tpl(bubble_select_stall_entry_e),
        .in_data_in_3_tpl(bubble_select_stall_entry_f),
        .in_data_in_4_tpl(bubble_select_stall_entry_g),
        .in_data_in_5_tpl(bubble_select_stall_entry_d),
        .out_stall_out(euler_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(euler_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(euler_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(euler_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(euler_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(euler_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(euler_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(euler_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_euler_B4_merge_reg_aunroll_x(BITJOIN,26)
    assign bubble_join_euler_B4_merge_reg_aunroll_x_q = {euler_B4_merge_reg_aunroll_x_out_data_out_5_tpl, euler_B4_merge_reg_aunroll_x_out_data_out_4_tpl, euler_B4_merge_reg_aunroll_x_out_data_out_3_tpl, euler_B4_merge_reg_aunroll_x_out_data_out_2_tpl, euler_B4_merge_reg_aunroll_x_out_data_out_1_tpl, euler_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_euler_B4_merge_reg_aunroll_x(BITSELECT,27)
    assign bubble_select_euler_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_euler_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_euler_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_euler_B4_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_euler_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_euler_B4_merge_reg_aunroll_x_q[34:2]);
    assign bubble_select_euler_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_euler_B4_merge_reg_aunroll_x_q[35:35]);
    assign bubble_select_euler_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_euler_B4_merge_reg_aunroll_x_q[36:36]);
    assign bubble_select_euler_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_euler_B4_merge_reg_aunroll_x_q[37:37]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_euler_B4_merge_reg_aunroll_x(STALLENABLE,35)
    // Valid signal propagation
    assign SE_out_euler_B4_merge_reg_aunroll_x_V0 = SE_out_euler_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_euler_B4_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_o_stall | ~ (SE_out_euler_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_euler_B4_merge_reg_aunroll_x_wireValid = euler_B4_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x(STALLENABLE,37)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x(BLACKBOX,20)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit54_0_tpl@9
    // out out_c0_exit54_1_tpl@9
    // out out_c0_exit54_2_tpl@9
    // out out_c0_exit54_3_tpl@9
    // out out_c0_exit54_4_tpl@9
    // out out_c0_exit54_5_tpl@9
    // out out_c0_exit54_6_tpl@9
    // out out_c0_exit54_7_tpl@9
    euler_i_sfc_s_c0_in_for_body_i_s_c0_enter478_euler1 thei_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_backStall),
        .in_i_valid(SE_out_euler_B4_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni6_0_tpl(GND_q),
        .in_c0_eni6_1_tpl(bubble_select_euler_B4_merge_reg_aunroll_x_b),
        .in_c0_eni6_2_tpl(bubble_select_euler_B4_merge_reg_aunroll_x_d),
        .in_c0_eni6_3_tpl(bubble_select_euler_B4_merge_reg_aunroll_x_c),
        .in_c0_eni6_4_tpl(bubble_select_euler_B4_merge_reg_aunroll_x_e),
        .in_c0_eni6_5_tpl(bubble_select_euler_B4_merge_reg_aunroll_x_f),
        .in_c0_eni6_6_tpl(bubble_select_euler_B4_merge_reg_aunroll_x_g),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_stall_out(i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_valid_out(i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit54_0_tpl(),
        .out_c0_exit54_1_tpl(),
        .out_c0_exit54_2_tpl(i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_2_tpl),
        .out_c0_exit54_3_tpl(i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_3_tpl),
        .out_c0_exit54_4_tpl(i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_4_tpl),
        .out_c0_exit54_5_tpl(i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_5_tpl),
        .out_c0_exit54_6_tpl(i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_6_tpl),
        .out_c0_exit54_7_tpl(i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_valid_out = i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_stall_out = i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,16)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x(BITJOIN,29)
    assign bubble_join_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_q = {i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_7_tpl, i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_6_tpl, i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_5_tpl, i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_4_tpl, i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_3_tpl, i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_out_c0_exit54_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x(BITSELECT,30)
    assign bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_q[64:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_q[65:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_q[67:67]);
    assign bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_q[68:68]);

    // dupName_0_sync_out_x(GPOUT,18)@9
    assign out_c0_exe256 = bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_b;
    assign out_c0_exe357 = bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_c;
    assign out_c0_exe458 = bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_d;
    assign out_c0_exe559 = bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_e;
    assign out_c0_exe6 = bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_f;
    assign out_c0_exe7 = bubble_select_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_g;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body_i_eulers_c0_enter478_euler1_aunroll_x_V0;

endmodule
