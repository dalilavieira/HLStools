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

// SystemVerilog created from euler_i_sfc_logic_s_c0_in_for_body_i_s_c0_enter478_euler0
// SystemVerilog created on Mon Apr  6 12:54:32 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_i_sfc_logic_s_c0_in_for_body_i_s_c0_enter478_euler0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    output wire [0:0] out_c0_exi7_0_tpl,
    output wire [0:0] out_c0_exi7_1_tpl,
    output wire [63:0] out_c0_exi7_2_tpl,
    output wire [0:0] out_c0_exi7_3_tpl,
    output wire [0:0] out_c0_exi7_4_tpl,
    output wire [0:0] out_c0_exi7_5_tpl,
    output wire [0:0] out_c0_exi7_6_tpl,
    output wire [0:0] out_c0_exi7_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_euler1,
    input wire [0:0] in_c0_eni6_0_tpl,
    input wire [0:0] in_c0_eni6_1_tpl,
    input wire [32:0] in_c0_eni6_2_tpl,
    input wire [0:0] in_c0_eni6_3_tpl,
    input wire [0:0] in_c0_eni6_4_tpl,
    input wire [0:0] in_c0_eni6_5_tpl,
    input wire [0:0] in_c0_eni6_6_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_157_q;
    wire [31:0] c_i32_159_q;
    wire [32:0] c_i33_162_q;
    wire [63:0] c_i64_160_q;
    wire [1:0] i_cleanups_shl_euler5_vt_join_q;
    wire [0:0] i_cleanups_shl_euler5_vt_select_1_b;
    wire [31:0] i_conv_i_euler9_vt_select_31_b;
    wire [33:0] i_fpga_indvars_iv_next_euler18_a;
    wire [33:0] i_fpga_indvars_iv_next_euler18_b;
    logic [33:0] i_fpga_indvars_iv_next_euler18_o;
    wire [33:0] i_fpga_indvars_iv_next_euler18_q;
    wire [32:0] i_inc_i_euler13_a;
    wire [32:0] i_inc_i_euler13_b;
    logic [32:0] i_inc_i_euler13_o;
    wire [32:0] i_inc_i_euler13_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp1121_euler20_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_euler6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_euler6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_euler6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_euler6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_euler6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_euler6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i1_pop16_euler30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop16_euler30_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i1_pop17_euler32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop17_euler32_out_feedback_stall_out_17;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop14_euler2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop14_euler2_out_feedback_stall_out_14;
    wire [31:0] i_llvm_fpga_pop_i32_i_0_i10_pop12_euler8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_0_i10_pop12_euler8_out_feedback_stall_out_12;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_feedback_stall_out_11;
    wire [63:0] i_llvm_fpga_pop_i64_y_0_i9_pop13_euler10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_y_0_i9_pop13_euler10_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_push_i1_forked33_push15_euler29_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i1_forked33_push15_euler29_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_euler7_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_euler7_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2534_push18_euler35_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2534_push18_euler35_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_euler23_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_euler23_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_push16_euler31_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_push16_euler31_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_push17_euler33_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_push17_euler33_out_feedback_valid_out_17;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push14_euler26_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push14_euler26_out_feedback_valid_out_14;
    wire [31:0] i_llvm_fpga_push_i32_i_0_i10_push12_euler14_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i32_i_0_i10_push12_euler14_out_feedback_valid_out_12;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push11_euler19_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push11_euler19_out_feedback_valid_out_11;
    wire [63:0] i_llvm_fpga_push_i64_y_0_i9_push13_euler12_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i64_y_0_i9_push13_euler12_out_feedback_valid_out_13;
    wire [0:0] i_masked_euler27_qi;
    reg [0:0] i_masked_euler27_q;
    wire [0:0] i_next_cleanups_euler25_s;
    reg [1:0] i_next_cleanups_euler25_q;
    wire [0:0] i_notcmp_euler22_q;
    wire [0:0] i_or_euler24_q;
    wire [0:0] i_unnamed_euler21_q;
    wire [0:0] i_xor_euler4_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_euler18_sel_x_b;
    wire [31:0] bgTrunc_i_inc_i_euler13_sel_x_b;
    wire [63:0] bgTrunc_i_mul_i_euler11_sel_x_b;
    wire [63:0] i_conv_i_euler9_sel_x_b;
    wire [0:0] i_first_cleanup_euler3_sel_x_b;
    wire [127:0] i_mul_i_euler11_extender_x_q;
    wire [31:0] i_mul_i_euler11_multconst_x_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    wire [0:0] i_exitcond_euler16_cmp_nsign_q;
    wire [72:0] i_mul_i_euler11_sums_join_0_q;
    wire [54:0] i_mul_i_euler11_sums_align_1_q;
    wire [54:0] i_mul_i_euler11_sums_align_1_qint;
    wire [40:0] i_mul_i_euler11_sums_align_2_q;
    wire [40:0] i_mul_i_euler11_sums_align_2_qint;
    wire [95:0] i_mul_i_euler11_sums_join_3_q;
    wire [86:0] i_mul_i_euler11_sums_align_4_q;
    wire [86:0] i_mul_i_euler11_sums_align_4_qint;
    wire [96:0] i_mul_i_euler11_sums_result_add_0_0_a;
    wire [96:0] i_mul_i_euler11_sums_result_add_0_0_b;
    logic [96:0] i_mul_i_euler11_sums_result_add_0_0_o;
    wire [96:0] i_mul_i_euler11_sums_result_add_0_0_q;
    wire [97:0] i_mul_i_euler11_sums_result_add_1_0_a;
    wire [97:0] i_mul_i_euler11_sums_result_add_1_0_b;
    logic [97:0] i_mul_i_euler11_sums_result_add_1_0_o;
    wire [97:0] i_mul_i_euler11_sums_result_add_1_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid143_i_cleanups_shl_euler0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid143_i_cleanups_shl_euler0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid144_i_cleanups_shl_euler0_shift_x_q;
    wire [0:0] leftShiftStage0_uid146_i_cleanups_shl_euler0_shift_x_s;
    reg [1:0] leftShiftStage0_uid146_i_cleanups_shl_euler0_shift_x_q;
    wire i_mul_i_euler11_im0_cma_reset;
    wire [13:0] i_mul_i_euler11_im0_cma_a0;
    wire [9:0] i_mul_i_euler11_im0_cma_c0;
    wire [23:0] i_mul_i_euler11_im0_cma_s0;
    wire [23:0] i_mul_i_euler11_im0_cma_qq;
    wire [23:0] i_mul_i_euler11_im0_cma_q;
    wire i_mul_i_euler11_im0_cma_ena0;
    wire i_mul_i_euler11_im0_cma_ena1;
    wire i_mul_i_euler11_im0_cma_ena2;
    wire i_mul_i_euler11_im18_cma_reset;
    wire [17:0] i_mul_i_euler11_im18_cma_a0;
    wire [17:0] i_mul_i_euler11_im18_cma_c0;
    wire [35:0] i_mul_i_euler11_im18_cma_s0;
    wire [35:0] i_mul_i_euler11_im18_cma_qq;
    wire [35:0] i_mul_i_euler11_im18_cma_q;
    wire i_mul_i_euler11_im18_cma_ena0;
    wire i_mul_i_euler11_im18_cma_ena1;
    wire i_mul_i_euler11_im18_cma_ena2;
    wire i_mul_i_euler11_ma3_cma_reset;
    wire [13:0] i_mul_i_euler11_ma3_cma_a0;
    wire [17:0] i_mul_i_euler11_ma3_cma_c0;
    wire [13:0] i_mul_i_euler11_ma3_cma_a1;
    wire [17:0] i_mul_i_euler11_ma3_cma_c1;
    wire [32:0] i_mul_i_euler11_ma3_cma_s0;
    wire [32:0] i_mul_i_euler11_ma3_cma_qq;
    wire [32:0] i_mul_i_euler11_ma3_cma_q;
    wire i_mul_i_euler11_ma3_cma_ena0;
    wire i_mul_i_euler11_ma3_cma_ena1;
    wire i_mul_i_euler11_ma3_cma_ena2;
    wire i_mul_i_euler11_ma8_cma_reset;
    wire [17:0] i_mul_i_euler11_ma8_cma_a0;
    wire [17:0] i_mul_i_euler11_ma8_cma_c0;
    wire [17:0] i_mul_i_euler11_ma8_cma_a1;
    wire [17:0] i_mul_i_euler11_ma8_cma_c1;
    wire [36:0] i_mul_i_euler11_ma8_cma_s0;
    wire [36:0] i_mul_i_euler11_ma8_cma_qq;
    wire [36:0] i_mul_i_euler11_ma8_cma_q;
    wire i_mul_i_euler11_ma8_cma_ena0;
    wire i_mul_i_euler11_ma8_cma_ena1;
    wire i_mul_i_euler11_ma8_cma_ena2;
    wire i_mul_i_euler11_ma13_cma_reset;
    wire [17:0] i_mul_i_euler11_ma13_cma_a0;
    wire [17:0] i_mul_i_euler11_ma13_cma_c0;
    wire [17:0] i_mul_i_euler11_ma13_cma_a1;
    wire [17:0] i_mul_i_euler11_ma13_cma_c1;
    wire [36:0] i_mul_i_euler11_ma13_cma_s0;
    wire [36:0] i_mul_i_euler11_ma13_cma_qq;
    wire [36:0] i_mul_i_euler11_ma13_cma_q;
    wire i_mul_i_euler11_ma13_cma_ena0;
    wire i_mul_i_euler11_ma13_cma_ena1;
    wire i_mul_i_euler11_ma13_cma_ena2;
    wire [13:0] i_mul_i_euler11_bs2_merged_bit_select_b;
    wire [17:0] i_mul_i_euler11_bs2_merged_bit_select_c;
    wire [9:0] i_mul_i_euler11_bs1_merged_bit_select_b;
    wire [17:0] i_mul_i_euler11_bs1_merged_bit_select_c;
    wire [17:0] i_mul_i_euler11_bs1_merged_bit_select_d;
    wire [17:0] i_mul_i_euler11_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together86_aunroll_x_in_c0_eni6_1_tpl_1_q;
    reg [0:0] redist1_sync_together86_aunroll_x_in_c0_eni6_1_tpl_2_q;
    reg [0:0] redist2_sync_together86_aunroll_x_in_c0_eni6_3_tpl_2_q;
    reg [0:0] redist2_sync_together86_aunroll_x_in_c0_eni6_3_tpl_2_delay_0;
    reg [0:0] redist3_sync_together86_aunroll_x_in_c0_eni6_4_tpl_2_q;
    reg [0:0] redist3_sync_together86_aunroll_x_in_c0_eni6_4_tpl_2_delay_0;
    reg [0:0] redist4_sync_together86_aunroll_x_in_c0_eni6_5_tpl_1_q;
    reg [0:0] redist5_sync_together86_aunroll_x_in_c0_eni6_6_tpl_1_q;
    reg [0:0] redist6_sync_together86_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist7_sync_together86_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist8_sync_together86_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist9_sync_together86_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist10_i_masked_euler27_q_3_q;
    reg [0:0] redist10_i_masked_euler27_q_3_delay_0;
    reg [32:0] redist11_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_data_out_2_q;
    reg [32:0] redist11_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_data_out_2_delay_0;
    reg [0:0] redist12_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_3_q;
    reg [0:0] redist12_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_3_delay_0;
    reg [0:0] redist12_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_3_delay_1;
    reg [0:0] redist13_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_4_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_pop16_euler30_out_data_out_3_q;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_pop16_euler30_out_data_out_3_delay_0;
    reg [0:0] redist14_i_llvm_fpga_pop_i1_pop16_euler30_out_data_out_3_delay_1;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_3_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_3_delay_0;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_3_delay_1;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_4_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out_3_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out_3_delay_0;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out_3_delay_1;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_2_q;
    reg [0:0] redist18_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_2_delay_0;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_3_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist6_sync_together86_aunroll_x_in_i_valid_1(DELAY,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together86_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist6_sync_together86_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist7_sync_together86_aunroll_x_in_i_valid_2(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together86_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist7_sync_together86_aunroll_x_in_i_valid_2_q <= $unsigned(redist6_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid143_i_cleanups_shl_euler0_shift_x(BITSELECT,142)@3
    assign leftShiftStage0Idx1Rng1_uid143_i_cleanups_shl_euler0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop14_euler2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid143_i_cleanups_shl_euler0_shift_x_b = leftShiftStage0Idx1Rng1_uid143_i_cleanups_shl_euler0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid144_i_cleanups_shl_euler0_shift_x(BITJOIN,143)@3
    assign leftShiftStage0Idx1_uid144_i_cleanups_shl_euler0_shift_x_q = {leftShiftStage0Idx1Rng1_uid143_i_cleanups_shl_euler0_shift_x_b, GND_q};

    // leftShiftStage0_uid146_i_cleanups_shl_euler0_shift_x(MUX,145)@3
    assign leftShiftStage0_uid146_i_cleanups_shl_euler0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid146_i_cleanups_shl_euler0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop14_euler2_out_data_out or leftShiftStage0Idx1_uid144_i_cleanups_shl_euler0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid146_i_cleanups_shl_euler0_shift_x_s)
            1'b0 : leftShiftStage0_uid146_i_cleanups_shl_euler0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop14_euler2_out_data_out;
            1'b1 : leftShiftStage0_uid146_i_cleanups_shl_euler0_shift_x_q = leftShiftStage0Idx1_uid144_i_cleanups_shl_euler0_shift_x_q;
            default : leftShiftStage0_uid146_i_cleanups_shl_euler0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_euler5_vt_select_1(BITSELECT,33)@3
    assign i_cleanups_shl_euler5_vt_select_1_b = leftShiftStage0_uid146_i_cleanups_shl_euler0_shift_x_q[1:1];

    // i_cleanups_shl_euler5_vt_join(BITJOIN,32)@3
    assign i_cleanups_shl_euler5_vt_join_q = {i_cleanups_shl_euler5_vt_select_1_b, GND_q};

    // i_xor_euler4(LOGICAL,68)@3
    assign i_xor_euler4_q = i_first_cleanup_euler3_sel_x_b ^ VCC_q;

    // i_notcmp_euler22(LOGICAL,65)@3
    assign i_notcmp_euler22_q = i_unnamed_euler21_q ^ VCC_q;

    // i_or_euler24(LOGICAL,66)@3
    assign i_or_euler24_q = i_notcmp_euler22_q | i_xor_euler4_q;

    // i_next_cleanups_euler25(MUX,64)@3
    assign i_next_cleanups_euler25_s = i_or_euler24_q;
    always @(i_next_cleanups_euler25_s or i_llvm_fpga_pop_i2_cleanups_pop14_euler2_out_data_out or i_cleanups_shl_euler5_vt_join_q)
    begin
        unique case (i_next_cleanups_euler25_s)
            1'b0 : i_next_cleanups_euler25_q = i_llvm_fpga_pop_i2_cleanups_pop14_euler2_out_data_out;
            1'b1 : i_next_cleanups_euler25_q = i_cleanups_shl_euler5_vt_join_q;
            default : i_next_cleanups_euler25_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push14_euler26(BLACKBOX,58)@3
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    euler_i_llvm_fpga_push_i2_cleanups_push14_0 thei_llvm_fpga_push_i2_cleanups_push14_euler26 (
        .in_data_in(i_next_cleanups_euler25_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i2_cleanups_pop14_euler2_out_feedback_stall_out_14),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_euler6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together86_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i2_cleanups_push14_euler26_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i2_cleanups_push14_euler26_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_157(CONSTANT,26)
    assign c_i2_157_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop14_euler2(BLACKBOX,48)@3
    // out out_feedback_stall_out_14@20000000
    euler_i_llvm_fpga_pop_i2_cleanups_pop14_0 thei_llvm_fpga_pop_i2_cleanups_pop14_euler2 (
        .in_data_in(c_i2_157_q),
        .in_dir(redist1_sync_together86_aunroll_x_in_c0_eni6_1_tpl_2_q),
        .in_feedback_in_14(i_llvm_fpga_push_i2_cleanups_push14_euler26_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i2_cleanups_push14_euler26_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together86_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop14_euler2_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i2_cleanups_pop14_euler2_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_euler3_sel_x(BITSELECT,83)@3
    assign i_first_cleanup_euler3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop14_euler2_out_data_out[0:0];

    // c_i33_162(CONSTANT,28)
    assign c_i33_162_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_euler18(ADD,40)@3
    assign i_fpga_indvars_iv_next_euler18_a = {1'b0, redist11_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_data_out_2_q};
    assign i_fpga_indvars_iv_next_euler18_b = {1'b0, c_i33_162_q};
    assign i_fpga_indvars_iv_next_euler18_o = $unsigned(i_fpga_indvars_iv_next_euler18_a) + $unsigned(i_fpga_indvars_iv_next_euler18_b);
    assign i_fpga_indvars_iv_next_euler18_q = i_fpga_indvars_iv_next_euler18_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_euler18_sel_x(BITSELECT,74)@3
    assign bgTrunc_i_fpga_indvars_iv_next_euler18_sel_x_b = i_fpga_indvars_iv_next_euler18_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push11_euler19(BLACKBOX,60)@3
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    euler_i_llvm_fpga_push_i33_fpga_indvars_iv_push11_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push11_euler19 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_euler18_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_feedback_stall_out_11),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_euler6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together86_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i33_fpga_indvars_iv_push11_euler19_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i33_fpga_indvars_iv_push11_euler19_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15(BLACKBOX,50)@1
    // out out_feedback_stall_out_11@20000000
    euler_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15 (
        .in_data_in(in_c0_eni6_2_tpl),
        .in_dir(in_c0_eni6_1_tpl),
        .in_feedback_in_11(i_llvm_fpga_push_i33_fpga_indvars_iv_push11_euler19_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i33_fpga_indvars_iv_push11_euler19_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_data_out_2(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_data_out_2_delay_0 <= '0;
            redist11_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_data_out_2_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_data_out);
            redist11_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_data_out_2_q <= redist11_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_data_out_2_delay_0;
        end
    end

    // i_exitcond_euler16_cmp_nsign(LOGICAL,109)@3
    assign i_exitcond_euler16_cmp_nsign_q = $unsigned(~ (redist11_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop11_euler15_out_data_out_2_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp1121_euler20(BLACKBOX,42)@3
    euler_i_llvm_fpga_ffwd_dest_i1_cmp1121_0 thei_llvm_fpga_ffwd_dest_i1_cmp1121_euler20 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together86_aunroll_x_in_i_valid_2_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp1121_euler20_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_euler21(LOGICAL,67)@3
    assign i_unnamed_euler21_q = i_llvm_fpga_ffwd_dest_i1_cmp1121_euler20_out_dest_data_out_0_0 & i_exitcond_euler16_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_euler23(BLACKBOX,55)@3
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    euler_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_euler23 (
        .in_data_in(i_unnamed_euler21_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_euler6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_euler3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together86_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_euler23_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_euler23_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together86_aunroll_x_in_i_valid_3(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together86_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist8_sync_together86_aunroll_x_in_i_valid_3_q <= $unsigned(redist7_sync_together86_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist9_sync_together86_aunroll_x_in_i_valid_4(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together86_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist9_sync_together86_aunroll_x_in_i_valid_4_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg1(REG,89)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist9_sync_together86_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist18_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_2(DELAY,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_2_delay_0 <= '0;
            redist18_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going_euler6_out_data_out);
            redist18_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_2_q <= redist18_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_2_delay_0;
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_3(DELAY,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_3_q <= $unsigned(redist18_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_lastiniteration_euler7(BLACKBOX,53)@6
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    euler_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_euler7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_euler6_out_initeration_stall_out),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_euler7_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_euler7_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together86_aunroll_x_in_c0_eni6_1_tpl_1(DELAY,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together86_aunroll_x_in_c0_eni6_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together86_aunroll_x_in_c0_eni6_1_tpl_1_q <= $unsigned(in_c0_eni6_1_tpl);
        end
    end

    // redist1_sync_together86_aunroll_x_in_c0_eni6_1_tpl_2(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together86_aunroll_x_in_c0_eni6_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together86_aunroll_x_in_c0_eni6_1_tpl_2_q <= $unsigned(redist0_sync_together86_aunroll_x_in_c0_eni6_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_euler6(BLACKBOX,43)@3
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    euler_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_euler6 (
        .in_data_in(redist1_sync_together86_aunroll_x_in_c0_eni6_1_tpl_2_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_euler7_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_euler7_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_euler23_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_euler23_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together86_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_euler6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_euler6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_euler6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_euler6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_euler6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_euler6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,30)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_euler6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_euler6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_euler6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,71)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_euler6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,88)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist9_sync_together86_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg12(REG,100)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,101)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2534_push18_euler35(BLACKBOX,54)@5
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    euler_i_llvm_fpga_push_i1_notcmp2534_push18_0 thei_llvm_fpga_push_i1_notcmp2534_push18_euler35 (
        .in_data_in(redist15_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_3_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_feedback_stall_out_18),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_notcmp2534_push18_euler35_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_notcmp2534_push18_euler35_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together86_aunroll_x_in_c0_eni6_6_tpl_1(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together86_aunroll_x_in_c0_eni6_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together86_aunroll_x_in_c0_eni6_6_tpl_1_q <= $unsigned(in_c0_eni6_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34(BLACKBOX,45)@2
    // out out_feedback_stall_out_18@20000000
    euler_i_llvm_fpga_pop_i1_notcmp2534_pop18_0 thei_llvm_fpga_pop_i1_notcmp2534_pop18_euler34 (
        .in_data_in(redist5_sync_together86_aunroll_x_in_c0_eni6_6_tpl_1_q),
        .in_dir(redist0_sync_together86_aunroll_x_in_c0_eni6_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_notcmp2534_push18_euler35_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_notcmp2534_push18_euler35_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_3(DELAY,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_3_delay_0 <= '0;
            redist15_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_3_delay_1 <= '0;
            redist15_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_3_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out);
            redist15_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_3_delay_1 <= redist15_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_3_delay_0;
            redist15_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_3_q <= redist15_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_3_delay_1;
        end
    end

    // redist16_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_4(DELAY,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_4_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_4_q <= $unsigned(redist15_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_3_q);
        end
    end

    // valid_fanout_reg10(REG,98)@1 + 1
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

    // valid_fanout_reg11(REG,99)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_push17_euler33(BLACKBOX,57)@5
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    euler_i_llvm_fpga_push_i1_push17_0 thei_llvm_fpga_push_i1_push17_euler33 (
        .in_data_in(redist12_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_3_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i1_pop17_euler32_out_feedback_stall_out_17),
        .in_keep_going(redist18_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_push17_euler33_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_push17_euler33_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together86_aunroll_x_in_c0_eni6_5_tpl_1(DELAY,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together86_aunroll_x_in_c0_eni6_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together86_aunroll_x_in_c0_eni6_5_tpl_1_q <= $unsigned(in_c0_eni6_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop17_euler32(BLACKBOX,47)@2
    // out out_feedback_stall_out_17@20000000
    euler_i_llvm_fpga_pop_i1_pop17_0 thei_llvm_fpga_pop_i1_pop17_euler32 (
        .in_data_in(redist4_sync_together86_aunroll_x_in_c0_eni6_5_tpl_1_q),
        .in_dir(redist0_sync_together86_aunroll_x_in_c0_eni6_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i1_push17_euler33_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i1_push17_euler33_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop17_euler32_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_pop17_euler32_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_3(DELAY,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_3_delay_0 <= '0;
            redist12_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_3_delay_1 <= '0;
            redist12_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_3_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop17_euler32_out_data_out);
            redist12_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_3_delay_1 <= redist12_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_3_delay_0;
            redist12_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_3_q <= redist12_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_3_delay_1;
        end
    end

    // redist13_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_4(DELAY,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_4_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_4_q <= $unsigned(redist12_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_3_q);
        end
    end

    // valid_fanout_reg8(REG,96)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist6_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg9(REG,97)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist9_sync_together86_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_push16_euler31(BLACKBOX,56)@6
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    euler_i_llvm_fpga_push_i1_push16_0 thei_llvm_fpga_push_i1_push16_euler31 (
        .in_data_in(redist14_i_llvm_fpga_pop_i1_pop16_euler30_out_data_out_3_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i1_pop16_euler30_out_feedback_stall_out_16),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_push16_euler31_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_push16_euler31_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together86_aunroll_x_in_c0_eni6_4_tpl_2(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together86_aunroll_x_in_c0_eni6_4_tpl_2_delay_0 <= '0;
            redist3_sync_together86_aunroll_x_in_c0_eni6_4_tpl_2_q <= '0;
        end
        else
        begin
            redist3_sync_together86_aunroll_x_in_c0_eni6_4_tpl_2_delay_0 <= $unsigned(in_c0_eni6_4_tpl);
            redist3_sync_together86_aunroll_x_in_c0_eni6_4_tpl_2_q <= redist3_sync_together86_aunroll_x_in_c0_eni6_4_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_pop16_euler30(BLACKBOX,46)@3
    // out out_feedback_stall_out_16@20000000
    euler_i_llvm_fpga_pop_i1_pop16_0 thei_llvm_fpga_pop_i1_pop16_euler30 (
        .in_data_in(redist3_sync_together86_aunroll_x_in_c0_eni6_4_tpl_2_q),
        .in_dir(redist1_sync_together86_aunroll_x_in_c0_eni6_1_tpl_2_q),
        .in_feedback_in_16(i_llvm_fpga_push_i1_push16_euler31_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i1_push16_euler31_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop16_euler30_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_pop16_euler30_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i1_pop16_euler30_out_data_out_3(DELAY,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i1_pop16_euler30_out_data_out_3_delay_0 <= '0;
            redist14_i_llvm_fpga_pop_i1_pop16_euler30_out_data_out_3_delay_1 <= '0;
            redist14_i_llvm_fpga_pop_i1_pop16_euler30_out_data_out_3_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i1_pop16_euler30_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop16_euler30_out_data_out);
            redist14_i_llvm_fpga_pop_i1_pop16_euler30_out_data_out_3_delay_1 <= redist14_i_llvm_fpga_pop_i1_pop16_euler30_out_data_out_3_delay_0;
            redist14_i_llvm_fpga_pop_i1_pop16_euler30_out_data_out_3_q <= redist14_i_llvm_fpga_pop_i1_pop16_euler30_out_data_out_3_delay_1;
        end
    end

    // valid_fanout_reg6(REG,94)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist6_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg7(REG,95)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist9_sync_together86_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_forked33_push15_euler29(BLACKBOX,52)@6
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    euler_i_llvm_fpga_push_i1_forked33_push15_0 thei_llvm_fpga_push_i1_forked33_push15_euler29 (
        .in_data_in(redist17_i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out_3_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_feedback_stall_out_15),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i1_forked33_push15_euler29_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i1_forked33_push15_euler29_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together86_aunroll_x_in_c0_eni6_3_tpl_2(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together86_aunroll_x_in_c0_eni6_3_tpl_2_delay_0 <= '0;
            redist2_sync_together86_aunroll_x_in_c0_eni6_3_tpl_2_q <= '0;
        end
        else
        begin
            redist2_sync_together86_aunroll_x_in_c0_eni6_3_tpl_2_delay_0 <= $unsigned(in_c0_eni6_3_tpl);
            redist2_sync_together86_aunroll_x_in_c0_eni6_3_tpl_2_q <= redist2_sync_together86_aunroll_x_in_c0_eni6_3_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_forked33_pop15_euler28(BLACKBOX,44)@3
    // out out_feedback_stall_out_15@20000000
    euler_i_llvm_fpga_pop_i1_forked33_pop15_0 thei_llvm_fpga_pop_i1_forked33_pop15_euler28 (
        .in_data_in(redist2_sync_together86_aunroll_x_in_c0_eni6_3_tpl_2_q),
        .in_dir(redist1_sync_together86_aunroll_x_in_c0_eni6_1_tpl_2_q),
        .in_feedback_in_15(i_llvm_fpga_push_i1_forked33_push15_euler29_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i1_forked33_push15_euler29_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out_3(DELAY,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out_3_delay_0 <= '0;
            redist17_i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out_3_delay_1 <= '0;
            redist17_i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out_3_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out_3_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out);
            redist17_i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out_3_delay_1 <= redist17_i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out_3_delay_0;
            redist17_i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out_3_q <= redist17_i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out_3_delay_1;
        end
    end

    // i_masked_euler27(LOGICAL,62)@3 + 1
    assign i_masked_euler27_qi = i_notcmp_euler22_q & i_first_cleanup_euler3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_euler27_delay ( .xin(i_masked_euler27_qi), .xout(i_masked_euler27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_i_masked_euler27_q_3(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_masked_euler27_q_3_delay_0 <= '0;
            redist10_i_masked_euler27_q_3_q <= '0;
        end
        else
        begin
            redist10_i_masked_euler27_q_3_delay_0 <= $unsigned(i_masked_euler27_q);
            redist10_i_masked_euler27_q_3_q <= redist10_i_masked_euler27_q_3_delay_0;
        end
    end

    // i_mul_i_euler11_multconst_x(CONSTANT,85)
    assign i_mul_i_euler11_multconst_x_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg2(REG,90)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist6_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg5(REG,93)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist6_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_inc_i_euler13(ADD,41)@3
    assign i_inc_i_euler13_a = {1'b0, i_llvm_fpga_pop_i32_i_0_i10_pop12_euler8_out_data_out};
    assign i_inc_i_euler13_b = {1'b0, c_i32_159_q};
    assign i_inc_i_euler13_o = $unsigned(i_inc_i_euler13_a) + $unsigned(i_inc_i_euler13_b);
    assign i_inc_i_euler13_q = i_inc_i_euler13_o[32:0];

    // bgTrunc_i_inc_i_euler13_sel_x(BITSELECT,75)@3
    assign bgTrunc_i_inc_i_euler13_sel_x_b = i_inc_i_euler13_q[31:0];

    // i_llvm_fpga_push_i32_i_0_i10_push12_euler14(BLACKBOX,59)@3
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    euler_i_llvm_fpga_push_i32_i_0_i10_push12_0 thei_llvm_fpga_push_i32_i_0_i10_push12_euler14 (
        .in_data_in(bgTrunc_i_inc_i_euler13_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i32_i_0_i10_pop12_euler8_out_feedback_stall_out_12),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_euler6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i32_i_0_i10_push12_euler14_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i32_i_0_i10_push12_euler14_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_159(CONSTANT,27)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // i_llvm_fpga_pop_i32_i_0_i10_pop12_euler8(BLACKBOX,49)@3
    // out out_feedback_stall_out_12@20000000
    euler_i_llvm_fpga_pop_i32_i_0_i10_pop12_0 thei_llvm_fpga_pop_i32_i_0_i10_pop12_euler8 (
        .in_data_in(c_i32_159_q),
        .in_dir(redist1_sync_together86_aunroll_x_in_c0_eni6_1_tpl_2_q),
        .in_feedback_in_12(i_llvm_fpga_push_i32_i_0_i10_push12_euler14_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i32_i_0_i10_push12_euler14_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_0_i10_pop12_euler8_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i32_i_0_i10_pop12_euler8_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_conv_i_euler9_sel_x(BITSELECT,82)@3
    assign i_conv_i_euler9_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_0_i10_pop12_euler8_out_data_out[31:0]};

    // i_conv_i_euler9_vt_select_31(BITSELECT,37)@3
    assign i_conv_i_euler9_vt_select_31_b = i_conv_i_euler9_sel_x_b[31:0];

    // i_mul_i_euler11_bs2_merged_bit_select(BITSELECT,152)@3
    assign i_mul_i_euler11_bs2_merged_bit_select_b = i_conv_i_euler9_vt_select_31_b[31:18];
    assign i_mul_i_euler11_bs2_merged_bit_select_c = i_conv_i_euler9_vt_select_31_b[17:0];

    // valid_fanout_reg3(REG,91)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist6_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg4(REG,92)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist9_sync_together86_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i64_y_0_i9_push13_euler12(BLACKBOX,61)@6
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    euler_i_llvm_fpga_push_i64_y_0_i9_push13_0 thei_llvm_fpga_push_i64_y_0_i9_push13_euler12 (
        .in_data_in(bgTrunc_i_mul_i_euler11_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i64_y_0_i9_pop13_euler10_out_feedback_stall_out_13),
        .in_keep_going(redist19_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i64_y_0_i9_push13_euler12_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i64_y_0_i9_push13_euler12_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_160(CONSTANT,29)
    assign c_i64_160_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // i_llvm_fpga_pop_i64_y_0_i9_pop13_euler10(BLACKBOX,51)@3
    // out out_feedback_stall_out_13@20000000
    euler_i_llvm_fpga_pop_i64_y_0_i9_pop13_0 thei_llvm_fpga_pop_i64_y_0_i9_pop13_euler10 (
        .in_data_in(c_i64_160_q),
        .in_dir(redist1_sync_together86_aunroll_x_in_c0_eni6_1_tpl_2_q),
        .in_feedback_in_13(i_llvm_fpga_push_i64_y_0_i9_push13_euler12_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i64_y_0_i9_push13_euler12_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i64_y_0_i9_pop13_euler10_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i64_y_0_i9_pop13_euler10_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i_euler11_bs1_merged_bit_select(BITSELECT,153)@3
    assign i_mul_i_euler11_bs1_merged_bit_select_b = i_llvm_fpga_pop_i64_y_0_i9_pop13_euler10_out_data_out[63:54];
    assign i_mul_i_euler11_bs1_merged_bit_select_c = i_llvm_fpga_pop_i64_y_0_i9_pop13_euler10_out_data_out[53:36];
    assign i_mul_i_euler11_bs1_merged_bit_select_d = i_llvm_fpga_pop_i64_y_0_i9_pop13_euler10_out_data_out[35:18];
    assign i_mul_i_euler11_bs1_merged_bit_select_e = i_llvm_fpga_pop_i64_y_0_i9_pop13_euler10_out_data_out[17:0];

    // i_mul_i_euler11_ma3_cma(CHAINMULTADD,149)@3 + 3
    assign i_mul_i_euler11_ma3_cma_reset = ~ (resetn);
    assign i_mul_i_euler11_ma3_cma_ena0 = 1'b1;
    assign i_mul_i_euler11_ma3_cma_ena1 = i_mul_i_euler11_ma3_cma_ena0;
    assign i_mul_i_euler11_ma3_cma_ena2 = i_mul_i_euler11_ma3_cma_ena0;

    assign i_mul_i_euler11_ma3_cma_a0 = {4'b0000, i_mul_i_euler11_bs1_merged_bit_select_b[9:0]};
    assign i_mul_i_euler11_ma3_cma_c0 = i_mul_i_euler11_bs2_merged_bit_select_c;
    assign i_mul_i_euler11_ma3_cma_a1 = i_mul_i_euler11_bs2_merged_bit_select_b;
    assign i_mul_i_euler11_ma3_cma_c1 = i_mul_i_euler11_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul_i_euler11_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_i_euler11_ma3_cma_ena2, i_mul_i_euler11_ma3_cma_ena1, i_mul_i_euler11_ma3_cma_ena0 }),
        .aclr({ i_mul_i_euler11_ma3_cma_reset, i_mul_i_euler11_ma3_cma_reset }),
        .ay(i_mul_i_euler11_ma3_cma_a1),
        .by(i_mul_i_euler11_ma3_cma_a0),
        .ax(i_mul_i_euler11_ma3_cma_c1),
        .bx(i_mul_i_euler11_ma3_cma_c0),
        .resulta(i_mul_i_euler11_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i_euler11_ma3_cma_delay ( .xin(i_mul_i_euler11_ma3_cma_s0), .xout(i_mul_i_euler11_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i_euler11_ma3_cma_q = $unsigned(i_mul_i_euler11_ma3_cma_qq[32:0]);

    // i_mul_i_euler11_sums_align_4(BITSHIFT,135)@6
    assign i_mul_i_euler11_sums_align_4_qint = { i_mul_i_euler11_ma3_cma_q, 54'b000000000000000000000000000000000000000000000000000000 };
    assign i_mul_i_euler11_sums_align_4_q = i_mul_i_euler11_sums_align_4_qint[86:0];

    // i_mul_i_euler11_im0_cma(CHAINMULTADD,147)@3 + 3
    assign i_mul_i_euler11_im0_cma_reset = ~ (resetn);
    assign i_mul_i_euler11_im0_cma_ena0 = 1'b1;
    assign i_mul_i_euler11_im0_cma_ena1 = i_mul_i_euler11_im0_cma_ena0;
    assign i_mul_i_euler11_im0_cma_ena2 = i_mul_i_euler11_im0_cma_ena0;

    assign i_mul_i_euler11_im0_cma_a0 = i_mul_i_euler11_bs2_merged_bit_select_b;
    assign i_mul_i_euler11_im0_cma_c0 = i_mul_i_euler11_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(10),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(24)
    ) i_mul_i_euler11_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_i_euler11_im0_cma_ena2, i_mul_i_euler11_im0_cma_ena1, i_mul_i_euler11_im0_cma_ena0 }),
        .aclr({ i_mul_i_euler11_im0_cma_reset, i_mul_i_euler11_im0_cma_reset }),
        .ay(i_mul_i_euler11_im0_cma_a0),
        .ax(i_mul_i_euler11_im0_cma_c0),
        .resulta(i_mul_i_euler11_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(24), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i_euler11_im0_cma_delay ( .xin(i_mul_i_euler11_im0_cma_s0), .xout(i_mul_i_euler11_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i_euler11_im0_cma_q = $unsigned(i_mul_i_euler11_im0_cma_qq[23:0]);

    // i_mul_i_euler11_sums_align_2(BITSHIFT,133)@6
    assign i_mul_i_euler11_sums_align_2_qint = { i_mul_i_euler11_im0_cma_q, 17'b00000000000000000 };
    assign i_mul_i_euler11_sums_align_2_q = i_mul_i_euler11_sums_align_2_qint[40:0];

    // i_mul_i_euler11_ma13_cma(CHAINMULTADD,151)@3 + 3
    assign i_mul_i_euler11_ma13_cma_reset = ~ (resetn);
    assign i_mul_i_euler11_ma13_cma_ena0 = 1'b1;
    assign i_mul_i_euler11_ma13_cma_ena1 = i_mul_i_euler11_ma13_cma_ena0;
    assign i_mul_i_euler11_ma13_cma_ena2 = i_mul_i_euler11_ma13_cma_ena0;

    assign i_mul_i_euler11_ma13_cma_a0 = {4'b0000, i_mul_i_euler11_bs2_merged_bit_select_b[13:0]};
    assign i_mul_i_euler11_ma13_cma_c0 = i_mul_i_euler11_bs1_merged_bit_select_e;
    assign i_mul_i_euler11_ma13_cma_a1 = i_mul_i_euler11_bs2_merged_bit_select_c;
    assign i_mul_i_euler11_ma13_cma_c1 = i_mul_i_euler11_bs1_merged_bit_select_d;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .by_clock("0"),
        .by_width(18),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(37)
    ) i_mul_i_euler11_ma13_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_i_euler11_ma13_cma_ena2, i_mul_i_euler11_ma13_cma_ena1, i_mul_i_euler11_ma13_cma_ena0 }),
        .aclr({ i_mul_i_euler11_ma13_cma_reset, i_mul_i_euler11_ma13_cma_reset }),
        .ay(i_mul_i_euler11_ma13_cma_a1),
        .by(i_mul_i_euler11_ma13_cma_a0),
        .ax(i_mul_i_euler11_ma13_cma_c1),
        .bx(i_mul_i_euler11_ma13_cma_c0),
        .resulta(i_mul_i_euler11_ma13_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(37), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i_euler11_ma13_cma_delay ( .xin(i_mul_i_euler11_ma13_cma_s0), .xout(i_mul_i_euler11_ma13_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i_euler11_ma13_cma_q = $unsigned(i_mul_i_euler11_ma13_cma_qq[36:0]);

    // i_mul_i_euler11_sums_align_1(BITSHIFT,132)@6
    assign i_mul_i_euler11_sums_align_1_qint = { i_mul_i_euler11_ma13_cma_q, 18'b000000000000000000 };
    assign i_mul_i_euler11_sums_align_1_q = i_mul_i_euler11_sums_align_1_qint[54:0];

    // i_mul_i_euler11_sums_join_3(BITJOIN,134)@6
    assign i_mul_i_euler11_sums_join_3_q = {i_mul_i_euler11_sums_align_2_q, i_mul_i_euler11_sums_align_1_q};

    // i_mul_i_euler11_ma8_cma(CHAINMULTADD,150)@3 + 3
    assign i_mul_i_euler11_ma8_cma_reset = ~ (resetn);
    assign i_mul_i_euler11_ma8_cma_ena0 = 1'b1;
    assign i_mul_i_euler11_ma8_cma_ena1 = i_mul_i_euler11_ma8_cma_ena0;
    assign i_mul_i_euler11_ma8_cma_ena2 = i_mul_i_euler11_ma8_cma_ena0;

    assign i_mul_i_euler11_ma8_cma_a0 = {4'b0000, i_mul_i_euler11_bs2_merged_bit_select_b[13:0]};
    assign i_mul_i_euler11_ma8_cma_c0 = i_mul_i_euler11_bs1_merged_bit_select_d;
    assign i_mul_i_euler11_ma8_cma_a1 = i_mul_i_euler11_bs2_merged_bit_select_c;
    assign i_mul_i_euler11_ma8_cma_c1 = i_mul_i_euler11_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .by_clock("0"),
        .by_width(18),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(37)
    ) i_mul_i_euler11_ma8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_i_euler11_ma8_cma_ena2, i_mul_i_euler11_ma8_cma_ena1, i_mul_i_euler11_ma8_cma_ena0 }),
        .aclr({ i_mul_i_euler11_ma8_cma_reset, i_mul_i_euler11_ma8_cma_reset }),
        .ay(i_mul_i_euler11_ma8_cma_a1),
        .by(i_mul_i_euler11_ma8_cma_a0),
        .ax(i_mul_i_euler11_ma8_cma_c1),
        .bx(i_mul_i_euler11_ma8_cma_c0),
        .resulta(i_mul_i_euler11_ma8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(37), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i_euler11_ma8_cma_delay ( .xin(i_mul_i_euler11_ma8_cma_s0), .xout(i_mul_i_euler11_ma8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i_euler11_ma8_cma_q = $unsigned(i_mul_i_euler11_ma8_cma_qq[36:0]);

    // i_mul_i_euler11_im18_cma(CHAINMULTADD,148)@3 + 3
    assign i_mul_i_euler11_im18_cma_reset = ~ (resetn);
    assign i_mul_i_euler11_im18_cma_ena0 = 1'b1;
    assign i_mul_i_euler11_im18_cma_ena1 = i_mul_i_euler11_im18_cma_ena0;
    assign i_mul_i_euler11_im18_cma_ena2 = i_mul_i_euler11_im18_cma_ena0;

    assign i_mul_i_euler11_im18_cma_a0 = i_mul_i_euler11_bs1_merged_bit_select_e;
    assign i_mul_i_euler11_im18_cma_c0 = i_mul_i_euler11_bs2_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul_i_euler11_im18_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_i_euler11_im18_cma_ena2, i_mul_i_euler11_im18_cma_ena1, i_mul_i_euler11_im18_cma_ena0 }),
        .aclr({ i_mul_i_euler11_im18_cma_reset, i_mul_i_euler11_im18_cma_reset }),
        .ay(i_mul_i_euler11_im18_cma_a0),
        .ax(i_mul_i_euler11_im18_cma_c0),
        .resulta(i_mul_i_euler11_im18_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i_euler11_im18_cma_delay ( .xin(i_mul_i_euler11_im18_cma_s0), .xout(i_mul_i_euler11_im18_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_i_euler11_im18_cma_q = $unsigned(i_mul_i_euler11_im18_cma_qq[35:0]);

    // i_mul_i_euler11_sums_join_0(BITJOIN,131)@6
    assign i_mul_i_euler11_sums_join_0_q = {i_mul_i_euler11_ma8_cma_q, i_mul_i_euler11_im18_cma_q};

    // i_mul_i_euler11_sums_result_add_0_0(ADD,137)@6
    assign i_mul_i_euler11_sums_result_add_0_0_a = {24'b000000000000000000000000, i_mul_i_euler11_sums_join_0_q};
    assign i_mul_i_euler11_sums_result_add_0_0_b = {1'b0, i_mul_i_euler11_sums_join_3_q};
    assign i_mul_i_euler11_sums_result_add_0_0_o = $unsigned(i_mul_i_euler11_sums_result_add_0_0_a) + $unsigned(i_mul_i_euler11_sums_result_add_0_0_b);
    assign i_mul_i_euler11_sums_result_add_0_0_q = i_mul_i_euler11_sums_result_add_0_0_o[96:0];

    // i_mul_i_euler11_sums_result_add_1_0(ADD,138)@6
    assign i_mul_i_euler11_sums_result_add_1_0_a = {1'b0, i_mul_i_euler11_sums_result_add_0_0_q};
    assign i_mul_i_euler11_sums_result_add_1_0_b = {11'b00000000000, i_mul_i_euler11_sums_align_4_q};
    assign i_mul_i_euler11_sums_result_add_1_0_o = $unsigned(i_mul_i_euler11_sums_result_add_1_0_a) + $unsigned(i_mul_i_euler11_sums_result_add_1_0_b);
    assign i_mul_i_euler11_sums_result_add_1_0_q = i_mul_i_euler11_sums_result_add_1_0_o[97:0];

    // i_mul_i_euler11_extender_x(BITJOIN,84)@6
    assign i_mul_i_euler11_extender_x_q = {i_mul_i_euler11_multconst_x_q, i_mul_i_euler11_sums_result_add_1_0_q[95:0]};

    // bgTrunc_i_mul_i_euler11_sel_x(BITSELECT,76)@6
    assign bgTrunc_i_mul_i_euler11_sel_x_b = i_mul_i_euler11_extender_x_q[63:0];

    // sync_out_aunroll_x(GPOUT,86)@6
    assign out_c0_exi7_0_tpl = GND_q;
    assign out_c0_exi7_1_tpl = redist19_i_llvm_fpga_pipeline_keep_going_euler6_out_data_out_3_q;
    assign out_c0_exi7_2_tpl = bgTrunc_i_mul_i_euler11_sel_x_b;
    assign out_c0_exi7_3_tpl = redist10_i_masked_euler27_q_3_q;
    assign out_c0_exi7_4_tpl = redist17_i_llvm_fpga_pop_i1_forked33_pop15_euler28_out_data_out_3_q;
    assign out_c0_exi7_5_tpl = redist14_i_llvm_fpga_pop_i1_pop16_euler30_out_data_out_3_q;
    assign out_c0_exi7_6_tpl = redist13_i_llvm_fpga_pop_i1_pop17_euler32_out_data_out_4_q;
    assign out_c0_exi7_7_tpl = redist16_i_llvm_fpga_pop_i1_notcmp2534_pop18_euler34_out_data_out_4_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_euler1 = GND_q;

endmodule
