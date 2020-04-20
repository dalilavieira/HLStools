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

// SystemVerilog created from paeth_bb_B1_start
// SystemVerilog created on Sun Apr 19 21:28:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module paeth_bb_B1_start (
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [31:0] in_iord_bl_call_paeth_i_fifodata,
    input wire [0:0] in_iord_bl_call_paeth_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_iord_bl_call_paeth_o_fifoready,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_paeth_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_paeth1_exiting_stall_out;
    wire [0:0] bb_paeth_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_paeth1_exiting_valid_out;
    wire [0:0] bb_paeth_B1_start_stall_region_out_feedback_stall_out_1;
    wire [31:0] bb_paeth_B1_start_stall_region_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_paeth_B1_start_stall_region_out_iord_bl_call_paeth_o_fifoready;
    wire [0:0] bb_paeth_B1_start_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_paeth_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_paeth_B1_start_stall_region_out_valid_out;
    wire [0:0] paeth_B1_start_branch_out_stall_out;
    wire [0:0] paeth_B1_start_branch_out_valid_out_0;
    wire [0:0] paeth_B1_start_merge_out_stall_out_0;
    wire [0:0] paeth_B1_start_merge_out_stall_out_1;
    wire [0:0] paeth_B1_start_merge_out_valid_out;


    // paeth_B1_start_merge(BLACKBOX,19)
    paeth_B1_start_merge thepaeth_B1_start_merge (
        .in_stall_in(bb_paeth_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(paeth_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(paeth_B1_start_merge_out_stall_out_1),
        .out_valid_out(paeth_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // paeth_B1_start_branch(BLACKBOX,18)
    paeth_B1_start_branch thepaeth_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_paeth_B1_start_stall_region_out_valid_out),
        .out_stall_out(paeth_B1_start_branch_out_stall_out),
        .out_valid_out_0(paeth_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_paeth_B1_start_stall_region(BLACKBOX,2)
    paeth_bb_B1_start_stall_region thebb_paeth_B1_start_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_iord_bl_call_paeth_i_fifodata(in_iord_bl_call_paeth_i_fifodata),
        .in_iord_bl_call_paeth_i_fifovalid(in_iord_bl_call_paeth_i_fifovalid),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(paeth_B1_start_branch_out_stall_out),
        .in_valid_in(paeth_B1_start_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_paeth1_exiting_stall_out(bb_paeth_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_paeth1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_paeth1_exiting_valid_out(bb_paeth_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_paeth1_exiting_valid_out),
        .out_feedback_stall_out_1(bb_paeth_B1_start_stall_region_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_paeth_B1_start_stall_region_out_intel_reserved_ffwd_0_0),
        .out_iord_bl_call_paeth_o_fifoready(bb_paeth_B1_start_stall_region_out_iord_bl_call_paeth_o_fifoready),
        .out_pipeline_valid_out(bb_paeth_B1_start_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_paeth_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_paeth_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,4)
    assign out_feedback_stall_out_1 = bb_paeth_B1_start_stall_region_out_feedback_stall_out_1;

    // out_exiting_stall_out(GPOUT,11)
    assign out_exiting_stall_out = bb_paeth_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_paeth1_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,12)
    assign out_exiting_valid_out = bb_paeth_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_paeth1_exiting_valid_out;

    // out_intel_reserved_ffwd_0_0(GPOUT,13)
    assign out_intel_reserved_ffwd_0_0 = bb_paeth_B1_start_stall_region_out_intel_reserved_ffwd_0_0;

    // out_iord_bl_call_paeth_o_fifoready(GPOUT,14)
    assign out_iord_bl_call_paeth_o_fifoready = bb_paeth_B1_start_stall_region_out_iord_bl_call_paeth_o_fifoready;

    // out_stall_out_0(GPOUT,15)
    assign out_stall_out_0 = paeth_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,16)
    assign out_stall_out_1 = paeth_B1_start_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,17)
    assign out_valid_out_0 = paeth_B1_start_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,21)
    assign out_pipeline_valid_out = bb_paeth_B1_start_stall_region_out_pipeline_valid_out;

endmodule
