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

// SystemVerilog created from sobel_filter_bb_B17
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B17 (
    output wire [0:0] out_feedback_out_27,
    output wire [0:0] out_feedback_out_28,
    input wire [0:0] in_feedback_stall_in_27,
    input wire [0:0] in_feedback_stall_in_28,
    output wire [0:0] out_feedback_valid_out_27,
    output wire [0:0] out_feedback_valid_out_28,
    input wire [0:0] in_c0_exe247225_0,
    input wire [0:0] in_c0_exe347326_0,
    input wire [0:0] in_c0_exe547527_0,
    input wire [0:0] in_c0_exe647628_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_sobel_filter_B17_stall_region_out_c0_exe647628;
    wire [0:0] bb_sobel_filter_B17_stall_region_out_feedback_out_27;
    wire [0:0] bb_sobel_filter_B17_stall_region_out_feedback_out_28;
    wire [0:0] bb_sobel_filter_B17_stall_region_out_feedback_valid_out_27;
    wire [0:0] bb_sobel_filter_B17_stall_region_out_feedback_valid_out_28;
    wire [0:0] bb_sobel_filter_B17_stall_region_out_stall_out;
    wire [0:0] bb_sobel_filter_B17_stall_region_out_valid_out;
    wire [0:0] sobel_filter_B17_branch_out_stall_out;
    wire [0:0] sobel_filter_B17_branch_out_valid_out_0;
    wire [0:0] sobel_filter_B17_branch_out_valid_out_1;
    wire [0:0] sobel_filter_B17_merge_out_c0_exe247225;
    wire [0:0] sobel_filter_B17_merge_out_c0_exe347326;
    wire [0:0] sobel_filter_B17_merge_out_c0_exe547527;
    wire [0:0] sobel_filter_B17_merge_out_c0_exe647628;
    wire [0:0] sobel_filter_B17_merge_out_stall_out_0;
    wire [0:0] sobel_filter_B17_merge_out_valid_out;


    // sobel_filter_B17_branch(BLACKBOX,19)
    sobel_filter_B17_branch thesobel_filter_B17_branch (
        .in_c0_exe647628(bb_sobel_filter_B17_stall_region_out_c0_exe647628),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_sobel_filter_B17_stall_region_out_valid_out),
        .out_stall_out(sobel_filter_B17_branch_out_stall_out),
        .out_valid_out_0(sobel_filter_B17_branch_out_valid_out_0),
        .out_valid_out_1(sobel_filter_B17_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // sobel_filter_B17_merge(BLACKBOX,20)
    sobel_filter_B17_merge thesobel_filter_B17_merge (
        .in_c0_exe247225_0(in_c0_exe247225_0),
        .in_c0_exe347326_0(in_c0_exe347326_0),
        .in_c0_exe547527_0(in_c0_exe547527_0),
        .in_c0_exe647628_0(in_c0_exe647628_0),
        .in_stall_in(bb_sobel_filter_B17_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe247225(sobel_filter_B17_merge_out_c0_exe247225),
        .out_c0_exe347326(sobel_filter_B17_merge_out_c0_exe347326),
        .out_c0_exe547527(sobel_filter_B17_merge_out_c0_exe547527),
        .out_c0_exe647628(sobel_filter_B17_merge_out_c0_exe647628),
        .out_stall_out_0(sobel_filter_B17_merge_out_stall_out_0),
        .out_valid_out(sobel_filter_B17_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B17_stall_region(BLACKBOX,2)
    sobel_filter_bb_B17_stall_region thebb_sobel_filter_B17_stall_region (
        .in_c0_exe247225(sobel_filter_B17_merge_out_c0_exe247225),
        .in_c0_exe347326(sobel_filter_B17_merge_out_c0_exe347326),
        .in_c0_exe547527(sobel_filter_B17_merge_out_c0_exe547527),
        .in_c0_exe647628(sobel_filter_B17_merge_out_c0_exe647628),
        .in_feedback_stall_in_27(in_feedback_stall_in_27),
        .in_feedback_stall_in_28(in_feedback_stall_in_28),
        .in_stall_in(sobel_filter_B17_branch_out_stall_out),
        .in_valid_in(sobel_filter_B17_merge_out_valid_out),
        .out_c0_exe647628(bb_sobel_filter_B17_stall_region_out_c0_exe647628),
        .out_feedback_out_27(bb_sobel_filter_B17_stall_region_out_feedback_out_27),
        .out_feedback_out_28(bb_sobel_filter_B17_stall_region_out_feedback_out_28),
        .out_feedback_valid_out_27(bb_sobel_filter_B17_stall_region_out_feedback_valid_out_27),
        .out_feedback_valid_out_28(bb_sobel_filter_B17_stall_region_out_feedback_valid_out_28),
        .out_stall_out(bb_sobel_filter_B17_stall_region_out_stall_out),
        .out_valid_out(bb_sobel_filter_B17_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_27_sync(GPOUT,3)
    assign out_feedback_out_27 = bb_sobel_filter_B17_stall_region_out_feedback_out_27;

    // feedback_out_28_sync(GPOUT,4)
    assign out_feedback_out_28 = bb_sobel_filter_B17_stall_region_out_feedback_out_28;

    // feedback_valid_out_27_sync(GPOUT,7)
    assign out_feedback_valid_out_27 = bb_sobel_filter_B17_stall_region_out_feedback_valid_out_27;

    // feedback_valid_out_28_sync(GPOUT,8)
    assign out_feedback_valid_out_28 = bb_sobel_filter_B17_stall_region_out_feedback_valid_out_28;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = sobel_filter_B17_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,17)
    assign out_valid_out_0 = sobel_filter_B17_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,18)
    assign out_valid_out_1 = sobel_filter_B17_branch_out_valid_out_1;

endmodule
