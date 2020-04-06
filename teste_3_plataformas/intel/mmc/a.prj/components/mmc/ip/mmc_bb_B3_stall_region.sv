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

// SystemVerilog created from mmc_bb_B3_stall_region
// SystemVerilog created on Mon Apr  6 12:55:18 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmc_bb_B3_stall_region (
    input wire [0:0] in_iowr_bl_return_mmc_i_fifoready,
    output wire [31:0] out_iowr_bl_return_mmc_o_fifodata,
    output wire [0:0] out_iowr_bl_return_mmc_o_fifovalid,
    output wire [0:0] out_feedback_out_1,
    input wire [0:0] in_feedback_stall_in_1,
    output wire [0:0] out_feedback_valid_out_1,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [31:0] i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_iowr_bl_return_mmc_o_fifodata;
    wire [0:0] i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_iowr_bl_return_mmc_o_fifovalid;
    wire [0:0] i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_o_ack;
    wire [0:0] i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_o_stall;
    wire [0:0] i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_o_valid;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a127_mmc0_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a127_mmc0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a127_mmc0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_out_valid_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_mmc5_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_mmc5_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_mmc5_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_throttle_push_mmc5_out_valid_out;
    wire [0:0] i_select1_mmc3_s;
    reg [31:0] i_select1_mmc3_q;
    wire [0:0] bubble_join_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_q;
    wire [0:0] bubble_select_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_a127_mmc0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_a127_mmc0_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_b;
    wire [0:0] SE_out_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_mmc5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_throttle_push_mmc5_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;


    // SE_stall_entry(STALLENABLE,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_a127_mmc0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    mmc_i_llvm_fpga_ffwd_dest_i1_cmp912_0 thei_llvm_fpga_ffwd_dest_i1_cmp912_mmc1 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_a127_mmc0(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    mmc_i_llvm_fpga_ffwd_dest_i32_a127_0 thei_llvm_fpga_ffwd_dest_i32_a127_mmc0 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i32_a127_mmc0_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_a127_mmc0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_a127_mmc0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    mmc_i_llvm_fpga_ffwd_dest_i32_unnamed_7_mmc0 thei_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2(STALLENABLE,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_consumed0 = (~ (i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_o_stall) & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_consumed1 = (~ (in_stall_in) & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_and0 = i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_and1 = i_llvm_fpga_ffwd_dest_i32_a127_mmc0_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_and1;

    // SE_out_i_llvm_fpga_push_token_i1_throttle_push_mmc5(STALLENABLE,61)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_mmc5_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_throttle_push_mmc5_wireValid = i_llvm_fpga_push_token_i1_throttle_push_mmc5_out_valid_out;

    // bubble_join_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4(BITJOIN,35)
    assign bubble_join_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_q = i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_o_ack;

    // bubble_select_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4(BITSELECT,36)
    assign bubble_select_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_b = $unsigned(bubble_join_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_q[0:0]);

    // i_llvm_fpga_push_token_i1_throttle_push_mmc5(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    mmc_i_llvm_fpga_push_token_i1_throttle_push_0 thei_llvm_fpga_push_token_i1_throttle_push_mmc5 (
        .in_data_in(bubble_select_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_b),
        .in_feedback_stall_in_1(in_feedback_stall_in_1),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_throttle_push_mmc5_backStall),
        .in_valid_in(SE_out_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_V0),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_token_i1_throttle_push_mmc5_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_token_i1_throttle_push_mmc5_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_token_i1_throttle_push_mmc5_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_throttle_push_mmc5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4(STALLENABLE,53)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_V0 = SE_out_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_backStall = i_llvm_fpga_push_token_i1_throttle_push_mmc5_out_stall_out | ~ (SE_out_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_wireValid = i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_o_valid;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_a127_mmc0(BITJOIN,42)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_a127_mmc0_q = i_llvm_fpga_ffwd_dest_i32_a127_mmc0_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_a127_mmc0(BITSELECT,43)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_a127_mmc0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_a127_mmc0_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2(BITJOIN,46)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_q = i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2(BITSELECT,47)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1(BITJOIN,38)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_q = i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1(BITSELECT,39)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_q[0:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_select1_mmc3(MUX,14)@0
    assign i_select1_mmc3_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp912_mmc1_b;
    always @(i_select1_mmc3_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_a127_mmc0_b)
    begin
        unique case (i_select1_mmc3_s)
            1'b0 : i_select1_mmc3_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_b;
            1'b1 : i_select1_mmc3_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_a127_mmc0_b;
            default : i_select1_mmc3_q = 32'b0;
        endcase
    end

    // i_iowr_bl_return_mmc_unnamed_mmc8_mmc4(BLACKBOX,9)@0
    // in in_i_stall@20000000
    // out out_iowr_bl_return_mmc_o_fifodata@20000000
    // out out_iowr_bl_return_mmc_o_fifovalid@20000000
    // out out_o_stall@20000000
    mmc_i_iowr_bl_return_unnamed_mmc8_mmc0 thei_iowr_bl_return_mmc_unnamed_mmc8_mmc4 (
        .in_i_data(i_select1_mmc3_q),
        .in_i_stall(SE_out_i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_V0),
        .in_iowr_bl_return_mmc_i_fifoready(in_iowr_bl_return_mmc_i_fifoready),
        .out_iowr_bl_return_mmc_o_fifodata(i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_iowr_bl_return_mmc_o_fifodata),
        .out_iowr_bl_return_mmc_o_fifovalid(i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_iowr_bl_return_mmc_o_fifovalid),
        .out_o_ack(i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_o_ack),
        .out_o_stall(i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_o_stall),
        .out_o_valid(i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_iowr_bl_return_mmc_o_fifodata = i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_iowr_bl_return_mmc_o_fifodata;
    assign out_iowr_bl_return_mmc_o_fifovalid = i_iowr_bl_return_mmc_unnamed_mmc8_mmc4_out_iowr_bl_return_mmc_o_fifovalid;

    // feedback_out_1_sync(GPOUT,6)
    assign out_feedback_out_1 = i_llvm_fpga_push_token_i1_throttle_push_mmc5_out_feedback_out_1;

    // feedback_valid_out_1_sync(GPOUT,8)
    assign out_feedback_valid_out_1 = i_llvm_fpga_push_token_i1_throttle_push_mmc5_out_feedback_valid_out_1;

    // sync_out(GPOUT,31)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,33)@0
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_mmc7_mmc2_V1;

endmodule
