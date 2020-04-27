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

// SystemVerilog created from fir_i_sfc_logic_s_c0_in_for_cond23_preheader_s_c0_enter11410_fir0
// SystemVerilog created on Mon Apr 27 09:47:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_i_sfc_logic_s_c0_in_for_cond23_preheader_s_c0_enter11410_fir0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_fir2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_fir2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [0:0] out_c0_exi5_1_tpl,
    output wire [0:0] out_c0_exi5_2_tpl,
    output wire [31:0] out_c0_exi5_3_tpl,
    output wire [0:0] out_c0_exi5_4_tpl,
    output wire [0:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_fir1,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [0:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_102225_q;
    wire [10:0] c_i11_127_q;
    wire [31:0] c_i32_028_q;
    wire [31:0] c_i32_129_q;
    wire [11:0] i_fpga_indvars_iv_next13_fir8_a;
    wire [11:0] i_fpga_indvars_iv_next13_fir8_b;
    logic [11:0] i_fpga_indvars_iv_next13_fir8_o;
    wire [11:0] i_fpga_indvars_iv_next13_fir8_q;
    wire [32:0] i_inc44_fir11_a;
    wire [32:0] i_inc44_fir11_b;
    logic [32:0] i_inc44_fir11_o;
    wire [32:0] i_inc44_fir11_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_fir2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_fir2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_fir2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_fir2_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv12_pop23_fir3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv12_pop23_fir3_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2973_pop25_fir13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2973_pop25_fir13_out_feedback_stall_out_25;
    wire [31:0] i_llvm_fpga_pop_i32_j_027_pop24_fir10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_027_pop24_fir10_out_feedback_stall_out_24;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv12_push23_fir9_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv12_push23_fir9_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2973_push25_fir14_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2973_push25_fir14_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond27_fir7_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond27_fir7_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_j_027_push24_fir12_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i32_j_027_push24_fir12_out_feedback_valid_out_24;
    wire [0:0] i_notcmp24_fir6_q;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next13_fir8_sel_x_b;
    wire [31:0] bgTrunc_i_inc44_fir11_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    wire [0:0] i_exitcond14_fir4_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond14_fir4_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1_q;


    // c_i11_127(CONSTANT,5)
    assign c_i11_127_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next13_fir8(ADD,21)@1
    assign i_fpga_indvars_iv_next13_fir8_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv12_pop23_fir3_out_data_out};
    assign i_fpga_indvars_iv_next13_fir8_b = {1'b0, c_i11_127_q};
    assign i_fpga_indvars_iv_next13_fir8_o = $unsigned(i_fpga_indvars_iv_next13_fir8_a) + $unsigned(i_fpga_indvars_iv_next13_fir8_b);
    assign i_fpga_indvars_iv_next13_fir8_q = i_fpga_indvars_iv_next13_fir8_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next13_fir8_sel_x(BITSELECT,36)@1
    assign bgTrunc_i_fpga_indvars_iv_next13_fir8_sel_x_b = i_fpga_indvars_iv_next13_fir8_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv12_push23_fir9(BLACKBOX,27)@1
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    fir_i_llvm_fpga_push_i11_fpga_indvars_iv12_push23_0 thei_llvm_fpga_push_i11_fpga_indvars_iv12_push23_fir9 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next13_fir8_sel_x_b),
        .in_exitcond14(i_exitcond14_fir4_cmp_nsign_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i11_fpga_indvars_iv12_pop23_fir3_out_feedback_stall_out_23),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i11_fpga_indvars_iv12_push23_fir9_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i11_fpga_indvars_iv12_push23_fir9_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_102225(CONSTANT,4)
    assign c_i11_102225_q = $unsigned(11'b01111111110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv12_pop23_fir3(BLACKBOX,24)@1
    // out out_feedback_stall_out_23@20000000
    fir_i_llvm_fpga_pop_i11_fpga_indvars_iv12_pop23_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv12_pop23_fir3 (
        .in_data_in(c_i11_102225_q),
        .in_dir(in_c0_eni2_1_tpl),
        .in_feedback_in_23(i_llvm_fpga_push_i11_fpga_indvars_iv12_push23_fir9_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i11_fpga_indvars_iv12_push23_fir9_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv12_pop23_fir3_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i11_fpga_indvars_iv12_pop23_fir3_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond14_fir4_cmp_nsign(LOGICAL,49)@1
    assign i_exitcond14_fir4_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv12_pop23_fir3_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond27_fir7(BLACKBOX,29)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    fir_i_llvm_fpga_push_i1_notexitcond27_0 thei_llvm_fpga_push_i1_notexitcond27_fir7 (
        .in_data_in(i_exitcond14_fir4_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going26_fir2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond27_fir7_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond27_fir7_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going26_fir2(BLACKBOX,23)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    fir_i_llvm_fpga_pipeline_keep_going26_0 thei_llvm_fpga_pipeline_keep_going26_fir2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond27_fir7_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond27_fir7_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going26_fir2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going26_fir2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going26_fir2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going26_fir2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,19)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_fir2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going26_fir2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_fir2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going26_fir2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,34)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going26_fir2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,41)@1 + 1
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

    // redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1(DELAY,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // valid_fanout_reg3(REG,44)@1 + 1
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

    // valid_fanout_reg4(REG,45)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp2973_push25_fir14(BLACKBOX,28)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    fir_i_llvm_fpga_push_i1_notcmp2973_push25_0 thei_llvm_fpga_push_i1_notcmp2973_push25_fir14 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2973_pop25_fir13_out_data_out),
        .in_exitcond14(redist0_i_exitcond14_fir4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i1_notcmp2973_pop25_fir13_out_feedback_stall_out_25),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i1_notcmp2973_push25_fir14_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i1_notcmp2973_push25_fir14_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2973_pop25_fir13(BLACKBOX,25)@2
    // out out_feedback_stall_out_25@20000000
    fir_i_llvm_fpga_pop_i1_notcmp2973_pop25_0 thei_llvm_fpga_pop_i1_notcmp2973_pop25_fir13 (
        .in_data_in(redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1_q),
        .in_dir(redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i1_notcmp2973_push25_fir14_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i1_notcmp2973_push25_fir14_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2973_pop25_fir13_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_notcmp2973_pop25_fir13_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,42)@1 + 1
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

    // valid_fanout_reg2(REG,43)@1 + 1
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

    // c_i32_129(CONSTANT,18)
    assign c_i32_129_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc44_fir11(ADD,22)@2
    assign i_inc44_fir11_a = {1'b0, i_llvm_fpga_pop_i32_j_027_pop24_fir10_out_data_out};
    assign i_inc44_fir11_b = {1'b0, c_i32_129_q};
    assign i_inc44_fir11_o = $unsigned(i_inc44_fir11_a) + $unsigned(i_inc44_fir11_b);
    assign i_inc44_fir11_q = i_inc44_fir11_o[32:0];

    // bgTrunc_i_inc44_fir11_sel_x(BITSELECT,37)@2
    assign bgTrunc_i_inc44_fir11_sel_x_b = i_inc44_fir11_q[31:0];

    // i_llvm_fpga_push_i32_j_027_push24_fir12(BLACKBOX,30)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    fir_i_llvm_fpga_push_i32_j_027_push24_0 thei_llvm_fpga_push_i32_j_027_push24_fir12 (
        .in_data_in(bgTrunc_i_inc44_fir11_sel_x_b),
        .in_exitcond14(redist0_i_exitcond14_fir4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i32_j_027_pop24_fir10_out_feedback_stall_out_24),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i32_j_027_push24_fir12_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i32_j_027_push24_fir12_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_028(CONSTANT,17)
    assign c_i32_028_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_j_027_pop24_fir10(BLACKBOX,26)@2
    // out out_feedback_stall_out_24@20000000
    fir_i_llvm_fpga_pop_i32_j_027_pop24_0 thei_llvm_fpga_pop_i32_j_027_pop24_fir10 (
        .in_data_in(c_i32_028_q),
        .in_dir(redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i32_j_027_push24_fir12_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i32_j_027_push24_fir12_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_027_pop24_fir10_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i32_j_027_pop24_fir10_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp24_fir6(LOGICAL,31)@2
    assign i_notcmp24_fir6_q = redist0_i_exitcond14_fir4_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond14_fir4_cmp_nsign_q_1(DELAY,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond14_fir4_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond14_fir4_cmp_nsign_q_1_q <= $unsigned(i_exitcond14_fir4_cmp_nsign_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,39)@2
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = redist0_i_exitcond14_fir4_cmp_nsign_q_1_q;
    assign out_c0_exi5_2_tpl = i_notcmp24_fir6_q;
    assign out_c0_exi5_3_tpl = i_llvm_fpga_pop_i32_j_027_pop24_fir10_out_data_out;
    assign out_c0_exi5_4_tpl = i_llvm_fpga_pop_i1_notcmp2973_pop25_fir13_out_data_out;
    assign out_c0_exi5_5_tpl = redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_fir1 = GND_q;

endmodule
