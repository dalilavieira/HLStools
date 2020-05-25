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

// SystemVerilog created from xmlCheckLanguageID_bb_B16_stall_region
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_bb_B16_stall_region (
    input wire [0:0] in_iowr_bl_return_xmlCheckLanguageID_i_fifoready,
    output wire [31:0] out_iowr_bl_return_xmlCheckLanguageID_o_fifodata,
    output wire [0:0] out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid,
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [0:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_intel_reserved_ffwd_16_0,
    input wire [0:0] in_intel_reserved_ffwd_17_0,
    input wire [0:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_33_0,
    input wire [0:0] in_intel_reserved_ffwd_35_0,
    input wire [0:0] in_intel_reserved_ffwd_50_0,
    input wire [0:0] in_intel_reserved_ffwd_51_0,
    input wire [0:0] in_intel_reserved_ffwd_52_0,
    input wire [0:0] in_intel_reserved_ffwd_59_0,
    input wire [0:0] in_intel_reserved_ffwd_62_0,
    input wire [0:0] in_intel_reserved_ffwd_69_0,
    input wire [0:0] in_intel_reserved_ffwd_70_0,
    input wire [0:0] in_intel_reserved_ffwd_73_0,
    input wire [0:0] in_intel_reserved_ffwd_74_0,
    input wire [0:0] in_intel_reserved_ffwd_79_0,
    input wire [0:0] in_intel_reserved_ffwd_80_0,
    input wire [0:0] in_intel_reserved_ffwd_9_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_cmp68_phi_decision1526_replace_phi_dir,
    input wire [0:0] in_cmp84_phi_decision63_replace_phi_dir,
    input wire [0:0] in_cmp_phi_decision11_replace_phi_dir,
    input wire [0:0] in_phi_decision1025_replace_phi_dir,
    input wire [0:0] in_phi_decision1226_replace_phi_dir,
    input wire [0:0] in_phi_decision66_replace_phi_dir,
    input wire [0:0] in_retval_0_shrunk_replace_phi_dir,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_iowr_bl_return_xmlCheckLanguageID_o_fifodata;
    wire [0:0] i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid;
    wire [0:0] i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_o_ack;
    wire [0:0] i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_o_stall;
    wire [0:0] i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_o_valid;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_out_c0_exit259_1_tpl;
    wire [0:0] xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] bubble_join_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_q;
    wire [0:0] bubble_select_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_b;
    wire [6:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_join_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_b;
    wire [6:0] bubble_join_xmlCheckLanguageID_B16_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_h;
    wire [0:0] SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_wireStall;
    wire [0:0] SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_StallValid;
    wire [0:0] SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_toReg0;
    reg [0:0] SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_fromReg0;
    wire [0:0] SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_consumed0;
    wire [0:0] SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_toReg1;
    reg [0:0] SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_fromReg1;
    wire [0:0] SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_consumed1;
    wire [0:0] SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_or0;
    wire [0:0] SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_V0;
    wire [0:0] SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_V0;
    wire [0:0] SE_out_xmlCheckLanguageID_B16_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_xmlCheckLanguageID_B16_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_xmlCheckLanguageID_B16_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,53)
    assign bubble_join_stall_entry_q = {in_retval_0_shrunk_replace_phi_dir, in_phi_decision66_replace_phi_dir, in_phi_decision1226_replace_phi_dir, in_phi_decision1025_replace_phi_dir, in_cmp_phi_decision11_replace_phi_dir, in_cmp84_phi_decision63_replace_phi_dir, in_cmp68_phi_decision1526_replace_phi_dir};

    // bubble_select_stall_entry(BITSELECT,54)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[4:4]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[5:5]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[6:6]);

    // SE_stall_entry(STALLENABLE,66)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // xmlCheckLanguageID_B16_merge_reg_aunroll_x(BLACKBOX,47)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    xmlCheckLanguageID_B16_merge_reg thexmlCheckLanguageID_B16_merge_reg_aunroll_x (
        .in_stall_in(SE_out_xmlCheckLanguageID_B16_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_h),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_c),
        .in_data_in_3_tpl(bubble_select_stall_entry_g),
        .in_data_in_4_tpl(bubble_select_stall_entry_e),
        .in_data_in_5_tpl(bubble_select_stall_entry_f),
        .in_data_in_6_tpl(bubble_select_stall_entry_b),
        .out_stall_out(xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_xmlCheckLanguageID_B16_merge_reg_aunroll_x(BITJOIN,60)
    assign bubble_join_xmlCheckLanguageID_B16_merge_reg_aunroll_x_q = {xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_6_tpl, xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_5_tpl, xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_4_tpl, xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_3_tpl, xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_2_tpl, xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_1_tpl, xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x(BITSELECT,61)
    assign bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_b = $unsigned(bubble_join_xmlCheckLanguageID_B16_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_c = $unsigned(bubble_join_xmlCheckLanguageID_B16_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_d = $unsigned(bubble_join_xmlCheckLanguageID_B16_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_e = $unsigned(bubble_join_xmlCheckLanguageID_B16_merge_reg_aunroll_x_q[3:3]);
    assign bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_f = $unsigned(bubble_join_xmlCheckLanguageID_B16_merge_reg_aunroll_x_q[4:4]);
    assign bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_g = $unsigned(bubble_join_xmlCheckLanguageID_B16_merge_reg_aunroll_x_q[5:5]);
    assign bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_h = $unsigned(bubble_join_xmlCheckLanguageID_B16_merge_reg_aunroll_x_q[6:6]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_xmlCheckLanguageID_B16_merge_reg_aunroll_x(STALLENABLE,71)
    // Valid signal propagation
    assign SE_out_xmlCheckLanguageID_B16_merge_reg_aunroll_x_V0 = SE_out_xmlCheckLanguageID_B16_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_xmlCheckLanguageID_B16_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_out_o_stall | ~ (SE_out_xmlCheckLanguageID_B16_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_xmlCheckLanguageID_B16_merge_reg_aunroll_x_wireValid = xmlCheckLanguageID_B16_merge_reg_aunroll_x_out_valid_out;

    // i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x(BLACKBOX,46)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_c0_exit259_0_tpl@7
    // out out_c0_exit259_1_tpl@7
    xmlCheckLanguageID_i_sfc_s_c0_in_cleanupA000000Z_xmlchecklanguageid1 thei_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_backStall),
        .in_i_valid(SE_out_xmlCheckLanguageID_B16_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_51_0(in_intel_reserved_ffwd_51_0),
        .in_intel_reserved_ffwd_52_0(in_intel_reserved_ffwd_52_0),
        .in_intel_reserved_ffwd_59_0(in_intel_reserved_ffwd_59_0),
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_intel_reserved_ffwd_69_0(in_intel_reserved_ffwd_69_0),
        .in_intel_reserved_ffwd_70_0(in_intel_reserved_ffwd_70_0),
        .in_intel_reserved_ffwd_73_0(in_intel_reserved_ffwd_73_0),
        .in_intel_reserved_ffwd_74_0(in_intel_reserved_ffwd_74_0),
        .in_intel_reserved_ffwd_79_0(in_intel_reserved_ffwd_79_0),
        .in_intel_reserved_ffwd_80_0(in_intel_reserved_ffwd_80_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_c0_eni7_0_tpl(GND_q),
        .in_c0_eni7_1_tpl(bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_f),
        .in_c0_eni7_2_tpl(bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_g),
        .in_c0_eni7_3_tpl(bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_e),
        .in_c0_eni7_4_tpl(bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_d),
        .in_c0_eni7_5_tpl(bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_h),
        .in_c0_eni7_6_tpl(bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_b),
        .in_c0_eni7_7_tpl(bubble_select_xmlCheckLanguageID_B16_merge_reg_aunroll_x_c),
        .out_o_stall(i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_out_o_valid),
        .out_c0_exit259_0_tpl(),
        .out_c0_exit259_1_tpl(i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_out_c0_exit259_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x(STALLENABLE,69)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_backStall = i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_wireValid = i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4(STALLENABLE,65)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_wireValid = i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_out_valid_out;

    // bubble_join_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3(BITJOIN,49)
    assign bubble_join_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_q = i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_o_ack;

    // bubble_select_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3(BITSELECT,50)
    assign bubble_select_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_b = $unsigned(bubble_join_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4(BLACKBOX,11)@7
    // in in_stall_in@20000000
    // out out_data_out@8
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@8
    xmlCheckLanguageID_i_llvm_fpga_push_tokeA000001Z_xmlchecklanguageid0 thei_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4 (
        .in_data_in(bubble_select_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_b),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_backStall),
        .in_valid_in(SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_V1),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3(STALLENABLE,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_fromReg0 <= '0;
            SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_fromReg0 <= SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_toReg0;
            // Successor 1
            SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_fromReg1 <= SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_consumed0 = (~ (in_stall_in) & SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_wireValid) | SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_fromReg0;
    assign SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_consumed1 = (~ (i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_out_stall_out) & SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_wireValid) | SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_fromReg1;
    // Consuming
    assign SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_StallValid = SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_backStall & SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_wireValid;
    assign SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_toReg0 = SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_StallValid & SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_consumed0;
    assign SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_toReg1 = SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_StallValid & SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_consumed1;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_or0 = SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_consumed0;
    assign SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_wireStall = ~ (SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_consumed1 & SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_or0);
    assign SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_backStall = SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_wireStall;
    // Valid signal propagation
    assign SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_V0 = SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_wireValid & ~ (SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_fromReg0);
    assign SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_V1 = SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_wireValid & ~ (SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_wireValid = i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_o_valid;

    // bubble_join_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x(BITJOIN,57)
    assign bubble_join_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_q = i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_out_c0_exit259_1_tpl;

    // bubble_select_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x(BITSELECT,58)
    assign bubble_select_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_q[31:0]);

    // i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3(BLACKBOX,10)@7
    // in in_i_stall@20000000
    // out out_iowr_bl_return_xmlCheckLanguageID_o_fifodata@20000000
    // out out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid@20000000
    // out out_o_stall@20000000
    xmlCheckLanguageID_i_iowr_bl_return_xmlcA000000Z_xmlchecklanguageid0 thei_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3 (
        .in_i_data(bubble_select_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_b),
        .in_i_stall(SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid1_aunroll_x_V0),
        .in_iowr_bl_return_xmlCheckLanguageID_i_fifoready(in_iowr_bl_return_xmlCheckLanguageID_i_fifoready),
        .out_iowr_bl_return_xmlCheckLanguageID_o_fifodata(i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_iowr_bl_return_xmlCheckLanguageID_o_fifodata),
        .out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid(i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid),
        .out_o_ack(i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_o_ack),
        .out_o_stall(i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_o_stall),
        .out_o_valid(i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_iowr_bl_return_xmlCheckLanguageID_o_fifodata = i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_iowr_bl_return_xmlCheckLanguageID_o_fifodata;
    assign out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid = i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid;

    // feedback_out_1_sync(GPOUT,7)
    assign out_feedback_out_1 = i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,9)
    assign out_feedback_valid_out_1 = i_llvm_fpga_push_token_i1_throttle_push_xmlchecklanguageid4_out_feedback_valid_out_1;

    // sync_out(GPOUT,43)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,45)@7
    assign out_valid_out = SE_out_i_iowr_bl_return_xmlchecklanguageid_unnamed_xmlchecklanguageid160_xmlchecklanguageid3_V0;

endmodule
