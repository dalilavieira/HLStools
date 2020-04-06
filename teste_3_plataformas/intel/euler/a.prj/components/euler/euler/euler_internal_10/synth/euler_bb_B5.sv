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

// SystemVerilog created from euler_bb_B5
// SystemVerilog created on Mon Apr  6 10:17:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_bb_B5 (
    input wire [63:0] in_c0_exe2561_0,
    input wire [0:0] in_c0_exe4582_0,
    input wire [0:0] in_c0_exe5593_0,
    input wire [0:0] in_c0_exe64_0,
    input wire [0:0] in_c0_exe75_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_euler_B5_stall_region_out_c0_exe75;
    wire [63:0] bb_euler_B5_stall_region_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_euler_B5_stall_region_out_stall_out;
    wire [0:0] bb_euler_B5_stall_region_out_valid_out;
    wire [0:0] euler_B5_branch_out_stall_out;
    wire [0:0] euler_B5_branch_out_valid_out_0;
    wire [0:0] euler_B5_branch_out_valid_out_1;
    wire [63:0] euler_B5_merge_out_c0_exe2561;
    wire [0:0] euler_B5_merge_out_c0_exe4582;
    wire [0:0] euler_B5_merge_out_c0_exe5593;
    wire [0:0] euler_B5_merge_out_c0_exe64;
    wire [0:0] euler_B5_merge_out_c0_exe75;
    wire [0:0] euler_B5_merge_out_stall_out_0;
    wire [0:0] euler_B5_merge_out_valid_out;


    // euler_B5_branch(BLACKBOX,3)
    euler_B5_branch theeuler_B5_branch (
        .in_c0_exe75(bb_euler_B5_stall_region_out_c0_exe75),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_euler_B5_stall_region_out_valid_out),
        .out_stall_out(euler_B5_branch_out_stall_out),
        .out_valid_out_0(euler_B5_branch_out_valid_out_0),
        .out_valid_out_1(euler_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // euler_B5_merge(BLACKBOX,4)
    euler_B5_merge theeuler_B5_merge (
        .in_c0_exe2561_0(in_c0_exe2561_0),
        .in_c0_exe4582_0(in_c0_exe4582_0),
        .in_c0_exe5593_0(in_c0_exe5593_0),
        .in_c0_exe64_0(in_c0_exe64_0),
        .in_c0_exe75_0(in_c0_exe75_0),
        .in_stall_in(bb_euler_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe2561(euler_B5_merge_out_c0_exe2561),
        .out_c0_exe4582(euler_B5_merge_out_c0_exe4582),
        .out_c0_exe5593(euler_B5_merge_out_c0_exe5593),
        .out_c0_exe64(euler_B5_merge_out_c0_exe64),
        .out_c0_exe75(euler_B5_merge_out_c0_exe75),
        .out_stall_out_0(euler_B5_merge_out_stall_out_0),
        .out_valid_out(euler_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_euler_B5_stall_region(BLACKBOX,2)
    euler_bb_B5_stall_region thebb_euler_B5_stall_region (
        .in_c0_exe2561(euler_B5_merge_out_c0_exe2561),
        .in_c0_exe4582(euler_B5_merge_out_c0_exe4582),
        .in_c0_exe5593(euler_B5_merge_out_c0_exe5593),
        .in_c0_exe64(euler_B5_merge_out_c0_exe64),
        .in_c0_exe75(euler_B5_merge_out_c0_exe75),
        .in_stall_in(euler_B5_branch_out_stall_out),
        .in_valid_in(euler_B5_merge_out_valid_out),
        .out_c0_exe75(bb_euler_B5_stall_region_out_c0_exe75),
        .out_intel_reserved_ffwd_2_0(bb_euler_B5_stall_region_out_intel_reserved_ffwd_2_0),
        .out_stall_out(bb_euler_B5_stall_region_out_stall_out),
        .out_valid_out(bb_euler_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_2_0(GPOUT,13)
    assign out_intel_reserved_ffwd_2_0 = bb_euler_B5_stall_region_out_intel_reserved_ffwd_2_0;

    // out_stall_out_0(GPOUT,14)
    assign out_stall_out_0 = euler_B5_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,15)
    assign out_valid_out_0 = euler_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,16)
    assign out_valid_out_1 = euler_B5_branch_out_valid_out_1;

endmodule
