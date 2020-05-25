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

// SystemVerilog created from xmlCheckLanguageID_bb_B11
// SystemVerilog created on Sun May 24 22:40:22 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_bb_B11 (
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [0:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [0:0] in_intel_reserved_ffwd_22_0,
    input wire [63:0] in_intel_reserved_ffwd_27_0,
    input wire [7:0] in_intel_reserved_ffwd_28_0,
    input wire [0:0] in_intel_reserved_ffwd_29_0,
    input wire [0:0] in_intel_reserved_ffwd_30_0,
    input wire [0:0] in_intel_reserved_ffwd_31_0,
    input wire [0:0] in_intel_reserved_ffwd_32_0,
    input wire [0:0] in_intel_reserved_ffwd_34_0,
    input wire [0:0] in_intel_reserved_ffwd_36_0,
    input wire [63:0] in_intel_reserved_ffwd_37_0,
    input wire [7:0] in_intel_reserved_ffwd_38_0,
    input wire [0:0] in_intel_reserved_ffwd_39_0,
    input wire [0:0] in_intel_reserved_ffwd_40_0,
    input wire [0:0] in_intel_reserved_ffwd_41_0,
    input wire [63:0] in_intel_reserved_ffwd_44_0,
    input wire [7:0] in_intel_reserved_ffwd_45_0,
    input wire [63:0] in_lm54627_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm54627_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_lm54627_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm54627_xmlCheckLanguageID_avm_writeack,
    input wire [63:0] in_lm7426_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm7426_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_lm7426_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm7426_xmlCheckLanguageID_avm_writeack,
    input wire [63:0] in_lm9225_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm9225_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_lm9225_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm9225_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_intel_reserved_ffwd_46_0,
    output wire [7:0] out_intel_reserved_ffwd_47_0,
    output wire [0:0] out_intel_reserved_ffwd_48_0,
    output wire [0:0] out_intel_reserved_ffwd_49_0,
    output wire [0:0] out_intel_reserved_ffwd_50_0,
    output wire [0:0] out_intel_reserved_ffwd_51_0,
    output wire [0:0] out_intel_reserved_ffwd_52_0,
    output wire [63:0] out_intel_reserved_ffwd_53_0,
    output wire [7:0] out_intel_reserved_ffwd_54_0,
    output wire [0:0] out_intel_reserved_ffwd_55_0,
    output wire [0:0] out_intel_reserved_ffwd_56_0,
    output wire [0:0] out_intel_reserved_ffwd_57_0,
    output wire [63:0] out_intel_reserved_ffwd_58_0,
    output wire [0:0] out_intel_reserved_ffwd_59_0,
    output wire [63:0] out_intel_reserved_ffwd_60_0,
    output wire [0:0] out_intel_reserved_ffwd_61_0,
    output wire [0:0] out_intel_reserved_ffwd_62_0,
    output wire [0:0] out_intel_reserved_ffwd_63_0,
    output wire [0:0] out_intel_reserved_ffwd_64_0,
    output wire [0:0] out_intel_reserved_ffwd_65_0,
    output wire [63:0] out_lm54627_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm54627_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_lm54627_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm54627_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm54627_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm54627_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm54627_xmlCheckLanguageID_avm_writedata,
    output wire [63:0] out_lm7426_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm7426_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_lm7426_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm7426_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm7426_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm7426_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm7426_xmlCheckLanguageID_avm_writedata,
    output wire [63:0] out_lm9225_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm9225_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_lm9225_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm9225_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm9225_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm9225_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm9225_xmlCheckLanguageID_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_46_0;
    wire [7:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_47_0;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_48_0;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_49_0;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_50_0;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_51_0;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_52_0;
    wire [63:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_53_0;
    wire [7:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_54_0;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_55_0;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_56_0;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_57_0;
    wire [63:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_58_0;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_59_0;
    wire [63:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_60_0;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_61_0;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_62_0;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_63_0;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_64_0;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_65_0;
    wire [63:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_address;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_enable;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_read;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_write;
    wire [63:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_writedata;
    wire [63:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_address;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_enable;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_read;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_write;
    wire [63:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_writedata;
    wire [63:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_address;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_enable;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_read;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_write;
    wire [63:0] bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_writedata;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_stall_out;
    wire [0:0] bb_xmlCheckLanguageID_B11_stall_region_out_valid_out;
    wire [0:0] xmlCheckLanguageID_B11_branch_out_stall_out;
    wire [0:0] xmlCheckLanguageID_B11_branch_out_valid_out_0;
    wire [0:0] xmlCheckLanguageID_B11_merge_out_stall_out_0;
    wire [0:0] xmlCheckLanguageID_B11_merge_out_valid_out;


    // xmlCheckLanguageID_B11_merge(BLACKBOX,83)
    xmlCheckLanguageID_B11_merge thexmlCheckLanguageID_B11_merge (
        .in_stall_in(bb_xmlCheckLanguageID_B11_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(xmlCheckLanguageID_B11_merge_out_stall_out_0),
        .out_valid_out(xmlCheckLanguageID_B11_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // xmlCheckLanguageID_B11_branch(BLACKBOX,82)
    xmlCheckLanguageID_B11_branch thexmlCheckLanguageID_B11_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_xmlCheckLanguageID_B11_stall_region_out_valid_out),
        .out_stall_out(xmlCheckLanguageID_B11_branch_out_stall_out),
        .out_valid_out_0(xmlCheckLanguageID_B11_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_xmlCheckLanguageID_B11_stall_region(BLACKBOX,2)
    xmlCheckLanguageID_bb_B11_stall_region thebb_xmlCheckLanguageID_B11_stall_region (
        .in_flush(in_flush),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_38_0(in_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_lm54627_xmlCheckLanguageID_avm_readdata(in_lm54627_xmlCheckLanguageID_avm_readdata),
        .in_lm54627_xmlCheckLanguageID_avm_readdatavalid(in_lm54627_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm54627_xmlCheckLanguageID_avm_waitrequest(in_lm54627_xmlCheckLanguageID_avm_waitrequest),
        .in_lm54627_xmlCheckLanguageID_avm_writeack(in_lm54627_xmlCheckLanguageID_avm_writeack),
        .in_lm7426_xmlCheckLanguageID_avm_readdata(in_lm7426_xmlCheckLanguageID_avm_readdata),
        .in_lm7426_xmlCheckLanguageID_avm_readdatavalid(in_lm7426_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm7426_xmlCheckLanguageID_avm_waitrequest(in_lm7426_xmlCheckLanguageID_avm_waitrequest),
        .in_lm7426_xmlCheckLanguageID_avm_writeack(in_lm7426_xmlCheckLanguageID_avm_writeack),
        .in_lm9225_xmlCheckLanguageID_avm_readdata(in_lm9225_xmlCheckLanguageID_avm_readdata),
        .in_lm9225_xmlCheckLanguageID_avm_readdatavalid(in_lm9225_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm9225_xmlCheckLanguageID_avm_waitrequest(in_lm9225_xmlCheckLanguageID_avm_waitrequest),
        .in_lm9225_xmlCheckLanguageID_avm_writeack(in_lm9225_xmlCheckLanguageID_avm_writeack),
        .in_stall_in(xmlCheckLanguageID_B11_branch_out_stall_out),
        .in_valid_in(xmlCheckLanguageID_B11_merge_out_valid_out),
        .out_intel_reserved_ffwd_46_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_50_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_50_0),
        .out_intel_reserved_ffwd_51_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_51_0),
        .out_intel_reserved_ffwd_52_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_52_0),
        .out_intel_reserved_ffwd_53_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_53_0),
        .out_intel_reserved_ffwd_54_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_54_0),
        .out_intel_reserved_ffwd_55_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_55_0),
        .out_intel_reserved_ffwd_56_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_56_0),
        .out_intel_reserved_ffwd_57_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_57_0),
        .out_intel_reserved_ffwd_58_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_58_0),
        .out_intel_reserved_ffwd_59_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_59_0),
        .out_intel_reserved_ffwd_60_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_65_0(bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_65_0),
        .out_lm54627_xmlCheckLanguageID_avm_address(bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_address),
        .out_lm54627_xmlCheckLanguageID_avm_burstcount(bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_burstcount),
        .out_lm54627_xmlCheckLanguageID_avm_byteenable(bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_byteenable),
        .out_lm54627_xmlCheckLanguageID_avm_enable(bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_enable),
        .out_lm54627_xmlCheckLanguageID_avm_read(bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_read),
        .out_lm54627_xmlCheckLanguageID_avm_write(bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_write),
        .out_lm54627_xmlCheckLanguageID_avm_writedata(bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_writedata),
        .out_lm7426_xmlCheckLanguageID_avm_address(bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_address),
        .out_lm7426_xmlCheckLanguageID_avm_burstcount(bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_burstcount),
        .out_lm7426_xmlCheckLanguageID_avm_byteenable(bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_byteenable),
        .out_lm7426_xmlCheckLanguageID_avm_enable(bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_enable),
        .out_lm7426_xmlCheckLanguageID_avm_read(bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_read),
        .out_lm7426_xmlCheckLanguageID_avm_write(bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_write),
        .out_lm7426_xmlCheckLanguageID_avm_writedata(bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_writedata),
        .out_lm9225_xmlCheckLanguageID_avm_address(bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_address),
        .out_lm9225_xmlCheckLanguageID_avm_burstcount(bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_burstcount),
        .out_lm9225_xmlCheckLanguageID_avm_byteenable(bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_byteenable),
        .out_lm9225_xmlCheckLanguageID_avm_enable(bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_enable),
        .out_lm9225_xmlCheckLanguageID_avm_read(bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_read),
        .out_lm9225_xmlCheckLanguageID_avm_write(bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_write),
        .out_lm9225_xmlCheckLanguageID_avm_writedata(bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_writedata),
        .out_stall_out(bb_xmlCheckLanguageID_B11_stall_region_out_stall_out),
        .out_valid_out(bb_xmlCheckLanguageID_B11_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_46_0(GPOUT,39)
    assign out_intel_reserved_ffwd_46_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_46_0;

    // out_intel_reserved_ffwd_47_0(GPOUT,40)
    assign out_intel_reserved_ffwd_47_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_47_0;

    // out_intel_reserved_ffwd_48_0(GPOUT,41)
    assign out_intel_reserved_ffwd_48_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_48_0;

    // out_intel_reserved_ffwd_49_0(GPOUT,42)
    assign out_intel_reserved_ffwd_49_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_49_0;

    // out_intel_reserved_ffwd_50_0(GPOUT,43)
    assign out_intel_reserved_ffwd_50_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_50_0;

    // out_intel_reserved_ffwd_51_0(GPOUT,44)
    assign out_intel_reserved_ffwd_51_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_51_0;

    // out_intel_reserved_ffwd_52_0(GPOUT,45)
    assign out_intel_reserved_ffwd_52_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_52_0;

    // out_intel_reserved_ffwd_53_0(GPOUT,46)
    assign out_intel_reserved_ffwd_53_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_53_0;

    // out_intel_reserved_ffwd_54_0(GPOUT,47)
    assign out_intel_reserved_ffwd_54_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_54_0;

    // out_intel_reserved_ffwd_55_0(GPOUT,48)
    assign out_intel_reserved_ffwd_55_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_55_0;

    // out_intel_reserved_ffwd_56_0(GPOUT,49)
    assign out_intel_reserved_ffwd_56_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_56_0;

    // out_intel_reserved_ffwd_57_0(GPOUT,50)
    assign out_intel_reserved_ffwd_57_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_57_0;

    // out_intel_reserved_ffwd_58_0(GPOUT,51)
    assign out_intel_reserved_ffwd_58_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_58_0;

    // out_intel_reserved_ffwd_59_0(GPOUT,52)
    assign out_intel_reserved_ffwd_59_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_59_0;

    // out_intel_reserved_ffwd_60_0(GPOUT,53)
    assign out_intel_reserved_ffwd_60_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_60_0;

    // out_intel_reserved_ffwd_61_0(GPOUT,54)
    assign out_intel_reserved_ffwd_61_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_61_0;

    // out_intel_reserved_ffwd_62_0(GPOUT,55)
    assign out_intel_reserved_ffwd_62_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_62_0;

    // out_intel_reserved_ffwd_63_0(GPOUT,56)
    assign out_intel_reserved_ffwd_63_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_63_0;

    // out_intel_reserved_ffwd_64_0(GPOUT,57)
    assign out_intel_reserved_ffwd_64_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_64_0;

    // out_intel_reserved_ffwd_65_0(GPOUT,58)
    assign out_intel_reserved_ffwd_65_0 = bb_xmlCheckLanguageID_B11_stall_region_out_intel_reserved_ffwd_65_0;

    // out_lm54627_xmlCheckLanguageID_avm_address(GPOUT,59)
    assign out_lm54627_xmlCheckLanguageID_avm_address = bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_address;

    // out_lm54627_xmlCheckLanguageID_avm_burstcount(GPOUT,60)
    assign out_lm54627_xmlCheckLanguageID_avm_burstcount = bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_burstcount;

    // out_lm54627_xmlCheckLanguageID_avm_byteenable(GPOUT,61)
    assign out_lm54627_xmlCheckLanguageID_avm_byteenable = bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_byteenable;

    // out_lm54627_xmlCheckLanguageID_avm_enable(GPOUT,62)
    assign out_lm54627_xmlCheckLanguageID_avm_enable = bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_enable;

    // out_lm54627_xmlCheckLanguageID_avm_read(GPOUT,63)
    assign out_lm54627_xmlCheckLanguageID_avm_read = bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_read;

    // out_lm54627_xmlCheckLanguageID_avm_write(GPOUT,64)
    assign out_lm54627_xmlCheckLanguageID_avm_write = bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_write;

    // out_lm54627_xmlCheckLanguageID_avm_writedata(GPOUT,65)
    assign out_lm54627_xmlCheckLanguageID_avm_writedata = bb_xmlCheckLanguageID_B11_stall_region_out_lm54627_xmlCheckLanguageID_avm_writedata;

    // out_lm7426_xmlCheckLanguageID_avm_address(GPOUT,66)
    assign out_lm7426_xmlCheckLanguageID_avm_address = bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_address;

    // out_lm7426_xmlCheckLanguageID_avm_burstcount(GPOUT,67)
    assign out_lm7426_xmlCheckLanguageID_avm_burstcount = bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_burstcount;

    // out_lm7426_xmlCheckLanguageID_avm_byteenable(GPOUT,68)
    assign out_lm7426_xmlCheckLanguageID_avm_byteenable = bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_byteenable;

    // out_lm7426_xmlCheckLanguageID_avm_enable(GPOUT,69)
    assign out_lm7426_xmlCheckLanguageID_avm_enable = bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_enable;

    // out_lm7426_xmlCheckLanguageID_avm_read(GPOUT,70)
    assign out_lm7426_xmlCheckLanguageID_avm_read = bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_read;

    // out_lm7426_xmlCheckLanguageID_avm_write(GPOUT,71)
    assign out_lm7426_xmlCheckLanguageID_avm_write = bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_write;

    // out_lm7426_xmlCheckLanguageID_avm_writedata(GPOUT,72)
    assign out_lm7426_xmlCheckLanguageID_avm_writedata = bb_xmlCheckLanguageID_B11_stall_region_out_lm7426_xmlCheckLanguageID_avm_writedata;

    // out_lm9225_xmlCheckLanguageID_avm_address(GPOUT,73)
    assign out_lm9225_xmlCheckLanguageID_avm_address = bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_address;

    // out_lm9225_xmlCheckLanguageID_avm_burstcount(GPOUT,74)
    assign out_lm9225_xmlCheckLanguageID_avm_burstcount = bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_burstcount;

    // out_lm9225_xmlCheckLanguageID_avm_byteenable(GPOUT,75)
    assign out_lm9225_xmlCheckLanguageID_avm_byteenable = bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_byteenable;

    // out_lm9225_xmlCheckLanguageID_avm_enable(GPOUT,76)
    assign out_lm9225_xmlCheckLanguageID_avm_enable = bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_enable;

    // out_lm9225_xmlCheckLanguageID_avm_read(GPOUT,77)
    assign out_lm9225_xmlCheckLanguageID_avm_read = bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_read;

    // out_lm9225_xmlCheckLanguageID_avm_write(GPOUT,78)
    assign out_lm9225_xmlCheckLanguageID_avm_write = bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_write;

    // out_lm9225_xmlCheckLanguageID_avm_writedata(GPOUT,79)
    assign out_lm9225_xmlCheckLanguageID_avm_writedata = bb_xmlCheckLanguageID_B11_stall_region_out_lm9225_xmlCheckLanguageID_avm_writedata;

    // out_stall_out_0(GPOUT,80)
    assign out_stall_out_0 = xmlCheckLanguageID_B11_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,81)
    assign out_valid_out_0 = xmlCheckLanguageID_B11_branch_out_valid_out_0;

endmodule
