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

// SystemVerilog created from prod_matrix_i_sfc_logic_s_c0_in_for_bodyA000000Zter7211_prod_matrix0
// SystemVerilog created on Mon Apr  6 10:28:45 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module prod_matrix_i_sfc_logic_s_c0_in_for_bodyA000000Zter7211_prod_matrix0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_prod_matrix2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_prod_matrix2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [32:0] in_intel_reserved_ffwd_5_0,
    output wire [0:0] out_c0_exi12_0_tpl,
    output wire [0:0] out_c0_exi12_1_tpl,
    output wire [0:0] out_c0_exi12_2_tpl,
    output wire [31:0] out_c0_exi12_3_tpl,
    output wire [0:0] out_c0_exi12_4_tpl,
    output wire [0:0] out_c0_exi12_5_tpl,
    output wire [31:0] out_c0_exi12_6_tpl,
    output wire [0:0] out_c0_exi12_7_tpl,
    output wire [0:0] out_c0_exi12_8_tpl,
    output wire [0:0] out_c0_exi12_9_tpl,
    output wire [0:0] out_c0_exi12_10_tpl,
    output wire [31:0] out_c0_exi12_11_tpl,
    output wire [0:0] out_c0_exi12_12_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_prod_matrix1,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [0:0] in_c0_eni5_2_tpl,
    input wire [0:0] in_c0_eni5_3_tpl,
    input wire [31:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_046_q;
    wire [31:0] c_i32_147_q;
    wire [32:0] c_i33_145_q;
    wire [32:0] c_i33_undef43_q;
    wire [0:0] i_fpga_indvars_iv8_replace_phi_prod_matrix5_s;
    reg [32:0] i_fpga_indvars_iv8_replace_phi_prod_matrix5_q;
    wire [33:0] i_fpga_indvars_iv_next9_prod_matrix12_a;
    wire [33:0] i_fpga_indvars_iv_next9_prod_matrix12_b;
    logic [33:0] i_fpga_indvars_iv_next9_prod_matrix12_o;
    wire [33:0] i_fpga_indvars_iv_next9_prod_matrix12_q;
    wire [32:0] i_inc18_prod_matrix15_a;
    wire [32:0] i_inc18_prod_matrix15_b;
    logic [32:0] i_inc18_prod_matrix15_o;
    wire [32:0] i_inc18_prod_matrix15_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix12_prod_matrix8_out_dest_data_out_3_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix11_prod_matrix3_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_prod_matrix2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_prod_matrix2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_prod_matrix2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_prod_matrix2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1238_pop19_prod_matrix23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1238_pop19_prod_matrix23_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2634_pop17_prod_matrix19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2634_pop17_prod_matrix19_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i1_pop16_prod_matrix17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop16_prod_matrix17_out_feedback_stall_out_16;
    wire [31:0] i_llvm_fpga_pop_i32_i_021_pop1136_pop18_prod_matrix21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_021_pop1136_pop18_prod_matrix21_out_feedback_stall_out_18;
    wire [31:0] i_llvm_fpga_pop_i32_j_018_pop14_prod_matrix14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_018_pop14_prod_matrix14_out_feedback_stall_out_14;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv8_pop13_prod_matrix4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv8_pop13_prod_matrix4_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1238_push19_prod_matrix24_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1238_push19_prod_matrix24_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2634_push17_prod_matrix20_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2634_push17_prod_matrix20_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond24_prod_matrix11_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond24_prod_matrix11_out_feedback_valid_out_5;
    wire [0:0] i_llvm_fpga_push_i1_push16_prod_matrix18_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_push16_prod_matrix18_out_feedback_valid_out_16;
    wire [31:0] i_llvm_fpga_push_i32_i_021_pop1136_push18_prod_matrix22_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_i_021_pop1136_push18_prod_matrix22_out_feedback_valid_out_18;
    wire [31:0] i_llvm_fpga_push_i32_j_018_push14_prod_matrix16_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_j_018_push14_prod_matrix16_out_feedback_valid_out_14;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv8_push13_prod_matrix13_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv8_push13_prod_matrix13_out_feedback_valid_out_13;
    wire [0:0] i_notcmp22_prod_matrix10_q;
    wire [0:0] i_unnamed_prod_matrix9_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next9_prod_matrix12_sel_x_b;
    wire [31:0] bgTrunc_i_inc18_prod_matrix15_sel_x_b;
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
    wire [0:0] i_exitcond10_prod_matrix6_cmp_nsign_q;
    reg [0:0] redist0_sync_together67_aunroll_x_in_c0_eni5_1_tpl_1_q;
    reg [0:0] redist1_sync_together67_aunroll_x_in_c0_eni5_2_tpl_1_q;
    reg [0:0] redist2_sync_together67_aunroll_x_in_c0_eni5_3_tpl_1_q;
    reg [31:0] redist3_sync_together67_aunroll_x_in_c0_eni5_4_tpl_1_q;
    reg [0:0] redist4_sync_together67_aunroll_x_in_c0_eni5_5_tpl_1_q;
    reg [0:0] redist5_i_unnamed_prod_matrix9_q_1_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix11_prod_matrix3(BLACKBOX,33)@1
    prod_matrix_i_llvm_fpga_ffwd_dest_i33_unnamed_11_prod_matrix0 thei_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix11_prod_matrix3 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix11_prod_matrix3_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_145(CONSTANT,25)
    assign c_i33_145_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next9_prod_matrix12(ADD,30)@1
    assign i_fpga_indvars_iv_next9_prod_matrix12_a = {1'b0, i_fpga_indvars_iv8_replace_phi_prod_matrix5_q};
    assign i_fpga_indvars_iv_next9_prod_matrix12_b = {1'b0, c_i33_145_q};
    assign i_fpga_indvars_iv_next9_prod_matrix12_o = $unsigned(i_fpga_indvars_iv_next9_prod_matrix12_a) + $unsigned(i_fpga_indvars_iv_next9_prod_matrix12_b);
    assign i_fpga_indvars_iv_next9_prod_matrix12_q = i_fpga_indvars_iv_next9_prod_matrix12_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next9_prod_matrix12_sel_x(BITSELECT,56)@1
    assign bgTrunc_i_fpga_indvars_iv_next9_prod_matrix12_sel_x_b = i_fpga_indvars_iv_next9_prod_matrix12_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv8_push13_prod_matrix13(BLACKBOX,47)@1
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    prod_matrix_i_llvm_fpga_push_i33_fpga_indvars_iv8_push13_0 thei_llvm_fpga_push_i33_fpga_indvars_iv8_push13_prod_matrix13 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next9_prod_matrix12_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i33_fpga_indvars_iv8_pop13_prod_matrix4_out_feedback_stall_out_13),
        .in_stall_in(GND_q),
        .in_unnamed_prod_matrix19(i_unnamed_prod_matrix9_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i33_fpga_indvars_iv8_push13_prod_matrix13_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i33_fpga_indvars_iv8_push13_prod_matrix13_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef43(CONSTANT,26)
    assign c_i33_undef43_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv8_pop13_prod_matrix4(BLACKBOX,40)@1
    // out out_feedback_stall_out_13@20000000
    prod_matrix_i_llvm_fpga_pop_i33_fpga_indvars_iv8_pop13_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv8_pop13_prod_matrix4 (
        .in_data_in(c_i33_undef43_q),
        .in_dir(in_c0_eni5_1_tpl),
        .in_feedback_in_13(i_llvm_fpga_push_i33_fpga_indvars_iv8_push13_prod_matrix13_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i33_fpga_indvars_iv8_push13_prod_matrix13_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv8_pop13_prod_matrix4_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i33_fpga_indvars_iv8_pop13_prod_matrix4_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv8_replace_phi_prod_matrix5(MUX,29)@1
    assign i_fpga_indvars_iv8_replace_phi_prod_matrix5_s = in_c0_eni5_1_tpl;
    always @(i_fpga_indvars_iv8_replace_phi_prod_matrix5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv8_pop13_prod_matrix4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix11_prod_matrix3_out_dest_data_out_5_0)
    begin
        unique case (i_fpga_indvars_iv8_replace_phi_prod_matrix5_s)
            1'b0 : i_fpga_indvars_iv8_replace_phi_prod_matrix5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv8_pop13_prod_matrix4_out_data_out;
            1'b1 : i_fpga_indvars_iv8_replace_phi_prod_matrix5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix11_prod_matrix3_out_dest_data_out_5_0;
            default : i_fpga_indvars_iv8_replace_phi_prod_matrix5_q = 33'b0;
        endcase
    end

    // i_exitcond10_prod_matrix6_cmp_nsign(LOGICAL,75)@1
    assign i_exitcond10_prod_matrix6_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv8_replace_phi_prod_matrix5_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix12_prod_matrix8(BLACKBOX,32)@1
    prod_matrix_i_llvm_fpga_ffwd_dest_i1_unnamed_12_prod_matrix0 thei_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix12_prod_matrix8 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix12_prod_matrix8_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_prod_matrix9(LOGICAL,49)@1
    assign i_unnamed_prod_matrix9_q = i_llvm_fpga_ffwd_dest_i1_unnamed_prod_matrix12_prod_matrix8_out_dest_data_out_3_0 & i_exitcond10_prod_matrix6_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond24_prod_matrix11(BLACKBOX,43)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    prod_matrix_i_llvm_fpga_push_i1_notexitcond24_0 thei_llvm_fpga_push_i1_notexitcond24_prod_matrix11 (
        .in_data_in(i_unnamed_prod_matrix9_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going23_prod_matrix2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond24_prod_matrix11_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond24_prod_matrix11_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going23_prod_matrix2(BLACKBOX,34)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    prod_matrix_i_llvm_fpga_pipeline_keep_going23_0 thei_llvm_fpga_pipeline_keep_going23_prod_matrix2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond24_prod_matrix11_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond24_prod_matrix11_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going23_prod_matrix2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going23_prod_matrix2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going23_prod_matrix2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going23_prod_matrix2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,27)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_prod_matrix2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going23_prod_matrix2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_prod_matrix2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going23_prod_matrix2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,52)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going23_prod_matrix2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,61)@1 + 1
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

    // redist4_sync_together67_aunroll_x_in_c0_eni5_5_tpl_1(DELAY,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together67_aunroll_x_in_c0_eni5_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together67_aunroll_x_in_c0_eni5_5_tpl_1_q <= $unsigned(in_c0_eni5_5_tpl);
        end
    end

    // redist3_sync_together67_aunroll_x_in_c0_eni5_4_tpl_1(DELAY,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together67_aunroll_x_in_c0_eni5_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together67_aunroll_x_in_c0_eni5_4_tpl_1_q <= $unsigned(in_c0_eni5_4_tpl);
        end
    end

    // redist2_sync_together67_aunroll_x_in_c0_eni5_3_tpl_1(DELAY,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together67_aunroll_x_in_c0_eni5_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together67_aunroll_x_in_c0_eni5_3_tpl_1_q <= $unsigned(in_c0_eni5_3_tpl);
        end
    end

    // redist1_sync_together67_aunroll_x_in_c0_eni5_2_tpl_1(DELAY,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together67_aunroll_x_in_c0_eni5_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together67_aunroll_x_in_c0_eni5_2_tpl_1_q <= $unsigned(in_c0_eni5_2_tpl);
        end
    end

    // redist0_sync_together67_aunroll_x_in_c0_eni5_1_tpl_1(DELAY,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together67_aunroll_x_in_c0_eni5_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together67_aunroll_x_in_c0_eni5_1_tpl_1_q <= $unsigned(in_c0_eni5_1_tpl);
        end
    end

    // valid_fanout_reg9(REG,70)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,71)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi4_pop1238_push19_prod_matrix24(BLACKBOX,41)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    prod_matrix_i_llvm_fpga_push_i1_memdep_phi4_pop1238_push19_0 thei_llvm_fpga_push_i1_memdep_phi4_pop1238_push19_prod_matrix24 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi4_pop1238_pop19_prod_matrix23_out_data_out),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_memdep_phi4_pop1238_pop19_prod_matrix23_out_feedback_stall_out_19),
        .in_stall_in(GND_q),
        .in_unnamed_prod_matrix19(redist5_i_unnamed_prod_matrix9_q_1_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_memdep_phi4_pop1238_push19_prod_matrix24_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_memdep_phi4_pop1238_push19_prod_matrix24_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi4_pop1238_pop19_prod_matrix23(BLACKBOX,35)@2
    // out out_feedback_stall_out_19@20000000
    prod_matrix_i_llvm_fpga_pop_i1_memdep_phi4_pop1238_pop19_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop1238_pop19_prod_matrix23 (
        .in_data_in(redist4_sync_together67_aunroll_x_in_c0_eni5_5_tpl_1_q),
        .in_dir(redist0_sync_together67_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i1_memdep_phi4_pop1238_push19_prod_matrix24_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_memdep_phi4_pop1238_push19_prod_matrix24_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop1238_pop19_prod_matrix23_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_memdep_phi4_pop1238_pop19_prod_matrix23_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,68)@1 + 1
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

    // valid_fanout_reg8(REG,69)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_i_021_pop1136_push18_prod_matrix22(BLACKBOX,45)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    prod_matrix_i_llvm_fpga_push_i32_i_021_pop1136_push18_0 thei_llvm_fpga_push_i32_i_021_pop1136_push18_prod_matrix22 (
        .in_data_in(i_llvm_fpga_pop_i32_i_021_pop1136_pop18_prod_matrix21_out_data_out),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_i_021_pop1136_pop18_prod_matrix21_out_feedback_stall_out_18),
        .in_stall_in(GND_q),
        .in_unnamed_prod_matrix19(redist5_i_unnamed_prod_matrix9_q_1_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_i_021_pop1136_push18_prod_matrix22_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_i_021_pop1136_push18_prod_matrix22_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_021_pop1136_pop18_prod_matrix21(BLACKBOX,38)@2
    // out out_feedback_stall_out_18@20000000
    prod_matrix_i_llvm_fpga_pop_i32_i_021_pop1136_pop18_0 thei_llvm_fpga_pop_i32_i_021_pop1136_pop18_prod_matrix21 (
        .in_data_in(redist3_sync_together67_aunroll_x_in_c0_eni5_4_tpl_1_q),
        .in_dir(redist0_sync_together67_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_i_021_pop1136_push18_prod_matrix22_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_i_021_pop1136_push18_prod_matrix22_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_021_pop1136_pop18_prod_matrix21_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_i_021_pop1136_pop18_prod_matrix21_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,66)@1 + 1
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

    // valid_fanout_reg6(REG,67)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp2634_push17_prod_matrix20(BLACKBOX,42)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    prod_matrix_i_llvm_fpga_push_i1_notcmp2634_push17_0 thei_llvm_fpga_push_i1_notcmp2634_push17_prod_matrix20 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2634_pop17_prod_matrix19_out_data_out),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i1_notcmp2634_pop17_prod_matrix19_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_unnamed_prod_matrix19(redist5_i_unnamed_prod_matrix9_q_1_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_notcmp2634_push17_prod_matrix20_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_notcmp2634_push17_prod_matrix20_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp2634_pop17_prod_matrix19(BLACKBOX,36)@2
    // out out_feedback_stall_out_17@20000000
    prod_matrix_i_llvm_fpga_pop_i1_notcmp2634_pop17_0 thei_llvm_fpga_pop_i1_notcmp2634_pop17_prod_matrix19 (
        .in_data_in(redist2_sync_together67_aunroll_x_in_c0_eni5_3_tpl_1_q),
        .in_dir(redist0_sync_together67_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i1_notcmp2634_push17_prod_matrix20_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i1_notcmp2634_push17_prod_matrix20_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2634_pop17_prod_matrix19_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_notcmp2634_pop17_prod_matrix19_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,64)@1 + 1
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

    // valid_fanout_reg4(REG,65)@1 + 1
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

    // i_llvm_fpga_push_i1_push16_prod_matrix18(BLACKBOX,44)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    prod_matrix_i_llvm_fpga_push_i1_push16_0 thei_llvm_fpga_push_i1_push16_prod_matrix18 (
        .in_data_in(i_llvm_fpga_pop_i1_pop16_prod_matrix17_out_data_out),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i1_pop16_prod_matrix17_out_feedback_stall_out_16),
        .in_stall_in(GND_q),
        .in_unnamed_prod_matrix19(redist5_i_unnamed_prod_matrix9_q_1_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_push16_prod_matrix18_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_push16_prod_matrix18_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop16_prod_matrix17(BLACKBOX,37)@2
    // out out_feedback_stall_out_16@20000000
    prod_matrix_i_llvm_fpga_pop_i1_pop16_0 thei_llvm_fpga_pop_i1_pop16_prod_matrix17 (
        .in_data_in(redist1_sync_together67_aunroll_x_in_c0_eni5_2_tpl_1_q),
        .in_dir(redist0_sync_together67_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i1_push16_prod_matrix18_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i1_push16_prod_matrix18_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop16_prod_matrix17_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_pop16_prod_matrix17_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,62)@1 + 1
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

    // valid_fanout_reg2(REG,63)@1 + 1
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

    // c_i32_147(CONSTANT,24)
    assign c_i32_147_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc18_prod_matrix15(ADD,31)@2
    assign i_inc18_prod_matrix15_a = {1'b0, i_llvm_fpga_pop_i32_j_018_pop14_prod_matrix14_out_data_out};
    assign i_inc18_prod_matrix15_b = {1'b0, c_i32_147_q};
    assign i_inc18_prod_matrix15_o = $unsigned(i_inc18_prod_matrix15_a) + $unsigned(i_inc18_prod_matrix15_b);
    assign i_inc18_prod_matrix15_q = i_inc18_prod_matrix15_o[32:0];

    // bgTrunc_i_inc18_prod_matrix15_sel_x(BITSELECT,57)@2
    assign bgTrunc_i_inc18_prod_matrix15_sel_x_b = i_inc18_prod_matrix15_q[31:0];

    // i_llvm_fpga_push_i32_j_018_push14_prod_matrix16(BLACKBOX,46)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    prod_matrix_i_llvm_fpga_push_i32_j_018_push14_0 thei_llvm_fpga_push_i32_j_018_push14_prod_matrix16 (
        .in_data_in(bgTrunc_i_inc18_prod_matrix15_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_j_018_pop14_prod_matrix14_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_unnamed_prod_matrix19(redist5_i_unnamed_prod_matrix9_q_1_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_j_018_push14_prod_matrix16_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_j_018_push14_prod_matrix16_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_046(CONSTANT,23)
    assign c_i32_046_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_j_018_pop14_prod_matrix14(BLACKBOX,39)@2
    // out out_feedback_stall_out_14@20000000
    prod_matrix_i_llvm_fpga_pop_i32_j_018_pop14_0 thei_llvm_fpga_pop_i32_j_018_pop14_prod_matrix14 (
        .in_data_in(c_i32_046_q),
        .in_dir(redist0_sync_together67_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i32_j_018_push14_prod_matrix16_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_j_018_push14_prod_matrix16_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_018_pop14_prod_matrix14_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_j_018_pop14_prod_matrix14_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp22_prod_matrix10(LOGICAL,48)@2
    assign i_notcmp22_prod_matrix10_q = redist5_i_unnamed_prod_matrix9_q_1_q ^ VCC_q;

    // redist5_i_unnamed_prod_matrix9_q_1(DELAY,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_unnamed_prod_matrix9_q_1_q <= '0;
        end
        else
        begin
            redist5_i_unnamed_prod_matrix9_q_1_q <= $unsigned(i_unnamed_prod_matrix9_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,59)@2
    assign out_c0_exi12_0_tpl = GND_q;
    assign out_c0_exi12_1_tpl = redist5_i_unnamed_prod_matrix9_q_1_q;
    assign out_c0_exi12_2_tpl = i_notcmp22_prod_matrix10_q;
    assign out_c0_exi12_3_tpl = i_llvm_fpga_pop_i32_j_018_pop14_prod_matrix14_out_data_out;
    assign out_c0_exi12_4_tpl = i_llvm_fpga_pop_i1_pop16_prod_matrix17_out_data_out;
    assign out_c0_exi12_5_tpl = i_llvm_fpga_pop_i1_notcmp2634_pop17_prod_matrix19_out_data_out;
    assign out_c0_exi12_6_tpl = i_llvm_fpga_pop_i32_i_021_pop1136_pop18_prod_matrix21_out_data_out;
    assign out_c0_exi12_7_tpl = i_llvm_fpga_pop_i1_memdep_phi4_pop1238_pop19_prod_matrix23_out_data_out;
    assign out_c0_exi12_8_tpl = redist0_sync_together67_aunroll_x_in_c0_eni5_1_tpl_1_q;
    assign out_c0_exi12_9_tpl = redist1_sync_together67_aunroll_x_in_c0_eni5_2_tpl_1_q;
    assign out_c0_exi12_10_tpl = redist2_sync_together67_aunroll_x_in_c0_eni5_3_tpl_1_q;
    assign out_c0_exi12_11_tpl = redist3_sync_together67_aunroll_x_in_c0_eni5_4_tpl_1_q;
    assign out_c0_exi12_12_tpl = redist4_sync_together67_aunroll_x_in_c0_eni5_5_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_prod_matrix1 = GND_q;

endmodule
