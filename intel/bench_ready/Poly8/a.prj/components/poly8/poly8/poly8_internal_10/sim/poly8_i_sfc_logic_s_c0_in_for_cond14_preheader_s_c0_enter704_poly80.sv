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

// SystemVerilog created from poly8_i_sfc_logic_s_c0_in_for_cond14_preheader_s_c0_enter704_poly80
// SystemVerilog created on Mon Apr 27 09:52:47 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module poly8_i_sfc_logic_s_c0_in_for_cond14_preheader_s_c0_enter704_poly80 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_poly82_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_poly82_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi273_0_tpl,
    output wire [0:0] out_c0_exi273_1_tpl,
    output wire [0:0] out_c0_exi273_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_poly81,
    input wire [0:0] in_c0_eni169_0_tpl,
    input wire [0:0] in_c0_eni169_1_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] c_i8_116_q;
    wire [7:0] c_i8_9814_q;
    wire [8:0] i_fpga_indvars_iv_next9_poly88_a;
    wire [8:0] i_fpga_indvars_iv_next9_poly88_b;
    logic [8:0] i_fpga_indvars_iv_next9_poly88_o;
    wire [8:0] i_fpga_indvars_iv_next9_poly88_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_poly82_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_poly82_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_poly82_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_poly82_out_pipeline_valid_out;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop14_poly83_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop14_poly83_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond20_poly87_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond20_poly87_out_feedback_valid_out_5;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv8_push14_poly89_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv8_push14_poly89_out_feedback_valid_out_14;
    wire [0:0] i_notcmp17_poly86_q;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next9_poly88_sel_x_b;
    wire [0:0] i_exitcond10_poly84_cmp_nsign_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // enable_stall_connector_not_enable(LOGICAL,33)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // c_i8_116(CONSTANT,7)
    assign c_i8_116_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next9_poly88(ADD,13)@1
    assign i_fpga_indvars_iv_next9_poly88_a = {1'b0, i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop14_poly83_out_data_out};
    assign i_fpga_indvars_iv_next9_poly88_b = {1'b0, c_i8_116_q};
    assign i_fpga_indvars_iv_next9_poly88_o = $unsigned(i_fpga_indvars_iv_next9_poly88_a) + $unsigned(i_fpga_indvars_iv_next9_poly88_b);
    assign i_fpga_indvars_iv_next9_poly88_q = i_fpga_indvars_iv_next9_poly88_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next9_poly88_sel_x(BITSELECT,23)@1
    assign bgTrunc_i_fpga_indvars_iv_next9_poly88_sel_x_b = i_fpga_indvars_iv_next9_poly88_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv8_push14_poly89(BLACKBOX,17)@1
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    poly8_i_llvm_fpga_push_i8_fpga_indvars_iv8_push14_0 thei_llvm_fpga_push_i8_fpga_indvars_iv8_push14_poly89 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next9_poly88_sel_x_b),
        .in_exitcond10(i_exitcond10_poly84_cmp_nsign_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop14_poly83_out_feedback_stall_out_14),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i8_fpga_indvars_iv8_push14_poly89_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i8_fpga_indvars_iv8_push14_poly89_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_9814(CONSTANT,8)
    assign c_i8_9814_q = $unsigned(8'b01100010);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop14_poly83(BLACKBOX,15)@1
    // out out_feedback_stall_out_14@20000000
    poly8_i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop14_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv8_pop14_poly83 (
        .in_data_in(c_i8_9814_q),
        .in_dir(in_c0_eni169_1_tpl),
        .in_feedback_in_14(i_llvm_fpga_push_i8_fpga_indvars_iv8_push14_poly89_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i8_fpga_indvars_iv8_push14_poly89_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop14_poly83_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop14_poly83_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond10_poly84_cmp_nsign(LOGICAL,32)@1
    assign i_exitcond10_poly84_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i8_fpga_indvars_iv8_pop14_poly83_out_data_out[7:7]));

    // i_llvm_fpga_push_i1_notexitcond20_poly87(BLACKBOX,16)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    poly8_i_llvm_fpga_push_i1_notexitcond20_0 thei_llvm_fpga_push_i1_notexitcond20_poly87 (
        .in_data_in(i_exitcond10_poly84_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going19_poly82_out_not_exitcond_stall_out),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond20_poly87_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond20_poly87_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going19_poly82(BLACKBOX,14)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    poly8_i_llvm_fpga_pipeline_keep_going19_0 thei_llvm_fpga_pipeline_keep_going19_poly82 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond20_poly87_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond20_poly87_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going19_poly82_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going19_poly82_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going19_poly82_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going19_poly82_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,11)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_poly82_exiting_valid_out = i_llvm_fpga_pipeline_keep_going19_poly82_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_poly82_exiting_stall_out = i_llvm_fpga_pipeline_keep_going19_poly82_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,21)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going19_poly82_out_pipeline_valid_out;

    // i_notcmp17_poly86(LOGICAL,18)@1
    assign i_notcmp17_poly86_q = i_exitcond10_poly84_cmp_nsign_q ^ VCC_q;

    // sync_out_aunroll_x(GPOUT,28)@1
    assign out_c0_exi273_0_tpl = GND_q;
    assign out_c0_exi273_1_tpl = i_exitcond10_poly84_cmp_nsign_q;
    assign out_c0_exi273_2_tpl = i_notcmp17_poly86_q;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_poly81 = GND_q;

endmodule
