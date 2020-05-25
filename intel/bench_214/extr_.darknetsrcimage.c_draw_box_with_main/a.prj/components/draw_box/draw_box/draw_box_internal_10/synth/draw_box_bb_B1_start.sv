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

// SystemVerilog created from draw_box_bb_B1_start
// SystemVerilog created on Sun May 24 22:30:21 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module draw_box_bb_B1_start (
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [383:0] in_iord_bl_call_draw_box_i_fifodata,
    input wire [0:0] in_iord_bl_call_draw_box_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_intel_reserved_ffwd_11_0,
    output wire [0:0] out_intel_reserved_ffwd_12_0,
    output wire [32:0] out_intel_reserved_ffwd_13_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_8_0,
    output wire [0:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_iord_bl_call_draw_box_o_fifoready,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [31:0] out_intel_reserved_ffwd_0_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_0_0_1_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_draw_box_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going132_draw_box1_exiting_stall_out;
    wire [0:0] bb_draw_box_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going132_draw_box1_exiting_valid_out;
    wire [0:0] bb_draw_box_B1_start_stall_region_out_feedback_stall_out_1;
    wire [0:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_10_0;
    wire [0:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_11_0;
    wire [0:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_12_0;
    wire [32:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_13_0;
    wire [31:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_7_0;
    wire [31:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_8_0;
    wire [0:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_draw_box_B1_start_stall_region_out_iord_bl_call_draw_box_o_fifoready;
    wire [0:0] bb_draw_box_B1_start_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_draw_box_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_draw_box_B1_start_stall_region_out_valid_out;
    wire [31:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [31:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [63:0] bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [0:0] draw_box_B1_start_branch_out_stall_out;
    wire [0:0] draw_box_B1_start_branch_out_valid_out_0;
    wire [0:0] draw_box_B1_start_merge_out_stall_out_0;
    wire [0:0] draw_box_B1_start_merge_out_stall_out_1;
    wire [0:0] draw_box_B1_start_merge_out_valid_out;


    // draw_box_B1_start_merge(BLACKBOX,4)
    draw_box_B1_start_merge thedraw_box_B1_start_merge (
        .in_stall_in(bb_draw_box_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(draw_box_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(draw_box_B1_start_merge_out_stall_out_1),
        .out_valid_out(draw_box_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // draw_box_B1_start_branch(BLACKBOX,3)
    draw_box_B1_start_branch thedraw_box_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_draw_box_B1_start_stall_region_out_valid_out),
        .out_stall_out(draw_box_B1_start_branch_out_stall_out),
        .out_valid_out_0(draw_box_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_draw_box_B1_start_stall_region(BLACKBOX,2)
    draw_box_bb_B1_start_stall_region thebb_draw_box_B1_start_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_iord_bl_call_draw_box_i_fifodata(in_iord_bl_call_draw_box_i_fifodata),
        .in_iord_bl_call_draw_box_i_fifovalid(in_iord_bl_call_draw_box_i_fifovalid),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(draw_box_B1_start_branch_out_stall_out),
        .in_valid_in(draw_box_B1_start_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going132_draw_box1_exiting_stall_out(bb_draw_box_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going132_draw_box1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going132_draw_box1_exiting_valid_out(bb_draw_box_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going132_draw_box1_exiting_valid_out),
        .out_feedback_stall_out_1(bb_draw_box_B1_start_stall_region_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_10_0(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_1_0(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_9_0),
        .out_iord_bl_call_draw_box_o_fifoready(bb_draw_box_B1_start_stall_region_out_iord_bl_call_draw_box_o_fifoready),
        .out_pipeline_valid_out(bb_draw_box_B1_start_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_draw_box_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_draw_box_B1_start_stall_region_out_valid_out),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_0_0_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,6)
    assign out_feedback_stall_out_1 = bb_draw_box_B1_start_stall_region_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,14)
    assign out_pipeline_valid_out = bb_draw_box_B1_start_stall_region_out_pipeline_valid_out;

    // out_exiting_stall_out(GPOUT,15)
    assign out_exiting_stall_out = bb_draw_box_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going132_draw_box1_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,16)
    assign out_exiting_valid_out = bb_draw_box_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going132_draw_box1_exiting_valid_out;

    // out_intel_reserved_ffwd_10_0(GPOUT,17)
    assign out_intel_reserved_ffwd_10_0 = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_10_0;

    // out_intel_reserved_ffwd_11_0(GPOUT,18)
    assign out_intel_reserved_ffwd_11_0 = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_11_0;

    // out_intel_reserved_ffwd_12_0(GPOUT,19)
    assign out_intel_reserved_ffwd_12_0 = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_12_0;

    // out_intel_reserved_ffwd_13_0(GPOUT,20)
    assign out_intel_reserved_ffwd_13_0 = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_13_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,21)
    assign out_intel_reserved_ffwd_1_0 = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,22)
    assign out_intel_reserved_ffwd_2_0 = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,23)
    assign out_intel_reserved_ffwd_3_0 = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,24)
    assign out_intel_reserved_ffwd_4_0 = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,25)
    assign out_intel_reserved_ffwd_5_0 = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_5_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,26)
    assign out_intel_reserved_ffwd_6_0 = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_6_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,27)
    assign out_intel_reserved_ffwd_7_0 = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_7_0;

    // out_intel_reserved_ffwd_8_0(GPOUT,28)
    assign out_intel_reserved_ffwd_8_0 = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_8_0;

    // out_intel_reserved_ffwd_9_0(GPOUT,29)
    assign out_intel_reserved_ffwd_9_0 = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_9_0;

    // out_iord_bl_call_draw_box_o_fifoready(GPOUT,30)
    assign out_iord_bl_call_draw_box_o_fifoready = bb_draw_box_B1_start_stall_region_out_iord_bl_call_draw_box_o_fifoready;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = draw_box_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,32)
    assign out_stall_out_1 = draw_box_B1_start_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = draw_box_B1_start_branch_out_valid_out_0;

    // out_intel_reserved_ffwd_0_0_0_tpl(GPOUT,34)
    assign out_intel_reserved_ffwd_0_0_0_tpl = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_0_0_0_tpl;

    // out_intel_reserved_ffwd_0_0_1_tpl(GPOUT,35)
    assign out_intel_reserved_ffwd_0_0_1_tpl = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_0_0_1_tpl;

    // out_intel_reserved_ffwd_0_0_2_tpl(GPOUT,36)
    assign out_intel_reserved_ffwd_0_0_2_tpl = bb_draw_box_B1_start_stall_region_out_intel_reserved_ffwd_0_0_2_tpl;

endmodule
