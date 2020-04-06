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

// SystemVerilog created from mmc_i_sfc_logic_s_c0_in_while_body_s_c0_enter182_mmc0
// SystemVerilog created on Mon Apr  6 11:17:53 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module mmc_i_sfc_logic_s_c0_in_while_body_s_c0_enter182_mmc0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmc6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmc6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_mmc1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_061_q;
    wire [3:0] c_i4_757_q;
    wire [0:0] i_add2_mmc21_s;
    reg [31:0] i_add2_mmc21_q;
    wire [0:0] i_add_mmc25_s;
    reg [31:0] i_add_mmc25_q;
    wire [3:0] i_cleanups_shl_mmc5_vt_join_q;
    wire [2:0] i_cleanups_shl_mmc5_vt_select_3_b;
    wire [33:0] i_cmp1_mmc18_a;
    wire [33:0] i_cmp1_mmc18_b;
    logic [33:0] i_cmp1_mmc18_o;
    wire [0:0] i_cmp1_mmc18_c;
    wire [0:0] i_cmp_mmc28_q;
    wire [0:0] i_f1_010_replace_phi_mmc17_s;
    reg [31:0] i_f1_010_replace_phi_mmc17_q;
    wire [0:0] i_f2_011_replace_phi_mmc14_s;
    reg [31:0] i_f2_011_replace_phi_mmc14_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp913_mmc30_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a128_mmc15_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a129_mmc20_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_b1310_mmc12_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_b1311_mmc24_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_mmc6_mmc37_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmc6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmc6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmc6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmc6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmc6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_mmc6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_f1_010_pop7_mmc16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_f1_010_pop7_mmc16_out_feedback_stall_out_7;
    wire [31:0] i_llvm_fpga_pop_i32_f2_011_pop6_mmc13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_f2_011_pop6_mmc13_out_feedback_stall_out_6;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop9_mmc2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop9_mmc2_out_feedback_stall_out_9;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop8_mmc7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop8_mmc7_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_mmc11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_mmc11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_mmc33_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_mmc33_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_f1_010_push7_mmc23_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i32_f1_010_push7_mmc23_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_f2_011_push6_mmc27_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i32_f2_011_push6_mmc27_out_feedback_valid_out_6;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push9_mmc36_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push9_mmc36_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push8_mmc9_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push8_mmc9_out_feedback_valid_out_8;
    wire [0:0] i_masked_mmc38_q;
    wire [0:0] i_next_cleanups_mmc35_s;
    reg [3:0] i_next_cleanups_mmc35_q;
    wire [3:0] i_next_initerations_mmc8_vt_join_q;
    wire [2:0] i_next_initerations_mmc8_vt_select_2_b;
    wire [0:0] i_notexit_mmc32_q;
    wire [0:0] i_or_mmc34_q;
    wire [32:0] i_unnamed_mmc22_a;
    wire [32:0] i_unnamed_mmc22_b;
    logic [32:0] i_unnamed_mmc22_o;
    wire [32:0] i_unnamed_mmc22_q;
    wire [32:0] i_unnamed_mmc26_a;
    wire [32:0] i_unnamed_mmc26_b;
    logic [32:0] i_unnamed_mmc26_o;
    wire [32:0] i_unnamed_mmc26_q;
    wire [0:0] i_unnamed_mmc31_q;
    wire [0:0] i_xor_mmc4_q;
    wire [31:0] bgTrunc_i_unnamed_mmc22_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_mmc26_sel_x_b;
    wire [0:0] i_first_cleanup_mmc3_sel_x_b;
    wire [0:0] i_last_initeration_mmc10_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid106_i_cleanups_shl_mmc0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid106_i_cleanups_shl_mmc0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid107_i_cleanups_shl_mmc0_shift_x_q;
    wire [0:0] leftShiftStage0_uid109_i_cleanups_shl_mmc0_shift_x_s;
    reg [3:0] leftShiftStage0_uid109_i_cleanups_shl_mmc0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid113_i_next_initerations_mmc0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid115_i_next_initerations_mmc0_shift_x_q;
    wire [0:0] rightShiftStage0_uid117_i_next_initerations_mmc0_shift_x_s;
    reg [3:0] rightShiftStage0_uid117_i_next_initerations_mmc0_shift_x_q;
    reg [0:0] redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together78_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist2_bgTrunc_i_unnamed_mmc26_sel_x_b_1_q;
    reg [31:0] redist3_bgTrunc_i_unnamed_mmc22_sel_x_b_1_q;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going_mmc6_out_data_out_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together78_aunroll_x_in_i_valid_1(DELAY,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together78_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together78_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist4_i_llvm_fpga_pipeline_keep_going_mmc6_out_data_out_1(DELAY,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pipeline_keep_going_mmc6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pipeline_keep_going_mmc6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_mmc6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid106_i_cleanups_shl_mmc0_shift_x(BITSELECT,105)@2
    assign leftShiftStage0Idx1Rng1_uid106_i_cleanups_shl_mmc0_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop9_mmc2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid106_i_cleanups_shl_mmc0_shift_x_b = leftShiftStage0Idx1Rng1_uid106_i_cleanups_shl_mmc0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid107_i_cleanups_shl_mmc0_shift_x(BITJOIN,106)@2
    assign leftShiftStage0Idx1_uid107_i_cleanups_shl_mmc0_shift_x_q = {leftShiftStage0Idx1Rng1_uid106_i_cleanups_shl_mmc0_shift_x_b, GND_q};

    // leftShiftStage0_uid109_i_cleanups_shl_mmc0_shift_x(MUX,108)@2
    assign leftShiftStage0_uid109_i_cleanups_shl_mmc0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid109_i_cleanups_shl_mmc0_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop9_mmc2_out_data_out or leftShiftStage0Idx1_uid107_i_cleanups_shl_mmc0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid109_i_cleanups_shl_mmc0_shift_x_s)
            1'b0 : leftShiftStage0_uid109_i_cleanups_shl_mmc0_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop9_mmc2_out_data_out;
            1'b1 : leftShiftStage0_uid109_i_cleanups_shl_mmc0_shift_x_q = leftShiftStage0Idx1_uid107_i_cleanups_shl_mmc0_shift_x_q;
            default : leftShiftStage0_uid109_i_cleanups_shl_mmc0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_mmc5_vt_select_3(BITSELECT,31)@2
    assign i_cleanups_shl_mmc5_vt_select_3_b = leftShiftStage0_uid109_i_cleanups_shl_mmc0_shift_x_q[3:1];

    // i_cleanups_shl_mmc5_vt_join(BITJOIN,30)@2
    assign i_cleanups_shl_mmc5_vt_join_q = {i_cleanups_shl_mmc5_vt_select_3_b, GND_q};

    // i_xor_mmc4(LOGICAL,65)@2
    assign i_xor_mmc4_q = i_first_cleanup_mmc3_sel_x_b ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i32_b1310_mmc12(BLACKBOX,41)@1
    mmc_i_llvm_fpga_ffwd_dest_i32_b1310_0 thei_llvm_fpga_ffwd_dest_i32_b1310_mmc12 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_b1310_mmc12_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_f2_011_push6_mmc27(BLACKBOX,52)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    mmc_i_llvm_fpga_push_i32_f2_011_push6_0 thei_llvm_fpga_push_i32_f2_011_push6_mmc27 (
        .in_data_in(redist2_bgTrunc_i_unnamed_mmc26_sel_x_b_1_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i32_f2_011_pop6_mmc13_out_feedback_stall_out_6),
        .in_keep_going(redist4_i_llvm_fpga_pipeline_keep_going_mmc6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i32_f2_011_push6_mmc27_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i32_f2_011_push6_mmc27_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_061(CONSTANT,22)
    assign c_i32_061_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_f2_011_pop6_mmc13(BLACKBOX,46)@1
    // out out_feedback_stall_out_6@20000000
    mmc_i_llvm_fpga_pop_i32_f2_011_pop6_0 thei_llvm_fpga_pop_i32_f2_011_pop6_mmc13 (
        .in_data_in(c_i32_061_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_6(i_llvm_fpga_push_i32_f2_011_push6_mmc27_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i32_f2_011_push6_mmc27_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i32_f2_011_pop6_mmc13_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i32_f2_011_pop6_mmc13_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_f2_011_replace_phi_mmc14(MUX,35)@1
    assign i_f2_011_replace_phi_mmc14_s = in_c0_eni1_1_tpl;
    always @(i_f2_011_replace_phi_mmc14_s or i_llvm_fpga_pop_i32_f2_011_pop6_mmc13_out_data_out or i_llvm_fpga_ffwd_dest_i32_b1310_mmc12_out_dest_data_out_1_0)
    begin
        unique case (i_f2_011_replace_phi_mmc14_s)
            1'b0 : i_f2_011_replace_phi_mmc14_q = i_llvm_fpga_pop_i32_f2_011_pop6_mmc13_out_data_out;
            1'b1 : i_f2_011_replace_phi_mmc14_q = i_llvm_fpga_ffwd_dest_i32_b1310_mmc12_out_dest_data_out_1_0;
            default : i_f2_011_replace_phi_mmc14_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_dest_i32_b1311_mmc24(BLACKBOX,42)@1
    mmc_i_llvm_fpga_ffwd_dest_i32_b1311_0 thei_llvm_fpga_ffwd_dest_i32_b1311_mmc24 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_b1311_mmc24_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_a128_mmc15(BLACKBOX,39)@1
    mmc_i_llvm_fpga_ffwd_dest_i32_a128_0 thei_llvm_fpga_ffwd_dest_i32_a128_mmc15 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i32_a128_mmc15_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_f1_010_push7_mmc23(BLACKBOX,51)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    mmc_i_llvm_fpga_push_i32_f1_010_push7_0 thei_llvm_fpga_push_i32_f1_010_push7_mmc23 (
        .in_data_in(redist3_bgTrunc_i_unnamed_mmc22_sel_x_b_1_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_f1_010_pop7_mmc16_out_feedback_stall_out_7),
        .in_keep_going(redist4_i_llvm_fpga_pipeline_keep_going_mmc6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i32_f1_010_push7_mmc23_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i32_f1_010_push7_mmc23_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_f1_010_pop7_mmc16(BLACKBOX,45)@1
    // out out_feedback_stall_out_7@20000000
    mmc_i_llvm_fpga_pop_i32_f1_010_pop7_0 thei_llvm_fpga_pop_i32_f1_010_pop7_mmc16 (
        .in_data_in(c_i32_061_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_7(i_llvm_fpga_push_i32_f1_010_push7_mmc23_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i32_f1_010_push7_mmc23_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i32_f1_010_pop7_mmc16_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i32_f1_010_pop7_mmc16_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_f1_010_replace_phi_mmc17(MUX,34)@1
    assign i_f1_010_replace_phi_mmc17_s = in_c0_eni1_1_tpl;
    always @(i_f1_010_replace_phi_mmc17_s or i_llvm_fpga_pop_i32_f1_010_pop7_mmc16_out_data_out or i_llvm_fpga_ffwd_dest_i32_a128_mmc15_out_dest_data_out_0_0)
    begin
        unique case (i_f1_010_replace_phi_mmc17_s)
            1'b0 : i_f1_010_replace_phi_mmc17_q = i_llvm_fpga_pop_i32_f1_010_pop7_mmc16_out_data_out;
            1'b1 : i_f1_010_replace_phi_mmc17_q = i_llvm_fpga_ffwd_dest_i32_a128_mmc15_out_dest_data_out_0_0;
            default : i_f1_010_replace_phi_mmc17_q = 32'b0;
        endcase
    end

    // i_cmp1_mmc18(COMPARE,32)@1
    assign i_cmp1_mmc18_a = $unsigned({{2{i_f2_011_replace_phi_mmc14_q[31]}}, i_f2_011_replace_phi_mmc14_q});
    assign i_cmp1_mmc18_b = $unsigned({{2{i_f1_010_replace_phi_mmc17_q[31]}}, i_f1_010_replace_phi_mmc17_q});
    assign i_cmp1_mmc18_o = $unsigned($signed(i_cmp1_mmc18_a) - $signed(i_cmp1_mmc18_b));
    assign i_cmp1_mmc18_c[0] = i_cmp1_mmc18_o[33];

    // i_add_mmc25(MUX,28)@1
    assign i_add_mmc25_s = i_cmp1_mmc18_c;
    always @(i_add_mmc25_s or c_i32_061_q or i_llvm_fpga_ffwd_dest_i32_b1311_mmc24_out_dest_data_out_1_0)
    begin
        unique case (i_add_mmc25_s)
            1'b0 : i_add_mmc25_q = c_i32_061_q;
            1'b1 : i_add_mmc25_q = i_llvm_fpga_ffwd_dest_i32_b1311_mmc24_out_dest_data_out_1_0;
            default : i_add_mmc25_q = 32'b0;
        endcase
    end

    // i_unnamed_mmc26(ADD,63)@1
    assign i_unnamed_mmc26_a = {1'b0, i_add_mmc25_q};
    assign i_unnamed_mmc26_b = {1'b0, i_f2_011_replace_phi_mmc14_q};
    assign i_unnamed_mmc26_o = $unsigned(i_unnamed_mmc26_a) + $unsigned(i_unnamed_mmc26_b);
    assign i_unnamed_mmc26_q = i_unnamed_mmc26_o[32:0];

    // bgTrunc_i_unnamed_mmc26_sel_x(BITSELECT,78)@1
    assign bgTrunc_i_unnamed_mmc26_sel_x_b = i_unnamed_mmc26_q[31:0];

    // redist2_bgTrunc_i_unnamed_mmc26_sel_x_b_1(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_bgTrunc_i_unnamed_mmc26_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist2_bgTrunc_i_unnamed_mmc26_sel_x_b_1_q <= $unsigned(bgTrunc_i_unnamed_mmc26_sel_x_b);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_a129_mmc20(BLACKBOX,40)@1
    mmc_i_llvm_fpga_ffwd_dest_i32_a129_0 thei_llvm_fpga_ffwd_dest_i32_a129_mmc20 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i32_a129_mmc20_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add2_mmc21(MUX,27)@1
    assign i_add2_mmc21_s = i_cmp1_mmc18_c;
    always @(i_add2_mmc21_s or i_llvm_fpga_ffwd_dest_i32_a129_mmc20_out_dest_data_out_0_0 or c_i32_061_q)
    begin
        unique case (i_add2_mmc21_s)
            1'b0 : i_add2_mmc21_q = i_llvm_fpga_ffwd_dest_i32_a129_mmc20_out_dest_data_out_0_0;
            1'b1 : i_add2_mmc21_q = c_i32_061_q;
            default : i_add2_mmc21_q = 32'b0;
        endcase
    end

    // i_unnamed_mmc22(ADD,62)@1
    assign i_unnamed_mmc22_a = {1'b0, i_add2_mmc21_q};
    assign i_unnamed_mmc22_b = {1'b0, i_f1_010_replace_phi_mmc17_q};
    assign i_unnamed_mmc22_o = $unsigned(i_unnamed_mmc22_a) + $unsigned(i_unnamed_mmc22_b);
    assign i_unnamed_mmc22_q = i_unnamed_mmc22_o[32:0];

    // bgTrunc_i_unnamed_mmc22_sel_x(BITSELECT,77)@1
    assign bgTrunc_i_unnamed_mmc22_sel_x_b = i_unnamed_mmc22_q[31:0];

    // redist3_bgTrunc_i_unnamed_mmc22_sel_x_b_1(DELAY,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_unnamed_mmc22_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist3_bgTrunc_i_unnamed_mmc22_sel_x_b_1_q <= $unsigned(bgTrunc_i_unnamed_mmc22_sel_x_b);
        end
    end

    // i_cmp_mmc28(LOGICAL,33)@2
    assign i_cmp_mmc28_q = $unsigned(redist3_bgTrunc_i_unnamed_mmc22_sel_x_b_1_q == redist2_bgTrunc_i_unnamed_mmc26_sel_x_b_1_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_ffwd_dest_i1_cmp913_mmc30(BLACKBOX,38)@2
    mmc_i_llvm_fpga_ffwd_dest_i1_cmp913_0 thei_llvm_fpga_ffwd_dest_i1_cmp913_mmc30 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp913_mmc30_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_mmc31(LOGICAL,64)@2
    assign i_unnamed_mmc31_q = i_llvm_fpga_ffwd_dest_i1_cmp913_mmc30_out_dest_data_out_2_0 | i_cmp_mmc28_q;

    // i_or_mmc34(LOGICAL,61)@2
    assign i_or_mmc34_q = i_unnamed_mmc31_q | i_xor_mmc4_q;

    // i_next_cleanups_mmc35(MUX,56)@2
    assign i_next_cleanups_mmc35_s = i_or_mmc34_q;
    always @(i_next_cleanups_mmc35_s or i_llvm_fpga_pop_i4_cleanups_pop9_mmc2_out_data_out or i_cleanups_shl_mmc5_vt_join_q)
    begin
        unique case (i_next_cleanups_mmc35_s)
            1'b0 : i_next_cleanups_mmc35_q = i_llvm_fpga_pop_i4_cleanups_pop9_mmc2_out_data_out;
            1'b1 : i_next_cleanups_mmc35_q = i_cleanups_shl_mmc5_vt_join_q;
            default : i_next_cleanups_mmc35_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push9_mmc36(BLACKBOX,53)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    mmc_i_llvm_fpga_push_i4_cleanups_push9_0 thei_llvm_fpga_push_i4_cleanups_push9_mmc36 (
        .in_data_in(i_next_cleanups_mmc35_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_cleanups_pop9_mmc2_out_feedback_stall_out_9),
        .in_keep_going(redist4_i_llvm_fpga_pipeline_keep_going_mmc6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i4_cleanups_push9_mmc36_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i4_cleanups_push9_mmc36_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,118)
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

    // c_i4_757(CONSTANT,25)
    assign c_i4_757_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop9_mmc2(BLACKBOX,47)@2
    // out out_feedback_stall_out_9@20000000
    mmc_i_llvm_fpga_pop_i4_cleanups_pop9_0 thei_llvm_fpga_pop_i4_cleanups_pop9_mmc2 (
        .in_data_in(c_i4_757_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i4_cleanups_push9_mmc36_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i4_cleanups_push9_mmc36_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop9_mmc2_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i4_cleanups_pop9_mmc2_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_mmc3_sel_x(BITSELECT,83)@2
    assign i_first_cleanup_mmc3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop9_mmc2_out_data_out[0:0];

    // i_notexit_mmc32(LOGICAL,60)@2
    assign i_notexit_mmc32_q = i_unnamed_mmc31_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond_mmc33(BLACKBOX,50)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    mmc_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_mmc33 (
        .in_data_in(i_notexit_mmc32_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_mmc6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_mmc3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together78_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_mmc33_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_mmc33_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,94)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid113_i_next_initerations_mmc0_shift_x(BITSELECT,112)@2
    assign rightShiftStage0Idx1Rng1_uid113_i_next_initerations_mmc0_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop8_mmc7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid115_i_next_initerations_mmc0_shift_x(BITJOIN,114)@2
    assign rightShiftStage0Idx1_uid115_i_next_initerations_mmc0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid113_i_next_initerations_mmc0_shift_x_b};

    // valid_fanout_reg1(REG,92)@1 + 1
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

    // valid_fanout_reg2(REG,93)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations_push8_mmc9(BLACKBOX,54)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    mmc_i_llvm_fpga_push_i4_initerations_push8_0 thei_llvm_fpga_push_i4_initerations_push8_mmc9 (
        .in_data_in(i_next_initerations_mmc8_vt_join_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i4_initerations_pop8_mmc7_out_feedback_stall_out_8),
        .in_keep_going(redist4_i_llvm_fpga_pipeline_keep_going_mmc6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i4_initerations_push8_mmc9_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i4_initerations_push8_mmc9_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop8_mmc7(BLACKBOX,48)@2
    // out out_feedback_stall_out_8@20000000
    mmc_i_llvm_fpga_pop_i4_initerations_pop8_0 thei_llvm_fpga_pop_i4_initerations_pop8_mmc7 (
        .in_data_in(c_i4_757_q),
        .in_dir(redist0_sync_together78_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_8(i_llvm_fpga_push_i4_initerations_push8_mmc9_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i4_initerations_push8_mmc9_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop8_mmc7_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i4_initerations_pop8_mmc7_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid117_i_next_initerations_mmc0_shift_x(MUX,116)@2
    assign rightShiftStage0_uid117_i_next_initerations_mmc0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid117_i_next_initerations_mmc0_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop8_mmc7_out_data_out or rightShiftStage0Idx1_uid115_i_next_initerations_mmc0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid117_i_next_initerations_mmc0_shift_x_s)
            1'b0 : rightShiftStage0_uid117_i_next_initerations_mmc0_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop8_mmc7_out_data_out;
            1'b1 : rightShiftStage0_uid117_i_next_initerations_mmc0_shift_x_q = rightShiftStage0Idx1_uid115_i_next_initerations_mmc0_shift_x_q;
            default : rightShiftStage0_uid117_i_next_initerations_mmc0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_mmc8_vt_select_2(BITSELECT,59)@2
    assign i_next_initerations_mmc8_vt_select_2_b = rightShiftStage0_uid117_i_next_initerations_mmc0_shift_x_q[2:0];

    // i_next_initerations_mmc8_vt_join(BITJOIN,58)@2
    assign i_next_initerations_mmc8_vt_join_q = {GND_q, i_next_initerations_mmc8_vt_select_2_b};

    // i_last_initeration_mmc10_sel_x(BITSELECT,84)@2
    assign i_last_initeration_mmc10_sel_x_b = i_next_initerations_mmc8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_mmc11(BLACKBOX,49)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    mmc_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_mmc11 (
        .in_data_in(i_last_initeration_mmc10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_mmc6_out_initeration_stall_out),
        .in_keep_going(redist4_i_llvm_fpga_pipeline_keep_going_mmc6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_mmc11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_mmc11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_mmc6(BLACKBOX,44)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    mmc_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_mmc6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_mmc11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_mmc11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_mmc33_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_mmc33_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_mmc6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_mmc6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_mmc6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_mmc6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_mmc6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_mmc6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,26)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmc6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_mmc6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_mmc6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_mmc6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,69)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_mmc6_out_pipeline_valid_out;

    // valid_fanout_reg4(REG,95)@1 + 1
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

    // i_llvm_fpga_ffwd_source_i32_unnamed_mmc6_mmc37(BLACKBOX,43)@2
    // out out_intel_reserved_ffwd_3_0@20000000
    mmc_i_llvm_fpga_ffwd_source_i32_unnamed_6_mmc0 thei_llvm_fpga_ffwd_source_i32_unnamed_mmc6_mmc37 (
        .in_predicate_in(i_xor_mmc4_q),
        .in_src_data_in_3_0(redist3_bgTrunc_i_unnamed_mmc22_sel_x_b_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_mmc6_mmc37_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,73)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_mmc6_mmc37_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg0(REG,91)@1 + 1
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

    // i_masked_mmc38(LOGICAL,55)@2
    assign i_masked_mmc38_q = i_unnamed_mmc31_q & i_first_cleanup_mmc3_sel_x_b;

    // sync_out_aunroll_x(GPOUT,89)@2
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist4_i_llvm_fpga_pipeline_keep_going_mmc6_out_data_out_1_q;
    assign out_c0_exi2_2_tpl = i_masked_mmc38_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_mmc1 = GND_q;

endmodule
