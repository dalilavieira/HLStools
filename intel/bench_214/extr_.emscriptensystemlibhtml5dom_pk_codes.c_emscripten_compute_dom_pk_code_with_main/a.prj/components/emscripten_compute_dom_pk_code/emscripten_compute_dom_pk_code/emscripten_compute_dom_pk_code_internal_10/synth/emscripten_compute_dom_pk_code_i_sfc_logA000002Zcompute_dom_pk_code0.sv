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

// SystemVerilog created from emscripten_compute_dom_pk_code_i_sfc_logA000002Zcompute_dom_pk_code0
// SystemVerilog created on Sun May 24 22:31:15 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module emscripten_compute_dom_pk_code_i_sfc_logA000002Zcompute_dom_pk_code0 (
    input wire [63:0] in_lm58812_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm58812_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [0:0] in_lm58812_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm58812_emscripten_compute_dom_pk_code_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [7:0] in_intel_reserved_ffwd_156_0,
    input wire [0:0] in_intel_reserved_ffwd_158_0,
    output wire [31:0] out_intel_reserved_ffwd_159_0,
    output wire [63:0] out_lm58812_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm58812_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm58812_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm58812_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm58812_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [7:0] out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_emscripten_compute_dom_pk_code1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_102361_q;
    wire [31:0] c_i32_066_q;
    wire [31:0] c_i32_26555704868_q;
    wire [63:0] c_i8_addrspace_1024_undef65_q;
    wire [7:0] c_i8_undef64_q;
    wire [10:0] i_cleanups_shl_emscripten_compute_dom_pk_code5_vt_join_q;
    wire [9:0] i_cleanups_shl_emscripten_compute_dom_pk_code5_vt_select_10_b;
    wire [0:0] i_first_cleanup_xor_or_emscripten_compute_dom_pk_code27_q;
    wire [0:0] i_keycodestring_addr_05_replace_phi_emscripten_compute_dom_pk_code17_s;
    reg [63:0] i_keycodestring_addr_05_replace_phi_emscripten_compute_dom_pk_code17_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code163_emscripten_compute_dom_pk_code26_out_dest_data_out_158_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code164_emscripten_compute_dom_pk_code32_out_dest_data_out_158_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_lm58771313_emscripten_compute_dom_pk_code12_out_dest_data_out_156_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_keycodestring7157_emscripten_compute_dom_pk_code15_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_emscripten_compute_dom_pk_code165_emscripten_compute_dom_pk_code39_out_intel_reserved_ffwd_159_0;
    wire [63:0] i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_feedback_stall_out_10;
    wire [10:0] i_llvm_fpga_pop_i11_initerations_pop9_emscripten_compute_dom_pk_code7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_initerations_pop9_emscripten_compute_dom_pk_code7_out_feedback_stall_out_9;
    wire [31:0] i_llvm_fpga_pop_i32_hash_06_pop7_emscripten_compute_dom_pk_code18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_hash_06_pop7_emscripten_compute_dom_pk_code18_out_feedback_stall_out_7;
    wire [7:0] i_llvm_fpga_pop_i8_pop6_emscripten_compute_dom_pk_code13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_pop6_emscripten_compute_dom_pk_code13_out_feedback_stall_out_6;
    wire [63:0] i_llvm_fpga_pop_p1024i8_keycodestring_addr_05_pop8_emscripten_compute_dom_pk_code16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024i8_keycodestring_addr_05_pop8_emscripten_compute_dom_pk_code16_out_feedback_stall_out_8;
    wire [15:0] i_llvm_fpga_push_i11_cleanups_push10_emscripten_compute_dom_pk_code38_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i11_cleanups_push10_emscripten_compute_dom_pk_code38_out_feedback_valid_out_10;
    wire [15:0] i_llvm_fpga_push_i11_initerations_push9_emscripten_compute_dom_pk_code9_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i11_initerations_push9_emscripten_compute_dom_pk_code9_out_feedback_valid_out_9;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_emscripten_compute_dom_pk_code11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_emscripten_compute_dom_pk_code11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_emscripten_compute_dom_pk_code35_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_emscripten_compute_dom_pk_code35_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_hash_06_push7_emscripten_compute_dom_pk_code25_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i32_hash_06_push7_emscripten_compute_dom_pk_code25_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i8_push6_emscripten_compute_dom_pk_code29_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i8_push6_emscripten_compute_dom_pk_code29_out_feedback_valid_out_6;
    wire [63:0] i_llvm_fpga_push_p1024i8_keycodestring_addr_05_push8_emscripten_compute_dom_pk_code21_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_p1024i8_keycodestring_addr_05_push8_emscripten_compute_dom_pk_code21_out_feedback_valid_out_8;
    wire [0:0] i_masked_emscripten_compute_dom_pk_code40_q;
    wire [0:0] i_next_cleanups_emscripten_compute_dom_pk_code37_s;
    reg [10:0] i_next_cleanups_emscripten_compute_dom_pk_code37_q;
    wire [10:0] i_next_initerations_emscripten_compute_dom_pk_code8_vt_join_q;
    wire [9:0] i_next_initerations_emscripten_compute_dom_pk_code8_vt_select_9_b;
    wire [0:0] i_notexit_emscripten_compute_dom_pk_code34_q;
    wire [0:0] i_or_emscripten_compute_dom_pk_code36_q;
    wire [31:0] i_reduction_emscripten_compute_dom_pk_code_0_emscripten_compute_dom_pk_code23_q;
    wire [31:0] i_reduction_emscripten_compute_dom_pk_code_1_emscripten_compute_dom_pk_code24_q;
    wire [0:0] i_replace_phi_emscripten_compute_dom_pk_code14_s;
    reg [7:0] i_replace_phi_emscripten_compute_dom_pk_code14_q;
    wire [0:0] i_tobool1_emscripten_compute_dom_pk_code30_q;
    wire [0:0] i_unnamed_emscripten_compute_dom_pk_code33_q;
    wire [0:0] i_xor316_emscripten_compute_dom_pk_code4_q;
    wire [2:0] i_xor_emscripten_compute_dom_pk_code19_vt_const_2_q;
    wire [31:0] i_xor_emscripten_compute_dom_pk_code19_vt_join_q;
    wire [28:0] i_xor_emscripten_compute_dom_pk_code19_vt_select_31_b;
    wire [31:0] i_conv_emscripten_compute_dom_pk_code22_sel_x_b;
    wire [0:0] i_first_cleanup_emscripten_compute_dom_pk_code3_sel_x_b;
    wire [64:0] i_incdec_ptr_emscripten_compute_dom_pk_code0_add_x_a;
    wire [64:0] i_incdec_ptr_emscripten_compute_dom_pk_code0_add_x_b;
    logic [64:0] i_incdec_ptr_emscripten_compute_dom_pk_code0_add_x_o;
    wire [64:0] i_incdec_ptr_emscripten_compute_dom_pk_code0_add_x_q;
    wire [63:0] i_incdec_ptr_emscripten_compute_dom_pk_code0_c_i64_11_x_q;
    wire [63:0] i_incdec_ptr_emscripten_compute_dom_pk_code0_trunc_sel_x_b;
    wire [0:0] i_last_initeration_emscripten_compute_dom_pk_code10_sel_x_b;
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
    wire [9:0] leftShiftStage0Idx1Rng1_uid128_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_in;
    wire [9:0] leftShiftStage0Idx1Rng1_uid128_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_b;
    wire [10:0] leftShiftStage0Idx1_uid129_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [0:0] leftShiftStage0_uid131_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_s;
    reg [10:0] leftShiftStage0_uid131_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [9:0] rightShiftStage0Idx1Rng1_uid135_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_b;
    wire [10:0] rightShiftStage0Idx1_uid137_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [0:0] rightShiftStage0_uid139_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_s;
    reg [10:0] rightShiftStage0_uid139_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid144_i_xor_emscripten_compute_dom_pk_code0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid144_i_xor_emscripten_compute_dom_pk_code0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid145_i_xor_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [0:0] leftShiftStage0_uid147_i_xor_emscripten_compute_dom_pk_code0_shift_x_s;
    reg [31:0] leftShiftStage0_uid147_i_xor_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [1:0] leftShiftStage1Idx1Pad2_uid148_i_xor_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid149_i_xor_emscripten_compute_dom_pk_code0_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid149_i_xor_emscripten_compute_dom_pk_code0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid150_i_xor_emscripten_compute_dom_pk_code0_shift_x_q;
    wire [0:0] leftShiftStage1_uid152_i_xor_emscripten_compute_dom_pk_code0_shift_x_s;
    reg [31:0] leftShiftStage1_uid152_i_xor_emscripten_compute_dom_pk_code0_shift_x_q;
    reg [0:0] redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_7_q;
    reg [0:0] redist1_sync_together89_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist2_sync_together89_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist3_sync_together89_aunroll_x_in_i_valid_14_q;
    reg [0:0] redist4_sync_together89_aunroll_x_in_i_valid_15_q;
    reg [0:0] redist5_i_first_cleanup_emscripten_compute_dom_pk_code3_sel_x_b_8_q;
    reg [0:0] redist6_i_xor316_emscripten_compute_dom_pk_code4_q_8_q;
    reg [0:0] redist8_i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_data_out_8_q;
    reg [10:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_outputreg0_q;
    wire redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_reset0;
    wire [10:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_ia;
    wire [2:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_aa;
    wire [2:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_ab;
    wire [10:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_iq;
    wire [10:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_q;
    wire [2:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_q;
    (* preserve *) reg [2:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_i;
    (* preserve *) reg redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_eq;
    reg [2:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_wraddr_q;
    wire [3:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_last_q;
    wire [3:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_cmp_b;
    wire [0:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_cmp_q;
    (* dont_merge *) reg [0:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_cmpReg_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_notEnable_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_nor_q;
    (* dont_merge *) reg [0:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_sticky_ena_q;
    wire [0:0] redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together89_aunroll_x_in_i_valid_6(DELAY,154)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together89_aunroll_x_in_i_valid_6 ( .xin(in_i_valid), .xout(redist1_sync_together89_aunroll_x_in_i_valid_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist2_sync_together89_aunroll_x_in_i_valid_7(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together89_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist2_sync_together89_aunroll_x_in_i_valid_7_q <= $unsigned(redist1_sync_together89_aunroll_x_in_i_valid_6_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist3_sync_together89_aunroll_x_in_i_valid_14(DELAY,156)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together89_aunroll_x_in_i_valid_14 ( .xin(redist2_sync_together89_aunroll_x_in_i_valid_7_q), .xout(redist3_sync_together89_aunroll_x_in_i_valid_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist4_sync_together89_aunroll_x_in_i_valid_15(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together89_aunroll_x_in_i_valid_15_q <= '0;
        end
        else
        begin
            redist4_sync_together89_aunroll_x_in_i_valid_15_q <= $unsigned(redist3_sync_together89_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist8_i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_data_out_8(DELAY,161)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_data_out_8 ( .xin(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_data_out), .xout(redist8_i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_data_out_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // leftShiftStage0Idx1Rng1_uid128_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x(BITSELECT,127)@16
    assign leftShiftStage0Idx1Rng1_uid128_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_in = redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_outputreg0_q[9:0];
    assign leftShiftStage0Idx1Rng1_uid128_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_b = leftShiftStage0Idx1Rng1_uid128_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_in[9:0];

    // leftShiftStage0Idx1_uid129_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x(BITJOIN,128)@16
    assign leftShiftStage0Idx1_uid129_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_q = {leftShiftStage0Idx1Rng1_uid128_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_b, GND_q};

    // leftShiftStage0_uid131_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x(MUX,130)@16
    assign leftShiftStage0_uid131_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid131_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_s or redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_outputreg0_q or leftShiftStage0Idx1_uid129_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid131_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_s)
            1'b0 : leftShiftStage0_uid131_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_q = redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_outputreg0_q;
            1'b1 : leftShiftStage0_uid131_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_q = leftShiftStage0Idx1_uid129_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_q;
            default : leftShiftStage0_uid131_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_q = 11'b0;
        endcase
    end

    // i_cleanups_shl_emscripten_compute_dom_pk_code5_vt_select_10(BITSELECT,33)@16
    assign i_cleanups_shl_emscripten_compute_dom_pk_code5_vt_select_10_b = leftShiftStage0_uid131_i_cleanups_shl_emscripten_compute_dom_pk_code0_shift_x_q[10:1];

    // i_cleanups_shl_emscripten_compute_dom_pk_code5_vt_join(BITJOIN,32)@16
    assign i_cleanups_shl_emscripten_compute_dom_pk_code5_vt_join_q = {i_cleanups_shl_emscripten_compute_dom_pk_code5_vt_select_10_b, GND_q};

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_notEnable(LOGICAL,169)
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_nor(LOGICAL,170)
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_nor_q = ~ (redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_notEnable_q | redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_sticky_ena_q);

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_last(CONSTANT,166)
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_last_q = $unsigned(4'b0100);

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_cmp(LOGICAL,167)
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_cmp_b = {1'b0, redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_q};
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_cmp_q = $unsigned(redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_last_q == redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_cmp_b ? 1'b1 : 1'b0);

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_cmpReg(REG,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_cmpReg_q <= $unsigned(redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_cmp_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_sticky_ena(REG,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_nor_q == 1'b1)
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_sticky_ena_q <= $unsigned(redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_cmpReg_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_enaAnd(LOGICAL,172)
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_enaAnd_q = redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_sticky_ena_q & VCC_q;

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt(COUNTER,164)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_i <= 3'd0;
            redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_i == 3'd4)
            begin
                redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_eq <= 1'b0;
            end
            if (redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_eq == 1'b1)
            begin
                redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_i <= $unsigned(redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_i <= $unsigned(redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_q = redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_i[2:0];

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_wraddr(REG,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_wraddr_q <= $unsigned(redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_q);
        end
    end

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem(DUALMEM,163)
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_ia = $unsigned(i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out);
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_aa = redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_wraddr_q;
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_ab = redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_rdcnt_q;
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(11),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(11),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_dmem (
        .clocken1(redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_reset0),
        .clock1(clock),
        .address_a(redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_aa),
        .data_a(redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_ab),
        .q_b(redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_iq),
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
    assign redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_q = redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_iq[10:0];

    // redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_outputreg0(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_outputreg0_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_outputreg0_q <= $unsigned(redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_mem_q);
        end
    end

    // i_xor316_emscripten_compute_dom_pk_code4(LOGICAL,71)@8
    assign i_xor316_emscripten_compute_dom_pk_code4_q = i_first_cleanup_emscripten_compute_dom_pk_code3_sel_x_b ^ VCC_q;

    // redist6_i_xor316_emscripten_compute_dom_pk_code4_q_8(DELAY,159)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_i_xor316_emscripten_compute_dom_pk_code4_q_8 ( .xin(i_xor316_emscripten_compute_dom_pk_code4_q), .xout(redist6_i_xor316_emscripten_compute_dom_pk_code4_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i8_undef64(CONSTANT,28)
    assign c_i8_undef64_q = $unsigned(8'b00000000);

    // i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code163_emscripten_compute_dom_pk_code26(BLACKBOX,40)@8
    emscripten_compute_dom_pk_code_i_llvm_fpA000162Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code163_emscripten_compute_dom_pk_code26 (
        .in_intel_reserved_ffwd_158_0(in_intel_reserved_ffwd_158_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together89_aunroll_x_in_i_valid_7_q),
        .out_dest_data_out_158_0(i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code163_emscripten_compute_dom_pk_code26_out_dest_data_out_158_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xor_or_emscripten_compute_dom_pk_code27(LOGICAL,37)@8
    assign i_first_cleanup_xor_or_emscripten_compute_dom_pk_code27_q = i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code163_emscripten_compute_dom_pk_code26_out_dest_data_out_158_0 | i_xor316_emscripten_compute_dom_pk_code4_q;

    // i_incdec_ptr_emscripten_compute_dom_pk_code0_c_i64_11_x(CONSTANT,94)
    assign i_incdec_ptr_emscripten_compute_dom_pk_code0_c_i64_11_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // i_llvm_fpga_ffwd_dest_p1024i8_keycodestring7157_emscripten_compute_dom_pk_code15(BLACKBOX,43)@8
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_keycodestring7157_0 thei_llvm_fpga_ffwd_dest_p1024i8_keycodestring7157_emscripten_compute_dom_pk_code15 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together89_aunroll_x_in_i_valid_7_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i8_keycodestring7157_emscripten_compute_dom_pk_code15_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_p1024i8_keycodestring_addr_05_push8_emscripten_compute_dom_pk_code21(BLACKBOX,58)@8
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zring_addr_05_push8_0 thei_llvm_fpga_push_p1024i8_keycodestring_addr_05_push8_emscripten_compute_dom_pk_code21 (
        .in_data_in(i_incdec_ptr_emscripten_compute_dom_pk_code0_trunc_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_p1024i8_keycodestring_addr_05_pop8_emscripten_compute_dom_pk_code16_out_feedback_stall_out_8),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together89_aunroll_x_in_i_valid_7_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_p1024i8_keycodestring_addr_05_push8_emscripten_compute_dom_pk_code21_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_p1024i8_keycodestring_addr_05_push8_emscripten_compute_dom_pk_code21_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_addrspace_1024_undef65(CONSTANT,27)
    assign c_i8_addrspace_1024_undef65_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_p1024i8_keycodestring_addr_05_pop8_emscripten_compute_dom_pk_code16(BLACKBOX,51)@8
    // out out_feedback_stall_out_8@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Ztring_addr_05_pop8_0 thei_llvm_fpga_pop_p1024i8_keycodestring_addr_05_pop8_emscripten_compute_dom_pk_code16 (
        .in_data_in(c_i8_addrspace_1024_undef65_q),
        .in_dir(redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_7_q),
        .in_feedback_in_8(i_llvm_fpga_push_p1024i8_keycodestring_addr_05_push8_emscripten_compute_dom_pk_code21_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_p1024i8_keycodestring_addr_05_push8_emscripten_compute_dom_pk_code21_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together89_aunroll_x_in_i_valid_7_q),
        .out_data_out(i_llvm_fpga_pop_p1024i8_keycodestring_addr_05_pop8_emscripten_compute_dom_pk_code16_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_p1024i8_keycodestring_addr_05_pop8_emscripten_compute_dom_pk_code16_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_keycodestring_addr_05_replace_phi_emscripten_compute_dom_pk_code17(MUX,38)@8
    assign i_keycodestring_addr_05_replace_phi_emscripten_compute_dom_pk_code17_s = redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_7_q;
    always @(i_keycodestring_addr_05_replace_phi_emscripten_compute_dom_pk_code17_s or i_llvm_fpga_pop_p1024i8_keycodestring_addr_05_pop8_emscripten_compute_dom_pk_code16_out_data_out or i_llvm_fpga_ffwd_dest_p1024i8_keycodestring7157_emscripten_compute_dom_pk_code15_out_dest_data_out_0_0)
    begin
        unique case (i_keycodestring_addr_05_replace_phi_emscripten_compute_dom_pk_code17_s)
            1'b0 : i_keycodestring_addr_05_replace_phi_emscripten_compute_dom_pk_code17_q = i_llvm_fpga_pop_p1024i8_keycodestring_addr_05_pop8_emscripten_compute_dom_pk_code16_out_data_out;
            1'b1 : i_keycodestring_addr_05_replace_phi_emscripten_compute_dom_pk_code17_q = i_llvm_fpga_ffwd_dest_p1024i8_keycodestring7157_emscripten_compute_dom_pk_code15_out_dest_data_out_0_0;
            default : i_keycodestring_addr_05_replace_phi_emscripten_compute_dom_pk_code17_q = 64'b0;
        endcase
    end

    // i_incdec_ptr_emscripten_compute_dom_pk_code0_add_x(ADD,93)@8
    assign i_incdec_ptr_emscripten_compute_dom_pk_code0_add_x_a = {1'b0, i_keycodestring_addr_05_replace_phi_emscripten_compute_dom_pk_code17_q};
    assign i_incdec_ptr_emscripten_compute_dom_pk_code0_add_x_b = {1'b0, i_incdec_ptr_emscripten_compute_dom_pk_code0_c_i64_11_x_q};
    assign i_incdec_ptr_emscripten_compute_dom_pk_code0_add_x_o = $unsigned(i_incdec_ptr_emscripten_compute_dom_pk_code0_add_x_a) + $unsigned(i_incdec_ptr_emscripten_compute_dom_pk_code0_add_x_b);
    assign i_incdec_ptr_emscripten_compute_dom_pk_code0_add_x_q = i_incdec_ptr_emscripten_compute_dom_pk_code0_add_x_o[64:0];

    // i_incdec_ptr_emscripten_compute_dom_pk_code0_trunc_sel_x(BITSELECT,96)@8
    assign i_incdec_ptr_emscripten_compute_dom_pk_code0_trunc_sel_x_b = i_incdec_ptr_emscripten_compute_dom_pk_code0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28(BLACKBOX,45)@8
    // in in_i_stall@20000000
    // out out_lm58812_emscripten_compute_dom_pk_code_avm_address@20000000
    // out out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount@20000000
    // out out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable@20000000
    // out out_lm58812_emscripten_compute_dom_pk_code_avm_enable@20000000
    // out out_lm58812_emscripten_compute_dom_pk_code_avm_read@20000000
    // out out_lm58812_emscripten_compute_dom_pk_code_avm_write@20000000
    // out out_lm58812_emscripten_compute_dom_pk_code_avm_writedata@20000000
    // out out_o_readdata@16
    // out out_o_stall@15
    // out out_o_valid@16
    emscripten_compute_dom_pk_code_i_llvm_fpga_mem_lm58812_0 thei_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28 (
        .in_flush(in_flush),
        .in_i_address(i_incdec_ptr_emscripten_compute_dom_pk_code0_trunc_sel_x_b),
        .in_i_predicate(i_first_cleanup_xor_or_emscripten_compute_dom_pk_code27_q),
        .in_i_stall(GND_q),
        .in_i_valid(redist2_sync_together89_aunroll_x_in_i_valid_7_q),
        .in_lm58812_emscripten_compute_dom_pk_code_avm_readdata(in_lm58812_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm58812_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm58812_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm58812_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm58812_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm58812_emscripten_compute_dom_pk_code_avm_writeack(in_lm58812_emscripten_compute_dom_pk_code_avm_writeack),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_address(i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_address),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount(i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable(i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_enable(i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_read(i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_read),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_write(i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_write),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_writedata(i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_tobool1_emscripten_compute_dom_pk_code30(LOGICAL,69)@16
    assign i_tobool1_emscripten_compute_dom_pk_code30_q = $unsigned(i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_o_readdata == c_i8_undef64_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code164_emscripten_compute_dom_pk_code32(BLACKBOX,41)@16
    emscripten_compute_dom_pk_code_i_llvm_fpA000163Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code164_emscripten_compute_dom_pk_code32 (
        .in_intel_reserved_ffwd_158_0(in_intel_reserved_ffwd_158_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together89_aunroll_x_in_i_valid_15_q),
        .out_dest_data_out_158_0(i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code164_emscripten_compute_dom_pk_code32_out_dest_data_out_158_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_emscripten_compute_dom_pk_code33(LOGICAL,70)@16
    assign i_unnamed_emscripten_compute_dom_pk_code33_q = i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code164_emscripten_compute_dom_pk_code32_out_dest_data_out_158_0 | i_tobool1_emscripten_compute_dom_pk_code30_q;

    // i_or_emscripten_compute_dom_pk_code36(LOGICAL,65)@16
    assign i_or_emscripten_compute_dom_pk_code36_q = i_unnamed_emscripten_compute_dom_pk_code33_q | redist6_i_xor316_emscripten_compute_dom_pk_code4_q_8_q;

    // i_next_cleanups_emscripten_compute_dom_pk_code37(MUX,60)@16
    assign i_next_cleanups_emscripten_compute_dom_pk_code37_s = i_or_emscripten_compute_dom_pk_code36_q;
    always @(i_next_cleanups_emscripten_compute_dom_pk_code37_s or redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_outputreg0_q or i_cleanups_shl_emscripten_compute_dom_pk_code5_vt_join_q)
    begin
        unique case (i_next_cleanups_emscripten_compute_dom_pk_code37_s)
            1'b0 : i_next_cleanups_emscripten_compute_dom_pk_code37_q = redist7_i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out_8_outputreg0_q;
            1'b1 : i_next_cleanups_emscripten_compute_dom_pk_code37_q = i_cleanups_shl_emscripten_compute_dom_pk_code5_vt_join_q;
            default : i_next_cleanups_emscripten_compute_dom_pk_code37_q = 11'b0;
        endcase
    end

    // i_llvm_fpga_push_i11_cleanups_push10_emscripten_compute_dom_pk_code38(BLACKBOX,52)@16
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z11_cleanups_push10_0 thei_llvm_fpga_push_i11_cleanups_push10_emscripten_compute_dom_pk_code38 (
        .in_data_in(i_next_cleanups_emscripten_compute_dom_pk_code37_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_feedback_stall_out_10),
        .in_keep_going(redist8_i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_data_out_8_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together89_aunroll_x_in_i_valid_15_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i11_cleanups_push10_emscripten_compute_dom_pk_code38_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i11_cleanups_push10_emscripten_compute_dom_pk_code38_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_102361(CONSTANT,2)
    assign c_i11_102361_q = $unsigned(11'b01111111111);

    // i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2(BLACKBOX,47)@8
    // out out_feedback_stall_out_10@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpga_pop_i11_cleanups_pop10_0 thei_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2 (
        .in_data_in(c_i11_102361_q),
        .in_dir(redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_7_q),
        .in_feedback_in_10(i_llvm_fpga_push_i11_cleanups_push10_emscripten_compute_dom_pk_code38_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i11_cleanups_push10_emscripten_compute_dom_pk_code38_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together89_aunroll_x_in_i_valid_7_q),
        .out_data_out(i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_emscripten_compute_dom_pk_code3_sel_x(BITSELECT,92)@8
    assign i_first_cleanup_emscripten_compute_dom_pk_code3_sel_x_b = i_llvm_fpga_pop_i11_cleanups_pop10_emscripten_compute_dom_pk_code2_out_data_out[0:0];

    // redist5_i_first_cleanup_emscripten_compute_dom_pk_code3_sel_x_b_8(DELAY,158)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_i_first_cleanup_emscripten_compute_dom_pk_code3_sel_x_b_8 ( .xin(i_first_cleanup_emscripten_compute_dom_pk_code3_sel_x_b), .xout(redist5_i_first_cleanup_emscripten_compute_dom_pk_code3_sel_x_b_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_notexit_emscripten_compute_dom_pk_code34(LOGICAL,64)@16
    assign i_notexit_emscripten_compute_dom_pk_code34_q = i_unnamed_emscripten_compute_dom_pk_code33_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond_emscripten_compute_dom_pk_code35(BLACKBOX,55)@16
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_emscripten_compute_dom_pk_code35 (
        .in_data_in(i_notexit_emscripten_compute_dom_pk_code34_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_not_exitcond_stall_out),
        .in_first_cleanup(redist5_i_first_cleanup_emscripten_compute_dom_pk_code3_sel_x_b_8_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together89_aunroll_x_in_i_valid_15_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_emscripten_compute_dom_pk_code35_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_emscripten_compute_dom_pk_code35_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,111)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together89_aunroll_x_in_i_valid_6_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid135_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x(BITSELECT,134)@8
    assign rightShiftStage0Idx1Rng1_uid135_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_b = i_llvm_fpga_pop_i11_initerations_pop9_emscripten_compute_dom_pk_code7_out_data_out[10:1];

    // rightShiftStage0Idx1_uid137_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x(BITJOIN,136)@8
    assign rightShiftStage0Idx1_uid137_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid135_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_b};

    // valid_fanout_reg1(REG,109)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist1_sync_together89_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg2(REG,110)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together89_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i11_initerations_push9_emscripten_compute_dom_pk_code9(BLACKBOX,53)@8
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Ziniterations_push9_0 thei_llvm_fpga_push_i11_initerations_push9_emscripten_compute_dom_pk_code9 (
        .in_data_in(i_next_initerations_emscripten_compute_dom_pk_code8_vt_join_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i11_initerations_pop9_emscripten_compute_dom_pk_code7_out_feedback_stall_out_9),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i11_initerations_push9_emscripten_compute_dom_pk_code9_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i11_initerations_push9_emscripten_compute_dom_pk_code9_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i11_initerations_pop9_emscripten_compute_dom_pk_code7(BLACKBOX,48)@8
    // out out_feedback_stall_out_9@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Z_initerations_pop9_0 thei_llvm_fpga_pop_i11_initerations_pop9_emscripten_compute_dom_pk_code7 (
        .in_data_in(c_i11_102361_q),
        .in_dir(redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_7_q),
        .in_feedback_in_9(i_llvm_fpga_push_i11_initerations_push9_emscripten_compute_dom_pk_code9_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i11_initerations_push9_emscripten_compute_dom_pk_code9_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i11_initerations_pop9_emscripten_compute_dom_pk_code7_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i11_initerations_pop9_emscripten_compute_dom_pk_code7_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid139_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x(MUX,138)@8
    assign rightShiftStage0_uid139_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid139_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_s or i_llvm_fpga_pop_i11_initerations_pop9_emscripten_compute_dom_pk_code7_out_data_out or rightShiftStage0Idx1_uid137_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid139_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_s)
            1'b0 : rightShiftStage0_uid139_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_q = i_llvm_fpga_pop_i11_initerations_pop9_emscripten_compute_dom_pk_code7_out_data_out;
            1'b1 : rightShiftStage0_uid139_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_q = rightShiftStage0Idx1_uid137_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_q;
            default : rightShiftStage0_uid139_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_q = 11'b0;
        endcase
    end

    // i_next_initerations_emscripten_compute_dom_pk_code8_vt_select_9(BITSELECT,63)@8
    assign i_next_initerations_emscripten_compute_dom_pk_code8_vt_select_9_b = rightShiftStage0_uid139_i_next_initerations_emscripten_compute_dom_pk_code0_shift_x_q[9:0];

    // i_next_initerations_emscripten_compute_dom_pk_code8_vt_join(BITJOIN,62)@8
    assign i_next_initerations_emscripten_compute_dom_pk_code8_vt_join_q = {GND_q, i_next_initerations_emscripten_compute_dom_pk_code8_vt_select_9_b};

    // i_last_initeration_emscripten_compute_dom_pk_code10_sel_x(BITSELECT,97)@8
    assign i_last_initeration_emscripten_compute_dom_pk_code10_sel_x_b = i_next_initerations_emscripten_compute_dom_pk_code8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_emscripten_compute_dom_pk_code11(BLACKBOX,54)@8
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_emscripten_compute_dom_pk_code11 (
        .in_data_in(i_last_initeration_emscripten_compute_dom_pk_code10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_emscripten_compute_dom_pk_code11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_emscripten_compute_dom_pk_code11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_7(DELAY,153)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_7 ( .xin(in_c0_eni1_1_tpl), .xout(redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6(BLACKBOX,46)@8
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6 (
        .in_data_in(redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_7_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_emscripten_compute_dom_pk_code11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_emscripten_compute_dom_pk_code11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_emscripten_compute_dom_pk_code35_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_emscripten_compute_dom_pk_code35_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together89_aunroll_x_in_i_valid_7_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,30)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,78)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_pipeline_valid_out;

    // valid_fanout_reg9(REG,117)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist1_sync_together89_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg4(REG,112)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together89_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_lm58771313_emscripten_compute_dom_pk_code12(BLACKBOX,42)@8
    emscripten_compute_dom_pk_code_i_llvm_fpga_ffwd_dest_i8_lm58771313_0 thei_llvm_fpga_ffwd_dest_i8_lm58771313_emscripten_compute_dom_pk_code12 (
        .in_intel_reserved_ffwd_156_0(in_intel_reserved_ffwd_156_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_156_0(i_llvm_fpga_ffwd_dest_i8_lm58771313_emscripten_compute_dom_pk_code12_out_dest_data_out_156_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,113)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together89_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg8(REG,116)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist3_sync_together89_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_i8_push6_emscripten_compute_dom_pk_code29(BLACKBOX,57)@16
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpga_push_i8_push6_0 thei_llvm_fpga_push_i8_push6_emscripten_compute_dom_pk_code29 (
        .in_data_in(i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_o_readdata),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i8_pop6_emscripten_compute_dom_pk_code13_out_feedback_stall_out_6),
        .in_keep_going(redist8_i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_data_out_8_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i8_push6_emscripten_compute_dom_pk_code29_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i8_push6_emscripten_compute_dom_pk_code29_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i8_pop6_emscripten_compute_dom_pk_code13(BLACKBOX,50)@8
    // out out_feedback_stall_out_6@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpga_pop_i8_pop6_0 thei_llvm_fpga_pop_i8_pop6_emscripten_compute_dom_pk_code13 (
        .in_data_in(c_i8_undef64_q),
        .in_dir(redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_7_q),
        .in_feedback_in_6(i_llvm_fpga_push_i8_push6_emscripten_compute_dom_pk_code29_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i8_push6_emscripten_compute_dom_pk_code29_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i8_pop6_emscripten_compute_dom_pk_code13_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i8_pop6_emscripten_compute_dom_pk_code13_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_replace_phi_emscripten_compute_dom_pk_code14(MUX,68)@8
    assign i_replace_phi_emscripten_compute_dom_pk_code14_s = redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_7_q;
    always @(i_replace_phi_emscripten_compute_dom_pk_code14_s or i_llvm_fpga_pop_i8_pop6_emscripten_compute_dom_pk_code13_out_data_out or i_llvm_fpga_ffwd_dest_i8_lm58771313_emscripten_compute_dom_pk_code12_out_dest_data_out_156_0)
    begin
        unique case (i_replace_phi_emscripten_compute_dom_pk_code14_s)
            1'b0 : i_replace_phi_emscripten_compute_dom_pk_code14_q = i_llvm_fpga_pop_i8_pop6_emscripten_compute_dom_pk_code13_out_data_out;
            1'b1 : i_replace_phi_emscripten_compute_dom_pk_code14_q = i_llvm_fpga_ffwd_dest_i8_lm58771313_emscripten_compute_dom_pk_code12_out_dest_data_out_156_0;
            default : i_replace_phi_emscripten_compute_dom_pk_code14_q = 8'b0;
        endcase
    end

    // i_conv_emscripten_compute_dom_pk_code22_sel_x(BITSELECT,91)@8
    assign i_conv_emscripten_compute_dom_pk_code22_sel_x_b = $unsigned({{24{i_replace_phi_emscripten_compute_dom_pk_code14_q[7]}}, i_replace_phi_emscripten_compute_dom_pk_code14_q[7:0]});

    // c_i32_26555704868(CONSTANT,25)
    assign c_i32_26555704868_q = $unsigned(32'b11110000001010111110101111001000);

    // i_reduction_emscripten_compute_dom_pk_code_0_emscripten_compute_dom_pk_code23(LOGICAL,66)@8
    assign i_reduction_emscripten_compute_dom_pk_code_0_emscripten_compute_dom_pk_code23_q = c_i32_26555704868_q ^ i_conv_emscripten_compute_dom_pk_code22_sel_x_b;

    // leftShiftStage1Idx1Rng2_uid149_i_xor_emscripten_compute_dom_pk_code0_shift_x(BITSELECT,148)@8
    assign leftShiftStage1Idx1Rng2_uid149_i_xor_emscripten_compute_dom_pk_code0_shift_x_in = leftShiftStage0_uid147_i_xor_emscripten_compute_dom_pk_code0_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid149_i_xor_emscripten_compute_dom_pk_code0_shift_x_b = leftShiftStage1Idx1Rng2_uid149_i_xor_emscripten_compute_dom_pk_code0_shift_x_in[29:0];

    // leftShiftStage1Idx1Pad2_uid148_i_xor_emscripten_compute_dom_pk_code0_shift_x(CONSTANT,147)
    assign leftShiftStage1Idx1Pad2_uid148_i_xor_emscripten_compute_dom_pk_code0_shift_x_q = $unsigned(2'b00);

    // leftShiftStage1Idx1_uid150_i_xor_emscripten_compute_dom_pk_code0_shift_x(BITJOIN,149)@8
    assign leftShiftStage1Idx1_uid150_i_xor_emscripten_compute_dom_pk_code0_shift_x_q = {leftShiftStage1Idx1Rng2_uid149_i_xor_emscripten_compute_dom_pk_code0_shift_x_b, leftShiftStage1Idx1Pad2_uid148_i_xor_emscripten_compute_dom_pk_code0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid144_i_xor_emscripten_compute_dom_pk_code0_shift_x(BITSELECT,143)@8
    assign leftShiftStage0Idx1Rng1_uid144_i_xor_emscripten_compute_dom_pk_code0_shift_x_in = i_llvm_fpga_pop_i32_hash_06_pop7_emscripten_compute_dom_pk_code18_out_data_out[30:0];
    assign leftShiftStage0Idx1Rng1_uid144_i_xor_emscripten_compute_dom_pk_code0_shift_x_b = leftShiftStage0Idx1Rng1_uid144_i_xor_emscripten_compute_dom_pk_code0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid145_i_xor_emscripten_compute_dom_pk_code0_shift_x(BITJOIN,144)@8
    assign leftShiftStage0Idx1_uid145_i_xor_emscripten_compute_dom_pk_code0_shift_x_q = {leftShiftStage0Idx1Rng1_uid144_i_xor_emscripten_compute_dom_pk_code0_shift_x_b, GND_q};

    // valid_fanout_reg6(REG,114)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together89_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg7(REG,115)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist1_sync_together89_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_hash_06_push7_emscripten_compute_dom_pk_code25(BLACKBOX,56)@8
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpga_push_i32_hash_06_push7_0 thei_llvm_fpga_push_i32_hash_06_push7_emscripten_compute_dom_pk_code25 (
        .in_data_in(i_reduction_emscripten_compute_dom_pk_code_1_emscripten_compute_dom_pk_code24_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_hash_06_pop7_emscripten_compute_dom_pk_code18_out_feedback_stall_out_7),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i32_hash_06_push7_emscripten_compute_dom_pk_code25_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i32_hash_06_push7_emscripten_compute_dom_pk_code25_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_066(CONSTANT,24)
    assign c_i32_066_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_hash_06_pop7_emscripten_compute_dom_pk_code18(BLACKBOX,49)@8
    // out out_feedback_stall_out_7@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpga_pop_i32_hash_06_pop7_0 thei_llvm_fpga_pop_i32_hash_06_pop7_emscripten_compute_dom_pk_code18 (
        .in_data_in(c_i32_066_q),
        .in_dir(redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_7_q),
        .in_feedback_in_7(i_llvm_fpga_push_i32_hash_06_push7_emscripten_compute_dom_pk_code25_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i32_hash_06_push7_emscripten_compute_dom_pk_code25_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_hash_06_pop7_emscripten_compute_dom_pk_code18_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i32_hash_06_pop7_emscripten_compute_dom_pk_code18_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid147_i_xor_emscripten_compute_dom_pk_code0_shift_x(MUX,146)@8
    assign leftShiftStage0_uid147_i_xor_emscripten_compute_dom_pk_code0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid147_i_xor_emscripten_compute_dom_pk_code0_shift_x_s or i_llvm_fpga_pop_i32_hash_06_pop7_emscripten_compute_dom_pk_code18_out_data_out or leftShiftStage0Idx1_uid145_i_xor_emscripten_compute_dom_pk_code0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid147_i_xor_emscripten_compute_dom_pk_code0_shift_x_s)
            1'b0 : leftShiftStage0_uid147_i_xor_emscripten_compute_dom_pk_code0_shift_x_q = i_llvm_fpga_pop_i32_hash_06_pop7_emscripten_compute_dom_pk_code18_out_data_out;
            1'b1 : leftShiftStage0_uid147_i_xor_emscripten_compute_dom_pk_code0_shift_x_q = leftShiftStage0Idx1_uid145_i_xor_emscripten_compute_dom_pk_code0_shift_x_q;
            default : leftShiftStage0_uid147_i_xor_emscripten_compute_dom_pk_code0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid152_i_xor_emscripten_compute_dom_pk_code0_shift_x(MUX,151)@8
    assign leftShiftStage1_uid152_i_xor_emscripten_compute_dom_pk_code0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid152_i_xor_emscripten_compute_dom_pk_code0_shift_x_s or leftShiftStage0_uid147_i_xor_emscripten_compute_dom_pk_code0_shift_x_q or leftShiftStage1Idx1_uid150_i_xor_emscripten_compute_dom_pk_code0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid152_i_xor_emscripten_compute_dom_pk_code0_shift_x_s)
            1'b0 : leftShiftStage1_uid152_i_xor_emscripten_compute_dom_pk_code0_shift_x_q = leftShiftStage0_uid147_i_xor_emscripten_compute_dom_pk_code0_shift_x_q;
            1'b1 : leftShiftStage1_uid152_i_xor_emscripten_compute_dom_pk_code0_shift_x_q = leftShiftStage1Idx1_uid150_i_xor_emscripten_compute_dom_pk_code0_shift_x_q;
            default : leftShiftStage1_uid152_i_xor_emscripten_compute_dom_pk_code0_shift_x_q = 32'b0;
        endcase
    end

    // i_xor_emscripten_compute_dom_pk_code19_vt_select_31(BITSELECT,74)@8
    assign i_xor_emscripten_compute_dom_pk_code19_vt_select_31_b = leftShiftStage1_uid152_i_xor_emscripten_compute_dom_pk_code0_shift_x_q[31:3];

    // i_xor_emscripten_compute_dom_pk_code19_vt_const_2(CONSTANT,72)
    assign i_xor_emscripten_compute_dom_pk_code19_vt_const_2_q = $unsigned(3'b000);

    // i_xor_emscripten_compute_dom_pk_code19_vt_join(BITJOIN,73)@8
    assign i_xor_emscripten_compute_dom_pk_code19_vt_join_q = {i_xor_emscripten_compute_dom_pk_code19_vt_select_31_b, i_xor_emscripten_compute_dom_pk_code19_vt_const_2_q};

    // i_reduction_emscripten_compute_dom_pk_code_1_emscripten_compute_dom_pk_code24(LOGICAL,67)@8
    assign i_reduction_emscripten_compute_dom_pk_code_1_emscripten_compute_dom_pk_code24_q = i_xor_emscripten_compute_dom_pk_code19_vt_join_q ^ i_reduction_emscripten_compute_dom_pk_code_0_emscripten_compute_dom_pk_code23_q;

    // i_llvm_fpga_ffwd_source_i32_unnamed_emscripten_compute_dom_pk_code165_emscripten_compute_dom_pk_code39(BLACKBOX,44)@8
    // out out_intel_reserved_ffwd_159_0@20000000
    emscripten_compute_dom_pk_code_i_llvm_fpA000164Zcompute_dom_pk_code0 thei_llvm_fpga_ffwd_source_i32_unnamed_emscripten_compute_dom_pk_code165_emscripten_compute_dom_pk_code39 (
        .in_predicate_in(i_xor316_emscripten_compute_dom_pk_code4_q),
        .in_src_data_in_159_0(i_reduction_emscripten_compute_dom_pk_code_1_emscripten_compute_dom_pk_code24_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_159_0(i_llvm_fpga_ffwd_source_i32_unnamed_emscripten_compute_dom_pk_code165_emscripten_compute_dom_pk_code39_out_intel_reserved_ffwd_159_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,83)
    assign out_intel_reserved_ffwd_159_0 = i_llvm_fpga_ffwd_source_i32_unnamed_emscripten_compute_dom_pk_code165_emscripten_compute_dom_pk_code39_out_intel_reserved_ffwd_159_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,86)
    assign out_lm58812_emscripten_compute_dom_pk_code_avm_address = i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_address;
    assign out_lm58812_emscripten_compute_dom_pk_code_avm_enable = i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_enable;
    assign out_lm58812_emscripten_compute_dom_pk_code_avm_read = i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_read;
    assign out_lm58812_emscripten_compute_dom_pk_code_avm_write = i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_write;
    assign out_lm58812_emscripten_compute_dom_pk_code_avm_writedata = i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_writedata;
    assign out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable = i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable;
    assign out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount = i_llvm_fpga_mem_lm58812_emscripten_compute_dom_pk_code28_out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount;

    // valid_fanout_reg0(REG,108)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together89_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_masked_emscripten_compute_dom_pk_code40(LOGICAL,59)@16
    assign i_masked_emscripten_compute_dom_pk_code40_q = i_unnamed_emscripten_compute_dom_pk_code33_q & redist5_i_first_cleanup_emscripten_compute_dom_pk_code3_sel_x_b_8_q;

    // sync_out_aunroll_x(GPOUT,106)@16
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist8_i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_out_data_out_8_q;
    assign out_c0_exi2_2_tpl = i_masked_emscripten_compute_dom_pk_code40_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_emscripten_compute_dom_pk_code1 = GND_q;

endmodule
