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

// SystemVerilog created from cesarcipher_bb_B1_start
// SystemVerilog created on Mon Apr  6 10:17:28 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cesarcipher_bb_B1_start (
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_flush,
    input wire [127:0] in_iord_bl_call_cesarcipher_i_fifodata,
    input wire [0:0] in_iord_bl_call_cesarcipher_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [63:0] in_unnamed_cesarcipher3_cesarcipher_avm_readdata,
    input wire [0:0] in_unnamed_cesarcipher3_cesarcipher_avm_readdatavalid,
    input wire [0:0] in_unnamed_cesarcipher3_cesarcipher_avm_waitrequest,
    input wire [0:0] in_unnamed_cesarcipher3_cesarcipher_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_iord_bl_call_cesarcipher_o_fifoready,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [63:0] out_unnamed_cesarcipher3_cesarcipher_avm_address,
    output wire [0:0] out_unnamed_cesarcipher3_cesarcipher_avm_burstcount,
    output wire [7:0] out_unnamed_cesarcipher3_cesarcipher_avm_byteenable,
    output wire [0:0] out_unnamed_cesarcipher3_cesarcipher_avm_enable,
    output wire [0:0] out_unnamed_cesarcipher3_cesarcipher_avm_read,
    output wire [0:0] out_unnamed_cesarcipher3_cesarcipher_avm_write,
    output wire [63:0] out_unnamed_cesarcipher3_cesarcipher_avm_writedata,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_cesarcipher_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_stall_out;
    wire [0:0] bb_cesarcipher_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_valid_out;
    wire [0:0] bb_cesarcipher_B1_start_stall_region_out_feedback_stall_out_1;
    wire [63:0] bb_cesarcipher_B1_start_stall_region_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_cesarcipher_B1_start_stall_region_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_cesarcipher_B1_start_stall_region_out_iord_bl_call_cesarcipher_o_fifoready;
    wire [0:0] bb_cesarcipher_B1_start_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_cesarcipher_B1_start_stall_region_out_stall_out;
    wire [63:0] bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_address;
    wire [0:0] bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_burstcount;
    wire [7:0] bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_byteenable;
    wire [0:0] bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_enable;
    wire [0:0] bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_read;
    wire [0:0] bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_write;
    wire [63:0] bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_writedata;
    wire [0:0] bb_cesarcipher_B1_start_stall_region_out_valid_out;
    wire [0:0] cesarcipher_B1_start_branch_out_stall_out;
    wire [0:0] cesarcipher_B1_start_branch_out_valid_out_0;
    wire [0:0] cesarcipher_B1_start_merge_out_stall_out_0;
    wire [0:0] cesarcipher_B1_start_merge_out_stall_out_1;
    wire [0:0] cesarcipher_B1_start_merge_out_valid_out;


    // cesarcipher_B1_start_merge(BLACKBOX,4)
    cesarcipher_B1_start_merge thecesarcipher_B1_start_merge (
        .in_stall_in(bb_cesarcipher_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(cesarcipher_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(cesarcipher_B1_start_merge_out_stall_out_1),
        .out_valid_out(cesarcipher_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // cesarcipher_B1_start_branch(BLACKBOX,3)
    cesarcipher_B1_start_branch thecesarcipher_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_cesarcipher_B1_start_stall_region_out_valid_out),
        .out_stall_out(cesarcipher_B1_start_branch_out_stall_out),
        .out_valid_out_0(cesarcipher_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cesarcipher_B1_start_stall_region(BLACKBOX,2)
    cesarcipher_bb_B1_start_stall_region thebb_cesarcipher_B1_start_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_flush(in_flush),
        .in_iord_bl_call_cesarcipher_i_fifodata(in_iord_bl_call_cesarcipher_i_fifodata),
        .in_iord_bl_call_cesarcipher_i_fifovalid(in_iord_bl_call_cesarcipher_i_fifovalid),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(cesarcipher_B1_start_branch_out_stall_out),
        .in_unnamed_cesarcipher3_cesarcipher_avm_readdata(in_unnamed_cesarcipher3_cesarcipher_avm_readdata),
        .in_unnamed_cesarcipher3_cesarcipher_avm_readdatavalid(in_unnamed_cesarcipher3_cesarcipher_avm_readdatavalid),
        .in_unnamed_cesarcipher3_cesarcipher_avm_waitrequest(in_unnamed_cesarcipher3_cesarcipher_avm_waitrequest),
        .in_unnamed_cesarcipher3_cesarcipher_avm_writeack(in_unnamed_cesarcipher3_cesarcipher_avm_writeack),
        .in_valid_in(cesarcipher_B1_start_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_stall_out(bb_cesarcipher_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_valid_out(bb_cesarcipher_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_valid_out),
        .out_feedback_stall_out_1(bb_cesarcipher_B1_start_stall_region_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_cesarcipher_B1_start_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_cesarcipher_B1_start_stall_region_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_cesarcipher_o_fifoready(bb_cesarcipher_B1_start_stall_region_out_iord_bl_call_cesarcipher_o_fifoready),
        .out_pipeline_valid_out(bb_cesarcipher_B1_start_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_cesarcipher_B1_start_stall_region_out_stall_out),
        .out_unnamed_cesarcipher3_cesarcipher_avm_address(bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_address),
        .out_unnamed_cesarcipher3_cesarcipher_avm_burstcount(bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_burstcount),
        .out_unnamed_cesarcipher3_cesarcipher_avm_byteenable(bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_byteenable),
        .out_unnamed_cesarcipher3_cesarcipher_avm_enable(bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_enable),
        .out_unnamed_cesarcipher3_cesarcipher_avm_read(bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_read),
        .out_unnamed_cesarcipher3_cesarcipher_avm_write(bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_write),
        .out_unnamed_cesarcipher3_cesarcipher_avm_writedata(bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_writedata),
        .out_valid_out(bb_cesarcipher_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,6)
    assign out_feedback_stall_out_1 = bb_cesarcipher_B1_start_stall_region_out_feedback_stall_out_1;

    // out_exiting_stall_out(GPOUT,18)
    assign out_exiting_stall_out = bb_cesarcipher_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,19)
    assign out_exiting_valid_out = bb_cesarcipher_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going10_cesarcipher1_exiting_valid_out;

    // out_intel_reserved_ffwd_0_0(GPOUT,20)
    assign out_intel_reserved_ffwd_0_0 = bb_cesarcipher_B1_start_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,21)
    assign out_intel_reserved_ffwd_1_0 = bb_cesarcipher_B1_start_stall_region_out_intel_reserved_ffwd_1_0;

    // out_iord_bl_call_cesarcipher_o_fifoready(GPOUT,22)
    assign out_iord_bl_call_cesarcipher_o_fifoready = bb_cesarcipher_B1_start_stall_region_out_iord_bl_call_cesarcipher_o_fifoready;

    // out_stall_out_0(GPOUT,23)
    assign out_stall_out_0 = cesarcipher_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,24)
    assign out_stall_out_1 = cesarcipher_B1_start_merge_out_stall_out_1;

    // out_unnamed_cesarcipher3_cesarcipher_avm_address(GPOUT,25)
    assign out_unnamed_cesarcipher3_cesarcipher_avm_address = bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_address;

    // out_unnamed_cesarcipher3_cesarcipher_avm_burstcount(GPOUT,26)
    assign out_unnamed_cesarcipher3_cesarcipher_avm_burstcount = bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_burstcount;

    // out_unnamed_cesarcipher3_cesarcipher_avm_byteenable(GPOUT,27)
    assign out_unnamed_cesarcipher3_cesarcipher_avm_byteenable = bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_byteenable;

    // out_unnamed_cesarcipher3_cesarcipher_avm_enable(GPOUT,28)
    assign out_unnamed_cesarcipher3_cesarcipher_avm_enable = bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_enable;

    // out_unnamed_cesarcipher3_cesarcipher_avm_read(GPOUT,29)
    assign out_unnamed_cesarcipher3_cesarcipher_avm_read = bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_read;

    // out_unnamed_cesarcipher3_cesarcipher_avm_write(GPOUT,30)
    assign out_unnamed_cesarcipher3_cesarcipher_avm_write = bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_write;

    // out_unnamed_cesarcipher3_cesarcipher_avm_writedata(GPOUT,31)
    assign out_unnamed_cesarcipher3_cesarcipher_avm_writedata = bb_cesarcipher_B1_start_stall_region_out_unnamed_cesarcipher3_cesarcipher_avm_writedata;

    // out_valid_out_0(GPOUT,32)
    assign out_valid_out_0 = cesarcipher_B1_start_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,34)
    assign out_pipeline_valid_out = bb_cesarcipher_B1_start_stall_region_out_pipeline_valid_out;

endmodule