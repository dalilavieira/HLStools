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

// SystemVerilog created from main_i_sfc_logic_s_c0_in_while_body90_i_s_c0_enter133_main0
// SystemVerilog created on Mon Mar 23 14:41:39 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_i_sfc_logic_s_c0_in_while_body90_i_s_c0_enter133_main0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_main1,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [0:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_131_q;
    wire [4:0] c_i5_135_q;
    wire [4:0] c_i5_1433_q;
    wire [1:0] i_cleanups_shl_main5_vt_join_q;
    wire [0:0] i_cleanups_shl_main5_vt_select_1_b;
    wire [5:0] i_fpga_indvars_iv_next_main16_a;
    wire [5:0] i_fpga_indvars_iv_next_main16_b;
    logic [5:0] i_fpga_indvars_iv_next_main16_o;
    wire [5:0] i_fpga_indvars_iv_next_main16_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond39_pop8_main19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond39_pop8_main19_out_feedback_stall_out_8;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop7_main2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop7_main2_out_feedback_stall_out_7;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_main8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_main8_out_feedback_stall_out_6;
    wire [0:0] i_llvm_fpga_push_i1_exitcond39_push8_main20_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_exitcond39_push8_main20_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_main7_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_main7_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main12_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main12_out_feedback_valid_out_2;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push7_main15_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push7_main15_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push6_main17_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push6_main17_out_feedback_valid_out_6;
    wire [0:0] i_masked_main18_qi;
    reg [0:0] i_masked_main18_q;
    wire [0:0] i_next_cleanups_main14_s;
    reg [1:0] i_next_cleanups_main14_q;
    wire [0:0] i_notexit_main11_q;
    wire [0:0] i_or_main13_q;
    wire [0:0] i_xor_main4_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_main16_sel_x_b;
    wire [0:0] i_first_cleanup_main3_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [0:0] i_exitcond_main9_cmp_sign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid63_i_cleanups_shl_main0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid63_i_cleanups_shl_main0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid64_i_cleanups_shl_main0_shift_x_q;
    wire [0:0] leftShiftStage0_uid66_i_cleanups_shl_main0_shift_x_s;
    reg [1:0] leftShiftStage0_uid66_i_cleanups_shl_main0_shift_x_q;
    reg [0:0] redist0_sync_together47_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist1_sync_together47_aunroll_x_in_c0_eni2_2_tpl_1_q;
    reg [0:0] redist2_i_llvm_fpga_pipeline_keep_going_main6_out_data_out_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid63_i_cleanups_shl_main0_shift_x(BITSELECT,62)@1
    assign leftShiftStage0Idx1Rng1_uid63_i_cleanups_shl_main0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop7_main2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid63_i_cleanups_shl_main0_shift_x_b = leftShiftStage0Idx1Rng1_uid63_i_cleanups_shl_main0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid64_i_cleanups_shl_main0_shift_x(BITJOIN,63)@1
    assign leftShiftStage0Idx1_uid64_i_cleanups_shl_main0_shift_x_q = {leftShiftStage0Idx1Rng1_uid63_i_cleanups_shl_main0_shift_x_b, GND_q};

    // leftShiftStage0_uid66_i_cleanups_shl_main0_shift_x(MUX,65)@1
    assign leftShiftStage0_uid66_i_cleanups_shl_main0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid66_i_cleanups_shl_main0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop7_main2_out_data_out or leftShiftStage0Idx1_uid64_i_cleanups_shl_main0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid66_i_cleanups_shl_main0_shift_x_s)
            1'b0 : leftShiftStage0_uid66_i_cleanups_shl_main0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop7_main2_out_data_out;
            1'b1 : leftShiftStage0_uid66_i_cleanups_shl_main0_shift_x_q = leftShiftStage0Idx1_uid64_i_cleanups_shl_main0_shift_x_q;
            default : leftShiftStage0_uid66_i_cleanups_shl_main0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_main5_vt_select_1(BITSELECT,19)@1
    assign i_cleanups_shl_main5_vt_select_1_b = leftShiftStage0_uid66_i_cleanups_shl_main0_shift_x_q[1:1];

    // i_cleanups_shl_main5_vt_join(BITJOIN,18)@1
    assign i_cleanups_shl_main5_vt_join_q = {i_cleanups_shl_main5_vt_select_1_b, GND_q};

    // i_xor_main4(LOGICAL,36)@1
    assign i_xor_main4_q = i_first_cleanup_main3_sel_x_b ^ VCC_q;

    // c_i5_135(CONSTANT,14)
    assign c_i5_135_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_main16(ADD,22)@1
    assign i_fpga_indvars_iv_next_main16_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_main8_out_data_out};
    assign i_fpga_indvars_iv_next_main16_b = {1'b0, c_i5_135_q};
    assign i_fpga_indvars_iv_next_main16_o = $unsigned(i_fpga_indvars_iv_next_main16_a) + $unsigned(i_fpga_indvars_iv_next_main16_b);
    assign i_fpga_indvars_iv_next_main16_q = i_fpga_indvars_iv_next_main16_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_main16_sel_x(BITSELECT,41)@1
    assign bgTrunc_i_fpga_indvars_iv_next_main16_sel_x_b = i_fpga_indvars_iv_next_main16_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push6_main17(BLACKBOX,31)@1
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    main_i_llvm_fpga_push_i5_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i5_fpga_indvars_iv_push6_main17 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_main16_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_main8_out_feedback_stall_out_6),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_main6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i5_fpga_indvars_iv_push6_main17_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i5_fpga_indvars_iv_push6_main17_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_1433(CONSTANT,15)
    assign c_i5_1433_q = $unsigned(5'b01110);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_main8(BLACKBOX,26)@1
    // out out_feedback_stall_out_6@20000000
    main_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_main8 (
        .in_data_in(c_i5_1433_q),
        .in_dir(in_c0_eni2_1_tpl),
        .in_feedback_in_6(i_llvm_fpga_push_i5_fpga_indvars_iv_push6_main17_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i5_fpga_indvars_iv_push6_main17_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_main8_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_main8_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_main9_cmp_sign(LOGICAL,57)@1
    assign i_exitcond_main9_cmp_sign_q = $unsigned(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop6_main8_out_data_out[4:4]);

    // i_or_main13(LOGICAL,35)@1
    assign i_or_main13_q = i_exitcond_main9_cmp_sign_q | i_xor_main4_q;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_next_cleanups_main14(MUX,33)@1
    assign i_next_cleanups_main14_s = i_or_main13_q;
    always @(i_next_cleanups_main14_s or i_llvm_fpga_pop_i2_cleanups_pop7_main2_out_data_out or i_cleanups_shl_main5_vt_join_q)
    begin
        unique case (i_next_cleanups_main14_s)
            1'b0 : i_next_cleanups_main14_q = i_llvm_fpga_pop_i2_cleanups_pop7_main2_out_data_out;
            1'b1 : i_next_cleanups_main14_q = i_cleanups_shl_main5_vt_join_q;
            default : i_next_cleanups_main14_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push7_main15(BLACKBOX,30)@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    main_i_llvm_fpga_push_i2_cleanups_push7_0 thei_llvm_fpga_push_i2_cleanups_push7_main15 (
        .in_data_in(i_next_cleanups_main14_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i2_cleanups_pop7_main2_out_feedback_stall_out_7),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_main6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i2_cleanups_push7_main15_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i2_cleanups_push7_main15_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_131(CONSTANT,13)
    assign c_i2_131_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop7_main2(BLACKBOX,25)@1
    // out out_feedback_stall_out_7@20000000
    main_i_llvm_fpga_pop_i2_cleanups_pop7_0 thei_llvm_fpga_pop_i2_cleanups_pop7_main2 (
        .in_data_in(c_i2_131_q),
        .in_dir(in_c0_eni2_1_tpl),
        .in_feedback_in_7(i_llvm_fpga_push_i2_cleanups_push7_main15_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i2_cleanups_push7_main15_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop7_main2_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i2_cleanups_pop7_main2_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_main3_sel_x(BITSELECT,47)@1
    assign i_first_cleanup_main3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop7_main2_out_data_out[0:0];

    // i_notexit_main11(LOGICAL,34)@1
    assign i_notexit_main11_q = i_exitcond_main9_cmp_sign_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond_main12(BLACKBOX,29)@1
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    main_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_main12 (
        .in_data_in(i_notexit_main11_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_main6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_main3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_main12_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_main12_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,51)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_i_llvm_fpga_pipeline_keep_going_main6_out_data_out_1(DELAY,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going_main6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pipeline_keep_going_main6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_main6_out_data_out);
        end
    end

    // i_llvm_fpga_push_i1_lastiniteration_main7(BLACKBOX,28)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    main_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_main7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_main6_out_initeration_stall_out),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_main6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_main7_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_main7_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_main6(BLACKBOX,23)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    main_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_main6 (
        .in_data_in(in_c0_eni2_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_main7_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_main7_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_main12_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_main12_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_main6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_main6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_main6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_main6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_main6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_main6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,16)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_main6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_main6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,39)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_main6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,50)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,52)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg3(REG,53)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_exitcond39_push8_main20(BLACKBOX,27)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    main_i_llvm_fpga_push_i1_exitcond39_push8_0 thei_llvm_fpga_push_i1_exitcond39_push8_main20 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond39_pop8_main19_out_data_out),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i1_exitcond39_pop8_main19_out_feedback_stall_out_8),
        .in_keep_going(redist2_i_llvm_fpga_pipeline_keep_going_main6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_exitcond39_push8_main20_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_exitcond39_push8_main20_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together47_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together47_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together47_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // redist1_sync_together47_aunroll_x_in_c0_eni2_2_tpl_1(DELAY,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together47_aunroll_x_in_c0_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together47_aunroll_x_in_c0_eni2_2_tpl_1_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond39_pop8_main19(BLACKBOX,24)@2
    // out out_feedback_stall_out_8@20000000
    main_i_llvm_fpga_pop_i1_exitcond39_pop8_0 thei_llvm_fpga_pop_i1_exitcond39_pop8_main19 (
        .in_data_in(redist1_sync_together47_aunroll_x_in_c0_eni2_2_tpl_1_q),
        .in_dir(redist0_sync_together47_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_8(i_llvm_fpga_push_i1_exitcond39_push8_main20_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i1_exitcond39_push8_main20_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond39_pop8_main19_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i1_exitcond39_pop8_main19_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked_main18(LOGICAL,32)@1 + 1
    assign i_masked_main18_qi = i_exitcond_main9_cmp_sign_q & i_first_cleanup_main3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_main18_delay ( .xin(i_masked_main18_qi), .xout(i_masked_main18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,48)@2
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = redist2_i_llvm_fpga_pipeline_keep_going_main6_out_data_out_1_q;
    assign out_c0_exi3_2_tpl = i_masked_main18_q;
    assign out_c0_exi3_3_tpl = i_llvm_fpga_pop_i1_exitcond39_pop8_main19_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_main1 = GND_q;

endmodule
