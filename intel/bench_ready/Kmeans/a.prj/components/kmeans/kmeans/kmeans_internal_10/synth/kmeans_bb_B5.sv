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

// SystemVerilog created from kmeans_bb_B5
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_bb_B5 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked72_0,
    input wire [0:0] in_forked72_1,
    input wire [15:0] in_memdep_3_kmeans_avm_readdata,
    input wire [0:0] in_memdep_3_kmeans_avm_readdatavalid,
    input wire [0:0] in_memdep_3_kmeans_avm_waitrequest,
    input wire [0:0] in_memdep_3_kmeans_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_3_kmeans_avm_address,
    output wire [0:0] out_memdep_3_kmeans_avm_burstcount,
    output wire [1:0] out_memdep_3_kmeans_avm_byteenable,
    output wire [0:0] out_memdep_3_kmeans_avm_enable,
    output wire [0:0] out_memdep_3_kmeans_avm_read,
    output wire [0:0] out_memdep_3_kmeans_avm_write,
    output wire [15:0] out_memdep_3_kmeans_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_kmeans_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kmeans6_exiting_stall_out;
    wire [0:0] bb_kmeans_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kmeans6_exiting_valid_out;
    wire [0:0] bb_kmeans_B5_stall_region_out_c0_exe2169;
    wire [31:0] bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_address;
    wire [0:0] bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_burstcount;
    wire [1:0] bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_byteenable;
    wire [0:0] bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_enable;
    wire [0:0] bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_read;
    wire [0:0] bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_write;
    wire [15:0] bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_writedata;
    wire [0:0] bb_kmeans_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_kmeans_B5_stall_region_out_stall_out;
    wire [0:0] bb_kmeans_B5_stall_region_out_valid_out;
    wire [0:0] kmeans_B5_branch_out_stall_out;
    wire [0:0] kmeans_B5_branch_out_valid_out_0;
    wire [0:0] kmeans_B5_branch_out_valid_out_1;
    wire [0:0] kmeans_B5_merge_out_forked72;
    wire [0:0] kmeans_B5_merge_out_stall_out_0;
    wire [0:0] kmeans_B5_merge_out_stall_out_1;
    wire [0:0] kmeans_B5_merge_out_valid_out;


    // kmeans_B5_branch(BLACKBOX,14)
    kmeans_B5_branch thekmeans_B5_branch (
        .in_c0_exe2169(bb_kmeans_B5_stall_region_out_c0_exe2169),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_kmeans_B5_stall_region_out_valid_out),
        .out_stall_out(kmeans_B5_branch_out_stall_out),
        .out_valid_out_0(kmeans_B5_branch_out_valid_out_0),
        .out_valid_out_1(kmeans_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // kmeans_B5_merge(BLACKBOX,15)
    kmeans_B5_merge thekmeans_B5_merge (
        .in_forked72_0(in_forked72_0),
        .in_forked72_1(in_forked72_1),
        .in_stall_in(bb_kmeans_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked72(kmeans_B5_merge_out_forked72),
        .out_stall_out_0(kmeans_B5_merge_out_stall_out_0),
        .out_stall_out_1(kmeans_B5_merge_out_stall_out_1),
        .out_valid_out(kmeans_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kmeans_B5_stall_region(BLACKBOX,2)
    kmeans_bb_B5_stall_region thebb_kmeans_B5_stall_region (
        .in_flush(in_flush),
        .in_forked72(kmeans_B5_merge_out_forked72),
        .in_memdep_3_kmeans_avm_readdata(in_memdep_3_kmeans_avm_readdata),
        .in_memdep_3_kmeans_avm_readdatavalid(in_memdep_3_kmeans_avm_readdatavalid),
        .in_memdep_3_kmeans_avm_waitrequest(in_memdep_3_kmeans_avm_waitrequest),
        .in_memdep_3_kmeans_avm_writeack(in_memdep_3_kmeans_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(kmeans_B5_branch_out_stall_out),
        .in_valid_in(kmeans_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kmeans6_exiting_stall_out(bb_kmeans_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kmeans6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kmeans6_exiting_valid_out(bb_kmeans_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kmeans6_exiting_valid_out),
        .out_c0_exe2169(bb_kmeans_B5_stall_region_out_c0_exe2169),
        .out_memdep_3_kmeans_avm_address(bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_address),
        .out_memdep_3_kmeans_avm_burstcount(bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_burstcount),
        .out_memdep_3_kmeans_avm_byteenable(bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_byteenable),
        .out_memdep_3_kmeans_avm_enable(bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_enable),
        .out_memdep_3_kmeans_avm_read(bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_read),
        .out_memdep_3_kmeans_avm_write(bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_write),
        .out_memdep_3_kmeans_avm_writedata(bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_writedata),
        .out_pipeline_valid_out(bb_kmeans_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_kmeans_B5_stall_region_out_stall_out),
        .out_valid_out(bb_kmeans_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,16)
    assign out_exiting_stall_out = bb_kmeans_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kmeans6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,17)
    assign out_exiting_valid_out = bb_kmeans_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_kmeans6_exiting_valid_out;

    // out_memdep_3_kmeans_avm_address(GPOUT,18)
    assign out_memdep_3_kmeans_avm_address = bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_address;

    // out_memdep_3_kmeans_avm_burstcount(GPOUT,19)
    assign out_memdep_3_kmeans_avm_burstcount = bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_burstcount;

    // out_memdep_3_kmeans_avm_byteenable(GPOUT,20)
    assign out_memdep_3_kmeans_avm_byteenable = bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_byteenable;

    // out_memdep_3_kmeans_avm_enable(GPOUT,21)
    assign out_memdep_3_kmeans_avm_enable = bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_enable;

    // out_memdep_3_kmeans_avm_read(GPOUT,22)
    assign out_memdep_3_kmeans_avm_read = bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_read;

    // out_memdep_3_kmeans_avm_write(GPOUT,23)
    assign out_memdep_3_kmeans_avm_write = bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_write;

    // out_memdep_3_kmeans_avm_writedata(GPOUT,24)
    assign out_memdep_3_kmeans_avm_writedata = bb_kmeans_B5_stall_region_out_memdep_3_kmeans_avm_writedata;

    // out_stall_out_0(GPOUT,25)
    assign out_stall_out_0 = kmeans_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,26)
    assign out_stall_out_1 = kmeans_B5_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = kmeans_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,28)
    assign out_valid_out_1 = kmeans_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,30)
    assign out_pipeline_valid_out = bb_kmeans_B5_stall_region_out_pipeline_valid_out;

endmodule
