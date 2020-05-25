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

// SystemVerilog created from xmlCheckLanguageID_bb_B9
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_bb_B9 (
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [7:0] in_intel_reserved_ffwd_20_0,
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [0:0] in_intel_reserved_ffwd_23_0,
    input wire [63:0] in_intel_reserved_ffwd_25_0,
    input wire [7:0] in_intel_reserved_ffwd_26_0,
    input wire [63:0] in_lm15523_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm15523_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_lm15523_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm15523_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_intel_reserved_ffwd_27_0,
    output wire [7:0] out_intel_reserved_ffwd_28_0,
    output wire [0:0] out_intel_reserved_ffwd_29_0,
    output wire [0:0] out_intel_reserved_ffwd_30_0,
    output wire [0:0] out_intel_reserved_ffwd_31_0,
    output wire [0:0] out_intel_reserved_ffwd_32_0,
    output wire [0:0] out_intel_reserved_ffwd_33_0,
    output wire [0:0] out_intel_reserved_ffwd_34_0,
    output wire [0:0] out_intel_reserved_ffwd_35_0,
    output wire [0:0] out_intel_reserved_ffwd_36_0,
    output wire [63:0] out_intel_reserved_ffwd_37_0,
    output wire [7:0] out_intel_reserved_ffwd_38_0,
    output wire [0:0] out_intel_reserved_ffwd_39_0,
    output wire [0:0] out_intel_reserved_ffwd_40_0,
    output wire [0:0] out_intel_reserved_ffwd_41_0,
    output wire [63:0] out_intel_reserved_ffwd_42_0,
    output wire [0:0] out_intel_reserved_ffwd_43_0,
    output wire [63:0] out_lm15523_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm15523_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_lm15523_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm15523_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm15523_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm15523_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm15523_xmlCheckLanguageID_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_27_0;
    wire [7:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_28_0;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_29_0;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_30_0;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_31_0;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_32_0;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_33_0;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_34_0;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_35_0;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_36_0;
    wire [63:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_37_0;
    wire [7:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_38_0;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_39_0;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_40_0;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_41_0;
    wire [63:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_42_0;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_43_0;
    wire [63:0] bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_address;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_enable;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_read;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_write;
    wire [63:0] bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_writedata;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_stall_out;
    wire [0:0] bb_xmlCheckLanguageID_B9_stall_region_out_valid_out;
    wire [0:0] xmlCheckLanguageID_B9_branch_out_stall_out;
    wire [0:0] xmlCheckLanguageID_B9_branch_out_valid_out_0;
    wire [0:0] xmlCheckLanguageID_B9_merge_out_stall_out_0;
    wire [0:0] xmlCheckLanguageID_B9_merge_out_valid_out;


    // xmlCheckLanguageID_B9_merge(BLACKBOX,44)
    xmlCheckLanguageID_B9_merge thexmlCheckLanguageID_B9_merge (
        .in_stall_in(bb_xmlCheckLanguageID_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(xmlCheckLanguageID_B9_merge_out_stall_out_0),
        .out_valid_out(xmlCheckLanguageID_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // xmlCheckLanguageID_B9_branch(BLACKBOX,43)
    xmlCheckLanguageID_B9_branch thexmlCheckLanguageID_B9_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_xmlCheckLanguageID_B9_stall_region_out_valid_out),
        .out_stall_out(xmlCheckLanguageID_B9_branch_out_stall_out),
        .out_valid_out_0(xmlCheckLanguageID_B9_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_xmlCheckLanguageID_B9_stall_region(BLACKBOX,2)
    xmlCheckLanguageID_bb_B9_stall_region thebb_xmlCheckLanguageID_B9_stall_region (
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_lm15523_xmlCheckLanguageID_avm_readdata(in_lm15523_xmlCheckLanguageID_avm_readdata),
        .in_lm15523_xmlCheckLanguageID_avm_readdatavalid(in_lm15523_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm15523_xmlCheckLanguageID_avm_waitrequest(in_lm15523_xmlCheckLanguageID_avm_waitrequest),
        .in_lm15523_xmlCheckLanguageID_avm_writeack(in_lm15523_xmlCheckLanguageID_avm_writeack),
        .in_stall_in(xmlCheckLanguageID_B9_branch_out_stall_out),
        .in_valid_in(xmlCheckLanguageID_B9_merge_out_valid_out),
        .out_intel_reserved_ffwd_27_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_43_0),
        .out_lm15523_xmlCheckLanguageID_avm_address(bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_address),
        .out_lm15523_xmlCheckLanguageID_avm_burstcount(bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_burstcount),
        .out_lm15523_xmlCheckLanguageID_avm_byteenable(bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_byteenable),
        .out_lm15523_xmlCheckLanguageID_avm_enable(bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_enable),
        .out_lm15523_xmlCheckLanguageID_avm_read(bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_read),
        .out_lm15523_xmlCheckLanguageID_avm_write(bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_write),
        .out_lm15523_xmlCheckLanguageID_avm_writedata(bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_writedata),
        .out_stall_out(bb_xmlCheckLanguageID_B9_stall_region_out_stall_out),
        .out_valid_out(bb_xmlCheckLanguageID_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_27_0(GPOUT,17)
    assign out_intel_reserved_ffwd_27_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_27_0;

    // out_intel_reserved_ffwd_28_0(GPOUT,18)
    assign out_intel_reserved_ffwd_28_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_28_0;

    // out_intel_reserved_ffwd_29_0(GPOUT,19)
    assign out_intel_reserved_ffwd_29_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_29_0;

    // out_intel_reserved_ffwd_30_0(GPOUT,20)
    assign out_intel_reserved_ffwd_30_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_30_0;

    // out_intel_reserved_ffwd_31_0(GPOUT,21)
    assign out_intel_reserved_ffwd_31_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_31_0;

    // out_intel_reserved_ffwd_32_0(GPOUT,22)
    assign out_intel_reserved_ffwd_32_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_32_0;

    // out_intel_reserved_ffwd_33_0(GPOUT,23)
    assign out_intel_reserved_ffwd_33_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_33_0;

    // out_intel_reserved_ffwd_34_0(GPOUT,24)
    assign out_intel_reserved_ffwd_34_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_34_0;

    // out_intel_reserved_ffwd_35_0(GPOUT,25)
    assign out_intel_reserved_ffwd_35_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_35_0;

    // out_intel_reserved_ffwd_36_0(GPOUT,26)
    assign out_intel_reserved_ffwd_36_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_36_0;

    // out_intel_reserved_ffwd_37_0(GPOUT,27)
    assign out_intel_reserved_ffwd_37_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_37_0;

    // out_intel_reserved_ffwd_38_0(GPOUT,28)
    assign out_intel_reserved_ffwd_38_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_38_0;

    // out_intel_reserved_ffwd_39_0(GPOUT,29)
    assign out_intel_reserved_ffwd_39_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_39_0;

    // out_intel_reserved_ffwd_40_0(GPOUT,30)
    assign out_intel_reserved_ffwd_40_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_40_0;

    // out_intel_reserved_ffwd_41_0(GPOUT,31)
    assign out_intel_reserved_ffwd_41_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_41_0;

    // out_intel_reserved_ffwd_42_0(GPOUT,32)
    assign out_intel_reserved_ffwd_42_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_42_0;

    // out_intel_reserved_ffwd_43_0(GPOUT,33)
    assign out_intel_reserved_ffwd_43_0 = bb_xmlCheckLanguageID_B9_stall_region_out_intel_reserved_ffwd_43_0;

    // out_lm15523_xmlCheckLanguageID_avm_address(GPOUT,34)
    assign out_lm15523_xmlCheckLanguageID_avm_address = bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_address;

    // out_lm15523_xmlCheckLanguageID_avm_burstcount(GPOUT,35)
    assign out_lm15523_xmlCheckLanguageID_avm_burstcount = bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_burstcount;

    // out_lm15523_xmlCheckLanguageID_avm_byteenable(GPOUT,36)
    assign out_lm15523_xmlCheckLanguageID_avm_byteenable = bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_byteenable;

    // out_lm15523_xmlCheckLanguageID_avm_enable(GPOUT,37)
    assign out_lm15523_xmlCheckLanguageID_avm_enable = bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_enable;

    // out_lm15523_xmlCheckLanguageID_avm_read(GPOUT,38)
    assign out_lm15523_xmlCheckLanguageID_avm_read = bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_read;

    // out_lm15523_xmlCheckLanguageID_avm_write(GPOUT,39)
    assign out_lm15523_xmlCheckLanguageID_avm_write = bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_write;

    // out_lm15523_xmlCheckLanguageID_avm_writedata(GPOUT,40)
    assign out_lm15523_xmlCheckLanguageID_avm_writedata = bb_xmlCheckLanguageID_B9_stall_region_out_lm15523_xmlCheckLanguageID_avm_writedata;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = xmlCheckLanguageID_B9_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,42)
    assign out_valid_out_0 = xmlCheckLanguageID_B9_branch_out_valid_out_0;

endmodule
