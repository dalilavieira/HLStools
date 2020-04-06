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

// SystemVerilog created from mmc_bb_B2
// SystemVerilog created on Mon Apr  6 11:17:53 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmc_bb_B2 (
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_mmc_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmc6_exiting_stall_out;
    wire [0:0] bb_mmc_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmc6_exiting_valid_out;
    wire [0:0] bb_mmc_B2_stall_region_out_c0_exe2;
    wire [31:0] bb_mmc_B2_stall_region_out_intel_reserved_ffwd_3_0;
    wire [0:0] bb_mmc_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_mmc_B2_stall_region_out_stall_out;
    wire [0:0] bb_mmc_B2_stall_region_out_valid_out;
    wire [0:0] mmc_B2_branch_out_stall_out;
    wire [0:0] mmc_B2_branch_out_valid_out_0;
    wire [0:0] mmc_B2_branch_out_valid_out_1;
    wire [0:0] mmc_B2_merge_out_forked;
    wire [0:0] mmc_B2_merge_out_stall_out_0;
    wire [0:0] mmc_B2_merge_out_stall_out_1;
    wire [0:0] mmc_B2_merge_out_valid_out;


    // mmc_B2_branch(BLACKBOX,12)
    mmc_B2_branch themmc_B2_branch (
        .in_c0_exe2(bb_mmc_B2_stall_region_out_c0_exe2),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_mmc_B2_stall_region_out_valid_out),
        .out_stall_out(mmc_B2_branch_out_stall_out),
        .out_valid_out_0(mmc_B2_branch_out_valid_out_0),
        .out_valid_out_1(mmc_B2_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // mmc_B2_merge(BLACKBOX,13)
    mmc_B2_merge themmc_B2_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_mmc_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(mmc_B2_merge_out_forked),
        .out_stall_out_0(mmc_B2_merge_out_stall_out_0),
        .out_stall_out_1(mmc_B2_merge_out_stall_out_1),
        .out_valid_out(mmc_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mmc_B2_stall_region(BLACKBOX,2)
    mmc_bb_B2_stall_region thebb_mmc_B2_stall_region (
        .in_forked(mmc_B2_merge_out_forked),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(mmc_B2_branch_out_stall_out),
        .in_valid_in(mmc_B2_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmc6_exiting_stall_out(bb_mmc_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmc6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmc6_exiting_valid_out(bb_mmc_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmc6_exiting_valid_out),
        .out_c0_exe2(bb_mmc_B2_stall_region_out_c0_exe2),
        .out_intel_reserved_ffwd_3_0(bb_mmc_B2_stall_region_out_intel_reserved_ffwd_3_0),
        .out_pipeline_valid_out(bb_mmc_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_mmc_B2_stall_region_out_stall_out),
        .out_valid_out(bb_mmc_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,14)
    assign out_exiting_stall_out = bb_mmc_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmc6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,15)
    assign out_exiting_valid_out = bb_mmc_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmc6_exiting_valid_out;

    // out_intel_reserved_ffwd_3_0(GPOUT,16)
    assign out_intel_reserved_ffwd_3_0 = bb_mmc_B2_stall_region_out_intel_reserved_ffwd_3_0;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = mmc_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,18)
    assign out_stall_out_1 = mmc_B2_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,19)
    assign out_valid_out_0 = mmc_B2_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,20)
    assign out_valid_out_1 = mmc_B2_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,22)
    assign out_pipeline_valid_out = bb_mmc_B2_stall_region_out_pipeline_valid_out;

endmodule
