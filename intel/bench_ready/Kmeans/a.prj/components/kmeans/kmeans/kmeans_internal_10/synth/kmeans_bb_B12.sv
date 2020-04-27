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

// SystemVerilog created from kmeans_bb_B12
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_bb_B12 (
    input wire [0:0] in_forked111_0,
    input wire [0:0] in_forked111_1,
    input wire [31:0] in_i27_047_pop32130_0,
    input wire [31:0] in_i27_047_pop32130_1,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    input wire [0:0] in_notcmp46127_0,
    input wire [0:0] in_notcmp46127_1,
    input wire [0:0] in_notcmp51108_pop33133_0,
    input wire [0:0] in_notcmp51108_pop33133_1,
    input wire [0:0] in_notcmp51126_0,
    input wire [0:0] in_notcmp51126_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [31:0] out_c0_exe1209,
    output wire [15:0] out_c0_exe2210,
    output wire [0:0] out_c0_exe3211,
    output wire [0:0] out_c0_exe4212,
    output wire [0:0] out_c0_exe5213,
    output wire [0:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kmeans_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_stall_out;
    wire [0:0] bb_kmeans_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_valid_out;
    wire [0:0] bb_kmeans_B12_stall_region_out_c0_exe10;
    wire [31:0] bb_kmeans_B12_stall_region_out_c0_exe11;
    wire [0:0] bb_kmeans_B12_stall_region_out_c0_exe12;
    wire [31:0] bb_kmeans_B12_stall_region_out_c0_exe1209;
    wire [15:0] bb_kmeans_B12_stall_region_out_c0_exe2210;
    wire [0:0] bb_kmeans_B12_stall_region_out_c0_exe3211;
    wire [0:0] bb_kmeans_B12_stall_region_out_c0_exe4212;
    wire [0:0] bb_kmeans_B12_stall_region_out_c0_exe5213;
    wire [0:0] bb_kmeans_B12_stall_region_out_c0_exe6;
    wire [31:0] bb_kmeans_B12_stall_region_out_c0_exe7;
    wire [0:0] bb_kmeans_B12_stall_region_out_c0_exe8;
    wire [0:0] bb_kmeans_B12_stall_region_out_c0_exe9;
    wire [0:0] bb_kmeans_B12_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kmeans_B12_stall_region_out_stall_out;
    wire [0:0] bb_kmeans_B12_stall_region_out_valid_out;
    wire [0:0] kmeans_B12_branch_out_c0_exe10;
    wire [31:0] kmeans_B12_branch_out_c0_exe11;
    wire [0:0] kmeans_B12_branch_out_c0_exe12;
    wire [31:0] kmeans_B12_branch_out_c0_exe1209;
    wire [15:0] kmeans_B12_branch_out_c0_exe2210;
    wire [0:0] kmeans_B12_branch_out_c0_exe3211;
    wire [0:0] kmeans_B12_branch_out_c0_exe4212;
    wire [0:0] kmeans_B12_branch_out_c0_exe5213;
    wire [0:0] kmeans_B12_branch_out_c0_exe6;
    wire [31:0] kmeans_B12_branch_out_c0_exe7;
    wire [0:0] kmeans_B12_branch_out_c0_exe8;
    wire [0:0] kmeans_B12_branch_out_c0_exe9;
    wire [0:0] kmeans_B12_branch_out_stall_out;
    wire [0:0] kmeans_B12_branch_out_valid_out_0;
    wire [0:0] kmeans_B12_merge_out_forked111;
    wire [31:0] kmeans_B12_merge_out_i27_047_pop32130;
    wire [0:0] kmeans_B12_merge_out_notcmp46127;
    wire [0:0] kmeans_B12_merge_out_notcmp51108_pop33133;
    wire [0:0] kmeans_B12_merge_out_notcmp51126;
    wire [0:0] kmeans_B12_merge_out_stall_out_0;
    wire [0:0] kmeans_B12_merge_out_stall_out_1;
    wire [0:0] kmeans_B12_merge_out_valid_out;


    // kmeans_B12_merge(BLACKBOX,20)
    kmeans_B12_merge thekmeans_B12_merge (
        .in_forked111_0(in_forked111_0),
        .in_forked111_1(in_forked111_1),
        .in_i27_047_pop32130_0(in_i27_047_pop32130_0),
        .in_i27_047_pop32130_1(in_i27_047_pop32130_1),
        .in_notcmp46127_0(in_notcmp46127_0),
        .in_notcmp46127_1(in_notcmp46127_1),
        .in_notcmp51108_pop33133_0(in_notcmp51108_pop33133_0),
        .in_notcmp51108_pop33133_1(in_notcmp51108_pop33133_1),
        .in_notcmp51126_0(in_notcmp51126_0),
        .in_notcmp51126_1(in_notcmp51126_1),
        .in_stall_in(bb_kmeans_B12_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked111(kmeans_B12_merge_out_forked111),
        .out_i27_047_pop32130(kmeans_B12_merge_out_i27_047_pop32130),
        .out_notcmp46127(kmeans_B12_merge_out_notcmp46127),
        .out_notcmp51108_pop33133(kmeans_B12_merge_out_notcmp51108_pop33133),
        .out_notcmp51126(kmeans_B12_merge_out_notcmp51126),
        .out_stall_out_0(kmeans_B12_merge_out_stall_out_0),
        .out_stall_out_1(kmeans_B12_merge_out_stall_out_1),
        .out_valid_out(kmeans_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B12_stall_region(BLACKBOX,2)
    kmeans_bb_B12_stall_region thebb_kmeans_B12_stall_region (
        .in_forked111(kmeans_B12_merge_out_forked111),
        .in_i27_047_pop32130(kmeans_B12_merge_out_i27_047_pop32130),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_notcmp46127(kmeans_B12_merge_out_notcmp46127),
        .in_notcmp51108_pop33133(kmeans_B12_merge_out_notcmp51108_pop33133),
        .in_notcmp51126(kmeans_B12_merge_out_notcmp51126),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kmeans_B12_branch_out_stall_out),
        .in_valid_in(kmeans_B12_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_stall_out(bb_kmeans_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_valid_out(bb_kmeans_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_valid_out),
        .out_c0_exe10(bb_kmeans_B12_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_kmeans_B12_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_kmeans_B12_stall_region_out_c0_exe12),
        .out_c0_exe1209(bb_kmeans_B12_stall_region_out_c0_exe1209),
        .out_c0_exe2210(bb_kmeans_B12_stall_region_out_c0_exe2210),
        .out_c0_exe3211(bb_kmeans_B12_stall_region_out_c0_exe3211),
        .out_c0_exe4212(bb_kmeans_B12_stall_region_out_c0_exe4212),
        .out_c0_exe5213(bb_kmeans_B12_stall_region_out_c0_exe5213),
        .out_c0_exe6(bb_kmeans_B12_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_kmeans_B12_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_kmeans_B12_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_kmeans_B12_stall_region_out_c0_exe9),
        .out_pipeline_valid_out(bb_kmeans_B12_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kmeans_B12_stall_region_out_stall_out),
        .out_valid_out(bb_kmeans_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // kmeans_B12_branch(BLACKBOX,19)
    kmeans_B12_branch thekmeans_B12_branch (
        .in_c0_exe10(bb_kmeans_B12_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_kmeans_B12_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_kmeans_B12_stall_region_out_c0_exe12),
        .in_c0_exe1209(bb_kmeans_B12_stall_region_out_c0_exe1209),
        .in_c0_exe2210(bb_kmeans_B12_stall_region_out_c0_exe2210),
        .in_c0_exe3211(bb_kmeans_B12_stall_region_out_c0_exe3211),
        .in_c0_exe4212(bb_kmeans_B12_stall_region_out_c0_exe4212),
        .in_c0_exe5213(bb_kmeans_B12_stall_region_out_c0_exe5213),
        .in_c0_exe6(bb_kmeans_B12_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_kmeans_B12_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_kmeans_B12_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_kmeans_B12_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_kmeans_B12_stall_region_out_valid_out),
        .out_c0_exe10(kmeans_B12_branch_out_c0_exe10),
        .out_c0_exe11(kmeans_B12_branch_out_c0_exe11),
        .out_c0_exe12(kmeans_B12_branch_out_c0_exe12),
        .out_c0_exe1209(kmeans_B12_branch_out_c0_exe1209),
        .out_c0_exe2210(kmeans_B12_branch_out_c0_exe2210),
        .out_c0_exe3211(kmeans_B12_branch_out_c0_exe3211),
        .out_c0_exe4212(kmeans_B12_branch_out_c0_exe4212),
        .out_c0_exe5213(kmeans_B12_branch_out_c0_exe5213),
        .out_c0_exe6(kmeans_B12_branch_out_c0_exe6),
        .out_c0_exe7(kmeans_B12_branch_out_c0_exe7),
        .out_c0_exe8(kmeans_B12_branch_out_c0_exe8),
        .out_c0_exe9(kmeans_B12_branch_out_c0_exe9),
        .out_stall_out(kmeans_B12_branch_out_stall_out),
        .out_valid_out_0(kmeans_B12_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,21)
    assign out_c0_exe10 = kmeans_B12_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,22)
    assign out_c0_exe11 = kmeans_B12_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,23)
    assign out_c0_exe12 = kmeans_B12_branch_out_c0_exe12;

    // out_c0_exe1209(GPOUT,24)
    assign out_c0_exe1209 = kmeans_B12_branch_out_c0_exe1209;

    // out_c0_exe2210(GPOUT,25)
    assign out_c0_exe2210 = kmeans_B12_branch_out_c0_exe2210;

    // out_c0_exe3211(GPOUT,26)
    assign out_c0_exe3211 = kmeans_B12_branch_out_c0_exe3211;

    // out_c0_exe4212(GPOUT,27)
    assign out_c0_exe4212 = kmeans_B12_branch_out_c0_exe4212;

    // out_c0_exe5213(GPOUT,28)
    assign out_c0_exe5213 = kmeans_B12_branch_out_c0_exe5213;

    // out_c0_exe6(GPOUT,29)
    assign out_c0_exe6 = kmeans_B12_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,30)
    assign out_c0_exe7 = kmeans_B12_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,31)
    assign out_c0_exe8 = kmeans_B12_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,32)
    assign out_c0_exe9 = kmeans_B12_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,33)
    assign out_exiting_stall_out = bb_kmeans_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,34)
    assign out_exiting_valid_out = bb_kmeans_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_valid_out;

    // out_stall_out_0(GPOUT,35)
    assign out_stall_out_0 = kmeans_B12_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,36)
    assign out_stall_out_1 = kmeans_B12_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,37)
    assign out_valid_out_0 = kmeans_B12_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,39)
    assign out_pipeline_valid_out = bb_kmeans_B12_stall_region_out_pipeline_valid_out;

endmodule
