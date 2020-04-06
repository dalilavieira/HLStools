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

// SystemVerilog created from bubbleSort_i_sfc_logic_s_c0_in_for_body_A000000Zenter535_bubblesort0
// SystemVerilog created on Mon Apr  6 10:26:56 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bubbleSort_i_sfc_logic_s_c0_in_for_body_A000000Zenter535_bubblesort0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_bubblesort2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_bubblesort2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    output wire [0:0] out_c0_exi7_0_tpl,
    output wire [32:0] out_c0_exi7_1_tpl,
    output wire [31:0] out_c0_exi7_2_tpl,
    output wire [31:0] out_c0_exi7_3_tpl,
    output wire [0:0] out_c0_exi7_4_tpl,
    output wire [0:0] out_c0_exi7_5_tpl,
    output wire [0:0] out_c0_exi7_6_tpl,
    output wire [0:0] out_c0_exi7_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_bubbleSort1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_058_q;
    wire [31:0] c_i32_159_q;
    wire [31:0] c_i32_161_q;
    wire [31:0] c_i32_255_q;
    wire [31:0] c_i32_256_q;
    wire [32:0] c_i33_157_q;
    wire [32:0] c_i33_undef54_q;
    wire [32:0] i_add_bubblesort17_a;
    wire [32:0] i_add_bubblesort17_b;
    logic [32:0] i_add_bubblesort17_o;
    wire [32:0] i_add_bubblesort17_q;
    wire [33:0] i_cmp220_bubblesort19_a;
    wire [33:0] i_cmp220_bubblesort19_b;
    logic [33:0] i_cmp220_bubblesort19_o;
    wire [0:0] i_cmp220_bubblesort19_c;
    wire [0:0] i_demorgan_bubblesort31_q;
    wire [0:0] i_fpga_indvars_iv16_replace_phi_bubblesort5_s;
    reg [32:0] i_fpga_indvars_iv16_replace_phi_bubblesort5_q;
    wire [32:0] i_fpga_indvars_iv_next12_bubblesort32_a;
    wire [32:0] i_fpga_indvars_iv_next12_bubblesort32_b;
    logic [32:0] i_fpga_indvars_iv_next12_bubblesort32_o;
    wire [32:0] i_fpga_indvars_iv_next12_bubblesort32_q;
    wire [33:0] i_fpga_indvars_iv_next17_bubblesort23_a;
    wire [33:0] i_fpga_indvars_iv_next17_bubblesort23_b;
    logic [33:0] i_fpga_indvars_iv_next17_bubblesort23_o;
    wire [33:0] i_fpga_indvars_iv_next17_bubblesort23_q;
    wire [32:0] i_fpga_indvars_iv_next_bubblesort34_a;
    wire [32:0] i_fpga_indvars_iv_next_bubblesort34_b;
    logic [32:0] i_fpga_indvars_iv_next_bubblesort34_o;
    wire [32:0] i_fpga_indvars_iv_next_bubblesort34_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2224_bubblesort30_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2225_bubblesort24_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n2521_bubblesort10_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n2522_bubblesort6_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_n2523_bubblesort18_out_dest_data_out_1_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_bubblesort7_bubblesort3_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_bubblesort2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_bubblesort2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_bubblesort2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going31_bubblesort2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort12_out_feedback_stall_out_9;
    wire [31:0] i_llvm_fpga_pop_i32_fpga_indvars_iv_pop10_bubblesort7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_fpga_indvars_iv_pop10_bubblesort7_out_feedback_stall_out_10;
    wire [31:0] i_llvm_fpga_pop_i32_i_023_pop11_bubblesort16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_023_pop11_bubblesort16_out_feedback_stall_out_11;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_bubblesort4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_bubblesort4_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond32_bubblesort29_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond32_bubblesort29_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv11_push9_bubblesort33_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv11_push9_bubblesort33_out_feedback_valid_out_9;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv_push10_bubblesort35_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv_push10_bubblesort35_out_feedback_valid_out_10;
    wire [31:0] i_llvm_fpga_push_i32_i_023_push11_bubblesort26_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_i_023_push11_bubblesort26_out_feedback_valid_out_11;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_bubblesort27_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_bubblesort27_out_feedback_valid_out_8;
    wire [0:0] i_notcmp30_bubblesort28_q;
    wire [0:0] i_smax_bubblesort11_s;
    reg [31:0] i_smax_bubblesort11_q;
    wire [32:0] i_unnamed_bubblesort13_a;
    wire [32:0] i_unnamed_bubblesort13_b;
    logic [32:0] i_unnamed_bubblesort13_o;
    wire [32:0] i_unnamed_bubblesort13_q;
    wire [32:0] i_unnamed_bubblesort14_vt_join_q;
    wire [31:0] i_unnamed_bubblesort14_vt_select_31_b;
    wire [33:0] i_unnamed_bubblesort15_a;
    wire [33:0] i_unnamed_bubblesort15_b;
    logic [33:0] i_unnamed_bubblesort15_o;
    wire [33:0] i_unnamed_bubblesort15_q;
    wire [0:0] i_unnamed_bubblesort25_q;
    wire [33:0] i_unnamed_bubblesort8_a;
    wire [33:0] i_unnamed_bubblesort8_b;
    logic [33:0] i_unnamed_bubblesort8_o;
    wire [0:0] i_unnamed_bubblesort8_c;
    wire [31:0] bgTrunc_i_add_bubblesort17_sel_x_b;
    wire [31:0] bgTrunc_i_fpga_indvars_iv_next12_bubblesort32_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next17_bubblesort23_sel_x_b;
    wire [31:0] bgTrunc_i_fpga_indvars_iv_next_bubblesort34_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_bubblesort13_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_bubblesort15_sel_x_b;
    wire [32:0] i_unnamed_bubblesort14_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    wire [0:0] i_exitcond18_bubblesort21_cmp_nsign_q;
    reg [0:0] redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together78_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist2_sync_together78_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist3_bgTrunc_i_add_bubblesort17_sel_x_b_1_q;
    reg [0:0] redist4_i_unnamed_bubblesort25_q_1_q;
    reg [0:0] redist5_i_unnamed_bubblesort25_q_2_q;
    reg [31:0] redist6_i_llvm_fpga_pop_i32_i_023_pop11_bubblesort16_out_data_out_1_q;
    reg [31:0] redist7_i_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort12_out_data_out_1_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_bubblesort7_bubblesort3(BLACKBOX,48)@1
    bubbleSort_i_llvm_fpga_ffwd_dest_i33_unnamed_bubblesort7_bubblesort0 thei_llvm_fpga_ffwd_dest_i33_unnamed_bubblesort7_bubblesort3 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_bubblesort7_bubblesort3_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_157(CONSTANT,32)
    assign c_i33_157_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next17_bubblesort23(ADD,41)@1
    assign i_fpga_indvars_iv_next17_bubblesort23_a = {1'b0, i_fpga_indvars_iv16_replace_phi_bubblesort5_q};
    assign i_fpga_indvars_iv_next17_bubblesort23_b = {1'b0, c_i33_157_q};
    assign i_fpga_indvars_iv_next17_bubblesort23_o = $unsigned(i_fpga_indvars_iv_next17_bubblesort23_a) + $unsigned(i_fpga_indvars_iv_next17_bubblesort23_b);
    assign i_fpga_indvars_iv_next17_bubblesort23_q = i_fpga_indvars_iv_next17_bubblesort23_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next17_bubblesort23_sel_x(BITSELECT,82)@1
    assign bgTrunc_i_fpga_indvars_iv_next17_bubblesort23_sel_x_b = i_fpga_indvars_iv_next17_bubblesort23_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_bubblesort27(BLACKBOX,58)@1
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    bubbleSort_i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_bubblesort0 thei_llvm_fpga_push_i33_fpga_indvars_iv16_push8_bubblesort27 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next17_bubblesort23_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_bubblesort4_out_feedback_stall_out_8),
        .in_stall_in(GND_q),
        .in_unnamed_bubbleSort11(i_unnamed_bubblesort25_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_bubblesort27_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_bubblesort27_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef54(CONSTANT,33)
    assign c_i33_undef54_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_bubblesort4(BLACKBOX,53)@1
    // out out_feedback_stall_out_8@20000000
    bubbleSort_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_bubblesort0 thei_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_bubblesort4 (
        .in_data_in(c_i33_undef54_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_8(i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_bubblesort27_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i33_fpga_indvars_iv16_push8_bubblesort27_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_bubblesort4_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_bubblesort4_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv16_replace_phi_bubblesort5(MUX,39)@1
    assign i_fpga_indvars_iv16_replace_phi_bubblesort5_s = in_c0_eni1_1_tpl;
    always @(i_fpga_indvars_iv16_replace_phi_bubblesort5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_bubblesort4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_bubblesort7_bubblesort3_out_dest_data_out_3_0)
    begin
        unique case (i_fpga_indvars_iv16_replace_phi_bubblesort5_s)
            1'b0 : i_fpga_indvars_iv16_replace_phi_bubblesort5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop8_bubblesort4_out_data_out;
            1'b1 : i_fpga_indvars_iv16_replace_phi_bubblesort5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_bubblesort7_bubblesort3_out_dest_data_out_3_0;
            default : i_fpga_indvars_iv16_replace_phi_bubblesort5_q = 33'b0;
        endcase
    end

    // i_exitcond18_bubblesort21_cmp_nsign(LOGICAL,109)@1
    assign i_exitcond18_bubblesort21_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv16_replace_phi_bubblesort5_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp2225_bubblesort24(BLACKBOX,44)@1
    bubbleSort_i_llvm_fpga_ffwd_dest_i1_cmp2225_bubblesort0 thei_llvm_fpga_ffwd_dest_i1_cmp2225_bubblesort24 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp2225_bubblesort24_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_bubblesort25(LOGICAL,67)@1
    assign i_unnamed_bubblesort25_q = i_llvm_fpga_ffwd_dest_i1_cmp2225_bubblesort24_out_dest_data_out_2_0 & i_exitcond18_bubblesort21_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond32_bubblesort29(BLACKBOX,54)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    bubbleSort_i_llvm_fpga_push_i1_notexitcond32_bubblesort0 thei_llvm_fpga_push_i1_notexitcond32_bubblesort29 (
        .in_data_in(i_unnamed_bubblesort25_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going31_bubblesort2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond32_bubblesort29_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond32_bubblesort29_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going31_bubblesort2(BLACKBOX,49)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    bubbleSort_i_llvm_fpga_pipeline_keep_going31_bubblesort0 thei_llvm_fpga_pipeline_keep_going31_bubblesort2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond32_bubblesort29_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond32_bubblesort29_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going31_bubblesort2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going31_bubblesort2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going31_bubblesort2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going31_bubblesort2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,34)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_bubblesort2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going31_bubblesort2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_bubblesort2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going31_bubblesort2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,73)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going31_bubblesort2_out_pipeline_valid_out;

    // redist2_sync_together78_aunroll_x_in_i_valid_1(DELAY,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together78_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together78_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,90)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together78_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist1_sync_together78_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together78_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together78_aunroll_x_in_c0_eni1_1_tpl_2_q <= $unsigned(redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_1_q);
        end
    end

    // valid_fanout_reg6(REG,96)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist2_sync_together78_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_n2523_bubblesort18(BLACKBOX,47)@3
    bubbleSort_i_llvm_fpga_ffwd_dest_i32_n2523_bubblesort0 thei_llvm_fpga_ffwd_dest_i32_n2523_bubblesort18 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_n2523_bubblesort18_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp220_bubblesort19(COMPARE,36)@3
    assign i_cmp220_bubblesort19_a = $unsigned({{2{redist3_bgTrunc_i_add_bubblesort17_sel_x_b_1_q[31]}}, redist3_bgTrunc_i_add_bubblesort17_sel_x_b_1_q});
    assign i_cmp220_bubblesort19_b = $unsigned({{2{i_llvm_fpga_ffwd_dest_i32_n2523_bubblesort18_out_dest_data_out_1_0[31]}}, i_llvm_fpga_ffwd_dest_i32_n2523_bubblesort18_out_dest_data_out_1_0});
    assign i_cmp220_bubblesort19_o = $unsigned($signed(i_cmp220_bubblesort19_a) - $signed(i_cmp220_bubblesort19_b));
    assign i_cmp220_bubblesort19_c[0] = i_cmp220_bubblesort19_o[33];

    // valid_fanout_reg8(REG,98)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist2_sync_together78_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp2224_bubblesort30(BLACKBOX,43)@3
    bubbleSort_i_llvm_fpga_ffwd_dest_i1_cmp2224_bubblesort0 thei_llvm_fpga_ffwd_dest_i1_cmp2224_bubblesort30 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp2224_bubblesort30_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_demorgan_bubblesort31(LOGICAL,37)@3
    assign i_demorgan_bubblesort31_q = i_llvm_fpga_ffwd_dest_i1_cmp2224_bubblesort30_out_dest_data_out_2_0 & i_cmp220_bubblesort19_c;

    // i_notcmp30_bubblesort28(LOGICAL,59)@3
    assign i_notcmp30_bubblesort28_q = redist5_i_unnamed_bubblesort25_q_2_q ^ VCC_q;

    // redist4_i_unnamed_bubblesort25_q_1(DELAY,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_unnamed_bubblesort25_q_1_q <= '0;
        end
        else
        begin
            redist4_i_unnamed_bubblesort25_q_1_q <= $unsigned(i_unnamed_bubblesort25_q);
        end
    end

    // redist5_i_unnamed_bubblesort25_q_2(DELAY,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_unnamed_bubblesort25_q_2_q <= '0;
        end
        else
        begin
            redist5_i_unnamed_bubblesort25_q_2_q <= $unsigned(redist4_i_unnamed_bubblesort25_q_1_q);
        end
    end

    // c_i32_159(CONSTANT,28)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg5(REG,95)@1 + 1
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

    // valid_fanout_reg7(REG,97)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist2_sync_together78_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_i_023_push11_bubblesort26(BLACKBOX,57)@3
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    bubbleSort_i_llvm_fpga_push_i32_i_023_push11_bubblesort0 thei_llvm_fpga_push_i32_i_023_push11_bubblesort26 (
        .in_data_in(redist3_bgTrunc_i_add_bubblesort17_sel_x_b_1_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_i_023_pop11_bubblesort16_out_feedback_stall_out_11),
        .in_stall_in(GND_q),
        .in_unnamed_bubbleSort11(redist5_i_unnamed_bubblesort25_q_2_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_i_023_push11_bubblesort26_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_i_023_push11_bubblesort26_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_058(CONSTANT,27)
    assign c_i32_058_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_023_pop11_bubblesort16(BLACKBOX,52)@2
    // out out_feedback_stall_out_11@20000000
    bubbleSort_i_llvm_fpga_pop_i32_i_023_pop11_bubblesort0 thei_llvm_fpga_pop_i32_i_023_pop11_bubblesort16 (
        .in_data_in(c_i32_058_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_i_023_push11_bubblesort26_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_i_023_push11_bubblesort26_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_023_pop11_bubblesort16_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_i_023_pop11_bubblesort16_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_bubblesort17(ADD,35)@2
    assign i_add_bubblesort17_a = {1'b0, i_llvm_fpga_pop_i32_i_023_pop11_bubblesort16_out_data_out};
    assign i_add_bubblesort17_b = {1'b0, c_i32_159_q};
    assign i_add_bubblesort17_o = $unsigned(i_add_bubblesort17_a) + $unsigned(i_add_bubblesort17_b);
    assign i_add_bubblesort17_q = i_add_bubblesort17_o[32:0];

    // bgTrunc_i_add_bubblesort17_sel_x(BITSELECT,80)@2
    assign bgTrunc_i_add_bubblesort17_sel_x_b = i_add_bubblesort17_q[31:0];

    // redist3_bgTrunc_i_add_bubblesort17_sel_x_b_1(DELAY,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_add_bubblesort17_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist3_bgTrunc_i_add_bubblesort17_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_bubblesort17_sel_x_b);
        end
    end

    // redist6_i_llvm_fpga_pop_i32_i_023_pop11_bubblesort16_out_data_out_1(DELAY,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i32_i_023_pop11_bubblesort16_out_data_out_1_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_i32_i_023_pop11_bubblesort16_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_023_pop11_bubblesort16_out_data_out);
        end
    end

    // valid_fanout_reg4(REG,94)@1 + 1
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

    // valid_fanout_reg9(REG,99)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist2_sync_together78_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_161(CONSTANT,29)
    assign c_i32_161_q = $unsigned(32'b11111111111111111111111111111111);

    // i_fpga_indvars_iv_next12_bubblesort32(ADD,40)@3
    assign i_fpga_indvars_iv_next12_bubblesort32_a = {1'b0, redist7_i_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort12_out_data_out_1_q};
    assign i_fpga_indvars_iv_next12_bubblesort32_b = {1'b0, c_i32_161_q};
    assign i_fpga_indvars_iv_next12_bubblesort32_o = $unsigned(i_fpga_indvars_iv_next12_bubblesort32_a) + $unsigned(i_fpga_indvars_iv_next12_bubblesort32_b);
    assign i_fpga_indvars_iv_next12_bubblesort32_q = i_fpga_indvars_iv_next12_bubblesort32_o[32:0];

    // bgTrunc_i_fpga_indvars_iv_next12_bubblesort32_sel_x(BITSELECT,81)@3
    assign bgTrunc_i_fpga_indvars_iv_next12_bubblesort32_sel_x_b = i_fpga_indvars_iv_next12_bubblesort32_q[31:0];

    // i_llvm_fpga_push_i32_fpga_indvars_iv11_push9_bubblesort33(BLACKBOX,55)@3
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    bubbleSort_i_llvm_fpga_push_i32_fpga_indvars_iv11_push9_bubblesort0 thei_llvm_fpga_push_i32_fpga_indvars_iv11_push9_bubblesort33 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next12_bubblesort32_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort12_out_feedback_stall_out_9),
        .in_stall_in(GND_q),
        .in_unnamed_bubbleSort11(redist5_i_unnamed_bubblesort25_q_2_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_fpga_indvars_iv11_push9_bubblesort33_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_fpga_indvars_iv11_push9_bubblesort33_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_256(CONSTANT,31)
    assign c_i32_256_q = $unsigned(32'b11111111111111111111111111111110);

    // i_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort12(BLACKBOX,50)@2
    // out out_feedback_stall_out_9@20000000
    bubbleSort_i_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort0 thei_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort12 (
        .in_data_in(c_i32_256_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i32_fpga_indvars_iv11_push9_bubblesort33_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_fpga_indvars_iv11_push9_bubblesort33_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort12_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort12_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort12_out_data_out_1(DELAY,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort12_out_data_out);
        end
    end

    // valid_fanout_reg3(REG,93)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_n2521_bubblesort10(BLACKBOX,45)@2
    bubbleSort_i_llvm_fpga_ffwd_dest_i32_n2521_bubblesort0 thei_llvm_fpga_ffwd_dest_i32_n2521_bubblesort10 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_n2521_bubblesort10_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,92)@1 + 1
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

    // valid_fanout_reg10(REG,100)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_fpga_indvars_iv_next_bubblesort34(ADD,42)@2
    assign i_fpga_indvars_iv_next_bubblesort34_a = {1'b0, i_llvm_fpga_pop_i32_fpga_indvars_iv_pop10_bubblesort7_out_data_out};
    assign i_fpga_indvars_iv_next_bubblesort34_b = {1'b0, c_i32_159_q};
    assign i_fpga_indvars_iv_next_bubblesort34_o = $unsigned(i_fpga_indvars_iv_next_bubblesort34_a) + $unsigned(i_fpga_indvars_iv_next_bubblesort34_b);
    assign i_fpga_indvars_iv_next_bubblesort34_q = i_fpga_indvars_iv_next_bubblesort34_o[32:0];

    // bgTrunc_i_fpga_indvars_iv_next_bubblesort34_sel_x(BITSELECT,83)@2
    assign bgTrunc_i_fpga_indvars_iv_next_bubblesort34_sel_x_b = i_fpga_indvars_iv_next_bubblesort34_q[31:0];

    // i_llvm_fpga_push_i32_fpga_indvars_iv_push10_bubblesort35(BLACKBOX,56)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    bubbleSort_i_llvm_fpga_push_i32_fpga_indvars_iv_push10_bubblesort0 thei_llvm_fpga_push_i32_fpga_indvars_iv_push10_bubblesort35 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_bubblesort34_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i32_fpga_indvars_iv_pop10_bubblesort7_out_feedback_stall_out_10),
        .in_stall_in(GND_q),
        .in_unnamed_bubbleSort11(redist4_i_unnamed_bubblesort25_q_1_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i32_fpga_indvars_iv_push10_bubblesort35_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i32_fpga_indvars_iv_push10_bubblesort35_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_255(CONSTANT,30)
    assign c_i32_255_q = $unsigned(32'b00000000000000000000000000000010);

    // i_llvm_fpga_pop_i32_fpga_indvars_iv_pop10_bubblesort7(BLACKBOX,51)@2
    // out out_feedback_stall_out_10@20000000
    bubbleSort_i_llvm_fpga_pop_i32_fpga_indvars_iv_pop10_bubblesort0 thei_llvm_fpga_pop_i32_fpga_indvars_iv_pop10_bubblesort7 (
        .in_data_in(c_i32_255_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_10(i_llvm_fpga_push_i32_fpga_indvars_iv_push10_bubblesort35_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i32_fpga_indvars_iv_push10_bubblesort35_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_fpga_indvars_iv_pop10_bubblesort7_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i32_fpga_indvars_iv_pop10_bubblesort7_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,91)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_n2522_bubblesort6(BLACKBOX,46)@2
    bubbleSort_i_llvm_fpga_ffwd_dest_i32_n2522_bubblesort0 thei_llvm_fpga_ffwd_dest_i32_n2522_bubblesort6 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_n2522_bubblesort6_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_bubblesort8(COMPARE,68)@2
    assign i_unnamed_bubblesort8_a = $unsigned({{2{i_llvm_fpga_pop_i32_fpga_indvars_iv_pop10_bubblesort7_out_data_out[31]}}, i_llvm_fpga_pop_i32_fpga_indvars_iv_pop10_bubblesort7_out_data_out});
    assign i_unnamed_bubblesort8_b = $unsigned({{2{i_llvm_fpga_ffwd_dest_i32_n2522_bubblesort6_out_dest_data_out_1_0[31]}}, i_llvm_fpga_ffwd_dest_i32_n2522_bubblesort6_out_dest_data_out_1_0});
    assign i_unnamed_bubblesort8_o = $unsigned($signed(i_unnamed_bubblesort8_a) - $signed(i_unnamed_bubblesort8_b));
    assign i_unnamed_bubblesort8_c[0] = i_unnamed_bubblesort8_o[33];

    // i_smax_bubblesort11(MUX,60)@2 + 1
    assign i_smax_bubblesort11_s = i_unnamed_bubblesort8_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_smax_bubblesort11_q <= 32'b0;
        end
        else
        begin
            unique case (i_smax_bubblesort11_s)
                1'b0 : i_smax_bubblesort11_q <= i_llvm_fpga_pop_i32_fpga_indvars_iv_pop10_bubblesort7_out_data_out;
                1'b1 : i_smax_bubblesort11_q <= i_llvm_fpga_ffwd_dest_i32_n2521_bubblesort10_out_dest_data_out_1_0;
                default : i_smax_bubblesort11_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_bubblesort13(ADD,61)@3
    assign i_unnamed_bubblesort13_a = {1'b0, i_smax_bubblesort11_q};
    assign i_unnamed_bubblesort13_b = {1'b0, redist7_i_llvm_fpga_pop_i32_fpga_indvars_iv11_pop9_bubblesort12_out_data_out_1_q};
    assign i_unnamed_bubblesort13_o = $unsigned(i_unnamed_bubblesort13_a) + $unsigned(i_unnamed_bubblesort13_b);
    assign i_unnamed_bubblesort13_q = i_unnamed_bubblesort13_o[32:0];

    // bgTrunc_i_unnamed_bubblesort13_sel_x(BITSELECT,84)@3
    assign bgTrunc_i_unnamed_bubblesort13_sel_x_b = i_unnamed_bubblesort13_q[31:0];

    // i_unnamed_bubblesort14_sel_x(BITSELECT,87)@3
    assign i_unnamed_bubblesort14_sel_x_b = {1'b0, bgTrunc_i_unnamed_bubblesort13_sel_x_b[31:0]};

    // i_unnamed_bubblesort14_vt_select_31(BITSELECT,65)@3
    assign i_unnamed_bubblesort14_vt_select_31_b = i_unnamed_bubblesort14_sel_x_b[31:0];

    // i_unnamed_bubblesort14_vt_join(BITJOIN,64)@3
    assign i_unnamed_bubblesort14_vt_join_q = {GND_q, i_unnamed_bubblesort14_vt_select_31_b};

    // i_unnamed_bubblesort15(ADD,66)@3
    assign i_unnamed_bubblesort15_a = {1'b0, i_unnamed_bubblesort14_vt_join_q};
    assign i_unnamed_bubblesort15_b = {1'b0, c_i33_157_q};
    assign i_unnamed_bubblesort15_o = $unsigned(i_unnamed_bubblesort15_a) + $unsigned(i_unnamed_bubblesort15_b);
    assign i_unnamed_bubblesort15_q = i_unnamed_bubblesort15_o[33:0];

    // bgTrunc_i_unnamed_bubblesort15_sel_x(BITSELECT,85)@3
    assign bgTrunc_i_unnamed_bubblesort15_sel_x_b = i_unnamed_bubblesort15_q[32:0];

    // sync_out_aunroll_x(GPOUT,88)@3
    assign out_c0_exi7_0_tpl = GND_q;
    assign out_c0_exi7_1_tpl = bgTrunc_i_unnamed_bubblesort15_sel_x_b;
    assign out_c0_exi7_2_tpl = redist6_i_llvm_fpga_pop_i32_i_023_pop11_bubblesort16_out_data_out_1_q;
    assign out_c0_exi7_3_tpl = redist3_bgTrunc_i_add_bubblesort17_sel_x_b_1_q;
    assign out_c0_exi7_4_tpl = redist5_i_unnamed_bubblesort25_q_2_q;
    assign out_c0_exi7_5_tpl = i_notcmp30_bubblesort28_q;
    assign out_c0_exi7_6_tpl = i_demorgan_bubblesort31_q;
    assign out_c0_exi7_7_tpl = redist1_sync_together78_aunroll_x_in_c0_eni1_1_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_bubbleSort1 = GND_q;

endmodule
