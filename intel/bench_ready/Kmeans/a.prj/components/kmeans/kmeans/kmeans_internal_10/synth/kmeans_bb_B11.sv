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

// SystemVerilog created from kmeans_bb_B11
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_bb_B11 (
    input wire [0:0] in_c0_exe52545_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kmeans_B11_stall_region_out_c0_exe52545;
    wire [0:0] bb_kmeans_B11_stall_region_out_stall_out;
    wire [0:0] bb_kmeans_B11_stall_region_out_valid_out;
    wire [0:0] kmeans_B11_branch_out_stall_out;
    wire [0:0] kmeans_B11_branch_out_valid_out_0;
    wire [0:0] kmeans_B11_branch_out_valid_out_1;
    wire [0:0] kmeans_B11_merge_out_c0_exe52545;
    wire [0:0] kmeans_B11_merge_out_stall_out_0;
    wire [0:0] kmeans_B11_merge_out_valid_out;


    // kmeans_B11_branch(BLACKBOX,7)
    kmeans_B11_branch thekmeans_B11_branch (
        .in_c0_exe52545(bb_kmeans_B11_stall_region_out_c0_exe52545),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kmeans_B11_stall_region_out_valid_out),
        .out_stall_out(kmeans_B11_branch_out_stall_out),
        .out_valid_out_0(kmeans_B11_branch_out_valid_out_0),
        .out_valid_out_1(kmeans_B11_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B11_stall_region(BLACKBOX,2)
    kmeans_bb_B11_stall_region thebb_kmeans_B11_stall_region (
        .in_c0_exe52545(kmeans_B11_merge_out_c0_exe52545),
        .in_stall_in(kmeans_B11_branch_out_stall_out),
        .in_valid_in(kmeans_B11_merge_out_valid_out),
        .out_c0_exe52545(bb_kmeans_B11_stall_region_out_c0_exe52545),
        .out_stall_out(bb_kmeans_B11_stall_region_out_stall_out),
        .out_valid_out(bb_kmeans_B11_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kmeans_B11_merge(BLACKBOX,8)
    kmeans_B11_merge thekmeans_B11_merge (
        .in_c0_exe52545_0(in_c0_exe52545_0),
        .in_stall_in(bb_kmeans_B11_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe52545(kmeans_B11_merge_out_c0_exe52545),
        .out_stall_out_0(kmeans_B11_merge_out_stall_out_0),
        .out_valid_out(kmeans_B11_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out_0(GPOUT,9)
    assign out_stall_out_0 = kmeans_B11_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,10)
    assign out_valid_out_0 = kmeans_B11_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,11)
    assign out_valid_out_1 = kmeans_B11_branch_out_valid_out_1;

endmodule
