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

// SystemVerilog created from sobel_filter_bb_B0_runOnce_stall_region
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_bb_B0_runOnce_stall_region (
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_out_feedback_stall_out_0;
    wire [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_out_valid_out;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_out_feedback_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_out_feedback_valid_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_out_valid_out;
    wire [0:0] sobel_filter_B0_runOnce_merge_reg_out_stall_out;
    wire [0:0] sobel_filter_B0_runOnce_merge_reg_out_valid_out;
    wire [31:0] i_sfc_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter2_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_sfc_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter2_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter2_aunroll_x_out_o_valid;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_backStall;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_wireValid;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_wireStall;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_StallValid;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_toReg0;
    reg [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg0;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_consumed0;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_toReg1;
    reg [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg1;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_consumed1;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_toReg2;
    reg [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg2;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_consumed2;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_or0;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_or1;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_backStall;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_V0;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_V1;
    wire [0:0] SE_out_sobel_filter_B0_runOnce_merge_reg_V2;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_stall_out_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1(STALLENABLE,35)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_wireValid = i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_out_valid_out;

    // i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1(BLACKBOX,8)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_out_0@20000000
    // out out_feedback_valid_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    sobel_filter_i_llvm_fpga_push_token_i1_wt_limpush_0 thei_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_0(i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_out_feedback_stall_out_0),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_backStall),
        .in_valid_in(SE_out_sobel_filter_B0_runOnce_merge_reg_V1),
        .out_data_out(),
        .out_feedback_out_0(i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_out_feedback_out_0),
        .out_feedback_valid_out_0(i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_out_feedback_valid_out_0),
        .out_stall_out(i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg(STALLFIFO,54)
    assign bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_valid_in = SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_V0;
    assign bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(42),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0(STALLENABLE,33)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_V0 = SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_backStall = bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_wireValid = i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_out_valid_out;

    // i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0(BLACKBOX,7)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    sobel_filter_i_llvm_fpga_pop_token_i1_wt_limpop_0 thei_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_0(i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_out_feedback_out_0),
        .in_feedback_valid_in_0(i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_out_feedback_valid_out_0),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_backStall),
        .in_valid_in(SE_out_sobel_filter_B0_runOnce_merge_reg_V0),
        .out_data_out(),
        .out_feedback_stall_out_0(i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_out_feedback_stall_out_0),
        .out_stall_out(i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,38)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = sobel_filter_B0_runOnce_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sobel_filter_B0_runOnce_merge_reg(BLACKBOX,18)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    sobel_filter_B0_runOnce_merge_reg thesobel_filter_B0_runOnce_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_sobel_filter_B0_runOnce_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(sobel_filter_B0_runOnce_merge_reg_out_stall_out),
        .out_valid_out(sobel_filter_B0_runOnce_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_sobel_filter_B0_runOnce_merge_reg(STALLENABLE,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg0 <= '0;
            SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg1 <= '0;
            SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg0 <= SE_out_sobel_filter_B0_runOnce_merge_reg_toReg0;
            // Successor 1
            SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg1 <= SE_out_sobel_filter_B0_runOnce_merge_reg_toReg1;
            // Successor 2
            SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg2 <= SE_out_sobel_filter_B0_runOnce_merge_reg_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_out_stall_out) & SE_out_sobel_filter_B0_runOnce_merge_reg_wireValid) | SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg0;
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_consumed1 = (~ (i_llvm_fpga_push_token_i1_wt_limpush_sobel_filter1_out_stall_out) & SE_out_sobel_filter_B0_runOnce_merge_reg_wireValid) | SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg1;
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_consumed2 = (~ (i_sfc_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter2_aunroll_x_out_o_stall) & SE_out_sobel_filter_B0_runOnce_merge_reg_wireValid) | SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg2;
    // Consuming
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_StallValid = SE_out_sobel_filter_B0_runOnce_merge_reg_backStall & SE_out_sobel_filter_B0_runOnce_merge_reg_wireValid;
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_toReg0 = SE_out_sobel_filter_B0_runOnce_merge_reg_StallValid & SE_out_sobel_filter_B0_runOnce_merge_reg_consumed0;
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_toReg1 = SE_out_sobel_filter_B0_runOnce_merge_reg_StallValid & SE_out_sobel_filter_B0_runOnce_merge_reg_consumed1;
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_toReg2 = SE_out_sobel_filter_B0_runOnce_merge_reg_StallValid & SE_out_sobel_filter_B0_runOnce_merge_reg_consumed2;
    // Backward Stall generation
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_or0 = SE_out_sobel_filter_B0_runOnce_merge_reg_consumed0;
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_or1 = SE_out_sobel_filter_B0_runOnce_merge_reg_consumed1 & SE_out_sobel_filter_B0_runOnce_merge_reg_or0;
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_wireStall = ~ (SE_out_sobel_filter_B0_runOnce_merge_reg_consumed2 & SE_out_sobel_filter_B0_runOnce_merge_reg_or1);
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_backStall = SE_out_sobel_filter_B0_runOnce_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_V0 = SE_out_sobel_filter_B0_runOnce_merge_reg_wireValid & ~ (SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg0);
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_V1 = SE_out_sobel_filter_B0_runOnce_merge_reg_wireValid & ~ (SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg1);
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_V2 = SE_out_sobel_filter_B0_runOnce_merge_reg_wireValid & ~ (SE_out_sobel_filter_B0_runOnce_merge_reg_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_sobel_filter_B0_runOnce_merge_reg_wireValid = sobel_filter_B0_runOnce_merge_reg_out_valid_out;

    // SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1(STALLENABLE,43)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_and0 = bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_wireValid = i_sfc_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter2_aunroll_x_out_o_valid & SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_and0;

    // i_sfc_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter2_aunroll_x(BLACKBOX,25)@1
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@43
    // out out_c0_exit_0_tpl@43
    sobel_filter_i_sfc_s_c0_in_entry_s_c0_enter_sobel_filter2 thei_sfc_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter2_aunroll_x (
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_backStall),
        .in_i_valid(SE_out_sobel_filter_B0_runOnce_merge_reg_V2),
        .in_unnamed_sobel_filter0_0_tpl(GND_q),
        .out_intel_reserved_ffwd_0_0(i_sfc_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter2_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_o_stall(i_sfc_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter2_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter2_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,17)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter2_aunroll_x_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,22)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,24)@43
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_token_i1_wt_limpop_sobel_filter0_1_V0;

endmodule
