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

// SystemVerilog created from ff_rgb24toyv12_c_bb_B6
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_bb_B6 (
    output wire [0:0] out_feedback_out_36,
    input wire [0:0] in_feedback_stall_in_36,
    output wire [0:0] out_feedback_valid_out_36,
    input wire [0:0] in_lm539_toi1_intcast13015_0,
    input wire [0:0] in_notcmp292306_pop9717_0,
    input wire [0:0] in_pop9616_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_ff_rgb24toyv12_c_B6_stall_region_out_feedback_out_36;
    wire [0:0] bb_ff_rgb24toyv12_c_B6_stall_region_out_feedback_valid_out_36;
    wire [0:0] bb_ff_rgb24toyv12_c_B6_stall_region_out_notcmp292306_pop9717;
    wire [0:0] bb_ff_rgb24toyv12_c_B6_stall_region_out_stall_out;
    wire [0:0] bb_ff_rgb24toyv12_c_B6_stall_region_out_valid_out;
    wire [0:0] ff_rgb24toyv12_c_B6_branch_out_stall_out;
    wire [0:0] ff_rgb24toyv12_c_B6_branch_out_valid_out_0;
    wire [0:0] ff_rgb24toyv12_c_B6_branch_out_valid_out_1;
    wire [0:0] ff_rgb24toyv12_c_B6_merge_out_lm539_toi1_intcast13015;
    wire [0:0] ff_rgb24toyv12_c_B6_merge_out_notcmp292306_pop9717;
    wire [0:0] ff_rgb24toyv12_c_B6_merge_out_pop9616;
    wire [0:0] ff_rgb24toyv12_c_B6_merge_out_stall_out_0;
    wire [0:0] ff_rgb24toyv12_c_B6_merge_out_valid_out;


    // ff_rgb24toyv12_c_B6_branch(BLACKBOX,6)
    ff_rgb24toyv12_c_B6_branch theff_rgb24toyv12_c_B6_branch (
        .in_notcmp292306_pop9717(bb_ff_rgb24toyv12_c_B6_stall_region_out_notcmp292306_pop9717),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_ff_rgb24toyv12_c_B6_stall_region_out_valid_out),
        .out_stall_out(ff_rgb24toyv12_c_B6_branch_out_stall_out),
        .out_valid_out_0(ff_rgb24toyv12_c_B6_branch_out_valid_out_0),
        .out_valid_out_1(ff_rgb24toyv12_c_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // ff_rgb24toyv12_c_B6_merge(BLACKBOX,7)
    ff_rgb24toyv12_c_B6_merge theff_rgb24toyv12_c_B6_merge (
        .in_lm539_toi1_intcast13015_0(in_lm539_toi1_intcast13015_0),
        .in_notcmp292306_pop9717_0(in_notcmp292306_pop9717_0),
        .in_pop9616_0(in_pop9616_0),
        .in_stall_in(bb_ff_rgb24toyv12_c_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_lm539_toi1_intcast13015(ff_rgb24toyv12_c_B6_merge_out_lm539_toi1_intcast13015),
        .out_notcmp292306_pop9717(ff_rgb24toyv12_c_B6_merge_out_notcmp292306_pop9717),
        .out_pop9616(ff_rgb24toyv12_c_B6_merge_out_pop9616),
        .out_stall_out_0(ff_rgb24toyv12_c_B6_merge_out_stall_out_0),
        .out_valid_out(ff_rgb24toyv12_c_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ff_rgb24toyv12_c_B6_stall_region(BLACKBOX,2)
    ff_rgb24toyv12_c_bb_B6_stall_region thebb_ff_rgb24toyv12_c_B6_stall_region (
        .in_feedback_stall_in_36(in_feedback_stall_in_36),
        .in_lm539_toi1_intcast13015(ff_rgb24toyv12_c_B6_merge_out_lm539_toi1_intcast13015),
        .in_notcmp292306_pop9717(ff_rgb24toyv12_c_B6_merge_out_notcmp292306_pop9717),
        .in_pop9616(ff_rgb24toyv12_c_B6_merge_out_pop9616),
        .in_stall_in(ff_rgb24toyv12_c_B6_branch_out_stall_out),
        .in_valid_in(ff_rgb24toyv12_c_B6_merge_out_valid_out),
        .out_feedback_out_36(bb_ff_rgb24toyv12_c_B6_stall_region_out_feedback_out_36),
        .out_feedback_valid_out_36(bb_ff_rgb24toyv12_c_B6_stall_region_out_feedback_valid_out_36),
        .out_notcmp292306_pop9717(bb_ff_rgb24toyv12_c_B6_stall_region_out_notcmp292306_pop9717),
        .out_stall_out(bb_ff_rgb24toyv12_c_B6_stall_region_out_stall_out),
        .out_valid_out(bb_ff_rgb24toyv12_c_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_36_sync(GPOUT,3)
    assign out_feedback_out_36 = bb_ff_rgb24toyv12_c_B6_stall_region_out_feedback_out_36;

    // feedback_valid_out_36_sync(GPOUT,5)
    assign out_feedback_valid_out_36 = bb_ff_rgb24toyv12_c_B6_stall_region_out_feedback_valid_out_36;

    // out_stall_out_0(GPOUT,14)
    assign out_stall_out_0 = ff_rgb24toyv12_c_B6_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,15)
    assign out_valid_out_0 = ff_rgb24toyv12_c_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,16)
    assign out_valid_out_1 = ff_rgb24toyv12_c_B6_branch_out_valid_out_1;

endmodule
