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

// SystemVerilog created from floydWarshall_bb_B3
// SystemVerilog created on Mon Apr  6 10:28:01 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_bb_B3 (
    input wire [0:0] in_exitcond3184_0,
    input wire [0:0] in_exitcond3184_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked102_0,
    input wire [0:0] in_forked102_1,
    input wire [0:0] in_forked141183_0,
    input wire [0:0] in_forked141183_1,
    input wire [31:0] in_i_030_pop13186_0,
    input wire [31:0] in_i_030_pop13186_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_notcmp133185_0,
    input wire [0:0] in_notcmp133185_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [63:0] in_unnamed_floydWarshall4_floydWarshall_avm_readdata,
    input wire [0:0] in_unnamed_floydWarshall4_floydWarshall_avm_readdatavalid,
    input wire [0:0] in_unnamed_floydWarshall4_floydWarshall_avm_waitrequest,
    input wire [0:0] in_unnamed_floydWarshall4_floydWarshall_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe3244,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    output wire [31:0] out_intel_reserved_ffwd_12_0,
    output wire [31:0] out_intel_reserved_ffwd_13_0,
    output wire [31:0] out_intel_reserved_ffwd_14_0,
    output wire [31:0] out_intel_reserved_ffwd_15_0,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_floydWarshall4_floydWarshall_avm_address,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_burstcount,
    output wire [7:0] out_unnamed_floydWarshall4_floydWarshall_avm_byteenable,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_enable,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_read,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_write,
    output wire [63:0] out_unnamed_floydWarshall4_floydWarshall_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_floydWarshall_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_stall_out;
    wire [0:0] bb_floydWarshall_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_valid_out;
    wire [0:0] bb_floydWarshall_B3_stall_region_out_c0_exe2243;
    wire [0:0] bb_floydWarshall_B3_stall_region_out_c0_exe3244;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_10_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_11_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_12_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_13_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_14_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_15_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_16_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_7_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_8_0;
    wire [31:0] bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_floydWarshall_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_floydWarshall_B3_stall_region_out_stall_out;
    wire [63:0] bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_address;
    wire [0:0] bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_burstcount;
    wire [7:0] bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_byteenable;
    wire [0:0] bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_enable;
    wire [0:0] bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_read;
    wire [0:0] bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_write;
    wire [63:0] bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_writedata;
    wire [0:0] bb_floydWarshall_B3_stall_region_out_valid_out;
    wire [0:0] floydWarshall_B3_branch_out_c0_exe3244;
    wire [0:0] floydWarshall_B3_branch_out_stall_out;
    wire [0:0] floydWarshall_B3_branch_out_valid_out_0;
    wire [0:0] floydWarshall_B3_branch_out_valid_out_1;
    wire [0:0] floydWarshall_B3_merge_out_exitcond3184;
    wire [0:0] floydWarshall_B3_merge_out_forked102;
    wire [0:0] floydWarshall_B3_merge_out_forked141183;
    wire [31:0] floydWarshall_B3_merge_out_i_030_pop13186;
    wire [0:0] floydWarshall_B3_merge_out_notcmp133185;
    wire [0:0] floydWarshall_B3_merge_out_stall_out_0;
    wire [0:0] floydWarshall_B3_merge_out_stall_out_1;
    wire [0:0] floydWarshall_B3_merge_out_valid_out;


    // floydWarshall_B3_merge(BLACKBOX,4)
    floydWarshall_B3_merge thefloydWarshall_B3_merge (
        .in_exitcond3184_0(in_exitcond3184_0),
        .in_exitcond3184_1(in_exitcond3184_1),
        .in_forked102_0(in_forked102_0),
        .in_forked102_1(in_forked102_1),
        .in_forked141183_0(in_forked141183_0),
        .in_forked141183_1(in_forked141183_1),
        .in_i_030_pop13186_0(in_i_030_pop13186_0),
        .in_i_030_pop13186_1(in_i_030_pop13186_1),
        .in_notcmp133185_0(in_notcmp133185_0),
        .in_notcmp133185_1(in_notcmp133185_1),
        .in_stall_in(bb_floydWarshall_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond3184(floydWarshall_B3_merge_out_exitcond3184),
        .out_forked102(floydWarshall_B3_merge_out_forked102),
        .out_forked141183(floydWarshall_B3_merge_out_forked141183),
        .out_i_030_pop13186(floydWarshall_B3_merge_out_i_030_pop13186),
        .out_notcmp133185(floydWarshall_B3_merge_out_notcmp133185),
        .out_stall_out_0(floydWarshall_B3_merge_out_stall_out_0),
        .out_stall_out_1(floydWarshall_B3_merge_out_stall_out_1),
        .out_valid_out(floydWarshall_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_floydWarshall_B3_stall_region(BLACKBOX,2)
    floydWarshall_bb_B3_stall_region thebb_floydWarshall_B3_stall_region (
        .in_exitcond3184(floydWarshall_B3_merge_out_exitcond3184),
        .in_flush(in_flush),
        .in_forked102(floydWarshall_B3_merge_out_forked102),
        .in_forked141183(floydWarshall_B3_merge_out_forked141183),
        .in_i_030_pop13186(floydWarshall_B3_merge_out_i_030_pop13186),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_notcmp133185(floydWarshall_B3_merge_out_notcmp133185),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(floydWarshall_B3_branch_out_stall_out),
        .in_unnamed_floydWarshall4_floydWarshall_avm_readdata(in_unnamed_floydWarshall4_floydWarshall_avm_readdata),
        .in_unnamed_floydWarshall4_floydWarshall_avm_readdatavalid(in_unnamed_floydWarshall4_floydWarshall_avm_readdatavalid),
        .in_unnamed_floydWarshall4_floydWarshall_avm_waitrequest(in_unnamed_floydWarshall4_floydWarshall_avm_waitrequest),
        .in_unnamed_floydWarshall4_floydWarshall_avm_writeack(in_unnamed_floydWarshall4_floydWarshall_avm_writeack),
        .in_valid_in(floydWarshall_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_stall_out(bb_floydWarshall_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_valid_out(bb_floydWarshall_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_valid_out),
        .out_c0_exe2243(bb_floydWarshall_B3_stall_region_out_c0_exe2243),
        .out_c0_exe3244(bb_floydWarshall_B3_stall_region_out_c0_exe3244),
        .out_intel_reserved_ffwd_10_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_1_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_9_0),
        .out_pipeline_valid_out(bb_floydWarshall_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_floydWarshall_B3_stall_region_out_stall_out),
        .out_unnamed_floydWarshall4_floydWarshall_avm_address(bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_address),
        .out_unnamed_floydWarshall4_floydWarshall_avm_burstcount(bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_burstcount),
        .out_unnamed_floydWarshall4_floydWarshall_avm_byteenable(bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_byteenable),
        .out_unnamed_floydWarshall4_floydWarshall_avm_enable(bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_enable),
        .out_unnamed_floydWarshall4_floydWarshall_avm_read(bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_read),
        .out_unnamed_floydWarshall4_floydWarshall_avm_write(bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_write),
        .out_unnamed_floydWarshall4_floydWarshall_avm_writedata(bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_writedata),
        .out_valid_out(bb_floydWarshall_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // floydWarshall_B3_branch(BLACKBOX,3)
    floydWarshall_B3_branch thefloydWarshall_B3_branch (
        .in_c0_exe2243(bb_floydWarshall_B3_stall_region_out_c0_exe2243),
        .in_c0_exe3244(bb_floydWarshall_B3_stall_region_out_c0_exe3244),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_floydWarshall_B3_stall_region_out_valid_out),
        .out_c0_exe3244(floydWarshall_B3_branch_out_c0_exe3244),
        .out_stall_out(floydWarshall_B3_branch_out_stall_out),
        .out_valid_out_0(floydWarshall_B3_branch_out_valid_out_0),
        .out_valid_out_1(floydWarshall_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe3244(GPOUT,25)
    assign out_c0_exe3244 = floydWarshall_B3_branch_out_c0_exe3244;

    // out_exiting_stall_out(GPOUT,26)
    assign out_exiting_stall_out = bb_floydWarshall_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,27)
    assign out_exiting_valid_out = bb_floydWarshall_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_valid_out;

    // out_intel_reserved_ffwd_10_0(GPOUT,28)
    assign out_intel_reserved_ffwd_10_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_10_0;

    // out_intel_reserved_ffwd_11_0(GPOUT,29)
    assign out_intel_reserved_ffwd_11_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_11_0;

    // out_intel_reserved_ffwd_12_0(GPOUT,30)
    assign out_intel_reserved_ffwd_12_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_12_0;

    // out_intel_reserved_ffwd_13_0(GPOUT,31)
    assign out_intel_reserved_ffwd_13_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_13_0;

    // out_intel_reserved_ffwd_14_0(GPOUT,32)
    assign out_intel_reserved_ffwd_14_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_14_0;

    // out_intel_reserved_ffwd_15_0(GPOUT,33)
    assign out_intel_reserved_ffwd_15_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_15_0;

    // out_intel_reserved_ffwd_16_0(GPOUT,34)
    assign out_intel_reserved_ffwd_16_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_16_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,35)
    assign out_intel_reserved_ffwd_1_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,36)
    assign out_intel_reserved_ffwd_2_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,37)
    assign out_intel_reserved_ffwd_3_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,38)
    assign out_intel_reserved_ffwd_4_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,39)
    assign out_intel_reserved_ffwd_5_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_5_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,40)
    assign out_intel_reserved_ffwd_6_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_6_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,41)
    assign out_intel_reserved_ffwd_7_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_7_0;

    // out_intel_reserved_ffwd_8_0(GPOUT,42)
    assign out_intel_reserved_ffwd_8_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_8_0;

    // out_intel_reserved_ffwd_9_0(GPOUT,43)
    assign out_intel_reserved_ffwd_9_0 = bb_floydWarshall_B3_stall_region_out_intel_reserved_ffwd_9_0;

    // out_stall_out_0(GPOUT,44)
    assign out_stall_out_0 = floydWarshall_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,45)
    assign out_stall_out_1 = floydWarshall_B3_merge_out_stall_out_1;

    // out_unnamed_floydWarshall4_floydWarshall_avm_address(GPOUT,46)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_address = bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_address;

    // out_unnamed_floydWarshall4_floydWarshall_avm_burstcount(GPOUT,47)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_burstcount = bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_burstcount;

    // out_unnamed_floydWarshall4_floydWarshall_avm_byteenable(GPOUT,48)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_byteenable = bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_byteenable;

    // out_unnamed_floydWarshall4_floydWarshall_avm_enable(GPOUT,49)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_enable = bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_enable;

    // out_unnamed_floydWarshall4_floydWarshall_avm_read(GPOUT,50)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_read = bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_read;

    // out_unnamed_floydWarshall4_floydWarshall_avm_write(GPOUT,51)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_write = bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_write;

    // out_unnamed_floydWarshall4_floydWarshall_avm_writedata(GPOUT,52)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_writedata = bb_floydWarshall_B3_stall_region_out_unnamed_floydWarshall4_floydWarshall_avm_writedata;

    // out_valid_out_0(GPOUT,53)
    assign out_valid_out_0 = floydWarshall_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,54)
    assign out_valid_out_1 = floydWarshall_B3_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,56)
    assign out_pipeline_valid_out = bb_floydWarshall_B3_stall_region_out_pipeline_valid_out;

endmodule
