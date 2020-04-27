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

// SystemVerilog created from kmeans_bb_B4
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_bb_B4 (
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [0:0] out_intel_reserved_ffwd_6_0,
    output wire [32:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [31:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_kmeans_B4_stall_region_out_intel_reserved_ffwd_5_0;
    wire [0:0] bb_kmeans_B4_stall_region_out_intel_reserved_ffwd_6_0;
    wire [32:0] bb_kmeans_B4_stall_region_out_intel_reserved_ffwd_7_0;
    wire [0:0] bb_kmeans_B4_stall_region_out_stall_out;
    wire [0:0] bb_kmeans_B4_stall_region_out_valid_out;
    wire [0:0] kmeans_B4_branch_out_stall_out;
    wire [0:0] kmeans_B4_branch_out_valid_out_0;
    wire [0:0] kmeans_B4_merge_out_stall_out_0;
    wire [0:0] kmeans_B4_merge_out_valid_out;


    // kmeans_B4_merge(BLACKBOX,4)
    kmeans_B4_merge thekmeans_B4_merge (
        .in_stall_in(bb_kmeans_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(kmeans_B4_merge_out_stall_out_0),
        .out_valid_out(kmeans_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kmeans_B4_branch(BLACKBOX,3)
    kmeans_B4_branch thekmeans_B4_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kmeans_B4_stall_region_out_valid_out),
        .out_stall_out(kmeans_B4_branch_out_stall_out),
        .out_valid_out_0(kmeans_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B4_stall_region(BLACKBOX,2)
    kmeans_bb_B4_stall_region thebb_kmeans_B4_stall_region (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(kmeans_B4_branch_out_stall_out),
        .in_valid_in(kmeans_B4_merge_out_valid_out),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .out_intel_reserved_ffwd_5_0(bb_kmeans_B4_stall_region_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_kmeans_B4_stall_region_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_kmeans_B4_stall_region_out_intel_reserved_ffwd_7_0),
        .out_stall_out(bb_kmeans_B4_stall_region_out_stall_out),
        .out_valid_out(bb_kmeans_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_5_0(GPOUT,5)
    assign out_intel_reserved_ffwd_5_0 = bb_kmeans_B4_stall_region_out_intel_reserved_ffwd_5_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,6)
    assign out_intel_reserved_ffwd_6_0 = bb_kmeans_B4_stall_region_out_intel_reserved_ffwd_6_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,7)
    assign out_intel_reserved_ffwd_7_0 = bb_kmeans_B4_stall_region_out_intel_reserved_ffwd_7_0;

    // out_stall_out_0(GPOUT,8)
    assign out_stall_out_0 = kmeans_B4_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,9)
    assign out_valid_out_0 = kmeans_B4_branch_out_valid_out_0;

endmodule
