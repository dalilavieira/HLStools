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

// SystemVerilog created from cesarcipher_bb_B3
// SystemVerilog created on Mon Apr  6 10:27:12 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cesarcipher_bb_B3 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_lm1_cesarcipher_avm_readdata,
    input wire [0:0] in_lm1_cesarcipher_avm_readdatavalid,
    input wire [0:0] in_lm1_cesarcipher_avm_waitrequest,
    input wire [0:0] in_lm1_cesarcipher_avm_writeack,
    input wire [0:0] in_notcmp15_0,
    input wire [0:0] in_notcmp15_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_lm1_cesarcipher_avm_address,
    output wire [0:0] out_lm1_cesarcipher_avm_burstcount,
    output wire [7:0] out_lm1_cesarcipher_avm_byteenable,
    output wire [0:0] out_lm1_cesarcipher_avm_enable,
    output wire [0:0] out_lm1_cesarcipher_avm_read,
    output wire [0:0] out_lm1_cesarcipher_avm_write,
    output wire [63:0] out_lm1_cesarcipher_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_cesarcipher_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cesarcipher6_exiting_stall_out;
    wire [0:0] bb_cesarcipher_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cesarcipher6_exiting_valid_out;
    wire [0:0] bb_cesarcipher_B3_stall_region_out_c0_exe228;
    wire [0:0] bb_cesarcipher_B3_stall_region_out_c0_exe3;
    wire [63:0] bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_address;
    wire [0:0] bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_burstcount;
    wire [7:0] bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_byteenable;
    wire [0:0] bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_enable;
    wire [0:0] bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_read;
    wire [0:0] bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_write;
    wire [63:0] bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_writedata;
    wire [0:0] bb_cesarcipher_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_cesarcipher_B3_stall_region_out_stall_out;
    wire [0:0] bb_cesarcipher_B3_stall_region_out_valid_out;
    wire [0:0] cesarcipher_B3_branch_out_c0_exe3;
    wire [0:0] cesarcipher_B3_branch_out_stall_out;
    wire [0:0] cesarcipher_B3_branch_out_valid_out_0;
    wire [0:0] cesarcipher_B3_branch_out_valid_out_1;
    wire [0:0] cesarcipher_B3_merge_out_forked;
    wire [0:0] cesarcipher_B3_merge_out_notcmp15;
    wire [0:0] cesarcipher_B3_merge_out_stall_out_0;
    wire [0:0] cesarcipher_B3_merge_out_stall_out_1;
    wire [0:0] cesarcipher_B3_merge_out_valid_out;


    // cesarcipher_B3_merge(BLACKBOX,4)
    cesarcipher_B3_merge thecesarcipher_B3_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_notcmp15_0(in_notcmp15_0),
        .in_notcmp15_1(in_notcmp15_1),
        .in_stall_in(bb_cesarcipher_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(cesarcipher_B3_merge_out_forked),
        .out_notcmp15(cesarcipher_B3_merge_out_notcmp15),
        .out_stall_out_0(cesarcipher_B3_merge_out_stall_out_0),
        .out_stall_out_1(cesarcipher_B3_merge_out_stall_out_1),
        .out_valid_out(cesarcipher_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cesarcipher_B3_stall_region(BLACKBOX,2)
    cesarcipher_bb_B3_stall_region thebb_cesarcipher_B3_stall_region (
        .in_flush(in_flush),
        .in_forked(cesarcipher_B3_merge_out_forked),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_lm1_cesarcipher_avm_readdata(in_lm1_cesarcipher_avm_readdata),
        .in_lm1_cesarcipher_avm_readdatavalid(in_lm1_cesarcipher_avm_readdatavalid),
        .in_lm1_cesarcipher_avm_waitrequest(in_lm1_cesarcipher_avm_waitrequest),
        .in_lm1_cesarcipher_avm_writeack(in_lm1_cesarcipher_avm_writeack),
        .in_notcmp15(cesarcipher_B3_merge_out_notcmp15),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(cesarcipher_B3_branch_out_stall_out),
        .in_valid_in(cesarcipher_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cesarcipher6_exiting_stall_out(bb_cesarcipher_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cesarcipher6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cesarcipher6_exiting_valid_out(bb_cesarcipher_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cesarcipher6_exiting_valid_out),
        .out_c0_exe228(bb_cesarcipher_B3_stall_region_out_c0_exe228),
        .out_c0_exe3(bb_cesarcipher_B3_stall_region_out_c0_exe3),
        .out_lm1_cesarcipher_avm_address(bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_address),
        .out_lm1_cesarcipher_avm_burstcount(bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_burstcount),
        .out_lm1_cesarcipher_avm_byteenable(bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_byteenable),
        .out_lm1_cesarcipher_avm_enable(bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_enable),
        .out_lm1_cesarcipher_avm_read(bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_read),
        .out_lm1_cesarcipher_avm_write(bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_write),
        .out_lm1_cesarcipher_avm_writedata(bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_writedata),
        .out_pipeline_valid_out(bb_cesarcipher_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_cesarcipher_B3_stall_region_out_stall_out),
        .out_valid_out(bb_cesarcipher_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // cesarcipher_B3_branch(BLACKBOX,3)
    cesarcipher_B3_branch thecesarcipher_B3_branch (
        .in_c0_exe228(bb_cesarcipher_B3_stall_region_out_c0_exe228),
        .in_c0_exe3(bb_cesarcipher_B3_stall_region_out_c0_exe3),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_cesarcipher_B3_stall_region_out_valid_out),
        .out_c0_exe3(cesarcipher_B3_branch_out_c0_exe3),
        .out_stall_out(cesarcipher_B3_branch_out_stall_out),
        .out_valid_out_0(cesarcipher_B3_branch_out_valid_out_0),
        .out_valid_out_1(cesarcipher_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe3(GPOUT,20)
    assign out_c0_exe3 = cesarcipher_B3_branch_out_c0_exe3;

    // out_exiting_stall_out(GPOUT,21)
    assign out_exiting_stall_out = bb_cesarcipher_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cesarcipher6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,22)
    assign out_exiting_valid_out = bb_cesarcipher_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cesarcipher6_exiting_valid_out;

    // out_lm1_cesarcipher_avm_address(GPOUT,23)
    assign out_lm1_cesarcipher_avm_address = bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_address;

    // out_lm1_cesarcipher_avm_burstcount(GPOUT,24)
    assign out_lm1_cesarcipher_avm_burstcount = bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_burstcount;

    // out_lm1_cesarcipher_avm_byteenable(GPOUT,25)
    assign out_lm1_cesarcipher_avm_byteenable = bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_byteenable;

    // out_lm1_cesarcipher_avm_enable(GPOUT,26)
    assign out_lm1_cesarcipher_avm_enable = bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_enable;

    // out_lm1_cesarcipher_avm_read(GPOUT,27)
    assign out_lm1_cesarcipher_avm_read = bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_read;

    // out_lm1_cesarcipher_avm_write(GPOUT,28)
    assign out_lm1_cesarcipher_avm_write = bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_write;

    // out_lm1_cesarcipher_avm_writedata(GPOUT,29)
    assign out_lm1_cesarcipher_avm_writedata = bb_cesarcipher_B3_stall_region_out_lm1_cesarcipher_avm_writedata;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = cesarcipher_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,31)
    assign out_stall_out_1 = cesarcipher_B3_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,32)
    assign out_valid_out_0 = cesarcipher_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,33)
    assign out_valid_out_1 = cesarcipher_B3_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,35)
    assign out_pipeline_valid_out = bb_cesarcipher_B3_stall_region_out_pipeline_valid_out;

endmodule
