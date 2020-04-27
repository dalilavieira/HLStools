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

// SystemVerilog created from sobel_filter_bb_B16
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B16 (
    input wire [0:0] in_exitcond45166_pop73252_0,
    input wire [0:0] in_exitcond45166_pop73252_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_memdep_19_sobel_filter_avm_readdata,
    input wire [0:0] in_memdep_19_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_memdep_19_sobel_filter_avm_waitrequest,
    input wire [0:0] in_memdep_19_sobel_filter_avm_writeack,
    input wire [0:0] in_notcmp131173_pop74255_0,
    input wire [0:0] in_notcmp131173_pop74255_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_sobel_filter14_sobel_filter_avm_readdata,
    input wire [0:0] in_unnamed_sobel_filter14_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel_filter14_sobel_filter_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel_filter14_sobel_filter_avm_writeack,
    input wire [31:0] in_unnamed_sobel_filter15_sobel_filter_avm_readdata,
    input wire [0:0] in_unnamed_sobel_filter15_sobel_filter_avm_readdatavalid,
    input wire [0:0] in_unnamed_sobel_filter15_sobel_filter_avm_waitrequest,
    input wire [0:0] in_unnamed_sobel_filter15_sobel_filter_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2472,
    output wire [0:0] out_c0_exe3473,
    output wire [0:0] out_c0_exe5475,
    output wire [0:0] out_c0_exe6476,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_19_sobel_filter_avm_address,
    output wire [0:0] out_memdep_19_sobel_filter_avm_burstcount,
    output wire [3:0] out_memdep_19_sobel_filter_avm_byteenable,
    output wire [0:0] out_memdep_19_sobel_filter_avm_enable,
    output wire [0:0] out_memdep_19_sobel_filter_avm_read,
    output wire [0:0] out_memdep_19_sobel_filter_avm_write,
    output wire [31:0] out_memdep_19_sobel_filter_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_sobel_filter14_sobel_filter_avm_address,
    output wire [0:0] out_unnamed_sobel_filter14_sobel_filter_avm_burstcount,
    output wire [3:0] out_unnamed_sobel_filter14_sobel_filter_avm_byteenable,
    output wire [0:0] out_unnamed_sobel_filter14_sobel_filter_avm_enable,
    output wire [0:0] out_unnamed_sobel_filter14_sobel_filter_avm_read,
    output wire [0:0] out_unnamed_sobel_filter14_sobel_filter_avm_write,
    output wire [31:0] out_unnamed_sobel_filter14_sobel_filter_avm_writedata,
    output wire [31:0] out_unnamed_sobel_filter15_sobel_filter_avm_address,
    output wire [0:0] out_unnamed_sobel_filter15_sobel_filter_avm_burstcount,
    output wire [3:0] out_unnamed_sobel_filter15_sobel_filter_avm_byteenable,
    output wire [0:0] out_unnamed_sobel_filter15_sobel_filter_avm_enable,
    output wire [0:0] out_unnamed_sobel_filter15_sobel_filter_avm_read,
    output wire [0:0] out_unnamed_sobel_filter15_sobel_filter_avm_write,
    output wire [31:0] out_unnamed_sobel_filter15_sobel_filter_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_sobel_filter_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel_filter6_exiting_stall_out;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel_filter6_exiting_valid_out;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_c0_exe2472;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_c0_exe3473;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_c0_exe4474;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_c0_exe5475;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_c0_exe6476;
    wire [31:0] bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_stall_out;
    wire [31:0] bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_writedata;
    wire [31:0] bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_address;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_burstcount;
    wire [3:0] bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_byteenable;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_enable;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_read;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_write;
    wire [31:0] bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_writedata;
    wire [0:0] bb_sobel_filter_B16_stall_region_out_valid_out;
    wire [0:0] sobel_filter_B16_branch_out_c0_exe2472;
    wire [0:0] sobel_filter_B16_branch_out_c0_exe3473;
    wire [0:0] sobel_filter_B16_branch_out_c0_exe5475;
    wire [0:0] sobel_filter_B16_branch_out_c0_exe6476;
    wire [0:0] sobel_filter_B16_branch_out_stall_out;
    wire [0:0] sobel_filter_B16_branch_out_valid_out_0;
    wire [0:0] sobel_filter_B16_branch_out_valid_out_1;
    wire [0:0] sobel_filter_B16_merge_out_exitcond45166_pop73252;
    wire [0:0] sobel_filter_B16_merge_out_forked;
    wire [0:0] sobel_filter_B16_merge_out_notcmp131173_pop74255;
    wire [0:0] sobel_filter_B16_merge_out_stall_out_0;
    wire [0:0] sobel_filter_B16_merge_out_stall_out_1;
    wire [0:0] sobel_filter_B16_merge_out_valid_out;


    // sobel_filter_B16_merge(BLACKBOX,60)
    sobel_filter_B16_merge thesobel_filter_B16_merge (
        .in_exitcond45166_pop73252_0(in_exitcond45166_pop73252_0),
        .in_exitcond45166_pop73252_1(in_exitcond45166_pop73252_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_notcmp131173_pop74255_0(in_notcmp131173_pop74255_0),
        .in_notcmp131173_pop74255_1(in_notcmp131173_pop74255_1),
        .in_stall_in(bb_sobel_filter_B16_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_exitcond45166_pop73252(sobel_filter_B16_merge_out_exitcond45166_pop73252),
        .out_forked(sobel_filter_B16_merge_out_forked),
        .out_notcmp131173_pop74255(sobel_filter_B16_merge_out_notcmp131173_pop74255),
        .out_stall_out_0(sobel_filter_B16_merge_out_stall_out_0),
        .out_stall_out_1(sobel_filter_B16_merge_out_stall_out_1),
        .out_valid_out(sobel_filter_B16_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sobel_filter_B16_stall_region(BLACKBOX,2)
    sobel_filter_bb_B16_stall_region thebb_sobel_filter_B16_stall_region (
        .in_exitcond45166_pop73252(sobel_filter_B16_merge_out_exitcond45166_pop73252),
        .in_flush(in_flush),
        .in_forked(sobel_filter_B16_merge_out_forked),
        .in_memdep_19_sobel_filter_avm_readdata(in_memdep_19_sobel_filter_avm_readdata),
        .in_memdep_19_sobel_filter_avm_readdatavalid(in_memdep_19_sobel_filter_avm_readdatavalid),
        .in_memdep_19_sobel_filter_avm_waitrequest(in_memdep_19_sobel_filter_avm_waitrequest),
        .in_memdep_19_sobel_filter_avm_writeack(in_memdep_19_sobel_filter_avm_writeack),
        .in_notcmp131173_pop74255(sobel_filter_B16_merge_out_notcmp131173_pop74255),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(sobel_filter_B16_branch_out_stall_out),
        .in_unnamed_sobel_filter14_sobel_filter_avm_readdata(in_unnamed_sobel_filter14_sobel_filter_avm_readdata),
        .in_unnamed_sobel_filter14_sobel_filter_avm_readdatavalid(in_unnamed_sobel_filter14_sobel_filter_avm_readdatavalid),
        .in_unnamed_sobel_filter14_sobel_filter_avm_waitrequest(in_unnamed_sobel_filter14_sobel_filter_avm_waitrequest),
        .in_unnamed_sobel_filter14_sobel_filter_avm_writeack(in_unnamed_sobel_filter14_sobel_filter_avm_writeack),
        .in_unnamed_sobel_filter15_sobel_filter_avm_readdata(in_unnamed_sobel_filter15_sobel_filter_avm_readdata),
        .in_unnamed_sobel_filter15_sobel_filter_avm_readdatavalid(in_unnamed_sobel_filter15_sobel_filter_avm_readdatavalid),
        .in_unnamed_sobel_filter15_sobel_filter_avm_waitrequest(in_unnamed_sobel_filter15_sobel_filter_avm_waitrequest),
        .in_unnamed_sobel_filter15_sobel_filter_avm_writeack(in_unnamed_sobel_filter15_sobel_filter_avm_writeack),
        .in_valid_in(sobel_filter_B16_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel_filter6_exiting_stall_out(bb_sobel_filter_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel_filter6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel_filter6_exiting_valid_out(bb_sobel_filter_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel_filter6_exiting_valid_out),
        .out_c0_exe2472(bb_sobel_filter_B16_stall_region_out_c0_exe2472),
        .out_c0_exe3473(bb_sobel_filter_B16_stall_region_out_c0_exe3473),
        .out_c0_exe4474(bb_sobel_filter_B16_stall_region_out_c0_exe4474),
        .out_c0_exe5475(bb_sobel_filter_B16_stall_region_out_c0_exe5475),
        .out_c0_exe6476(bb_sobel_filter_B16_stall_region_out_c0_exe6476),
        .out_memdep_19_sobel_filter_avm_address(bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_address),
        .out_memdep_19_sobel_filter_avm_burstcount(bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_burstcount),
        .out_memdep_19_sobel_filter_avm_byteenable(bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_byteenable),
        .out_memdep_19_sobel_filter_avm_enable(bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_enable),
        .out_memdep_19_sobel_filter_avm_read(bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_read),
        .out_memdep_19_sobel_filter_avm_write(bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_write),
        .out_memdep_19_sobel_filter_avm_writedata(bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_writedata),
        .out_pipeline_valid_out(bb_sobel_filter_B16_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_sobel_filter_B16_stall_region_out_stall_out),
        .out_unnamed_sobel_filter14_sobel_filter_avm_address(bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_address),
        .out_unnamed_sobel_filter14_sobel_filter_avm_burstcount(bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter14_sobel_filter_avm_byteenable(bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter14_sobel_filter_avm_enable(bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter14_sobel_filter_avm_read(bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_read),
        .out_unnamed_sobel_filter14_sobel_filter_avm_write(bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_write),
        .out_unnamed_sobel_filter14_sobel_filter_avm_writedata(bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_writedata),
        .out_unnamed_sobel_filter15_sobel_filter_avm_address(bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_address),
        .out_unnamed_sobel_filter15_sobel_filter_avm_burstcount(bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter15_sobel_filter_avm_byteenable(bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter15_sobel_filter_avm_enable(bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter15_sobel_filter_avm_read(bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_read),
        .out_unnamed_sobel_filter15_sobel_filter_avm_write(bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_write),
        .out_unnamed_sobel_filter15_sobel_filter_avm_writedata(bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_writedata),
        .out_valid_out(bb_sobel_filter_B16_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // sobel_filter_B16_branch(BLACKBOX,59)
    sobel_filter_B16_branch thesobel_filter_B16_branch (
        .in_c0_exe2472(bb_sobel_filter_B16_stall_region_out_c0_exe2472),
        .in_c0_exe3473(bb_sobel_filter_B16_stall_region_out_c0_exe3473),
        .in_c0_exe4474(bb_sobel_filter_B16_stall_region_out_c0_exe4474),
        .in_c0_exe5475(bb_sobel_filter_B16_stall_region_out_c0_exe5475),
        .in_c0_exe6476(bb_sobel_filter_B16_stall_region_out_c0_exe6476),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_sobel_filter_B16_stall_region_out_valid_out),
        .out_c0_exe2472(sobel_filter_B16_branch_out_c0_exe2472),
        .out_c0_exe3473(sobel_filter_B16_branch_out_c0_exe3473),
        .out_c0_exe5475(sobel_filter_B16_branch_out_c0_exe5475),
        .out_c0_exe6476(sobel_filter_B16_branch_out_c0_exe6476),
        .out_stall_out(sobel_filter_B16_branch_out_stall_out),
        .out_valid_out_0(sobel_filter_B16_branch_out_valid_out_0),
        .out_valid_out_1(sobel_filter_B16_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2472(GPOUT,26)
    assign out_c0_exe2472 = sobel_filter_B16_branch_out_c0_exe2472;

    // out_c0_exe3473(GPOUT,27)
    assign out_c0_exe3473 = sobel_filter_B16_branch_out_c0_exe3473;

    // out_c0_exe5475(GPOUT,28)
    assign out_c0_exe5475 = sobel_filter_B16_branch_out_c0_exe5475;

    // out_c0_exe6476(GPOUT,29)
    assign out_c0_exe6476 = sobel_filter_B16_branch_out_c0_exe6476;

    // out_exiting_stall_out(GPOUT,30)
    assign out_exiting_stall_out = bb_sobel_filter_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel_filter6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,31)
    assign out_exiting_valid_out = bb_sobel_filter_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sobel_filter6_exiting_valid_out;

    // out_memdep_19_sobel_filter_avm_address(GPOUT,32)
    assign out_memdep_19_sobel_filter_avm_address = bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_address;

    // out_memdep_19_sobel_filter_avm_burstcount(GPOUT,33)
    assign out_memdep_19_sobel_filter_avm_burstcount = bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_burstcount;

    // out_memdep_19_sobel_filter_avm_byteenable(GPOUT,34)
    assign out_memdep_19_sobel_filter_avm_byteenable = bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_byteenable;

    // out_memdep_19_sobel_filter_avm_enable(GPOUT,35)
    assign out_memdep_19_sobel_filter_avm_enable = bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_enable;

    // out_memdep_19_sobel_filter_avm_read(GPOUT,36)
    assign out_memdep_19_sobel_filter_avm_read = bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_read;

    // out_memdep_19_sobel_filter_avm_write(GPOUT,37)
    assign out_memdep_19_sobel_filter_avm_write = bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_write;

    // out_memdep_19_sobel_filter_avm_writedata(GPOUT,38)
    assign out_memdep_19_sobel_filter_avm_writedata = bb_sobel_filter_B16_stall_region_out_memdep_19_sobel_filter_avm_writedata;

    // out_stall_out_0(GPOUT,39)
    assign out_stall_out_0 = sobel_filter_B16_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,40)
    assign out_stall_out_1 = sobel_filter_B16_merge_out_stall_out_1;

    // out_unnamed_sobel_filter14_sobel_filter_avm_address(GPOUT,41)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_address = bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_address;

    // out_unnamed_sobel_filter14_sobel_filter_avm_burstcount(GPOUT,42)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_burstcount = bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_burstcount;

    // out_unnamed_sobel_filter14_sobel_filter_avm_byteenable(GPOUT,43)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_byteenable = bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_byteenable;

    // out_unnamed_sobel_filter14_sobel_filter_avm_enable(GPOUT,44)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_enable = bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_enable;

    // out_unnamed_sobel_filter14_sobel_filter_avm_read(GPOUT,45)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_read = bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_read;

    // out_unnamed_sobel_filter14_sobel_filter_avm_write(GPOUT,46)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_write = bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_write;

    // out_unnamed_sobel_filter14_sobel_filter_avm_writedata(GPOUT,47)
    assign out_unnamed_sobel_filter14_sobel_filter_avm_writedata = bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter14_sobel_filter_avm_writedata;

    // out_unnamed_sobel_filter15_sobel_filter_avm_address(GPOUT,48)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_address = bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_address;

    // out_unnamed_sobel_filter15_sobel_filter_avm_burstcount(GPOUT,49)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_burstcount = bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_burstcount;

    // out_unnamed_sobel_filter15_sobel_filter_avm_byteenable(GPOUT,50)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_byteenable = bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_byteenable;

    // out_unnamed_sobel_filter15_sobel_filter_avm_enable(GPOUT,51)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_enable = bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_enable;

    // out_unnamed_sobel_filter15_sobel_filter_avm_read(GPOUT,52)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_read = bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_read;

    // out_unnamed_sobel_filter15_sobel_filter_avm_write(GPOUT,53)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_write = bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_write;

    // out_unnamed_sobel_filter15_sobel_filter_avm_writedata(GPOUT,54)
    assign out_unnamed_sobel_filter15_sobel_filter_avm_writedata = bb_sobel_filter_B16_stall_region_out_unnamed_sobel_filter15_sobel_filter_avm_writedata;

    // out_valid_out_0(GPOUT,55)
    assign out_valid_out_0 = sobel_filter_B16_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,56)
    assign out_valid_out_1 = sobel_filter_B16_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,58)
    assign out_pipeline_valid_out = bb_sobel_filter_B16_stall_region_out_pipeline_valid_out;

endmodule
