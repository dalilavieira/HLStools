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

// SystemVerilog created from poly5_bb_B6
// SystemVerilog created on Sun Apr 19 21:18:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module poly5_bb_B6 (
    input wire [0:0] in_c0_exe31_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_poly5_B6_stall_region_out_c0_exe31;
    wire [0:0] bb_poly5_B6_stall_region_out_stall_out;
    wire [0:0] bb_poly5_B6_stall_region_out_valid_out;
    wire [0:0] poly5_B6_branch_out_stall_out;
    wire [0:0] poly5_B6_branch_out_valid_out_0;
    wire [0:0] poly5_B6_branch_out_valid_out_1;
    wire [0:0] poly5_B6_merge_out_c0_exe31;
    wire [0:0] poly5_B6_merge_out_stall_out_0;
    wire [0:0] poly5_B6_merge_out_valid_out;


    // poly5_B6_branch(BLACKBOX,10)
    poly5_B6_branch thepoly5_B6_branch (
        .in_c0_exe31(bb_poly5_B6_stall_region_out_c0_exe31),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_poly5_B6_stall_region_out_valid_out),
        .out_stall_out(poly5_B6_branch_out_stall_out),
        .out_valid_out_0(poly5_B6_branch_out_valid_out_0),
        .out_valid_out_1(poly5_B6_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_poly5_B6_stall_region(BLACKBOX,2)
    poly5_bb_B6_stall_region thebb_poly5_B6_stall_region (
        .in_c0_exe31(poly5_B6_merge_out_c0_exe31),
        .in_stall_in(poly5_B6_branch_out_stall_out),
        .in_valid_in(poly5_B6_merge_out_valid_out),
        .out_c0_exe31(bb_poly5_B6_stall_region_out_c0_exe31),
        .out_stall_out(bb_poly5_B6_stall_region_out_stall_out),
        .out_valid_out(bb_poly5_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // poly5_B6_merge(BLACKBOX,11)
    poly5_B6_merge thepoly5_B6_merge (
        .in_c0_exe31_0(in_c0_exe31_0),
        .in_stall_in(bb_poly5_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe31(poly5_B6_merge_out_c0_exe31),
        .out_stall_out_0(poly5_B6_merge_out_stall_out_0),
        .out_valid_out(poly5_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out_0(GPOUT,7)
    assign out_stall_out_0 = poly5_B6_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,8)
    assign out_valid_out_0 = poly5_B6_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,9)
    assign out_valid_out_1 = poly5_B6_branch_out_valid_out_1;

endmodule
