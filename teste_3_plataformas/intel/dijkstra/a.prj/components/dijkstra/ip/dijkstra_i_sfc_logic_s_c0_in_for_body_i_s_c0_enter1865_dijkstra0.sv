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

// SystemVerilog created from dijkstra_i_sfc_logic_s_c0_in_for_body_i_s_c0_enter1865_dijkstra0
// SystemVerilog created on Mon Apr  6 11:16:51 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_i_sfc_logic_s_c0_in_for_body_i_s_c0_enter1865_dijkstra0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_29_0,
    input wire [31:0] in_intel_reserved_ffwd_30_0,
    input wire [31:0] in_intel_reserved_ffwd_31_0,
    input wire [31:0] in_intel_reserved_ffwd_32_0,
    input wire [31:0] in_intel_reserved_ffwd_33_0,
    input wire [31:0] in_intel_reserved_ffwd_34_0,
    input wire [31:0] in_intel_reserved_ffwd_35_0,
    input wire [31:0] in_intel_reserved_ffwd_36_0,
    input wire [31:0] in_intel_reserved_ffwd_37_0,
    input wire [31:0] in_intel_reserved_ffwd_46_0,
    output wire [31:0] out_intel_reserved_ffwd_49_0,
    input wire [31:0] in_intel_reserved_ffwd_47_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_47_0_7_tpl,
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [31:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_dijkstra1,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [31:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_178_q;
    wire [31:0] c_i32_081_q;
    wire [31:0] c_i32_182_q;
    wire [31:0] c_i32_214748364790_q;
    wire [31:0] c_i32_283_q;
    wire [31:0] c_i32_384_q;
    wire [31:0] c_i32_485_q;
    wire [31:0] c_i32_586_q;
    wire [31:0] c_i32_687_q;
    wire [31:0] c_i32_788_q;
    wire [31:0] c_i32_889_q;
    wire [4:0] c_i5_194_q;
    wire [4:0] c_i5_792_q;
    wire [0:0] comparator_q;
    wire [0:0] i_acl_265_dijkstra32_s;
    reg [31:0] i_acl_265_dijkstra32_q;
    wire [0:0] i_acl_dijkstra29_s;
    reg [31:0] i_acl_dijkstra29_q;
    wire [1:0] i_cleanups_shl130_dijkstra5_vt_join_q;
    wire [0:0] i_cleanups_shl130_dijkstra5_vt_select_1_b;
    wire [0:0] i_cmp1_i_dijkstra20_qi;
    reg [0:0] i_cmp1_i_dijkstra20_q;
    wire [33:0] i_cmp4_i_dijkstra26_a;
    wire [33:0] i_cmp4_i_dijkstra26_b;
    logic [33:0] i_cmp4_i_dijkstra26_o;
    wire [0:0] i_cmp4_i_dijkstra26_c;
    wire [5:0] i_fpga_indvars_iv_next4_dijkstra44_a;
    wire [5:0] i_fpga_indvars_iv_next4_dijkstra44_b;
    logic [5:0] i_fpga_indvars_iv_next4_dijkstra44_o;
    wire [5:0] i_fpga_indvars_iv_next4_dijkstra44_q;
    wire [32:0] i_inc_i_dijkstra34_a;
    wire [32:0] i_inc_i_dijkstra34_b;
    logic [32:0] i_inc_i_dijkstra34_o;
    wire [32:0] i_inc_i_dijkstra34_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt_dijkstra19_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_dist_sroa_0_3_replace_phi62_dijkstra22_out_dest_data_out_46_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi51_dijkstra17_out_dest_data_out_37_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi47_dijkstra10_out_dest_data_out_35_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi45_dijkstra11_out_dest_data_out_34_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi43_dijkstra12_out_dest_data_out_33_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi41_dijkstra13_out_dest_data_out_32_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi39_dijkstra14_out_dest_data_out_31_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi37_dijkstra15_out_dest_data_out_30_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi35_dijkstra16_out_dest_data_out_29_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi49_dijkstra8_out_dest_data_out_36_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra58_dijkstra46_out_intel_reserved_ffwd_49_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_pipeline_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups129_pop36_dijkstra2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups129_pop36_dijkstra2_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_pop_i32_inc50175_pop37_dijkstra48_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_inc50175_pop37_dijkstra48_out_feedback_stall_out_37;
    wire [31:0] i_llvm_fpga_pop_i32_min_0_i29_pop35_dijkstra25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_min_0_i29_pop35_dijkstra25_out_feedback_stall_out_35;
    wire [31:0] i_llvm_fpga_pop_i32_min_index_0_i30_pop34_dijkstra31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_min_index_0_i30_pop34_dijkstra31_out_feedback_stall_out_34;
    wire [31:0] i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_feedback_stall_out_33;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv3_pop32_dijkstra36_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv3_pop32_dijkstra36_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration128_dijkstra7_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration128_dijkstra7_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond136_dijkstra40_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond136_dijkstra40_out_feedback_valid_out_5;
    wire [7:0] i_llvm_fpga_push_i2_cleanups129_push36_dijkstra43_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i2_cleanups129_push36_dijkstra43_out_feedback_valid_out_36;
    wire [31:0] i_llvm_fpga_push_i32_inc50175_push37_dijkstra49_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i32_inc50175_push37_dijkstra49_out_feedback_valid_out_37;
    wire [31:0] i_llvm_fpga_push_i32_min_0_i29_push35_dijkstra30_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i32_min_0_i29_push35_dijkstra30_out_feedback_valid_out_35;
    wire [31:0] i_llvm_fpga_push_i32_min_index_0_i30_push34_dijkstra33_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i32_min_index_0_i30_push34_dijkstra33_out_feedback_valid_out_34;
    wire [31:0] i_llvm_fpga_push_i32_v_0_i31_push33_dijkstra35_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i32_v_0_i31_push33_dijkstra35_out_feedback_valid_out_33;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv3_push32_dijkstra45_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv3_push32_dijkstra45_out_feedback_valid_out_32;
    wire [0:0] i_masked135_dijkstra47_qi;
    reg [0:0] i_masked135_dijkstra47_q;
    wire [0:0] i_next_cleanups134_dijkstra42_s;
    reg [1:0] i_next_cleanups134_dijkstra42_q;
    wire [0:0] i_notcmp122_dijkstra39_q;
    wire [0:0] i_or133_dijkstra41_q;
    wire [0:0] i_unnamed_dijkstra28_q;
    wire [0:0] i_xor132_dijkstra4_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next4_dijkstra44_sel_x_b;
    wire [31:0] bgTrunc_i_inc_i_dijkstra34_sel_x_b;
    wire [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_q;
    wire [0:0] dupName_3_comparator_x_q;
    wire [0:0] dupName_4_comparator_x_q;
    wire [0:0] dupName_5_comparator_x_q;
    wire [0:0] dupName_6_comparator_x_q;
    wire [0:0] i_first_cleanup131_dijkstra3_sel_x_b;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_7_tpl;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    wire [0:0] i_exitcond5_dijkstra37_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid171_i_cleanups_shl130_dijkstra0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid171_i_cleanups_shl130_dijkstra0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid172_i_cleanups_shl130_dijkstra0_shift_x_q;
    wire [0:0] leftShiftStage0_uid174_i_cleanups_shl130_dijkstra0_shift_x_s;
    reg [1:0] leftShiftStage0_uid174_i_cleanups_shl130_dijkstra0_shift_x_q;
    reg [0:0] redist0_sync_together123_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist1_sync_together123_aunroll_x_in_c0_eni2_1_tpl_2_q;
    reg [31:0] redist2_sync_together123_aunroll_x_in_c0_eni2_2_tpl_1_q;
    reg [0:0] redist3_sync_together123_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist4_i_xor132_dijkstra4_q_1_q;
    reg [31:0] redist5_i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out_1_q;
    reg [31:0] redist6_i_llvm_fpga_pop_i32_inc50175_pop37_dijkstra48_out_data_out_1_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_1_q;
    reg [0:0] redist8_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_2_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist3_sync_together123_aunroll_x_in_i_valid_1(DELAY,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together123_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together123_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist7_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_1(DELAY,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid171_i_cleanups_shl130_dijkstra0_shift_x(BITSELECT,170)@2
    assign leftShiftStage0Idx1Rng1_uid171_i_cleanups_shl130_dijkstra0_shift_x_in = i_llvm_fpga_pop_i2_cleanups129_pop36_dijkstra2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid171_i_cleanups_shl130_dijkstra0_shift_x_b = leftShiftStage0Idx1Rng1_uid171_i_cleanups_shl130_dijkstra0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid172_i_cleanups_shl130_dijkstra0_shift_x(BITJOIN,171)@2
    assign leftShiftStage0Idx1_uid172_i_cleanups_shl130_dijkstra0_shift_x_q = {leftShiftStage0Idx1Rng1_uid171_i_cleanups_shl130_dijkstra0_shift_x_b, GND_q};

    // leftShiftStage0_uid174_i_cleanups_shl130_dijkstra0_shift_x(MUX,173)@2
    assign leftShiftStage0_uid174_i_cleanups_shl130_dijkstra0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid174_i_cleanups_shl130_dijkstra0_shift_x_s or i_llvm_fpga_pop_i2_cleanups129_pop36_dijkstra2_out_data_out or leftShiftStage0Idx1_uid172_i_cleanups_shl130_dijkstra0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid174_i_cleanups_shl130_dijkstra0_shift_x_s)
            1'b0 : leftShiftStage0_uid174_i_cleanups_shl130_dijkstra0_shift_x_q = i_llvm_fpga_pop_i2_cleanups129_pop36_dijkstra2_out_data_out;
            1'b1 : leftShiftStage0_uid174_i_cleanups_shl130_dijkstra0_shift_x_q = leftShiftStage0Idx1_uid172_i_cleanups_shl130_dijkstra0_shift_x_q;
            default : leftShiftStage0_uid174_i_cleanups_shl130_dijkstra0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl130_dijkstra5_vt_select_1(BITSELECT,52)@2
    assign i_cleanups_shl130_dijkstra5_vt_select_1_b = leftShiftStage0_uid174_i_cleanups_shl130_dijkstra0_shift_x_q[1:1];

    // i_cleanups_shl130_dijkstra5_vt_join(BITJOIN,51)@2
    assign i_cleanups_shl130_dijkstra5_vt_join_q = {i_cleanups_shl130_dijkstra5_vt_select_1_b, GND_q};

    // i_xor132_dijkstra4(LOGICAL,92)@2
    assign i_xor132_dijkstra4_q = i_first_cleanup131_dijkstra3_sel_x_b ^ VCC_q;

    // i_notcmp122_dijkstra39(LOGICAL,89)@2
    assign i_notcmp122_dijkstra39_q = i_exitcond5_dijkstra37_cmp_nsign_q ^ VCC_q;

    // i_or133_dijkstra41(LOGICAL,90)@2
    assign i_or133_dijkstra41_q = i_notcmp122_dijkstra39_q | i_xor132_dijkstra4_q;

    // i_next_cleanups134_dijkstra42(MUX,88)@2
    assign i_next_cleanups134_dijkstra42_s = i_or133_dijkstra41_q;
    always @(i_next_cleanups134_dijkstra42_s or i_llvm_fpga_pop_i2_cleanups129_pop36_dijkstra2_out_data_out or i_cleanups_shl130_dijkstra5_vt_join_q)
    begin
        unique case (i_next_cleanups134_dijkstra42_s)
            1'b0 : i_next_cleanups134_dijkstra42_q = i_llvm_fpga_pop_i2_cleanups129_pop36_dijkstra2_out_data_out;
            1'b1 : i_next_cleanups134_dijkstra42_q = i_cleanups_shl130_dijkstra5_vt_join_q;
            default : i_next_cleanups134_dijkstra42_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups129_push36_dijkstra43(BLACKBOX,81)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    dijkstra_i_llvm_fpga_push_i2_cleanups129_push36_0 thei_llvm_fpga_push_i2_cleanups129_push36_dijkstra43 (
        .in_data_in(i_next_cleanups134_dijkstra42_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i2_cleanups129_pop36_dijkstra2_out_feedback_stall_out_36),
        .in_keep_going126(redist7_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together123_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i2_cleanups129_push36_dijkstra43_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i2_cleanups129_push36_dijkstra43_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together123_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together123_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together123_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // c_i2_178(CONSTANT,32)
    assign c_i2_178_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups129_pop36_dijkstra2(BLACKBOX,73)@2
    // out out_feedback_stall_out_36@20000000
    dijkstra_i_llvm_fpga_pop_i2_cleanups129_pop36_0 thei_llvm_fpga_pop_i2_cleanups129_pop36_dijkstra2 (
        .in_data_in(c_i2_178_q),
        .in_dir(redist0_sync_together123_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i2_cleanups129_push36_dijkstra43_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i2_cleanups129_push36_dijkstra43_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together123_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups129_pop36_dijkstra2_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i2_cleanups129_pop36_dijkstra2_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup131_dijkstra3_sel_x(BITSELECT,134)@2
    assign i_first_cleanup131_dijkstra3_sel_x_b = i_llvm_fpga_pop_i2_cleanups129_pop36_dijkstra2_out_data_out[0:0];

    // c_i5_194(CONSTANT,44)
    assign c_i5_194_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next4_dijkstra44(ADD,57)@2
    assign i_fpga_indvars_iv_next4_dijkstra44_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv3_pop32_dijkstra36_out_data_out};
    assign i_fpga_indvars_iv_next4_dijkstra44_b = {1'b0, c_i5_194_q};
    assign i_fpga_indvars_iv_next4_dijkstra44_o = $unsigned(i_fpga_indvars_iv_next4_dijkstra44_a) + $unsigned(i_fpga_indvars_iv_next4_dijkstra44_b);
    assign i_fpga_indvars_iv_next4_dijkstra44_q = i_fpga_indvars_iv_next4_dijkstra44_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next4_dijkstra44_sel_x(BITSELECT,111)@2
    assign bgTrunc_i_fpga_indvars_iv_next4_dijkstra44_sel_x_b = i_fpga_indvars_iv_next4_dijkstra44_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv3_push32_dijkstra45(BLACKBOX,86)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    dijkstra_i_llvm_fpga_push_i5_fpga_indvars_iv3_push32_0 thei_llvm_fpga_push_i5_fpga_indvars_iv3_push32_dijkstra45 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next4_dijkstra44_sel_x_b),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i5_fpga_indvars_iv3_pop32_dijkstra36_out_feedback_stall_out_32),
        .in_keep_going126(redist7_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together123_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i5_fpga_indvars_iv3_push32_dijkstra45_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i5_fpga_indvars_iv3_push32_dijkstra45_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_792(CONSTANT,45)
    assign c_i5_792_q = $unsigned(5'b00111);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv3_pop32_dijkstra36(BLACKBOX,78)@2
    // out out_feedback_stall_out_32@20000000
    dijkstra_i_llvm_fpga_pop_i5_fpga_indvars_iv3_pop32_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv3_pop32_dijkstra36 (
        .in_data_in(c_i5_792_q),
        .in_dir(redist0_sync_together123_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i5_fpga_indvars_iv3_push32_dijkstra45_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i5_fpga_indvars_iv3_push32_dijkstra45_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together123_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv3_pop32_dijkstra36_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i5_fpga_indvars_iv3_pop32_dijkstra36_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond5_dijkstra37_cmp_nsign(LOGICAL,166)@2
    assign i_exitcond5_dijkstra37_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv3_pop32_dijkstra36_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond136_dijkstra40(BLACKBOX,80)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    dijkstra_i_llvm_fpga_push_i1_notexitcond136_0 thei_llvm_fpga_push_i1_notexitcond136_dijkstra40 (
        .in_data_in(i_exitcond5_dijkstra37_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_not_exitcond_stall_out),
        .in_first_cleanup131(i_first_cleanup131_dijkstra3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together123_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond136_dijkstra40_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond136_dijkstra40_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,140)@1 + 1
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

    // i_llvm_fpga_push_i1_lastiniteration128_dijkstra7(BLACKBOX,79)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    dijkstra_i_llvm_fpga_push_i1_lastiniteration128_0 thei_llvm_fpga_push_i1_lastiniteration128_dijkstra7 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_initeration_stall_out),
        .in_keep_going126(redist7_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration128_dijkstra7_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration128_dijkstra7_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going126_dijkstra6(BLACKBOX,72)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    dijkstra_i_llvm_fpga_pipeline_keep_going126_0 thei_llvm_fpga_pipeline_keep_going126_dijkstra6 (
        .in_data_in(in_c0_eni2_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration128_dijkstra7_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration128_dijkstra7_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond136_dijkstra40_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond136_dijkstra40_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,47)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going126_dijkstra6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,97)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_pipeline_valid_out;

    // valid_fanout_reg19(REG,158)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist3_sync_together123_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg16(REG,155)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist3_sync_together123_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg17(REG,156)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist3_sync_together123_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist8_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_2(DELAY,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_2_q <= $unsigned(redist7_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i32_min_index_0_i30_push34_dijkstra33(BLACKBOX,84)@3
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    dijkstra_i_llvm_fpga_push_i32_min_index_0_i30_push34_0 thei_llvm_fpga_push_i32_min_index_0_i30_push34_dijkstra33 (
        .in_data_in(i_acl_265_dijkstra32_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i32_min_index_0_i30_pop34_dijkstra31_out_feedback_stall_out_34),
        .in_keep_going126(redist8_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i32_min_index_0_i30_push34_dijkstra33_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i32_min_index_0_i30_push34_dijkstra33_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together123_aunroll_x_in_c0_eni2_1_tpl_2(DELAY,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together123_aunroll_x_in_c0_eni2_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together123_aunroll_x_in_c0_eni2_1_tpl_2_q <= $unsigned(redist0_sync_together123_aunroll_x_in_c0_eni2_1_tpl_1_q);
        end
    end

    // c_i32_081(CONSTANT,33)
    assign c_i32_081_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_min_index_0_i30_pop34_dijkstra31(BLACKBOX,76)@3
    // out out_feedback_stall_out_34@20000000
    dijkstra_i_llvm_fpga_pop_i32_min_index_0_i30_pop34_0 thei_llvm_fpga_pop_i32_min_index_0_i30_pop34_dijkstra31 (
        .in_data_in(c_i32_081_q),
        .in_dir(redist1_sync_together123_aunroll_x_in_c0_eni2_1_tpl_2_q),
        .in_feedback_in_34(i_llvm_fpga_push_i32_min_index_0_i30_push34_dijkstra33_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i32_min_index_0_i30_push34_dijkstra33_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i32_min_index_0_i30_pop34_dijkstra31_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i32_min_index_0_i30_pop34_dijkstra31_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,150)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg18(REG,157)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_182(CONSTANT,34)
    assign c_i32_182_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_i_dijkstra34(ADD,58)@2
    assign i_inc_i_dijkstra34_a = {1'b0, i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out};
    assign i_inc_i_dijkstra34_b = {1'b0, c_i32_182_q};
    assign i_inc_i_dijkstra34_o = $unsigned(i_inc_i_dijkstra34_a) + $unsigned(i_inc_i_dijkstra34_b);
    assign i_inc_i_dijkstra34_q = i_inc_i_dijkstra34_o[32:0];

    // bgTrunc_i_inc_i_dijkstra34_sel_x(BITSELECT,112)@2
    assign bgTrunc_i_inc_i_dijkstra34_sel_x_b = i_inc_i_dijkstra34_q[31:0];

    // i_llvm_fpga_push_i32_v_0_i31_push33_dijkstra35(BLACKBOX,85)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    dijkstra_i_llvm_fpga_push_i32_v_0_i31_push33_0 thei_llvm_fpga_push_i32_v_0_i31_push33_dijkstra35 (
        .in_data_in(bgTrunc_i_inc_i_dijkstra34_sel_x_b),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_feedback_stall_out_33),
        .in_keep_going126(redist7_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i32_v_0_i31_push33_dijkstra35_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i32_v_0_i31_push33_dijkstra35_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18(BLACKBOX,77)@2
    // out out_feedback_stall_out_33@20000000
    dijkstra_i_llvm_fpga_pop_i32_v_0_i31_pop33_0 thei_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18 (
        .in_data_in(c_i32_081_q),
        .in_dir(redist0_sync_together123_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i32_v_0_i31_push33_dijkstra35_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i32_v_0_i31_push33_dijkstra35_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out_1(DELAY,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out);
        end
    end

    // valid_fanout_reg12(REG,151)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_dist_sroa_0_3_replace_phi62_dijkstra22(BLACKBOX,61)@2
    dijkstra_i_llvm_fpga_ffwd_dest_i32_dist_sroa_0_3_replace_phi62_0 thei_llvm_fpga_ffwd_dest_i32_dist_sroa_0_3_replace_phi62_dijkstra22 (
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_46_0(i_llvm_fpga_ffwd_dest_i32_dist_sroa_0_3_replace_phi62_dijkstra22_out_dest_data_out_46_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_889(CONSTANT,42)
    assign c_i32_889_q = $unsigned(32'b00000000000000000000000000001000);

    // dupName_6_comparator_x(LOGICAL,121)@2
    assign dupName_6_comparator_x_q = $unsigned(i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out == c_i32_889_q ? 1'b1 : 1'b0);

    // c_i32_788(CONSTANT,41)
    assign c_i32_788_q = $unsigned(32'b00000000000000000000000000000111);

    // dupName_5_comparator_x(LOGICAL,120)@2
    assign dupName_5_comparator_x_q = $unsigned(i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out == c_i32_788_q ? 1'b1 : 1'b0);

    // c_i32_687(CONSTANT,40)
    assign c_i32_687_q = $unsigned(32'b00000000000000000000000000000110);

    // dupName_4_comparator_x(LOGICAL,119)@2
    assign dupName_4_comparator_x_q = $unsigned(i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out == c_i32_687_q ? 1'b1 : 1'b0);

    // c_i32_586(CONSTANT,39)
    assign c_i32_586_q = $unsigned(32'b00000000000000000000000000000101);

    // dupName_3_comparator_x(LOGICAL,118)@2
    assign dupName_3_comparator_x_q = $unsigned(i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out == c_i32_586_q ? 1'b1 : 1'b0);

    // c_i32_485(CONSTANT,38)
    assign c_i32_485_q = $unsigned(32'b00000000000000000000000000000100);

    // dupName_2_comparator_x(LOGICAL,117)@2
    assign dupName_2_comparator_x_q = $unsigned(i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out == c_i32_485_q ? 1'b1 : 1'b0);

    // c_i32_384(CONSTANT,37)
    assign c_i32_384_q = $unsigned(32'b00000000000000000000000000000011);

    // dupName_1_comparator_x(LOGICAL,116)@2
    assign dupName_1_comparator_x_q = $unsigned(i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out == c_i32_384_q ? 1'b1 : 1'b0);

    // c_i32_283(CONSTANT,36)
    assign c_i32_283_q = $unsigned(32'b00000000000000000000000000000010);

    // dupName_0_comparator_x(LOGICAL,115)@2
    assign dupName_0_comparator_x_q = $unsigned(i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out == c_i32_283_q ? 1'b1 : 1'b0);

    // valid_fanout_reg13(REG,152)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x(BLACKBOX,135)@2
    dijkstra_i_llvm_fpga_ffwd_dest_s_case_asA000000Zssign31463_dijkstra0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x (
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .in_intel_reserved_ffwd_47_0_0_tpl(in_intel_reserved_ffwd_47_0_0_tpl),
        .in_intel_reserved_ffwd_47_0_1_tpl(in_intel_reserved_ffwd_47_0_1_tpl),
        .in_intel_reserved_ffwd_47_0_2_tpl(in_intel_reserved_ffwd_47_0_2_tpl),
        .in_intel_reserved_ffwd_47_0_3_tpl(in_intel_reserved_ffwd_47_0_3_tpl),
        .in_intel_reserved_ffwd_47_0_4_tpl(in_intel_reserved_ffwd_47_0_4_tpl),
        .in_intel_reserved_ffwd_47_0_5_tpl(in_intel_reserved_ffwd_47_0_5_tpl),
        .in_intel_reserved_ffwd_47_0_6_tpl(in_intel_reserved_ffwd_47_0_6_tpl),
        .in_intel_reserved_ffwd_47_0_7_tpl(in_intel_reserved_ffwd_47_0_7_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_47_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_0_tpl),
        .out_dest_data_out_47_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_1_tpl),
        .out_dest_data_out_47_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_2_tpl),
        .out_dest_data_out_47_0_3_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_3_tpl),
        .out_dest_data_out_47_0_4_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_4_tpl),
        .out_dest_data_out_47_0_5_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_5_tpl),
        .out_dest_data_out_47_0_6_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_6_tpl),
        .out_dest_data_out_47_0_7_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // comparator(LOGICAL,46)@2
    assign comparator_q = $unsigned(i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out == c_i32_182_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24(SELECTOR,59)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q <= 32'b0;
        end
        else
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q <= i_llvm_fpga_ffwd_dest_i32_dist_sroa_0_3_replace_phi62_dijkstra22_out_dest_data_out_46_0;
            if (dupName_6_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q <= i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_7_tpl;
            end
            if (dupName_5_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q <= i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_6_tpl;
            end
            if (dupName_4_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q <= i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_5_tpl;
            end
            if (dupName_3_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q <= i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_4_tpl;
            end
            if (dupName_2_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q <= i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_3_tpl;
            end
            if (dupName_1_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q <= i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_2_tpl;
            end
            if (dupName_0_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q <= i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_1_tpl;
            end
            if (comparator_q == 1'b1)
            begin
                i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q <= i_llvm_fpga_ffwd_dest_s_case_assign_struct_dijkstra_fpgaunique_1s_case_assign31463_dijkstra23_aunroll_x_out_dest_data_out_47_0_0_tpl;
            end
        end
    end

    // valid_fanout_reg14(REG,153)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist3_sync_together123_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg15(REG,154)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist3_sync_together123_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_acl_dijkstra29(MUX,49)@3
    assign i_acl_dijkstra29_s = i_unnamed_dijkstra28_q;
    always @(i_acl_dijkstra29_s or i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q or i_llvm_fpga_pop_i32_min_0_i29_pop35_dijkstra25_out_data_out)
    begin
        unique case (i_acl_dijkstra29_s)
            1'b0 : i_acl_dijkstra29_q = i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q;
            1'b1 : i_acl_dijkstra29_q = i_llvm_fpga_pop_i32_min_0_i29_pop35_dijkstra25_out_data_out;
            default : i_acl_dijkstra29_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_min_0_i29_push35_dijkstra30(BLACKBOX,83)@3
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    dijkstra_i_llvm_fpga_push_i32_min_0_i29_push35_0 thei_llvm_fpga_push_i32_min_0_i29_push35_dijkstra30 (
        .in_data_in(i_acl_dijkstra29_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i32_min_0_i29_pop35_dijkstra25_out_feedback_stall_out_35),
        .in_keep_going126(redist8_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i32_min_0_i29_push35_dijkstra30_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i32_min_0_i29_push35_dijkstra30_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_214748364790(CONSTANT,35)
    assign c_i32_214748364790_q = $unsigned(32'b01111111111111111111111111111111);

    // i_llvm_fpga_pop_i32_min_0_i29_pop35_dijkstra25(BLACKBOX,75)@3
    // out out_feedback_stall_out_35@20000000
    dijkstra_i_llvm_fpga_pop_i32_min_0_i29_pop35_0 thei_llvm_fpga_pop_i32_min_0_i29_pop35_dijkstra25 (
        .in_data_in(c_i32_214748364790_q),
        .in_dir(redist1_sync_together123_aunroll_x_in_c0_eni2_1_tpl_2_q),
        .in_feedback_in_35(i_llvm_fpga_push_i32_min_0_i29_push35_dijkstra30_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i32_min_0_i29_push35_dijkstra30_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i32_min_0_i29_pop35_dijkstra25_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i32_min_0_i29_pop35_dijkstra25_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp4_i_dijkstra26(COMPARE,54)@3
    assign i_cmp4_i_dijkstra26_a = $unsigned({{2{i_llvm_fpga_pop_i32_min_0_i29_pop35_dijkstra25_out_data_out[31]}}, i_llvm_fpga_pop_i32_min_0_i29_pop35_dijkstra25_out_data_out});
    assign i_cmp4_i_dijkstra26_b = $unsigned({{2{i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q[31]}}, i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt315_dijkstra24_q});
    assign i_cmp4_i_dijkstra26_o = $unsigned($signed(i_cmp4_i_dijkstra26_a) - $signed(i_cmp4_i_dijkstra26_b));
    assign i_cmp4_i_dijkstra26_c[0] = i_cmp4_i_dijkstra26_o[33];

    // valid_fanout_reg10(REG,149)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi51_dijkstra17(BLACKBOX,62)@2
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi51_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi51_dijkstra17 (
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_37_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi51_dijkstra17_out_dest_data_out_37_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,148)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi35_dijkstra16(BLACKBOX,69)@2
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi35_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi35_dijkstra16 (
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_29_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi35_dijkstra16_out_dest_data_out_29_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,147)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi37_dijkstra15(BLACKBOX,68)@2
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi37_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi37_dijkstra15 (
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_30_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi37_dijkstra15_out_dest_data_out_30_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,146)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi39_dijkstra14(BLACKBOX,67)@2
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi39_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi39_dijkstra14 (
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_31_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi39_dijkstra14_out_dest_data_out_31_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,145)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi41_dijkstra13(BLACKBOX,66)@2
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi41_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi41_dijkstra13 (
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_32_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi41_dijkstra13_out_dest_data_out_32_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,144)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi43_dijkstra12(BLACKBOX,65)@2
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi43_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi43_dijkstra12 (
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_33_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi43_dijkstra12_out_dest_data_out_33_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,143)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi45_dijkstra11(BLACKBOX,64)@2
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi45_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi45_dijkstra11 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi45_dijkstra11_out_dest_data_out_34_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,142)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi47_dijkstra10(BLACKBOX,63)@2
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi47_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi47_dijkstra10 (
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_35_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi47_dijkstra10_out_dest_data_out_35_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,141)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi49_dijkstra8(BLACKBOX,70)@2
    dijkstra_i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi49_0 thei_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi49_dijkstra8 (
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_36_0(i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi49_dijkstra8_out_dest_data_out_36_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt_dijkstra19(SELECTOR,60)@2
    always @(comparator_q or i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi49_dijkstra8_out_dest_data_out_36_0 or dupName_0_comparator_x_q or i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi47_dijkstra10_out_dest_data_out_35_0 or dupName_1_comparator_x_q or i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi45_dijkstra11_out_dest_data_out_34_0 or dupName_2_comparator_x_q or i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi43_dijkstra12_out_dest_data_out_33_0 or dupName_3_comparator_x_q or i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi41_dijkstra13_out_dest_data_out_32_0 or dupName_4_comparator_x_q or i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi39_dijkstra14_out_dest_data_out_31_0 or dupName_5_comparator_x_q or i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi37_dijkstra15_out_dest_data_out_30_0 or dupName_6_comparator_x_q or i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi35_dijkstra16_out_dest_data_out_29_0 or i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi51_dijkstra17_out_dest_data_out_37_0)
    begin
        i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt_dijkstra19_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_0_2_replace_phi51_dijkstra17_out_dest_data_out_37_0;
        if (dupName_6_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt_dijkstra19_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_34_2_replace_phi35_dijkstra16_out_dest_data_out_29_0;
        end
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt_dijkstra19_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_30_2_replace_phi37_dijkstra15_out_dest_data_out_30_0;
        end
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt_dijkstra19_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_26_2_replace_phi39_dijkstra14_out_dest_data_out_31_0;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt_dijkstra19_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_22_2_replace_phi41_dijkstra13_out_dest_data_out_32_0;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt_dijkstra19_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_18_2_replace_phi43_dijkstra12_out_dest_data_out_33_0;
        end
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt_dijkstra19_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_14_2_replace_phi45_dijkstra11_out_dest_data_out_34_0;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt_dijkstra19_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_10_2_replace_phi47_dijkstra10_out_dest_data_out_35_0;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt_dijkstra19_q = i_llvm_fpga_ffwd_dest_i32_sptset_sroa_6_2_replace_phi49_dijkstra8_out_dest_data_out_36_0;
        end
    end

    // i_cmp1_i_dijkstra20(LOGICAL,53)@2 + 1
    assign i_cmp1_i_dijkstra20_qi = $unsigned(i_llvm_fpga_case_i32_i32_v8i32_s_case_assign_struct_dijkstra_fpgaunique_1s_case_stmt_dijkstra19_q != c_i32_081_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp1_i_dijkstra20_delay ( .xin(i_cmp1_i_dijkstra20_qi), .xout(i_cmp1_i_dijkstra20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_dijkstra28(LOGICAL,91)@3
    assign i_unnamed_dijkstra28_q = i_cmp1_i_dijkstra20_q | i_cmp4_i_dijkstra26_c;

    // i_acl_265_dijkstra32(MUX,48)@3
    assign i_acl_265_dijkstra32_s = i_unnamed_dijkstra28_q;
    always @(i_acl_265_dijkstra32_s or redist5_i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out_1_q or i_llvm_fpga_pop_i32_min_index_0_i30_pop34_dijkstra31_out_data_out)
    begin
        unique case (i_acl_265_dijkstra32_s)
            1'b0 : i_acl_265_dijkstra32_q = redist5_i_llvm_fpga_pop_i32_v_0_i31_pop33_dijkstra18_out_data_out_1_q;
            1'b1 : i_acl_265_dijkstra32_q = i_llvm_fpga_pop_i32_min_index_0_i30_pop34_dijkstra31_out_data_out;
            default : i_acl_265_dijkstra32_q = 32'b0;
        endcase
    end

    // redist4_i_xor132_dijkstra4_q_1(DELAY,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_xor132_dijkstra4_q_1_q <= '0;
        end
        else
        begin
            redist4_i_xor132_dijkstra4_q_1_q <= $unsigned(i_xor132_dijkstra4_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra58_dijkstra46(BLACKBOX,71)@3
    // out out_intel_reserved_ffwd_49_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_58_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra58_dijkstra46 (
        .in_predicate_in(redist4_i_xor132_dijkstra4_q_1_q),
        .in_src_data_in_49_0(i_acl_265_dijkstra32_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_intel_reserved_ffwd_49_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra58_dijkstra46_out_intel_reserved_ffwd_49_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,108)
    assign out_intel_reserved_ffwd_49_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra58_dijkstra46_out_intel_reserved_ffwd_49_0;

    // valid_fanout_reg0(REG,139)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together123_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg20(REG,159)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg21(REG,160)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_inc50175_push37_dijkstra49(BLACKBOX,82)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    dijkstra_i_llvm_fpga_push_i32_inc50175_push37_0 thei_llvm_fpga_push_i32_inc50175_push37_dijkstra49 (
        .in_data_in(i_llvm_fpga_pop_i32_inc50175_pop37_dijkstra48_out_data_out),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i32_inc50175_pop37_dijkstra48_out_feedback_stall_out_37),
        .in_keep_going126(redist7_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i32_inc50175_push37_dijkstra49_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i32_inc50175_push37_dijkstra49_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together123_aunroll_x_in_c0_eni2_2_tpl_1(DELAY,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together123_aunroll_x_in_c0_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together123_aunroll_x_in_c0_eni2_2_tpl_1_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_inc50175_pop37_dijkstra48(BLACKBOX,74)@2
    // out out_feedback_stall_out_37@20000000
    dijkstra_i_llvm_fpga_pop_i32_inc50175_pop37_0 thei_llvm_fpga_pop_i32_inc50175_pop37_dijkstra48 (
        .in_data_in(redist2_sync_together123_aunroll_x_in_c0_eni2_2_tpl_1_q),
        .in_dir(redist0_sync_together123_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i32_inc50175_push37_dijkstra49_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i32_inc50175_push37_dijkstra49_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i32_inc50175_pop37_dijkstra48_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i32_inc50175_pop37_dijkstra48_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_llvm_fpga_pop_i32_inc50175_pop37_dijkstra48_out_data_out_1(DELAY,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i32_inc50175_pop37_dijkstra48_out_data_out_1_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_i32_inc50175_pop37_dijkstra48_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_inc50175_pop37_dijkstra48_out_data_out);
        end
    end

    // i_masked135_dijkstra47(LOGICAL,87)@2 + 1
    assign i_masked135_dijkstra47_qi = i_notcmp122_dijkstra39_q & i_first_cleanup131_dijkstra3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked135_dijkstra47_delay ( .xin(i_masked135_dijkstra47_qi), .xout(i_masked135_dijkstra47_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,137)@3
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = redist8_i_llvm_fpga_pipeline_keep_going126_dijkstra6_out_data_out_2_q;
    assign out_c0_exi3_2_tpl = i_masked135_dijkstra47_q;
    assign out_c0_exi3_3_tpl = redist6_i_llvm_fpga_pop_i32_inc50175_pop37_dijkstra48_out_data_out_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_dijkstra1 = GND_q;

endmodule
