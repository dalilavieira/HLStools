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

// SystemVerilog created from foo_bb_B0_runOnce_stall_region
// SystemVerilog created on Sun Aug 16 19:04:15 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module foo_bb_B0_runOnce_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] foo_B0_runOnce_merge_reg_out_stall_out;
    wire [0:0] foo_B0_runOnce_merge_reg_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_foo0_out_feedback_stall_out_0;
    wire [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_foo0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_foo0_out_valid_out;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_foo1_out_feedback_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_foo1_out_feedback_valid_out_0;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_foo1_out_stall_out;
    wire [0:0] i_llvm_fpga_push_token_i1_wt_limpush_foo1_out_valid_out;
    wire [0:0] SE_out_foo_B0_runOnce_merge_reg_wireValid;
    wire [0:0] SE_out_foo_B0_runOnce_merge_reg_wireStall;
    wire [0:0] SE_out_foo_B0_runOnce_merge_reg_StallValid;
    wire [0:0] SE_out_foo_B0_runOnce_merge_reg_toReg0;
    reg [0:0] SE_out_foo_B0_runOnce_merge_reg_fromReg0;
    wire [0:0] SE_out_foo_B0_runOnce_merge_reg_consumed0;
    wire [0:0] SE_out_foo_B0_runOnce_merge_reg_toReg1;
    reg [0:0] SE_out_foo_B0_runOnce_merge_reg_fromReg1;
    wire [0:0] SE_out_foo_B0_runOnce_merge_reg_consumed1;
    wire [0:0] SE_out_foo_B0_runOnce_merge_reg_or0;
    wire [0:0] SE_out_foo_B0_runOnce_merge_reg_backStall;
    wire [0:0] SE_out_foo_B0_runOnce_merge_reg_V0;
    wire [0:0] SE_out_foo_B0_runOnce_merge_reg_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_foo0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_foo0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_foo0_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_wt_limpush_foo1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_token_i1_wt_limpush_foo1_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_out_i_llvm_fpga_push_token_i1_wt_limpush_foo1(STALLENABLE,31)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_token_i1_wt_limpush_foo1_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_token_i1_wt_limpush_foo1_wireValid = i_llvm_fpga_push_token_i1_wt_limpush_foo1_out_valid_out;

    // i_llvm_fpga_push_token_i1_wt_limpush_foo1(BLACKBOX,9)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_out_0@20000000
    // out out_feedback_valid_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    foo_i_llvm_fpga_push_token_i1_wt_limpush_0 thei_llvm_fpga_push_token_i1_wt_limpush_foo1 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_0(i_llvm_fpga_pop_token_i1_wt_limpop_foo0_out_feedback_stall_out_0),
        .in_stall_in(SE_out_i_llvm_fpga_push_token_i1_wt_limpush_foo1_backStall),
        .in_valid_in(SE_out_foo_B0_runOnce_merge_reg_V1),
        .out_data_out(),
        .out_feedback_out_0(i_llvm_fpga_push_token_i1_wt_limpush_foo1_out_feedback_out_0),
        .out_feedback_valid_out_0(i_llvm_fpga_push_token_i1_wt_limpush_foo1_out_feedback_valid_out_0),
        .out_stall_out(i_llvm_fpga_push_token_i1_wt_limpush_foo1_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_token_i1_wt_limpush_foo1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_foo0(STALLENABLE,29)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_foo0_V0 = SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_foo0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_foo0_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_foo0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_foo0_wireValid = i_llvm_fpga_pop_token_i1_wt_limpop_foo0_out_valid_out;

    // i_llvm_fpga_pop_token_i1_wt_limpop_foo0(BLACKBOX,8)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_0@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    foo_i_llvm_fpga_pop_token_i1_wt_limpop_0 thei_llvm_fpga_pop_token_i1_wt_limpop_foo0 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_0(i_llvm_fpga_push_token_i1_wt_limpush_foo1_out_feedback_out_0),
        .in_feedback_valid_in_0(i_llvm_fpga_push_token_i1_wt_limpush_foo1_out_feedback_valid_out_0),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_foo0_backStall),
        .in_valid_in(SE_out_foo_B0_runOnce_merge_reg_V0),
        .out_data_out(),
        .out_feedback_stall_out_0(i_llvm_fpga_pop_token_i1_wt_limpop_foo0_out_feedback_stall_out_0),
        .out_stall_out(i_llvm_fpga_pop_token_i1_wt_limpop_foo0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_token_i1_wt_limpop_foo0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_foo_B0_runOnce_merge_reg(STALLENABLE,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_foo_B0_runOnce_merge_reg_fromReg0 <= '0;
            SE_out_foo_B0_runOnce_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_foo_B0_runOnce_merge_reg_fromReg0 <= SE_out_foo_B0_runOnce_merge_reg_toReg0;
            // Successor 1
            SE_out_foo_B0_runOnce_merge_reg_fromReg1 <= SE_out_foo_B0_runOnce_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_foo_B0_runOnce_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_token_i1_wt_limpop_foo0_out_stall_out) & SE_out_foo_B0_runOnce_merge_reg_wireValid) | SE_out_foo_B0_runOnce_merge_reg_fromReg0;
    assign SE_out_foo_B0_runOnce_merge_reg_consumed1 = (~ (i_llvm_fpga_push_token_i1_wt_limpush_foo1_out_stall_out) & SE_out_foo_B0_runOnce_merge_reg_wireValid) | SE_out_foo_B0_runOnce_merge_reg_fromReg1;
    // Consuming
    assign SE_out_foo_B0_runOnce_merge_reg_StallValid = SE_out_foo_B0_runOnce_merge_reg_backStall & SE_out_foo_B0_runOnce_merge_reg_wireValid;
    assign SE_out_foo_B0_runOnce_merge_reg_toReg0 = SE_out_foo_B0_runOnce_merge_reg_StallValid & SE_out_foo_B0_runOnce_merge_reg_consumed0;
    assign SE_out_foo_B0_runOnce_merge_reg_toReg1 = SE_out_foo_B0_runOnce_merge_reg_StallValid & SE_out_foo_B0_runOnce_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_foo_B0_runOnce_merge_reg_or0 = SE_out_foo_B0_runOnce_merge_reg_consumed0;
    assign SE_out_foo_B0_runOnce_merge_reg_wireStall = ~ (SE_out_foo_B0_runOnce_merge_reg_consumed1 & SE_out_foo_B0_runOnce_merge_reg_or0);
    assign SE_out_foo_B0_runOnce_merge_reg_backStall = SE_out_foo_B0_runOnce_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_foo_B0_runOnce_merge_reg_V0 = SE_out_foo_B0_runOnce_merge_reg_wireValid & ~ (SE_out_foo_B0_runOnce_merge_reg_fromReg0);
    assign SE_out_foo_B0_runOnce_merge_reg_V1 = SE_out_foo_B0_runOnce_merge_reg_wireValid & ~ (SE_out_foo_B0_runOnce_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_foo_B0_runOnce_merge_reg_wireValid = foo_B0_runOnce_merge_reg_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // foo_B0_runOnce_merge_reg(BLACKBOX,7)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    foo_B0_runOnce_merge_reg thefoo_B0_runOnce_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_foo_B0_runOnce_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(foo_B0_runOnce_merge_reg_out_stall_out),
        .out_valid_out(foo_B0_runOnce_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,32)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = foo_B0_runOnce_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,19)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,21)@2
    assign out_valid_out = SE_out_i_llvm_fpga_pop_token_i1_wt_limpop_foo0_V0;

endmodule
