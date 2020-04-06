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

// SystemVerilog created from euler_i_sfc_logic_s_c0_in_for_body_s_c0_enter427_euler0
// SystemVerilog created on Mon Apr  6 10:17:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_i_sfc_logic_s_c0_in_for_body_s_c0_enter427_euler0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_euler2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_euler2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [32:0] out_c0_exi5_1_tpl,
    output wire [0:0] out_c0_exi5_2_tpl,
    output wire [0:0] out_c0_exi5_3_tpl,
    output wire [0:0] out_c0_exi5_4_tpl,
    output wire [0:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_euler1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_039_q;
    wire [31:0] c_i32_140_q;
    wire [31:0] c_i32_141_q;
    wire [32:0] c_i33_142_q;
    wire [32:0] c_i33_undef38_q;
    wire [0:0] i_cmp1_i8_euler14_q;
    wire [0:0] i_fpga_indvars_iv16_replace_phi_euler5_s;
    reg [32:0] i_fpga_indvars_iv16_replace_phi_euler5_q;
    wire [33:0] i_fpga_indvars_iv_next17_euler23_a;
    wire [33:0] i_fpga_indvars_iv_next17_euler23_b;
    logic [33:0] i_fpga_indvars_iv_next17_euler23_o;
    wire [33:0] i_fpga_indvars_iv_next17_euler23_q;
    wire [32:0] i_inc_euler25_a;
    wire [32:0] i_inc_euler25_b;
    logic [32:0] i_inc_euler25_o;
    wire [32:0] i_inc_euler25_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp1120_euler19_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp1122_euler6_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_euler6_euler3_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_euler2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_euler2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_euler2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_euler2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_013_pop9_euler8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_013_pop9_euler8_out_feedback_stall_out_9;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_euler4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_euler4_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond27_euler22_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond27_euler22_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_i_013_push9_euler26_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_i_013_push9_euler26_out_feedback_valid_out_9;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_euler24_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_euler24_out_feedback_valid_out_8;
    wire [0:0] i_notcmp25_euler21_q;
    wire [0:0] i_umax_euler10_s;
    reg [31:0] i_umax_euler10_q;
    wire [32:0] i_unnamed_euler11_a;
    wire [32:0] i_unnamed_euler11_b;
    logic [32:0] i_unnamed_euler11_o;
    wire [32:0] i_unnamed_euler11_q;
    wire [32:0] i_unnamed_euler12_vt_join_q;
    wire [31:0] i_unnamed_euler12_vt_select_31_b;
    wire [33:0] i_unnamed_euler13_a;
    wire [33:0] i_unnamed_euler13_b;
    logic [33:0] i_unnamed_euler13_o;
    wire [33:0] i_unnamed_euler13_q;
    wire [0:0] i_unnamed_euler16_qi;
    reg [0:0] i_unnamed_euler16_q;
    wire [0:0] i_unnamed_euler20_q;
    wire [0:0] i_unnamed_euler7_q;
    wire [33:0] i_unnamed_euler9_a;
    wire [33:0] i_unnamed_euler9_b;
    logic [33:0] i_unnamed_euler9_o;
    wire [0:0] i_unnamed_euler9_c;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next17_euler23_sel_x_b;
    wire [31:0] bgTrunc_i_inc_euler25_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_euler11_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_euler13_sel_x_b;
    wire [32:0] i_unnamed_euler12_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [0:0] i_exitcond18_euler17_cmp_nsign_q;
    reg [0:0] redist0_sync_together55_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together55_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist2_sync_together55_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_i_unnamed_euler20_q_1_q;
    reg [0:0] redist4_i_unnamed_euler20_q_2_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_euler6_euler3(BLACKBOX,31)@1
    euler_i_llvm_fpga_ffwd_dest_i33_unnamed_6_euler0 thei_llvm_fpga_ffwd_dest_i33_unnamed_euler6_euler3 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i33_unnamed_euler6_euler3_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_142(CONSTANT,21)
    assign c_i33_142_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next17_euler23(ADD,27)@1
    assign i_fpga_indvars_iv_next17_euler23_a = {1'b0, i_fpga_indvars_iv16_replace_phi_euler5_q};
    assign i_fpga_indvars_iv_next17_euler23_b = {1'b0, c_i33_142_q};
    assign i_fpga_indvars_iv_next17_euler23_o = $unsigned(i_fpga_indvars_iv_next17_euler23_a) + $unsigned(i_fpga_indvars_iv_next17_euler23_b);
    assign i_fpga_indvars_iv_next17_euler23_q = i_fpga_indvars_iv_next17_euler23_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next17_euler23_sel_x(BITSELECT,57)@1
    assign bgTrunc_i_fpga_indvars_iv_next17_euler23_sel_x_b = i_fpga_indvars_iv_next17_euler23_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_euler24(BLACKBOX,37)@1
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    euler_i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_0 thei_llvm_fpga_push_i33_fpga_indvars_iv16_push8_euler24 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next17_euler23_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_euler4_out_feedback_stall_out_8),
        .in_stall_in(GND_q),
        .in_unnamed_euler14(i_unnamed_euler20_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_euler24_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_euler24_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef38(CONSTANT,22)
    assign c_i33_undef38_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_euler4(BLACKBOX,34)@1
    // out out_feedback_stall_out_8@20000000
    euler_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_euler4 (
        .in_data_in(c_i33_undef38_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_8(i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_euler24_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_euler24_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_euler4_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_euler4_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv16_replace_phi_euler5(MUX,26)@1
    assign i_fpga_indvars_iv16_replace_phi_euler5_s = in_c0_eni1_1_tpl;
    always @(i_fpga_indvars_iv16_replace_phi_euler5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_euler4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_euler6_euler3_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv16_replace_phi_euler5_s)
            1'b0 : i_fpga_indvars_iv16_replace_phi_euler5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_euler4_out_data_out;
            1'b1 : i_fpga_indvars_iv16_replace_phi_euler5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_euler6_euler3_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv16_replace_phi_euler5_q = 33'b0;
        endcase
    end

    // i_exitcond18_euler17_cmp_nsign(LOGICAL,76)@1
    assign i_exitcond18_euler17_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv16_replace_phi_euler5_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp1120_euler19(BLACKBOX,29)@1
    euler_i_llvm_fpga_ffwd_dest_i1_cmp1120_0 thei_llvm_fpga_ffwd_dest_i1_cmp1120_euler19 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp1120_euler19_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_euler20(LOGICAL,47)@1
    assign i_unnamed_euler20_q = i_llvm_fpga_ffwd_dest_i1_cmp1120_euler19_out_dest_data_out_0_0 & i_exitcond18_euler17_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond27_euler22(BLACKBOX,35)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    euler_i_llvm_fpga_push_i1_notexitcond27_0 thei_llvm_fpga_push_i1_notexitcond27_euler22 (
        .in_data_in(i_unnamed_euler20_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going26_euler2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond27_euler22_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond27_euler22_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going26_euler2(BLACKBOX,32)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    euler_i_llvm_fpga_pipeline_keep_going26_0 thei_llvm_fpga_pipeline_keep_going26_euler2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond27_euler22_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond27_euler22_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going26_euler2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going26_euler2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going26_euler2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going26_euler2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,23)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_euler2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going26_euler2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_euler2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going26_euler2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,53)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going26_euler2_out_pipeline_valid_out;

    // redist2_sync_together55_aunroll_x_in_i_valid_1(DELAY,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together55_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together55_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,66)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together55_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist0_sync_together55_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together55_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together55_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist1_sync_together55_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together55_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together55_aunroll_x_in_c0_eni1_1_tpl_2_q <= $unsigned(redist0_sync_together55_aunroll_x_in_c0_eni1_1_tpl_1_q);
        end
    end

    // i_notcmp25_euler21(LOGICAL,38)@3
    assign i_notcmp25_euler21_q = redist4_i_unnamed_euler20_q_2_q ^ VCC_q;

    // redist3_i_unnamed_euler20_q_1(DELAY,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_unnamed_euler20_q_1_q <= '0;
        end
        else
        begin
            redist3_i_unnamed_euler20_q_1_q <= $unsigned(i_unnamed_euler20_q);
        end
    end

    // redist4_i_unnamed_euler20_q_2(DELAY,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_unnamed_euler20_q_2_q <= '0;
        end
        else
        begin
            redist4_i_unnamed_euler20_q_2_q <= $unsigned(redist3_i_unnamed_euler20_q_1_q);
        end
    end

    // valid_fanout_reg1(REG,67)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_cmp1122_euler6(BLACKBOX,30)@2
    euler_i_llvm_fpga_ffwd_dest_i1_cmp1122_0 thei_llvm_fpga_ffwd_dest_i1_cmp1122_euler6 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp1122_euler6_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_euler7(LOGICAL,48)@2
    assign i_unnamed_euler7_q = i_llvm_fpga_ffwd_dest_i1_cmp1122_euler6_out_dest_data_out_0_0 ^ VCC_q;

    // c_i32_039(CONSTANT,18)
    assign c_i32_039_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,68)@1 + 1
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

    // valid_fanout_reg3(REG,69)@1 + 1
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

    // c_i32_140(CONSTANT,19)
    assign c_i32_140_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_euler25(ADD,28)@2
    assign i_inc_euler25_a = {1'b0, i_llvm_fpga_pop_i32_i_013_pop9_euler8_out_data_out};
    assign i_inc_euler25_b = {1'b0, c_i32_140_q};
    assign i_inc_euler25_o = $unsigned(i_inc_euler25_a) + $unsigned(i_inc_euler25_b);
    assign i_inc_euler25_q = i_inc_euler25_o[32:0];

    // bgTrunc_i_inc_euler25_sel_x(BITSELECT,58)@2
    assign bgTrunc_i_inc_euler25_sel_x_b = i_inc_euler25_q[31:0];

    // i_llvm_fpga_push_i32_i_013_push9_euler26(BLACKBOX,36)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    euler_i_llvm_fpga_push_i32_i_013_push9_0 thei_llvm_fpga_push_i32_i_013_push9_euler26 (
        .in_data_in(bgTrunc_i_inc_euler25_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_i_013_pop9_euler8_out_feedback_stall_out_9),
        .in_stall_in(GND_q),
        .in_unnamed_euler14(redist3_i_unnamed_euler20_q_1_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_i_013_push9_euler26_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_i_013_push9_euler26_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_013_pop9_euler8(BLACKBOX,33)@2
    // out out_feedback_stall_out_9@20000000
    euler_i_llvm_fpga_pop_i32_i_013_pop9_0 thei_llvm_fpga_pop_i32_i_013_pop9_euler8 (
        .in_data_in(c_i32_039_q),
        .in_dir(redist0_sync_together55_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i32_i_013_push9_euler26_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_i_013_push9_euler26_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_013_pop9_euler8_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_i_013_pop9_euler8_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp1_i8_euler14(LOGICAL,24)@2
    assign i_cmp1_i8_euler14_q = $unsigned(i_llvm_fpga_pop_i32_i_013_pop9_euler8_out_data_out == c_i32_039_q ? 1'b1 : 1'b0);

    // i_unnamed_euler16(LOGICAL,46)@2 + 1
    assign i_unnamed_euler16_qi = i_cmp1_i8_euler14_q | i_unnamed_euler7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_euler16_delay ( .xin(i_unnamed_euler16_qi), .xout(i_unnamed_euler16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_141(CONSTANT,20)
    assign c_i32_141_q = $unsigned(32'b11111111111111111111111111111111);

    // i_unnamed_euler9(COMPARE,49)@2
    assign i_unnamed_euler9_a = {2'b00, c_i32_140_q};
    assign i_unnamed_euler9_b = {2'b00, i_llvm_fpga_pop_i32_i_013_pop9_euler8_out_data_out};
    assign i_unnamed_euler9_o = $unsigned(i_unnamed_euler9_a) - $unsigned(i_unnamed_euler9_b);
    assign i_unnamed_euler9_c[0] = i_unnamed_euler9_o[33];

    // i_umax_euler10(MUX,39)@2 + 1
    assign i_umax_euler10_s = i_unnamed_euler9_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_umax_euler10_q <= 32'b0;
        end
        else
        begin
            unique case (i_umax_euler10_s)
                1'b0 : i_umax_euler10_q <= c_i32_140_q;
                1'b1 : i_umax_euler10_q <= i_llvm_fpga_pop_i32_i_013_pop9_euler8_out_data_out;
                default : i_umax_euler10_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_euler11(ADD,40)@3
    assign i_unnamed_euler11_a = {1'b0, i_umax_euler10_q};
    assign i_unnamed_euler11_b = {1'b0, c_i32_141_q};
    assign i_unnamed_euler11_o = $unsigned(i_unnamed_euler11_a) + $unsigned(i_unnamed_euler11_b);
    assign i_unnamed_euler11_q = i_unnamed_euler11_o[32:0];

    // bgTrunc_i_unnamed_euler11_sel_x(BITSELECT,59)@3
    assign bgTrunc_i_unnamed_euler11_sel_x_b = i_unnamed_euler11_q[31:0];

    // i_unnamed_euler12_sel_x(BITSELECT,63)@3
    assign i_unnamed_euler12_sel_x_b = {1'b0, bgTrunc_i_unnamed_euler11_sel_x_b[31:0]};

    // i_unnamed_euler12_vt_select_31(BITSELECT,44)@3
    assign i_unnamed_euler12_vt_select_31_b = i_unnamed_euler12_sel_x_b[31:0];

    // i_unnamed_euler12_vt_join(BITJOIN,43)@3
    assign i_unnamed_euler12_vt_join_q = {GND_q, i_unnamed_euler12_vt_select_31_b};

    // i_unnamed_euler13(ADD,45)@3
    assign i_unnamed_euler13_a = {1'b0, i_unnamed_euler12_vt_join_q};
    assign i_unnamed_euler13_b = {1'b0, c_i33_142_q};
    assign i_unnamed_euler13_o = $unsigned(i_unnamed_euler13_a) + $unsigned(i_unnamed_euler13_b);
    assign i_unnamed_euler13_q = i_unnamed_euler13_o[33:0];

    // bgTrunc_i_unnamed_euler13_sel_x(BITSELECT,60)@3
    assign bgTrunc_i_unnamed_euler13_sel_x_b = i_unnamed_euler13_q[32:0];

    // sync_out_aunroll_x(GPOUT,64)@3
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = bgTrunc_i_unnamed_euler13_sel_x_b;
    assign out_c0_exi5_2_tpl = i_unnamed_euler16_q;
    assign out_c0_exi5_3_tpl = redist4_i_unnamed_euler20_q_2_q;
    assign out_c0_exi5_4_tpl = i_notcmp25_euler21_q;
    assign out_c0_exi5_5_tpl = redist1_sync_together55_aunroll_x_in_c0_eni1_1_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_euler1 = GND_q;

endmodule
