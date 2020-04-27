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

// SystemVerilog created from sobel_filter_bb_B15
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B15 (
    input wire [0:0] in_c0_exe444918_0,
    input wire [0:0] in_c0_exe545020_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe444918,
    output wire [0:0] out_c0_exe545020,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_sobel_filter_B15_stall_region_out_c0_exe444918;
    wire [0:0] bb_sobel_filter_B15_stall_region_out_c0_exe545020;
    wire [0:0] bb_sobel_filter_B15_stall_region_out_stall_out;
    wire [0:0] bb_sobel_filter_B15_stall_region_out_valid_out;
    wire [0:0] sobel_filter_B15_branch_out_c0_exe444918;
    wire [0:0] sobel_filter_B15_branch_out_c0_exe545020;
    wire [0:0] sobel_filter_B15_branch_out_stall_out;
    wire [0:0] sobel_filter_B15_branch_out_valid_out_0;
    wire [0:0] sobel_filter_B15_merge_out_c0_exe444918;
    wire [0:0] sobel_filter_B15_merge_out_c0_exe545020;
    wire [0:0] sobel_filter_B15_merge_out_stall_out_0;
    wire [0:0] sobel_filter_B15_merge_out_valid_out;


    // sobel_filter_B15_merge(BLACKBOX,12)
    sobel_filter_B15_merge thesobel_filter_B15_merge (
        .in_c0_exe444918_0(in_c0_exe444918_0),
        .in_c0_exe545020_0(in_c0_exe545020_0),
        .in_stall_in(bb_sobel_filter_B15_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe444918(sobel_filter_B15_merge_out_c0_exe444918),
        .out_c0_exe545020(sobel_filter_B15_merge_out_c0_exe545020),
        .out_stall_out_0(sobel_filter_B15_merge_out_stall_out_0),
        .out_valid_out(sobel_filter_B15_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B15_stall_region(BLACKBOX,2)
    sobel_filter_bb_B15_stall_region thebb_sobel_filter_B15_stall_region (
        .in_c0_exe444918(sobel_filter_B15_merge_out_c0_exe444918),
        .in_c0_exe545020(sobel_filter_B15_merge_out_c0_exe545020),
        .in_stall_in(sobel_filter_B15_branch_out_stall_out),
        .in_valid_in(sobel_filter_B15_merge_out_valid_out),
        .out_c0_exe444918(bb_sobel_filter_B15_stall_region_out_c0_exe444918),
        .out_c0_exe545020(bb_sobel_filter_B15_stall_region_out_c0_exe545020),
        .out_stall_out(bb_sobel_filter_B15_stall_region_out_stall_out),
        .out_valid_out(bb_sobel_filter_B15_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // sobel_filter_B15_branch(BLACKBOX,11)
    sobel_filter_B15_branch thesobel_filter_B15_branch (
        .in_c0_exe444918(bb_sobel_filter_B15_stall_region_out_c0_exe444918),
        .in_c0_exe545020(bb_sobel_filter_B15_stall_region_out_c0_exe545020),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_sobel_filter_B15_stall_region_out_valid_out),
        .out_c0_exe444918(sobel_filter_B15_branch_out_c0_exe444918),
        .out_c0_exe545020(sobel_filter_B15_branch_out_c0_exe545020),
        .out_stall_out(sobel_filter_B15_branch_out_stall_out),
        .out_valid_out_0(sobel_filter_B15_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe444918(GPOUT,7)
    assign out_c0_exe444918 = sobel_filter_B15_branch_out_c0_exe444918;

    // out_c0_exe545020(GPOUT,8)
    assign out_c0_exe545020 = sobel_filter_B15_branch_out_c0_exe545020;

    // out_stall_out_0(GPOUT,9)
    assign out_stall_out_0 = sobel_filter_B15_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,10)
    assign out_valid_out_0 = sobel_filter_B15_branch_out_valid_out_0;

endmodule
