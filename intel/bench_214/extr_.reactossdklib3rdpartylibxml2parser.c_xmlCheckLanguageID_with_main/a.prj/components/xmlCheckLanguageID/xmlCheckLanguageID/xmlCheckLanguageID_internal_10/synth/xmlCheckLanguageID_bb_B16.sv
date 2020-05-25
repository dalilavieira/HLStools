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

// SystemVerilog created from xmlCheckLanguageID_bb_B16
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_bb_B16 (
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [0:0] in_cmp68_phi_decision1526_replace_phi_dir_0,
    input wire [0:0] in_cmp68_phi_decision1526_replace_phi_dir_1,
    input wire [0:0] in_cmp84_phi_decision63_replace_phi_dir_0,
    input wire [0:0] in_cmp84_phi_decision63_replace_phi_dir_1,
    input wire [0:0] in_cmp_phi_decision11_replace_phi_dir_0,
    input wire [0:0] in_cmp_phi_decision11_replace_phi_dir_1,
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
    input wire [0:0] in_iowr_bl_return_xmlCheckLanguageID_i_fifoready,
    input wire [0:0] in_phi_decision1025_replace_phi_dir_0,
    input wire [0:0] in_phi_decision1025_replace_phi_dir_1,
    input wire [0:0] in_phi_decision1226_replace_phi_dir_0,
    input wire [0:0] in_phi_decision1226_replace_phi_dir_1,
    input wire [0:0] in_phi_decision66_replace_phi_dir_0,
    input wire [0:0] in_phi_decision66_replace_phi_dir_1,
    input wire [0:0] in_retval_0_shrunk_replace_phi_dir_0,
    input wire [0:0] in_retval_0_shrunk_replace_phi_dir_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_iowr_bl_return_xmlCheckLanguageID_o_fifodata,
    output wire [0:0] out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_xmlCheckLanguageID_B16_stall_region_out_feedback_out_1;
    wire [0:0] bb_xmlCheckLanguageID_B16_stall_region_out_feedback_valid_out_1;
    wire [31:0] bb_xmlCheckLanguageID_B16_stall_region_out_iowr_bl_return_xmlCheckLanguageID_o_fifodata;
    wire [0:0] bb_xmlCheckLanguageID_B16_stall_region_out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid;
    wire [0:0] bb_xmlCheckLanguageID_B16_stall_region_out_stall_out;
    wire [0:0] bb_xmlCheckLanguageID_B16_stall_region_out_valid_out;
    wire [0:0] xmlCheckLanguageID_B16_branch_out_stall_out;
    wire [0:0] xmlCheckLanguageID_B16_branch_out_valid_out_0;
    wire [0:0] xmlCheckLanguageID_B16_merge_out_cmp68_phi_decision1526_replace_phi_dir;
    wire [0:0] xmlCheckLanguageID_B16_merge_out_cmp84_phi_decision63_replace_phi_dir;
    wire [0:0] xmlCheckLanguageID_B16_merge_out_cmp_phi_decision11_replace_phi_dir;
    wire [0:0] xmlCheckLanguageID_B16_merge_out_phi_decision1025_replace_phi_dir;
    wire [0:0] xmlCheckLanguageID_B16_merge_out_phi_decision1226_replace_phi_dir;
    wire [0:0] xmlCheckLanguageID_B16_merge_out_phi_decision66_replace_phi_dir;
    wire [0:0] xmlCheckLanguageID_B16_merge_out_retval_0_shrunk_replace_phi_dir;
    wire [0:0] xmlCheckLanguageID_B16_merge_out_stall_out_0;
    wire [0:0] xmlCheckLanguageID_B16_merge_out_stall_out_1;
    wire [0:0] xmlCheckLanguageID_B16_merge_out_valid_out;


    // xmlCheckLanguageID_B16_branch(BLACKBOX,49)
    xmlCheckLanguageID_B16_branch thexmlCheckLanguageID_B16_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_xmlCheckLanguageID_B16_stall_region_out_valid_out),
        .out_stall_out(xmlCheckLanguageID_B16_branch_out_stall_out),
        .out_valid_out_0(xmlCheckLanguageID_B16_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // xmlCheckLanguageID_B16_merge(BLACKBOX,50)
    xmlCheckLanguageID_B16_merge thexmlCheckLanguageID_B16_merge (
        .in_cmp68_phi_decision1526_replace_phi_dir_0(in_cmp68_phi_decision1526_replace_phi_dir_0),
        .in_cmp68_phi_decision1526_replace_phi_dir_1(in_cmp68_phi_decision1526_replace_phi_dir_1),
        .in_cmp84_phi_decision63_replace_phi_dir_0(in_cmp84_phi_decision63_replace_phi_dir_0),
        .in_cmp84_phi_decision63_replace_phi_dir_1(in_cmp84_phi_decision63_replace_phi_dir_1),
        .in_cmp_phi_decision11_replace_phi_dir_0(in_cmp_phi_decision11_replace_phi_dir_0),
        .in_cmp_phi_decision11_replace_phi_dir_1(in_cmp_phi_decision11_replace_phi_dir_1),
        .in_phi_decision1025_replace_phi_dir_0(in_phi_decision1025_replace_phi_dir_0),
        .in_phi_decision1025_replace_phi_dir_1(in_phi_decision1025_replace_phi_dir_1),
        .in_phi_decision1226_replace_phi_dir_0(in_phi_decision1226_replace_phi_dir_0),
        .in_phi_decision1226_replace_phi_dir_1(in_phi_decision1226_replace_phi_dir_1),
        .in_phi_decision66_replace_phi_dir_0(in_phi_decision66_replace_phi_dir_0),
        .in_phi_decision66_replace_phi_dir_1(in_phi_decision66_replace_phi_dir_1),
        .in_retval_0_shrunk_replace_phi_dir_0(in_retval_0_shrunk_replace_phi_dir_0),
        .in_retval_0_shrunk_replace_phi_dir_1(in_retval_0_shrunk_replace_phi_dir_1),
        .in_stall_in(bb_xmlCheckLanguageID_B16_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_cmp68_phi_decision1526_replace_phi_dir(xmlCheckLanguageID_B16_merge_out_cmp68_phi_decision1526_replace_phi_dir),
        .out_cmp84_phi_decision63_replace_phi_dir(xmlCheckLanguageID_B16_merge_out_cmp84_phi_decision63_replace_phi_dir),
        .out_cmp_phi_decision11_replace_phi_dir(xmlCheckLanguageID_B16_merge_out_cmp_phi_decision11_replace_phi_dir),
        .out_phi_decision1025_replace_phi_dir(xmlCheckLanguageID_B16_merge_out_phi_decision1025_replace_phi_dir),
        .out_phi_decision1226_replace_phi_dir(xmlCheckLanguageID_B16_merge_out_phi_decision1226_replace_phi_dir),
        .out_phi_decision66_replace_phi_dir(xmlCheckLanguageID_B16_merge_out_phi_decision66_replace_phi_dir),
        .out_retval_0_shrunk_replace_phi_dir(xmlCheckLanguageID_B16_merge_out_retval_0_shrunk_replace_phi_dir),
        .out_stall_out_0(xmlCheckLanguageID_B16_merge_out_stall_out_0),
        .out_stall_out_1(xmlCheckLanguageID_B16_merge_out_stall_out_1),
        .out_valid_out(xmlCheckLanguageID_B16_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_xmlCheckLanguageID_B16_stall_region(BLACKBOX,2)
    xmlCheckLanguageID_bb_B16_stall_region thebb_xmlCheckLanguageID_B16_stall_region (
        .in_cmp68_phi_decision1526_replace_phi_dir(xmlCheckLanguageID_B16_merge_out_cmp68_phi_decision1526_replace_phi_dir),
        .in_cmp84_phi_decision63_replace_phi_dir(xmlCheckLanguageID_B16_merge_out_cmp84_phi_decision63_replace_phi_dir),
        .in_cmp_phi_decision11_replace_phi_dir(xmlCheckLanguageID_B16_merge_out_cmp_phi_decision11_replace_phi_dir),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
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
        .in_iowr_bl_return_xmlCheckLanguageID_i_fifoready(in_iowr_bl_return_xmlCheckLanguageID_i_fifoready),
        .in_phi_decision1025_replace_phi_dir(xmlCheckLanguageID_B16_merge_out_phi_decision1025_replace_phi_dir),
        .in_phi_decision1226_replace_phi_dir(xmlCheckLanguageID_B16_merge_out_phi_decision1226_replace_phi_dir),
        .in_phi_decision66_replace_phi_dir(xmlCheckLanguageID_B16_merge_out_phi_decision66_replace_phi_dir),
        .in_retval_0_shrunk_replace_phi_dir(xmlCheckLanguageID_B16_merge_out_retval_0_shrunk_replace_phi_dir),
        .in_stall_in(xmlCheckLanguageID_B16_branch_out_stall_out),
        .in_valid_in(xmlCheckLanguageID_B16_merge_out_valid_out),
        .out_feedback_out_1(bb_xmlCheckLanguageID_B16_stall_region_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_xmlCheckLanguageID_B16_stall_region_out_feedback_valid_out_1),
        .out_iowr_bl_return_xmlCheckLanguageID_o_fifodata(bb_xmlCheckLanguageID_B16_stall_region_out_iowr_bl_return_xmlCheckLanguageID_o_fifodata),
        .out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid(bb_xmlCheckLanguageID_B16_stall_region_out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid),
        .out_stall_out(bb_xmlCheckLanguageID_B16_stall_region_out_stall_out),
        .out_valid_out(bb_xmlCheckLanguageID_B16_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_1_sync(GPOUT,3)
    assign out_feedback_out_1 = bb_xmlCheckLanguageID_B16_stall_region_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,5)
    assign out_feedback_valid_out_1 = bb_xmlCheckLanguageID_B16_stall_region_out_feedback_valid_out_1;

    // out_iowr_bl_return_xmlCheckLanguageID_o_fifodata(GPOUT,44)
    assign out_iowr_bl_return_xmlCheckLanguageID_o_fifodata = bb_xmlCheckLanguageID_B16_stall_region_out_iowr_bl_return_xmlCheckLanguageID_o_fifodata;

    // out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid(GPOUT,45)
    assign out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid = bb_xmlCheckLanguageID_B16_stall_region_out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid;

    // out_stall_out_0(GPOUT,46)
    assign out_stall_out_0 = xmlCheckLanguageID_B16_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,47)
    assign out_stall_out_1 = xmlCheckLanguageID_B16_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,48)
    assign out_valid_out_0 = xmlCheckLanguageID_B16_branch_out_valid_out_0;

endmodule
