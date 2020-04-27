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

// SystemVerilog created from poly5_bb_B5_stall_region
// SystemVerilog created on Mon Apr 27 09:51:13 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module poly5_bb_B5_stall_region (
    input wire [15:0] in_unnamed_poly55_poly5_avm_readdata,
    input wire [0:0] in_unnamed_poly55_poly5_avm_writeack,
    input wire [0:0] in_unnamed_poly55_poly5_avm_waitrequest,
    input wire [0:0] in_unnamed_poly55_poly5_avm_readdatavalid,
    output wire [31:0] out_unnamed_poly55_poly5_avm_address,
    output wire [0:0] out_unnamed_poly55_poly5_avm_enable,
    output wire [0:0] out_unnamed_poly55_poly5_avm_read,
    output wire [0:0] out_unnamed_poly55_poly5_avm_write,
    output wire [15:0] out_unnamed_poly55_poly5_avm_writedata,
    output wire [1:0] out_unnamed_poly55_poly5_avm_byteenable,
    output wire [0:0] out_unnamed_poly55_poly5_avm_burstcount,
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_return_poly5_i_fifoready,
    output wire [31:0] out_iowr_bl_return_poly5_o_fifodata,
    output wire [0:0] out_iowr_bl_return_poly5_o_fifovalid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_iowr_bl_return_poly5_o_fifodata;
    wire [0:0] i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_iowr_bl_return_poly5_o_fifovalid;
    wire [0:0] i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_o_ack;
    wire [0:0] i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_o_stall;
    wire [0:0] i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_o_valid;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_poly53_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_poly53_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_poly53_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_poly53_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_burstcount;
    wire [1:0] i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_write;
    wire [15:0] i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_c0_exit95_1_tpl;
    wire [0:0] bubble_join_i_iowr_bl_return_poly5_unnamed_poly56_poly52_q;
    wire [0:0] bubble_select_i_iowr_bl_return_poly5_unnamed_poly56_poly52_b;
    wire [31:0] bubble_join_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_b;
    wire [0:0] SE_out_i_iowr_bl_return_poly5_unnamed_poly56_poly52_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_poly5_unnamed_poly56_poly52_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_poly5_unnamed_poly56_poly52_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_poly53_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_poly53_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_V1;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,41)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_poly53(STALLENABLE,40)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_poly53_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_poly53_wireValid = i_llvm_fpga_push_token_i1_throttle_push_poly53_out_valid_out;

    // bubble_join_i_iowr_bl_return_poly5_unnamed_poly56_poly52(BITJOIN,30)
    assign bubble_join_i_iowr_bl_return_poly5_unnamed_poly56_poly52_q = i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_o_ack;

    // bubble_select_i_iowr_bl_return_poly5_unnamed_poly56_poly52(BITSELECT,31)
    assign bubble_select_i_iowr_bl_return_poly5_unnamed_poly56_poly52_b = $unsigned(bubble_join_i_iowr_bl_return_poly5_unnamed_poly56_poly52_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_poly53(BLACKBOX,11)@8
    // in in_stall_in@20000000
    // out out_data_out@9
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@9
    poly5_i_llvm_fpga_push_token_i1_throttle_push_0 thei_llvm_fpga_push_token_i1_throttle_push_poly53 (
        .in_data_in(bubble_select_i_iowr_bl_return_poly5_unnamed_poly56_poly52_b),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_poly53_backStall),
        .in_valid_in(SE_out_i_iowr_bl_return_poly5_unnamed_poly56_poly52_V0),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_token_i1_throttle_push_poly53_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_token_i1_throttle_push_poly53_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_poly53_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_poly53_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_return_poly5_unnamed_poly56_poly52(STALLENABLE,38)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_return_poly5_unnamed_poly56_poly52_V0 = SE_out_i_iowr_bl_return_poly5_unnamed_poly56_poly52_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_poly5_unnamed_poly56_poly52_backStall = i_llvm_fpga_push_token_i1_throttle_push_poly53_out_stall_out | ~ (SE_out_i_iowr_bl_return_poly5_unnamed_poly56_poly52_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_poly5_unnamed_poly56_poly52_wireValid = i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_o_valid;

    // bubble_join_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x(BITJOIN,34)
    assign bubble_join_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_q = i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_c0_exit95_1_tpl;

    // bubble_select_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x(BITSELECT,35)
    assign bubble_select_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_q[31:0]);

    // i_iowr_bl_return_poly5_unnamed_poly56_poly52(BLACKBOX,10)@8
    // in in_i_stall@20000000
    // out out_iowr_bl_return_poly5_o_fifodata@20000000
    // out out_iowr_bl_return_poly5_o_fifovalid@20000000
    // out out_o_stall@20000000
    poly5_i_iowr_bl_return_unnamed_poly56_poly50 thei_iowr_bl_return_poly5_unnamed_poly56_poly52 (
        .in_i_data(bubble_select_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_b),
        .in_i_stall(SE_out_i_iowr_bl_return_poly5_unnamed_poly56_poly52_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_V1),
        .in_iowr_bl_return_poly5_i_fifoready(in_iowr_bl_return_poly5_i_fifoready),
        .out_iowr_bl_return_poly5_o_fifodata(i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_iowr_bl_return_poly5_o_fifodata),
        .out_iowr_bl_return_poly5_o_fifovalid(i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_iowr_bl_return_poly5_o_fifovalid),
        .out_o_ack(i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_o_ack),
        .out_o_stall(i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_o_stall),
        .out_o_valid(i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x(STALLENABLE,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_consumed0 = (~ (in_stall_in) & SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_consumed1 = (~ (i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_o_stall) & SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x(BLACKBOX,28)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_unnamed_poly55_poly5_avm_address@20000000
    // out out_unnamed_poly55_poly5_avm_burstcount@20000000
    // out out_unnamed_poly55_poly5_avm_byteenable@20000000
    // out out_unnamed_poly55_poly5_avm_enable@20000000
    // out out_unnamed_poly55_poly5_avm_read@20000000
    // out out_unnamed_poly55_poly5_avm_write@20000000
    // out out_unnamed_poly55_poly5_avm_writedata@20000000
    // out out_c0_exit95_0_tpl@8
    // out out_c0_exit95_1_tpl@8
    poly5_i_sfc_s_c0_in_for_cond_cleanup11_s_c0_enter93_poly50 thei_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_unnamed_poly55_poly5_avm_readdata(in_unnamed_poly55_poly5_avm_readdata),
        .in_unnamed_poly55_poly5_avm_readdatavalid(in_unnamed_poly55_poly5_avm_readdatavalid),
        .in_unnamed_poly55_poly5_avm_waitrequest(in_unnamed_poly55_poly5_avm_waitrequest),
        .in_unnamed_poly55_poly5_avm_writeack(in_unnamed_poly55_poly5_avm_writeack),
        .in_unnamed_poly54_0_tpl(GND_q),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_o_valid),
        .out_unnamed_poly55_poly5_avm_address(i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_address),
        .out_unnamed_poly55_poly5_avm_burstcount(i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_burstcount),
        .out_unnamed_poly55_poly5_avm_byteenable(i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_byteenable),
        .out_unnamed_poly55_poly5_avm_enable(i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_enable),
        .out_unnamed_poly55_poly5_avm_read(i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_read),
        .out_unnamed_poly55_poly5_avm_write(i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_write),
        .out_unnamed_poly55_poly5_avm_writedata(i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_writedata),
        .out_c0_exit95_0_tpl(),
        .out_c0_exit95_1_tpl(i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_c0_exit95_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_poly55_poly5_avm_address = i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_address;
    assign out_unnamed_poly55_poly5_avm_enable = i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_enable;
    assign out_unnamed_poly55_poly5_avm_read = i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_read;
    assign out_unnamed_poly55_poly5_avm_write = i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_write;
    assign out_unnamed_poly55_poly5_avm_writedata = i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_writedata;
    assign out_unnamed_poly55_poly5_avm_byteenable = i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_byteenable;
    assign out_unnamed_poly55_poly5_avm_burstcount = i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_out_unnamed_poly55_poly5_avm_burstcount;

    // feedback_out_1_sync(GPOUT,7)
    assign out_feedback_out_1 = i_llvm_fpga_push_token_i1_throttle_push_poly53_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,9)
    assign out_feedback_valid_out_1 = i_llvm_fpga_push_token_i1_throttle_push_poly53_out_feedback_valid_out_1;

    // sync_out(GPOUT,23)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,26)
    assign out_iowr_bl_return_poly5_o_fifodata = i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_iowr_bl_return_poly5_o_fifodata;
    assign out_iowr_bl_return_poly5_o_fifovalid = i_iowr_bl_return_poly5_unnamed_poly56_poly52_out_iowr_bl_return_poly5_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,27)@8
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond_cleanup11_poly5s_c0_enter93_poly50_aunroll_x_V0;

endmodule
