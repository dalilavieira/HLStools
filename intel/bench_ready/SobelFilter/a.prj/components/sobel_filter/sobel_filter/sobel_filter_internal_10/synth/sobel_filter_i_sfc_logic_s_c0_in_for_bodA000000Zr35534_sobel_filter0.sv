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

// SystemVerilog created from sobel_filter_i_sfc_logic_s_c0_in_for_bodA000000Zr35534_sobel_filter0
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_i_sfc_logic_s_c0_in_for_bodA000000Zr35534_sobel_filter0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi5364_0_tpl,
    output wire [0:0] out_c0_exi5364_1_tpl,
    output wire [0:0] out_c0_exi5364_2_tpl,
    output wire [0:0] out_c0_exi5364_3_tpl,
    output wire [0:0] out_c0_exi5364_4_tpl,
    output wire [0:0] out_c0_exi5364_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_sobel_filter3,
    input wire [0:0] in_c0_eni4354_0_tpl,
    input wire [0:0] in_c0_eni4354_1_tpl,
    input wire [0:0] in_c0_eni4354_2_tpl,
    input wire [0:0] in_c0_eni4354_3_tpl,
    input wire [0:0] in_c0_eni4354_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_139_q;
    wire [4:0] c_i5_143_q;
    wire [4:0] c_i5_741_q;
    wire [1:0] i_cleanups_shl86_sobel_filter5_vt_join_q;
    wire [0:0] i_cleanups_shl86_sobel_filter5_vt_select_1_b;
    wire [5:0] i_fpga_indvars_iv_next32_sobel_filter16_a;
    wire [5:0] i_fpga_indvars_iv_next32_sobel_filter16_b;
    logic [5:0] i_fpga_indvars_iv_next32_sobel_filter16_o;
    wire [5:0] i_fpga_indvars_iv_next32_sobel_filter16_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond45164_pop43_sobel_filter21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond45164_pop43_sobel_filter21_out_feedback_stall_out_43;
    wire [0:0] i_llvm_fpga_pop_i1_forked156160_pop42_sobel_filter19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked156160_pop42_sobel_filter19_out_feedback_stall_out_42;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp131171_pop44_sobel_filter23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp131171_pop44_sobel_filter23_out_feedback_stall_out_44;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups85_pop41_sobel_filter2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups85_pop41_sobel_filter2_out_feedback_stall_out_41;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv31_pop40_sobel_filter8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv31_pop40_sobel_filter8_out_feedback_stall_out_40;
    wire [0:0] i_llvm_fpga_push_i1_exitcond45164_push43_sobel_filter22_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i1_exitcond45164_push43_sobel_filter22_out_feedback_valid_out_43;
    wire [0:0] i_llvm_fpga_push_i1_forked156160_push42_sobel_filter20_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i1_forked156160_push42_sobel_filter20_out_feedback_valid_out_42;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration84_sobel_filter7_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration84_sobel_filter7_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notcmp131171_push44_sobel_filter24_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notcmp131171_push44_sobel_filter24_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond92_sobel_filter12_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond92_sobel_filter12_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i2_cleanups85_push41_sobel_filter15_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i2_cleanups85_push41_sobel_filter15_out_feedback_valid_out_41;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv31_push40_sobel_filter17_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv31_push40_sobel_filter17_out_feedback_valid_out_40;
    wire [0:0] i_masked91_sobel_filter18_qi;
    reg [0:0] i_masked91_sobel_filter18_q;
    wire [0:0] i_next_cleanups90_sobel_filter14_s;
    reg [1:0] i_next_cleanups90_sobel_filter14_q;
    wire [0:0] i_notcmp78_sobel_filter11_q;
    wire [0:0] i_or89_sobel_filter13_q;
    wire [0:0] i_xor88_sobel_filter4_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next32_sobel_filter16_sel_x_b;
    wire [0:0] i_first_cleanup87_sobel_filter3_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    wire [0:0] i_exitcond33_sobel_filter9_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid75_i_cleanups_shl86_sobel_filter0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid75_i_cleanups_shl86_sobel_filter0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid76_i_cleanups_shl86_sobel_filter0_shift_x_q;
    wire [0:0] leftShiftStage0_uid78_i_cleanups_shl86_sobel_filter0_shift_x_s;
    reg [1:0] leftShiftStage0_uid78_i_cleanups_shl86_sobel_filter0_shift_x_q;
    reg [0:0] redist0_sync_together59_aunroll_x_in_c0_eni4354_1_tpl_1_q;
    reg [0:0] redist1_sync_together59_aunroll_x_in_c0_eni4354_2_tpl_1_q;
    reg [0:0] redist2_sync_together59_aunroll_x_in_c0_eni4354_3_tpl_1_q;
    reg [0:0] redist3_sync_together59_aunroll_x_in_c0_eni4354_4_tpl_1_q;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_data_out_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid75_i_cleanups_shl86_sobel_filter0_shift_x(BITSELECT,74)@1
    assign leftShiftStage0Idx1Rng1_uid75_i_cleanups_shl86_sobel_filter0_shift_x_in = i_llvm_fpga_pop_i2_cleanups85_pop41_sobel_filter2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid75_i_cleanups_shl86_sobel_filter0_shift_x_b = leftShiftStage0Idx1Rng1_uid75_i_cleanups_shl86_sobel_filter0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid76_i_cleanups_shl86_sobel_filter0_shift_x(BITJOIN,75)@1
    assign leftShiftStage0Idx1_uid76_i_cleanups_shl86_sobel_filter0_shift_x_q = {leftShiftStage0Idx1Rng1_uid75_i_cleanups_shl86_sobel_filter0_shift_x_b, GND_q};

    // leftShiftStage0_uid78_i_cleanups_shl86_sobel_filter0_shift_x(MUX,77)@1
    assign leftShiftStage0_uid78_i_cleanups_shl86_sobel_filter0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid78_i_cleanups_shl86_sobel_filter0_shift_x_s or i_llvm_fpga_pop_i2_cleanups85_pop41_sobel_filter2_out_data_out or leftShiftStage0Idx1_uid76_i_cleanups_shl86_sobel_filter0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid78_i_cleanups_shl86_sobel_filter0_shift_x_s)
            1'b0 : leftShiftStage0_uid78_i_cleanups_shl86_sobel_filter0_shift_x_q = i_llvm_fpga_pop_i2_cleanups85_pop41_sobel_filter2_out_data_out;
            1'b1 : leftShiftStage0_uid78_i_cleanups_shl86_sobel_filter0_shift_x_q = leftShiftStage0Idx1_uid76_i_cleanups_shl86_sobel_filter0_shift_x_q;
            default : leftShiftStage0_uid78_i_cleanups_shl86_sobel_filter0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl86_sobel_filter5_vt_select_1(BITSELECT,23)@1
    assign i_cleanups_shl86_sobel_filter5_vt_select_1_b = leftShiftStage0_uid78_i_cleanups_shl86_sobel_filter0_shift_x_q[1:1];

    // i_cleanups_shl86_sobel_filter5_vt_join(BITJOIN,22)@1
    assign i_cleanups_shl86_sobel_filter5_vt_join_q = {i_cleanups_shl86_sobel_filter5_vt_select_1_b, GND_q};

    // i_xor88_sobel_filter4(LOGICAL,44)@1
    assign i_xor88_sobel_filter4_q = i_first_cleanup87_sobel_filter3_sel_x_b ^ VCC_q;

    // i_notcmp78_sobel_filter11(LOGICAL,42)@1
    assign i_notcmp78_sobel_filter11_q = i_exitcond33_sobel_filter9_cmp_nsign_q ^ VCC_q;

    // i_or89_sobel_filter13(LOGICAL,43)@1
    assign i_or89_sobel_filter13_q = i_notcmp78_sobel_filter11_q | i_xor88_sobel_filter4_q;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_next_cleanups90_sobel_filter14(MUX,41)@1
    assign i_next_cleanups90_sobel_filter14_s = i_or89_sobel_filter13_q;
    always @(i_next_cleanups90_sobel_filter14_s or i_llvm_fpga_pop_i2_cleanups85_pop41_sobel_filter2_out_data_out or i_cleanups_shl86_sobel_filter5_vt_join_q)
    begin
        unique case (i_next_cleanups90_sobel_filter14_s)
            1'b0 : i_next_cleanups90_sobel_filter14_q = i_llvm_fpga_pop_i2_cleanups85_pop41_sobel_filter2_out_data_out;
            1'b1 : i_next_cleanups90_sobel_filter14_q = i_cleanups_shl86_sobel_filter5_vt_join_q;
            default : i_next_cleanups90_sobel_filter14_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups85_push41_sobel_filter15(BLACKBOX,38)@1
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    sobel_filter_i_llvm_fpga_push_i2_cleanups85_push41_0 thei_llvm_fpga_push_i2_cleanups85_push41_sobel_filter15 (
        .in_data_in(i_next_cleanups90_sobel_filter14_q),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i2_cleanups85_pop41_sobel_filter2_out_feedback_stall_out_41),
        .in_keep_going82(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i2_cleanups85_push41_sobel_filter15_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i2_cleanups85_push41_sobel_filter15_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_139(CONSTANT,17)
    assign c_i2_139_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups85_pop41_sobel_filter2(BLACKBOX,31)@1
    // out out_feedback_stall_out_41@20000000
    sobel_filter_i_llvm_fpga_pop_i2_cleanups85_pop41_0 thei_llvm_fpga_pop_i2_cleanups85_pop41_sobel_filter2 (
        .in_data_in(c_i2_139_q),
        .in_dir(in_c0_eni4354_1_tpl),
        .in_feedback_in_41(i_llvm_fpga_push_i2_cleanups85_push41_sobel_filter15_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i2_cleanups85_push41_sobel_filter15_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups85_pop41_sobel_filter2_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i2_cleanups85_pop41_sobel_filter2_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup87_sobel_filter3_sel_x(BITSELECT,55)@1
    assign i_first_cleanup87_sobel_filter3_sel_x_b = i_llvm_fpga_pop_i2_cleanups85_pop41_sobel_filter2_out_data_out[0:0];

    // c_i5_143(CONSTANT,18)
    assign c_i5_143_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next32_sobel_filter16(ADD,26)@1
    assign i_fpga_indvars_iv_next32_sobel_filter16_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv31_pop40_sobel_filter8_out_data_out};
    assign i_fpga_indvars_iv_next32_sobel_filter16_b = {1'b0, c_i5_143_q};
    assign i_fpga_indvars_iv_next32_sobel_filter16_o = $unsigned(i_fpga_indvars_iv_next32_sobel_filter16_a) + $unsigned(i_fpga_indvars_iv_next32_sobel_filter16_b);
    assign i_fpga_indvars_iv_next32_sobel_filter16_q = i_fpga_indvars_iv_next32_sobel_filter16_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next32_sobel_filter16_sel_x(BITSELECT,49)@1
    assign bgTrunc_i_fpga_indvars_iv_next32_sobel_filter16_sel_x_b = i_fpga_indvars_iv_next32_sobel_filter16_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv31_push40_sobel_filter17(BLACKBOX,39)@1
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    sobel_filter_i_llvm_fpga_push_i5_fpga_indvars_iv31_push40_0 thei_llvm_fpga_push_i5_fpga_indvars_iv31_push40_sobel_filter17 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next32_sobel_filter16_sel_x_b),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i5_fpga_indvars_iv31_pop40_sobel_filter8_out_feedback_stall_out_40),
        .in_keep_going82(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i5_fpga_indvars_iv31_push40_sobel_filter17_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i5_fpga_indvars_iv31_push40_sobel_filter17_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_741(CONSTANT,19)
    assign c_i5_741_q = $unsigned(5'b00111);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv31_pop40_sobel_filter8(BLACKBOX,32)@1
    // out out_feedback_stall_out_40@20000000
    sobel_filter_i_llvm_fpga_pop_i5_fpga_indvars_iv31_pop40_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv31_pop40_sobel_filter8 (
        .in_data_in(c_i5_741_q),
        .in_dir(in_c0_eni4354_1_tpl),
        .in_feedback_in_40(i_llvm_fpga_push_i5_fpga_indvars_iv31_push40_sobel_filter17_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i5_fpga_indvars_iv31_push40_sobel_filter17_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv31_pop40_sobel_filter8_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i5_fpga_indvars_iv31_pop40_sobel_filter8_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond33_sobel_filter9_cmp_nsign(LOGICAL,70)@1
    assign i_exitcond33_sobel_filter9_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv31_pop40_sobel_filter8_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond92_sobel_filter12(BLACKBOX,37)@1
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    sobel_filter_i_llvm_fpga_push_i1_notexitcond92_0 thei_llvm_fpga_push_i1_notexitcond92_sobel_filter12 (
        .in_data_in(i_exitcond33_sobel_filter9_cmp_nsign_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_not_exitcond_stall_out),
        .in_first_cleanup87(i_first_cleanup87_sobel_filter3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond92_sobel_filter12_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond92_sobel_filter12_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,59)@1 + 1
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

    // redist4_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_data_out_1(DELAY,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_data_out);
        end
    end

    // i_llvm_fpga_push_i1_lastiniteration84_sobel_filter7(BLACKBOX,35)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    sobel_filter_i_llvm_fpga_push_i1_lastiniteration84_0 thei_llvm_fpga_push_i1_lastiniteration84_sobel_filter7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_initeration_stall_out),
        .in_keep_going82(redist4_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_lastiniteration84_sobel_filter7_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_lastiniteration84_sobel_filter7_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going82_sobel_filter6(BLACKBOX,27)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    sobel_filter_i_llvm_fpga_pipeline_keep_going82_0 thei_llvm_fpga_pipeline_keep_going82_sobel_filter6 (
        .in_data_in(in_c0_eni4354_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration84_sobel_filter7_out_feedback_out_8),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration84_sobel_filter7_out_feedback_valid_out_8),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond92_sobel_filter12_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond92_sobel_filter12_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,20)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,47)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,58)@1 + 1
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

    // valid_fanout_reg6(REG,64)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,65)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp131171_push44_sobel_filter24(BLACKBOX,36)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    sobel_filter_i_llvm_fpga_push_i1_notcmp131171_push44_0 thei_llvm_fpga_push_i1_notcmp131171_push44_sobel_filter24 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp131171_pop44_sobel_filter23_out_data_out),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_notcmp131171_pop44_sobel_filter23_out_feedback_stall_out_44),
        .in_keep_going82(redist4_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_notcmp131171_push44_sobel_filter24_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_notcmp131171_push44_sobel_filter24_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together59_aunroll_x_in_c0_eni4354_1_tpl_1(DELAY,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together59_aunroll_x_in_c0_eni4354_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together59_aunroll_x_in_c0_eni4354_1_tpl_1_q <= $unsigned(in_c0_eni4354_1_tpl);
        end
    end

    // redist3_sync_together59_aunroll_x_in_c0_eni4354_4_tpl_1(DELAY,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together59_aunroll_x_in_c0_eni4354_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together59_aunroll_x_in_c0_eni4354_4_tpl_1_q <= $unsigned(in_c0_eni4354_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp131171_pop44_sobel_filter23(BLACKBOX,30)@2
    // out out_feedback_stall_out_44@20000000
    sobel_filter_i_llvm_fpga_pop_i1_notcmp131171_pop44_0 thei_llvm_fpga_pop_i1_notcmp131171_pop44_sobel_filter23 (
        .in_data_in(redist3_sync_together59_aunroll_x_in_c0_eni4354_4_tpl_1_q),
        .in_dir(redist0_sync_together59_aunroll_x_in_c0_eni4354_1_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i1_notcmp131171_push44_sobel_filter24_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_notcmp131171_push44_sobel_filter24_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp131171_pop44_sobel_filter23_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_notcmp131171_pop44_sobel_filter23_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,62)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,63)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_exitcond45164_push43_sobel_filter22(BLACKBOX,33)@2
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    sobel_filter_i_llvm_fpga_push_i1_exitcond45164_push43_0 thei_llvm_fpga_push_i1_exitcond45164_push43_sobel_filter22 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond45164_pop43_sobel_filter21_out_data_out),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i1_exitcond45164_pop43_sobel_filter21_out_feedback_stall_out_43),
        .in_keep_going82(redist4_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i1_exitcond45164_push43_sobel_filter22_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i1_exitcond45164_push43_sobel_filter22_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together59_aunroll_x_in_c0_eni4354_3_tpl_1(DELAY,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together59_aunroll_x_in_c0_eni4354_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together59_aunroll_x_in_c0_eni4354_3_tpl_1_q <= $unsigned(in_c0_eni4354_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond45164_pop43_sobel_filter21(BLACKBOX,28)@2
    // out out_feedback_stall_out_43@20000000
    sobel_filter_i_llvm_fpga_pop_i1_exitcond45164_pop43_0 thei_llvm_fpga_pop_i1_exitcond45164_pop43_sobel_filter21 (
        .in_data_in(redist2_sync_together59_aunroll_x_in_c0_eni4354_3_tpl_1_q),
        .in_dir(redist0_sync_together59_aunroll_x_in_c0_eni4354_1_tpl_1_q),
        .in_feedback_in_43(i_llvm_fpga_push_i1_exitcond45164_push43_sobel_filter22_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i1_exitcond45164_push43_sobel_filter22_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond45164_pop43_sobel_filter21_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i1_exitcond45164_pop43_sobel_filter21_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,60)@1 + 1
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

    // valid_fanout_reg3(REG,61)@1 + 1
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

    // i_llvm_fpga_push_i1_forked156160_push42_sobel_filter20(BLACKBOX,34)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    sobel_filter_i_llvm_fpga_push_i1_forked156160_push42_0 thei_llvm_fpga_push_i1_forked156160_push42_sobel_filter20 (
        .in_data_in(i_llvm_fpga_pop_i1_forked156160_pop42_sobel_filter19_out_data_out),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i1_forked156160_pop42_sobel_filter19_out_feedback_stall_out_42),
        .in_keep_going82(redist4_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i1_forked156160_push42_sobel_filter20_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i1_forked156160_push42_sobel_filter20_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together59_aunroll_x_in_c0_eni4354_2_tpl_1(DELAY,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together59_aunroll_x_in_c0_eni4354_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together59_aunroll_x_in_c0_eni4354_2_tpl_1_q <= $unsigned(in_c0_eni4354_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked156160_pop42_sobel_filter19(BLACKBOX,29)@2
    // out out_feedback_stall_out_42@20000000
    sobel_filter_i_llvm_fpga_pop_i1_forked156160_pop42_0 thei_llvm_fpga_pop_i1_forked156160_pop42_sobel_filter19 (
        .in_data_in(redist1_sync_together59_aunroll_x_in_c0_eni4354_2_tpl_1_q),
        .in_dir(redist0_sync_together59_aunroll_x_in_c0_eni4354_1_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i1_forked156160_push42_sobel_filter20_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i1_forked156160_push42_sobel_filter20_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked156160_pop42_sobel_filter19_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i1_forked156160_pop42_sobel_filter19_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked91_sobel_filter18(LOGICAL,40)@1 + 1
    assign i_masked91_sobel_filter18_qi = i_notcmp78_sobel_filter11_q & i_first_cleanup87_sobel_filter3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked91_sobel_filter18_delay ( .xin(i_masked91_sobel_filter18_qi), .xout(i_masked91_sobel_filter18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,56)@2
    assign out_c0_exi5364_0_tpl = GND_q;
    assign out_c0_exi5364_1_tpl = redist4_i_llvm_fpga_pipeline_keep_going82_sobel_filter6_out_data_out_1_q;
    assign out_c0_exi5364_2_tpl = i_masked91_sobel_filter18_q;
    assign out_c0_exi5364_3_tpl = i_llvm_fpga_pop_i1_forked156160_pop42_sobel_filter19_out_data_out;
    assign out_c0_exi5364_4_tpl = i_llvm_fpga_pop_i1_exitcond45164_pop43_sobel_filter21_out_data_out;
    assign out_c0_exi5364_5_tpl = i_llvm_fpga_pop_i1_notcmp131171_pop44_sobel_filter23_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_sobel_filter3 = GND_q;

endmodule
