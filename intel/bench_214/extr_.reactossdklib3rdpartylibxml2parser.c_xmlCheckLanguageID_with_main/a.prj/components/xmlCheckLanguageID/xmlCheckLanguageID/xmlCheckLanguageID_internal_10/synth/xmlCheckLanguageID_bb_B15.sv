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

// SystemVerilog created from xmlCheckLanguageID_bb_B15
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_bb_B15 (
    input wire [7:0] in_intel_reserved_ffwd_28_0,
    input wire [0:0] in_intel_reserved_ffwd_32_0,
    input wire [7:0] in_intel_reserved_ffwd_47_0,
    input wire [0:0] in_intel_reserved_ffwd_49_0,
    input wire [0:0] in_intel_reserved_ffwd_64_0,
    input wire [7:0] in_intel_reserved_ffwd_68_0,
    input wire [0:0] in_intel_reserved_ffwd_71_0,
    input wire [0:0] in_intel_reserved_ffwd_72_0,
    input wire [0:0] in_intel_reserved_ffwd_74_0,
    input wire [63:0] in_intel_reserved_ffwd_75_0,
    input wire [63:0] in_intel_reserved_ffwd_77_0,
    input wire [7:0] in_intel_reserved_ffwd_78_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_intel_reserved_ffwd_79_0,
    output wire [0:0] out_intel_reserved_ffwd_80_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_xmlCheckLanguageID_B15_stall_region_out_intel_reserved_ffwd_79_0;
    wire [0:0] bb_xmlCheckLanguageID_B15_stall_region_out_intel_reserved_ffwd_80_0;
    wire [0:0] bb_xmlCheckLanguageID_B15_stall_region_out_stall_out;
    wire [0:0] bb_xmlCheckLanguageID_B15_stall_region_out_valid_out;
    wire [0:0] xmlCheckLanguageID_B15_branch_out_stall_out;
    wire [0:0] xmlCheckLanguageID_B15_branch_out_valid_out_0;
    wire [0:0] xmlCheckLanguageID_B15_merge_out_stall_out_0;
    wire [0:0] xmlCheckLanguageID_B15_merge_out_valid_out;


    // xmlCheckLanguageID_B15_merge(BLACKBOX,22)
    xmlCheckLanguageID_B15_merge thexmlCheckLanguageID_B15_merge (
        .in_stall_in(bb_xmlCheckLanguageID_B15_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(xmlCheckLanguageID_B15_merge_out_stall_out_0),
        .out_valid_out(xmlCheckLanguageID_B15_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // xmlCheckLanguageID_B15_branch(BLACKBOX,21)
    xmlCheckLanguageID_B15_branch thexmlCheckLanguageID_B15_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_xmlCheckLanguageID_B15_stall_region_out_valid_out),
        .out_stall_out(xmlCheckLanguageID_B15_branch_out_stall_out),
        .out_valid_out_0(xmlCheckLanguageID_B15_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_xmlCheckLanguageID_B15_stall_region(BLACKBOX,2)
    xmlCheckLanguageID_bb_B15_stall_region thebb_xmlCheckLanguageID_B15_stall_region (
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_intel_reserved_ffwd_64_0(in_intel_reserved_ffwd_64_0),
        .in_intel_reserved_ffwd_68_0(in_intel_reserved_ffwd_68_0),
        .in_intel_reserved_ffwd_71_0(in_intel_reserved_ffwd_71_0),
        .in_intel_reserved_ffwd_72_0(in_intel_reserved_ffwd_72_0),
        .in_intel_reserved_ffwd_74_0(in_intel_reserved_ffwd_74_0),
        .in_intel_reserved_ffwd_75_0(in_intel_reserved_ffwd_75_0),
        .in_intel_reserved_ffwd_77_0(in_intel_reserved_ffwd_77_0),
        .in_intel_reserved_ffwd_78_0(in_intel_reserved_ffwd_78_0),
        .in_stall_in(xmlCheckLanguageID_B15_branch_out_stall_out),
        .in_valid_in(xmlCheckLanguageID_B15_merge_out_valid_out),
        .out_intel_reserved_ffwd_79_0(bb_xmlCheckLanguageID_B15_stall_region_out_intel_reserved_ffwd_79_0),
        .out_intel_reserved_ffwd_80_0(bb_xmlCheckLanguageID_B15_stall_region_out_intel_reserved_ffwd_80_0),
        .out_stall_out(bb_xmlCheckLanguageID_B15_stall_region_out_stall_out),
        .out_valid_out(bb_xmlCheckLanguageID_B15_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_79_0(GPOUT,17)
    assign out_intel_reserved_ffwd_79_0 = bb_xmlCheckLanguageID_B15_stall_region_out_intel_reserved_ffwd_79_0;

    // out_intel_reserved_ffwd_80_0(GPOUT,18)
    assign out_intel_reserved_ffwd_80_0 = bb_xmlCheckLanguageID_B15_stall_region_out_intel_reserved_ffwd_80_0;

    // out_stall_out_0(GPOUT,19)
    assign out_stall_out_0 = xmlCheckLanguageID_B15_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,20)
    assign out_valid_out_0 = xmlCheckLanguageID_B15_branch_out_valid_out_0;

endmodule
