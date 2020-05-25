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

// SystemVerilog created from xmlCheckLanguageID_bb_B13
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_bb_B13 (
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [63:0] in_intel_reserved_ffwd_27_0,
    input wire [7:0] in_intel_reserved_ffwd_28_0,
    input wire [0:0] in_intel_reserved_ffwd_31_0,
    input wire [63:0] in_intel_reserved_ffwd_46_0,
    input wire [7:0] in_intel_reserved_ffwd_47_0,
    input wire [0:0] in_intel_reserved_ffwd_48_0,
    input wire [0:0] in_intel_reserved_ffwd_49_0,
    input wire [63:0] in_intel_reserved_ffwd_53_0,
    input wire [7:0] in_intel_reserved_ffwd_54_0,
    input wire [0:0] in_intel_reserved_ffwd_55_0,
    input wire [0:0] in_intel_reserved_ffwd_56_0,
    input wire [0:0] in_intel_reserved_ffwd_57_0,
    input wire [63:0] in_intel_reserved_ffwd_60_0,
    input wire [0:0] in_intel_reserved_ffwd_61_0,
    input wire [0:0] in_intel_reserved_ffwd_62_0,
    input wire [0:0] in_intel_reserved_ffwd_63_0,
    input wire [0:0] in_intel_reserved_ffwd_64_0,
    input wire [63:0] in_intel_reserved_ffwd_66_0,
    input wire [7:0] in_intel_reserved_ffwd_67_0,
    input wire [63:0] in_pre157_lm28_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_pre157_lm28_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_pre157_lm28_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_pre157_lm28_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [7:0] out_intel_reserved_ffwd_68_0,
    output wire [0:0] out_intel_reserved_ffwd_69_0,
    output wire [0:0] out_intel_reserved_ffwd_70_0,
    output wire [0:0] out_intel_reserved_ffwd_71_0,
    output wire [0:0] out_intel_reserved_ffwd_72_0,
    output wire [0:0] out_intel_reserved_ffwd_73_0,
    output wire [0:0] out_intel_reserved_ffwd_74_0,
    output wire [63:0] out_intel_reserved_ffwd_75_0,
    output wire [0:0] out_intel_reserved_ffwd_76_0,
    output wire [63:0] out_pre157_lm28_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_pre157_lm28_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_pre157_lm28_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_pre157_lm28_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_pre157_lm28_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_pre157_lm28_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_pre157_lm28_xmlCheckLanguageID_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [7:0] bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_68_0;
    wire [0:0] bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_69_0;
    wire [0:0] bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_70_0;
    wire [0:0] bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_71_0;
    wire [0:0] bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_72_0;
    wire [0:0] bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_73_0;
    wire [0:0] bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_74_0;
    wire [63:0] bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_75_0;
    wire [0:0] bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_76_0;
    wire [63:0] bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_address;
    wire [0:0] bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_enable;
    wire [0:0] bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_read;
    wire [0:0] bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_write;
    wire [63:0] bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_writedata;
    wire [0:0] bb_xmlCheckLanguageID_B13_stall_region_out_stall_out;
    wire [0:0] bb_xmlCheckLanguageID_B13_stall_region_out_valid_out;
    wire [0:0] xmlCheckLanguageID_B13_branch_out_stall_out;
    wire [0:0] xmlCheckLanguageID_B13_branch_out_valid_out_0;
    wire [0:0] xmlCheckLanguageID_B13_merge_out_stall_out_0;
    wire [0:0] xmlCheckLanguageID_B13_merge_out_valid_out;


    // xmlCheckLanguageID_B13_merge(BLACKBOX,49)
    xmlCheckLanguageID_B13_merge thexmlCheckLanguageID_B13_merge (
        .in_stall_in(bb_xmlCheckLanguageID_B13_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(xmlCheckLanguageID_B13_merge_out_stall_out_0),
        .out_valid_out(xmlCheckLanguageID_B13_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // xmlCheckLanguageID_B13_branch(BLACKBOX,48)
    xmlCheckLanguageID_B13_branch thexmlCheckLanguageID_B13_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_xmlCheckLanguageID_B13_stall_region_out_valid_out),
        .out_stall_out(xmlCheckLanguageID_B13_branch_out_stall_out),
        .out_valid_out_0(xmlCheckLanguageID_B13_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_xmlCheckLanguageID_B13_stall_region(BLACKBOX,2)
    xmlCheckLanguageID_bb_B13_stall_region thebb_xmlCheckLanguageID_B13_stall_region (
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_intel_reserved_ffwd_48_0(in_intel_reserved_ffwd_48_0),
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_intel_reserved_ffwd_54_0(in_intel_reserved_ffwd_54_0),
        .in_intel_reserved_ffwd_55_0(in_intel_reserved_ffwd_55_0),
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_intel_reserved_ffwd_57_0(in_intel_reserved_ffwd_57_0),
        .in_intel_reserved_ffwd_60_0(in_intel_reserved_ffwd_60_0),
        .in_intel_reserved_ffwd_61_0(in_intel_reserved_ffwd_61_0),
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_intel_reserved_ffwd_63_0(in_intel_reserved_ffwd_63_0),
        .in_intel_reserved_ffwd_64_0(in_intel_reserved_ffwd_64_0),
        .in_intel_reserved_ffwd_66_0(in_intel_reserved_ffwd_66_0),
        .in_intel_reserved_ffwd_67_0(in_intel_reserved_ffwd_67_0),
        .in_pre157_lm28_xmlCheckLanguageID_avm_readdata(in_pre157_lm28_xmlCheckLanguageID_avm_readdata),
        .in_pre157_lm28_xmlCheckLanguageID_avm_readdatavalid(in_pre157_lm28_xmlCheckLanguageID_avm_readdatavalid),
        .in_pre157_lm28_xmlCheckLanguageID_avm_waitrequest(in_pre157_lm28_xmlCheckLanguageID_avm_waitrequest),
        .in_pre157_lm28_xmlCheckLanguageID_avm_writeack(in_pre157_lm28_xmlCheckLanguageID_avm_writeack),
        .in_stall_in(xmlCheckLanguageID_B13_branch_out_stall_out),
        .in_valid_in(xmlCheckLanguageID_B13_merge_out_valid_out),
        .out_intel_reserved_ffwd_68_0(bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_68_0),
        .out_intel_reserved_ffwd_69_0(bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_69_0),
        .out_intel_reserved_ffwd_70_0(bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_70_0),
        .out_intel_reserved_ffwd_71_0(bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_71_0),
        .out_intel_reserved_ffwd_72_0(bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_72_0),
        .out_intel_reserved_ffwd_73_0(bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_73_0),
        .out_intel_reserved_ffwd_74_0(bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_74_0),
        .out_intel_reserved_ffwd_75_0(bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_75_0),
        .out_intel_reserved_ffwd_76_0(bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_76_0),
        .out_pre157_lm28_xmlCheckLanguageID_avm_address(bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_address),
        .out_pre157_lm28_xmlCheckLanguageID_avm_burstcount(bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_burstcount),
        .out_pre157_lm28_xmlCheckLanguageID_avm_byteenable(bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_byteenable),
        .out_pre157_lm28_xmlCheckLanguageID_avm_enable(bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_enable),
        .out_pre157_lm28_xmlCheckLanguageID_avm_read(bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_read),
        .out_pre157_lm28_xmlCheckLanguageID_avm_write(bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_write),
        .out_pre157_lm28_xmlCheckLanguageID_avm_writedata(bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_writedata),
        .out_stall_out(bb_xmlCheckLanguageID_B13_stall_region_out_stall_out),
        .out_valid_out(bb_xmlCheckLanguageID_B13_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_68_0(GPOUT,30)
    assign out_intel_reserved_ffwd_68_0 = bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_68_0;

    // out_intel_reserved_ffwd_69_0(GPOUT,31)
    assign out_intel_reserved_ffwd_69_0 = bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_69_0;

    // out_intel_reserved_ffwd_70_0(GPOUT,32)
    assign out_intel_reserved_ffwd_70_0 = bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_70_0;

    // out_intel_reserved_ffwd_71_0(GPOUT,33)
    assign out_intel_reserved_ffwd_71_0 = bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_71_0;

    // out_intel_reserved_ffwd_72_0(GPOUT,34)
    assign out_intel_reserved_ffwd_72_0 = bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_72_0;

    // out_intel_reserved_ffwd_73_0(GPOUT,35)
    assign out_intel_reserved_ffwd_73_0 = bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_73_0;

    // out_intel_reserved_ffwd_74_0(GPOUT,36)
    assign out_intel_reserved_ffwd_74_0 = bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_74_0;

    // out_intel_reserved_ffwd_75_0(GPOUT,37)
    assign out_intel_reserved_ffwd_75_0 = bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_75_0;

    // out_intel_reserved_ffwd_76_0(GPOUT,38)
    assign out_intel_reserved_ffwd_76_0 = bb_xmlCheckLanguageID_B13_stall_region_out_intel_reserved_ffwd_76_0;

    // out_pre157_lm28_xmlCheckLanguageID_avm_address(GPOUT,39)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_address = bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_address;

    // out_pre157_lm28_xmlCheckLanguageID_avm_burstcount(GPOUT,40)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_burstcount = bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_burstcount;

    // out_pre157_lm28_xmlCheckLanguageID_avm_byteenable(GPOUT,41)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_byteenable = bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_byteenable;

    // out_pre157_lm28_xmlCheckLanguageID_avm_enable(GPOUT,42)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_enable = bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_enable;

    // out_pre157_lm28_xmlCheckLanguageID_avm_read(GPOUT,43)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_read = bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_read;

    // out_pre157_lm28_xmlCheckLanguageID_avm_write(GPOUT,44)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_write = bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_write;

    // out_pre157_lm28_xmlCheckLanguageID_avm_writedata(GPOUT,45)
    assign out_pre157_lm28_xmlCheckLanguageID_avm_writedata = bb_xmlCheckLanguageID_B13_stall_region_out_pre157_lm28_xmlCheckLanguageID_avm_writedata;

    // out_stall_out_0(GPOUT,46)
    assign out_stall_out_0 = xmlCheckLanguageID_B13_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,47)
    assign out_valid_out_0 = xmlCheckLanguageID_B13_branch_out_valid_out_0;

endmodule
