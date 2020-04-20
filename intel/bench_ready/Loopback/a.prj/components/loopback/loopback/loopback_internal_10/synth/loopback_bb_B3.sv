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

// SystemVerilog created from loopback_bb_B3
// SystemVerilog created on Sun Apr 19 21:18:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loopback_bb_B3 (
    input wire [15:0] in_intel_reserved_ffwd_10_0,
    input wire [15:0] in_intel_reserved_ffwd_11_0,
    input wire [15:0] in_intel_reserved_ffwd_12_0,
    input wire [15:0] in_intel_reserved_ffwd_13_0,
    input wire [15:0] in_intel_reserved_ffwd_14_0,
    input wire [15:0] in_intel_reserved_ffwd_15_0,
    input wire [15:0] in_intel_reserved_ffwd_16_0,
    input wire [15:0] in_intel_reserved_ffwd_17_0,
    input wire [15:0] in_intel_reserved_ffwd_18_0,
    input wire [15:0] in_intel_reserved_ffwd_19_0,
    input wire [15:0] in_intel_reserved_ffwd_20_0,
    input wire [15:0] in_intel_reserved_ffwd_21_0,
    input wire [15:0] in_intel_reserved_ffwd_22_0,
    input wire [15:0] in_intel_reserved_ffwd_23_0,
    input wire [15:0] in_intel_reserved_ffwd_24_0,
    input wire [15:0] in_intel_reserved_ffwd_25_0,
    input wire [15:0] in_intel_reserved_ffwd_26_0,
    input wire [15:0] in_intel_reserved_ffwd_27_0,
    input wire [15:0] in_intel_reserved_ffwd_28_0,
    input wire [15:0] in_intel_reserved_ffwd_29_0,
    input wire [15:0] in_intel_reserved_ffwd_2_0,
    input wire [15:0] in_intel_reserved_ffwd_30_0,
    input wire [15:0] in_intel_reserved_ffwd_31_0,
    input wire [15:0] in_intel_reserved_ffwd_32_0,
    input wire [15:0] in_intel_reserved_ffwd_3_0,
    input wire [15:0] in_intel_reserved_ffwd_4_0,
    input wire [15:0] in_intel_reserved_ffwd_5_0,
    input wire [15:0] in_intel_reserved_ffwd_6_0,
    input wire [15:0] in_intel_reserved_ffwd_7_0,
    input wire [15:0] in_intel_reserved_ffwd_8_0,
    input wire [15:0] in_intel_reserved_ffwd_9_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [15:0] out_intel_reserved_ffwd_65_0_0_tpl,
    output wire [15:0] out_intel_reserved_ffwd_65_0_1_tpl,
    output wire [15:0] out_intel_reserved_ffwd_65_0_2_tpl,
    output wire [15:0] out_intel_reserved_ffwd_65_0_3_tpl,
    output wire [15:0] out_intel_reserved_ffwd_65_0_4_tpl,
    output wire [15:0] out_intel_reserved_ffwd_65_0_5_tpl,
    output wire [15:0] out_intel_reserved_ffwd_65_0_6_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_0_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_1_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_2_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_3_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_4_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_5_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_6_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_7_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_0_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_1_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_2_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_3_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_4_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_5_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_6_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_7_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_0_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_1_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_2_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_3_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_4_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_5_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_6_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_7_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_loopback_B3_stall_region_out_stall_out;
    wire [0:0] bb_loopback_B3_stall_region_out_valid_out;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_0_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_1_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_2_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_3_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_4_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_5_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_6_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_0_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_1_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_2_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_3_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_4_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_5_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_6_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_7_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_0_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_1_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_2_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_3_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_4_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_5_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_6_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_7_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_0_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_1_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_2_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_3_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_4_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_5_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_6_tpl;
    wire [15:0] bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_7_tpl;
    wire [0:0] loopback_B3_branch_out_stall_out;
    wire [0:0] loopback_B3_branch_out_valid_out_0;
    wire [0:0] loopback_B3_merge_out_stall_out_0;
    wire [0:0] loopback_B3_merge_out_valid_out;


    // loopback_B3_branch(BLACKBOX,36)
    loopback_B3_branch theloopback_B3_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_loopback_B3_stall_region_out_valid_out),
        .out_stall_out(loopback_B3_branch_out_stall_out),
        .out_valid_out_0(loopback_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_loopback_B3_stall_region(BLACKBOX,2)
    loopback_bb_B3_stall_region thebb_loopback_B3_stall_region (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(loopback_B3_branch_out_stall_out),
        .in_valid_in(loopback_B3_merge_out_valid_out),
        .out_stall_out(bb_loopback_B3_stall_region_out_stall_out),
        .out_valid_out(bb_loopback_B3_stall_region_out_valid_out),
        .out_intel_reserved_ffwd_65_0_0_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_0_tpl),
        .out_intel_reserved_ffwd_65_0_1_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_1_tpl),
        .out_intel_reserved_ffwd_65_0_2_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_2_tpl),
        .out_intel_reserved_ffwd_65_0_3_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_3_tpl),
        .out_intel_reserved_ffwd_65_0_4_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_4_tpl),
        .out_intel_reserved_ffwd_65_0_5_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_5_tpl),
        .out_intel_reserved_ffwd_65_0_6_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_6_tpl),
        .out_intel_reserved_ffwd_66_0_0_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_0_tpl),
        .out_intel_reserved_ffwd_66_0_1_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_1_tpl),
        .out_intel_reserved_ffwd_66_0_2_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_2_tpl),
        .out_intel_reserved_ffwd_66_0_3_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_3_tpl),
        .out_intel_reserved_ffwd_66_0_4_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_4_tpl),
        .out_intel_reserved_ffwd_66_0_5_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_5_tpl),
        .out_intel_reserved_ffwd_66_0_6_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_6_tpl),
        .out_intel_reserved_ffwd_66_0_7_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_7_tpl),
        .out_intel_reserved_ffwd_67_0_0_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_0_tpl),
        .out_intel_reserved_ffwd_67_0_1_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_1_tpl),
        .out_intel_reserved_ffwd_67_0_2_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_2_tpl),
        .out_intel_reserved_ffwd_67_0_3_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_3_tpl),
        .out_intel_reserved_ffwd_67_0_4_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_4_tpl),
        .out_intel_reserved_ffwd_67_0_5_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_5_tpl),
        .out_intel_reserved_ffwd_67_0_6_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_6_tpl),
        .out_intel_reserved_ffwd_67_0_7_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_7_tpl),
        .out_intel_reserved_ffwd_68_0_0_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_0_tpl),
        .out_intel_reserved_ffwd_68_0_1_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_1_tpl),
        .out_intel_reserved_ffwd_68_0_2_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_2_tpl),
        .out_intel_reserved_ffwd_68_0_3_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_3_tpl),
        .out_intel_reserved_ffwd_68_0_4_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_4_tpl),
        .out_intel_reserved_ffwd_68_0_5_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_5_tpl),
        .out_intel_reserved_ffwd_68_0_6_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_6_tpl),
        .out_intel_reserved_ffwd_68_0_7_tpl(bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loopback_B3_merge(BLACKBOX,37)
    loopback_B3_merge theloopback_B3_merge (
        .in_stall_in(bb_loopback_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(loopback_B3_merge_out_stall_out_0),
        .out_valid_out(loopback_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out_0(GPOUT,38)
    assign out_stall_out_0 = loopback_B3_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,39)
    assign out_valid_out_0 = loopback_B3_branch_out_valid_out_0;

    // out_intel_reserved_ffwd_65_0_0_tpl(GPOUT,40)
    assign out_intel_reserved_ffwd_65_0_0_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_0_tpl;

    // out_intel_reserved_ffwd_65_0_1_tpl(GPOUT,41)
    assign out_intel_reserved_ffwd_65_0_1_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_1_tpl;

    // out_intel_reserved_ffwd_65_0_2_tpl(GPOUT,42)
    assign out_intel_reserved_ffwd_65_0_2_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_2_tpl;

    // out_intel_reserved_ffwd_65_0_3_tpl(GPOUT,43)
    assign out_intel_reserved_ffwd_65_0_3_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_3_tpl;

    // out_intel_reserved_ffwd_65_0_4_tpl(GPOUT,44)
    assign out_intel_reserved_ffwd_65_0_4_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_4_tpl;

    // out_intel_reserved_ffwd_65_0_5_tpl(GPOUT,45)
    assign out_intel_reserved_ffwd_65_0_5_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_5_tpl;

    // out_intel_reserved_ffwd_65_0_6_tpl(GPOUT,46)
    assign out_intel_reserved_ffwd_65_0_6_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_65_0_6_tpl;

    // out_intel_reserved_ffwd_66_0_0_tpl(GPOUT,47)
    assign out_intel_reserved_ffwd_66_0_0_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_0_tpl;

    // out_intel_reserved_ffwd_66_0_1_tpl(GPOUT,48)
    assign out_intel_reserved_ffwd_66_0_1_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_1_tpl;

    // out_intel_reserved_ffwd_66_0_2_tpl(GPOUT,49)
    assign out_intel_reserved_ffwd_66_0_2_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_2_tpl;

    // out_intel_reserved_ffwd_66_0_3_tpl(GPOUT,50)
    assign out_intel_reserved_ffwd_66_0_3_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_3_tpl;

    // out_intel_reserved_ffwd_66_0_4_tpl(GPOUT,51)
    assign out_intel_reserved_ffwd_66_0_4_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_4_tpl;

    // out_intel_reserved_ffwd_66_0_5_tpl(GPOUT,52)
    assign out_intel_reserved_ffwd_66_0_5_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_5_tpl;

    // out_intel_reserved_ffwd_66_0_6_tpl(GPOUT,53)
    assign out_intel_reserved_ffwd_66_0_6_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_6_tpl;

    // out_intel_reserved_ffwd_66_0_7_tpl(GPOUT,54)
    assign out_intel_reserved_ffwd_66_0_7_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_66_0_7_tpl;

    // out_intel_reserved_ffwd_67_0_0_tpl(GPOUT,55)
    assign out_intel_reserved_ffwd_67_0_0_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_0_tpl;

    // out_intel_reserved_ffwd_67_0_1_tpl(GPOUT,56)
    assign out_intel_reserved_ffwd_67_0_1_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_1_tpl;

    // out_intel_reserved_ffwd_67_0_2_tpl(GPOUT,57)
    assign out_intel_reserved_ffwd_67_0_2_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_2_tpl;

    // out_intel_reserved_ffwd_67_0_3_tpl(GPOUT,58)
    assign out_intel_reserved_ffwd_67_0_3_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_3_tpl;

    // out_intel_reserved_ffwd_67_0_4_tpl(GPOUT,59)
    assign out_intel_reserved_ffwd_67_0_4_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_4_tpl;

    // out_intel_reserved_ffwd_67_0_5_tpl(GPOUT,60)
    assign out_intel_reserved_ffwd_67_0_5_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_5_tpl;

    // out_intel_reserved_ffwd_67_0_6_tpl(GPOUT,61)
    assign out_intel_reserved_ffwd_67_0_6_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_6_tpl;

    // out_intel_reserved_ffwd_67_0_7_tpl(GPOUT,62)
    assign out_intel_reserved_ffwd_67_0_7_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_67_0_7_tpl;

    // out_intel_reserved_ffwd_68_0_0_tpl(GPOUT,63)
    assign out_intel_reserved_ffwd_68_0_0_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_0_tpl;

    // out_intel_reserved_ffwd_68_0_1_tpl(GPOUT,64)
    assign out_intel_reserved_ffwd_68_0_1_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_1_tpl;

    // out_intel_reserved_ffwd_68_0_2_tpl(GPOUT,65)
    assign out_intel_reserved_ffwd_68_0_2_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_2_tpl;

    // out_intel_reserved_ffwd_68_0_3_tpl(GPOUT,66)
    assign out_intel_reserved_ffwd_68_0_3_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_3_tpl;

    // out_intel_reserved_ffwd_68_0_4_tpl(GPOUT,67)
    assign out_intel_reserved_ffwd_68_0_4_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_4_tpl;

    // out_intel_reserved_ffwd_68_0_5_tpl(GPOUT,68)
    assign out_intel_reserved_ffwd_68_0_5_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_5_tpl;

    // out_intel_reserved_ffwd_68_0_6_tpl(GPOUT,69)
    assign out_intel_reserved_ffwd_68_0_6_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_6_tpl;

    // out_intel_reserved_ffwd_68_0_7_tpl(GPOUT,70)
    assign out_intel_reserved_ffwd_68_0_7_tpl = bb_loopback_B3_stall_region_out_intel_reserved_ffwd_68_0_7_tpl;

endmodule
