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

// SystemVerilog created from xmlCheckLanguageID_bb_B8_stall_region
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_bb_B8_stall_region (
    input wire [63:0] in_pr_lm22_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_pr_lm22_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_pr_lm22_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_pr_lm22_xmlCheckLanguageID_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going169_xmlchecklanguageid6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going169_xmlchecklanguageid6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_24_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [0:0] in_intel_reserved_ffwd_23_0,
    output wire [63:0] out_intel_reserved_ffwd_25_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked49,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_pr_lm22_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_pr_lm22_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_pr_lm22_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_pr_lm22_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_pr_lm22_xmlCheckLanguageID_avm_writedata,
    output wire [7:0] out_pr_lm22_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_pr_lm22_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_intel_reserved_ffwd_26_0,
    output wire [0:0] out_c0_exe2224,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going169_xmlchecklanguageid6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going169_xmlchecklanguageid6_exiting_valid_out;
    wire [63:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_intel_reserved_ffwd_25_0;
    wire [7:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_intel_reserved_ffwd_26_0;
    wire [0:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pipeline_valid_out;
    wire [63:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_address;
    wire [0:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_read;
    wire [0:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_write;
    wire [63:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_c0_exit222_2_tpl;
    wire [0:0] xmlCheckLanguageID_B8_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] xmlCheckLanguageID_B8_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] xmlCheckLanguageID_B8_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_b;
    wire [0:0] bubble_join_xmlCheckLanguageID_B8_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_xmlCheckLanguageID_B8_merge_reg_aunroll_x_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_V0;
    wire [0:0] SE_out_xmlCheckLanguageID_B8_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_xmlCheckLanguageID_B8_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_xmlCheckLanguageID_B8_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,30)
    assign bubble_join_stall_entry_q = in_forked49;

    // bubble_select_stall_entry(BITSELECT,31)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,40)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = xmlCheckLanguageID_B8_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // xmlCheckLanguageID_B8_merge_reg_aunroll_x(BLACKBOX,28)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    xmlCheckLanguageID_B8_merge_reg thexmlCheckLanguageID_B8_merge_reg_aunroll_x (
        .in_stall_in(SE_out_xmlCheckLanguageID_B8_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(xmlCheckLanguageID_B8_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(xmlCheckLanguageID_B8_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(xmlCheckLanguageID_B8_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_xmlCheckLanguageID_B8_merge_reg_aunroll_x(BITJOIN,38)
    assign bubble_join_xmlCheckLanguageID_B8_merge_reg_aunroll_x_q = xmlCheckLanguageID_B8_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_xmlCheckLanguageID_B8_merge_reg_aunroll_x(BITSELECT,39)
    assign bubble_select_xmlCheckLanguageID_B8_merge_reg_aunroll_x_b = $unsigned(bubble_join_xmlCheckLanguageID_B8_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_xmlCheckLanguageID_B8_merge_reg_aunroll_x(STALLENABLE,45)
    // Valid signal propagation
    assign SE_out_xmlCheckLanguageID_B8_merge_reg_aunroll_x_V0 = SE_out_xmlCheckLanguageID_B8_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_xmlCheckLanguageID_B8_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_o_stall | ~ (SE_out_xmlCheckLanguageID_B8_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_xmlCheckLanguageID_B8_merge_reg_aunroll_x_wireValid = xmlCheckLanguageID_B8_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x(STALLENABLE,43)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_wireValid = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x(BLACKBOX,27)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going169_xmlchecklanguageid6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going169_xmlchecklanguageid6_exiting_valid_out@20000000
    // out out_intel_reserved_ffwd_25_0@20000000
    // out out_intel_reserved_ffwd_26_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@17
    // out out_pipeline_valid_out@20000000
    // out out_pr_lm22_xmlCheckLanguageID_avm_address@20000000
    // out out_pr_lm22_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_pr_lm22_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_pr_lm22_xmlCheckLanguageID_avm_enable@20000000
    // out out_pr_lm22_xmlCheckLanguageID_avm_read@20000000
    // out out_pr_lm22_xmlCheckLanguageID_avm_write@20000000
    // out out_pr_lm22_xmlCheckLanguageID_avm_writedata@20000000
    // out out_c0_exit222_0_tpl@17
    // out out_c0_exit222_1_tpl@17
    // out out_c0_exit222_2_tpl@17
    xmlCheckLanguageID_i_sfc_s_c0_in_while_bA000000Z_xmlchecklanguageid1 thei_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_backStall),
        .in_i_valid(SE_out_xmlCheckLanguageID_B8_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pr_lm22_xmlCheckLanguageID_avm_readdata(in_pr_lm22_xmlCheckLanguageID_avm_readdata),
        .in_pr_lm22_xmlCheckLanguageID_avm_readdatavalid(in_pr_lm22_xmlCheckLanguageID_avm_readdatavalid),
        .in_pr_lm22_xmlCheckLanguageID_avm_waitrequest(in_pr_lm22_xmlCheckLanguageID_avm_waitrequest),
        .in_pr_lm22_xmlCheckLanguageID_avm_writeack(in_pr_lm22_xmlCheckLanguageID_avm_writeack),
        .in_c0_eni1217_0_tpl(GND_q),
        .in_c0_eni1217_1_tpl(bubble_select_xmlCheckLanguageID_B8_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going169_xmlchecklanguageid6_exiting_stall_out(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going169_xmlchecklanguageid6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going169_xmlchecklanguageid6_exiting_valid_out(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going169_xmlchecklanguageid6_exiting_valid_out),
        .out_intel_reserved_ffwd_25_0(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_intel_reserved_ffwd_26_0),
        .out_o_stall(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pipeline_valid_out),
        .out_pr_lm22_xmlCheckLanguageID_avm_address(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_address),
        .out_pr_lm22_xmlCheckLanguageID_avm_burstcount(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_burstcount),
        .out_pr_lm22_xmlCheckLanguageID_avm_byteenable(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_byteenable),
        .out_pr_lm22_xmlCheckLanguageID_avm_enable(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_enable),
        .out_pr_lm22_xmlCheckLanguageID_avm_read(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_read),
        .out_pr_lm22_xmlCheckLanguageID_avm_write(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_write),
        .out_pr_lm22_xmlCheckLanguageID_avm_writedata(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_writedata),
        .out_c0_exit222_0_tpl(),
        .out_c0_exit222_1_tpl(),
        .out_c0_exit222_2_tpl(i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_c0_exit222_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going169_xmlchecklanguageid6_exiting_valid_out = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going169_xmlchecklanguageid6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going169_xmlchecklanguageid6_exiting_stall_out = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going169_xmlchecklanguageid6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,18)
    assign out_intel_reserved_ffwd_25_0 = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_intel_reserved_ffwd_25_0;

    // sync_out(GPOUT,22)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,24)
    assign out_pr_lm22_xmlCheckLanguageID_avm_address = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_address;
    assign out_pr_lm22_xmlCheckLanguageID_avm_enable = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_enable;
    assign out_pr_lm22_xmlCheckLanguageID_avm_read = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_read;
    assign out_pr_lm22_xmlCheckLanguageID_avm_write = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_write;
    assign out_pr_lm22_xmlCheckLanguageID_avm_writedata = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_writedata;
    assign out_pr_lm22_xmlCheckLanguageID_avm_byteenable = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_byteenable;
    assign out_pr_lm22_xmlCheckLanguageID_avm_burstcount = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_pr_lm22_xmlCheckLanguageID_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_26_0 = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_intel_reserved_ffwd_26_0;

    // bubble_join_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x(BITJOIN,34)
    assign bubble_join_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_q = i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_out_c0_exit222_2_tpl;

    // bubble_select_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x(BITSELECT,35)
    assign bubble_select_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,26)@17
    assign out_c0_exe2224 = bubble_select_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_while_body125_xmlchecklanguageids_c0_enter2183_xmlchecklanguageid1_aunroll_x_V0;

endmodule
