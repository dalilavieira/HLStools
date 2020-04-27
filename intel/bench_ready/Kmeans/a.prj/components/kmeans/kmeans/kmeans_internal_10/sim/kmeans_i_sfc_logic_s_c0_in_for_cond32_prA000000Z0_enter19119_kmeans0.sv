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

// SystemVerilog created from kmeans_i_sfc_logic_s_c0_in_for_cond32_prA000000Z0_enter19119_kmeans0
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_i_sfc_logic_s_c0_in_for_cond32_prA000000Z0_enter19119_kmeans0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kmeans2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kmeans2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [0:0] out_c0_exi5_1_tpl,
    output wire [0:0] out_c0_exi5_2_tpl,
    output wire [31:0] out_c0_exi5_3_tpl,
    output wire [0:0] out_c0_exi5_4_tpl,
    output wire [0:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kmeans1,
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
    wire [11:0] i_fpga_indvars_iv_next18_kmeans8_a;
    wire [11:0] i_fpga_indvars_iv_next18_kmeans8_b;
    logic [11:0] i_fpga_indvars_iv_next18_kmeans8_o;
    wire [11:0] i_fpga_indvars_iv_next18_kmeans8_q;
    wire [32:0] i_inc66_kmeans11_a;
    wire [32:0] i_inc66_kmeans11_b;
    logic [32:0] i_inc66_kmeans11_o;
    wire [32:0] i_inc66_kmeans11_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kmeans2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kmeans2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kmeans2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kmeans2_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv17_pop31_kmeans3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv17_pop31_kmeans3_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp51108_pop33_kmeans13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp51108_pop33_kmeans13_out_feedback_stall_out_33;
    wire [31:0] i_llvm_fpga_pop_i32_i27_047_pop32_kmeans10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i27_047_pop32_kmeans10_out_feedback_stall_out_32;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv17_push31_kmeans9_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv17_push31_kmeans9_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notcmp51108_push33_kmeans14_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i1_notcmp51108_push33_kmeans14_out_feedback_valid_out_33;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond49_kmeans7_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond49_kmeans7_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_i27_047_push32_kmeans12_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i32_i27_047_push32_kmeans12_out_feedback_valid_out_32;
    wire [0:0] i_notcmp46_kmeans6_q;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next18_kmeans8_sel_x_b;
    wire [31:0] bgTrunc_i_inc66_kmeans11_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    wire [0:0] i_exitcond19_kmeans4_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond19_kmeans4_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1_q;


    // c_i11_127(CONSTANT,5)
    assign c_i11_127_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next18_kmeans8(ADD,21)@1
    assign i_fpga_indvars_iv_next18_kmeans8_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv17_pop31_kmeans3_out_data_out};
    assign i_fpga_indvars_iv_next18_kmeans8_b = {1'b0, c_i11_127_q};
    assign i_fpga_indvars_iv_next18_kmeans8_o = $unsigned(i_fpga_indvars_iv_next18_kmeans8_a) + $unsigned(i_fpga_indvars_iv_next18_kmeans8_b);
    assign i_fpga_indvars_iv_next18_kmeans8_q = i_fpga_indvars_iv_next18_kmeans8_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next18_kmeans8_sel_x(BITSELECT,36)@1
    assign bgTrunc_i_fpga_indvars_iv_next18_kmeans8_sel_x_b = i_fpga_indvars_iv_next18_kmeans8_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv17_push31_kmeans9(BLACKBOX,27)@1
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    kmeans_i_llvm_fpga_push_i11_fpga_indvars_iv17_push31_0 thei_llvm_fpga_push_i11_fpga_indvars_iv17_push31_kmeans9 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next18_kmeans8_sel_x_b),
        .in_exitcond19(i_exitcond19_kmeans4_cmp_nsign_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i11_fpga_indvars_iv17_pop31_kmeans3_out_feedback_stall_out_31),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i11_fpga_indvars_iv17_push31_kmeans9_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i11_fpga_indvars_iv17_push31_kmeans9_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_102225(CONSTANT,4)
    assign c_i11_102225_q = $unsigned(11'b01111111110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv17_pop31_kmeans3(BLACKBOX,24)@1
    // out out_feedback_stall_out_31@20000000
    kmeans_i_llvm_fpga_pop_i11_fpga_indvars_iv17_pop31_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv17_pop31_kmeans3 (
        .in_data_in(c_i11_102225_q),
        .in_dir(in_c0_eni2_1_tpl),
        .in_feedback_in_31(i_llvm_fpga_push_i11_fpga_indvars_iv17_push31_kmeans9_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i11_fpga_indvars_iv17_push31_kmeans9_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv17_pop31_kmeans3_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i11_fpga_indvars_iv17_pop31_kmeans3_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond19_kmeans4_cmp_nsign(LOGICAL,49)@1
    assign i_exitcond19_kmeans4_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv17_pop31_kmeans3_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond49_kmeans7(BLACKBOX,29)@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    kmeans_i_llvm_fpga_push_i1_notexitcond49_0 thei_llvm_fpga_push_i1_notexitcond49_kmeans7 (
        .in_data_in(i_exitcond19_kmeans4_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going48_kmeans2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond49_kmeans7_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond49_kmeans7_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going48_kmeans2(BLACKBOX,23)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kmeans_i_llvm_fpga_pipeline_keep_going48_0 thei_llvm_fpga_pipeline_keep_going48_kmeans2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond49_kmeans7_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond49_kmeans7_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going48_kmeans2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going48_kmeans2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going48_kmeans2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going48_kmeans2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,19)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kmeans2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going48_kmeans2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going48_kmeans2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going48_kmeans2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,34)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going48_kmeans2_out_pipeline_valid_out;

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

    // i_llvm_fpga_push_i1_notcmp51108_push33_kmeans14(BLACKBOX,28)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    kmeans_i_llvm_fpga_push_i1_notcmp51108_push33_0 thei_llvm_fpga_push_i1_notcmp51108_push33_kmeans14 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp51108_pop33_kmeans13_out_data_out),
        .in_exitcond19(redist0_i_exitcond19_kmeans4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i1_notcmp51108_pop33_kmeans13_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i1_notcmp51108_push33_kmeans14_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i1_notcmp51108_push33_kmeans14_out_feedback_valid_out_33),
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

    // i_llvm_fpga_pop_i1_notcmp51108_pop33_kmeans13(BLACKBOX,25)@2
    // out out_feedback_stall_out_33@20000000
    kmeans_i_llvm_fpga_pop_i1_notcmp51108_pop33_0 thei_llvm_fpga_pop_i1_notcmp51108_pop33_kmeans13 (
        .in_data_in(redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1_q),
        .in_dir(redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i1_notcmp51108_push33_kmeans14_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i1_notcmp51108_push33_kmeans14_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp51108_pop33_kmeans13_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i1_notcmp51108_pop33_kmeans13_out_feedback_stall_out_33),
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

    // i_inc66_kmeans11(ADD,22)@2
    assign i_inc66_kmeans11_a = {1'b0, i_llvm_fpga_pop_i32_i27_047_pop32_kmeans10_out_data_out};
    assign i_inc66_kmeans11_b = {1'b0, c_i32_129_q};
    assign i_inc66_kmeans11_o = $unsigned(i_inc66_kmeans11_a) + $unsigned(i_inc66_kmeans11_b);
    assign i_inc66_kmeans11_q = i_inc66_kmeans11_o[32:0];

    // bgTrunc_i_inc66_kmeans11_sel_x(BITSELECT,37)@2
    assign bgTrunc_i_inc66_kmeans11_sel_x_b = i_inc66_kmeans11_q[31:0];

    // i_llvm_fpga_push_i32_i27_047_push32_kmeans12(BLACKBOX,30)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    kmeans_i_llvm_fpga_push_i32_i27_047_push32_0 thei_llvm_fpga_push_i32_i27_047_push32_kmeans12 (
        .in_data_in(bgTrunc_i_inc66_kmeans11_sel_x_b),
        .in_exitcond19(redist0_i_exitcond19_kmeans4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i32_i27_047_pop32_kmeans10_out_feedback_stall_out_32),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i32_i27_047_push32_kmeans12_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i32_i27_047_push32_kmeans12_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_028(CONSTANT,17)
    assign c_i32_028_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i27_047_pop32_kmeans10(BLACKBOX,26)@2
    // out out_feedback_stall_out_32@20000000
    kmeans_i_llvm_fpga_pop_i32_i27_047_pop32_0 thei_llvm_fpga_pop_i32_i27_047_pop32_kmeans10 (
        .in_data_in(c_i32_028_q),
        .in_dir(redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i32_i27_047_push32_kmeans12_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i32_i27_047_push32_kmeans12_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i27_047_pop32_kmeans10_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i32_i27_047_pop32_kmeans10_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp46_kmeans6(LOGICAL,31)@2
    assign i_notcmp46_kmeans6_q = redist0_i_exitcond19_kmeans4_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond19_kmeans4_cmp_nsign_q_1(DELAY,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond19_kmeans4_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond19_kmeans4_cmp_nsign_q_1_q <= $unsigned(i_exitcond19_kmeans4_cmp_nsign_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,39)@2
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = redist0_i_exitcond19_kmeans4_cmp_nsign_q_1_q;
    assign out_c0_exi5_2_tpl = i_notcmp46_kmeans6_q;
    assign out_c0_exi5_3_tpl = i_llvm_fpga_pop_i32_i27_047_pop32_kmeans10_out_data_out;
    assign out_c0_exi5_4_tpl = i_llvm_fpga_pop_i1_notcmp51108_pop33_kmeans13_out_data_out;
    assign out_c0_exi5_5_tpl = redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kmeans1 = GND_q;

endmodule
