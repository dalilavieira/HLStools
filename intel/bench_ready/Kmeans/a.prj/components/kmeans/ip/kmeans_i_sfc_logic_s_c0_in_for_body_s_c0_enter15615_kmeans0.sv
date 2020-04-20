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

// SystemVerilog created from kmeans_i_sfc_logic_s_c0_in_for_body_s_c0_enter15615_kmeans0
// SystemVerilog created on Sun Apr 19 22:13:38 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_i_sfc_logic_s_c0_in_for_body_s_c0_enter15615_kmeans0 (
    input wire [15:0] in_memdep_kmeans_avm_readdata,
    input wire [0:0] in_memdep_kmeans_avm_writeack,
    input wire [0:0] in_memdep_kmeans_avm_waitrequest,
    input wire [0:0] in_memdep_kmeans_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_kmeans6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_kmeans6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    output wire [31:0] out_memdep_kmeans_avm_address,
    output wire [0:0] out_memdep_kmeans_avm_enable,
    output wire [0:0] out_memdep_kmeans_avm_read,
    output wire [0:0] out_memdep_kmeans_avm_write,
    output wire [15:0] out_memdep_kmeans_avm_writedata,
    output wire [1:0] out_memdep_kmeans_avm_byteenable,
    output wire [0:0] out_memdep_kmeans_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_kmeans1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_057_q;
    wire [31:0] c_i32_158_q;
    wire [32:0] c_i33_160_q;
    wire [32:0] c_i33_undef56_q;
    wire [3:0] c_i4_753_q;
    wire [63:0] c_kmeans_data_in_pmem_q;
    wire [63:0] i_arrayidx8_kmeans20_vt_join_q;
    wire [62:0] i_arrayidx8_kmeans20_vt_select_63_b;
    wire [3:0] i_cleanups_shl94_kmeans5_vt_join_q;
    wire [2:0] i_cleanups_shl94_kmeans5_vt_select_3_b;
    wire [0:0] i_first_cleanup95_xor_or_kmeans21_q;
    wire [33:0] i_fpga_indvars_iv_next_kmeans27_a;
    wire [33:0] i_fpga_indvars_iv_next_kmeans27_b;
    logic [33:0] i_fpga_indvars_iv_next_kmeans27_o;
    wire [33:0] i_fpga_indvars_iv_next_kmeans27_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_kmeans14_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_kmeans14_q;
    wire [63:0] i_idxprom_kmeans19_vt_join_q;
    wire [31:0] i_idxprom_kmeans19_vt_select_31_b;
    wire [32:0] i_inc_kmeans23_a;
    wire [32:0] i_inc_kmeans23_b;
    logic [32:0] i_inc_kmeans23_o;
    wire [32:0] i_inc_kmeans23_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp5330_kmeans29_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp5331_kmeans15_out_dest_data_out_3_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_kmeans8_kmeans12_out_dest_data_out_4_0;
    wire [31:0] i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_burstcount;
    wire [1:0] i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_write;
    wire [15:0] i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_kmeans6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_kmeans6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_kmeans6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_kmeans6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_kmeans6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_054_pop19_kmeans17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_054_pop19_kmeans17_out_feedback_stall_out_19;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_kmeans13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_kmeans13_out_feedback_stall_out_18;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups93_pop21_kmeans2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups93_pop21_kmeans2_out_feedback_stall_out_21;
    wire [3:0] i_llvm_fpga_pop_i4_initerations88_pop20_kmeans7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations88_pop20_kmeans7_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration92_kmeans11_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration92_kmeans11_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond100_kmeans32_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond100_kmeans32_out_feedback_valid_out_15;
    wire [31:0] i_llvm_fpga_push_i32_i_054_push19_kmeans24_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_i_054_push19_kmeans24_out_feedback_valid_out_19;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push18_kmeans28_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push18_kmeans28_out_feedback_valid_out_18;
    wire [7:0] i_llvm_fpga_push_i4_cleanups93_push21_kmeans35_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i4_cleanups93_push21_kmeans35_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i4_initerations88_push20_kmeans9_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i4_initerations88_push20_kmeans9_out_feedback_valid_out_20;
    wire [0:0] i_masked99_kmeans36_qi;
    reg [0:0] i_masked99_kmeans36_q;
    wire [0:0] i_next_cleanups98_kmeans34_s;
    reg [3:0] i_next_cleanups98_kmeans34_q;
    wire [3:0] i_next_initerations89_kmeans8_vt_join_q;
    wire [2:0] i_next_initerations89_kmeans8_vt_select_2_b;
    wire [0:0] i_notcmp87_kmeans31_q;
    wire [0:0] i_or97_kmeans33_q;
    wire [0:0] i_unnamed_kmeans16_q;
    wire [0:0] i_unnamed_kmeans30_q;
    wire [0:0] i_xor96_kmeans4_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_kmeans27_sel_x_b;
    wire [31:0] bgTrunc_i_inc_kmeans23_sel_x_b;
    wire [64:0] i_arrayidx8_kmeans0_add_x_a;
    wire [64:0] i_arrayidx8_kmeans0_add_x_b;
    logic [64:0] i_arrayidx8_kmeans0_add_x_o;
    wire [64:0] i_arrayidx8_kmeans0_add_x_q;
    wire [127:0] i_arrayidx8_kmeans0_mult_extender_x_q;
    wire [61:0] i_arrayidx8_kmeans0_mult_multconst_x_q;
    wire [63:0] i_arrayidx8_kmeans0_trunc_sel_x_b;
    wire [63:0] i_arrayidx8_kmeans0_dupName_0_trunc_sel_x_b;
    wire [15:0] i_conv_kmeans18_sel_x_b;
    wire [0:0] i_first_cleanup95_kmeans3_sel_x_b;
    wire [63:0] i_idxprom_kmeans19_sel_x_b;
    wire [0:0] i_last_initeration91_kmeans10_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    wire [0:0] i_exitcond_kmeans25_cmp_nsign_q;
    wire [35:0] i_arrayidx8_kmeans0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx8_kmeans0_mult_x_sums_align_0_qint;
    wire [55:0] i_arrayidx8_kmeans0_mult_x_sums_join_1_q;
    wire [37:0] i_arrayidx8_kmeans0_mult_x_sums_align_2_q;
    wire [37:0] i_arrayidx8_kmeans0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx8_kmeans0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx8_kmeans0_mult_x_sums_align_3_qint;
    wire [65:0] i_arrayidx8_kmeans0_mult_x_sums_join_4_q;
    wire [66:0] i_arrayidx8_kmeans0_mult_x_sums_result_add_0_0_a;
    wire [66:0] i_arrayidx8_kmeans0_mult_x_sums_result_add_0_0_b;
    logic [66:0] i_arrayidx8_kmeans0_mult_x_sums_result_add_0_0_o;
    wire [66:0] i_arrayidx8_kmeans0_mult_x_sums_result_add_0_0_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl94_kmeans0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl94_kmeans0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid148_i_cleanups_shl94_kmeans0_shift_x_q;
    wire [0:0] leftShiftStage0_uid150_i_cleanups_shl94_kmeans0_shift_x_s;
    reg [3:0] leftShiftStage0_uid150_i_cleanups_shl94_kmeans0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid154_i_next_initerations89_kmeans0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid156_i_next_initerations89_kmeans0_shift_x_q;
    wire [0:0] rightShiftStage0_uid158_i_next_initerations89_kmeans0_shift_x_s;
    reg [3:0] rightShiftStage0_uid158_i_next_initerations89_kmeans0_shift_x_q;
    wire [10:0] i_arrayidx8_kmeans0_mult_x_im0_shift0_q;
    wire [10:0] i_arrayidx8_kmeans0_mult_x_im0_shift0_qint;
    wire [18:0] i_arrayidx8_kmeans0_mult_x_im3_shift0_q;
    wire [18:0] i_arrayidx8_kmeans0_mult_x_im3_shift0_qint;
    wire [18:0] i_arrayidx8_kmeans0_mult_x_im6_shift0_q;
    wire [18:0] i_arrayidx8_kmeans0_mult_x_im6_shift0_qint;
    wire [18:0] i_arrayidx8_kmeans0_mult_x_im9_shift0_q;
    wire [18:0] i_arrayidx8_kmeans0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx8_kmeans0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx8_kmeans0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx8_kmeans0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx8_kmeans0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together77_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together77_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist2_sync_together77_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together77_aunroll_x_in_i_valid_2_q;
    reg [31:0] redist4_i_llvm_fpga_pop_i32_i_054_pop19_kmeans17_out_data_out_1_q;
    reg [0:0] redist5_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_1_q;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_2_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_3_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together77_aunroll_x_in_i_valid_1(DELAY,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together77_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together77_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together77_aunroll_x_in_i_valid_2(DELAY,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together77_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist3_sync_together77_aunroll_x_in_i_valid_2_q <= $unsigned(redist2_sync_together77_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist5_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_1(DELAY,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out);
        end
    end

    // redist6_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_2(DELAY,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_2_q <= $unsigned(redist5_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl94_kmeans0_shift_x(BITSELECT,146)@3
    assign leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl94_kmeans0_shift_x_in = i_llvm_fpga_pop_i4_cleanups93_pop21_kmeans2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl94_kmeans0_shift_x_b = leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl94_kmeans0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid148_i_cleanups_shl94_kmeans0_shift_x(BITJOIN,147)@3
    assign leftShiftStage0Idx1_uid148_i_cleanups_shl94_kmeans0_shift_x_q = {leftShiftStage0Idx1Rng1_uid147_i_cleanups_shl94_kmeans0_shift_x_b, GND_q};

    // leftShiftStage0_uid150_i_cleanups_shl94_kmeans0_shift_x(MUX,149)@3
    assign leftShiftStage0_uid150_i_cleanups_shl94_kmeans0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid150_i_cleanups_shl94_kmeans0_shift_x_s or i_llvm_fpga_pop_i4_cleanups93_pop21_kmeans2_out_data_out or leftShiftStage0Idx1_uid148_i_cleanups_shl94_kmeans0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid150_i_cleanups_shl94_kmeans0_shift_x_s)
            1'b0 : leftShiftStage0_uid150_i_cleanups_shl94_kmeans0_shift_x_q = i_llvm_fpga_pop_i4_cleanups93_pop21_kmeans2_out_data_out;
            1'b1 : leftShiftStage0_uid150_i_cleanups_shl94_kmeans0_shift_x_q = leftShiftStage0Idx1_uid148_i_cleanups_shl94_kmeans0_shift_x_q;
            default : leftShiftStage0_uid150_i_cleanups_shl94_kmeans0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl94_kmeans5_vt_select_3(BITSELECT,34)@3
    assign i_cleanups_shl94_kmeans5_vt_select_3_b = leftShiftStage0_uid150_i_cleanups_shl94_kmeans0_shift_x_q[3:1];

    // i_cleanups_shl94_kmeans5_vt_join(BITJOIN,33)@3
    assign i_cleanups_shl94_kmeans5_vt_join_q = {i_cleanups_shl94_kmeans5_vt_select_3_b, GND_q};

    // i_xor96_kmeans4(LOGICAL,71)@3
    assign i_xor96_kmeans4_q = i_first_cleanup95_kmeans3_sel_x_b ^ VCC_q;

    // i_notcmp87_kmeans31(LOGICAL,67)@3
    assign i_notcmp87_kmeans31_q = i_unnamed_kmeans30_q ^ VCC_q;

    // i_or97_kmeans33(LOGICAL,68)@3
    assign i_or97_kmeans33_q = i_notcmp87_kmeans31_q | i_xor96_kmeans4_q;

    // i_next_cleanups98_kmeans34(MUX,63)@3
    assign i_next_cleanups98_kmeans34_s = i_or97_kmeans33_q;
    always @(i_next_cleanups98_kmeans34_s or i_llvm_fpga_pop_i4_cleanups93_pop21_kmeans2_out_data_out or i_cleanups_shl94_kmeans5_vt_join_q)
    begin
        unique case (i_next_cleanups98_kmeans34_s)
            1'b0 : i_next_cleanups98_kmeans34_q = i_llvm_fpga_pop_i4_cleanups93_pop21_kmeans2_out_data_out;
            1'b1 : i_next_cleanups98_kmeans34_q = i_cleanups_shl94_kmeans5_vt_join_q;
            default : i_next_cleanups98_kmeans34_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups93_push21_kmeans35(BLACKBOX,60)@3
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    kmeans_i_llvm_fpga_push_i4_cleanups93_push21_0 thei_llvm_fpga_push_i4_cleanups93_push21_kmeans35 (
        .in_data_in(i_next_cleanups98_kmeans34_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i4_cleanups93_pop21_kmeans2_out_feedback_stall_out_21),
        .in_keep_going90(redist6_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together77_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i4_cleanups93_push21_kmeans35_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i4_cleanups93_push21_kmeans35_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together77_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together77_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together77_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist1_sync_together77_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together77_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together77_aunroll_x_in_c0_eni1_1_tpl_2_q <= $unsigned(redist0_sync_together77_aunroll_x_in_c0_eni1_1_tpl_1_q);
        end
    end

    // c_i4_753(CONSTANT,25)
    assign c_i4_753_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups93_pop21_kmeans2(BLACKBOX,54)@3
    // out out_feedback_stall_out_21@20000000
    kmeans_i_llvm_fpga_pop_i4_cleanups93_pop21_0 thei_llvm_fpga_pop_i4_cleanups93_pop21_kmeans2 (
        .in_data_in(c_i4_753_q),
        .in_dir(redist1_sync_together77_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_21(i_llvm_fpga_push_i4_cleanups93_push21_kmeans35_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i4_cleanups93_push21_kmeans35_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together77_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups93_pop21_kmeans2_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i4_cleanups93_pop21_kmeans2_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup95_kmeans3_sel_x(BITSELECT,98)@3
    assign i_first_cleanup95_kmeans3_sel_x_b = i_llvm_fpga_pop_i4_cleanups93_pop21_kmeans2_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_kmeans8_kmeans12(BLACKBOX,49)@3
    kmeans_i_llvm_fpga_ffwd_dest_i33_unnamed_8_kmeans0 thei_llvm_fpga_ffwd_dest_i33_unnamed_kmeans8_kmeans12 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together77_aunroll_x_in_i_valid_2_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i33_unnamed_kmeans8_kmeans12_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_160(CONSTANT,22)
    assign c_i33_160_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_kmeans27(ADD,39)@3
    assign i_fpga_indvars_iv_next_kmeans27_a = {1'b0, i_fpga_indvars_iv_replace_phi_kmeans14_q};
    assign i_fpga_indvars_iv_next_kmeans27_b = {1'b0, c_i33_160_q};
    assign i_fpga_indvars_iv_next_kmeans27_o = $unsigned(i_fpga_indvars_iv_next_kmeans27_a) + $unsigned(i_fpga_indvars_iv_next_kmeans27_b);
    assign i_fpga_indvars_iv_next_kmeans27_q = i_fpga_indvars_iv_next_kmeans27_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_kmeans27_sel_x(BITSELECT,79)@3
    assign bgTrunc_i_fpga_indvars_iv_next_kmeans27_sel_x_b = i_fpga_indvars_iv_next_kmeans27_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push18_kmeans28(BLACKBOX,59)@3
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    kmeans_i_llvm_fpga_push_i33_fpga_indvars_iv_push18_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push18_kmeans28 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_kmeans27_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_kmeans13_out_feedback_stall_out_18),
        .in_keep_going90(redist6_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together77_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i33_fpga_indvars_iv_push18_kmeans28_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i33_fpga_indvars_iv_push18_kmeans28_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef56(CONSTANT,23)
    assign c_i33_undef56_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_kmeans13(BLACKBOX,53)@3
    // out out_feedback_stall_out_18@20000000
    kmeans_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_kmeans13 (
        .in_data_in(c_i33_undef56_q),
        .in_dir(redist1_sync_together77_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_18(i_llvm_fpga_push_i33_fpga_indvars_iv_push18_kmeans28_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i33_fpga_indvars_iv_push18_kmeans28_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together77_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_kmeans13_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_kmeans13_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_kmeans14(MUX,40)@3
    assign i_fpga_indvars_iv_replace_phi_kmeans14_s = redist1_sync_together77_aunroll_x_in_c0_eni1_1_tpl_2_q;
    always @(i_fpga_indvars_iv_replace_phi_kmeans14_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_kmeans13_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_kmeans8_kmeans12_out_dest_data_out_4_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_kmeans14_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_kmeans14_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop18_kmeans13_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_kmeans14_q = i_llvm_fpga_ffwd_dest_i33_unnamed_kmeans8_kmeans12_out_dest_data_out_4_0;
            default : i_fpga_indvars_iv_replace_phi_kmeans14_q = 33'b0;
        endcase
    end

    // i_exitcond_kmeans25_cmp_nsign(LOGICAL,124)@3
    assign i_exitcond_kmeans25_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_kmeans14_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp5330_kmeans29(BLACKBOX,47)@3
    kmeans_i_llvm_fpga_ffwd_dest_i1_cmp5330_0 thei_llvm_fpga_ffwd_dest_i1_cmp5330_kmeans29 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together77_aunroll_x_in_i_valid_2_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_cmp5330_kmeans29_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_kmeans30(LOGICAL,70)@3
    assign i_unnamed_kmeans30_q = i_llvm_fpga_ffwd_dest_i1_cmp5330_kmeans29_out_dest_data_out_3_0 & i_exitcond_kmeans25_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond100_kmeans32(BLACKBOX,57)@3
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    kmeans_i_llvm_fpga_push_i1_notexitcond100_0 thei_llvm_fpga_push_i1_notexitcond100_kmeans32 (
        .in_data_in(i_unnamed_kmeans30_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pipeline_keep_going90_kmeans6_out_not_exitcond_stall_out),
        .in_first_cleanup95(i_first_cleanup95_kmeans3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together77_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i1_notexitcond100_kmeans32_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i1_notexitcond100_kmeans32_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,110)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid154_i_next_initerations89_kmeans0_shift_x(BITSELECT,153)@2
    assign rightShiftStage0Idx1Rng1_uid154_i_next_initerations89_kmeans0_shift_x_b = i_llvm_fpga_pop_i4_initerations88_pop20_kmeans7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid156_i_next_initerations89_kmeans0_shift_x(BITJOIN,155)@2
    assign rightShiftStage0Idx1_uid156_i_next_initerations89_kmeans0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid154_i_next_initerations89_kmeans0_shift_x_b};

    // valid_fanout_reg1(REG,108)@1 + 1
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

    // valid_fanout_reg2(REG,109)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations88_push20_kmeans9(BLACKBOX,61)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    kmeans_i_llvm_fpga_push_i4_initerations88_push20_0 thei_llvm_fpga_push_i4_initerations88_push20_kmeans9 (
        .in_data_in(i_next_initerations89_kmeans8_vt_join_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i4_initerations88_pop20_kmeans7_out_feedback_stall_out_20),
        .in_keep_going90(redist5_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i4_initerations88_push20_kmeans9_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i4_initerations88_push20_kmeans9_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations88_pop20_kmeans7(BLACKBOX,55)@2
    // out out_feedback_stall_out_20@20000000
    kmeans_i_llvm_fpga_pop_i4_initerations88_pop20_0 thei_llvm_fpga_pop_i4_initerations88_pop20_kmeans7 (
        .in_data_in(c_i4_753_q),
        .in_dir(redist0_sync_together77_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i4_initerations88_push20_kmeans9_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i4_initerations88_push20_kmeans9_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations88_pop20_kmeans7_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i4_initerations88_pop20_kmeans7_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid158_i_next_initerations89_kmeans0_shift_x(MUX,157)@2
    assign rightShiftStage0_uid158_i_next_initerations89_kmeans0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid158_i_next_initerations89_kmeans0_shift_x_s or i_llvm_fpga_pop_i4_initerations88_pop20_kmeans7_out_data_out or rightShiftStage0Idx1_uid156_i_next_initerations89_kmeans0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid158_i_next_initerations89_kmeans0_shift_x_s)
            1'b0 : rightShiftStage0_uid158_i_next_initerations89_kmeans0_shift_x_q = i_llvm_fpga_pop_i4_initerations88_pop20_kmeans7_out_data_out;
            1'b1 : rightShiftStage0_uid158_i_next_initerations89_kmeans0_shift_x_q = rightShiftStage0Idx1_uid156_i_next_initerations89_kmeans0_shift_x_q;
            default : rightShiftStage0_uid158_i_next_initerations89_kmeans0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations89_kmeans8_vt_select_2(BITSELECT,66)@2
    assign i_next_initerations89_kmeans8_vt_select_2_b = rightShiftStage0_uid158_i_next_initerations89_kmeans0_shift_x_q[2:0];

    // i_next_initerations89_kmeans8_vt_join(BITJOIN,65)@2
    assign i_next_initerations89_kmeans8_vt_join_q = {GND_q, i_next_initerations89_kmeans8_vt_select_2_b};

    // i_last_initeration91_kmeans10_sel_x(BITSELECT,100)@2
    assign i_last_initeration91_kmeans10_sel_x_b = i_next_initerations89_kmeans8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration92_kmeans11(BLACKBOX,56)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    kmeans_i_llvm_fpga_push_i1_lastiniteration92_0 thei_llvm_fpga_push_i1_lastiniteration92_kmeans11 (
        .in_data_in(i_last_initeration91_kmeans10_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pipeline_keep_going90_kmeans6_out_initeration_stall_out),
        .in_keep_going90(redist5_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i1_lastiniteration92_kmeans11_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i1_lastiniteration92_kmeans11_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going90_kmeans6(BLACKBOX,51)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    kmeans_i_llvm_fpga_pipeline_keep_going90_0 thei_llvm_fpga_pipeline_keep_going90_kmeans6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration92_kmeans11_out_feedback_out_14),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration92_kmeans11_out_feedback_valid_out_14),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond100_kmeans32_out_feedback_out_15),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond100_kmeans32_out_feedback_valid_out_15),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going90_kmeans6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going90_kmeans6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going90_kmeans6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going90_kmeans6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going90_kmeans6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,28)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_kmeans6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going90_kmeans6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_kmeans6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going90_kmeans6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,74)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going90_kmeans6_out_pipeline_valid_out;

    // valid_fanout_reg5(REG,112)@1 + 1
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

    // valid_fanout_reg7(REG,114)@1 + 1
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

    // c_i32_158(CONSTANT,21)
    assign c_i32_158_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_kmeans23(ADD,45)@2
    assign i_inc_kmeans23_a = {1'b0, i_llvm_fpga_pop_i32_i_054_pop19_kmeans17_out_data_out};
    assign i_inc_kmeans23_b = {1'b0, c_i32_158_q};
    assign i_inc_kmeans23_o = $unsigned(i_inc_kmeans23_a) + $unsigned(i_inc_kmeans23_b);
    assign i_inc_kmeans23_q = i_inc_kmeans23_o[32:0];

    // bgTrunc_i_inc_kmeans23_sel_x(BITSELECT,80)@2
    assign bgTrunc_i_inc_kmeans23_sel_x_b = i_inc_kmeans23_q[31:0];

    // i_llvm_fpga_push_i32_i_054_push19_kmeans24(BLACKBOX,58)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    kmeans_i_llvm_fpga_push_i32_i_054_push19_0 thei_llvm_fpga_push_i32_i_054_push19_kmeans24 (
        .in_data_in(bgTrunc_i_inc_kmeans23_sel_x_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i32_i_054_pop19_kmeans17_out_feedback_stall_out_19),
        .in_keep_going90(redist5_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_i_054_push19_kmeans24_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_i_054_push19_kmeans24_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_057(CONSTANT,20)
    assign c_i32_057_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_054_pop19_kmeans17(BLACKBOX,52)@2
    // out out_feedback_stall_out_19@20000000
    kmeans_i_llvm_fpga_pop_i32_i_054_pop19_0 thei_llvm_fpga_pop_i32_i_054_pop19_kmeans17 (
        .in_data_in(c_i32_057_q),
        .in_dir(redist0_sync_together77_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i32_i_054_push19_kmeans24_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i32_i_054_push19_kmeans24_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_054_pop19_kmeans17_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_i_054_pop19_kmeans17_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i32_i_054_pop19_kmeans17_out_data_out_1(DELAY,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_i_054_pop19_kmeans17_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i32_i_054_pop19_kmeans17_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_054_pop19_kmeans17_out_data_out);
        end
    end

    // i_conv_kmeans18_sel_x(BITSELECT,97)@3
    assign i_conv_kmeans18_sel_x_b = redist4_i_llvm_fpga_pop_i32_i_054_pop19_kmeans17_out_data_out_1_q[15:0];

    // valid_fanout_reg6(REG,113)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist2_sync_together77_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg4(REG,111)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist2_sync_together77_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp5331_kmeans15(BLACKBOX,48)@3
    kmeans_i_llvm_fpga_ffwd_dest_i1_cmp5331_0 thei_llvm_fpga_ffwd_dest_i1_cmp5331_kmeans15 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i1_cmp5331_kmeans15_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_kmeans16(LOGICAL,69)@3
    assign i_unnamed_kmeans16_q = i_llvm_fpga_ffwd_dest_i1_cmp5331_kmeans15_out_dest_data_out_3_0 ^ VCC_q;

    // i_first_cleanup95_xor_or_kmeans21(LOGICAL,38)@3
    assign i_first_cleanup95_xor_or_kmeans21_q = i_unnamed_kmeans16_q | i_xor96_kmeans4_q;

    // i_arrayidx8_kmeans0_mult_multconst_x(CONSTANT,90)
    assign i_arrayidx8_kmeans0_mult_multconst_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // i_idxprom_kmeans19_sel_x(BITSELECT,99)@3
    assign i_idxprom_kmeans19_sel_x_b = {32'b00000000000000000000000000000000, redist4_i_llvm_fpga_pop_i32_i_054_pop19_kmeans17_out_data_out_1_q[31:0]};

    // i_idxprom_kmeans19_vt_select_31(BITSELECT,44)@3
    assign i_idxprom_kmeans19_vt_select_31_b = i_idxprom_kmeans19_sel_x_b[31:0];

    // i_idxprom_kmeans19_vt_join(BITJOIN,43)@3
    assign i_idxprom_kmeans19_vt_join_q = {c_i32_057_q, i_idxprom_kmeans19_vt_select_31_b};

    // i_arrayidx8_kmeans0_mult_x_bs1_merged_bit_select(BITSELECT,163)@3
    assign i_arrayidx8_kmeans0_mult_x_bs1_merged_bit_select_b = i_idxprom_kmeans19_vt_join_q[63:54];
    assign i_arrayidx8_kmeans0_mult_x_bs1_merged_bit_select_c = i_idxprom_kmeans19_vt_join_q[53:36];
    assign i_arrayidx8_kmeans0_mult_x_bs1_merged_bit_select_d = i_idxprom_kmeans19_vt_join_q[35:18];
    assign i_arrayidx8_kmeans0_mult_x_bs1_merged_bit_select_e = i_idxprom_kmeans19_vt_join_q[17:0];

    // i_arrayidx8_kmeans0_mult_x_im0_shift0(BITSHIFT,159)@3
    assign i_arrayidx8_kmeans0_mult_x_im0_shift0_qint = { i_arrayidx8_kmeans0_mult_x_bs1_merged_bit_select_b, 1'b0 };
    assign i_arrayidx8_kmeans0_mult_x_im0_shift0_q = i_arrayidx8_kmeans0_mult_x_im0_shift0_qint[10:0];

    // i_arrayidx8_kmeans0_mult_x_sums_align_3(BITSHIFT,140)@3
    assign i_arrayidx8_kmeans0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx8_kmeans0_mult_x_im0_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx8_kmeans0_mult_x_sums_align_3_q = i_arrayidx8_kmeans0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx8_kmeans0_mult_x_im6_shift0(BITSHIFT,161)@3
    assign i_arrayidx8_kmeans0_mult_x_im6_shift0_qint = { i_arrayidx8_kmeans0_mult_x_bs1_merged_bit_select_d, 1'b0 };
    assign i_arrayidx8_kmeans0_mult_x_im6_shift0_q = i_arrayidx8_kmeans0_mult_x_im6_shift0_qint[18:0];

    // i_arrayidx8_kmeans0_mult_x_sums_align_2(BITSHIFT,139)@3
    assign i_arrayidx8_kmeans0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx8_kmeans0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx8_kmeans0_mult_x_sums_align_2_q = i_arrayidx8_kmeans0_mult_x_sums_align_2_qint[37:0];

    // i_arrayidx8_kmeans0_mult_x_sums_join_4(BITJOIN,141)@3
    assign i_arrayidx8_kmeans0_mult_x_sums_join_4_q = {i_arrayidx8_kmeans0_mult_x_sums_align_3_q, i_arrayidx8_kmeans0_mult_x_sums_align_2_q};

    // i_arrayidx8_kmeans0_mult_x_im3_shift0(BITSHIFT,160)@3
    assign i_arrayidx8_kmeans0_mult_x_im3_shift0_qint = { i_arrayidx8_kmeans0_mult_x_bs1_merged_bit_select_c, 1'b0 };
    assign i_arrayidx8_kmeans0_mult_x_im3_shift0_q = i_arrayidx8_kmeans0_mult_x_im3_shift0_qint[18:0];

    // i_arrayidx8_kmeans0_mult_x_sums_align_0(BITSHIFT,137)@3
    assign i_arrayidx8_kmeans0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx8_kmeans0_mult_x_im3_shift0_q}, 16'b0000000000000000 };
    assign i_arrayidx8_kmeans0_mult_x_sums_align_0_q = i_arrayidx8_kmeans0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx8_kmeans0_mult_x_im9_shift0(BITSHIFT,162)@3
    assign i_arrayidx8_kmeans0_mult_x_im9_shift0_qint = { i_arrayidx8_kmeans0_mult_x_bs1_merged_bit_select_e, 1'b0 };
    assign i_arrayidx8_kmeans0_mult_x_im9_shift0_q = i_arrayidx8_kmeans0_mult_x_im9_shift0_qint[18:0];

    // i_arrayidx8_kmeans0_mult_x_sums_join_1(BITJOIN,138)@3
    assign i_arrayidx8_kmeans0_mult_x_sums_join_1_q = {i_arrayidx8_kmeans0_mult_x_sums_align_0_q, {1'b0, i_arrayidx8_kmeans0_mult_x_im9_shift0_q}};

    // i_arrayidx8_kmeans0_mult_x_sums_result_add_0_0(ADD,142)@3
    assign i_arrayidx8_kmeans0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx8_kmeans0_mult_x_sums_join_1_q};
    assign i_arrayidx8_kmeans0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx8_kmeans0_mult_x_sums_join_4_q};
    assign i_arrayidx8_kmeans0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx8_kmeans0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx8_kmeans0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx8_kmeans0_mult_x_sums_result_add_0_0_q = i_arrayidx8_kmeans0_mult_x_sums_result_add_0_0_o[66:0];

    // i_arrayidx8_kmeans0_mult_extender_x(BITJOIN,89)@3
    assign i_arrayidx8_kmeans0_mult_extender_x_q = {i_arrayidx8_kmeans0_mult_multconst_x_q, i_arrayidx8_kmeans0_mult_x_sums_result_add_0_0_q[65:0]};

    // i_arrayidx8_kmeans0_trunc_sel_x(BITSELECT,91)@3
    assign i_arrayidx8_kmeans0_trunc_sel_x_b = i_arrayidx8_kmeans0_mult_extender_x_q[63:0];

    // c_kmeans_data_in_pmem(CONSTANT,26)
    assign c_kmeans_data_in_pmem_q = $unsigned(64'b0100000000000110000000000000000000000000000000000000000000000000);

    // i_arrayidx8_kmeans0_add_x(ADD,83)@3
    assign i_arrayidx8_kmeans0_add_x_a = {1'b0, c_kmeans_data_in_pmem_q};
    assign i_arrayidx8_kmeans0_add_x_b = {1'b0, i_arrayidx8_kmeans0_trunc_sel_x_b};
    assign i_arrayidx8_kmeans0_add_x_o = $unsigned(i_arrayidx8_kmeans0_add_x_a) + $unsigned(i_arrayidx8_kmeans0_add_x_b);
    assign i_arrayidx8_kmeans0_add_x_q = i_arrayidx8_kmeans0_add_x_o[64:0];

    // i_arrayidx8_kmeans0_dupName_0_trunc_sel_x(BITSELECT,92)@3
    assign i_arrayidx8_kmeans0_dupName_0_trunc_sel_x_b = i_arrayidx8_kmeans0_add_x_q[63:0];

    // i_arrayidx8_kmeans20_vt_select_63(BITSELECT,31)@3
    assign i_arrayidx8_kmeans20_vt_select_63_b = i_arrayidx8_kmeans0_dupName_0_trunc_sel_x_b[63:1];

    // i_arrayidx8_kmeans20_vt_join(BITJOIN,30)@3
    assign i_arrayidx8_kmeans20_vt_join_q = {i_arrayidx8_kmeans20_vt_select_63_b, GND_q};

    // i_llvm_fpga_mem_memdep_kmeans22(BLACKBOX,50)@3
    // out out_memdep_kmeans_avm_address@20000000
    // out out_memdep_kmeans_avm_burstcount@20000000
    // out out_memdep_kmeans_avm_byteenable@20000000
    // out out_memdep_kmeans_avm_enable@20000000
    // out out_memdep_kmeans_avm_read@20000000
    // out out_memdep_kmeans_avm_write@20000000
    // out out_memdep_kmeans_avm_writedata@20000000
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_o_writeack@4
    kmeans_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_kmeans22 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx8_kmeans20_vt_join_q),
        .in_i_predicate(i_first_cleanup95_xor_or_kmeans21_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_i_writedata(i_conv_kmeans18_sel_x_b),
        .in_memdep_kmeans_avm_readdata(in_memdep_kmeans_avm_readdata),
        .in_memdep_kmeans_avm_readdatavalid(in_memdep_kmeans_avm_readdatavalid),
        .in_memdep_kmeans_avm_waitrequest(in_memdep_kmeans_avm_waitrequest),
        .in_memdep_kmeans_avm_writeack(in_memdep_kmeans_avm_writeack),
        .out_memdep_kmeans_avm_address(i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_address),
        .out_memdep_kmeans_avm_burstcount(i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_burstcount),
        .out_memdep_kmeans_avm_byteenable(i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_byteenable),
        .out_memdep_kmeans_avm_enable(i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_enable),
        .out_memdep_kmeans_avm_read(i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_read),
        .out_memdep_kmeans_avm_write(i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_write),
        .out_memdep_kmeans_avm_writedata(i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,82)
    assign out_memdep_kmeans_avm_address = i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_address;
    assign out_memdep_kmeans_avm_enable = i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_enable;
    assign out_memdep_kmeans_avm_read = i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_read;
    assign out_memdep_kmeans_avm_write = i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_write;
    assign out_memdep_kmeans_avm_writedata = i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_writedata;
    assign out_memdep_kmeans_avm_byteenable = i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_byteenable;
    assign out_memdep_kmeans_avm_burstcount = i_llvm_fpga_mem_memdep_kmeans22_out_memdep_kmeans_avm_burstcount;

    // valid_fanout_reg0(REG,107)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together77_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_masked99_kmeans36(LOGICAL,62)@3 + 1
    assign i_masked99_kmeans36_qi = i_notcmp87_kmeans31_q & i_first_cleanup95_kmeans3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked99_kmeans36_delay ( .xin(i_masked99_kmeans36_qi), .xout(i_masked99_kmeans36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_3(DELAY,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_3_q <= $unsigned(redist6_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_2_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,105)@4
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist7_i_llvm_fpga_pipeline_keep_going90_kmeans6_out_data_out_3_q;
    assign out_c0_exi2_2_tpl = i_masked99_kmeans36_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_kmeans1 = GND_q;

endmodule
