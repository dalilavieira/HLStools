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

// SystemVerilog created from mibench_bb_B7
// SystemVerilog created on Sun Apr 19 21:41:52 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mibench_bb_B7 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [15:0] in_memdep_4_mibench_avm_readdata,
    input wire [0:0] in_memdep_4_mibench_avm_readdatavalid,
    input wire [0:0] in_memdep_4_mibench_avm_waitrequest,
    input wire [0:0] in_memdep_4_mibench_avm_writeack,
    input wire [0:0] in_notcmp1949_0,
    input wire [0:0] in_notcmp1949_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [15:0] in_unnamed_mibench7_mibench_avm_readdata,
    input wire [0:0] in_unnamed_mibench7_mibench_avm_readdatavalid,
    input wire [0:0] in_unnamed_mibench7_mibench_avm_waitrequest,
    input wire [0:0] in_unnamed_mibench7_mibench_avm_writeack,
    input wire [15:0] in_unnamed_mibench8_mibench_avm_readdata,
    input wire [0:0] in_unnamed_mibench8_mibench_avm_readdatavalid,
    input wire [0:0] in_unnamed_mibench8_mibench_avm_waitrequest,
    input wire [0:0] in_unnamed_mibench8_mibench_avm_writeack,
    input wire [15:0] in_unnamed_mibench9_mibench_avm_readdata,
    input wire [0:0] in_unnamed_mibench9_mibench_avm_readdatavalid,
    input wire [0:0] in_unnamed_mibench9_mibench_avm_waitrequest,
    input wire [0:0] in_unnamed_mibench9_mibench_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_4_mibench_avm_address,
    output wire [0:0] out_memdep_4_mibench_avm_burstcount,
    output wire [1:0] out_memdep_4_mibench_avm_byteenable,
    output wire [0:0] out_memdep_4_mibench_avm_enable,
    output wire [0:0] out_memdep_4_mibench_avm_read,
    output wire [0:0] out_memdep_4_mibench_avm_write,
    output wire [15:0] out_memdep_4_mibench_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_mibench7_mibench_avm_address,
    output wire [0:0] out_unnamed_mibench7_mibench_avm_burstcount,
    output wire [1:0] out_unnamed_mibench7_mibench_avm_byteenable,
    output wire [0:0] out_unnamed_mibench7_mibench_avm_enable,
    output wire [0:0] out_unnamed_mibench7_mibench_avm_read,
    output wire [0:0] out_unnamed_mibench7_mibench_avm_write,
    output wire [15:0] out_unnamed_mibench7_mibench_avm_writedata,
    output wire [31:0] out_unnamed_mibench8_mibench_avm_address,
    output wire [0:0] out_unnamed_mibench8_mibench_avm_burstcount,
    output wire [1:0] out_unnamed_mibench8_mibench_avm_byteenable,
    output wire [0:0] out_unnamed_mibench8_mibench_avm_enable,
    output wire [0:0] out_unnamed_mibench8_mibench_avm_read,
    output wire [0:0] out_unnamed_mibench8_mibench_avm_write,
    output wire [15:0] out_unnamed_mibench8_mibench_avm_writedata,
    output wire [31:0] out_unnamed_mibench9_mibench_avm_address,
    output wire [0:0] out_unnamed_mibench9_mibench_avm_burstcount,
    output wire [1:0] out_unnamed_mibench9_mibench_avm_byteenable,
    output wire [0:0] out_unnamed_mibench9_mibench_avm_enable,
    output wire [0:0] out_unnamed_mibench9_mibench_avm_read,
    output wire [0:0] out_unnamed_mibench9_mibench_avm_write,
    output wire [15:0] out_unnamed_mibench9_mibench_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_mibench_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mibench6_exiting_stall_out;
    wire [0:0] bb_mibench_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mibench6_exiting_valid_out;
    wire [0:0] bb_mibench_B7_stall_region_out_c0_exe274;
    wire [0:0] bb_mibench_B7_stall_region_out_c0_exe3;
    wire [31:0] bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_address;
    wire [0:0] bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_burstcount;
    wire [1:0] bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_byteenable;
    wire [0:0] bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_enable;
    wire [0:0] bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_read;
    wire [0:0] bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_write;
    wire [15:0] bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_writedata;
    wire [0:0] bb_mibench_B7_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_mibench_B7_stall_region_out_stall_out;
    wire [31:0] bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_address;
    wire [0:0] bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_burstcount;
    wire [1:0] bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_byteenable;
    wire [0:0] bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_enable;
    wire [0:0] bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_read;
    wire [0:0] bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_write;
    wire [15:0] bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_writedata;
    wire [31:0] bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_address;
    wire [0:0] bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_burstcount;
    wire [1:0] bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_byteenable;
    wire [0:0] bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_enable;
    wire [0:0] bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_read;
    wire [0:0] bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_write;
    wire [15:0] bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_writedata;
    wire [31:0] bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_address;
    wire [0:0] bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_burstcount;
    wire [1:0] bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_byteenable;
    wire [0:0] bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_enable;
    wire [0:0] bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_read;
    wire [0:0] bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_write;
    wire [15:0] bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_writedata;
    wire [0:0] bb_mibench_B7_stall_region_out_valid_out;
    wire [0:0] mibench_B7_branch_out_c0_exe3;
    wire [0:0] mibench_B7_branch_out_stall_out;
    wire [0:0] mibench_B7_branch_out_valid_out_0;
    wire [0:0] mibench_B7_branch_out_valid_out_1;
    wire [0:0] mibench_B7_merge_out_forked;
    wire [0:0] mibench_B7_merge_out_notcmp1949;
    wire [0:0] mibench_B7_merge_out_stall_out_0;
    wire [0:0] mibench_B7_merge_out_stall_out_1;
    wire [0:0] mibench_B7_merge_out_valid_out;


    // mibench_B7_merge(BLACKBOX,29)
    mibench_B7_merge themibench_B7_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_notcmp1949_0(in_notcmp1949_0),
        .in_notcmp1949_1(in_notcmp1949_1),
        .in_stall_in(bb_mibench_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(mibench_B7_merge_out_forked),
        .out_notcmp1949(mibench_B7_merge_out_notcmp1949),
        .out_stall_out_0(mibench_B7_merge_out_stall_out_0),
        .out_stall_out_1(mibench_B7_merge_out_stall_out_1),
        .out_valid_out(mibench_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_mibench_B7_stall_region(BLACKBOX,2)
    mibench_bb_B7_stall_region thebb_mibench_B7_stall_region (
        .in_flush(in_flush),
        .in_forked(mibench_B7_merge_out_forked),
        .in_memdep_4_mibench_avm_readdata(in_memdep_4_mibench_avm_readdata),
        .in_memdep_4_mibench_avm_readdatavalid(in_memdep_4_mibench_avm_readdatavalid),
        .in_memdep_4_mibench_avm_waitrequest(in_memdep_4_mibench_avm_waitrequest),
        .in_memdep_4_mibench_avm_writeack(in_memdep_4_mibench_avm_writeack),
        .in_notcmp1949(mibench_B7_merge_out_notcmp1949),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(mibench_B7_branch_out_stall_out),
        .in_unnamed_mibench7_mibench_avm_readdata(in_unnamed_mibench7_mibench_avm_readdata),
        .in_unnamed_mibench7_mibench_avm_readdatavalid(in_unnamed_mibench7_mibench_avm_readdatavalid),
        .in_unnamed_mibench7_mibench_avm_waitrequest(in_unnamed_mibench7_mibench_avm_waitrequest),
        .in_unnamed_mibench7_mibench_avm_writeack(in_unnamed_mibench7_mibench_avm_writeack),
        .in_unnamed_mibench8_mibench_avm_readdata(in_unnamed_mibench8_mibench_avm_readdata),
        .in_unnamed_mibench8_mibench_avm_readdatavalid(in_unnamed_mibench8_mibench_avm_readdatavalid),
        .in_unnamed_mibench8_mibench_avm_waitrequest(in_unnamed_mibench8_mibench_avm_waitrequest),
        .in_unnamed_mibench8_mibench_avm_writeack(in_unnamed_mibench8_mibench_avm_writeack),
        .in_unnamed_mibench9_mibench_avm_readdata(in_unnamed_mibench9_mibench_avm_readdata),
        .in_unnamed_mibench9_mibench_avm_readdatavalid(in_unnamed_mibench9_mibench_avm_readdatavalid),
        .in_unnamed_mibench9_mibench_avm_waitrequest(in_unnamed_mibench9_mibench_avm_waitrequest),
        .in_unnamed_mibench9_mibench_avm_writeack(in_unnamed_mibench9_mibench_avm_writeack),
        .in_valid_in(mibench_B7_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mibench6_exiting_stall_out(bb_mibench_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mibench6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mibench6_exiting_valid_out(bb_mibench_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mibench6_exiting_valid_out),
        .out_c0_exe274(bb_mibench_B7_stall_region_out_c0_exe274),
        .out_c0_exe3(bb_mibench_B7_stall_region_out_c0_exe3),
        .out_memdep_4_mibench_avm_address(bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_address),
        .out_memdep_4_mibench_avm_burstcount(bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_burstcount),
        .out_memdep_4_mibench_avm_byteenable(bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_byteenable),
        .out_memdep_4_mibench_avm_enable(bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_enable),
        .out_memdep_4_mibench_avm_read(bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_read),
        .out_memdep_4_mibench_avm_write(bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_write),
        .out_memdep_4_mibench_avm_writedata(bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_writedata),
        .out_pipeline_valid_out(bb_mibench_B7_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_mibench_B7_stall_region_out_stall_out),
        .out_unnamed_mibench7_mibench_avm_address(bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_address),
        .out_unnamed_mibench7_mibench_avm_burstcount(bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_burstcount),
        .out_unnamed_mibench7_mibench_avm_byteenable(bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_byteenable),
        .out_unnamed_mibench7_mibench_avm_enable(bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_enable),
        .out_unnamed_mibench7_mibench_avm_read(bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_read),
        .out_unnamed_mibench7_mibench_avm_write(bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_write),
        .out_unnamed_mibench7_mibench_avm_writedata(bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_writedata),
        .out_unnamed_mibench8_mibench_avm_address(bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_address),
        .out_unnamed_mibench8_mibench_avm_burstcount(bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_burstcount),
        .out_unnamed_mibench8_mibench_avm_byteenable(bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_byteenable),
        .out_unnamed_mibench8_mibench_avm_enable(bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_enable),
        .out_unnamed_mibench8_mibench_avm_read(bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_read),
        .out_unnamed_mibench8_mibench_avm_write(bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_write),
        .out_unnamed_mibench8_mibench_avm_writedata(bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_writedata),
        .out_unnamed_mibench9_mibench_avm_address(bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_address),
        .out_unnamed_mibench9_mibench_avm_burstcount(bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_burstcount),
        .out_unnamed_mibench9_mibench_avm_byteenable(bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_byteenable),
        .out_unnamed_mibench9_mibench_avm_enable(bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_enable),
        .out_unnamed_mibench9_mibench_avm_read(bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_read),
        .out_unnamed_mibench9_mibench_avm_write(bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_write),
        .out_unnamed_mibench9_mibench_avm_writedata(bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_writedata),
        .out_valid_out(bb_mibench_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // mibench_B7_branch(BLACKBOX,28)
    mibench_B7_branch themibench_B7_branch (
        .in_c0_exe274(bb_mibench_B7_stall_region_out_c0_exe274),
        .in_c0_exe3(bb_mibench_B7_stall_region_out_c0_exe3),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_mibench_B7_stall_region_out_valid_out),
        .out_c0_exe3(mibench_B7_branch_out_c0_exe3),
        .out_stall_out(mibench_B7_branch_out_stall_out),
        .out_valid_out_0(mibench_B7_branch_out_valid_out_0),
        .out_valid_out_1(mibench_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe3(GPOUT,30)
    assign out_c0_exe3 = mibench_B7_branch_out_c0_exe3;

    // out_exiting_stall_out(GPOUT,31)
    assign out_exiting_stall_out = bb_mibench_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mibench6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,32)
    assign out_exiting_valid_out = bb_mibench_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mibench6_exiting_valid_out;

    // out_memdep_4_mibench_avm_address(GPOUT,33)
    assign out_memdep_4_mibench_avm_address = bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_address;

    // out_memdep_4_mibench_avm_burstcount(GPOUT,34)
    assign out_memdep_4_mibench_avm_burstcount = bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_burstcount;

    // out_memdep_4_mibench_avm_byteenable(GPOUT,35)
    assign out_memdep_4_mibench_avm_byteenable = bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_byteenable;

    // out_memdep_4_mibench_avm_enable(GPOUT,36)
    assign out_memdep_4_mibench_avm_enable = bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_enable;

    // out_memdep_4_mibench_avm_read(GPOUT,37)
    assign out_memdep_4_mibench_avm_read = bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_read;

    // out_memdep_4_mibench_avm_write(GPOUT,38)
    assign out_memdep_4_mibench_avm_write = bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_write;

    // out_memdep_4_mibench_avm_writedata(GPOUT,39)
    assign out_memdep_4_mibench_avm_writedata = bb_mibench_B7_stall_region_out_memdep_4_mibench_avm_writedata;

    // out_stall_out_0(GPOUT,40)
    assign out_stall_out_0 = mibench_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,41)
    assign out_stall_out_1 = mibench_B7_merge_out_stall_out_1;

    // out_unnamed_mibench7_mibench_avm_address(GPOUT,42)
    assign out_unnamed_mibench7_mibench_avm_address = bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_address;

    // out_unnamed_mibench7_mibench_avm_burstcount(GPOUT,43)
    assign out_unnamed_mibench7_mibench_avm_burstcount = bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_burstcount;

    // out_unnamed_mibench7_mibench_avm_byteenable(GPOUT,44)
    assign out_unnamed_mibench7_mibench_avm_byteenable = bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_byteenable;

    // out_unnamed_mibench7_mibench_avm_enable(GPOUT,45)
    assign out_unnamed_mibench7_mibench_avm_enable = bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_enable;

    // out_unnamed_mibench7_mibench_avm_read(GPOUT,46)
    assign out_unnamed_mibench7_mibench_avm_read = bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_read;

    // out_unnamed_mibench7_mibench_avm_write(GPOUT,47)
    assign out_unnamed_mibench7_mibench_avm_write = bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_write;

    // out_unnamed_mibench7_mibench_avm_writedata(GPOUT,48)
    assign out_unnamed_mibench7_mibench_avm_writedata = bb_mibench_B7_stall_region_out_unnamed_mibench7_mibench_avm_writedata;

    // out_unnamed_mibench8_mibench_avm_address(GPOUT,49)
    assign out_unnamed_mibench8_mibench_avm_address = bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_address;

    // out_unnamed_mibench8_mibench_avm_burstcount(GPOUT,50)
    assign out_unnamed_mibench8_mibench_avm_burstcount = bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_burstcount;

    // out_unnamed_mibench8_mibench_avm_byteenable(GPOUT,51)
    assign out_unnamed_mibench8_mibench_avm_byteenable = bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_byteenable;

    // out_unnamed_mibench8_mibench_avm_enable(GPOUT,52)
    assign out_unnamed_mibench8_mibench_avm_enable = bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_enable;

    // out_unnamed_mibench8_mibench_avm_read(GPOUT,53)
    assign out_unnamed_mibench8_mibench_avm_read = bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_read;

    // out_unnamed_mibench8_mibench_avm_write(GPOUT,54)
    assign out_unnamed_mibench8_mibench_avm_write = bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_write;

    // out_unnamed_mibench8_mibench_avm_writedata(GPOUT,55)
    assign out_unnamed_mibench8_mibench_avm_writedata = bb_mibench_B7_stall_region_out_unnamed_mibench8_mibench_avm_writedata;

    // out_unnamed_mibench9_mibench_avm_address(GPOUT,56)
    assign out_unnamed_mibench9_mibench_avm_address = bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_address;

    // out_unnamed_mibench9_mibench_avm_burstcount(GPOUT,57)
    assign out_unnamed_mibench9_mibench_avm_burstcount = bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_burstcount;

    // out_unnamed_mibench9_mibench_avm_byteenable(GPOUT,58)
    assign out_unnamed_mibench9_mibench_avm_byteenable = bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_byteenable;

    // out_unnamed_mibench9_mibench_avm_enable(GPOUT,59)
    assign out_unnamed_mibench9_mibench_avm_enable = bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_enable;

    // out_unnamed_mibench9_mibench_avm_read(GPOUT,60)
    assign out_unnamed_mibench9_mibench_avm_read = bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_read;

    // out_unnamed_mibench9_mibench_avm_write(GPOUT,61)
    assign out_unnamed_mibench9_mibench_avm_write = bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_write;

    // out_unnamed_mibench9_mibench_avm_writedata(GPOUT,62)
    assign out_unnamed_mibench9_mibench_avm_writedata = bb_mibench_B7_stall_region_out_unnamed_mibench9_mibench_avm_writedata;

    // out_valid_out_0(GPOUT,63)
    assign out_valid_out_0 = mibench_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,64)
    assign out_valid_out_1 = mibench_B7_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,66)
    assign out_pipeline_valid_out = bb_mibench_B7_stall_region_out_pipeline_valid_out;

endmodule
