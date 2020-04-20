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

// SystemVerilog created from kmeans_i_sfc_logic_s_c0_in_for_cond37_prA000000Z0_enter20020_kmeans0
// SystemVerilog created on Sun Apr 19 22:13:38 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_i_sfc_logic_s_c0_in_for_cond37_prA000000Z0_enter20020_kmeans0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    output wire [0:0] out_c0_exi12_0_tpl,
    output wire [31:0] out_c0_exi12_1_tpl,
    output wire [15:0] out_c0_exi12_2_tpl,
    output wire [0:0] out_c0_exi12_3_tpl,
    output wire [0:0] out_c0_exi12_4_tpl,
    output wire [0:0] out_c0_exi12_5_tpl,
    output wire [0:0] out_c0_exi12_6_tpl,
    output wire [31:0] out_c0_exi12_7_tpl,
    output wire [0:0] out_c0_exi12_8_tpl,
    output wire [0:0] out_c0_exi12_9_tpl,
    output wire [0:0] out_c0_exi12_10_tpl,
    output wire [31:0] out_c0_exi12_11_tpl,
    output wire [0:0] out_c0_exi12_12_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kmeans1,
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
    wire [15:0] c_i16_042_q;
    wire [15:0] c_i16_143_q;
    wire [31:0] c_i32_041_q;
    wire [33:0] i_cmp34_kmeans10_a;
    wire [33:0] i_cmp34_kmeans10_b;
    logic [33:0] i_cmp34_kmeans10_o;
    wire [0:0] i_cmp34_kmeans10_c;
    wire [31:0] i_conv33_kmeans8_vt_join_q;
    wire [15:0] i_conv33_kmeans8_vt_select_15_b;
    wire [16:0] i_inc61_kmeans7_a;
    wire [16:0] i_inc61_kmeans7_b;
    logic [16:0] i_inc61_kmeans7_o;
    wire [16:0] i_inc61_kmeans7_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp344137_kmeans12_out_dest_data_out_8_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_num_clusters5632_kmeans9_out_dest_data_out_5_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_num_dim5727_kmeans3_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kmeans2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kmeans2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kmeans2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_kmeans2_out_pipeline_valid_out;
    wire [15:0] i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_feedback_stall_out_35;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp46112_pop39_kmeans20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp46112_pop39_kmeans20_out_feedback_stall_out_39;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp51109_pop38_kmeans18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp51109_pop38_kmeans18_out_feedback_stall_out_38;
    wire [31:0] i_llvm_fpga_pop_i32_conv3345_pop34_kmeans4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_conv3345_pop34_kmeans4_out_feedback_stall_out_34;
    wire [31:0] i_llvm_fpga_pop_i32_i27_047_pop32114_pop40_kmeans22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i27_047_pop32114_pop40_kmeans22_out_feedback_stall_out_40;
    wire [15:0] i_llvm_fpga_push_i16_c_044_push35_kmeans14_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i16_c_044_push35_kmeans14_out_feedback_valid_out_35;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46112_push39_kmeans21_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i1_notcmp46112_push39_kmeans21_out_feedback_valid_out_39;
    wire [0:0] i_llvm_fpga_push_i1_notcmp51109_push38_kmeans19_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i1_notcmp51109_push38_kmeans19_out_feedback_valid_out_38;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond44_kmeans17_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond44_kmeans17_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_conv3345_push34_kmeans15_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i32_conv3345_push34_kmeans15_out_feedback_valid_out_34;
    wire [31:0] i_llvm_fpga_push_i32_i27_047_pop32114_push40_kmeans23_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i32_i27_047_pop32114_push40_kmeans23_out_feedback_valid_out_40;
    wire [0:0] i_notcmp41_kmeans16_q;
    wire [0:0] i_unnamed_kmeans13_q;
    wire [15:0] bgTrunc_i_inc61_kmeans7_sel_x_b;
    wire [63:0] bgTrunc_i_mul46_kmeans5_sel_x_in;
    wire [31:0] bgTrunc_i_mul46_kmeans5_sel_x_b;
    wire [31:0] i_conv33_kmeans8_sel_x_b;
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
    wire [63:0] i_mul46_kmeans5_sums_join_0_q;
    wire [50:0] i_mul46_kmeans5_sums_align_1_q;
    wire [50:0] i_mul46_kmeans5_sums_align_1_qint;
    wire [64:0] i_mul46_kmeans5_sums_result_add_0_0_a;
    wire [64:0] i_mul46_kmeans5_sums_result_add_0_0_b;
    logic [64:0] i_mul46_kmeans5_sums_result_add_0_0_o;
    wire [64:0] i_mul46_kmeans5_sums_result_add_0_0_q;
    wire i_mul46_kmeans5_im0_cma_reset;
    wire [13:0] i_mul46_kmeans5_im0_cma_a0;
    wire [13:0] i_mul46_kmeans5_im0_cma_c0;
    wire [27:0] i_mul46_kmeans5_im0_cma_s0;
    wire [27:0] i_mul46_kmeans5_im0_cma_qq;
    wire [27:0] i_mul46_kmeans5_im0_cma_q;
    wire i_mul46_kmeans5_im0_cma_ena0;
    wire i_mul46_kmeans5_im0_cma_ena1;
    wire i_mul46_kmeans5_im0_cma_ena2;
    wire i_mul46_kmeans5_im8_cma_reset;
    wire [17:0] i_mul46_kmeans5_im8_cma_a0;
    wire [17:0] i_mul46_kmeans5_im8_cma_c0;
    wire [35:0] i_mul46_kmeans5_im8_cma_s0;
    wire [35:0] i_mul46_kmeans5_im8_cma_qq;
    wire [35:0] i_mul46_kmeans5_im8_cma_q;
    wire i_mul46_kmeans5_im8_cma_ena0;
    wire i_mul46_kmeans5_im8_cma_ena1;
    wire i_mul46_kmeans5_im8_cma_ena2;
    wire i_mul46_kmeans5_ma3_cma_reset;
    wire [13:0] i_mul46_kmeans5_ma3_cma_a0;
    wire [17:0] i_mul46_kmeans5_ma3_cma_c0;
    wire [13:0] i_mul46_kmeans5_ma3_cma_a1;
    wire [17:0] i_mul46_kmeans5_ma3_cma_c1;
    wire [32:0] i_mul46_kmeans5_ma3_cma_s0;
    wire [32:0] i_mul46_kmeans5_ma3_cma_qq;
    wire [32:0] i_mul46_kmeans5_ma3_cma_q;
    wire i_mul46_kmeans5_ma3_cma_ena0;
    wire i_mul46_kmeans5_ma3_cma_ena1;
    wire i_mul46_kmeans5_ma3_cma_ena2;
    wire [13:0] i_mul46_kmeans5_bs2_merged_bit_select_b;
    wire [17:0] i_mul46_kmeans5_bs2_merged_bit_select_c;
    wire [13:0] i_mul46_kmeans5_bs1_merged_bit_select_b;
    wire [17:0] i_mul46_kmeans5_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together62_aunroll_x_in_c0_eni5_1_tpl_1_q;
    reg [0:0] redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_q;
    reg [0:0] redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_delay_0;
    reg [0:0] redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_delay_1;
    reg [0:0] redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_q;
    reg [0:0] redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_delay_0;
    reg [0:0] redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_delay_1;
    reg [0:0] redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_delay_2;
    reg [0:0] redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_q;
    reg [0:0] redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_delay_0;
    reg [0:0] redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_delay_1;
    reg [0:0] redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_delay_2;
    reg [0:0] redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_q;
    reg [0:0] redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_delay_0;
    reg [0:0] redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_delay_1;
    reg [0:0] redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_delay_2;
    reg [0:0] redist6_sync_together62_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist6_sync_together62_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist6_sync_together62_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist7_i_unnamed_kmeans13_q_1_q;
    reg [0:0] redist8_i_unnamed_kmeans13_q_4_q;
    reg [0:0] redist8_i_unnamed_kmeans13_q_4_delay_0;
    reg [0:0] redist8_i_unnamed_kmeans13_q_4_delay_1;
    reg [31:0] redist10_i_conv33_kmeans8_vt_join_q_1_q;
    wire redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_reset0;
    wire [31:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_ia;
    wire [1:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_aa;
    wire [1:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_ab;
    wire [31:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_iq;
    wire [31:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_q;
    wire [1:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_i;
    (* preserve *) reg redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_eq;
    reg [1:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_wraddr_q;
    wire [1:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_last_q;
    wire [0:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_cmpReg_q;
    wire [0:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_notEnable_q;
    wire [0:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_sticky_ena_q;
    wire [0:0] redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_enaAnd_q;
    reg [15:0] redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_inputreg0_q;
    wire redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_reset0;
    wire [15:0] redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_ia;
    wire [0:0] redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_aa;
    wire [0:0] redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_ab;
    wire [15:0] redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_iq;
    wire [15:0] redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_q;
    wire [0:0] redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_rdcnt_i;
    reg [0:0] redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_cmpReg_q;
    wire [0:0] redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_notEnable_q;
    wire [0:0] redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_sticky_ena_q;
    wire [0:0] redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_enaAnd_q;


    // i_llvm_fpga_ffwd_dest_i32_num_clusters5632_kmeans9(BLACKBOX,33)@1
    kmeans_i_llvm_fpga_ffwd_dest_i32_num_clusters5632_0 thei_llvm_fpga_ffwd_dest_i32_num_clusters5632_kmeans9 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i32_num_clusters5632_kmeans9_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i16_042(CONSTANT,4)
    assign c_i16_042_q = $unsigned(16'b0000000000000000);

    // c_i16_143(CONSTANT,5)
    assign c_i16_143_q = $unsigned(16'b0000000000000001);

    // i_llvm_fpga_push_i16_c_044_push35_kmeans14(BLACKBOX,41)@1
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    kmeans_i_llvm_fpga_push_i16_c_044_push35_0 thei_llvm_fpga_push_i16_c_044_push35_kmeans14 (
        .in_data_in(bgTrunc_i_inc61_kmeans7_sel_x_b),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_unnamed_kmeans27(i_unnamed_kmeans13_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i16_c_044_push35_kmeans14_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i16_c_044_push35_kmeans14_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_c_044_pop35_kmeans6(BLACKBOX,36)@1
    // out out_feedback_stall_out_35@20000000
    kmeans_i_llvm_fpga_pop_i16_c_044_pop35_0 thei_llvm_fpga_pop_i16_c_044_pop35_kmeans6 (
        .in_data_in(c_i16_042_q),
        .in_dir(in_c0_eni5_1_tpl),
        .in_feedback_in_35(i_llvm_fpga_push_i16_c_044_push35_kmeans14_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i16_c_044_push35_kmeans14_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_inc61_kmeans7(ADD,31)@1
    assign i_inc61_kmeans7_a = {1'b0, i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out};
    assign i_inc61_kmeans7_b = {1'b0, c_i16_143_q};
    assign i_inc61_kmeans7_o = $unsigned(i_inc61_kmeans7_a) + $unsigned(i_inc61_kmeans7_b);
    assign i_inc61_kmeans7_q = i_inc61_kmeans7_o[16:0];

    // bgTrunc_i_inc61_kmeans7_sel_x(BITSELECT,58)@1
    assign bgTrunc_i_inc61_kmeans7_sel_x_b = i_inc61_kmeans7_q[15:0];

    // i_conv33_kmeans8_sel_x(BITSELECT,60)@1
    assign i_conv33_kmeans8_sel_x_b = {16'b0000000000000000, bgTrunc_i_inc61_kmeans7_sel_x_b[15:0]};

    // i_conv33_kmeans8_vt_select_15(BITSELECT,30)@1
    assign i_conv33_kmeans8_vt_select_15_b = i_conv33_kmeans8_sel_x_b[15:0];

    // i_conv33_kmeans8_vt_join(BITJOIN,29)@1
    assign i_conv33_kmeans8_vt_join_q = {c_i16_042_q, i_conv33_kmeans8_vt_select_15_b};

    // i_cmp34_kmeans10(COMPARE,26)@1
    assign i_cmp34_kmeans10_a = $unsigned({{2{i_conv33_kmeans8_vt_join_q[31]}}, i_conv33_kmeans8_vt_join_q});
    assign i_cmp34_kmeans10_b = $unsigned({{2{i_llvm_fpga_ffwd_dest_i32_num_clusters5632_kmeans9_out_dest_data_out_5_0[31]}}, i_llvm_fpga_ffwd_dest_i32_num_clusters5632_kmeans9_out_dest_data_out_5_0});
    assign i_cmp34_kmeans10_o = $unsigned($signed(i_cmp34_kmeans10_a) - $signed(i_cmp34_kmeans10_b));
    assign i_cmp34_kmeans10_c[0] = i_cmp34_kmeans10_o[33];

    // i_llvm_fpga_ffwd_dest_i1_cmp344137_kmeans12(BLACKBOX,32)@1
    kmeans_i_llvm_fpga_ffwd_dest_i1_cmp344137_0 thei_llvm_fpga_ffwd_dest_i1_cmp344137_kmeans12 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_cmp344137_kmeans12_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_kmeans13(LOGICAL,49)@1
    assign i_unnamed_kmeans13_q = i_llvm_fpga_ffwd_dest_i1_cmp344137_kmeans12_out_dest_data_out_8_0 & i_cmp34_kmeans10_c;

    // i_llvm_fpga_push_i1_notexitcond44_kmeans17(BLACKBOX,44)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    kmeans_i_llvm_fpga_push_i1_notexitcond44_0 thei_llvm_fpga_push_i1_notexitcond44_kmeans17 (
        .in_data_in(i_unnamed_kmeans13_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going43_kmeans2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond44_kmeans17_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond44_kmeans17_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going43_kmeans2(BLACKBOX,35)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kmeans_i_llvm_fpga_pipeline_keep_going43_0 thei_llvm_fpga_pipeline_keep_going43_kmeans2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond44_kmeans17_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond44_kmeans17_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going43_kmeans2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going43_kmeans2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going43_kmeans2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going43_kmeans2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,25)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going43_kmeans2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going43_kmeans2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going43_kmeans2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,52)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going43_kmeans2_out_pipeline_valid_out;

    // redist6_sync_together62_aunroll_x_in_i_valid_3(DELAY,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together62_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist6_sync_together62_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist6_sync_together62_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist6_sync_together62_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist6_sync_together62_aunroll_x_in_i_valid_3_delay_1 <= redist6_sync_together62_aunroll_x_in_i_valid_3_delay_0;
            redist6_sync_together62_aunroll_x_in_i_valid_3_q <= redist6_sync_together62_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg0(REG,63)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together62_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4(DELAY,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_delay_0 <= '0;
            redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_delay_1 <= '0;
            redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_delay_2 <= '0;
            redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_q <= '0;
        end
        else
        begin
            redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_delay_0 <= $unsigned(in_c0_eni5_2_tpl);
            redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_delay_1 <= redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_delay_0;
            redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_delay_2 <= redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_delay_1;
            redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_q <= redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_delay_2;
        end
    end

    // redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_notEnable(LOGICAL,113)
    assign redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_nor(LOGICAL,114)
    assign redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_nor_q = ~ (redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_notEnable_q | redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_sticky_ena_q);

    // redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_last(CONSTANT,110)
    assign redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_cmp(LOGICAL,111)
    assign redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_cmp_q = $unsigned(redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_last_q == redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_cmpReg(REG,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_cmpReg_q <= $unsigned(redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_cmp_q);
        end
    end

    // redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_sticky_ena(REG,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_nor_q == 1'b1)
        begin
            redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_sticky_ena_q <= $unsigned(redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_cmpReg_q);
        end
    end

    // redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_enaAnd(LOGICAL,116)
    assign redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_enaAnd_q = redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_sticky_ena_q & VCC_q;

    // redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt(COUNTER,108)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_i <= 2'd0;
            redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_i == 2'd1)
            begin
                redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_i <= $unsigned(redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_i <= $unsigned(redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_q = redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_i[1:0];

    // redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_wraddr(REG,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_wraddr_q <= $unsigned(redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_q);
        end
    end

    // redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem(DUALMEM,107)
    assign redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_ia = $unsigned(in_c0_eni5_4_tpl);
    assign redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_aa = redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_wraddr_q;
    assign redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_ab = redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_rdcnt_q;
    assign redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_dmem (
        .clocken1(redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_aa),
        .data_a(redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_ab),
        .q_b(redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_q = redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_iq[31:0];

    // redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4(DELAY,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_delay_0 <= '0;
            redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_delay_1 <= '0;
            redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_delay_2 <= '0;
            redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_q <= '0;
        end
        else
        begin
            redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_delay_0 <= $unsigned(in_c0_eni5_3_tpl);
            redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_delay_1 <= redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_delay_0;
            redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_delay_2 <= redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_delay_1;
            redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_q <= redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_delay_2;
        end
    end

    // redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4(DELAY,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_delay_0 <= '0;
            redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_delay_1 <= '0;
            redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_delay_2 <= '0;
            redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_q <= '0;
        end
        else
        begin
            redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_delay_0 <= $unsigned(in_c0_eni5_5_tpl);
            redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_delay_1 <= redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_delay_0;
            redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_delay_2 <= redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_delay_1;
            redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_q <= redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_delay_2;
        end
    end

    // redist0_sync_together62_aunroll_x_in_c0_eni5_1_tpl_1(DELAY,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together62_aunroll_x_in_c0_eni5_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together62_aunroll_x_in_c0_eni5_1_tpl_1_q <= $unsigned(in_c0_eni5_1_tpl);
        end
    end

    // redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4(DELAY,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_delay_0 <= '0;
            redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_delay_1 <= '0;
            redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_q <= '0;
        end
        else
        begin
            redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_delay_0 <= $unsigned(redist0_sync_together62_aunroll_x_in_c0_eni5_1_tpl_1_q);
            redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_delay_1 <= redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_delay_0;
            redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_q <= redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_delay_1;
        end
    end

    // valid_fanout_reg8(REG,71)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist6_sync_together62_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg9(REG,72)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist6_sync_together62_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_i27_047_pop32114_push40_kmeans23(BLACKBOX,46)@5
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    kmeans_i_llvm_fpga_push_i32_i27_047_pop32114_push40_0 thei_llvm_fpga_push_i32_i27_047_pop32114_push40_kmeans23 (
        .in_data_in(i_llvm_fpga_pop_i32_i27_047_pop32114_pop40_kmeans22_out_data_out),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i32_i27_047_pop32114_pop40_kmeans22_out_feedback_stall_out_40),
        .in_stall_in(GND_q),
        .in_unnamed_kmeans27(redist8_i_unnamed_kmeans13_q_4_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i32_i27_047_pop32114_push40_kmeans23_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i32_i27_047_pop32114_push40_kmeans23_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i27_047_pop32114_pop40_kmeans22(BLACKBOX,40)@5
    // out out_feedback_stall_out_40@20000000
    kmeans_i_llvm_fpga_pop_i32_i27_047_pop32114_pop40_0 thei_llvm_fpga_pop_i32_i27_047_pop32114_pop40_kmeans22 (
        .in_data_in(redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_q),
        .in_dir(redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_q),
        .in_feedback_in_40(i_llvm_fpga_push_i32_i27_047_pop32114_push40_kmeans23_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i32_i27_047_pop32114_push40_kmeans23_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_i27_047_pop32114_pop40_kmeans22_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i32_i27_047_pop32114_pop40_kmeans22_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,69)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist6_sync_together62_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg7(REG,70)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist6_sync_together62_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp46112_push39_kmeans21(BLACKBOX,42)@5
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    kmeans_i_llvm_fpga_push_i1_notcmp46112_push39_0 thei_llvm_fpga_push_i1_notcmp46112_push39_kmeans21 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp46112_pop39_kmeans20_out_data_out),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i1_notcmp46112_pop39_kmeans20_out_feedback_stall_out_39),
        .in_stall_in(GND_q),
        .in_unnamed_kmeans27(redist8_i_unnamed_kmeans13_q_4_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i1_notcmp46112_push39_kmeans21_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i1_notcmp46112_push39_kmeans21_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp46112_pop39_kmeans20(BLACKBOX,37)@5
    // out out_feedback_stall_out_39@20000000
    kmeans_i_llvm_fpga_pop_i1_notcmp46112_pop39_0 thei_llvm_fpga_pop_i1_notcmp46112_pop39_kmeans20 (
        .in_data_in(redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_q),
        .in_dir(redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_q),
        .in_feedback_in_39(i_llvm_fpga_push_i1_notcmp46112_push39_kmeans21_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i1_notcmp46112_push39_kmeans21_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp46112_pop39_kmeans20_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i1_notcmp46112_pop39_kmeans20_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,67)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist6_sync_together62_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg5(REG,68)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist6_sync_together62_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp51109_push38_kmeans19(BLACKBOX,43)@5
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    kmeans_i_llvm_fpga_push_i1_notcmp51109_push38_0 thei_llvm_fpga_push_i1_notcmp51109_push38_kmeans19 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp51109_pop38_kmeans18_out_data_out),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i1_notcmp51109_pop38_kmeans18_out_feedback_stall_out_38),
        .in_stall_in(GND_q),
        .in_unnamed_kmeans27(redist8_i_unnamed_kmeans13_q_4_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i1_notcmp51109_push38_kmeans19_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i1_notcmp51109_push38_kmeans19_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp51109_pop38_kmeans18(BLACKBOX,38)@5
    // out out_feedback_stall_out_38@20000000
    kmeans_i_llvm_fpga_pop_i1_notcmp51109_pop38_0 thei_llvm_fpga_pop_i1_notcmp51109_pop38_kmeans18 (
        .in_data_in(redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_q),
        .in_dir(redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_q),
        .in_feedback_in_38(i_llvm_fpga_push_i1_notcmp51109_push38_kmeans19_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i1_notcmp51109_push38_kmeans19_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp51109_pop38_kmeans18_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i1_notcmp51109_pop38_kmeans18_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp41_kmeans16(LOGICAL,48)@5
    assign i_notcmp41_kmeans16_q = redist8_i_unnamed_kmeans13_q_4_q ^ VCC_q;

    // redist7_i_unnamed_kmeans13_q_1(DELAY,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_unnamed_kmeans13_q_1_q <= '0;
        end
        else
        begin
            redist7_i_unnamed_kmeans13_q_1_q <= $unsigned(i_unnamed_kmeans13_q);
        end
    end

    // redist8_i_unnamed_kmeans13_q_4(DELAY,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_unnamed_kmeans13_q_4_delay_0 <= '0;
            redist8_i_unnamed_kmeans13_q_4_delay_1 <= '0;
            redist8_i_unnamed_kmeans13_q_4_q <= '0;
        end
        else
        begin
            redist8_i_unnamed_kmeans13_q_4_delay_0 <= $unsigned(redist7_i_unnamed_kmeans13_q_1_q);
            redist8_i_unnamed_kmeans13_q_4_delay_1 <= redist8_i_unnamed_kmeans13_q_4_delay_0;
            redist8_i_unnamed_kmeans13_q_4_q <= redist8_i_unnamed_kmeans13_q_4_delay_1;
        end
    end

    // redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_notEnable(LOGICAL,122)
    assign redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_nor(LOGICAL,123)
    assign redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_nor_q = ~ (redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_notEnable_q | redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_sticky_ena_q);

    // redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_cmpReg(REG,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_sticky_ena(REG,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_nor_q == 1'b1)
        begin
            redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_sticky_ena_q <= $unsigned(redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_cmpReg_q);
        end
    end

    // redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_enaAnd(LOGICAL,125)
    assign redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_enaAnd_q = redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_sticky_ena_q & VCC_q;

    // redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_rdcnt(COUNTER,119)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_rdcnt_i <= $unsigned(redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_rdcnt_q = redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_rdcnt_i[0:0];

    // redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_inputreg0(DELAY,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_inputreg0_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_inputreg0_q <= $unsigned(i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out);
        end
    end

    // redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_wraddr(REG,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_wraddr_q <= $unsigned(redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_rdcnt_q);
        end
    end

    // redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem(DUALMEM,118)
    assign redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_ia = $unsigned(redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_inputreg0_q);
    assign redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_aa = redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_wraddr_q;
    assign redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_ab = redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_rdcnt_q;
    assign redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(16),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(16),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_dmem (
        .clocken1(redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_aa),
        .data_a(redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_ab),
        .q_b(redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_q = redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_iq[15:0];

    // valid_fanout_reg1(REG,64)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_num_dim5727_kmeans3(BLACKBOX,34)@2
    kmeans_i_llvm_fpga_ffwd_dest_i32_num_dim5727_0 thei_llvm_fpga_ffwd_dest_i32_num_dim5727_kmeans3 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_num_dim5727_kmeans3_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul46_kmeans5_bs2_merged_bit_select(BITSELECT,94)@2
    assign i_mul46_kmeans5_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_num_dim5727_kmeans3_out_dest_data_out_2_0[31:18];
    assign i_mul46_kmeans5_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_num_dim5727_kmeans3_out_dest_data_out_2_0[17:0];

    // valid_fanout_reg2(REG,65)@1 + 1
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

    // valid_fanout_reg3(REG,66)@1 + 1
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

    // redist10_i_conv33_kmeans8_vt_join_q_1(DELAY,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_conv33_kmeans8_vt_join_q_1_q <= '0;
        end
        else
        begin
            redist10_i_conv33_kmeans8_vt_join_q_1_q <= $unsigned(i_conv33_kmeans8_vt_join_q);
        end
    end

    // i_llvm_fpga_push_i32_conv3345_push34_kmeans15(BLACKBOX,45)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    kmeans_i_llvm_fpga_push_i32_conv3345_push34_0 thei_llvm_fpga_push_i32_conv3345_push34_kmeans15 (
        .in_data_in(redist10_i_conv33_kmeans8_vt_join_q_1_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i32_conv3345_pop34_kmeans4_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_unnamed_kmeans27(redist7_i_unnamed_kmeans13_q_1_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i32_conv3345_push34_kmeans15_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i32_conv3345_push34_kmeans15_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_041(CONSTANT,24)
    assign c_i32_041_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_conv3345_pop34_kmeans4(BLACKBOX,39)@2
    // out out_feedback_stall_out_34@20000000
    kmeans_i_llvm_fpga_pop_i32_conv3345_pop34_0 thei_llvm_fpga_pop_i32_conv3345_pop34_kmeans4 (
        .in_data_in(c_i32_041_q),
        .in_dir(redist0_sync_together62_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i32_conv3345_push34_kmeans15_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i32_conv3345_push34_kmeans15_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_conv3345_pop34_kmeans4_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i32_conv3345_pop34_kmeans4_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul46_kmeans5_bs1_merged_bit_select(BITSELECT,95)@2
    assign i_mul46_kmeans5_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_conv3345_pop34_kmeans4_out_data_out[31:18];
    assign i_mul46_kmeans5_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_conv3345_pop34_kmeans4_out_data_out[17:0];

    // i_mul46_kmeans5_ma3_cma(CHAINMULTADD,93)@2 + 3
    assign i_mul46_kmeans5_ma3_cma_reset = ~ (resetn);
    assign i_mul46_kmeans5_ma3_cma_ena0 = 1'b1;
    assign i_mul46_kmeans5_ma3_cma_ena1 = i_mul46_kmeans5_ma3_cma_ena0;
    assign i_mul46_kmeans5_ma3_cma_ena2 = i_mul46_kmeans5_ma3_cma_ena0;

    assign i_mul46_kmeans5_ma3_cma_a0 = i_mul46_kmeans5_bs1_merged_bit_select_b;
    assign i_mul46_kmeans5_ma3_cma_c0 = i_mul46_kmeans5_bs2_merged_bit_select_c;
    assign i_mul46_kmeans5_ma3_cma_a1 = i_mul46_kmeans5_bs2_merged_bit_select_b;
    assign i_mul46_kmeans5_ma3_cma_c1 = i_mul46_kmeans5_bs1_merged_bit_select_c;
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
    ) i_mul46_kmeans5_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul46_kmeans5_ma3_cma_ena2, i_mul46_kmeans5_ma3_cma_ena1, i_mul46_kmeans5_ma3_cma_ena0 }),
        .aclr({ i_mul46_kmeans5_ma3_cma_reset, i_mul46_kmeans5_ma3_cma_reset }),
        .ay(i_mul46_kmeans5_ma3_cma_a1),
        .by(i_mul46_kmeans5_ma3_cma_a0),
        .ax(i_mul46_kmeans5_ma3_cma_c1),
        .bx(i_mul46_kmeans5_ma3_cma_c0),
        .resulta(i_mul46_kmeans5_ma3_cma_s0),
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
    i_mul46_kmeans5_ma3_cma_delay ( .xin(i_mul46_kmeans5_ma3_cma_s0), .xout(i_mul46_kmeans5_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul46_kmeans5_ma3_cma_q = $unsigned(i_mul46_kmeans5_ma3_cma_qq[32:0]);

    // i_mul46_kmeans5_sums_align_1(BITSHIFT,88)@5
    assign i_mul46_kmeans5_sums_align_1_qint = { i_mul46_kmeans5_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul46_kmeans5_sums_align_1_q = i_mul46_kmeans5_sums_align_1_qint[50:0];

    // i_mul46_kmeans5_im0_cma(CHAINMULTADD,91)@2 + 3
    assign i_mul46_kmeans5_im0_cma_reset = ~ (resetn);
    assign i_mul46_kmeans5_im0_cma_ena0 = 1'b1;
    assign i_mul46_kmeans5_im0_cma_ena1 = i_mul46_kmeans5_im0_cma_ena0;
    assign i_mul46_kmeans5_im0_cma_ena2 = i_mul46_kmeans5_im0_cma_ena0;

    assign i_mul46_kmeans5_im0_cma_a0 = i_mul46_kmeans5_bs1_merged_bit_select_b;
    assign i_mul46_kmeans5_im0_cma_c0 = i_mul46_kmeans5_bs2_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul46_kmeans5_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul46_kmeans5_im0_cma_ena2, i_mul46_kmeans5_im0_cma_ena1, i_mul46_kmeans5_im0_cma_ena0 }),
        .aclr({ i_mul46_kmeans5_im0_cma_reset, i_mul46_kmeans5_im0_cma_reset }),
        .ay(i_mul46_kmeans5_im0_cma_a0),
        .ax(i_mul46_kmeans5_im0_cma_c0),
        .resulta(i_mul46_kmeans5_im0_cma_s0),
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
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul46_kmeans5_im0_cma_delay ( .xin(i_mul46_kmeans5_im0_cma_s0), .xout(i_mul46_kmeans5_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul46_kmeans5_im0_cma_q = $unsigned(i_mul46_kmeans5_im0_cma_qq[27:0]);

    // i_mul46_kmeans5_im8_cma(CHAINMULTADD,92)@2 + 3
    assign i_mul46_kmeans5_im8_cma_reset = ~ (resetn);
    assign i_mul46_kmeans5_im8_cma_ena0 = 1'b1;
    assign i_mul46_kmeans5_im8_cma_ena1 = i_mul46_kmeans5_im8_cma_ena0;
    assign i_mul46_kmeans5_im8_cma_ena2 = i_mul46_kmeans5_im8_cma_ena0;

    assign i_mul46_kmeans5_im8_cma_a0 = i_mul46_kmeans5_bs1_merged_bit_select_c;
    assign i_mul46_kmeans5_im8_cma_c0 = i_mul46_kmeans5_bs2_merged_bit_select_c;
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
    ) i_mul46_kmeans5_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul46_kmeans5_im8_cma_ena2, i_mul46_kmeans5_im8_cma_ena1, i_mul46_kmeans5_im8_cma_ena0 }),
        .aclr({ i_mul46_kmeans5_im8_cma_reset, i_mul46_kmeans5_im8_cma_reset }),
        .ay(i_mul46_kmeans5_im8_cma_a0),
        .ax(i_mul46_kmeans5_im8_cma_c0),
        .resulta(i_mul46_kmeans5_im8_cma_s0),
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
    i_mul46_kmeans5_im8_cma_delay ( .xin(i_mul46_kmeans5_im8_cma_s0), .xout(i_mul46_kmeans5_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul46_kmeans5_im8_cma_q = $unsigned(i_mul46_kmeans5_im8_cma_qq[35:0]);

    // i_mul46_kmeans5_sums_join_0(BITJOIN,87)@5
    assign i_mul46_kmeans5_sums_join_0_q = {i_mul46_kmeans5_im0_cma_q, i_mul46_kmeans5_im8_cma_q};

    // i_mul46_kmeans5_sums_result_add_0_0(ADD,90)@5
    assign i_mul46_kmeans5_sums_result_add_0_0_a = {1'b0, i_mul46_kmeans5_sums_join_0_q};
    assign i_mul46_kmeans5_sums_result_add_0_0_b = {14'b00000000000000, i_mul46_kmeans5_sums_align_1_q};
    assign i_mul46_kmeans5_sums_result_add_0_0_o = $unsigned(i_mul46_kmeans5_sums_result_add_0_0_a) + $unsigned(i_mul46_kmeans5_sums_result_add_0_0_b);
    assign i_mul46_kmeans5_sums_result_add_0_0_q = i_mul46_kmeans5_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul46_kmeans5_sel_x(BITSELECT,59)@5
    assign bgTrunc_i_mul46_kmeans5_sel_x_in = i_mul46_kmeans5_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul46_kmeans5_sel_x_b = bgTrunc_i_mul46_kmeans5_sel_x_in[31:0];

    // sync_out_aunroll_x(GPOUT,61)@5
    assign out_c0_exi12_0_tpl = GND_q;
    assign out_c0_exi12_1_tpl = bgTrunc_i_mul46_kmeans5_sel_x_b;
    assign out_c0_exi12_2_tpl = redist9_i_llvm_fpga_pop_i16_c_044_pop35_kmeans6_out_data_out_4_mem_q;
    assign out_c0_exi12_3_tpl = redist8_i_unnamed_kmeans13_q_4_q;
    assign out_c0_exi12_4_tpl = i_notcmp41_kmeans16_q;
    assign out_c0_exi12_5_tpl = i_llvm_fpga_pop_i1_notcmp51109_pop38_kmeans18_out_data_out;
    assign out_c0_exi12_6_tpl = i_llvm_fpga_pop_i1_notcmp46112_pop39_kmeans20_out_data_out;
    assign out_c0_exi12_7_tpl = i_llvm_fpga_pop_i32_i27_047_pop32114_pop40_kmeans22_out_data_out;
    assign out_c0_exi12_8_tpl = redist1_sync_together62_aunroll_x_in_c0_eni5_1_tpl_4_q;
    assign out_c0_exi12_9_tpl = redist5_sync_together62_aunroll_x_in_c0_eni5_5_tpl_4_q;
    assign out_c0_exi12_10_tpl = redist3_sync_together62_aunroll_x_in_c0_eni5_3_tpl_4_q;
    assign out_c0_exi12_11_tpl = redist4_sync_together62_aunroll_x_in_c0_eni5_4_tpl_4_mem_q;
    assign out_c0_exi12_12_tpl = redist2_sync_together62_aunroll_x_in_c0_eni5_2_tpl_4_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kmeans1 = GND_q;

endmodule
