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

// SystemVerilog created from prod_matrix_i_sfc_logic_s_c0_in_for_condA000000Zter6710_prod_matrix0
// SystemVerilog created on Mon Apr  6 11:18:08 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module prod_matrix_i_sfc_logic_s_c0_in_for_condA000000Zter6710_prod_matrix0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_prod_matrix2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_prod_matrix2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    output wire [0:0] out_c0_exi4_0_tpl,
    output wire [0:0] out_c0_exi4_1_tpl,
    output wire [0:0] out_c0_exi4_2_tpl,
    output wire [31:0] out_c0_exi4_3_tpl,
    output wire [0:0] out_c0_exi4_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_prod_matrix1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_030_q;
    wire [31:0] c_i32_131_q;
    wire [32:0] c_i33_129_q;
    wire [32:0] c_i33_undef27_q;
    wire [0:0] i_fpga_indvars_iv11_replace_phi_prod_matrix5_s;
    reg [32:0] i_fpga_indvars_iv11_replace_phi_prod_matrix5_q;
    wire [33:0] i_fpga_indvars_iv_next12_prod_matrix12_a;
    wire [33:0] i_fpga_indvars_iv_next12_prod_matrix12_b;
    logic [33:0] i_fpga_indvars_iv_next12_prod_matrix12_o;
    wire [33:0] i_fpga_indvars_iv_next12_prod_matrix12_q;
    wire [32:0] i_inc21_prod_matrix15_a;
    wire [32:0] i_inc21_prod_matrix15_b;
    logic [32:0] i_inc21_prod_matrix15_o;
    wire [32:0] i_inc21_prod_matrix15_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2017_prod_matrix8_out_dest_data_out_2_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix9_prod_matrix3_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_prod_matrix2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_prod_matrix2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_prod_matrix2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_prod_matrix2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_021_pop11_prod_matrix14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_021_pop11_prod_matrix14_out_feedback_stall_out_11;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop10_prod_matrix4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop10_prod_matrix4_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond28_prod_matrix11_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond28_prod_matrix11_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_i_021_push11_prod_matrix16_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_i_021_push11_prod_matrix16_out_feedback_valid_out_11;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv11_push10_prod_matrix13_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv11_push10_prod_matrix13_out_feedback_valid_out_10;
    wire [0:0] i_notcmp26_prod_matrix10_q;
    wire [0:0] i_unnamed_prod_matrix9_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next12_prod_matrix12_sel_x_b;
    wire [31:0] bgTrunc_i_inc21_prod_matrix15_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [0:0] i_exitcond13_prod_matrix6_cmp_nsign_q;
    reg [0:0] redist0_sync_together43_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_i_unnamed_prod_matrix9_q_1_q;


    // i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix9_prod_matrix3(BLACKBOX,25)@1
    prod_matrix_i_llvm_fpga_ffwd_dest_i33_unnamed_9_prod_matrix0 thei_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix9_prod_matrix3 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix9_prod_matrix3_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_129(CONSTANT,17)
    assign c_i33_129_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next12_prod_matrix12(ADD,22)@1
    assign i_fpga_indvars_iv_next12_prod_matrix12_a = {1'b0, i_fpga_indvars_iv11_replace_phi_prod_matrix5_q};
    assign i_fpga_indvars_iv_next12_prod_matrix12_b = {1'b0, c_i33_129_q};
    assign i_fpga_indvars_iv_next12_prod_matrix12_o = $unsigned(i_fpga_indvars_iv_next12_prod_matrix12_a) + $unsigned(i_fpga_indvars_iv_next12_prod_matrix12_b);
    assign i_fpga_indvars_iv_next12_prod_matrix12_q = i_fpga_indvars_iv_next12_prod_matrix12_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next12_prod_matrix12_sel_x(BITSELECT,40)@1
    assign bgTrunc_i_fpga_indvars_iv_next12_prod_matrix12_sel_x_b = i_fpga_indvars_iv_next12_prod_matrix12_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv11_push10_prod_matrix13(BLACKBOX,31)@1
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    prod_matrix_i_llvm_fpga_push_i33_fpga_indvars_iv11_push10_0 thei_llvm_fpga_push_i33_fpga_indvars_iv11_push10_prod_matrix13 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next12_prod_matrix12_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop10_prod_matrix4_out_feedback_stall_out_10),
        .in_stall_in(GND_q),
        .in_unnamed_prod_matrix18(i_unnamed_prod_matrix9_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i33_fpga_indvars_iv11_push10_prod_matrix13_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i33_fpga_indvars_iv11_push10_prod_matrix13_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef27(CONSTANT,18)
    assign c_i33_undef27_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop10_prod_matrix4(BLACKBOX,28)@1
    // out out_feedback_stall_out_10@20000000
    prod_matrix_i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop10_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv11_pop10_prod_matrix4 (
        .in_data_in(c_i33_undef27_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_10(i_llvm_fpga_push_i33_fpga_indvars_iv11_push10_prod_matrix13_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i33_fpga_indvars_iv11_push10_prod_matrix13_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop10_prod_matrix4_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop10_prod_matrix4_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv11_replace_phi_prod_matrix5(MUX,21)@1
    assign i_fpga_indvars_iv11_replace_phi_prod_matrix5_s = in_c0_eni1_1_tpl;
    always @(i_fpga_indvars_iv11_replace_phi_prod_matrix5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop10_prod_matrix4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix9_prod_matrix3_out_dest_data_out_4_0)
    begin
        unique case (i_fpga_indvars_iv11_replace_phi_prod_matrix5_s)
            1'b0 : i_fpga_indvars_iv11_replace_phi_prod_matrix5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop10_prod_matrix4_out_data_out;
            1'b1 : i_fpga_indvars_iv11_replace_phi_prod_matrix5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_prod_matrix9_prod_matrix3_out_dest_data_out_4_0;
            default : i_fpga_indvars_iv11_replace_phi_prod_matrix5_q = 33'b0;
        endcase
    end

    // i_exitcond13_prod_matrix6_cmp_nsign(LOGICAL,51)@1
    assign i_exitcond13_prod_matrix6_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv11_replace_phi_prod_matrix5_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp2017_prod_matrix8(BLACKBOX,24)@1
    prod_matrix_i_llvm_fpga_ffwd_dest_i1_cmp2017_0 thei_llvm_fpga_ffwd_dest_i1_cmp2017_prod_matrix8 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp2017_prod_matrix8_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_prod_matrix9(LOGICAL,33)@1
    assign i_unnamed_prod_matrix9_q = i_llvm_fpga_ffwd_dest_i1_cmp2017_prod_matrix8_out_dest_data_out_2_0 & i_exitcond13_prod_matrix6_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond28_prod_matrix11(BLACKBOX,29)@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    prod_matrix_i_llvm_fpga_push_i1_notexitcond28_0 thei_llvm_fpga_push_i1_notexitcond28_prod_matrix11 (
        .in_data_in(i_unnamed_prod_matrix9_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going27_prod_matrix2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond28_prod_matrix11_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond28_prod_matrix11_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going27_prod_matrix2(BLACKBOX,26)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    prod_matrix_i_llvm_fpga_pipeline_keep_going27_0 thei_llvm_fpga_pipeline_keep_going27_prod_matrix2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond28_prod_matrix11_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond28_prod_matrix11_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going27_prod_matrix2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going27_prod_matrix2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going27_prod_matrix2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going27_prod_matrix2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,19)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_prod_matrix2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going27_prod_matrix2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_prod_matrix2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going27_prod_matrix2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,36)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going27_prod_matrix2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,45)@1 + 1
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

    // redist0_sync_together43_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together43_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together43_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // valid_fanout_reg1(REG,46)@1 + 1
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

    // valid_fanout_reg2(REG,47)@1 + 1
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

    // c_i32_131(CONSTANT,16)
    assign c_i32_131_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc21_prod_matrix15(ADD,23)@2
    assign i_inc21_prod_matrix15_a = {1'b0, i_llvm_fpga_pop_i32_i_021_pop11_prod_matrix14_out_data_out};
    assign i_inc21_prod_matrix15_b = {1'b0, c_i32_131_q};
    assign i_inc21_prod_matrix15_o = $unsigned(i_inc21_prod_matrix15_a) + $unsigned(i_inc21_prod_matrix15_b);
    assign i_inc21_prod_matrix15_q = i_inc21_prod_matrix15_o[32:0];

    // bgTrunc_i_inc21_prod_matrix15_sel_x(BITSELECT,41)@2
    assign bgTrunc_i_inc21_prod_matrix15_sel_x_b = i_inc21_prod_matrix15_q[31:0];

    // i_llvm_fpga_push_i32_i_021_push11_prod_matrix16(BLACKBOX,30)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    prod_matrix_i_llvm_fpga_push_i32_i_021_push11_0 thei_llvm_fpga_push_i32_i_021_push11_prod_matrix16 (
        .in_data_in(bgTrunc_i_inc21_prod_matrix15_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_i_021_pop11_prod_matrix14_out_feedback_stall_out_11),
        .in_stall_in(GND_q),
        .in_unnamed_prod_matrix18(redist1_i_unnamed_prod_matrix9_q_1_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_i_021_push11_prod_matrix16_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_i_021_push11_prod_matrix16_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_030(CONSTANT,15)
    assign c_i32_030_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_021_pop11_prod_matrix14(BLACKBOX,27)@2
    // out out_feedback_stall_out_11@20000000
    prod_matrix_i_llvm_fpga_pop_i32_i_021_pop11_0 thei_llvm_fpga_pop_i32_i_021_pop11_prod_matrix14 (
        .in_data_in(c_i32_030_q),
        .in_dir(redist0_sync_together43_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_i_021_push11_prod_matrix16_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_i_021_push11_prod_matrix16_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_021_pop11_prod_matrix14_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_i_021_pop11_prod_matrix14_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp26_prod_matrix10(LOGICAL,32)@2
    assign i_notcmp26_prod_matrix10_q = redist1_i_unnamed_prod_matrix9_q_1_q ^ VCC_q;

    // redist1_i_unnamed_prod_matrix9_q_1(DELAY,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_unnamed_prod_matrix9_q_1_q <= '0;
        end
        else
        begin
            redist1_i_unnamed_prod_matrix9_q_1_q <= $unsigned(i_unnamed_prod_matrix9_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,43)@2
    assign out_c0_exi4_0_tpl = GND_q;
    assign out_c0_exi4_1_tpl = redist1_i_unnamed_prod_matrix9_q_1_q;
    assign out_c0_exi4_2_tpl = i_notcmp26_prod_matrix10_q;
    assign out_c0_exi4_3_tpl = i_llvm_fpga_pop_i32_i_021_pop11_prod_matrix14_out_data_out;
    assign out_c0_exi4_4_tpl = redist0_sync_together43_aunroll_x_in_c0_eni1_1_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_prod_matrix1 = GND_q;

endmodule
