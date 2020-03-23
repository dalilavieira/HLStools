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

// SystemVerilog created from main_i_sfc_logic_s_c0_in_while_cond29_i_preheader_s_c0_enter2_main0
// SystemVerilog created on Mon Mar 23 13:40:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_i_sfc_logic_s_c0_in_while_cond29_i_preheader_s_c0_enter2_main0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going5_main2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going5_main2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_main1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] c_i33_114_q;
    wire [33:0] i_fpga_indvars_iv_next2_main8_a;
    wire [33:0] i_fpga_indvars_iv_next2_main8_b;
    logic [33:0] i_fpga_indvars_iv_next2_main8_o;
    wire [33:0] i_fpga_indvars_iv_next2_main8_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going5_main2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going5_main2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going5_main2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going5_main2_out_pipeline_valid_out;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv1_pop5_main3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv1_pop5_main3_out_feedback_stall_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond6_main7_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond6_main7_out_feedback_valid_out_4;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv1_push5_main9_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv1_push5_main9_out_feedback_valid_out_5;
    wire [0:0] i_notexit7_main6_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next2_main8_sel_x_b;
    wire [0:0] i_exitcond3_main4_cmp_sign_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // enable_stall_connector_not_enable(LOGICAL,32)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // i_fpga_indvars_iv_next2_main8(ADD,12)@1
    assign i_fpga_indvars_iv_next2_main8_a = {1'b0, i_llvm_fpga_pop_i33_fpga_indvars_iv1_pop5_main3_out_data_out};
    assign i_fpga_indvars_iv_next2_main8_b = {1'b0, c_i33_114_q};
    assign i_fpga_indvars_iv_next2_main8_o = $unsigned(i_fpga_indvars_iv_next2_main8_a) + $unsigned(i_fpga_indvars_iv_next2_main8_b);
    assign i_fpga_indvars_iv_next2_main8_q = i_fpga_indvars_iv_next2_main8_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next2_main8_sel_x(BITSELECT,22)@1
    assign bgTrunc_i_fpga_indvars_iv_next2_main8_sel_x_b = i_fpga_indvars_iv_next2_main8_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv1_push5_main9(BLACKBOX,16)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    main_i_llvm_fpga_push_i33_fpga_indvars_iv1_push5_0 thei_llvm_fpga_push_i33_fpga_indvars_iv1_push5_main9 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next2_main8_sel_x_b),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_i33_fpga_indvars_iv1_pop5_main3_out_feedback_stall_out_5),
        .in_notexit7(i_notexit7_main6_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i33_fpga_indvars_iv1_push5_main9_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i33_fpga_indvars_iv1_push5_main9_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_114(CONSTANT,7)
    assign c_i33_114_q = $unsigned(33'b111111111111111111111111111111111);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv1_pop5_main3(BLACKBOX,14)@1
    // out out_feedback_stall_out_5@20000000
    main_i_llvm_fpga_pop_i33_fpga_indvars_iv1_pop5_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv1_pop5_main3 (
        .in_data_in(c_i33_114_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_5(i_llvm_fpga_push_i33_fpga_indvars_iv1_push5_main9_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_i33_fpga_indvars_iv1_push5_main9_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv1_pop5_main3_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_i33_fpga_indvars_iv1_pop5_main3_out_feedback_stall_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond3_main4_cmp_sign(LOGICAL,30)@1
    assign i_exitcond3_main4_cmp_sign_q = $unsigned(i_llvm_fpga_pop_i33_fpga_indvars_iv1_pop5_main3_out_data_out[32:32]);

    // i_notexit7_main6(LOGICAL,17)@1
    assign i_notexit7_main6_q = i_exitcond3_main4_cmp_sign_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond6_main7(BLACKBOX,15)@1
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    main_i_llvm_fpga_push_i1_notexitcond6_0 thei_llvm_fpga_push_i1_notexitcond6_main7 (
        .in_data_in(i_notexit7_main6_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going5_main2_out_not_exitcond_stall_out),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond6_main7_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond6_main7_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going5_main2(BLACKBOX,13)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    main_i_llvm_fpga_pipeline_keep_going5_0 thei_llvm_fpga_pipeline_keep_going5_main2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond6_main7_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond6_main7_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going5_main2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going5_main2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going5_main2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going5_main2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,10)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going5_main2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going5_main2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going5_main2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going5_main2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going5_main2_out_pipeline_valid_out;

    // sync_out_aunroll_x(GPOUT,27)@1
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = i_exitcond3_main4_cmp_sign_q;
    assign out_c0_exi2_2_tpl = i_notexit7_main6_q;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_main1 = GND_q;

endmodule
