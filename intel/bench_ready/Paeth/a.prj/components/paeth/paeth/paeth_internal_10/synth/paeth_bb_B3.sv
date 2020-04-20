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

// SystemVerilog created from paeth_bb_B3
// SystemVerilog created on Sun Apr 19 21:28:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module paeth_bb_B3 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked22_0,
    input wire [0:0] in_forked22_1,
    input wire [15:0] in_memdep_1_paeth_avm_readdata,
    input wire [0:0] in_memdep_1_paeth_avm_readdatavalid,
    input wire [0:0] in_memdep_1_paeth_avm_waitrequest,
    input wire [0:0] in_memdep_1_paeth_avm_writeack,
    input wire [15:0] in_memdep_2_paeth_avm_readdata,
    input wire [0:0] in_memdep_2_paeth_avm_readdatavalid,
    input wire [0:0] in_memdep_2_paeth_avm_waitrequest,
    input wire [0:0] in_memdep_2_paeth_avm_writeack,
    input wire [15:0] in_memdep_3_paeth_avm_readdata,
    input wire [0:0] in_memdep_3_paeth_avm_readdatavalid,
    input wire [0:0] in_memdep_3_paeth_avm_waitrequest,
    input wire [0:0] in_memdep_3_paeth_avm_writeack,
    input wire [15:0] in_memdep_paeth_avm_readdata,
    input wire [0:0] in_memdep_paeth_avm_readdatavalid,
    input wire [0:0] in_memdep_paeth_avm_waitrequest,
    input wire [0:0] in_memdep_paeth_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_1_paeth_avm_address,
    output wire [0:0] out_memdep_1_paeth_avm_burstcount,
    output wire [1:0] out_memdep_1_paeth_avm_byteenable,
    output wire [0:0] out_memdep_1_paeth_avm_enable,
    output wire [0:0] out_memdep_1_paeth_avm_read,
    output wire [0:0] out_memdep_1_paeth_avm_write,
    output wire [15:0] out_memdep_1_paeth_avm_writedata,
    output wire [31:0] out_memdep_2_paeth_avm_address,
    output wire [0:0] out_memdep_2_paeth_avm_burstcount,
    output wire [1:0] out_memdep_2_paeth_avm_byteenable,
    output wire [0:0] out_memdep_2_paeth_avm_enable,
    output wire [0:0] out_memdep_2_paeth_avm_read,
    output wire [0:0] out_memdep_2_paeth_avm_write,
    output wire [15:0] out_memdep_2_paeth_avm_writedata,
    output wire [31:0] out_memdep_3_paeth_avm_address,
    output wire [0:0] out_memdep_3_paeth_avm_burstcount,
    output wire [1:0] out_memdep_3_paeth_avm_byteenable,
    output wire [0:0] out_memdep_3_paeth_avm_enable,
    output wire [0:0] out_memdep_3_paeth_avm_read,
    output wire [0:0] out_memdep_3_paeth_avm_write,
    output wire [15:0] out_memdep_3_paeth_avm_writedata,
    output wire [31:0] out_memdep_paeth_avm_address,
    output wire [0:0] out_memdep_paeth_avm_burstcount,
    output wire [1:0] out_memdep_paeth_avm_byteenable,
    output wire [0:0] out_memdep_paeth_avm_enable,
    output wire [0:0] out_memdep_paeth_avm_read,
    output wire [0:0] out_memdep_paeth_avm_write,
    output wire [15:0] out_memdep_paeth_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_paeth_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_paeth6_exiting_stall_out;
    wire [0:0] bb_paeth_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_paeth6_exiting_valid_out;
    wire [0:0] bb_paeth_B3_stall_region_out_c0_exe2;
    wire [31:0] bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_address;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_burstcount;
    wire [1:0] bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_byteenable;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_enable;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_read;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_write;
    wire [15:0] bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_writedata;
    wire [31:0] bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_address;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_burstcount;
    wire [1:0] bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_byteenable;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_enable;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_read;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_write;
    wire [15:0] bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_writedata;
    wire [31:0] bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_address;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_burstcount;
    wire [1:0] bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_byteenable;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_enable;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_read;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_write;
    wire [15:0] bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_writedata;
    wire [31:0] bb_paeth_B3_stall_region_out_memdep_paeth_avm_address;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_paeth_avm_burstcount;
    wire [1:0] bb_paeth_B3_stall_region_out_memdep_paeth_avm_byteenable;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_paeth_avm_enable;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_paeth_avm_read;
    wire [0:0] bb_paeth_B3_stall_region_out_memdep_paeth_avm_write;
    wire [15:0] bb_paeth_B3_stall_region_out_memdep_paeth_avm_writedata;
    wire [0:0] bb_paeth_B3_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_paeth_B3_stall_region_out_stall_out;
    wire [0:0] bb_paeth_B3_stall_region_out_valid_out;
    wire [0:0] paeth_B3_branch_out_stall_out;
    wire [0:0] paeth_B3_branch_out_valid_out_0;
    wire [0:0] paeth_B3_branch_out_valid_out_1;
    wire [0:0] paeth_B3_merge_out_forked22;
    wire [0:0] paeth_B3_merge_out_stall_out_0;
    wire [0:0] paeth_B3_merge_out_stall_out_1;
    wire [0:0] paeth_B3_merge_out_valid_out;


    // paeth_B3_branch(BLACKBOX,60)
    paeth_B3_branch thepaeth_B3_branch (
        .in_c0_exe2(bb_paeth_B3_stall_region_out_c0_exe2),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_paeth_B3_stall_region_out_valid_out),
        .out_stall_out(paeth_B3_branch_out_stall_out),
        .out_valid_out_0(paeth_B3_branch_out_valid_out_0),
        .out_valid_out_1(paeth_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // paeth_B3_merge(BLACKBOX,61)
    paeth_B3_merge thepaeth_B3_merge (
        .in_forked22_0(in_forked22_0),
        .in_forked22_1(in_forked22_1),
        .in_stall_in(bb_paeth_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked22(paeth_B3_merge_out_forked22),
        .out_stall_out_0(paeth_B3_merge_out_stall_out_0),
        .out_stall_out_1(paeth_B3_merge_out_stall_out_1),
        .out_valid_out(paeth_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_paeth_B3_stall_region(BLACKBOX,2)
    paeth_bb_B3_stall_region thebb_paeth_B3_stall_region (
        .in_flush(in_flush),
        .in_forked22(paeth_B3_merge_out_forked22),
        .in_memdep_1_paeth_avm_readdata(in_memdep_1_paeth_avm_readdata),
        .in_memdep_1_paeth_avm_readdatavalid(in_memdep_1_paeth_avm_readdatavalid),
        .in_memdep_1_paeth_avm_waitrequest(in_memdep_1_paeth_avm_waitrequest),
        .in_memdep_1_paeth_avm_writeack(in_memdep_1_paeth_avm_writeack),
        .in_memdep_2_paeth_avm_readdata(in_memdep_2_paeth_avm_readdata),
        .in_memdep_2_paeth_avm_readdatavalid(in_memdep_2_paeth_avm_readdatavalid),
        .in_memdep_2_paeth_avm_waitrequest(in_memdep_2_paeth_avm_waitrequest),
        .in_memdep_2_paeth_avm_writeack(in_memdep_2_paeth_avm_writeack),
        .in_memdep_3_paeth_avm_readdata(in_memdep_3_paeth_avm_readdata),
        .in_memdep_3_paeth_avm_readdatavalid(in_memdep_3_paeth_avm_readdatavalid),
        .in_memdep_3_paeth_avm_waitrequest(in_memdep_3_paeth_avm_waitrequest),
        .in_memdep_3_paeth_avm_writeack(in_memdep_3_paeth_avm_writeack),
        .in_memdep_paeth_avm_readdata(in_memdep_paeth_avm_readdata),
        .in_memdep_paeth_avm_readdatavalid(in_memdep_paeth_avm_readdatavalid),
        .in_memdep_paeth_avm_waitrequest(in_memdep_paeth_avm_waitrequest),
        .in_memdep_paeth_avm_writeack(in_memdep_paeth_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(paeth_B3_branch_out_stall_out),
        .in_valid_in(paeth_B3_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_paeth6_exiting_stall_out(bb_paeth_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_paeth6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_paeth6_exiting_valid_out(bb_paeth_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_paeth6_exiting_valid_out),
        .out_c0_exe2(bb_paeth_B3_stall_region_out_c0_exe2),
        .out_memdep_1_paeth_avm_address(bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_address),
        .out_memdep_1_paeth_avm_burstcount(bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_burstcount),
        .out_memdep_1_paeth_avm_byteenable(bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_byteenable),
        .out_memdep_1_paeth_avm_enable(bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_enable),
        .out_memdep_1_paeth_avm_read(bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_read),
        .out_memdep_1_paeth_avm_write(bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_write),
        .out_memdep_1_paeth_avm_writedata(bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_writedata),
        .out_memdep_2_paeth_avm_address(bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_address),
        .out_memdep_2_paeth_avm_burstcount(bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_burstcount),
        .out_memdep_2_paeth_avm_byteenable(bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_byteenable),
        .out_memdep_2_paeth_avm_enable(bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_enable),
        .out_memdep_2_paeth_avm_read(bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_read),
        .out_memdep_2_paeth_avm_write(bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_write),
        .out_memdep_2_paeth_avm_writedata(bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_writedata),
        .out_memdep_3_paeth_avm_address(bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_address),
        .out_memdep_3_paeth_avm_burstcount(bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_burstcount),
        .out_memdep_3_paeth_avm_byteenable(bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_byteenable),
        .out_memdep_3_paeth_avm_enable(bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_enable),
        .out_memdep_3_paeth_avm_read(bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_read),
        .out_memdep_3_paeth_avm_write(bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_write),
        .out_memdep_3_paeth_avm_writedata(bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_writedata),
        .out_memdep_paeth_avm_address(bb_paeth_B3_stall_region_out_memdep_paeth_avm_address),
        .out_memdep_paeth_avm_burstcount(bb_paeth_B3_stall_region_out_memdep_paeth_avm_burstcount),
        .out_memdep_paeth_avm_byteenable(bb_paeth_B3_stall_region_out_memdep_paeth_avm_byteenable),
        .out_memdep_paeth_avm_enable(bb_paeth_B3_stall_region_out_memdep_paeth_avm_enable),
        .out_memdep_paeth_avm_read(bb_paeth_B3_stall_region_out_memdep_paeth_avm_read),
        .out_memdep_paeth_avm_write(bb_paeth_B3_stall_region_out_memdep_paeth_avm_write),
        .out_memdep_paeth_avm_writedata(bb_paeth_B3_stall_region_out_memdep_paeth_avm_writedata),
        .out_pipeline_valid_out(bb_paeth_B3_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_paeth_B3_stall_region_out_stall_out),
        .out_valid_out(bb_paeth_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,26)
    assign out_exiting_stall_out = bb_paeth_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_paeth6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,27)
    assign out_exiting_valid_out = bb_paeth_B3_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going25_paeth6_exiting_valid_out;

    // out_memdep_1_paeth_avm_address(GPOUT,28)
    assign out_memdep_1_paeth_avm_address = bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_address;

    // out_memdep_1_paeth_avm_burstcount(GPOUT,29)
    assign out_memdep_1_paeth_avm_burstcount = bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_burstcount;

    // out_memdep_1_paeth_avm_byteenable(GPOUT,30)
    assign out_memdep_1_paeth_avm_byteenable = bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_byteenable;

    // out_memdep_1_paeth_avm_enable(GPOUT,31)
    assign out_memdep_1_paeth_avm_enable = bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_enable;

    // out_memdep_1_paeth_avm_read(GPOUT,32)
    assign out_memdep_1_paeth_avm_read = bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_read;

    // out_memdep_1_paeth_avm_write(GPOUT,33)
    assign out_memdep_1_paeth_avm_write = bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_write;

    // out_memdep_1_paeth_avm_writedata(GPOUT,34)
    assign out_memdep_1_paeth_avm_writedata = bb_paeth_B3_stall_region_out_memdep_1_paeth_avm_writedata;

    // out_memdep_2_paeth_avm_address(GPOUT,35)
    assign out_memdep_2_paeth_avm_address = bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_address;

    // out_memdep_2_paeth_avm_burstcount(GPOUT,36)
    assign out_memdep_2_paeth_avm_burstcount = bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_burstcount;

    // out_memdep_2_paeth_avm_byteenable(GPOUT,37)
    assign out_memdep_2_paeth_avm_byteenable = bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_byteenable;

    // out_memdep_2_paeth_avm_enable(GPOUT,38)
    assign out_memdep_2_paeth_avm_enable = bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_enable;

    // out_memdep_2_paeth_avm_read(GPOUT,39)
    assign out_memdep_2_paeth_avm_read = bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_read;

    // out_memdep_2_paeth_avm_write(GPOUT,40)
    assign out_memdep_2_paeth_avm_write = bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_write;

    // out_memdep_2_paeth_avm_writedata(GPOUT,41)
    assign out_memdep_2_paeth_avm_writedata = bb_paeth_B3_stall_region_out_memdep_2_paeth_avm_writedata;

    // out_memdep_3_paeth_avm_address(GPOUT,42)
    assign out_memdep_3_paeth_avm_address = bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_address;

    // out_memdep_3_paeth_avm_burstcount(GPOUT,43)
    assign out_memdep_3_paeth_avm_burstcount = bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_burstcount;

    // out_memdep_3_paeth_avm_byteenable(GPOUT,44)
    assign out_memdep_3_paeth_avm_byteenable = bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_byteenable;

    // out_memdep_3_paeth_avm_enable(GPOUT,45)
    assign out_memdep_3_paeth_avm_enable = bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_enable;

    // out_memdep_3_paeth_avm_read(GPOUT,46)
    assign out_memdep_3_paeth_avm_read = bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_read;

    // out_memdep_3_paeth_avm_write(GPOUT,47)
    assign out_memdep_3_paeth_avm_write = bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_write;

    // out_memdep_3_paeth_avm_writedata(GPOUT,48)
    assign out_memdep_3_paeth_avm_writedata = bb_paeth_B3_stall_region_out_memdep_3_paeth_avm_writedata;

    // out_memdep_paeth_avm_address(GPOUT,49)
    assign out_memdep_paeth_avm_address = bb_paeth_B3_stall_region_out_memdep_paeth_avm_address;

    // out_memdep_paeth_avm_burstcount(GPOUT,50)
    assign out_memdep_paeth_avm_burstcount = bb_paeth_B3_stall_region_out_memdep_paeth_avm_burstcount;

    // out_memdep_paeth_avm_byteenable(GPOUT,51)
    assign out_memdep_paeth_avm_byteenable = bb_paeth_B3_stall_region_out_memdep_paeth_avm_byteenable;

    // out_memdep_paeth_avm_enable(GPOUT,52)
    assign out_memdep_paeth_avm_enable = bb_paeth_B3_stall_region_out_memdep_paeth_avm_enable;

    // out_memdep_paeth_avm_read(GPOUT,53)
    assign out_memdep_paeth_avm_read = bb_paeth_B3_stall_region_out_memdep_paeth_avm_read;

    // out_memdep_paeth_avm_write(GPOUT,54)
    assign out_memdep_paeth_avm_write = bb_paeth_B3_stall_region_out_memdep_paeth_avm_write;

    // out_memdep_paeth_avm_writedata(GPOUT,55)
    assign out_memdep_paeth_avm_writedata = bb_paeth_B3_stall_region_out_memdep_paeth_avm_writedata;

    // out_stall_out_0(GPOUT,56)
    assign out_stall_out_0 = paeth_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,57)
    assign out_stall_out_1 = paeth_B3_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,58)
    assign out_valid_out_0 = paeth_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,59)
    assign out_valid_out_1 = paeth_B3_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,63)
    assign out_pipeline_valid_out = bb_paeth_B3_stall_region_out_pipeline_valid_out;

endmodule
