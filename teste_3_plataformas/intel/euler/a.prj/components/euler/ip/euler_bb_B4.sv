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

// SystemVerilog created from euler_bb_B4
// SystemVerilog created on Mon Apr  6 11:17:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_bb_B4 (
    input wire [0:0] in_forked24_0,
    input wire [0:0] in_forked24_1,
    input wire [0:0] in_forked35_0,
    input wire [0:0] in_forked35_1,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_notcmp2536_0,
    input wire [0:0] in_notcmp2536_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [32:0] in_unnamed_euler7_0,
    input wire [32:0] in_unnamed_euler7_1,
    input wire [0:0] in_unnamed_euler8_0,
    input wire [0:0] in_unnamed_euler8_1,
    input wire [0:0] in_unnamed_euler9_0,
    input wire [0:0] in_unnamed_euler9_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_c0_exe256,
    output wire [0:0] out_c0_exe458,
    output wire [0:0] out_c0_exe559,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_euler_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_stall_out;
    wire [0:0] bb_euler_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_valid_out;
    wire [63:0] bb_euler_B4_stall_region_out_c0_exe256;
    wire [0:0] bb_euler_B4_stall_region_out_c0_exe357;
    wire [0:0] bb_euler_B4_stall_region_out_c0_exe458;
    wire [0:0] bb_euler_B4_stall_region_out_c0_exe559;
    wire [0:0] bb_euler_B4_stall_region_out_c0_exe6;
    wire [0:0] bb_euler_B4_stall_region_out_c0_exe7;
    wire [0:0] bb_euler_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_euler_B4_stall_region_out_stall_out;
    wire [0:0] bb_euler_B4_stall_region_out_valid_out;
    wire [63:0] euler_B4_branch_out_c0_exe256;
    wire [0:0] euler_B4_branch_out_c0_exe458;
    wire [0:0] euler_B4_branch_out_c0_exe559;
    wire [0:0] euler_B4_branch_out_c0_exe6;
    wire [0:0] euler_B4_branch_out_c0_exe7;
    wire [0:0] euler_B4_branch_out_stall_out;
    wire [0:0] euler_B4_branch_out_valid_out_0;
    wire [0:0] euler_B4_branch_out_valid_out_1;
    wire [0:0] euler_B4_merge_out_forked24;
    wire [0:0] euler_B4_merge_out_forked35;
    wire [0:0] euler_B4_merge_out_notcmp2536;
    wire [0:0] euler_B4_merge_out_stall_out_0;
    wire [0:0] euler_B4_merge_out_stall_out_1;
    wire [32:0] euler_B4_merge_out_unnamed_euler7;
    wire [0:0] euler_B4_merge_out_unnamed_euler8;
    wire [0:0] euler_B4_merge_out_unnamed_euler9;
    wire [0:0] euler_B4_merge_out_valid_out;


    // euler_B4_merge(BLACKBOX,4)
    euler_B4_merge theeuler_B4_merge (
        .in_forked24_0(in_forked24_0),
        .in_forked24_1(in_forked24_1),
        .in_forked35_0(in_forked35_0),
        .in_forked35_1(in_forked35_1),
        .in_notcmp2536_0(in_notcmp2536_0),
        .in_notcmp2536_1(in_notcmp2536_1),
        .in_stall_in(bb_euler_B4_stall_region_out_stall_out),
        .in_unnamed_euler7_0(in_unnamed_euler7_0),
        .in_unnamed_euler7_1(in_unnamed_euler7_1),
        .in_unnamed_euler8_0(in_unnamed_euler8_0),
        .in_unnamed_euler8_1(in_unnamed_euler8_1),
        .in_unnamed_euler9_0(in_unnamed_euler9_0),
        .in_unnamed_euler9_1(in_unnamed_euler9_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked24(euler_B4_merge_out_forked24),
        .out_forked35(euler_B4_merge_out_forked35),
        .out_notcmp2536(euler_B4_merge_out_notcmp2536),
        .out_stall_out_0(euler_B4_merge_out_stall_out_0),
        .out_stall_out_1(euler_B4_merge_out_stall_out_1),
        .out_unnamed_euler7(euler_B4_merge_out_unnamed_euler7),
        .out_unnamed_euler8(euler_B4_merge_out_unnamed_euler8),
        .out_unnamed_euler9(euler_B4_merge_out_unnamed_euler9),
        .out_valid_out(euler_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_euler_B4_stall_region(BLACKBOX,2)
    euler_bb_B4_stall_region thebb_euler_B4_stall_region (
        .in_forked24(euler_B4_merge_out_forked24),
        .in_forked35(euler_B4_merge_out_forked35),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_notcmp2536(euler_B4_merge_out_notcmp2536),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(euler_B4_branch_out_stall_out),
        .in_unnamed_euler7(euler_B4_merge_out_unnamed_euler7),
        .in_unnamed_euler8(euler_B4_merge_out_unnamed_euler8),
        .in_unnamed_euler9(euler_B4_merge_out_unnamed_euler9),
        .in_valid_in(euler_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_stall_out(bb_euler_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_valid_out(bb_euler_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_valid_out),
        .out_c0_exe256(bb_euler_B4_stall_region_out_c0_exe256),
        .out_c0_exe357(bb_euler_B4_stall_region_out_c0_exe357),
        .out_c0_exe458(bb_euler_B4_stall_region_out_c0_exe458),
        .out_c0_exe559(bb_euler_B4_stall_region_out_c0_exe559),
        .out_c0_exe6(bb_euler_B4_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_euler_B4_stall_region_out_c0_exe7),
        .out_pipeline_valid_out(bb_euler_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_euler_B4_stall_region_out_stall_out),
        .out_valid_out(bb_euler_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // euler_B4_branch(BLACKBOX,3)
    euler_B4_branch theeuler_B4_branch (
        .in_c0_exe256(bb_euler_B4_stall_region_out_c0_exe256),
        .in_c0_exe357(bb_euler_B4_stall_region_out_c0_exe357),
        .in_c0_exe458(bb_euler_B4_stall_region_out_c0_exe458),
        .in_c0_exe559(bb_euler_B4_stall_region_out_c0_exe559),
        .in_c0_exe6(bb_euler_B4_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_euler_B4_stall_region_out_c0_exe7),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_euler_B4_stall_region_out_valid_out),
        .out_c0_exe256(euler_B4_branch_out_c0_exe256),
        .out_c0_exe458(euler_B4_branch_out_c0_exe458),
        .out_c0_exe559(euler_B4_branch_out_c0_exe559),
        .out_c0_exe6(euler_B4_branch_out_c0_exe6),
        .out_c0_exe7(euler_B4_branch_out_c0_exe7),
        .out_stall_out(euler_B4_branch_out_stall_out),
        .out_valid_out_0(euler_B4_branch_out_valid_out_0),
        .out_valid_out_1(euler_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe256(GPOUT,22)
    assign out_c0_exe256 = euler_B4_branch_out_c0_exe256;

    // out_c0_exe458(GPOUT,23)
    assign out_c0_exe458 = euler_B4_branch_out_c0_exe458;

    // out_c0_exe559(GPOUT,24)
    assign out_c0_exe559 = euler_B4_branch_out_c0_exe559;

    // out_c0_exe6(GPOUT,25)
    assign out_c0_exe6 = euler_B4_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,26)
    assign out_c0_exe7 = euler_B4_branch_out_c0_exe7;

    // out_exiting_stall_out(GPOUT,27)
    assign out_exiting_stall_out = bb_euler_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,28)
    assign out_exiting_valid_out = bb_euler_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_valid_out;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = euler_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,30)
    assign out_stall_out_1 = euler_B4_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,31)
    assign out_valid_out_0 = euler_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,32)
    assign out_valid_out_1 = euler_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,34)
    assign out_pipeline_valid_out = bb_euler_B4_stall_region_out_pipeline_valid_out;

endmodule
