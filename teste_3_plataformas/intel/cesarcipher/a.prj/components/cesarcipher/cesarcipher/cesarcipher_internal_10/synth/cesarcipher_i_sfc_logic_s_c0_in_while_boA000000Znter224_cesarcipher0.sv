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

// SystemVerilog created from cesarcipher_i_sfc_logic_s_c0_in_while_boA000000Znter224_cesarcipher0
// SystemVerilog created on Mon Apr  6 12:54:01 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cesarcipher_i_sfc_logic_s_c0_in_while_boA000000Znter224_cesarcipher0 (
    input wire [63:0] in_lm1_cesarcipher_avm_readdata,
    input wire [0:0] in_lm1_cesarcipher_avm_writeack,
    input wire [0:0] in_lm1_cesarcipher_avm_waitrequest,
    input wire [0:0] in_lm1_cesarcipher_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cesarcipher6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cesarcipher6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    output wire [63:0] out_lm1_cesarcipher_avm_address,
    output wire [0:0] out_lm1_cesarcipher_avm_enable,
    output wire [0:0] out_lm1_cesarcipher_avm_read,
    output wire [0:0] out_lm1_cesarcipher_avm_write,
    output wire [63:0] out_lm1_cesarcipher_avm_writedata,
    output wire [7:0] out_lm1_cesarcipher_avm_byteenable,
    output wire [0:0] out_lm1_cesarcipher_avm_burstcount,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_cesarcipher1,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [0:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_102349_q;
    wire [31:0] c_i32_052_q;
    wire [31:0] c_i32_153_q;
    wire [10:0] i_cleanups_shl_cesarcipher5_vt_join_q;
    wire [9:0] i_cleanups_shl_cesarcipher5_vt_select_10_b;
    wire [0:0] i_cmp2_cesarcipher21_q;
    wire [0:0] i_first_cleanup_xor_or_cesarcipher19_q;
    wire [63:0] i_idxprom_cesarcipher15_vt_join_q;
    wire [31:0] i_idxprom_cesarcipher15_vt_select_31_b;
    wire [32:0] i_inc_cesarcipher13_a;
    wire [32:0] i_inc_cesarcipher13_b;
    logic [32:0] i_inc_cesarcipher13_o;
    wire [32:0] i_inc_cesarcipher13_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2203_cesarcipher18_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2204_cesarcipher23_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_palavra262_cesarcipher16_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm1_cesarcipher20_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_feedback_stall_out_11;
    wire [10:0] i_llvm_fpga_pop_i11_initerations_pop10_cesarcipher7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_initerations_pop10_cesarcipher7_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_feedback_stall_out_12;
    wire [31:0] i_llvm_fpga_pop_i32_i_021_pop9_cesarcipher12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_021_pop9_cesarcipher12_out_feedback_stall_out_9;
    wire [15:0] i_llvm_fpga_push_i11_cleanups_push11_cesarcipher29_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i11_cleanups_push11_cesarcipher29_out_feedback_valid_out_11;
    wire [15:0] i_llvm_fpga_push_i11_initerations_push10_cesarcipher9_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i11_initerations_push10_cesarcipher9_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_cesarcipher11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_cesarcipher11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp14_push12_cesarcipher32_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notcmp14_push12_cesarcipher32_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_cesarcipher26_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_cesarcipher26_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_021_push9_cesarcipher14_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_i_021_push9_cesarcipher14_out_feedback_valid_out_9;
    wire [0:0] i_masked_cesarcipher30_q;
    wire [0:0] i_next_cleanups_cesarcipher28_s;
    reg [10:0] i_next_cleanups_cesarcipher28_q;
    wire [10:0] i_next_initerations_cesarcipher8_vt_join_q;
    wire [9:0] i_next_initerations_cesarcipher8_vt_select_9_b;
    wire [0:0] i_notexit_cesarcipher25_q;
    wire [0:0] i_or_cesarcipher27_q;
    wire [0:0] i_unnamed_cesarcipher24_q;
    wire [0:0] i_xor_cesarcipher4_q;
    wire [31:0] bgTrunc_i_inc_cesarcipher13_sel_x_b;
    wire [7:0] c_i8_054_recast_x_q;
    wire [64:0] i_arrayidx_cesarcipher0_add_x_a;
    wire [64:0] i_arrayidx_cesarcipher0_add_x_b;
    logic [64:0] i_arrayidx_cesarcipher0_add_x_o;
    wire [64:0] i_arrayidx_cesarcipher0_add_x_q;
    wire [63:0] i_arrayidx_cesarcipher0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_cesarcipher3_sel_x_b;
    wire [63:0] i_idxprom_cesarcipher15_sel_x_b;
    wire [0:0] i_last_initeration_cesarcipher10_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    wire [9:0] leftShiftStage0Idx1Rng1_uid103_i_cleanups_shl_cesarcipher0_shift_x_in;
    wire [9:0] leftShiftStage0Idx1Rng1_uid103_i_cleanups_shl_cesarcipher0_shift_x_b;
    wire [10:0] leftShiftStage0Idx1_uid104_i_cleanups_shl_cesarcipher0_shift_x_q;
    wire [0:0] leftShiftStage0_uid106_i_cleanups_shl_cesarcipher0_shift_x_s;
    reg [10:0] leftShiftStage0_uid106_i_cleanups_shl_cesarcipher0_shift_x_q;
    wire [9:0] rightShiftStage0Idx1Rng1_uid110_i_next_initerations_cesarcipher0_shift_x_b;
    wire [10:0] rightShiftStage0Idx1_uid112_i_next_initerations_cesarcipher0_shift_x_q;
    wire [0:0] rightShiftStage0_uid114_i_next_initerations_cesarcipher0_shift_x_s;
    reg [10:0] rightShiftStage0_uid114_i_next_initerations_cesarcipher0_shift_x_q;
    reg [0:0] redist0_sync_together71_aunroll_x_in_c0_eni2_1_tpl_3_q;
    reg [0:0] redist0_sync_together71_aunroll_x_in_c0_eni2_1_tpl_3_delay_0;
    reg [0:0] redist0_sync_together71_aunroll_x_in_c0_eni2_1_tpl_3_delay_1;
    reg [0:0] redist1_sync_together71_aunroll_x_in_c0_eni2_1_tpl_4_q;
    reg [0:0] redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_q;
    reg [0:0] redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_delay_0;
    reg [0:0] redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_delay_1;
    reg [0:0] redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_delay_2;
    reg [0:0] redist3_sync_together71_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist3_sync_together71_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist3_sync_together71_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist4_sync_together71_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist5_sync_together71_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist5_sync_together71_aunroll_x_in_i_valid_8_delay_0;
    reg [0:0] redist5_sync_together71_aunroll_x_in_i_valid_8_delay_1;
    reg [0:0] redist5_sync_together71_aunroll_x_in_i_valid_8_delay_2;
    reg [0:0] redist6_sync_together71_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_q;
    reg [0:0] redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_0;
    reg [0:0] redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_1;
    reg [0:0] redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_2;
    reg [0:0] redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_3;
    reg [0:0] redist8_i_xor_cesarcipher4_q_5_q;
    reg [0:0] redist8_i_xor_cesarcipher4_q_5_delay_0;
    reg [0:0] redist8_i_xor_cesarcipher4_q_5_delay_1;
    reg [0:0] redist8_i_xor_cesarcipher4_q_5_delay_2;
    reg [0:0] redist8_i_xor_cesarcipher4_q_5_delay_3;
    reg [31:0] redist9_i_llvm_fpga_pop_i32_i_021_pop9_cesarcipher12_out_data_out_1_q;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_q;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_0;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_1;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_2;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_3;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_q;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_0;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_1;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_2;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_3;
    reg [10:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_outputreg0_q;
    wire redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_reset0;
    wire [10:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_ia;
    wire [1:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_aa;
    wire [1:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_ab;
    wire [10:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_iq;
    wire [10:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_q;
    wire [1:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_i;
    (* preserve *) reg redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_eq;
    reg [1:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_wraddr_q;
    wire [1:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_last_q;
    wire [0:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_cmpReg_q;
    wire [0:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_notEnable_q;
    wire [0:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_sticky_ena_q;
    wire [0:0] redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together71_aunroll_x_in_i_valid_3(DELAY,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together71_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist3_sync_together71_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist3_sync_together71_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist3_sync_together71_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist3_sync_together71_aunroll_x_in_i_valid_3_delay_1 <= redist3_sync_together71_aunroll_x_in_i_valid_3_delay_0;
            redist3_sync_together71_aunroll_x_in_i_valid_3_q <= redist3_sync_together71_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // redist4_sync_together71_aunroll_x_in_i_valid_4(DELAY,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together71_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist4_sync_together71_aunroll_x_in_i_valid_4_q <= $unsigned(redist3_sync_together71_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist5_sync_together71_aunroll_x_in_i_valid_8(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together71_aunroll_x_in_i_valid_8_delay_0 <= '0;
            redist5_sync_together71_aunroll_x_in_i_valid_8_delay_1 <= '0;
            redist5_sync_together71_aunroll_x_in_i_valid_8_delay_2 <= '0;
            redist5_sync_together71_aunroll_x_in_i_valid_8_q <= '0;
        end
        else
        begin
            redist5_sync_together71_aunroll_x_in_i_valid_8_delay_0 <= $unsigned(redist4_sync_together71_aunroll_x_in_i_valid_4_q);
            redist5_sync_together71_aunroll_x_in_i_valid_8_delay_1 <= redist5_sync_together71_aunroll_x_in_i_valid_8_delay_0;
            redist5_sync_together71_aunroll_x_in_i_valid_8_delay_2 <= redist5_sync_together71_aunroll_x_in_i_valid_8_delay_1;
            redist5_sync_together71_aunroll_x_in_i_valid_8_q <= redist5_sync_together71_aunroll_x_in_i_valid_8_delay_2;
        end
    end

    // redist6_sync_together71_aunroll_x_in_i_valid_9(DELAY,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together71_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist6_sync_together71_aunroll_x_in_i_valid_9_q <= $unsigned(redist5_sync_together71_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5(DELAY,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_0 <= '0;
            redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_1 <= '0;
            redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_2 <= '0;
            redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_3 <= '0;
            redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out);
            redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_1 <= redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_0;
            redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_2 <= redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_1;
            redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_3 <= redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_2;
            redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_q <= redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_delay_3;
        end
    end

    // leftShiftStage0Idx1Rng1_uid103_i_cleanups_shl_cesarcipher0_shift_x(BITSELECT,102)@10
    assign leftShiftStage0Idx1Rng1_uid103_i_cleanups_shl_cesarcipher0_shift_x_in = redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_outputreg0_q[9:0];
    assign leftShiftStage0Idx1Rng1_uid103_i_cleanups_shl_cesarcipher0_shift_x_b = leftShiftStage0Idx1Rng1_uid103_i_cleanups_shl_cesarcipher0_shift_x_in[9:0];

    // leftShiftStage0Idx1_uid104_i_cleanups_shl_cesarcipher0_shift_x(BITJOIN,103)@10
    assign leftShiftStage0Idx1_uid104_i_cleanups_shl_cesarcipher0_shift_x_q = {leftShiftStage0Idx1Rng1_uid103_i_cleanups_shl_cesarcipher0_shift_x_b, GND_q};

    // leftShiftStage0_uid106_i_cleanups_shl_cesarcipher0_shift_x(MUX,105)@10
    assign leftShiftStage0_uid106_i_cleanups_shl_cesarcipher0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid106_i_cleanups_shl_cesarcipher0_shift_x_s or redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_outputreg0_q or leftShiftStage0Idx1_uid104_i_cleanups_shl_cesarcipher0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid106_i_cleanups_shl_cesarcipher0_shift_x_s)
            1'b0 : leftShiftStage0_uid106_i_cleanups_shl_cesarcipher0_shift_x_q = redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_outputreg0_q;
            1'b1 : leftShiftStage0_uid106_i_cleanups_shl_cesarcipher0_shift_x_q = leftShiftStage0Idx1_uid104_i_cleanups_shl_cesarcipher0_shift_x_q;
            default : leftShiftStage0_uid106_i_cleanups_shl_cesarcipher0_shift_x_q = 11'b0;
        endcase
    end

    // i_cleanups_shl_cesarcipher5_vt_select_10(BITSELECT,27)@10
    assign i_cleanups_shl_cesarcipher5_vt_select_10_b = leftShiftStage0_uid106_i_cleanups_shl_cesarcipher0_shift_x_q[10:1];

    // i_cleanups_shl_cesarcipher5_vt_join(BITJOIN,26)@10
    assign i_cleanups_shl_cesarcipher5_vt_join_q = {i_cleanups_shl_cesarcipher5_vt_select_10_b, GND_q};

    // redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_notEnable(LOGICAL,135)
    assign redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_nor(LOGICAL,136)
    assign redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_nor_q = ~ (redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_notEnable_q | redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_sticky_ena_q);

    // redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_last(CONSTANT,132)
    assign redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_last_q = $unsigned(2'b01);

    // redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_cmp(LOGICAL,133)
    assign redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_cmp_q = $unsigned(redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_last_q == redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_cmpReg(REG,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_cmpReg_q <= $unsigned(redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_cmp_q);
        end
    end

    // redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_sticky_ena(REG,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_nor_q == 1'b1)
        begin
            redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_sticky_ena_q <= $unsigned(redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_cmpReg_q);
        end
    end

    // redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_enaAnd(LOGICAL,138)
    assign redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_enaAnd_q = redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_sticky_ena_q & VCC_q;

    // redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt(COUNTER,130)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_i <= 2'd0;
            redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_i == 2'd1)
            begin
                redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_eq <= 1'b0;
            end
            if (redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_eq == 1'b1)
            begin
                redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_i <= $unsigned(redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_i <= $unsigned(redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_q = redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_i[1:0];

    // redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_wraddr(REG,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_wraddr_q <= $unsigned(redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_q);
        end
    end

    // redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem(DUALMEM,129)
    assign redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_ia = $unsigned(i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out);
    assign redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_aa = redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_wraddr_q;
    assign redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_ab = redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_rdcnt_q;
    assign redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(11),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(11),
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
    ) redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_dmem (
        .clocken1(redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_aa),
        .data_a(redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_ab),
        .q_b(redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_iq),
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
    assign redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_q = redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_iq[10:0];

    // redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_outputreg0(DELAY,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_outputreg0_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_outputreg0_q <= $unsigned(redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_mem_q);
        end
    end

    // i_xor_cesarcipher4(LOGICAL,60)@5
    assign i_xor_cesarcipher4_q = i_first_cleanup_cesarcipher3_sel_x_b ^ VCC_q;

    // redist8_i_xor_cesarcipher4_q_5(DELAY,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_xor_cesarcipher4_q_5_delay_0 <= '0;
            redist8_i_xor_cesarcipher4_q_5_delay_1 <= '0;
            redist8_i_xor_cesarcipher4_q_5_delay_2 <= '0;
            redist8_i_xor_cesarcipher4_q_5_delay_3 <= '0;
            redist8_i_xor_cesarcipher4_q_5_q <= '0;
        end
        else
        begin
            redist8_i_xor_cesarcipher4_q_5_delay_0 <= $unsigned(i_xor_cesarcipher4_q);
            redist8_i_xor_cesarcipher4_q_5_delay_1 <= redist8_i_xor_cesarcipher4_q_5_delay_0;
            redist8_i_xor_cesarcipher4_q_5_delay_2 <= redist8_i_xor_cesarcipher4_q_5_delay_1;
            redist8_i_xor_cesarcipher4_q_5_delay_3 <= redist8_i_xor_cesarcipher4_q_5_delay_2;
            redist8_i_xor_cesarcipher4_q_5_q <= redist8_i_xor_cesarcipher4_q_5_delay_3;
        end
    end

    // c_i8_054_recast_x(CONSTANT,69)
    assign c_i8_054_recast_x_q = $unsigned(8'b00000000);

    // i_llvm_fpga_ffwd_dest_i1_cmp2203_cesarcipher18(BLACKBOX,37)@5
    cesarcipher_i_llvm_fpga_ffwd_dest_i1_cmp2203_0 thei_llvm_fpga_ffwd_dest_i1_cmp2203_cesarcipher18 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together71_aunroll_x_in_i_valid_4_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i1_cmp2203_cesarcipher18_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xor_or_cesarcipher19(LOGICAL,30)@5
    assign i_first_cleanup_xor_or_cesarcipher19_q = i_llvm_fpga_ffwd_dest_i1_cmp2203_cesarcipher18_out_dest_data_out_1_0 | i_xor_cesarcipher4_q;

    // c_i32_052(CONSTANT,21)
    assign c_i32_052_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_153(CONSTANT,22)
    assign c_i32_153_q = $unsigned(32'b00000000000000000000000000000001);

    // i_llvm_fpga_push_i32_i_021_push9_cesarcipher14(BLACKBOX,51)@5
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    cesarcipher_i_llvm_fpga_push_i32_i_021_push9_0 thei_llvm_fpga_push_i32_i_021_push9_cesarcipher14 (
        .in_data_in(bgTrunc_i_inc_cesarcipher13_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_i_021_pop9_cesarcipher12_out_feedback_stall_out_9),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together71_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_i_021_push9_cesarcipher14_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_i_021_push9_cesarcipher14_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together71_aunroll_x_in_c0_eni2_1_tpl_3(DELAY,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together71_aunroll_x_in_c0_eni2_1_tpl_3_delay_0 <= '0;
            redist0_sync_together71_aunroll_x_in_c0_eni2_1_tpl_3_delay_1 <= '0;
            redist0_sync_together71_aunroll_x_in_c0_eni2_1_tpl_3_q <= '0;
        end
        else
        begin
            redist0_sync_together71_aunroll_x_in_c0_eni2_1_tpl_3_delay_0 <= $unsigned(in_c0_eni2_1_tpl);
            redist0_sync_together71_aunroll_x_in_c0_eni2_1_tpl_3_delay_1 <= redist0_sync_together71_aunroll_x_in_c0_eni2_1_tpl_3_delay_0;
            redist0_sync_together71_aunroll_x_in_c0_eni2_1_tpl_3_q <= redist0_sync_together71_aunroll_x_in_c0_eni2_1_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_i32_i_021_pop9_cesarcipher12(BLACKBOX,45)@4
    // out out_feedback_stall_out_9@20000000
    cesarcipher_i_llvm_fpga_pop_i32_i_021_pop9_0 thei_llvm_fpga_pop_i32_i_021_pop9_cesarcipher12 (
        .in_data_in(c_i32_052_q),
        .in_dir(redist0_sync_together71_aunroll_x_in_c0_eni2_1_tpl_3_q),
        .in_feedback_in_9(i_llvm_fpga_push_i32_i_021_push9_cesarcipher14_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_i_021_push9_cesarcipher14_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together71_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_021_pop9_cesarcipher12_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_i_021_pop9_cesarcipher12_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_pop_i32_i_021_pop9_cesarcipher12_out_data_out_1(DELAY,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_i_021_pop9_cesarcipher12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i32_i_021_pop9_cesarcipher12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_021_pop9_cesarcipher12_out_data_out);
        end
    end

    // i_inc_cesarcipher13(ADD,35)@5
    assign i_inc_cesarcipher13_a = {1'b0, redist9_i_llvm_fpga_pop_i32_i_021_pop9_cesarcipher12_out_data_out_1_q};
    assign i_inc_cesarcipher13_b = {1'b0, c_i32_153_q};
    assign i_inc_cesarcipher13_o = $unsigned(i_inc_cesarcipher13_a) + $unsigned(i_inc_cesarcipher13_b);
    assign i_inc_cesarcipher13_q = i_inc_cesarcipher13_o[32:0];

    // bgTrunc_i_inc_cesarcipher13_sel_x(BITSELECT,68)@5
    assign bgTrunc_i_inc_cesarcipher13_sel_x_b = i_inc_cesarcipher13_q[31:0];

    // i_idxprom_cesarcipher15_sel_x(BITSELECT,79)@5
    assign i_idxprom_cesarcipher15_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_inc_cesarcipher13_sel_x_b[31:0]};

    // i_idxprom_cesarcipher15_vt_select_31(BITSELECT,34)@5
    assign i_idxprom_cesarcipher15_vt_select_31_b = i_idxprom_cesarcipher15_sel_x_b[31:0];

    // i_idxprom_cesarcipher15_vt_join(BITJOIN,33)@5
    assign i_idxprom_cesarcipher15_vt_join_q = {c_i32_052_q, i_idxprom_cesarcipher15_vt_select_31_b};

    // i_llvm_fpga_ffwd_dest_p1024i8_palavra262_cesarcipher16(BLACKBOX,39)@5
    cesarcipher_i_llvm_fpga_ffwd_dest_p1024i8_palavra262_0 thei_llvm_fpga_ffwd_dest_p1024i8_palavra262_cesarcipher16 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together71_aunroll_x_in_i_valid_4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i8_palavra262_cesarcipher16_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx_cesarcipher0_add_x(ADD,71)@5
    assign i_arrayidx_cesarcipher0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i8_palavra262_cesarcipher16_out_dest_data_out_0_0};
    assign i_arrayidx_cesarcipher0_add_x_b = {1'b0, i_idxprom_cesarcipher15_vt_join_q};
    assign i_arrayidx_cesarcipher0_add_x_o = $unsigned(i_arrayidx_cesarcipher0_add_x_a) + $unsigned(i_arrayidx_cesarcipher0_add_x_b);
    assign i_arrayidx_cesarcipher0_add_x_q = i_arrayidx_cesarcipher0_add_x_o[64:0];

    // i_arrayidx_cesarcipher0_trunc_sel_x(BITSELECT,73)@5
    assign i_arrayidx_cesarcipher0_trunc_sel_x_b = i_arrayidx_cesarcipher0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm1_cesarcipher20(BLACKBOX,40)@5
    // in in_i_stall@20000000
    // out out_lm1_cesarcipher_avm_address@20000000
    // out out_lm1_cesarcipher_avm_burstcount@20000000
    // out out_lm1_cesarcipher_avm_byteenable@20000000
    // out out_lm1_cesarcipher_avm_enable@20000000
    // out out_lm1_cesarcipher_avm_read@20000000
    // out out_lm1_cesarcipher_avm_write@20000000
    // out out_lm1_cesarcipher_avm_writedata@20000000
    // out out_o_readdata@10
    // out out_o_stall@9
    // out out_o_valid@10
    cesarcipher_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_cesarcipher20 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx_cesarcipher0_trunc_sel_x_b),
        .in_i_predicate(i_first_cleanup_xor_or_cesarcipher19_q),
        .in_i_stall(GND_q),
        .in_i_valid(redist4_sync_together71_aunroll_x_in_i_valid_4_q),
        .in_lm1_cesarcipher_avm_readdata(in_lm1_cesarcipher_avm_readdata),
        .in_lm1_cesarcipher_avm_readdatavalid(in_lm1_cesarcipher_avm_readdatavalid),
        .in_lm1_cesarcipher_avm_waitrequest(in_lm1_cesarcipher_avm_waitrequest),
        .in_lm1_cesarcipher_avm_writeack(in_lm1_cesarcipher_avm_writeack),
        .out_lm1_cesarcipher_avm_address(i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_address),
        .out_lm1_cesarcipher_avm_burstcount(i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_burstcount),
        .out_lm1_cesarcipher_avm_byteenable(i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_byteenable),
        .out_lm1_cesarcipher_avm_enable(i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_enable),
        .out_lm1_cesarcipher_avm_read(i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_read),
        .out_lm1_cesarcipher_avm_write(i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_write),
        .out_lm1_cesarcipher_avm_writedata(i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_cesarcipher20_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp2_cesarcipher21(LOGICAL,28)@10
    assign i_cmp2_cesarcipher21_q = $unsigned(i_llvm_fpga_mem_lm1_cesarcipher20_out_o_readdata == c_i8_054_recast_x_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_ffwd_dest_i1_cmp2204_cesarcipher23(BLACKBOX,38)@10
    cesarcipher_i_llvm_fpga_ffwd_dest_i1_cmp2204_0 thei_llvm_fpga_ffwd_dest_i1_cmp2204_cesarcipher23 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together71_aunroll_x_in_i_valid_9_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i1_cmp2204_cesarcipher23_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_cesarcipher24(LOGICAL,59)@10
    assign i_unnamed_cesarcipher24_q = i_llvm_fpga_ffwd_dest_i1_cmp2204_cesarcipher23_out_dest_data_out_1_0 | i_cmp2_cesarcipher21_q;

    // i_or_cesarcipher27(LOGICAL,58)@10
    assign i_or_cesarcipher27_q = i_unnamed_cesarcipher24_q | redist8_i_xor_cesarcipher4_q_5_q;

    // i_next_cleanups_cesarcipher28(MUX,53)@10
    assign i_next_cleanups_cesarcipher28_s = i_or_cesarcipher27_q;
    always @(i_next_cleanups_cesarcipher28_s or redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_outputreg0_q or i_cleanups_shl_cesarcipher5_vt_join_q)
    begin
        unique case (i_next_cleanups_cesarcipher28_s)
            1'b0 : i_next_cleanups_cesarcipher28_q = redist11_i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out_5_outputreg0_q;
            1'b1 : i_next_cleanups_cesarcipher28_q = i_cleanups_shl_cesarcipher5_vt_join_q;
            default : i_next_cleanups_cesarcipher28_q = 11'b0;
        endcase
    end

    // i_llvm_fpga_push_i11_cleanups_push11_cesarcipher29(BLACKBOX,46)@10
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    cesarcipher_i_llvm_fpga_push_i11_cleanups_push11_0 thei_llvm_fpga_push_i11_cleanups_push11_cesarcipher29 (
        .in_data_in(i_next_cleanups_cesarcipher28_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_feedback_stall_out_11),
        .in_keep_going(redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together71_aunroll_x_in_i_valid_9_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i11_cleanups_push11_cesarcipher29_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i11_cleanups_push11_cesarcipher29_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_102349(CONSTANT,3)
    assign c_i11_102349_q = $unsigned(11'b01111111111);

    // i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2(BLACKBOX,42)@5
    // out out_feedback_stall_out_11@20000000
    cesarcipher_i_llvm_fpga_pop_i11_cleanups_pop11_0 thei_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2 (
        .in_data_in(c_i11_102349_q),
        .in_dir(redist1_sync_together71_aunroll_x_in_c0_eni2_1_tpl_4_q),
        .in_feedback_in_11(i_llvm_fpga_push_i11_cleanups_push11_cesarcipher29_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i11_cleanups_push11_cesarcipher29_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together71_aunroll_x_in_i_valid_4_q),
        .out_data_out(i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_cesarcipher3_sel_x(BITSELECT,78)@5
    assign i_first_cleanup_cesarcipher3_sel_x_b = i_llvm_fpga_pop_i11_cleanups_pop11_cesarcipher2_out_data_out[0:0];

    // redist7_i_first_cleanup_cesarcipher3_sel_x_b_5(DELAY,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_0 <= '0;
            redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_1 <= '0;
            redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_2 <= '0;
            redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_3 <= '0;
            redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_q <= '0;
        end
        else
        begin
            redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_0 <= $unsigned(i_first_cleanup_cesarcipher3_sel_x_b);
            redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_1 <= redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_0;
            redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_2 <= redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_1;
            redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_3 <= redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_2;
            redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_q <= redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_delay_3;
        end
    end

    // i_notexit_cesarcipher25(LOGICAL,57)@10
    assign i_notexit_cesarcipher25_q = i_unnamed_cesarcipher24_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond_cesarcipher26(BLACKBOX,50)@10
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    cesarcipher_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_cesarcipher26 (
        .in_data_in(i_notexit_cesarcipher25_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_not_exitcond_stall_out),
        .in_first_cleanup(redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist6_sync_together71_aunroll_x_in_i_valid_9_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_cesarcipher26_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_cesarcipher26_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,90)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist3_sync_together71_aunroll_x_in_i_valid_3_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid110_i_next_initerations_cesarcipher0_shift_x(BITSELECT,109)@5
    assign rightShiftStage0Idx1Rng1_uid110_i_next_initerations_cesarcipher0_shift_x_b = i_llvm_fpga_pop_i11_initerations_pop10_cesarcipher7_out_data_out[10:1];

    // rightShiftStage0Idx1_uid112_i_next_initerations_cesarcipher0_shift_x(BITJOIN,111)@5
    assign rightShiftStage0Idx1_uid112_i_next_initerations_cesarcipher0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid110_i_next_initerations_cesarcipher0_shift_x_b};

    // valid_fanout_reg1(REG,88)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist3_sync_together71_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg2(REG,89)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist3_sync_together71_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i11_initerations_push10_cesarcipher9(BLACKBOX,47)@5
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    cesarcipher_i_llvm_fpga_push_i11_initerations_push10_0 thei_llvm_fpga_push_i11_initerations_push10_cesarcipher9 (
        .in_data_in(i_next_initerations_cesarcipher8_vt_join_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i11_initerations_pop10_cesarcipher7_out_feedback_stall_out_10),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i11_initerations_push10_cesarcipher9_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i11_initerations_push10_cesarcipher9_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i11_initerations_pop10_cesarcipher7(BLACKBOX,43)@5
    // out out_feedback_stall_out_10@20000000
    cesarcipher_i_llvm_fpga_pop_i11_initerations_pop10_0 thei_llvm_fpga_pop_i11_initerations_pop10_cesarcipher7 (
        .in_data_in(c_i11_102349_q),
        .in_dir(redist1_sync_together71_aunroll_x_in_c0_eni2_1_tpl_4_q),
        .in_feedback_in_10(i_llvm_fpga_push_i11_initerations_push10_cesarcipher9_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i11_initerations_push10_cesarcipher9_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i11_initerations_pop10_cesarcipher7_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i11_initerations_pop10_cesarcipher7_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid114_i_next_initerations_cesarcipher0_shift_x(MUX,113)@5
    assign rightShiftStage0_uid114_i_next_initerations_cesarcipher0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid114_i_next_initerations_cesarcipher0_shift_x_s or i_llvm_fpga_pop_i11_initerations_pop10_cesarcipher7_out_data_out or rightShiftStage0Idx1_uid112_i_next_initerations_cesarcipher0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid114_i_next_initerations_cesarcipher0_shift_x_s)
            1'b0 : rightShiftStage0_uid114_i_next_initerations_cesarcipher0_shift_x_q = i_llvm_fpga_pop_i11_initerations_pop10_cesarcipher7_out_data_out;
            1'b1 : rightShiftStage0_uid114_i_next_initerations_cesarcipher0_shift_x_q = rightShiftStage0Idx1_uid112_i_next_initerations_cesarcipher0_shift_x_q;
            default : rightShiftStage0_uid114_i_next_initerations_cesarcipher0_shift_x_q = 11'b0;
        endcase
    end

    // i_next_initerations_cesarcipher8_vt_select_9(BITSELECT,56)@5
    assign i_next_initerations_cesarcipher8_vt_select_9_b = rightShiftStage0_uid114_i_next_initerations_cesarcipher0_shift_x_q[9:0];

    // i_next_initerations_cesarcipher8_vt_join(BITJOIN,55)@5
    assign i_next_initerations_cesarcipher8_vt_join_q = {GND_q, i_next_initerations_cesarcipher8_vt_select_9_b};

    // i_last_initeration_cesarcipher10_sel_x(BITSELECT,80)@5
    assign i_last_initeration_cesarcipher10_sel_x_b = i_next_initerations_cesarcipher8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_cesarcipher11(BLACKBOX,48)@5
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    cesarcipher_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_cesarcipher11 (
        .in_data_in(i_last_initeration_cesarcipher10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_cesarcipher11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_cesarcipher11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together71_aunroll_x_in_c0_eni2_1_tpl_4(DELAY,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together71_aunroll_x_in_c0_eni2_1_tpl_4_q <= '0;
        end
        else
        begin
            redist1_sync_together71_aunroll_x_in_c0_eni2_1_tpl_4_q <= $unsigned(redist0_sync_together71_aunroll_x_in_c0_eni2_1_tpl_3_q);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_cesarcipher6(BLACKBOX,41)@5
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cesarcipher_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_cesarcipher6 (
        .in_data_in(redist1_sync_together71_aunroll_x_in_c0_eni2_1_tpl_4_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_cesarcipher11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_cesarcipher11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_cesarcipher26_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_cesarcipher26_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together71_aunroll_x_in_i_valid_4_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,24)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cesarcipher6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cesarcipher6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,63)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_pipeline_valid_out;

    // dupName_0_ext_sig_sync_out_x(GPOUT,70)
    assign out_lm1_cesarcipher_avm_address = i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_address;
    assign out_lm1_cesarcipher_avm_enable = i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_enable;
    assign out_lm1_cesarcipher_avm_read = i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_read;
    assign out_lm1_cesarcipher_avm_write = i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_write;
    assign out_lm1_cesarcipher_avm_writedata = i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_writedata;
    assign out_lm1_cesarcipher_avm_byteenable = i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_byteenable;
    assign out_lm1_cesarcipher_avm_burstcount = i_llvm_fpga_mem_lm1_cesarcipher20_out_lm1_cesarcipher_avm_burstcount;

    // valid_fanout_reg0(REG,87)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together71_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg4(REG,91)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist3_sync_together71_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg5(REG,92)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist3_sync_together71_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp14_push12_cesarcipher32(BLACKBOX,49)@5
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    cesarcipher_i_llvm_fpga_push_i1_notcmp14_push12_0 thei_llvm_fpga_push_i1_notcmp14_push12_cesarcipher32 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_feedback_stall_out_12),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i1_notcmp14_push12_cesarcipher32_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i1_notcmp14_push12_cesarcipher32_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4(DELAY,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_delay_0 <= '0;
            redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_delay_1 <= '0;
            redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_delay_2 <= '0;
            redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_q <= '0;
        end
        else
        begin
            redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_delay_0 <= $unsigned(in_c0_eni2_2_tpl);
            redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_delay_1 <= redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_delay_0;
            redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_delay_2 <= redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_delay_1;
            redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_q <= redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31(BLACKBOX,44)@5
    // out out_feedback_stall_out_12@20000000
    cesarcipher_i_llvm_fpga_pop_i1_notcmp14_pop12_0 thei_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31 (
        .in_data_in(redist2_sync_together71_aunroll_x_in_c0_eni2_2_tpl_4_q),
        .in_dir(redist1_sync_together71_aunroll_x_in_c0_eni2_1_tpl_4_q),
        .in_feedback_in_12(i_llvm_fpga_push_i1_notcmp14_push12_cesarcipher32_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i1_notcmp14_push12_cesarcipher32_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5(DELAY,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_0 <= '0;
            redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_1 <= '0;
            redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_2 <= '0;
            redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_3 <= '0;
            redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out);
            redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_1 <= redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_0;
            redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_2 <= redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_1;
            redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_3 <= redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_2;
            redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_q <= redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_delay_3;
        end
    end

    // i_masked_cesarcipher30(LOGICAL,52)@10
    assign i_masked_cesarcipher30_q = i_unnamed_cesarcipher24_q & redist7_i_first_cleanup_cesarcipher3_sel_x_b_5_q;

    // sync_out_aunroll_x(GPOUT,85)@10
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = redist12_i_llvm_fpga_pipeline_keep_going_cesarcipher6_out_data_out_5_q;
    assign out_c0_exi3_2_tpl = i_masked_cesarcipher30_q;
    assign out_c0_exi3_3_tpl = redist10_i_llvm_fpga_pop_i1_notcmp14_pop12_cesarcipher31_out_data_out_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_cesarcipher1 = GND_q;

endmodule
