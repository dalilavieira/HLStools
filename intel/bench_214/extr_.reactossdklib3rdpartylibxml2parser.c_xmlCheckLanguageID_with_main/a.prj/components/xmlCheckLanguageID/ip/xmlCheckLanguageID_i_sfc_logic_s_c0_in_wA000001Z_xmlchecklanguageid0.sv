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

// SystemVerilog created from xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000001Z_xmlchecklanguageid0
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000001Z_xmlchecklanguageid0 (
    input wire [63:0] in_lm819_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm819_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_lm819_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm819_xmlCheckLanguageID_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    output wire [7:0] out_intel_reserved_ffwd_8_0,
    output wire [63:0] out_lm819_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm819_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm819_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm819_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm819_xmlCheckLanguageID_avm_writedata,
    output wire [7:0] out_lm819_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm819_xmlCheckLanguageID_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_xmlCheckLanguageID7,
    input wire [0:0] in_c0_eni1201_0_tpl,
    input wire [0:0] in_c0_eni1201_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_102347_q;
    wire [7:0] c_i8_2653_q;
    wire [7:0] c_i8_3351_q;
    wire [7:0] c_i8_6552_q;
    wire [63:0] c_i8_addrspace_1024_undef50_q;
    wire [10:0] i_cleanups_shl_xmlchecklanguageid5_vt_join_q;
    wire [9:0] i_cleanups_shl_xmlchecklanguageid5_vt_select_10_b;
    wire [0:0] i_cur_0_replace_phi_xmlchecklanguageid14_s;
    reg [63:0] i_cur_0_replace_phi_xmlchecklanguageid14_q;
    wire [0:0] i_first_cleanup_xor_or_xmlchecklanguageid16_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp34_xmlchecklanguageid15_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid11_xmlchecklanguageid23_out_dest_data_out_4_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_add_ptr40_xmlchecklanguageid12_out_dest_data_out_7_0;
    wire [7:0] i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid12_xmlchecklanguageid30_out_intel_reserved_ffwd_8_0;
    wire [63:0] i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_feedback_stall_out_31;
    wire [10:0] i_llvm_fpga_pop_i11_initerations_pop30_xmlchecklanguageid7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_initerations_pop30_xmlchecklanguageid7_out_feedback_stall_out_30;
    wire [63:0] i_llvm_fpga_pop_p1024i8_cur_0_pop29_xmlchecklanguageid13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024i8_cur_0_pop29_xmlchecklanguageid13_out_feedback_stall_out_29;
    wire [15:0] i_llvm_fpga_push_i11_cleanups_push31_xmlchecklanguageid29_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i11_cleanups_push31_xmlchecklanguageid29_out_feedback_valid_out_31;
    wire [15:0] i_llvm_fpga_push_i11_initerations_push30_xmlchecklanguageid9_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i11_initerations_push30_xmlchecklanguageid9_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_xmlchecklanguageid11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_xmlchecklanguageid11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_xmlchecklanguageid26_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_xmlchecklanguageid26_out_feedback_valid_out_3;
    wire [63:0] i_llvm_fpga_push_p1024i8_cur_0_push29_xmlchecklanguageid22_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_p1024i8_cur_0_push29_xmlchecklanguageid22_out_feedback_valid_out_29;
    wire [0:0] i_masked_xmlchecklanguageid31_q;
    wire [0:0] i_next_cleanups_xmlchecklanguageid28_s;
    reg [10:0] i_next_cleanups_xmlchecklanguageid28_q;
    wire [10:0] i_next_initerations_xmlchecklanguageid8_vt_join_q;
    wire [9:0] i_next_initerations_xmlchecklanguageid8_vt_select_9_b;
    wire [0:0] i_notcmp_xmlchecklanguageid25_q;
    wire [0:0] i_or_xmlchecklanguageid27_q;
    wire [7:0] i_unnamed_xmlchecklanguageid18_q;
    wire [7:0] i_unnamed_xmlchecklanguageid18_vt_join_q;
    wire [8:0] i_unnamed_xmlchecklanguageid19_a;
    wire [8:0] i_unnamed_xmlchecklanguageid19_b;
    logic [8:0] i_unnamed_xmlchecklanguageid19_o;
    wire [8:0] i_unnamed_xmlchecklanguageid19_q;
    wire [9:0] i_unnamed_xmlchecklanguageid20_a;
    wire [9:0] i_unnamed_xmlchecklanguageid20_b;
    logic [9:0] i_unnamed_xmlchecklanguageid20_o;
    wire [0:0] i_unnamed_xmlchecklanguageid20_c;
    wire [0:0] i_unnamed_xmlchecklanguageid24_q;
    wire [0:0] i_xor_xmlchecklanguageid4_q;
    wire [7:0] bgTrunc_i_unnamed_xmlchecklanguageid19_sel_x_b;
    wire [0:0] i_first_cleanup_xmlchecklanguageid3_sel_x_b;
    wire [64:0] i_incdec_ptr_xmlchecklanguageid0_add_x_a;
    wire [64:0] i_incdec_ptr_xmlchecklanguageid0_add_x_b;
    logic [64:0] i_incdec_ptr_xmlchecklanguageid0_add_x_o;
    wire [64:0] i_incdec_ptr_xmlchecklanguageid0_add_x_q;
    wire [63:0] i_incdec_ptr_xmlchecklanguageid0_c_i64_11_x_q;
    wire [63:0] i_incdec_ptr_xmlchecklanguageid0_trunc_sel_x_b;
    wire [0:0] i_last_initeration_xmlchecklanguageid10_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    wire [9:0] leftShiftStage0Idx1Rng1_uid103_i_cleanups_shl_xmlchecklanguageid0_shift_x_in;
    wire [9:0] leftShiftStage0Idx1Rng1_uid103_i_cleanups_shl_xmlchecklanguageid0_shift_x_b;
    wire [10:0] leftShiftStage0Idx1_uid104_i_cleanups_shl_xmlchecklanguageid0_shift_x_q;
    wire [0:0] leftShiftStage0_uid106_i_cleanups_shl_xmlchecklanguageid0_shift_x_s;
    reg [10:0] leftShiftStage0_uid106_i_cleanups_shl_xmlchecklanguageid0_shift_x_q;
    wire [9:0] rightShiftStage0Idx1Rng1_uid110_i_next_initerations_xmlchecklanguageid0_shift_x_b;
    wire [10:0] rightShiftStage0Idx1_uid112_i_next_initerations_xmlchecklanguageid0_shift_x_q;
    wire [0:0] rightShiftStage0_uid114_i_next_initerations_xmlchecklanguageid0_shift_x_s;
    reg [10:0] rightShiftStage0_uid114_i_next_initerations_xmlchecklanguageid0_shift_x_q;
    wire [4:0] i_unnamed_xmlchecklanguageid18_vt_select_4_merged_bit_select_b;
    wire [1:0] i_unnamed_xmlchecklanguageid18_vt_select_4_merged_bit_select_c;
    reg [0:0] redist0_sync_together69_aunroll_x_in_c0_eni1201_1_tpl_6_q;
    reg [0:0] redist1_sync_together69_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist1_sync_together69_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist1_sync_together69_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist1_sync_together69_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist1_sync_together69_aunroll_x_in_i_valid_5_delay_3;
    reg [0:0] redist2_sync_together69_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist3_sync_together69_aunroll_x_in_i_valid_12_q;
    reg [0:0] redist4_sync_together69_aunroll_x_in_i_valid_13_q;
    reg [0:0] redist5_i_first_cleanup_xmlchecklanguageid3_sel_x_b_7_q;
    reg [0:0] redist6_i_xor_xmlchecklanguageid4_q_7_q;
    reg [0:0] redist8_i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_data_out_7_q;
    reg [10:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_outputreg0_q;
    wire redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_reset0;
    wire [10:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_ia;
    wire [2:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_aa;
    wire [2:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_ab;
    wire [10:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_iq;
    wire [10:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_q;
    wire [2:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_q;
    (* preserve *) reg [2:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_i;
    (* preserve *) reg redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_eq;
    reg [2:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_wraddr_q;
    wire [2:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_last_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_cmp_q;
    (* dont_merge *) reg [0:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_cmpReg_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_notEnable_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_nor_q;
    (* dont_merge *) reg [0:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_sticky_ena_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together69_aunroll_x_in_i_valid_5(DELAY,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together69_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist1_sync_together69_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist1_sync_together69_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist1_sync_together69_aunroll_x_in_i_valid_5_delay_3 <= '0;
            redist1_sync_together69_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist1_sync_together69_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together69_aunroll_x_in_i_valid_5_delay_1 <= redist1_sync_together69_aunroll_x_in_i_valid_5_delay_0;
            redist1_sync_together69_aunroll_x_in_i_valid_5_delay_2 <= redist1_sync_together69_aunroll_x_in_i_valid_5_delay_1;
            redist1_sync_together69_aunroll_x_in_i_valid_5_delay_3 <= redist1_sync_together69_aunroll_x_in_i_valid_5_delay_2;
            redist1_sync_together69_aunroll_x_in_i_valid_5_q <= redist1_sync_together69_aunroll_x_in_i_valid_5_delay_3;
        end
    end

    // redist2_sync_together69_aunroll_x_in_i_valid_6(DELAY,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together69_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist2_sync_together69_aunroll_x_in_i_valid_6_q <= $unsigned(redist1_sync_together69_aunroll_x_in_i_valid_5_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist3_sync_together69_aunroll_x_in_i_valid_12(DELAY,119)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together69_aunroll_x_in_i_valid_12 ( .xin(redist2_sync_together69_aunroll_x_in_i_valid_6_q), .xout(redist3_sync_together69_aunroll_x_in_i_valid_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist4_sync_together69_aunroll_x_in_i_valid_13(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together69_aunroll_x_in_i_valid_13_q <= '0;
        end
        else
        begin
            redist4_sync_together69_aunroll_x_in_i_valid_13_q <= $unsigned(redist3_sync_together69_aunroll_x_in_i_valid_12_q);
        end
    end

    // redist8_i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_data_out_7(DELAY,124)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_data_out_7 ( .xin(i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_data_out), .xout(redist8_i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_data_out_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // leftShiftStage0Idx1Rng1_uid103_i_cleanups_shl_xmlchecklanguageid0_shift_x(BITSELECT,102)@14
    assign leftShiftStage0Idx1Rng1_uid103_i_cleanups_shl_xmlchecklanguageid0_shift_x_in = redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_outputreg0_q[9:0];
    assign leftShiftStage0Idx1Rng1_uid103_i_cleanups_shl_xmlchecklanguageid0_shift_x_b = leftShiftStage0Idx1Rng1_uid103_i_cleanups_shl_xmlchecklanguageid0_shift_x_in[9:0];

    // leftShiftStage0Idx1_uid104_i_cleanups_shl_xmlchecklanguageid0_shift_x(BITJOIN,103)@14
    assign leftShiftStage0Idx1_uid104_i_cleanups_shl_xmlchecklanguageid0_shift_x_q = {leftShiftStage0Idx1Rng1_uid103_i_cleanups_shl_xmlchecklanguageid0_shift_x_b, GND_q};

    // leftShiftStage0_uid106_i_cleanups_shl_xmlchecklanguageid0_shift_x(MUX,105)@14
    assign leftShiftStage0_uid106_i_cleanups_shl_xmlchecklanguageid0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid106_i_cleanups_shl_xmlchecklanguageid0_shift_x_s or redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_outputreg0_q or leftShiftStage0Idx1_uid104_i_cleanups_shl_xmlchecklanguageid0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid106_i_cleanups_shl_xmlchecklanguageid0_shift_x_s)
            1'b0 : leftShiftStage0_uid106_i_cleanups_shl_xmlchecklanguageid0_shift_x_q = redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_outputreg0_q;
            1'b1 : leftShiftStage0_uid106_i_cleanups_shl_xmlchecklanguageid0_shift_x_q = leftShiftStage0Idx1_uid104_i_cleanups_shl_xmlchecklanguageid0_shift_x_q;
            default : leftShiftStage0_uid106_i_cleanups_shl_xmlchecklanguageid0_shift_x_q = 11'b0;
        endcase
    end

    // i_cleanups_shl_xmlchecklanguageid5_vt_select_10(BITSELECT,28)@14
    assign i_cleanups_shl_xmlchecklanguageid5_vt_select_10_b = leftShiftStage0_uid106_i_cleanups_shl_xmlchecklanguageid0_shift_x_q[10:1];

    // i_cleanups_shl_xmlchecklanguageid5_vt_join(BITJOIN,27)@14
    assign i_cleanups_shl_xmlchecklanguageid5_vt_join_q = {i_cleanups_shl_xmlchecklanguageid5_vt_select_10_b, GND_q};

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_notEnable(LOGICAL,132)
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_nor(LOGICAL,133)
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_nor_q = ~ (redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_notEnable_q | redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_sticky_ena_q);

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_last(CONSTANT,129)
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_last_q = $unsigned(3'b011);

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_cmp(LOGICAL,130)
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_cmp_q = $unsigned(redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_last_q == redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_q ? 1'b1 : 1'b0);

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_cmpReg(REG,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_cmpReg_q <= $unsigned(redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_cmp_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_sticky_ena(REG,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_nor_q == 1'b1)
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_sticky_ena_q <= $unsigned(redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_cmpReg_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_enaAnd(LOGICAL,135)
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_enaAnd_q = redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_sticky_ena_q & VCC_q;

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt(COUNTER,127)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_i <= 3'd0;
            redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_i == 3'd3)
            begin
                redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_eq <= 1'b0;
            end
            if (redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_eq == 1'b1)
            begin
                redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_i <= $unsigned(redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_i <= $unsigned(redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_q = redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_i[2:0];

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_wraddr(REG,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_wraddr_q <= $unsigned(redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem(DUALMEM,126)
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_ia = $unsigned(i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out);
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_aa = redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_wraddr_q;
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_ab = redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_rdcnt_q;
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(11),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(11),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_dmem (
        .clocken1(redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_reset0),
        .clock1(clock),
        .address_a(redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_aa),
        .data_a(redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_ab),
        .q_b(redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_iq),
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
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_q = redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_iq[10:0];

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_outputreg0(DELAY,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_outputreg0_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_outputreg0_q <= $unsigned(redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_mem_q);
        end
    end

    // i_xor_xmlchecklanguageid4(LOGICAL,62)@7
    assign i_xor_xmlchecklanguageid4_q = i_first_cleanup_xmlchecklanguageid3_sel_x_b ^ VCC_q;

    // redist6_i_xor_xmlchecklanguageid4_q_7(DELAY,122)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_i_xor_xmlchecklanguageid4_q_7 ( .xin(i_xor_xmlchecklanguageid4_q), .xout(redist6_i_xor_xmlchecklanguageid4_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_notcmp_xmlchecklanguageid25(LOGICAL,52)@14
    assign i_notcmp_xmlchecklanguageid25_q = i_unnamed_xmlchecklanguageid24_q ^ VCC_q;

    // i_or_xmlchecklanguageid27(LOGICAL,53)@14
    assign i_or_xmlchecklanguageid27_q = i_notcmp_xmlchecklanguageid25_q | redist6_i_xor_xmlchecklanguageid4_q_7_q;

    // i_next_cleanups_xmlchecklanguageid28(MUX,48)@14
    assign i_next_cleanups_xmlchecklanguageid28_s = i_or_xmlchecklanguageid27_q;
    always @(i_next_cleanups_xmlchecklanguageid28_s or redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_outputreg0_q or i_cleanups_shl_xmlchecklanguageid5_vt_join_q)
    begin
        unique case (i_next_cleanups_xmlchecklanguageid28_s)
            1'b0 : i_next_cleanups_xmlchecklanguageid28_q = redist7_i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out_7_outputreg0_q;
            1'b1 : i_next_cleanups_xmlchecklanguageid28_q = i_cleanups_shl_xmlchecklanguageid5_vt_join_q;
            default : i_next_cleanups_xmlchecklanguageid28_q = 11'b0;
        endcase
    end

    // i_llvm_fpga_push_i11_cleanups_push31_xmlchecklanguageid29(BLACKBOX,42)@14
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    xmlCheckLanguageID_i_llvm_fpga_push_i11_A000000Z_xmlchecklanguageid0 thei_llvm_fpga_push_i11_cleanups_push31_xmlchecklanguageid29 (
        .in_data_in(i_next_cleanups_xmlchecklanguageid28_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_feedback_stall_out_31),
        .in_keep_going(redist8_i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together69_aunroll_x_in_i_valid_13_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i11_cleanups_push31_xmlchecklanguageid29_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i11_cleanups_push31_xmlchecklanguageid29_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_102347(CONSTANT,3)
    assign c_i11_102347_q = $unsigned(11'b01111111111);

    // i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2(BLACKBOX,39)@7
    // out out_feedback_stall_out_31@20000000
    xmlCheckLanguageID_i_llvm_fpga_pop_i11_cA000000Z_xmlchecklanguageid0 thei_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2 (
        .in_data_in(c_i11_102347_q),
        .in_dir(redist0_sync_together69_aunroll_x_in_c0_eni1201_1_tpl_6_q),
        .in_feedback_in_31(i_llvm_fpga_push_i11_cleanups_push31_xmlchecklanguageid29_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i11_cleanups_push31_xmlchecklanguageid29_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together69_aunroll_x_in_i_valid_6_q),
        .out_data_out(i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xmlchecklanguageid3_sel_x(BITSELECT,77)@7
    assign i_first_cleanup_xmlchecklanguageid3_sel_x_b = i_llvm_fpga_pop_i11_cleanups_pop31_xmlchecklanguageid2_out_data_out[0:0];

    // redist5_i_first_cleanup_xmlchecklanguageid3_sel_x_b_7(DELAY,121)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_i_first_cleanup_xmlchecklanguageid3_sel_x_b_7 ( .xin(i_first_cleanup_xmlchecklanguageid3_sel_x_b), .xout(redist5_i_first_cleanup_xmlchecklanguageid3_sel_x_b_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid11_xmlchecklanguageid23(BLACKBOX,34)@14
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000003Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid11_xmlchecklanguageid23 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together69_aunroll_x_in_i_valid_13_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid11_xmlchecklanguageid23_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_2653(CONSTANT,20)
    assign c_i8_2653_q = $unsigned(8'b00011010);

    // c_i8_6552(CONSTANT,22)
    assign c_i8_6552_q = $unsigned(8'b10111111);

    // c_i8_3351(CONSTANT,21)
    assign c_i8_3351_q = $unsigned(8'b11011111);

    // i_llvm_fpga_ffwd_dest_i1_cmp34_xmlchecklanguageid15(BLACKBOX,33)@7
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000002Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_cmp34_xmlchecklanguageid15 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together69_aunroll_x_in_i_valid_6_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i1_cmp34_xmlchecklanguageid15_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xor_or_xmlchecklanguageid16(LOGICAL,31)@7
    assign i_first_cleanup_xor_or_xmlchecklanguageid16_q = i_llvm_fpga_ffwd_dest_i1_cmp34_xmlchecklanguageid15_out_dest_data_out_1_0 | i_xor_xmlchecklanguageid4_q;

    // i_llvm_fpga_ffwd_dest_p1024i8_add_ptr40_xmlchecklanguageid12(BLACKBOX,35)@7
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000004Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_add_ptr40_xmlchecklanguageid12 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together69_aunroll_x_in_i_valid_6_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_p1024i8_add_ptr40_xmlchecklanguageid12_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_incdec_ptr_xmlchecklanguageid0_c_i64_11_x(CONSTANT,79)
    assign i_incdec_ptr_xmlchecklanguageid0_c_i64_11_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // i_incdec_ptr_xmlchecklanguageid0_add_x(ADD,78)@7
    assign i_incdec_ptr_xmlchecklanguageid0_add_x_a = {1'b0, i_cur_0_replace_phi_xmlchecklanguageid14_q};
    assign i_incdec_ptr_xmlchecklanguageid0_add_x_b = {1'b0, i_incdec_ptr_xmlchecklanguageid0_c_i64_11_x_q};
    assign i_incdec_ptr_xmlchecklanguageid0_add_x_o = $unsigned(i_incdec_ptr_xmlchecklanguageid0_add_x_a) + $unsigned(i_incdec_ptr_xmlchecklanguageid0_add_x_b);
    assign i_incdec_ptr_xmlchecklanguageid0_add_x_q = i_incdec_ptr_xmlchecklanguageid0_add_x_o[64:0];

    // i_incdec_ptr_xmlchecklanguageid0_trunc_sel_x(BITSELECT,81)@7
    assign i_incdec_ptr_xmlchecklanguageid0_trunc_sel_x_b = i_incdec_ptr_xmlchecklanguageid0_add_x_q[63:0];

    // i_llvm_fpga_push_p1024i8_cur_0_push29_xmlchecklanguageid22(BLACKBOX,46)@7
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    xmlCheckLanguageID_i_llvm_fpga_push_p102A000000Z_xmlchecklanguageid0 thei_llvm_fpga_push_p1024i8_cur_0_push29_xmlchecklanguageid22 (
        .in_data_in(i_incdec_ptr_xmlchecklanguageid0_trunc_sel_x_b),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_p1024i8_cur_0_pop29_xmlchecklanguageid13_out_feedback_stall_out_29),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together69_aunroll_x_in_i_valid_6_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_p1024i8_cur_0_push29_xmlchecklanguageid22_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_p1024i8_cur_0_push29_xmlchecklanguageid22_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_addrspace_1024_undef50(CONSTANT,23)
    assign c_i8_addrspace_1024_undef50_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_p1024i8_cur_0_pop29_xmlchecklanguageid13(BLACKBOX,41)@7
    // out out_feedback_stall_out_29@20000000
    xmlCheckLanguageID_i_llvm_fpga_pop_p1024A000000Z_xmlchecklanguageid0 thei_llvm_fpga_pop_p1024i8_cur_0_pop29_xmlchecklanguageid13 (
        .in_data_in(c_i8_addrspace_1024_undef50_q),
        .in_dir(redist0_sync_together69_aunroll_x_in_c0_eni1201_1_tpl_6_q),
        .in_feedback_in_29(i_llvm_fpga_push_p1024i8_cur_0_push29_xmlchecklanguageid22_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_p1024i8_cur_0_push29_xmlchecklanguageid22_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together69_aunroll_x_in_i_valid_6_q),
        .out_data_out(i_llvm_fpga_pop_p1024i8_cur_0_pop29_xmlchecklanguageid13_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_p1024i8_cur_0_pop29_xmlchecklanguageid13_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cur_0_replace_phi_xmlchecklanguageid14(MUX,29)@7
    assign i_cur_0_replace_phi_xmlchecklanguageid14_s = redist0_sync_together69_aunroll_x_in_c0_eni1201_1_tpl_6_q;
    always @(i_cur_0_replace_phi_xmlchecklanguageid14_s or i_llvm_fpga_pop_p1024i8_cur_0_pop29_xmlchecklanguageid13_out_data_out or i_llvm_fpga_ffwd_dest_p1024i8_add_ptr40_xmlchecklanguageid12_out_dest_data_out_7_0)
    begin
        unique case (i_cur_0_replace_phi_xmlchecklanguageid14_s)
            1'b0 : i_cur_0_replace_phi_xmlchecklanguageid14_q = i_llvm_fpga_pop_p1024i8_cur_0_pop29_xmlchecklanguageid13_out_data_out;
            1'b1 : i_cur_0_replace_phi_xmlchecklanguageid14_q = i_llvm_fpga_ffwd_dest_p1024i8_add_ptr40_xmlchecklanguageid12_out_dest_data_out_7_0;
            default : i_cur_0_replace_phi_xmlchecklanguageid14_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_mem_lm819_xmlchecklanguageid17(BLACKBOX,37)@7
    // in in_i_stall@20000000
    // out out_lm819_xmlCheckLanguageID_avm_address@20000000
    // out out_lm819_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm819_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm819_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm819_xmlCheckLanguageID_avm_read@20000000
    // out out_lm819_xmlCheckLanguageID_avm_write@20000000
    // out out_lm819_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_readdata@14
    // out out_o_stall@13
    // out out_o_valid@14
    xmlCheckLanguageID_i_llvm_fpga_mem_lm819_xmlchecklanguageid0 thei_llvm_fpga_mem_lm819_xmlchecklanguageid17 (
        .in_flush(in_flush),
        .in_i_address(i_cur_0_replace_phi_xmlchecklanguageid14_q),
        .in_i_predicate(i_first_cleanup_xor_or_xmlchecklanguageid16_q),
        .in_i_stall(GND_q),
        .in_i_valid(redist2_sync_together69_aunroll_x_in_i_valid_6_q),
        .in_lm819_xmlCheckLanguageID_avm_readdata(in_lm819_xmlCheckLanguageID_avm_readdata),
        .in_lm819_xmlCheckLanguageID_avm_readdatavalid(in_lm819_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm819_xmlCheckLanguageID_avm_waitrequest(in_lm819_xmlCheckLanguageID_avm_waitrequest),
        .in_lm819_xmlCheckLanguageID_avm_writeack(in_lm819_xmlCheckLanguageID_avm_writeack),
        .out_lm819_xmlCheckLanguageID_avm_address(i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_address),
        .out_lm819_xmlCheckLanguageID_avm_burstcount(i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_burstcount),
        .out_lm819_xmlCheckLanguageID_avm_byteenable(i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_byteenable),
        .out_lm819_xmlCheckLanguageID_avm_enable(i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_enable),
        .out_lm819_xmlCheckLanguageID_avm_read(i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_read),
        .out_lm819_xmlCheckLanguageID_avm_write(i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_write),
        .out_lm819_xmlCheckLanguageID_avm_writedata(i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_xmlchecklanguageid18(LOGICAL,54)@14
    assign i_unnamed_xmlchecklanguageid18_q = i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_o_readdata & c_i8_3351_q;

    // i_unnamed_xmlchecklanguageid18_vt_select_4_merged_bit_select(BITSELECT,115)@14
    assign i_unnamed_xmlchecklanguageid18_vt_select_4_merged_bit_select_b = i_unnamed_xmlchecklanguageid18_q[4:0];
    assign i_unnamed_xmlchecklanguageid18_vt_select_4_merged_bit_select_c = i_unnamed_xmlchecklanguageid18_q[7:6];

    // i_unnamed_xmlchecklanguageid18_vt_join(BITJOIN,56)@14
    assign i_unnamed_xmlchecklanguageid18_vt_join_q = {i_unnamed_xmlchecklanguageid18_vt_select_4_merged_bit_select_c, GND_q, i_unnamed_xmlchecklanguageid18_vt_select_4_merged_bit_select_b};

    // i_unnamed_xmlchecklanguageid19(ADD,59)@14
    assign i_unnamed_xmlchecklanguageid19_a = {1'b0, i_unnamed_xmlchecklanguageid18_vt_join_q};
    assign i_unnamed_xmlchecklanguageid19_b = {1'b0, c_i8_6552_q};
    assign i_unnamed_xmlchecklanguageid19_o = $unsigned(i_unnamed_xmlchecklanguageid19_a) + $unsigned(i_unnamed_xmlchecklanguageid19_b);
    assign i_unnamed_xmlchecklanguageid19_q = i_unnamed_xmlchecklanguageid19_o[8:0];

    // bgTrunc_i_unnamed_xmlchecklanguageid19_sel_x(BITSELECT,71)@14
    assign bgTrunc_i_unnamed_xmlchecklanguageid19_sel_x_b = i_unnamed_xmlchecklanguageid19_q[7:0];

    // i_unnamed_xmlchecklanguageid20(COMPARE,60)@14
    assign i_unnamed_xmlchecklanguageid20_a = {2'b00, bgTrunc_i_unnamed_xmlchecklanguageid19_sel_x_b};
    assign i_unnamed_xmlchecklanguageid20_b = {2'b00, c_i8_2653_q};
    assign i_unnamed_xmlchecklanguageid20_o = $unsigned(i_unnamed_xmlchecklanguageid20_a) - $unsigned(i_unnamed_xmlchecklanguageid20_b);
    assign i_unnamed_xmlchecklanguageid20_c[0] = i_unnamed_xmlchecklanguageid20_o[9];

    // i_unnamed_xmlchecklanguageid24(LOGICAL,61)@14
    assign i_unnamed_xmlchecklanguageid24_q = i_unnamed_xmlchecklanguageid20_c & i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid11_xmlchecklanguageid23_out_dest_data_out_4_0;

    // i_llvm_fpga_push_i1_notexitcond_xmlchecklanguageid26(BLACKBOX,45)@14
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    xmlCheckLanguageID_i_llvm_fpga_push_i1_nA000000Z_xmlchecklanguageid0 thei_llvm_fpga_push_i1_notexitcond_xmlchecklanguageid26 (
        .in_data_in(i_unnamed_xmlchecklanguageid24_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_not_exitcond_stall_out),
        .in_first_cleanup(redist5_i_first_cleanup_xmlchecklanguageid3_sel_x_b_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together69_aunroll_x_in_i_valid_13_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_xmlchecklanguageid26_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_xmlchecklanguageid26_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,92)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together69_aunroll_x_in_i_valid_5_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid110_i_next_initerations_xmlchecklanguageid0_shift_x(BITSELECT,109)@7
    assign rightShiftStage0Idx1Rng1_uid110_i_next_initerations_xmlchecklanguageid0_shift_x_b = i_llvm_fpga_pop_i11_initerations_pop30_xmlchecklanguageid7_out_data_out[10:1];

    // rightShiftStage0Idx1_uid112_i_next_initerations_xmlchecklanguageid0_shift_x(BITJOIN,111)@7
    assign rightShiftStage0Idx1_uid112_i_next_initerations_xmlchecklanguageid0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid110_i_next_initerations_xmlchecklanguageid0_shift_x_b};

    // valid_fanout_reg1(REG,90)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist1_sync_together69_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg2(REG,91)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together69_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_i11_initerations_push30_xmlchecklanguageid9(BLACKBOX,43)@7
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    xmlCheckLanguageID_i_llvm_fpga_push_i11_A000001Z_xmlchecklanguageid0 thei_llvm_fpga_push_i11_initerations_push30_xmlchecklanguageid9 (
        .in_data_in(i_next_initerations_xmlchecklanguageid8_vt_join_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i11_initerations_pop30_xmlchecklanguageid7_out_feedback_stall_out_30),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i11_initerations_push30_xmlchecklanguageid9_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i11_initerations_push30_xmlchecklanguageid9_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i11_initerations_pop30_xmlchecklanguageid7(BLACKBOX,40)@7
    // out out_feedback_stall_out_30@20000000
    xmlCheckLanguageID_i_llvm_fpga_pop_i11_iA000000Z_xmlchecklanguageid0 thei_llvm_fpga_pop_i11_initerations_pop30_xmlchecklanguageid7 (
        .in_data_in(c_i11_102347_q),
        .in_dir(redist0_sync_together69_aunroll_x_in_c0_eni1201_1_tpl_6_q),
        .in_feedback_in_30(i_llvm_fpga_push_i11_initerations_push30_xmlchecklanguageid9_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i11_initerations_push30_xmlchecklanguageid9_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i11_initerations_pop30_xmlchecklanguageid7_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i11_initerations_pop30_xmlchecklanguageid7_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid114_i_next_initerations_xmlchecklanguageid0_shift_x(MUX,113)@7
    assign rightShiftStage0_uid114_i_next_initerations_xmlchecklanguageid0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid114_i_next_initerations_xmlchecklanguageid0_shift_x_s or i_llvm_fpga_pop_i11_initerations_pop30_xmlchecklanguageid7_out_data_out or rightShiftStage0Idx1_uid112_i_next_initerations_xmlchecklanguageid0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid114_i_next_initerations_xmlchecklanguageid0_shift_x_s)
            1'b0 : rightShiftStage0_uid114_i_next_initerations_xmlchecklanguageid0_shift_x_q = i_llvm_fpga_pop_i11_initerations_pop30_xmlchecklanguageid7_out_data_out;
            1'b1 : rightShiftStage0_uid114_i_next_initerations_xmlchecklanguageid0_shift_x_q = rightShiftStage0Idx1_uid112_i_next_initerations_xmlchecklanguageid0_shift_x_q;
            default : rightShiftStage0_uid114_i_next_initerations_xmlchecklanguageid0_shift_x_q = 11'b0;
        endcase
    end

    // i_next_initerations_xmlchecklanguageid8_vt_select_9(BITSELECT,51)@7
    assign i_next_initerations_xmlchecklanguageid8_vt_select_9_b = rightShiftStage0_uid114_i_next_initerations_xmlchecklanguageid0_shift_x_q[9:0];

    // i_next_initerations_xmlchecklanguageid8_vt_join(BITJOIN,50)@7
    assign i_next_initerations_xmlchecklanguageid8_vt_join_q = {GND_q, i_next_initerations_xmlchecklanguageid8_vt_select_9_b};

    // i_last_initeration_xmlchecklanguageid10_sel_x(BITSELECT,82)@7
    assign i_last_initeration_xmlchecklanguageid10_sel_x_b = i_next_initerations_xmlchecklanguageid8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_xmlchecklanguageid11(BLACKBOX,44)@7
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    xmlCheckLanguageID_i_llvm_fpga_push_i1_lA000000Z_xmlchecklanguageid0 thei_llvm_fpga_push_i1_lastiniteration_xmlchecklanguageid11 (
        .in_data_in(i_last_initeration_xmlchecklanguageid10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_xmlchecklanguageid11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_xmlchecklanguageid11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together69_aunroll_x_in_c0_eni1201_1_tpl_6(DELAY,116)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together69_aunroll_x_in_c0_eni1201_1_tpl_6 ( .xin(in_c0_eni1201_1_tpl), .xout(redist0_sync_together69_aunroll_x_in_c0_eni1201_1_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6(BLACKBOX,38)@7
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_pipeline_A000000Z_xmlchecklanguageid0 thei_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6 (
        .in_data_in(redist0_sync_together69_aunroll_x_in_c0_eni1201_1_tpl_6_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_xmlchecklanguageid11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_xmlchecklanguageid11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_xmlchecklanguageid26_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_xmlchecklanguageid26_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together69_aunroll_x_in_i_valid_6_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,25)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,64)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_pipeline_valid_out;

    // valid_fanout_reg4(REG,93)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together69_aunroll_x_in_i_valid_12_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid12_xmlchecklanguageid30(BLACKBOX,36)@14
    // out out_intel_reserved_ffwd_8_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000008Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid12_xmlchecklanguageid30 (
        .in_predicate_in(redist6_i_xor_xmlchecklanguageid4_q_7_q),
        .in_src_data_in_8_0(i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_o_readdata),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid12_xmlchecklanguageid30_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,69)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid12_xmlchecklanguageid30_out_intel_reserved_ffwd_8_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,72)
    assign out_lm819_xmlCheckLanguageID_avm_address = i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_address;
    assign out_lm819_xmlCheckLanguageID_avm_enable = i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_enable;
    assign out_lm819_xmlCheckLanguageID_avm_read = i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_read;
    assign out_lm819_xmlCheckLanguageID_avm_write = i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_write;
    assign out_lm819_xmlCheckLanguageID_avm_writedata = i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_writedata;
    assign out_lm819_xmlCheckLanguageID_avm_byteenable = i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_byteenable;
    assign out_lm819_xmlCheckLanguageID_avm_burstcount = i_llvm_fpga_mem_lm819_xmlchecklanguageid17_out_lm819_xmlCheckLanguageID_avm_burstcount;

    // valid_fanout_reg0(REG,89)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together69_aunroll_x_in_i_valid_12_q);
        end
    end

    // i_masked_xmlchecklanguageid31(LOGICAL,47)@14
    assign i_masked_xmlchecklanguageid31_q = i_notcmp_xmlchecklanguageid25_q & redist5_i_first_cleanup_xmlchecklanguageid3_sel_x_b_7_q;

    // sync_out_aunroll_x(GPOUT,87)@14
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist8_i_llvm_fpga_pipeline_keep_going_xmlchecklanguageid6_out_data_out_7_q;
    assign out_c0_exi2_2_tpl = i_masked_xmlchecklanguageid31_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_xmlCheckLanguageID7 = GND_q;

endmodule
