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

// SystemVerilog created from bubbleSort_bb_B2
// SystemVerilog created on Mon Apr  6 11:16:20 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bubbleSort_bb_B2 (
    output wire [0:0] out_feedback_out_13,
    input wire [0:0] in_feedback_stall_in_13,
    output wire [0:0] out_feedback_valid_out_13,
    input wire [0:0] in_memdep_2_0,
    input wire [0:0] in_notcmp3039_pop213_0,
    input wire [0:0] in_pop201_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_bubbleSort_B2_stall_region_out_feedback_out_13;
    wire [0:0] bb_bubbleSort_B2_stall_region_out_feedback_valid_out_13;
    wire [0:0] bb_bubbleSort_B2_stall_region_out_notcmp3039_pop213;
    wire [0:0] bb_bubbleSort_B2_stall_region_out_stall_out;
    wire [0:0] bb_bubbleSort_B2_stall_region_out_valid_out;
    wire [0:0] bubbleSort_B2_branch_out_stall_out;
    wire [0:0] bubbleSort_B2_branch_out_valid_out_0;
    wire [0:0] bubbleSort_B2_branch_out_valid_out_1;
    wire [0:0] bubbleSort_B2_merge_out_memdep_2;
    wire [0:0] bubbleSort_B2_merge_out_notcmp3039_pop213;
    wire [0:0] bubbleSort_B2_merge_out_pop201;
    wire [0:0] bubbleSort_B2_merge_out_stall_out_0;
    wire [0:0] bubbleSort_B2_merge_out_valid_out;


    // bubbleSort_B2_branch(BLACKBOX,3)
    bubbleSort_B2_branch thebubbleSort_B2_branch (
        .in_notcmp3039_pop213(bb_bubbleSort_B2_stall_region_out_notcmp3039_pop213),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_bubbleSort_B2_stall_region_out_valid_out),
        .out_stall_out(bubbleSort_B2_branch_out_stall_out),
        .out_valid_out_0(bubbleSort_B2_branch_out_valid_out_0),
        .out_valid_out_1(bubbleSort_B2_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bubbleSort_B2_merge(BLACKBOX,4)
    bubbleSort_B2_merge thebubbleSort_B2_merge (
        .in_memdep_2_0(in_memdep_2_0),
        .in_notcmp3039_pop213_0(in_notcmp3039_pop213_0),
        .in_pop201_0(in_pop201_0),
        .in_stall_in(bb_bubbleSort_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_memdep_2(bubbleSort_B2_merge_out_memdep_2),
        .out_notcmp3039_pop213(bubbleSort_B2_merge_out_notcmp3039_pop213),
        .out_pop201(bubbleSort_B2_merge_out_pop201),
        .out_stall_out_0(bubbleSort_B2_merge_out_stall_out_0),
        .out_valid_out(bubbleSort_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bubbleSort_B2_stall_region(BLACKBOX,2)
    bubbleSort_bb_B2_stall_region thebb_bubbleSort_B2_stall_region (
        .in_feedback_stall_in_13(in_feedback_stall_in_13),
        .in_memdep_2(bubbleSort_B2_merge_out_memdep_2),
        .in_notcmp3039_pop213(bubbleSort_B2_merge_out_notcmp3039_pop213),
        .in_pop201(bubbleSort_B2_merge_out_pop201),
        .in_stall_in(bubbleSort_B2_branch_out_stall_out),
        .in_valid_in(bubbleSort_B2_merge_out_valid_out),
        .out_feedback_out_13(bb_bubbleSort_B2_stall_region_out_feedback_out_13),
        .out_feedback_valid_out_13(bb_bubbleSort_B2_stall_region_out_feedback_valid_out_13),
        .out_notcmp3039_pop213(bb_bubbleSort_B2_stall_region_out_notcmp3039_pop213),
        .out_stall_out(bb_bubbleSort_B2_stall_region_out_stall_out),
        .out_valid_out(bb_bubbleSort_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_13_sync(GPOUT,5)
    assign out_feedback_out_13 = bb_bubbleSort_B2_stall_region_out_feedback_out_13;

    // feedback_valid_out_13_sync(GPOUT,7)
    assign out_feedback_valid_out_13 = bb_bubbleSort_B2_stall_region_out_feedback_valid_out_13;

    // out_stall_out_0(GPOUT,14)
    assign out_stall_out_0 = bubbleSort_B2_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,15)
    assign out_valid_out_0 = bubbleSort_B2_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,16)
    assign out_valid_out_1 = bubbleSort_B2_branch_out_valid_out_1;

endmodule
