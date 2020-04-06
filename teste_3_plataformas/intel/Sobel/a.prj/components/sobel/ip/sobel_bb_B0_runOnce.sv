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

// SystemVerilog created from sobel_bb_B0_runOnce
// SystemVerilog created on Mon Apr  6 12:55:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_bb_B0_runOnce (
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_sobel_B0_runOnce_stall_region_out_stall_out;
    wire [0:0] bb_sobel_B0_runOnce_stall_region_out_valid_out;
    wire [0:0] sobel_B0_runOnce_branch_out_stall_out;
    wire [0:0] sobel_B0_runOnce_branch_out_valid_out_0;
    wire [0:0] sobel_B0_runOnce_merge_out_stall_out_0;
    wire [0:0] sobel_B0_runOnce_merge_out_valid_out;


    // sobel_B0_runOnce_branch(BLACKBOX,7)
    sobel_B0_runOnce_branch thesobel_B0_runOnce_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_sobel_B0_runOnce_stall_region_out_valid_out),
        .out_stall_out(sobel_B0_runOnce_branch_out_stall_out),
        .out_valid_out_0(sobel_B0_runOnce_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_B0_runOnce_stall_region(BLACKBOX,2)
    sobel_bb_B0_runOnce_stall_region thebb_sobel_B0_runOnce_stall_region (
        .in_stall_in(sobel_B0_runOnce_branch_out_stall_out),
        .in_valid_in(sobel_B0_runOnce_merge_out_valid_out),
        .out_stall_out(bb_sobel_B0_runOnce_stall_region_out_stall_out),
        .out_valid_out(bb_sobel_B0_runOnce_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // sobel_B0_runOnce_merge(BLACKBOX,8)
    sobel_B0_runOnce_merge thesobel_B0_runOnce_merge (
        .in_stall_in(bb_sobel_B0_runOnce_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(sobel_B0_runOnce_merge_out_stall_out_0),
        .out_valid_out(sobel_B0_runOnce_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out_0(GPOUT,5)
    assign out_stall_out_0 = sobel_B0_runOnce_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,6)
    assign out_valid_out_0 = sobel_B0_runOnce_branch_out_valid_out_0;

endmodule
