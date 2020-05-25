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

// SystemVerilog created from xmlCheckLanguageID_bb_B7_stall_region
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_bb_B7_stall_region (
    input wire [63:0] in_lm7121_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm7121_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_lm7121_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm7121_xmlCheckLanguageID_avm_readdatavalid,
    output wire [63:0] out_lm7121_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm7121_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm7121_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm7121_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm7121_xmlCheckLanguageID_avm_writedata,
    output wire [7:0] out_lm7121_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm7121_xmlCheckLanguageID_avm_burstcount,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [7:0] in_intel_reserved_ffwd_11_0,
    input wire [63:0] in_intel_reserved_ffwd_12_0,
    input wire [7:0] in_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_13_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_intel_reserved_ffwd_14_0,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_intel_reserved_ffwd_15_0,
    output wire [0:0] out_intel_reserved_ffwd_16_0,
    output wire [0:0] out_intel_reserved_ffwd_17_0,
    output wire [0:0] out_intel_reserved_ffwd_18_0,
    output wire [0:0] out_intel_reserved_ffwd_19_0,
    output wire [7:0] out_intel_reserved_ffwd_20_0,
    output wire [0:0] out_intel_reserved_ffwd_21_0,
    output wire [0:0] out_intel_reserved_ffwd_22_0,
    output wire [0:0] out_intel_reserved_ffwd_23_0,
    output wire [0:0] out_intel_reserved_ffwd_24_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_13_0;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_14_0;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_15_0;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_17_0;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_18_0;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_19_0;
    wire [7:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_21_0;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_22_0;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_24_0;
    wire [63:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_address;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_read;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_write;
    wire [63:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_o_valid;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,38)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x(STALLENABLE,41)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_wireValid = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x(BLACKBOX,35)@0
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_lm7121_xmlCheckLanguageID_avm_address@20000000
    // out out_lm7121_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm7121_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm7121_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm7121_xmlCheckLanguageID_avm_read@20000000
    // out out_lm7121_xmlCheckLanguageID_avm_write@20000000
    // out out_lm7121_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@13
    // out out_c0_exit216_0_tpl@13
    xmlCheckLanguageID_i_sfc_s_c0_in_while_eA000000Z_xmlchecklanguageid0 thei_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_lm7121_xmlCheckLanguageID_avm_readdata(in_lm7121_xmlCheckLanguageID_avm_readdata),
        .in_lm7121_xmlCheckLanguageID_avm_readdatavalid(in_lm7121_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm7121_xmlCheckLanguageID_avm_waitrequest(in_lm7121_xmlCheckLanguageID_avm_waitrequest),
        .in_lm7121_xmlCheckLanguageID_avm_writeack(in_lm7121_xmlCheckLanguageID_avm_writeack),
        .in_unnamed_xmlCheckLanguageID19_0_tpl(GND_q),
        .out_intel_reserved_ffwd_13_0(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_24_0),
        .out_lm7121_xmlCheckLanguageID_avm_address(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_address),
        .out_lm7121_xmlCheckLanguageID_avm_burstcount(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_burstcount),
        .out_lm7121_xmlCheckLanguageID_avm_byteenable(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_byteenable),
        .out_lm7121_xmlCheckLanguageID_avm_enable(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_enable),
        .out_lm7121_xmlCheckLanguageID_avm_read(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_read),
        .out_lm7121_xmlCheckLanguageID_avm_write(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_write),
        .out_lm7121_xmlCheckLanguageID_avm_writedata(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_o_valid),
        .out_c0_exit216_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_lm7121_xmlCheckLanguageID_avm_address = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_address;
    assign out_lm7121_xmlCheckLanguageID_avm_enable = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_enable;
    assign out_lm7121_xmlCheckLanguageID_avm_read = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_read;
    assign out_lm7121_xmlCheckLanguageID_avm_write = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_write;
    assign out_lm7121_xmlCheckLanguageID_avm_writedata = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_writedata;
    assign out_lm7121_xmlCheckLanguageID_avm_byteenable = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_byteenable;
    assign out_lm7121_xmlCheckLanguageID_avm_burstcount = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_lm7121_xmlCheckLanguageID_avm_burstcount;

    // regfree_osync(GPOUT,17)
    assign out_intel_reserved_ffwd_13_0 = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_13_0;

    // sync_out(GPOUT,21)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_14_0 = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_14_0;

    // dupName_0_sync_out_x(GPOUT,24)@13
    assign out_valid_out = SE_out_i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_15_0 = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_15_0;

    // dupName_2_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_16_0;

    // dupName_3_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_17_0 = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_17_0;

    // dupName_4_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_18_0 = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_18_0;

    // dupName_5_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_19_0 = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_19_0;

    // dupName_6_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_20_0 = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_20_0;

    // dupName_7_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_21_0 = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_21_0;

    // dupName_8_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_22_0 = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_22_0;

    // dupName_9_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_23_0;

    // dupName_10_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_24_0 = i_sfc_s_c0_in_while_end67_loopexit_xmlchecklanguageids_c0_enter215_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_24_0;

endmodule
