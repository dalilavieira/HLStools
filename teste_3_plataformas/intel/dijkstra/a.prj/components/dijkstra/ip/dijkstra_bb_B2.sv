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

// SystemVerilog created from dijkstra_bb_B2
// SystemVerilog created on Mon Apr  6 10:27:28 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_bb_B2 (
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [31:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_14_0,
    input wire [31:0] in_intel_reserved_ffwd_15_0,
    input wire [31:0] in_intel_reserved_ffwd_16_0,
    input wire [31:0] in_intel_reserved_ffwd_17_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_19_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_10_0;
    wire [31:0] bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_7_0;
    wire [31:0] bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_8_0;
    wire [31:0] bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_dijkstra_B2_stall_region_out_stall_out;
    wire [0:0] bb_dijkstra_B2_stall_region_out_valid_out;
    wire [0:0] dijkstra_B2_branch_out_stall_out;
    wire [0:0] dijkstra_B2_branch_out_valid_out_0;
    wire [0:0] dijkstra_B2_merge_out_stall_out_0;
    wire [0:0] dijkstra_B2_merge_out_valid_out;


    // dijkstra_B2_merge(BLACKBOX,4)
    dijkstra_B2_merge thedijkstra_B2_merge (
        .in_stall_in(bb_dijkstra_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(dijkstra_B2_merge_out_stall_out_0),
        .out_valid_out(dijkstra_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dijkstra_B2_branch(BLACKBOX,3)
    dijkstra_B2_branch thedijkstra_B2_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_dijkstra_B2_stall_region_out_valid_out),
        .out_stall_out(dijkstra_B2_branch_out_stall_out),
        .out_valid_out_0(dijkstra_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dijkstra_B2_stall_region(BLACKBOX,2)
    dijkstra_bb_B2_stall_region thebb_dijkstra_B2_stall_region (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(dijkstra_B2_branch_out_stall_out),
        .in_valid_in(dijkstra_B2_merge_out_valid_out),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_10_0(bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_2_0(bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_9_0),
        .out_stall_out(bb_dijkstra_B2_stall_region_out_stall_out),
        .out_valid_out(bb_dijkstra_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_10_0(GPOUT,5)
    assign out_intel_reserved_ffwd_10_0 = bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_10_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,6)
    assign out_intel_reserved_ffwd_2_0 = bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,7)
    assign out_intel_reserved_ffwd_3_0 = bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,8)
    assign out_intel_reserved_ffwd_4_0 = bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,9)
    assign out_intel_reserved_ffwd_5_0 = bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_5_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,10)
    assign out_intel_reserved_ffwd_6_0 = bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_6_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,11)
    assign out_intel_reserved_ffwd_7_0 = bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_7_0;

    // out_intel_reserved_ffwd_8_0(GPOUT,12)
    assign out_intel_reserved_ffwd_8_0 = bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_8_0;

    // out_intel_reserved_ffwd_9_0(GPOUT,13)
    assign out_intel_reserved_ffwd_9_0 = bb_dijkstra_B2_stall_region_out_intel_reserved_ffwd_9_0;

    // out_stall_out_0(GPOUT,14)
    assign out_stall_out_0 = dijkstra_B2_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,15)
    assign out_valid_out_0 = dijkstra_B2_branch_out_valid_out_0;

endmodule
