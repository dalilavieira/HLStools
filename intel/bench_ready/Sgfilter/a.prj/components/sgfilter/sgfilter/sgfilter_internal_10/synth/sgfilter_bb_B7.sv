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

// SystemVerilog created from sgfilter_bb_B7
// SystemVerilog created on Sun Apr 19 21:43:45 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sgfilter_bb_B7 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [15:0] in_memdep_3_sgfilter_avm_readdata,
    input wire [0:0] in_memdep_3_sgfilter_avm_readdatavalid,
    input wire [0:0] in_memdep_3_sgfilter_avm_waitrequest,
    input wire [0:0] in_memdep_3_sgfilter_avm_writeack,
    input wire [0:0] in_notcmp1774_0,
    input wire [0:0] in_notcmp1774_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [15:0] in_unnamed_sgfilter7_sgfilter_avm_readdata,
    input wire [0:0] in_unnamed_sgfilter7_sgfilter_avm_readdatavalid,
    input wire [0:0] in_unnamed_sgfilter7_sgfilter_avm_waitrequest,
    input wire [0:0] in_unnamed_sgfilter7_sgfilter_avm_writeack,
    input wire [15:0] in_unnamed_sgfilter8_sgfilter_avm_readdata,
    input wire [0:0] in_unnamed_sgfilter8_sgfilter_avm_readdatavalid,
    input wire [0:0] in_unnamed_sgfilter8_sgfilter_avm_waitrequest,
    input wire [0:0] in_unnamed_sgfilter8_sgfilter_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_3_sgfilter_avm_address,
    output wire [0:0] out_memdep_3_sgfilter_avm_burstcount,
    output wire [1:0] out_memdep_3_sgfilter_avm_byteenable,
    output wire [0:0] out_memdep_3_sgfilter_avm_enable,
    output wire [0:0] out_memdep_3_sgfilter_avm_read,
    output wire [0:0] out_memdep_3_sgfilter_avm_write,
    output wire [15:0] out_memdep_3_sgfilter_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_sgfilter7_sgfilter_avm_address,
    output wire [0:0] out_unnamed_sgfilter7_sgfilter_avm_burstcount,
    output wire [1:0] out_unnamed_sgfilter7_sgfilter_avm_byteenable,
    output wire [0:0] out_unnamed_sgfilter7_sgfilter_avm_enable,
    output wire [0:0] out_unnamed_sgfilter7_sgfilter_avm_read,
    output wire [0:0] out_unnamed_sgfilter7_sgfilter_avm_write,
    output wire [15:0] out_unnamed_sgfilter7_sgfilter_avm_writedata,
    output wire [31:0] out_unnamed_sgfilter8_sgfilter_avm_address,
    output wire [0:0] out_unnamed_sgfilter8_sgfilter_avm_burstcount,
    output wire [1:0] out_unnamed_sgfilter8_sgfilter_avm_byteenable,
    output wire [0:0] out_unnamed_sgfilter8_sgfilter_avm_enable,
    output wire [0:0] out_unnamed_sgfilter8_sgfilter_avm_read,
    output wire [0:0] out_unnamed_sgfilter8_sgfilter_avm_write,
    output wire [15:0] out_unnamed_sgfilter8_sgfilter_avm_writedata,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_sgfilter_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sgfilter6_exiting_stall_out;
    wire [0:0] bb_sgfilter_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sgfilter6_exiting_valid_out;
    wire [0:0] bb_sgfilter_B7_stall_region_out_c0_exe299;
    wire [0:0] bb_sgfilter_B7_stall_region_out_c0_exe3;
    wire [31:0] bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_address;
    wire [0:0] bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_burstcount;
    wire [1:0] bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_byteenable;
    wire [0:0] bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_enable;
    wire [0:0] bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_read;
    wire [0:0] bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_write;
    wire [15:0] bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_writedata;
    wire [0:0] bb_sgfilter_B7_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_sgfilter_B7_stall_region_out_stall_out;
    wire [31:0] bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_address;
    wire [0:0] bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_burstcount;
    wire [1:0] bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_byteenable;
    wire [0:0] bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_enable;
    wire [0:0] bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_read;
    wire [0:0] bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_write;
    wire [15:0] bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_writedata;
    wire [31:0] bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_address;
    wire [0:0] bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_burstcount;
    wire [1:0] bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_byteenable;
    wire [0:0] bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_enable;
    wire [0:0] bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_read;
    wire [0:0] bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_write;
    wire [15:0] bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_writedata;
    wire [0:0] bb_sgfilter_B7_stall_region_out_valid_out;
    wire [0:0] sgfilter_B7_branch_out_c0_exe3;
    wire [0:0] sgfilter_B7_branch_out_stall_out;
    wire [0:0] sgfilter_B7_branch_out_valid_out_0;
    wire [0:0] sgfilter_B7_branch_out_valid_out_1;
    wire [0:0] sgfilter_B7_merge_out_forked;
    wire [0:0] sgfilter_B7_merge_out_notcmp1774;
    wire [0:0] sgfilter_B7_merge_out_stall_out_0;
    wire [0:0] sgfilter_B7_merge_out_stall_out_1;
    wire [0:0] sgfilter_B7_merge_out_valid_out;


    // sgfilter_B7_merge(BLACKBOX,55)
    sgfilter_B7_merge thesgfilter_B7_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_notcmp1774_0(in_notcmp1774_0),
        .in_notcmp1774_1(in_notcmp1774_1),
        .in_stall_in(bb_sgfilter_B7_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(sgfilter_B7_merge_out_forked),
        .out_notcmp1774(sgfilter_B7_merge_out_notcmp1774),
        .out_stall_out_0(sgfilter_B7_merge_out_stall_out_0),
        .out_stall_out_1(sgfilter_B7_merge_out_stall_out_1),
        .out_valid_out(sgfilter_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_sgfilter_B7_stall_region(BLACKBOX,2)
    sgfilter_bb_B7_stall_region thebb_sgfilter_B7_stall_region (
        .in_flush(in_flush),
        .in_forked(sgfilter_B7_merge_out_forked),
        .in_memdep_3_sgfilter_avm_readdata(in_memdep_3_sgfilter_avm_readdata),
        .in_memdep_3_sgfilter_avm_readdatavalid(in_memdep_3_sgfilter_avm_readdatavalid),
        .in_memdep_3_sgfilter_avm_waitrequest(in_memdep_3_sgfilter_avm_waitrequest),
        .in_memdep_3_sgfilter_avm_writeack(in_memdep_3_sgfilter_avm_writeack),
        .in_notcmp1774(sgfilter_B7_merge_out_notcmp1774),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(sgfilter_B7_branch_out_stall_out),
        .in_unnamed_sgfilter7_sgfilter_avm_readdata(in_unnamed_sgfilter7_sgfilter_avm_readdata),
        .in_unnamed_sgfilter7_sgfilter_avm_readdatavalid(in_unnamed_sgfilter7_sgfilter_avm_readdatavalid),
        .in_unnamed_sgfilter7_sgfilter_avm_waitrequest(in_unnamed_sgfilter7_sgfilter_avm_waitrequest),
        .in_unnamed_sgfilter7_sgfilter_avm_writeack(in_unnamed_sgfilter7_sgfilter_avm_writeack),
        .in_unnamed_sgfilter8_sgfilter_avm_readdata(in_unnamed_sgfilter8_sgfilter_avm_readdata),
        .in_unnamed_sgfilter8_sgfilter_avm_readdatavalid(in_unnamed_sgfilter8_sgfilter_avm_readdatavalid),
        .in_unnamed_sgfilter8_sgfilter_avm_waitrequest(in_unnamed_sgfilter8_sgfilter_avm_waitrequest),
        .in_unnamed_sgfilter8_sgfilter_avm_writeack(in_unnamed_sgfilter8_sgfilter_avm_writeack),
        .in_valid_in(sgfilter_B7_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sgfilter6_exiting_stall_out(bb_sgfilter_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sgfilter6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sgfilter6_exiting_valid_out(bb_sgfilter_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sgfilter6_exiting_valid_out),
        .out_c0_exe299(bb_sgfilter_B7_stall_region_out_c0_exe299),
        .out_c0_exe3(bb_sgfilter_B7_stall_region_out_c0_exe3),
        .out_memdep_3_sgfilter_avm_address(bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_address),
        .out_memdep_3_sgfilter_avm_burstcount(bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_burstcount),
        .out_memdep_3_sgfilter_avm_byteenable(bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_byteenable),
        .out_memdep_3_sgfilter_avm_enable(bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_enable),
        .out_memdep_3_sgfilter_avm_read(bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_read),
        .out_memdep_3_sgfilter_avm_write(bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_write),
        .out_memdep_3_sgfilter_avm_writedata(bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_writedata),
        .out_pipeline_valid_out(bb_sgfilter_B7_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_sgfilter_B7_stall_region_out_stall_out),
        .out_unnamed_sgfilter7_sgfilter_avm_address(bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_address),
        .out_unnamed_sgfilter7_sgfilter_avm_burstcount(bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_burstcount),
        .out_unnamed_sgfilter7_sgfilter_avm_byteenable(bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_byteenable),
        .out_unnamed_sgfilter7_sgfilter_avm_enable(bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_enable),
        .out_unnamed_sgfilter7_sgfilter_avm_read(bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_read),
        .out_unnamed_sgfilter7_sgfilter_avm_write(bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_write),
        .out_unnamed_sgfilter7_sgfilter_avm_writedata(bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_writedata),
        .out_unnamed_sgfilter8_sgfilter_avm_address(bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_address),
        .out_unnamed_sgfilter8_sgfilter_avm_burstcount(bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_burstcount),
        .out_unnamed_sgfilter8_sgfilter_avm_byteenable(bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_byteenable),
        .out_unnamed_sgfilter8_sgfilter_avm_enable(bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_enable),
        .out_unnamed_sgfilter8_sgfilter_avm_read(bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_read),
        .out_unnamed_sgfilter8_sgfilter_avm_write(bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_write),
        .out_unnamed_sgfilter8_sgfilter_avm_writedata(bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_writedata),
        .out_valid_out(bb_sgfilter_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // sgfilter_B7_branch(BLACKBOX,54)
    sgfilter_B7_branch thesgfilter_B7_branch (
        .in_c0_exe299(bb_sgfilter_B7_stall_region_out_c0_exe299),
        .in_c0_exe3(bb_sgfilter_B7_stall_region_out_c0_exe3),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_sgfilter_B7_stall_region_out_valid_out),
        .out_c0_exe3(sgfilter_B7_branch_out_c0_exe3),
        .out_stall_out(sgfilter_B7_branch_out_stall_out),
        .out_valid_out_0(sgfilter_B7_branch_out_valid_out_0),
        .out_valid_out_1(sgfilter_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe3(GPOUT,24)
    assign out_c0_exe3 = sgfilter_B7_branch_out_c0_exe3;

    // out_exiting_stall_out(GPOUT,25)
    assign out_exiting_stall_out = bb_sgfilter_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sgfilter6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,26)
    assign out_exiting_valid_out = bb_sgfilter_B7_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_sgfilter6_exiting_valid_out;

    // out_memdep_3_sgfilter_avm_address(GPOUT,27)
    assign out_memdep_3_sgfilter_avm_address = bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_address;

    // out_memdep_3_sgfilter_avm_burstcount(GPOUT,28)
    assign out_memdep_3_sgfilter_avm_burstcount = bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_burstcount;

    // out_memdep_3_sgfilter_avm_byteenable(GPOUT,29)
    assign out_memdep_3_sgfilter_avm_byteenable = bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_byteenable;

    // out_memdep_3_sgfilter_avm_enable(GPOUT,30)
    assign out_memdep_3_sgfilter_avm_enable = bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_enable;

    // out_memdep_3_sgfilter_avm_read(GPOUT,31)
    assign out_memdep_3_sgfilter_avm_read = bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_read;

    // out_memdep_3_sgfilter_avm_write(GPOUT,32)
    assign out_memdep_3_sgfilter_avm_write = bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_write;

    // out_memdep_3_sgfilter_avm_writedata(GPOUT,33)
    assign out_memdep_3_sgfilter_avm_writedata = bb_sgfilter_B7_stall_region_out_memdep_3_sgfilter_avm_writedata;

    // out_stall_out_0(GPOUT,34)
    assign out_stall_out_0 = sgfilter_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,35)
    assign out_stall_out_1 = sgfilter_B7_merge_out_stall_out_1;

    // out_unnamed_sgfilter7_sgfilter_avm_address(GPOUT,36)
    assign out_unnamed_sgfilter7_sgfilter_avm_address = bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_address;

    // out_unnamed_sgfilter7_sgfilter_avm_burstcount(GPOUT,37)
    assign out_unnamed_sgfilter7_sgfilter_avm_burstcount = bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_burstcount;

    // out_unnamed_sgfilter7_sgfilter_avm_byteenable(GPOUT,38)
    assign out_unnamed_sgfilter7_sgfilter_avm_byteenable = bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_byteenable;

    // out_unnamed_sgfilter7_sgfilter_avm_enable(GPOUT,39)
    assign out_unnamed_sgfilter7_sgfilter_avm_enable = bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_enable;

    // out_unnamed_sgfilter7_sgfilter_avm_read(GPOUT,40)
    assign out_unnamed_sgfilter7_sgfilter_avm_read = bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_read;

    // out_unnamed_sgfilter7_sgfilter_avm_write(GPOUT,41)
    assign out_unnamed_sgfilter7_sgfilter_avm_write = bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_write;

    // out_unnamed_sgfilter7_sgfilter_avm_writedata(GPOUT,42)
    assign out_unnamed_sgfilter7_sgfilter_avm_writedata = bb_sgfilter_B7_stall_region_out_unnamed_sgfilter7_sgfilter_avm_writedata;

    // out_unnamed_sgfilter8_sgfilter_avm_address(GPOUT,43)
    assign out_unnamed_sgfilter8_sgfilter_avm_address = bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_address;

    // out_unnamed_sgfilter8_sgfilter_avm_burstcount(GPOUT,44)
    assign out_unnamed_sgfilter8_sgfilter_avm_burstcount = bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_burstcount;

    // out_unnamed_sgfilter8_sgfilter_avm_byteenable(GPOUT,45)
    assign out_unnamed_sgfilter8_sgfilter_avm_byteenable = bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_byteenable;

    // out_unnamed_sgfilter8_sgfilter_avm_enable(GPOUT,46)
    assign out_unnamed_sgfilter8_sgfilter_avm_enable = bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_enable;

    // out_unnamed_sgfilter8_sgfilter_avm_read(GPOUT,47)
    assign out_unnamed_sgfilter8_sgfilter_avm_read = bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_read;

    // out_unnamed_sgfilter8_sgfilter_avm_write(GPOUT,48)
    assign out_unnamed_sgfilter8_sgfilter_avm_write = bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_write;

    // out_unnamed_sgfilter8_sgfilter_avm_writedata(GPOUT,49)
    assign out_unnamed_sgfilter8_sgfilter_avm_writedata = bb_sgfilter_B7_stall_region_out_unnamed_sgfilter8_sgfilter_avm_writedata;

    // out_valid_out_0(GPOUT,50)
    assign out_valid_out_0 = sgfilter_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,51)
    assign out_valid_out_1 = sgfilter_B7_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,53)
    assign out_pipeline_valid_out = bb_sgfilter_B7_stall_region_out_pipeline_valid_out;

endmodule
