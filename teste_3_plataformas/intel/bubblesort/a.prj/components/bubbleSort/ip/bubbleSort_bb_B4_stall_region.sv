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

// SystemVerilog created from bubbleSort_bb_B4_stall_region
// SystemVerilog created on Mon Apr  6 11:16:20 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bubbleSort_bb_B4_stall_region (
    input wire [63:0] in_lm1_bubbleSort_avm_readdata,
    input wire [0:0] in_lm1_bubbleSort_avm_writeack,
    input wire [0:0] in_lm1_bubbleSort_avm_waitrequest,
    input wire [0:0] in_lm1_bubbleSort_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bubblesort4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bubblesort4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add44,
    input wire [0:0] in_demorgan46,
    input wire [0:0] in_forked26,
    input wire [31:0] in_i_023_pop1143,
    input wire [0:0] in_memdep_phi3_pop1247,
    input wire [0:0] in_memdep_phi7_pop1348,
    input wire [0:0] in_notcmp3045,
    input wire [32:0] in_unnamed_bubbleSort8,
    input wire [0:0] in_unnamed_bubbleSort9,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_lm92_bubbleSort_avm_readdata,
    input wire [0:0] in_lm92_bubbleSort_avm_writeack,
    input wire [0:0] in_lm92_bubbleSort_avm_waitrequest,
    input wire [0:0] in_lm92_bubbleSort_avm_readdatavalid,
    output wire [63:0] out_lm1_bubbleSort_avm_address,
    output wire [0:0] out_lm1_bubbleSort_avm_enable,
    output wire [0:0] out_lm1_bubbleSort_avm_read,
    output wire [0:0] out_lm1_bubbleSort_avm_write,
    output wire [63:0] out_lm1_bubbleSort_avm_writedata,
    output wire [7:0] out_lm1_bubbleSort_avm_byteenable,
    output wire [0:0] out_lm1_bubbleSort_avm_burstcount,
    output wire [0:0] out_masked,
    output wire [0:0] out_memdep,
    output wire [0:0] out_notcmp3039_pop21,
    output wire [0:0] out_pop20,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_memdep_bubbleSort_avm_readdata,
    input wire [0:0] in_memdep_bubbleSort_avm_writeack,
    input wire [0:0] in_memdep_bubbleSort_avm_waitrequest,
    input wire [0:0] in_memdep_bubbleSort_avm_readdatavalid,
    output wire [63:0] out_lm92_bubbleSort_avm_address,
    output wire [0:0] out_lm92_bubbleSort_avm_enable,
    output wire [0:0] out_lm92_bubbleSort_avm_read,
    output wire [0:0] out_lm92_bubbleSort_avm_write,
    output wire [63:0] out_lm92_bubbleSort_avm_writedata,
    output wire [7:0] out_lm92_bubbleSort_avm_byteenable,
    output wire [0:0] out_lm92_bubbleSort_avm_burstcount,
    input wire [63:0] in_memdep_5_bubbleSort_avm_readdata,
    input wire [0:0] in_memdep_5_bubbleSort_avm_writeack,
    input wire [0:0] in_memdep_5_bubbleSort_avm_waitrequest,
    input wire [0:0] in_memdep_5_bubbleSort_avm_readdatavalid,
    output wire [63:0] out_memdep_bubbleSort_avm_address,
    output wire [0:0] out_memdep_bubbleSort_avm_enable,
    output wire [0:0] out_memdep_bubbleSort_avm_read,
    output wire [0:0] out_memdep_bubbleSort_avm_write,
    output wire [63:0] out_memdep_bubbleSort_avm_writedata,
    output wire [7:0] out_memdep_bubbleSort_avm_byteenable,
    output wire [0:0] out_memdep_bubbleSort_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    output wire [63:0] out_memdep_5_bubbleSort_avm_address,
    output wire [0:0] out_memdep_5_bubbleSort_avm_enable,
    output wire [0:0] out_memdep_5_bubbleSort_avm_read,
    output wire [0:0] out_memdep_5_bubbleSort_avm_write,
    output wire [63:0] out_memdep_5_bubbleSort_avm_writedata,
    output wire [7:0] out_memdep_5_bubbleSort_avm_byteenable,
    output wire [0:0] out_memdep_5_bubbleSort_avm_burstcount,
    output wire [0:0] out_lsu_memdep_5_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_158_q;
    wire [31:0] c_i32_161_q;
    wire [32:0] c_i33_163_q;
    wire [1:0] i_cleanups_shl_bubblesort3_vt_join_q;
    wire [0:0] i_cleanups_shl_bubblesort3_vt_select_1_b;
    wire [33:0] i_cmp6_bubblesort30_a;
    wire [33:0] i_cmp6_bubblesort30_b;
    logic [33:0] i_cmp6_bubblesort30_o;
    wire [0:0] i_cmp6_bubblesort30_c;
    wire [0:0] i_first_cleanup_xor28_or_bubblesort37_q;
    wire [0:0] i_first_cleanup_xor_or_bubblesort23_q;
    wire [33:0] i_fpga_indvars_iv_next14_bubblesort47_a;
    wire [33:0] i_fpga_indvars_iv_next14_bubblesort47_b;
    logic [33:0] i_fpga_indvars_iv_next14_bubblesort47_o;
    wire [33:0] i_fpga_indvars_iv_next14_bubblesort47_q;
    wire [31:0] i_idxprom_bubblesort11_vt_const_63_q;
    wire [63:0] i_idxprom_bubblesort11_vt_join_q;
    wire [31:0] i_idxprom_bubblesort11_vt_select_31_b;
    wire [32:0] i_inc_bubblesort42_a;
    wire [32:0] i_inc_bubblesort42_b;
    logic [32:0] i_inc_bubblesort42_o;
    wire [32:0] i_inc_bubblesort42_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_bubblesort24_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1_bubblesort24_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1_bubblesort24_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm92_bubblesort29_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm92_bubblesort29_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm92_bubblesort29_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_5_bubblesort40_out_lsu_memdep_5_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_5_bubblesort40_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_5_bubblesort40_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_5_bubblesort40_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_bubblesort38_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_bubblesort38_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_bubblesort38_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bubblesort4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bubblesort4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bubblesort4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bubblesort4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bubblesort4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bubblesort4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bubblesort4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bubblesort4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop20_bubblesort32_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_pop20_bubblesort32_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop20_bubblesort32_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_out_valid_out;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_bubblesort5_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_bubblesort5_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_bubblesort5_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_bubblesort5_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_bubblesort51_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_bubblesort51_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_bubblesort51_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_bubblesort51_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_push20_bubblesort33_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_push20_bubblesort33_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_push20_bubblesort33_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_push20_bubblesort33_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_j_021_push15_bubblesort43_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_j_021_push15_bubblesort43_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i32_j_021_push15_bubblesort43_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_j_021_push15_bubblesort43_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_out_valid_out;
    wire [0:0] i_masked_bubblesort55_qi;
    reg [0:0] i_masked_bubblesort55_q;
    wire [0:0] i_memdep_phi7_or10_bubblesort36_q;
    wire [0:0] i_next_cleanups_bubblesort53_s;
    reg [1:0] i_next_cleanups_bubblesort53_q;
    wire [0:0] i_notcmp_bubblesort50_q;
    wire [0:0] i_or_bubblesort52_q;
    wire [0:0] i_phi_decision8_and_i0_bubblesort34_q;
    wire [0:0] i_reduction_bubblesort_0_bubblesort18_q;
    wire [0:0] i_reduction_bubblesort_1_bubblesort20_q;
    wire [0:0] i_reduction_bubblesort_2_bubblesort22_q;
    wire [0:0] i_unnamed_bubblesort35_q;
    wire [0:0] i_unnamed_bubblesort49_q;
    wire [0:0] i_unnamed_bubblesort8_q;
    wire [0:0] i_xor_bubblesort2_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next14_bubblesort47_sel_x_b;
    wire [31:0] bgTrunc_i_inc_bubblesort42_sel_x_b;
    wire [0:0] bubbleSort_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] bubbleSort_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [32:0] bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] bubbleSort_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] bubbleSort_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] bubbleSort_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] bubbleSort_B4_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] bubbleSort_B4_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] bubbleSort_B4_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [64:0] i_arrayidx5_bubblesort0_add_x_a;
    wire [64:0] i_arrayidx5_bubblesort0_add_x_b;
    logic [64:0] i_arrayidx5_bubblesort0_add_x_o;
    wire [64:0] i_arrayidx5_bubblesort0_add_x_q;
    wire [127:0] i_arrayidx5_bubblesort0_mult_extender_x_q;
    wire [60:0] i_arrayidx5_bubblesort0_mult_multconst_x_q;
    wire [63:0] i_arrayidx5_bubblesort0_trunc_sel_x_b;
    wire [63:0] i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_bubblesort0_add_x_a;
    wire [64:0] i_arrayidx_bubblesort0_add_x_b;
    logic [64:0] i_arrayidx_bubblesort0_add_x_o;
    wire [64:0] i_arrayidx_bubblesort0_add_x_q;
    wire [127:0] i_arrayidx_bubblesort0_mult_extender_x_q;
    wire [63:0] i_arrayidx_bubblesort0_trunc_sel_x_b;
    wire [63:0] i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_bubblesort1_sel_x_b;
    wire [63:0] i_idxprom4_bubblesort26_sel_x_b;
    wire [63:0] i_idxprom_bubblesort11_sel_x_b;
    wire [0:0] i_exitcond_bubblesort45_cmp_nsign_q;
    wire [35:0] i_arrayidx5_bubblesort0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx5_bubblesort0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx5_bubblesort0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx5_bubblesort0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx5_bubblesort0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx5_bubblesort0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx5_bubblesort0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx5_bubblesort0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx5_bubblesort0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx5_bubblesort0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx5_bubblesort0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx5_bubblesort0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx_bubblesort0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx_bubblesort0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx_bubblesort0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx_bubblesort0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx_bubblesort0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx_bubblesort0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx_bubblesort0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx_bubblesort0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx_bubblesort0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx_bubblesort0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx_bubblesort0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx_bubblesort0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid239_i_cleanups_shl_bubblesort0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid239_i_cleanups_shl_bubblesort0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid240_i_cleanups_shl_bubblesort0_shift_x_q;
    wire [0:0] leftShiftStage0_uid242_i_cleanups_shl_bubblesort0_shift_x_s;
    reg [1:0] leftShiftStage0_uid242_i_cleanups_shl_bubblesort0_shift_x_q;
    wire [11:0] i_arrayidx5_bubblesort0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx5_bubblesort0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx5_bubblesort0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx5_bubblesort0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx5_bubblesort0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx5_bubblesort0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx5_bubblesort0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx5_bubblesort0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx_bubblesort0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx_bubblesort0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx_bubblesort0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx_bubblesort0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx_bubblesort0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx_bubblesort0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx_bubblesort0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx_bubblesort0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx_bubblesort0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx_bubblesort0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx_bubblesort0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx_bubblesort0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx5_bubblesort0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx5_bubblesort0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx5_bubblesort0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx5_bubblesort0_mult_x_bs1_merged_bit_select_e;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [32:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_valid_in;
    wire redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_stall_in;
    wire redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_data_in;
    wire [0:0] redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_valid_out;
    wire redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_stall_out;
    wire redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_data_out;
    wire [0:0] redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_valid_in;
    wire redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_stall_in;
    wire redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_data_in;
    wire [0:0] redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_valid_out;
    wire redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_stall_out;
    wire redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_data_out;
    wire [0:0] redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_valid_in;
    wire redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_stall_in;
    wire redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_data_in;
    wire [0:0] redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_valid_out;
    wire redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_stall_out;
    wire redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_data_out;
    wire [0:0] redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_in;
    wire redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_in;
    wire redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_data_in;
    wire [0:0] redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_out;
    wire redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_out;
    wire redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_data_out;
    reg [0:0] redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_q;
    wire [0:0] redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_valid_in;
    wire redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_stall_in;
    wire redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_stall_in_bitsignaltemp;
    wire [32:0] redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_data_in;
    wire [0:0] redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_valid_out;
    wire redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_stall_out;
    wire redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_stall_out_bitsignaltemp;
    wire [32:0] redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_data_out;
    wire [0:0] redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_valid_in;
    wire redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_stall_in;
    wire redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_data_in;
    wire [0:0] redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_valid_out;
    wire redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_stall_out;
    wire redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_data_out;
    wire [0:0] redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_valid_in;
    wire redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_stall_in;
    wire redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_data_in;
    wire [0:0] redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_valid_out;
    wire redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_stall_out;
    wire redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_data_out;
    wire [0:0] redist10_i_xor_bubblesort2_q_32_fifo_valid_in;
    wire redist10_i_xor_bubblesort2_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist10_i_xor_bubblesort2_q_32_fifo_stall_in;
    wire redist10_i_xor_bubblesort2_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist10_i_xor_bubblesort2_q_32_fifo_data_in;
    wire [0:0] redist10_i_xor_bubblesort2_q_32_fifo_valid_out;
    wire redist10_i_xor_bubblesort2_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist10_i_xor_bubblesort2_q_32_fifo_stall_out;
    wire redist10_i_xor_bubblesort2_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist10_i_xor_bubblesort2_q_32_fifo_data_out;
    wire [0:0] redist11_i_xor_bubblesort2_q_93_fifo_valid_in;
    wire redist11_i_xor_bubblesort2_q_93_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist11_i_xor_bubblesort2_q_93_fifo_stall_in;
    wire redist11_i_xor_bubblesort2_q_93_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist11_i_xor_bubblesort2_q_93_fifo_data_in;
    wire [0:0] redist11_i_xor_bubblesort2_q_93_fifo_valid_out;
    wire redist11_i_xor_bubblesort2_q_93_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist11_i_xor_bubblesort2_q_93_fifo_stall_out;
    wire redist11_i_xor_bubblesort2_q_93_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist11_i_xor_bubblesort2_q_93_fifo_data_out;
    reg [32:0] redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_q;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_valid_in;
    wire redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_stall_in;
    wire redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_data_in;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_valid_out;
    wire redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_stall_out;
    wire redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_data_out;
    wire [0:0] redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_valid_in;
    wire redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_stall_in;
    wire redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_stall_in_bitsignaltemp;
    wire [1:0] redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_data_in;
    wire [0:0] redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_valid_out;
    wire redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_stall_out;
    wire redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_stall_out_bitsignaltemp;
    wire [1:0] redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_data_out;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_valid_in;
    wire redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_stall_in;
    wire redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_data_in;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_valid_out;
    wire redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_stall_out;
    wire redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_data_out;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_q;
    wire [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_valid_in;
    wire redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_stall_in;
    wire redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_data_in;
    wire [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_valid_out;
    wire redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_stall_out;
    wire redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_data_out;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_valid_in;
    wire redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_stall_in;
    wire redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_data_in;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_valid_out;
    wire redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_stall_out;
    wire redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_data_out;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_valid_in;
    wire redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_stall_in;
    wire redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_data_in;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_valid_out;
    wire redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_stall_out;
    wire redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_data_out;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_valid_in;
    wire redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_stall_in;
    wire redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_data_in;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_valid_out;
    wire redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_stall_out;
    wire redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_data_out;
    wire [0:0] redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_valid_in;
    wire redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_stall_in;
    wire redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_data_in;
    wire [0:0] redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_valid_out;
    wire redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_stall_out;
    wire redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_data_out;
    wire [0:0] redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_valid_in;
    wire redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_stall_in;
    wire redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_data_in;
    wire [0:0] redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_valid_out;
    wire redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_stall_out;
    wire redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [32:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [32:0] coalesced_delay_1_fifo_data_out;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1_bubblesort24_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1_bubblesort24_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm92_bubblesort29_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm92_bubblesort29_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_5_bubblesort40_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_bubblesort38_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_bubblesort38_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_bubblesort4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_pop20_bubblesort32_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_pop20_bubblesort32_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_b;
    wire [32:0] bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_q;
    wire [32:0] bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_b;
    wire [102:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [32:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [102:0] bubble_join_bubbleSort_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_bubbleSort_B4_merge_reg_aunroll_x_b;
    wire [32:0] bubble_select_bubbleSort_B4_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_bubbleSort_B4_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_bubbleSort_B4_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_bubbleSort_B4_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_bubbleSort_B4_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_bubbleSort_B4_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_bubbleSort_B4_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_bubbleSort_B4_merge_reg_aunroll_x_j;
    wire [0:0] bubble_join_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_q;
    wire [0:0] bubble_select_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_b;
    wire [63:0] bubble_join_redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_q;
    wire [63:0] bubble_select_redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_b;
    wire [63:0] bubble_join_redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_q;
    wire [63:0] bubble_select_redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_b;
    wire [0:0] bubble_join_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_q;
    wire [0:0] bubble_select_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_b;
    wire [32:0] bubble_join_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_q;
    wire [32:0] bubble_select_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_b;
    wire [0:0] bubble_join_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_q;
    wire [0:0] bubble_select_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_b;
    wire [31:0] bubble_join_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_q;
    wire [31:0] bubble_select_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_b;
    wire [0:0] bubble_join_redist10_i_xor_bubblesort2_q_32_fifo_q;
    wire [0:0] bubble_select_redist10_i_xor_bubblesort2_q_32_fifo_b;
    wire [0:0] bubble_join_redist11_i_xor_bubblesort2_q_93_fifo_q;
    wire [0:0] bubble_select_redist11_i_xor_bubblesort2_q_93_fifo_b;
    wire [31:0] bubble_join_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_q;
    wire [31:0] bubble_select_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_b;
    wire [1:0] bubble_join_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_q;
    wire [1:0] bubble_select_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_b;
    wire [0:0] bubble_join_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_q;
    wire [0:0] bubble_select_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_b;
    wire [0:0] bubble_join_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_q;
    wire [0:0] bubble_select_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_b;
    wire [0:0] bubble_join_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_q;
    wire [0:0] bubble_select_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_b;
    wire [0:0] bubble_join_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_q;
    wire [0:0] bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_b;
    wire [0:0] bubble_join_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_q;
    wire [0:0] bubble_select_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_b;
    wire [0:0] bubble_join_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_q;
    wire [0:0] bubble_select_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_b;
    wire [0:0] bubble_join_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_q;
    wire [0:0] bubble_select_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [32:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [32:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_i_cmp6_bubblesort30_wireValid;
    wire [0:0] SE_i_cmp6_bubblesort30_wireStall;
    wire [0:0] SE_i_cmp6_bubblesort30_StallValid;
    wire [0:0] SE_i_cmp6_bubblesort30_toReg0;
    reg [0:0] SE_i_cmp6_bubblesort30_fromReg0;
    wire [0:0] SE_i_cmp6_bubblesort30_consumed0;
    wire [0:0] SE_i_cmp6_bubblesort30_toReg1;
    reg [0:0] SE_i_cmp6_bubblesort30_fromReg1;
    wire [0:0] SE_i_cmp6_bubblesort30_consumed1;
    wire [0:0] SE_i_cmp6_bubblesort30_and0;
    wire [0:0] SE_i_cmp6_bubblesort30_and1;
    wire [0:0] SE_i_cmp6_bubblesort30_and2;
    wire [0:0] SE_i_cmp6_bubblesort30_or0;
    wire [0:0] SE_i_cmp6_bubblesort30_backStall;
    wire [0:0] SE_i_cmp6_bubblesort30_V0;
    wire [0:0] SE_i_cmp6_bubblesort30_V1;
    wire [0:0] SE_i_first_cleanup_xor_or_bubblesort23_wireValid;
    wire [0:0] SE_i_first_cleanup_xor_or_bubblesort23_wireStall;
    wire [0:0] SE_i_first_cleanup_xor_or_bubblesort23_StallValid;
    wire [0:0] SE_i_first_cleanup_xor_or_bubblesort23_toReg0;
    reg [0:0] SE_i_first_cleanup_xor_or_bubblesort23_fromReg0;
    wire [0:0] SE_i_first_cleanup_xor_or_bubblesort23_consumed0;
    wire [0:0] SE_i_first_cleanup_xor_or_bubblesort23_toReg1;
    reg [0:0] SE_i_first_cleanup_xor_or_bubblesort23_fromReg1;
    wire [0:0] SE_i_first_cleanup_xor_or_bubblesort23_consumed1;
    wire [0:0] SE_i_first_cleanup_xor_or_bubblesort23_and0;
    wire [0:0] SE_i_first_cleanup_xor_or_bubblesort23_or0;
    wire [0:0] SE_i_first_cleanup_xor_or_bubblesort23_backStall;
    wire [0:0] SE_i_first_cleanup_xor_or_bubblesort23_V0;
    wire [0:0] SE_i_first_cleanup_xor_or_bubblesort23_V1;
    wire [0:0] SE_i_fpga_indvars_iv_next14_bubblesort47_wireValid;
    wire [0:0] SE_i_fpga_indvars_iv_next14_bubblesort47_and0;
    wire [0:0] SE_i_fpga_indvars_iv_next14_bubblesort47_backStall;
    wire [0:0] SE_i_fpga_indvars_iv_next14_bubblesort47_V0;
    wire [0:0] SE_i_idxprom_bubblesort11_vt_join_wireValid;
    wire [0:0] SE_i_idxprom_bubblesort11_vt_join_wireStall;
    wire [0:0] SE_i_idxprom_bubblesort11_vt_join_StallValid;
    wire [0:0] SE_i_idxprom_bubblesort11_vt_join_toReg0;
    reg [0:0] SE_i_idxprom_bubblesort11_vt_join_fromReg0;
    wire [0:0] SE_i_idxprom_bubblesort11_vt_join_consumed0;
    wire [0:0] SE_i_idxprom_bubblesort11_vt_join_toReg1;
    reg [0:0] SE_i_idxprom_bubblesort11_vt_join_fromReg1;
    wire [0:0] SE_i_idxprom_bubblesort11_vt_join_consumed1;
    wire [0:0] SE_i_idxprom_bubblesort11_vt_join_and0;
    wire [0:0] SE_i_idxprom_bubblesort11_vt_join_or0;
    wire [0:0] SE_i_idxprom_bubblesort11_vt_join_backStall;
    wire [0:0] SE_i_idxprom_bubblesort11_vt_join_V0;
    wire [0:0] SE_i_idxprom_bubblesort11_vt_join_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_bubblesort24_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_bubblesort24_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_bubblesort24_and1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_bubblesort24_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1_bubblesort24_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_bubblesort24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_bubblesort24_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_bubblesort24_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_bubblesort24_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1_bubblesort24_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_bubblesort24_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_bubblesort24_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1_bubblesort24_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_bubblesort24_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_bubblesort24_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_bubblesort24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_bubblesort24_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_bubblesort24_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm92_bubblesort29_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm92_bubblesort29_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm92_bubblesort29_and1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm92_bubblesort29_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm92_bubblesort29_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm92_bubblesort29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm92_bubblesort29_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm92_bubblesort29_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm92_bubblesort29_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm92_bubblesort29_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm92_bubblesort29_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm92_bubblesort29_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm92_bubblesort29_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm92_bubblesort29_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm92_bubblesort29_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm92_bubblesort29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm92_bubblesort29_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm92_bubblesort29_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bubblesort38_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bubblesort38_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bubblesort38_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bubblesort38_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_bubblesort38_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bubblesort38_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bubblesort38_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_bubblesort38_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bubblesort38_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bubblesort38_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bubblesort38_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bubblesort38_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_bubblesort38_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg7;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg8;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg8;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed8;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg9;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg9;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed9;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg10;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg10;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed10;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg11;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg11;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed11;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg12;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg12;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed12;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or8;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or9;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or10;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or11;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V7;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V8;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V9;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V10;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V11;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V12;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_and2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_bubblesort5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_bubblesort5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_bubblesort51_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_bubblesort51_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push20_bubblesort33_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push20_bubblesort33_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push20_bubblesort33_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_push20_bubblesort33_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_push20_bubblesort33_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_push20_bubblesort33_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_021_push15_bubblesort43_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_021_push15_bubblesort43_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_backStall;
    reg [0:0] SE_i_masked_bubblesort55_R_v_0;
    wire [0:0] SE_i_masked_bubblesort55_v_s_0;
    wire [0:0] SE_i_masked_bubblesort55_s_tv_0;
    wire [0:0] SE_i_masked_bubblesort55_backEN;
    wire [0:0] SE_i_masked_bubblesort55_and0;
    wire [0:0] SE_i_masked_bubblesort55_backStall;
    wire [0:0] SE_i_masked_bubblesort55_V0;
    reg [0:0] SE_i_next_cleanups_bubblesort53_R_v_0;
    wire [0:0] SE_i_next_cleanups_bubblesort53_v_s_0;
    wire [0:0] SE_i_next_cleanups_bubblesort53_s_tv_0;
    wire [0:0] SE_i_next_cleanups_bubblesort53_backEN;
    wire [0:0] SE_i_next_cleanups_bubblesort53_and0;
    wire [0:0] SE_i_next_cleanups_bubblesort53_backStall;
    wire [0:0] SE_i_next_cleanups_bubblesort53_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg9;
    reg [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg9;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed9;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg10;
    reg [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg10;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed10;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg11;
    reg [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg11;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed11;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_or8;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_or9;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_or10;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_V9;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_V10;
    wire [0:0] SE_out_bubbleSort_B4_merge_reg_aunroll_x_V11;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_wireValid;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_wireStall;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_StallValid;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_toReg0;
    reg [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_fromReg0;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_consumed0;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_toReg1;
    reg [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_fromReg1;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_consumed1;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_toReg2;
    reg [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_fromReg2;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_consumed2;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_and0;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_or0;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_or1;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_backStall;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_V0;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_V1;
    wire [0:0] SE_i_exitcond_bubblesort45_cmp_nsign_V2;
    wire [0:0] SE_join_for_coalesced_delay_1_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_1_and0;
    wire [0:0] SE_join_for_coalesced_delay_1_backStall;
    wire [0:0] SE_join_for_coalesced_delay_1_V0;
    wire [0:0] SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_wireStall;
    wire [0:0] SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_StallValid;
    wire [0:0] SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_toReg0;
    reg [0:0] SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_fromReg0;
    wire [0:0] SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_consumed0;
    wire [0:0] SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_toReg1;
    reg [0:0] SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_fromReg1;
    wire [0:0] SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_consumed1;
    wire [0:0] SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_or0;
    wire [0:0] SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_backStall;
    wire [0:0] SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_V0;
    wire [0:0] SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_V1;
    wire [0:0] SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireValid;
    wire [0:0] SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireStall;
    wire [0:0] SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_StallValid;
    wire [0:0] SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_toReg0;
    reg [0:0] SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg0;
    wire [0:0] SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed0;
    wire [0:0] SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_toReg1;
    reg [0:0] SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg1;
    wire [0:0] SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed1;
    wire [0:0] SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_or0;
    wire [0:0] SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_backStall;
    wire [0:0] SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_V0;
    wire [0:0] SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_V1;
    reg [0:0] SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_0;
    reg [0:0] SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_1;
    wire [0:0] SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_v_s_0;
    wire [0:0] SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_0;
    wire [0:0] SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_1;
    wire [0:0] SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backEN;
    wire [0:0] SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_or0;
    wire [0:0] SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backStall;
    wire [0:0] SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V0;
    wire [0:0] SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V1;
    wire [0:0] SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_wireValid;
    wire [0:0] SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_and0;
    wire [0:0] SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_backStall;
    wire [0:0] SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_V0;
    wire [0:0] SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_wireValid;
    wire [0:0] SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_and0;
    wire [0:0] SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_backStall;
    wire [0:0] SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_V0;
    wire [0:0] SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_wireValid;
    wire [0:0] SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_and0;
    wire [0:0] SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_backStall;
    wire [0:0] SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_V0;
    wire [0:0] SE_out_redist10_i_xor_bubblesort2_q_32_fifo_wireValid;
    wire [0:0] SE_out_redist10_i_xor_bubblesort2_q_32_fifo_wireStall;
    wire [0:0] SE_out_redist10_i_xor_bubblesort2_q_32_fifo_StallValid;
    wire [0:0] SE_out_redist10_i_xor_bubblesort2_q_32_fifo_toReg0;
    reg [0:0] SE_out_redist10_i_xor_bubblesort2_q_32_fifo_fromReg0;
    wire [0:0] SE_out_redist10_i_xor_bubblesort2_q_32_fifo_consumed0;
    wire [0:0] SE_out_redist10_i_xor_bubblesort2_q_32_fifo_toReg1;
    reg [0:0] SE_out_redist10_i_xor_bubblesort2_q_32_fifo_fromReg1;
    wire [0:0] SE_out_redist10_i_xor_bubblesort2_q_32_fifo_consumed1;
    wire [0:0] SE_out_redist10_i_xor_bubblesort2_q_32_fifo_or0;
    wire [0:0] SE_out_redist10_i_xor_bubblesort2_q_32_fifo_backStall;
    wire [0:0] SE_out_redist10_i_xor_bubblesort2_q_32_fifo_V0;
    wire [0:0] SE_out_redist10_i_xor_bubblesort2_q_32_fifo_V1;
    wire [0:0] SE_out_redist11_i_xor_bubblesort2_q_93_fifo_wireValid;
    wire [0:0] SE_out_redist11_i_xor_bubblesort2_q_93_fifo_and0;
    wire [0:0] SE_out_redist11_i_xor_bubblesort2_q_93_fifo_backStall;
    wire [0:0] SE_out_redist11_i_xor_bubblesort2_q_93_fifo_V0;
    reg [0:0] SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_R_v_0;
    reg [0:0] SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_R_v_1;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_v_s_0;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_s_tv_0;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_s_tv_1;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_backEN;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_or0;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_backStall;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_V0;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_V1;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_wireValid;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_and0;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_backStall;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_V0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_wireValid;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_backStall;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_V0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_wireValid;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_wireStall;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_StallValid;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_toReg0;
    reg [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_fromReg0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_consumed0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_toReg1;
    reg [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_fromReg1;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_consumed1;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_or0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_backStall;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_V0;
    wire [0:0] SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_V1;
    reg [0:0] SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_R_v_0;
    reg [0:0] SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_R_v_1;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_v_s_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_s_tv_0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_s_tv_1;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_backEN;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_or0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_backStall;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_V0;
    wire [0:0] SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_V1;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_wireValid;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_wireStall;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_StallValid;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_toReg0;
    reg [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_fromReg0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_consumed0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_toReg1;
    reg [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_fromReg1;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_consumed1;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_or0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_backStall;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_V0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_V1;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_wireValid;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_and0;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_backStall;
    wire [0:0] SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_V0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_wireValid;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_and0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_and1;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_and2;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_and3;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_backStall;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_V0;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_wireValid;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_and0;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_backStall;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_V0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_wireValid;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_and0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_backStall;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_V0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_wireValid;
    wire [0:0] SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_wireStall;
    wire [0:0] SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_StallValid;
    wire [0:0] SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_toReg0;
    reg [0:0] SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_fromReg0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_consumed0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_toReg1;
    reg [0:0] SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_fromReg1;
    wire [0:0] SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_consumed1;
    wire [0:0] SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_or0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_backStall;
    wire [0:0] SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_V0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_and0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_V0;
    reg [0:0] bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_R_v_0;
    reg [0:0] bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_R_v_1;
    wire [0:0] bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_v_s_0;
    wire [0:0] bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_s_tv_0;
    wire [0:0] bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_s_tv_1;
    wire [0:0] bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_backEN;
    wire [0:0] bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_or0;
    wire [0:0] bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_backStall;
    wire [0:0] bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_V0;
    wire [0:0] bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_V1;


    // SE_out_i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41(STALLENABLE,486)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_wireValid = i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_out_valid_out;

    // bubble_join_i_llvm_fpga_pipeline_keep_going_bubblesort4(BITJOIN,327)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_bubblesort4_q = i_llvm_fpga_pipeline_keep_going_bubblesort4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4(BITSELECT,328)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_bubblesort4_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,279)
    assign join_for_coalesced_delay_0_q = {bubble_select_bubbleSort_B4_merge_reg_aunroll_x_f, bubble_select_bubbleSort_B4_merge_reg_aunroll_x_b};

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,429)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,430)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,280)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo(STALLFIFO,287)
    assign redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_in = SE_out_coalesced_delay_0_fifo_V1;
    assign redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_in = SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_backStall;
    assign redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_data_in = sel_for_coalesced_delay_0_b;
    assign redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_in_bitsignaltemp = redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_in[0];
    assign redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_in_bitsignaltemp = redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_in[0];
    assign redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_out[0] = redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_out_bitsignaltemp;
    assign redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_out[0] = redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(62),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo (
        .valid_in(redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_in_bitsignaltemp),
        .data_in(sel_for_coalesced_delay_0_b),
        .valid_out(redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_pop20_bubblesort32(BITJOIN,350)
    assign bubble_join_i_llvm_fpga_pop_i1_pop20_bubblesort32_q = i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_pop20_bubblesort32(BITSELECT,351)
    assign bubble_select_i_llvm_fpga_pop_i1_pop20_bubblesort32_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_pop20_bubblesort32_q[0:0]);

    // SE_out_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54(STALLENABLE,498)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_wireValid = i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_out_valid_out;

    // leftShiftStage0Idx1Rng1_uid239_i_cleanups_shl_bubblesort0_shift_x(BITSELECT,238)@95
    assign leftShiftStage0Idx1Rng1_uid239_i_cleanups_shl_bubblesort0_shift_x_in = bubble_select_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid239_i_cleanups_shl_bubblesort0_shift_x_b = leftShiftStage0Idx1Rng1_uid239_i_cleanups_shl_bubblesort0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid240_i_cleanups_shl_bubblesort0_shift_x(BITJOIN,239)@95
    assign leftShiftStage0Idx1_uid240_i_cleanups_shl_bubblesort0_shift_x_q = {leftShiftStage0Idx1Rng1_uid239_i_cleanups_shl_bubblesort0_shift_x_b, GND_q};

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // leftShiftStage0_uid242_i_cleanups_shl_bubblesort0_shift_x(MUX,241)@95
    assign leftShiftStage0_uid242_i_cleanups_shl_bubblesort0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid242_i_cleanups_shl_bubblesort0_shift_x_s or bubble_select_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_b or leftShiftStage0Idx1_uid240_i_cleanups_shl_bubblesort0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid242_i_cleanups_shl_bubblesort0_shift_x_s)
            1'b0 : leftShiftStage0_uid242_i_cleanups_shl_bubblesort0_shift_x_q = bubble_select_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_b;
            1'b1 : leftShiftStage0_uid242_i_cleanups_shl_bubblesort0_shift_x_q = leftShiftStage0Idx1_uid240_i_cleanups_shl_bubblesort0_shift_x_q;
            default : leftShiftStage0_uid242_i_cleanups_shl_bubblesort0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_bubblesort3_vt_select_1(BITSELECT,15)@95
    assign i_cleanups_shl_bubblesort3_vt_select_1_b = leftShiftStage0_uid242_i_cleanups_shl_bubblesort0_shift_x_q[1:1];

    // i_cleanups_shl_bubblesort3_vt_join(BITJOIN,14)@95
    assign i_cleanups_shl_bubblesort3_vt_join_q = {i_cleanups_shl_bubblesort3_vt_select_1_b, GND_q};

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0(BITJOIN,353)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_q = i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0(BITSELECT,354)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_q[1:0]);

    // i_first_cleanup_bubblesort1_sel_x(BITSELECT,188)@2
    assign i_first_cleanup_bubblesort1_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_b[0:0];

    // i_xor_bubblesort2(LOGICAL,72)@2
    assign i_xor_bubblesort2_q = i_first_cleanup_bubblesort1_sel_x_b ^ VCC_q;

    // SE_out_redist10_i_xor_bubblesort2_q_32_fifo(STALLENABLE,581)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist10_i_xor_bubblesort2_q_32_fifo_fromReg0 <= '0;
            SE_out_redist10_i_xor_bubblesort2_q_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist10_i_xor_bubblesort2_q_32_fifo_fromReg0 <= SE_out_redist10_i_xor_bubblesort2_q_32_fifo_toReg0;
            // Successor 1
            SE_out_redist10_i_xor_bubblesort2_q_32_fifo_fromReg1 <= SE_out_redist10_i_xor_bubblesort2_q_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist10_i_xor_bubblesort2_q_32_fifo_consumed0 = (~ (SE_i_cmp6_bubblesort30_backStall) & SE_out_redist10_i_xor_bubblesort2_q_32_fifo_wireValid) | SE_out_redist10_i_xor_bubblesort2_q_32_fifo_fromReg0;
    assign SE_out_redist10_i_xor_bubblesort2_q_32_fifo_consumed1 = (~ (redist11_i_xor_bubblesort2_q_93_fifo_stall_out) & SE_out_redist10_i_xor_bubblesort2_q_32_fifo_wireValid) | SE_out_redist10_i_xor_bubblesort2_q_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist10_i_xor_bubblesort2_q_32_fifo_StallValid = SE_out_redist10_i_xor_bubblesort2_q_32_fifo_backStall & SE_out_redist10_i_xor_bubblesort2_q_32_fifo_wireValid;
    assign SE_out_redist10_i_xor_bubblesort2_q_32_fifo_toReg0 = SE_out_redist10_i_xor_bubblesort2_q_32_fifo_StallValid & SE_out_redist10_i_xor_bubblesort2_q_32_fifo_consumed0;
    assign SE_out_redist10_i_xor_bubblesort2_q_32_fifo_toReg1 = SE_out_redist10_i_xor_bubblesort2_q_32_fifo_StallValid & SE_out_redist10_i_xor_bubblesort2_q_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist10_i_xor_bubblesort2_q_32_fifo_or0 = SE_out_redist10_i_xor_bubblesort2_q_32_fifo_consumed0;
    assign SE_out_redist10_i_xor_bubblesort2_q_32_fifo_wireStall = ~ (SE_out_redist10_i_xor_bubblesort2_q_32_fifo_consumed1 & SE_out_redist10_i_xor_bubblesort2_q_32_fifo_or0);
    assign SE_out_redist10_i_xor_bubblesort2_q_32_fifo_backStall = SE_out_redist10_i_xor_bubblesort2_q_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist10_i_xor_bubblesort2_q_32_fifo_V0 = SE_out_redist10_i_xor_bubblesort2_q_32_fifo_wireValid & ~ (SE_out_redist10_i_xor_bubblesort2_q_32_fifo_fromReg0);
    assign SE_out_redist10_i_xor_bubblesort2_q_32_fifo_V1 = SE_out_redist10_i_xor_bubblesort2_q_32_fifo_wireValid & ~ (SE_out_redist10_i_xor_bubblesort2_q_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist10_i_xor_bubblesort2_q_32_fifo_wireValid = redist10_i_xor_bubblesort2_q_32_fifo_valid_out;

    // redist10_i_xor_bubblesort2_q_32_fifo(STALLFIFO,292)
    assign redist10_i_xor_bubblesort2_q_32_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_V3;
    assign redist10_i_xor_bubblesort2_q_32_fifo_stall_in = SE_out_redist10_i_xor_bubblesort2_q_32_fifo_backStall;
    assign redist10_i_xor_bubblesort2_q_32_fifo_data_in = i_xor_bubblesort2_q;
    assign redist10_i_xor_bubblesort2_q_32_fifo_valid_in_bitsignaltemp = redist10_i_xor_bubblesort2_q_32_fifo_valid_in[0];
    assign redist10_i_xor_bubblesort2_q_32_fifo_stall_in_bitsignaltemp = redist10_i_xor_bubblesort2_q_32_fifo_stall_in[0];
    assign redist10_i_xor_bubblesort2_q_32_fifo_valid_out[0] = redist10_i_xor_bubblesort2_q_32_fifo_valid_out_bitsignaltemp;
    assign redist10_i_xor_bubblesort2_q_32_fifo_stall_out[0] = redist10_i_xor_bubblesort2_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist10_i_xor_bubblesort2_q_32_fifo (
        .valid_in(redist10_i_xor_bubblesort2_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist10_i_xor_bubblesort2_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_xor_bubblesort2_q),
        .valid_out(redist10_i_xor_bubblesort2_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist10_i_xor_bubblesort2_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist10_i_xor_bubblesort2_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo(STALLENABLE,566)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_fromReg0 <= '0;
            SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_fromReg0 <= SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_toReg0;
            // Successor 1
            SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_fromReg1 <= SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51_backStall) & SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_wireValid) | SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_fromReg0;
    assign SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_consumed1 = (~ (SE_i_masked_bubblesort55_backStall) & SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_wireValid) | SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_fromReg1;
    // Consuming
    assign SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_StallValid = SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_backStall & SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_wireValid;
    assign SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_toReg0 = SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_StallValid & SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_consumed0;
    assign SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_toReg1 = SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_StallValid & SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_or0 = SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_consumed0;
    assign SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_wireStall = ~ (SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_consumed1 & SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_or0);
    assign SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_backStall = SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_V0 = SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_wireValid & ~ (SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_fromReg0);
    assign SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_V1 = SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_wireValid & ~ (SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_wireValid = redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_valid_out;

    // redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo(STALLFIFO,284)
    assign redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_V2;
    assign redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_stall_in = SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_backStall;
    assign redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_data_in = i_first_cleanup_bubblesort1_sel_x_b;
    assign redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_valid_in_bitsignaltemp = redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_valid_in[0];
    assign redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_stall_in_bitsignaltemp = redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_stall_in[0];
    assign redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_valid_out[0] = redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_valid_out_bitsignaltemp;
    assign redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_stall_out[0] = redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(94),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo (
        .valid_in(redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_bubblesort1_sel_x_b),
        .valid_out(redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm92_bubblesort29(BITJOIN,317)
    assign bubble_join_i_llvm_fpga_mem_lm92_bubblesort29_q = i_llvm_fpga_mem_lm92_bubblesort29_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm92_bubblesort29(BITSELECT,318)
    assign bubble_select_i_llvm_fpga_mem_lm92_bubblesort29_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm92_bubblesort29_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_bubblesort38(BITJOIN,324)
    assign bubble_join_i_llvm_fpga_mem_memdep_bubblesort38_q = i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_bubblesort38(BITSELECT,325)
    assign bubble_select_i_llvm_fpga_mem_memdep_bubblesort38_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_bubblesort38_q[0:0]);

    // redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo(STALLFIFO,304)
    assign redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_valid_in = SE_out_i_llvm_fpga_mem_memdep_bubblesort38_V1;
    assign redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_stall_in = SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_backStall;
    assign redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_data_in = bubble_select_i_llvm_fpga_mem_memdep_bubblesort38_b;
    assign redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_valid_in_bitsignaltemp = redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_valid_in[0];
    assign redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_stall_in_bitsignaltemp = redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_stall_in[0];
    assign redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_valid_out[0] = redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_valid_out_bitsignaltemp;
    assign redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_stall_out[0] = redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo (
        .valid_in(redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_mem_memdep_bubblesort38_b),
        .valid_out(redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo(STALLFIFO,286)
    assign redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_V1;
    assign redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_data_in = i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b;
    assign redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_valid_in_bitsignaltemp = redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_valid_in[0];
    assign redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_stall_in_bitsignaltemp = redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_stall_in[0];
    assign redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_valid_out[0] = redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_valid_out_bitsignaltemp;
    assign redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_stall_out[0] = redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo (
        .valid_in(redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b),
        .valid_out(redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm1_bubblesort24(STALLENABLE,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm1_bubblesort24_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm1_bubblesort24_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm1_bubblesort24_fromReg0 <= SE_out_i_llvm_fpga_mem_lm1_bubblesort24_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm1_bubblesort24_fromReg1 <= SE_out_i_llvm_fpga_mem_lm1_bubblesort24_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm1_bubblesort24_consumed0 = (~ (SE_i_cmp6_bubblesort30_backStall) & SE_out_i_llvm_fpga_mem_lm1_bubblesort24_wireValid) | SE_out_i_llvm_fpga_mem_lm1_bubblesort24_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm1_bubblesort24_consumed1 = (~ (SE_join_for_coalesced_delay_1_backStall) & SE_out_i_llvm_fpga_mem_lm1_bubblesort24_wireValid) | SE_out_i_llvm_fpga_mem_lm1_bubblesort24_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm1_bubblesort24_StallValid = SE_out_i_llvm_fpga_mem_lm1_bubblesort24_backStall & SE_out_i_llvm_fpga_mem_lm1_bubblesort24_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm1_bubblesort24_toReg0 = SE_out_i_llvm_fpga_mem_lm1_bubblesort24_StallValid & SE_out_i_llvm_fpga_mem_lm1_bubblesort24_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1_bubblesort24_toReg1 = SE_out_i_llvm_fpga_mem_lm1_bubblesort24_StallValid & SE_out_i_llvm_fpga_mem_lm1_bubblesort24_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm1_bubblesort24_or0 = SE_out_i_llvm_fpga_mem_lm1_bubblesort24_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1_bubblesort24_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm1_bubblesort24_consumed1 & SE_out_i_llvm_fpga_mem_lm1_bubblesort24_or0);
    assign SE_out_i_llvm_fpga_mem_lm1_bubblesort24_backStall = SE_out_i_llvm_fpga_mem_lm1_bubblesort24_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm1_bubblesort24_V0 = SE_out_i_llvm_fpga_mem_lm1_bubblesort24_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1_bubblesort24_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm1_bubblesort24_V1 = SE_out_i_llvm_fpga_mem_lm1_bubblesort24_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1_bubblesort24_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm1_bubblesort24_wireValid = i_llvm_fpga_mem_lm1_bubblesort24_out_o_valid;

    // i_arrayidx5_bubblesort0_mult_multconst_x(CONSTANT,171)
    assign i_arrayidx5_bubblesort0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // i_idxprom_bubblesort11_vt_const_63(CONSTANT,25)
    assign i_idxprom_bubblesort11_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9(BITJOIN,356)
    assign bubble_join_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_q = i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9(BITSELECT,357)
    assign bubble_select_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_q[31:0]);

    // i_idxprom_bubblesort11_sel_x(BITSELECT,190)@2
    assign i_idxprom_bubblesort11_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_b[31:0]};

    // i_idxprom_bubblesort11_vt_select_31(BITSELECT,27)@2
    assign i_idxprom_bubblesort11_vt_select_31_b = i_idxprom_bubblesort11_sel_x_b[31:0];

    // i_idxprom_bubblesort11_vt_join(BITJOIN,26)@2
    assign i_idxprom_bubblesort11_vt_join_q = {i_idxprom_bubblesort11_vt_const_63_q, i_idxprom_bubblesort11_vt_select_31_b};

    // i_arrayidx_bubblesort0_mult_x_bs1_merged_bit_select(BITSELECT,251)@2
    assign i_arrayidx_bubblesort0_mult_x_bs1_merged_bit_select_b = i_idxprom_bubblesort11_vt_join_q[63:54];
    assign i_arrayidx_bubblesort0_mult_x_bs1_merged_bit_select_c = i_idxprom_bubblesort11_vt_join_q[53:36];
    assign i_arrayidx_bubblesort0_mult_x_bs1_merged_bit_select_d = i_idxprom_bubblesort11_vt_join_q[35:18];
    assign i_arrayidx_bubblesort0_mult_x_bs1_merged_bit_select_e = i_idxprom_bubblesort11_vt_join_q[17:0];

    // i_arrayidx_bubblesort0_mult_x_im0_shift0(BITSHIFT,247)@2
    assign i_arrayidx_bubblesort0_mult_x_im0_shift0_qint = { i_arrayidx_bubblesort0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx_bubblesort0_mult_x_im0_shift0_q = i_arrayidx_bubblesort0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx_bubblesort0_mult_x_sums_align_3(BITSHIFT,232)@2
    assign i_arrayidx_bubblesort0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx_bubblesort0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx_bubblesort0_mult_x_sums_align_3_q = i_arrayidx_bubblesort0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx_bubblesort0_mult_x_im6_shift0(BITSHIFT,249)@2
    assign i_arrayidx_bubblesort0_mult_x_im6_shift0_qint = { i_arrayidx_bubblesort0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx_bubblesort0_mult_x_im6_shift0_q = i_arrayidx_bubblesort0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx_bubblesort0_mult_x_sums_align_2(BITSHIFT,231)@2
    assign i_arrayidx_bubblesort0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx_bubblesort0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx_bubblesort0_mult_x_sums_align_2_q = i_arrayidx_bubblesort0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx_bubblesort0_mult_x_sums_join_4(BITJOIN,233)@2
    assign i_arrayidx_bubblesort0_mult_x_sums_join_4_q = {i_arrayidx_bubblesort0_mult_x_sums_align_3_q, i_arrayidx_bubblesort0_mult_x_sums_align_2_q};

    // i_arrayidx_bubblesort0_mult_x_im3_shift0(BITSHIFT,248)@2
    assign i_arrayidx_bubblesort0_mult_x_im3_shift0_qint = { i_arrayidx_bubblesort0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx_bubblesort0_mult_x_im3_shift0_q = i_arrayidx_bubblesort0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx_bubblesort0_mult_x_sums_align_0(BITSHIFT,229)@2
    assign i_arrayidx_bubblesort0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx_bubblesort0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx_bubblesort0_mult_x_sums_align_0_q = i_arrayidx_bubblesort0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx_bubblesort0_mult_x_im9_shift0(BITSHIFT,250)@2
    assign i_arrayidx_bubblesort0_mult_x_im9_shift0_qint = { i_arrayidx_bubblesort0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx_bubblesort0_mult_x_im9_shift0_q = i_arrayidx_bubblesort0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx_bubblesort0_mult_x_sums_join_1(BITJOIN,230)@2
    assign i_arrayidx_bubblesort0_mult_x_sums_join_1_q = {i_arrayidx_bubblesort0_mult_x_sums_align_0_q, {1'b0, i_arrayidx_bubblesort0_mult_x_im9_shift0_q}};

    // i_arrayidx_bubblesort0_mult_x_sums_result_add_0_0(ADD,234)@2
    assign i_arrayidx_bubblesort0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx_bubblesort0_mult_x_sums_join_1_q};
    assign i_arrayidx_bubblesort0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx_bubblesort0_mult_x_sums_join_4_q};
    assign i_arrayidx_bubblesort0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx_bubblesort0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx_bubblesort0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx_bubblesort0_mult_x_sums_result_add_0_0_q = i_arrayidx_bubblesort0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx_bubblesort0_mult_extender_x(BITJOIN,180)@2
    assign i_arrayidx_bubblesort0_mult_extender_x_q = {i_arrayidx5_bubblesort0_mult_multconst_x_q, i_arrayidx_bubblesort0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx_bubblesort0_trunc_sel_x(BITSELECT,182)@2
    assign i_arrayidx_bubblesort0_trunc_sel_x_b = i_arrayidx_bubblesort0_mult_extender_x_q[63:0];

    // SE_out_i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10(STALLENABLE,500)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_wireValid = i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_out_valid_out;

    // bubble_join_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo(BITJOIN,402)
    assign bubble_join_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_q = redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_data_out;

    // bubble_select_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo(BITSELECT,403)
    assign bubble_select_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_b = $unsigned(bubble_join_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_q[31:0]);

    // i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10(BLACKBOX,57)@96
    // in in_stall_in@20000000
    // out out_data_out@97
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@97
    bubbleSort_i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort0 thei_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10 (
        .in_data_in(bubble_select_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_feedback_stall_out_19),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_backStall),
        .in_valid_in(SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_V0),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_out_feedback_valid_out_19),
        .out_stall_out(i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo(STALLENABLE,586)
    // Valid signal propagation
    assign SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_V0 = SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_backStall = i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_out_stall_out | ~ (SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_and0 = redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_valid_out;
    assign SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V9 & SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_and0;

    // redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo(STALLFIFO,295)
    assign redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_V0;
    assign redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_stall_in = SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_backStall;
    assign redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_b;
    assign redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_valid_in_bitsignaltemp = redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_valid_in[0];
    assign redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_stall_in_bitsignaltemp = redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_stall_in[0];
    assign redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_valid_out[0] = redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_valid_out_bitsignaltemp;
    assign redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_stall_out[0] = redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo (
        .valid_in(redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_b),
        .valid_out(redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9(STALLENABLE,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_consumed0 = (~ (redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_consumed1 = (~ (SE_i_idxprom_bubblesort11_vt_join_backStall) & SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_StallValid = SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_backStall & SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_toReg0 = SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_StallValid & SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_toReg1 = SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_StallValid & SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_or0 = SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_consumed1 & SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_or0);
    assign SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_backStall = SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_V0 = SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_V1 = SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_wireValid = i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_valid_out;

    // SE_i_idxprom_bubblesort11_vt_join(STALLENABLE,440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_idxprom_bubblesort11_vt_join_fromReg0 <= '0;
            SE_i_idxprom_bubblesort11_vt_join_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_idxprom_bubblesort11_vt_join_fromReg0 <= SE_i_idxprom_bubblesort11_vt_join_toReg0;
            // Successor 1
            SE_i_idxprom_bubblesort11_vt_join_fromReg1 <= SE_i_idxprom_bubblesort11_vt_join_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_idxprom_bubblesort11_vt_join_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm1_bubblesort24_backStall) & SE_i_idxprom_bubblesort11_vt_join_wireValid) | SE_i_idxprom_bubblesort11_vt_join_fromReg0;
    assign SE_i_idxprom_bubblesort11_vt_join_consumed1 = (~ (redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_stall_out) & SE_i_idxprom_bubblesort11_vt_join_wireValid) | SE_i_idxprom_bubblesort11_vt_join_fromReg1;
    // Consuming
    assign SE_i_idxprom_bubblesort11_vt_join_StallValid = SE_i_idxprom_bubblesort11_vt_join_backStall & SE_i_idxprom_bubblesort11_vt_join_wireValid;
    assign SE_i_idxprom_bubblesort11_vt_join_toReg0 = SE_i_idxprom_bubblesort11_vt_join_StallValid & SE_i_idxprom_bubblesort11_vt_join_consumed0;
    assign SE_i_idxprom_bubblesort11_vt_join_toReg1 = SE_i_idxprom_bubblesort11_vt_join_StallValid & SE_i_idxprom_bubblesort11_vt_join_consumed1;
    // Backward Stall generation
    assign SE_i_idxprom_bubblesort11_vt_join_or0 = SE_i_idxprom_bubblesort11_vt_join_consumed0;
    assign SE_i_idxprom_bubblesort11_vt_join_wireStall = ~ (SE_i_idxprom_bubblesort11_vt_join_consumed1 & SE_i_idxprom_bubblesort11_vt_join_or0);
    assign SE_i_idxprom_bubblesort11_vt_join_backStall = SE_i_idxprom_bubblesort11_vt_join_wireStall;
    // Valid signal propagation
    assign SE_i_idxprom_bubblesort11_vt_join_V0 = SE_i_idxprom_bubblesort11_vt_join_wireValid & ~ (SE_i_idxprom_bubblesort11_vt_join_fromReg0);
    assign SE_i_idxprom_bubblesort11_vt_join_V1 = SE_i_idxprom_bubblesort11_vt_join_wireValid & ~ (SE_i_idxprom_bubblesort11_vt_join_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_idxprom_bubblesort11_vt_join_and0 = SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_V1;
    assign SE_i_idxprom_bubblesort11_vt_join_wireValid = i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_out_valid_out & SE_i_idxprom_bubblesort11_vt_join_and0;

    // i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12(BLACKBOX,30)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    bubbleSort_i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort0 thei_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_i_idxprom_bubblesort11_vt_join_backStall),
        .in_valid_in(bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12(BITJOIN,311)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_q = i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12(BITSELECT,312)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_q[63:0]);

    // i_arrayidx_bubblesort0_add_x(ADD,174)@2
    assign i_arrayidx_bubblesort0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_b};
    assign i_arrayidx_bubblesort0_add_x_b = {1'b0, i_arrayidx_bubblesort0_trunc_sel_x_b};
    assign i_arrayidx_bubblesort0_add_x_o = $unsigned(i_arrayidx_bubblesort0_add_x_a) + $unsigned(i_arrayidx_bubblesort0_add_x_b);
    assign i_arrayidx_bubblesort0_add_x_q = i_arrayidx_bubblesort0_add_x_o[64:0];

    // i_arrayidx_bubblesort0_dupName_0_trunc_sel_x(BITSELECT,183)@2
    assign i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b = i_arrayidx_bubblesort0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm1_bubblesort24(BLACKBOX,31)@2
    // in in_i_stall@20000000
    // out out_lm1_bubbleSort_avm_address@20000000
    // out out_lm1_bubbleSort_avm_burstcount@20000000
    // out out_lm1_bubbleSort_avm_byteenable@20000000
    // out out_lm1_bubbleSort_avm_enable@20000000
    // out out_lm1_bubbleSort_avm_read@20000000
    // out out_lm1_bubbleSort_avm_write@20000000
    // out out_lm1_bubbleSort_avm_writedata@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    bubbleSort_i_llvm_fpga_mem_lm1_bubblesort0 thei_llvm_fpga_mem_lm1_bubblesort24 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_bubblesort_2_bubblesort22_q),
        .in_i_predicate(i_first_cleanup_xor_or_bubblesort23_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm1_bubblesort24_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm1_bubblesort24_V0),
        .in_lm1_bubbleSort_avm_readdata(in_lm1_bubbleSort_avm_readdata),
        .in_lm1_bubbleSort_avm_readdatavalid(in_lm1_bubbleSort_avm_readdatavalid),
        .in_lm1_bubbleSort_avm_waitrequest(in_lm1_bubbleSort_avm_waitrequest),
        .in_lm1_bubbleSort_avm_writeack(in_lm1_bubbleSort_avm_writeack),
        .out_lm1_bubbleSort_avm_address(i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_address),
        .out_lm1_bubbleSort_avm_burstcount(i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_burstcount),
        .out_lm1_bubbleSort_avm_byteenable(i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_byteenable),
        .out_lm1_bubbleSort_avm_enable(i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_enable),
        .out_lm1_bubbleSort_avm_read(i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_read),
        .out_lm1_bubbleSort_avm_write(i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_write),
        .out_lm1_bubbleSort_avm_writedata(i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_bubblesort24_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1_bubblesort24_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1_bubblesort24_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm1_bubblesort24(BITJOIN,314)
    assign bubble_join_i_llvm_fpga_mem_lm1_bubblesort24_q = i_llvm_fpga_mem_lm1_bubblesort24_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1_bubblesort24(BITSELECT,315)
    assign bubble_select_i_llvm_fpga_mem_lm1_bubblesort24_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1_bubblesort24_q[31:0]);

    // join_for_coalesced_delay_1(BITJOIN,282)
    assign join_for_coalesced_delay_1_q = {i_first_cleanup_xor28_or_bubblesort37_q, bubble_select_i_llvm_fpga_mem_lm1_bubblesort24_b};

    // SE_join_for_coalesced_delay_1(STALLENABLE,563)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_1_V0 = SE_join_for_coalesced_delay_1_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_1_backStall = coalesced_delay_1_fifo_stall_out | ~ (SE_join_for_coalesced_delay_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_1_and0 = SE_i_cmp6_bubblesort30_V1;
    assign SE_join_for_coalesced_delay_1_wireValid = SE_out_i_llvm_fpga_mem_lm1_bubblesort24_V1 & SE_join_for_coalesced_delay_1_and0;

    // coalesced_delay_1_fifo(STALLFIFO,306)
    assign coalesced_delay_1_fifo_valid_in = SE_join_for_coalesced_delay_1_V0;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,607)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = i_llvm_fpga_mem_memdep_5_bubblesort40_out_o_stall | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_and1 = redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_valid_out & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_bubblesort38_V0 & SE_out_coalesced_delay_1_fifo_and1;

    // SE_out_i_llvm_fpga_mem_memdep_bubblesort38(STALLENABLE,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_bubblesort38_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_bubblesort38_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_bubblesort38_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_bubblesort38_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_bubblesort38_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_bubblesort38_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_bubblesort38_consumed0 = (~ (SE_out_coalesced_delay_1_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_bubblesort38_wireValid) | SE_out_i_llvm_fpga_mem_memdep_bubblesort38_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_bubblesort38_consumed1 = (~ (redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_stall_out) & SE_out_i_llvm_fpga_mem_memdep_bubblesort38_wireValid) | SE_out_i_llvm_fpga_mem_memdep_bubblesort38_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_bubblesort38_StallValid = SE_out_i_llvm_fpga_mem_memdep_bubblesort38_backStall & SE_out_i_llvm_fpga_mem_memdep_bubblesort38_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_bubblesort38_toReg0 = SE_out_i_llvm_fpga_mem_memdep_bubblesort38_StallValid & SE_out_i_llvm_fpga_mem_memdep_bubblesort38_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_bubblesort38_toReg1 = SE_out_i_llvm_fpga_mem_memdep_bubblesort38_StallValid & SE_out_i_llvm_fpga_mem_memdep_bubblesort38_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_bubblesort38_or0 = SE_out_i_llvm_fpga_mem_memdep_bubblesort38_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_bubblesort38_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_bubblesort38_consumed1 & SE_out_i_llvm_fpga_mem_memdep_bubblesort38_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_bubblesort38_backStall = SE_out_i_llvm_fpga_mem_memdep_bubblesort38_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_bubblesort38_V0 = SE_out_i_llvm_fpga_mem_memdep_bubblesort38_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_bubblesort38_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_bubblesort38_V1 = SE_out_i_llvm_fpga_mem_memdep_bubblesort38_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_bubblesort38_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_bubblesort38_wireValid = i_llvm_fpga_mem_memdep_bubblesort38_out_o_valid;

    // bubble_join_redist10_i_xor_bubblesort2_q_32_fifo(BITJOIN,396)
    assign bubble_join_redist10_i_xor_bubblesort2_q_32_fifo_q = redist10_i_xor_bubblesort2_q_32_fifo_data_out;

    // bubble_select_redist10_i_xor_bubblesort2_q_32_fifo(BITSELECT,397)
    assign bubble_select_redist10_i_xor_bubblesort2_q_32_fifo_b = $unsigned(bubble_join_redist10_i_xor_bubblesort2_q_32_fifo_q[0:0]);

    // i_cmp6_bubblesort30(COMPARE,16)@34
    assign i_cmp6_bubblesort30_a = $unsigned({{2{bubble_select_i_llvm_fpga_mem_lm92_bubblesort29_b[31]}}, bubble_select_i_llvm_fpga_mem_lm92_bubblesort29_b});
    assign i_cmp6_bubblesort30_b = $unsigned({{2{bubble_select_i_llvm_fpga_mem_lm1_bubblesort24_b[31]}}, bubble_select_i_llvm_fpga_mem_lm1_bubblesort24_b});
    assign i_cmp6_bubblesort30_o = $unsigned($signed(i_cmp6_bubblesort30_a) - $signed(i_cmp6_bubblesort30_b));
    assign i_cmp6_bubblesort30_c[0] = i_cmp6_bubblesort30_o[33];

    // i_phi_decision8_and_i0_bubblesort34(LOGICAL,65)@34
    assign i_phi_decision8_and_i0_bubblesort34_q = bubble_select_i_llvm_fpga_pop_i1_pop20_bubblesort32_b & i_cmp6_bubblesort30_c;

    // i_unnamed_bubblesort35(LOGICAL,69)@34
    assign i_unnamed_bubblesort35_q = i_phi_decision8_and_i0_bubblesort34_q ^ VCC_q;

    // i_first_cleanup_xor28_or_bubblesort37(LOGICAL,19)@34
    assign i_first_cleanup_xor28_or_bubblesort37_q = i_unnamed_bubblesort35_q | bubble_select_redist10_i_xor_bubblesort2_q_32_fifo_b;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16(BITJOIN,340)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_q = i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16(BITSELECT,341)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_q[0:0]);

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16(STALLENABLE,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_consumed0 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_consumed1 = (~ (redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_wireValid = i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_valid_out;

    // redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo(STALLFIFO,299)
    assign redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_V1;
    assign redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_stall_in = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_backStall;
    assign redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_b;
    assign redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_valid_in_bitsignaltemp = redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_valid_in[0];
    assign redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_stall_in_bitsignaltemp = redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_stall_in[0];
    assign redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_valid_out[0] = redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_valid_out_bitsignaltemp;
    assign redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_stall_out[0] = redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo (
        .valid_in(redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_b),
        .valid_out(redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo(BITJOIN,411)
    assign bubble_join_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_q = redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_data_out;

    // bubble_select_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo(BITSELECT,412)
    assign bubble_select_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_b = $unsigned(bubble_join_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_q[0:0]);

    // bubble_join_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo(BITJOIN,417)
    assign bubble_join_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_q = redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_data_out;

    // bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo(BITSELECT,418)
    assign bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_b = $unsigned(bubble_join_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_q[0:0]);

    // i_memdep_phi7_or10_bubblesort36(LOGICAL,61)@34
    assign i_memdep_phi7_or10_bubblesort36_q = bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_b | bubble_select_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_b;

    // bubble_join_redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo(BITJOIN,378)
    assign bubble_join_redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_q = redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_data_out;

    // bubble_select_redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo(BITSELECT,379)
    assign bubble_select_redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_b = $unsigned(bubble_join_redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_q[63:0]);

    // i_llvm_fpga_mem_memdep_bubblesort38(BLACKBOX,34)@34
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_bubbleSort_avm_address@20000000
    // out out_memdep_bubbleSort_avm_burstcount@20000000
    // out out_memdep_bubbleSort_avm_byteenable@20000000
    // out out_memdep_bubbleSort_avm_enable@20000000
    // out out_memdep_bubbleSort_avm_read@20000000
    // out out_memdep_bubbleSort_avm_write@20000000
    // out out_memdep_bubbleSort_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@65
    // out out_o_writeack@65
    bubbleSort_i_llvm_fpga_mem_memdep_bubblesort0 thei_llvm_fpga_mem_memdep_bubblesort38 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_b),
        .in_i_dependence(i_memdep_phi7_or10_bubblesort36_q),
        .in_i_predicate(i_first_cleanup_xor28_or_bubblesort37_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_bubblesort38_backStall),
        .in_i_valid(SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_lm92_bubblesort29_b),
        .in_memdep_bubbleSort_avm_readdata(in_memdep_bubbleSort_avm_readdata),
        .in_memdep_bubbleSort_avm_readdatavalid(in_memdep_bubbleSort_avm_readdatavalid),
        .in_memdep_bubbleSort_avm_waitrequest(in_memdep_bubbleSort_avm_waitrequest),
        .in_memdep_bubbleSort_avm_writeack(in_memdep_bubbleSort_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_bubblesort38_out_lsu_memdep_o_active),
        .out_memdep_bubbleSort_avm_address(i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_address),
        .out_memdep_bubbleSort_avm_burstcount(i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_burstcount),
        .out_memdep_bubbleSort_avm_byteenable(i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_byteenable),
        .out_memdep_bubbleSort_avm_enable(i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_enable),
        .out_memdep_bubbleSort_avm_read(i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_read),
        .out_memdep_bubbleSort_avm_write(i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_write),
        .out_memdep_bubbleSort_avm_writedata(i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_bubblesort38_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_bubblesort38_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17(STALLENABLE,488)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_wireValid = i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_out_valid_out;

    // bubble_join_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo(BITJOIN,414)
    assign bubble_join_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_q = redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_data_out;

    // bubble_select_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo(BITSELECT,415)
    assign bubble_select_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_b = $unsigned(bubble_join_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17(BLACKBOX,51)@96
    // in in_stall_in@20000000
    // out out_data_out@97
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@97
    bubbleSort_i_llvm_fpga_push_i1_memdep_phA000000Z2_push24_bubblesort0 thei_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17 (
        .in_data_in(bubble_select_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_b),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_feedback_stall_out_24),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_backStall),
        .in_valid_in(SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_V0),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo(STALLENABLE,595)
    // Valid signal propagation
    assign SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_V0 = SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_out_stall_out | ~ (SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_and0 = redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_valid_out;
    assign SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V4 & SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_and0;

    // redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo(STALLFIFO,300)
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_valid_in = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_V1;
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_stall_in = SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_backStall;
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_data_in = bubble_select_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_b;
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_valid_in_bitsignaltemp = redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_valid_in[0];
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_stall_in_bitsignaltemp = redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_stall_in[0];
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_valid_out[0] = redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_valid_out_bitsignaltemp;
    assign redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_stall_out[0] = redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo (
        .valid_in(redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_valid_in_bitsignaltemp),
        .stall_in(redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_b),
        .valid_out(redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_valid_out_bitsignaltemp),
        .stall_out(redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_stall_out_bitsignaltemp),
        .data_out(redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo(STALLENABLE,593)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_fromReg0 <= '0;
            SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_fromReg0 <= SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_toReg0;
            // Successor 1
            SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_fromReg1 <= SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_consumed0 = (~ (SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_backStall) & SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_wireValid) | SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_fromReg0;
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_consumed1 = (~ (redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_stall_out) & SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_wireValid) | SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_StallValid = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_backStall & SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_wireValid;
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_toReg0 = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_StallValid & SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_consumed0;
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_toReg1 = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_StallValid & SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_or0 = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_consumed0;
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_wireStall = ~ (SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_consumed1 & SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_or0);
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_backStall = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_V0 = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_wireValid & ~ (SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_fromReg0);
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_V1 = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_wireValid & ~ (SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_wireValid = redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_valid_out;

    // redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo(STALLFIFO,285)
    assign redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_valid_in = SE_i_idxprom_bubblesort11_vt_join_V1;
    assign redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_stall_in = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_backStall;
    assign redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_data_in = i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b;
    assign redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp = redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_valid_in[0];
    assign redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp = redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_stall_in[0];
    assign redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_valid_out[0] = redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    assign redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_stall_out[0] = redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo (
        .valid_in(redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b),
        .valid_out(redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21(BITJOIN,337)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_q = i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21(BITSELECT,338)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_q[0:0]);

    // redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo(STALLFIFO,301)
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_V1;
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_stall_in = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_backStall;
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_b;
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_valid_in_bitsignaltemp = redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_valid_in[0];
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_stall_in_bitsignaltemp = redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_stall_in[0];
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_valid_out[0] = redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_valid_out_bitsignaltemp;
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_stall_out[0] = redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo (
        .valid_in(redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_b),
        .valid_out(redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo(STALLENABLE,597)
    // Valid signal propagation
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_V0 = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_backStall = i_llvm_fpga_mem_memdep_bubblesort38_out_o_stall | ~ (SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_and0 = redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_valid_out;
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_and1 = redist1_i_arrayidx_bubblesort0_dupName_0_trunc_sel_x_b_32_fifo_valid_out & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_and0;
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_and2 = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_32_fifo_V0 & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_and1;
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_and3 = SE_i_cmp6_bubblesort30_V0 & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_and2;
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_wireValid = SE_out_i_llvm_fpga_mem_lm92_bubblesort29_V1 & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_and3;

    // SE_out_i_llvm_fpga_mem_lm92_bubblesort29(STALLENABLE,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm92_bubblesort29_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm92_bubblesort29_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm92_bubblesort29_fromReg0 <= SE_out_i_llvm_fpga_mem_lm92_bubblesort29_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm92_bubblesort29_fromReg1 <= SE_out_i_llvm_fpga_mem_lm92_bubblesort29_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm92_bubblesort29_consumed0 = (~ (SE_i_cmp6_bubblesort30_backStall) & SE_out_i_llvm_fpga_mem_lm92_bubblesort29_wireValid) | SE_out_i_llvm_fpga_mem_lm92_bubblesort29_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm92_bubblesort29_consumed1 = (~ (SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm92_bubblesort29_wireValid) | SE_out_i_llvm_fpga_mem_lm92_bubblesort29_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm92_bubblesort29_StallValid = SE_out_i_llvm_fpga_mem_lm92_bubblesort29_backStall & SE_out_i_llvm_fpga_mem_lm92_bubblesort29_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm92_bubblesort29_toReg0 = SE_out_i_llvm_fpga_mem_lm92_bubblesort29_StallValid & SE_out_i_llvm_fpga_mem_lm92_bubblesort29_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm92_bubblesort29_toReg1 = SE_out_i_llvm_fpga_mem_lm92_bubblesort29_StallValid & SE_out_i_llvm_fpga_mem_lm92_bubblesort29_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm92_bubblesort29_or0 = SE_out_i_llvm_fpga_mem_lm92_bubblesort29_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm92_bubblesort29_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm92_bubblesort29_consumed1 & SE_out_i_llvm_fpga_mem_lm92_bubblesort29_or0);
    assign SE_out_i_llvm_fpga_mem_lm92_bubblesort29_backStall = SE_out_i_llvm_fpga_mem_lm92_bubblesort29_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm92_bubblesort29_V0 = SE_out_i_llvm_fpga_mem_lm92_bubblesort29_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm92_bubblesort29_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm92_bubblesort29_V1 = SE_out_i_llvm_fpga_mem_lm92_bubblesort29_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm92_bubblesort29_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm92_bubblesort29_wireValid = i_llvm_fpga_mem_lm92_bubblesort29_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6(BITJOIN,331)
    assign bubble_join_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_q = i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6(BITSELECT,332)
    assign bubble_select_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_q[0:0]);

    // i_unnamed_bubblesort8(LOGICAL,71)@2
    assign i_unnamed_bubblesort8_q = bubble_select_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_b ^ VCC_q;

    // i_first_cleanup_xor_or_bubblesort23(LOGICAL,20)@2
    assign i_first_cleanup_xor_or_bubblesort23_q = i_unnamed_bubblesort8_q | i_xor_bubblesort2_q;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14(BITJOIN,334)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_q = i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14(BITSELECT,335)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_q[0:0]);

    // i_reduction_bubblesort_0_bubblesort18(LOGICAL,66)@2
    assign i_reduction_bubblesort_0_bubblesort18_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_b;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19(BITJOIN,343)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_q = i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19(BITSELECT,344)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_q[0:0]);

    // i_reduction_bubblesort_1_bubblesort20(LOGICAL,67)@2
    assign i_reduction_bubblesort_1_bubblesort20_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_b | i_reduction_bubblesort_0_bubblesort18_q;

    // i_reduction_bubblesort_2_bubblesort22(LOGICAL,68)@2
    assign i_reduction_bubblesort_2_bubblesort22_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_b | i_reduction_bubblesort_1_bubblesort20_q;

    // bubble_join_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25(BITJOIN,359)
    assign bubble_join_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_q = i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25(BITSELECT,360)
    assign bubble_select_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_q[31:0]);

    // i_idxprom4_bubblesort26_sel_x(BITSELECT,189)@2
    assign i_idxprom4_bubblesort26_sel_x_b = $unsigned({{32{bubble_select_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_b[31]}}, bubble_select_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_b[31:0]});

    // i_arrayidx5_bubblesort0_mult_x_bs1_merged_bit_select(BITSELECT,252)@2
    assign i_arrayidx5_bubblesort0_mult_x_bs1_merged_bit_select_b = i_idxprom4_bubblesort26_sel_x_b[63:54];
    assign i_arrayidx5_bubblesort0_mult_x_bs1_merged_bit_select_c = i_idxprom4_bubblesort26_sel_x_b[53:36];
    assign i_arrayidx5_bubblesort0_mult_x_bs1_merged_bit_select_d = i_idxprom4_bubblesort26_sel_x_b[35:18];
    assign i_arrayidx5_bubblesort0_mult_x_bs1_merged_bit_select_e = i_idxprom4_bubblesort26_sel_x_b[17:0];

    // i_arrayidx5_bubblesort0_mult_x_im0_shift0(BITSHIFT,243)@2
    assign i_arrayidx5_bubblesort0_mult_x_im0_shift0_qint = { i_arrayidx5_bubblesort0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx5_bubblesort0_mult_x_im0_shift0_q = i_arrayidx5_bubblesort0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx5_bubblesort0_mult_x_sums_align_3(BITSHIFT,214)@2
    assign i_arrayidx5_bubblesort0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx5_bubblesort0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx5_bubblesort0_mult_x_sums_align_3_q = i_arrayidx5_bubblesort0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx5_bubblesort0_mult_x_im6_shift0(BITSHIFT,245)@2
    assign i_arrayidx5_bubblesort0_mult_x_im6_shift0_qint = { i_arrayidx5_bubblesort0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx5_bubblesort0_mult_x_im6_shift0_q = i_arrayidx5_bubblesort0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx5_bubblesort0_mult_x_sums_align_2(BITSHIFT,213)@2
    assign i_arrayidx5_bubblesort0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx5_bubblesort0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx5_bubblesort0_mult_x_sums_align_2_q = i_arrayidx5_bubblesort0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx5_bubblesort0_mult_x_sums_join_4(BITJOIN,215)@2
    assign i_arrayidx5_bubblesort0_mult_x_sums_join_4_q = {i_arrayidx5_bubblesort0_mult_x_sums_align_3_q, i_arrayidx5_bubblesort0_mult_x_sums_align_2_q};

    // i_arrayidx5_bubblesort0_mult_x_im3_shift0(BITSHIFT,244)@2
    assign i_arrayidx5_bubblesort0_mult_x_im3_shift0_qint = { i_arrayidx5_bubblesort0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx5_bubblesort0_mult_x_im3_shift0_q = i_arrayidx5_bubblesort0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx5_bubblesort0_mult_x_sums_align_0(BITSHIFT,211)@2
    assign i_arrayidx5_bubblesort0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx5_bubblesort0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx5_bubblesort0_mult_x_sums_align_0_q = i_arrayidx5_bubblesort0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx5_bubblesort0_mult_x_im9_shift0(BITSHIFT,246)@2
    assign i_arrayidx5_bubblesort0_mult_x_im9_shift0_qint = { i_arrayidx5_bubblesort0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx5_bubblesort0_mult_x_im9_shift0_q = i_arrayidx5_bubblesort0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx5_bubblesort0_mult_x_sums_join_1(BITJOIN,212)@2
    assign i_arrayidx5_bubblesort0_mult_x_sums_join_1_q = {i_arrayidx5_bubblesort0_mult_x_sums_align_0_q, {1'b0, i_arrayidx5_bubblesort0_mult_x_im9_shift0_q}};

    // i_arrayidx5_bubblesort0_mult_x_sums_result_add_0_0(ADD,216)@2
    assign i_arrayidx5_bubblesort0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx5_bubblesort0_mult_x_sums_join_1_q};
    assign i_arrayidx5_bubblesort0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx5_bubblesort0_mult_x_sums_join_4_q};
    assign i_arrayidx5_bubblesort0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx5_bubblesort0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx5_bubblesort0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx5_bubblesort0_mult_x_sums_result_add_0_0_q = i_arrayidx5_bubblesort0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx5_bubblesort0_mult_extender_x(BITJOIN,170)@2
    assign i_arrayidx5_bubblesort0_mult_extender_x_q = {i_arrayidx5_bubblesort0_mult_multconst_x_q, i_arrayidx5_bubblesort0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx5_bubblesort0_trunc_sel_x(BITSELECT,172)@2
    assign i_arrayidx5_bubblesort0_trunc_sel_x_b = i_arrayidx5_bubblesort0_mult_extender_x_q[63:0];

    // i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27(BLACKBOX,29)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    bubbleSort_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort0 thei_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_backStall),
        .in_valid_in(bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_V1),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27(BITJOIN,308)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_q = i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27(BITSELECT,309)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_q[63:0]);

    // i_arrayidx5_bubblesort0_add_x(ADD,164)@2
    assign i_arrayidx5_bubblesort0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_b};
    assign i_arrayidx5_bubblesort0_add_x_b = {1'b0, i_arrayidx5_bubblesort0_trunc_sel_x_b};
    assign i_arrayidx5_bubblesort0_add_x_o = $unsigned(i_arrayidx5_bubblesort0_add_x_a) + $unsigned(i_arrayidx5_bubblesort0_add_x_b);
    assign i_arrayidx5_bubblesort0_add_x_q = i_arrayidx5_bubblesort0_add_x_o[64:0];

    // i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x(BITSELECT,173)@2
    assign i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b = i_arrayidx5_bubblesort0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm92_bubblesort29(BLACKBOX,32)@2
    // in in_i_stall@20000000
    // out out_lm92_bubbleSort_avm_address@20000000
    // out out_lm92_bubbleSort_avm_burstcount@20000000
    // out out_lm92_bubbleSort_avm_byteenable@20000000
    // out out_lm92_bubbleSort_avm_enable@20000000
    // out out_lm92_bubbleSort_avm_read@20000000
    // out out_lm92_bubbleSort_avm_write@20000000
    // out out_lm92_bubbleSort_avm_writedata@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    bubbleSort_i_llvm_fpga_mem_lm92_bubblesort0 thei_llvm_fpga_mem_lm92_bubblesort29 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_bubblesort_2_bubblesort22_q),
        .in_i_predicate(i_first_cleanup_xor_or_bubblesort23_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm92_bubblesort29_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm92_bubblesort29_V0),
        .in_lm92_bubbleSort_avm_readdata(in_lm92_bubbleSort_avm_readdata),
        .in_lm92_bubbleSort_avm_readdatavalid(in_lm92_bubbleSort_avm_readdatavalid),
        .in_lm92_bubbleSort_avm_waitrequest(in_lm92_bubbleSort_avm_waitrequest),
        .in_lm92_bubbleSort_avm_writeack(in_lm92_bubbleSort_avm_writeack),
        .out_lm92_bubbleSort_avm_address(i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_address),
        .out_lm92_bubbleSort_avm_burstcount(i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_burstcount),
        .out_lm92_bubbleSort_avm_byteenable(i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_byteenable),
        .out_lm92_bubbleSort_avm_enable(i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_enable),
        .out_lm92_bubbleSort_avm_read(i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_read),
        .out_lm92_bubbleSort_avm_write(i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_write),
        .out_lm92_bubbleSort_avm_writedata(i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm92_bubblesort29_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm92_bubblesort29_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm92_bubblesort29_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_161(CONSTANT,7)
    assign c_i32_161_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_bubblesort42(ADD,28)@2
    assign i_inc_bubblesort42_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_b};
    assign i_inc_bubblesort42_b = {1'b0, c_i32_161_q};
    assign i_inc_bubblesort42_o = $unsigned(i_inc_bubblesort42_a) + $unsigned(i_inc_bubblesort42_b);
    assign i_inc_bubblesort42_q = i_inc_bubblesort42_o[32:0];

    // bgTrunc_i_inc_bubblesort42_sel_x(BITSELECT,151)@2
    assign bgTrunc_i_inc_bubblesort42_sel_x_b = i_inc_bubblesort42_q[31:0];

    // SE_out_i_llvm_fpga_push_i32_j_021_push15_bubblesort43(STALLENABLE,502)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_j_021_push15_bubblesort43_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_j_021_push15_bubblesort43_wireValid = i_llvm_fpga_push_i32_j_021_push15_bubblesort43_out_valid_out;

    // bubble_join_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo(BITJOIN,393)
    assign bubble_join_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_q = redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_data_out;

    // bubble_select_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo(BITSELECT,394)
    assign bubble_select_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_b = $unsigned(bubble_join_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_q[31:0]);

    // i_llvm_fpga_push_i32_j_021_push15_bubblesort43(BLACKBOX,58)@96
    // in in_stall_in@20000000
    // out out_data_out@97
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@97
    bubbleSort_i_llvm_fpga_push_i32_j_021_push15_bubblesort0 thei_llvm_fpga_push_i32_j_021_push15_bubblesort43 (
        .in_data_in(bubble_select_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_out_feedback_stall_out_15),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_j_021_push15_bubblesort43_backStall),
        .in_valid_in(SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_V0),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_j_021_push15_bubblesort43_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_j_021_push15_bubblesort43_out_feedback_valid_out_15),
        .out_stall_out(i_llvm_fpga_push_i32_j_021_push15_bubblesort43_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_j_021_push15_bubblesort43_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo(STALLENABLE,579)
    // Valid signal propagation
    assign SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_V0 = SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_backStall = i_llvm_fpga_push_i32_j_021_push15_bubblesort43_out_stall_out | ~ (SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_and0 = redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_valid_out;
    assign SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V10 & SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_and0;

    // redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo(STALLFIFO,291)
    assign redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_V0;
    assign redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_stall_in = SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_backStall;
    assign redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_data_in = bgTrunc_i_inc_bubblesort42_sel_x_b;
    assign redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_valid_in_bitsignaltemp = redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_valid_in[0];
    assign redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_stall_in_bitsignaltemp = redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_stall_in[0];
    assign redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_valid_out[0] = redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_valid_out_bitsignaltemp;
    assign redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_stall_out[0] = redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo (
        .valid_in(redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_valid_in_bitsignaltemp),
        .stall_in(redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_stall_in_bitsignaltemp),
        .data_in(bgTrunc_i_inc_bubblesort42_sel_x_b),
        .valid_out(redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_valid_out_bitsignaltemp),
        .stall_out(redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_stall_out_bitsignaltemp),
        .data_out(redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25(STALLENABLE,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_consumed0 = (~ (redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_backStall) & SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_StallValid = SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_backStall & SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_toReg0 = SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_StallValid & SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_toReg1 = SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_StallValid & SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_or0 = SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_consumed1 & SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_or0);
    assign SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_backStall = SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_V0 = SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_V1 = SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_wireValid = i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27(STALLENABLE,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm92_bubblesort29_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_consumed1 = (~ (redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_and0 = i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_wireValid = SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_V1 & SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15(STALLENABLE,484)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_wireValid = i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_out_valid_out;

    // bubble_join_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo(BITJOIN,420)
    assign bubble_join_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_q = redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_data_out;

    // bubble_select_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo(BITSELECT,421)
    assign bubble_select_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_b = $unsigned(bubble_join_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15(BLACKBOX,49)@96
    // in in_stall_in@20000000
    // out out_data_out@97
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@97
    bubbleSort_i_llvm_fpga_push_i1_memdep_phA000000Z1_push23_bubblesort0 thei_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15 (
        .in_data_in(bubble_select_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_feedback_stall_out_23),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_backStall),
        .in_valid_in(SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_V0),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo(STALLENABLE,599)
    // Valid signal propagation
    assign SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_V0 = SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_out_stall_out | ~ (SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_and0 = redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_valid_out;
    assign SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V2 & SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_and0;

    // redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo(STALLFIFO,302)
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_V1;
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_stall_in = SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_backStall;
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_b;
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_valid_in_bitsignaltemp = redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_valid_in[0];
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_stall_in_bitsignaltemp = redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_stall_in[0];
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_valid_out[0] = redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_valid_out_bitsignaltemp;
    assign redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_stall_out[0] = redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo (
        .valid_in(redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_valid_in_bitsignaltemp),
        .stall_in(redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_b),
        .valid_out(redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_valid_out_bitsignaltemp),
        .stall_out(redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_stall_out_bitsignaltemp),
        .data_out(redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14(STALLENABLE,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_consumed0 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_consumed1 = (~ (redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_wireValid = i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19(STALLENABLE,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm1_bubblesort24_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_consumed1 = (~ (SE_in_i_llvm_fpga_mem_lm92_bubblesort29_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_and0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_and2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_and1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_and2;

    // SE_in_i_llvm_fpga_mem_lm92_bubblesort29(STALLENABLE,449)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm92_bubblesort29_V0 = SE_in_i_llvm_fpga_mem_lm92_bubblesort29_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm92_bubblesort29_backStall = i_llvm_fpga_mem_lm92_bubblesort29_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_lm92_bubblesort29_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm92_bubblesort29_and0 = SE_i_first_cleanup_xor_or_bubblesort23_V1;
    assign SE_in_i_llvm_fpga_mem_lm92_bubblesort29_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_V1 & SE_in_i_llvm_fpga_mem_lm92_bubblesort29_and0;
    assign SE_in_i_llvm_fpga_mem_lm92_bubblesort29_wireValid = SE_out_i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_V0 & SE_in_i_llvm_fpga_mem_lm92_bubblesort29_and1;

    // SE_in_i_llvm_fpga_mem_lm1_bubblesort24(STALLENABLE,447)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm1_bubblesort24_V0 = SE_in_i_llvm_fpga_mem_lm1_bubblesort24_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm1_bubblesort24_backStall = i_llvm_fpga_mem_lm1_bubblesort24_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_lm1_bubblesort24_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm1_bubblesort24_and0 = SE_i_first_cleanup_xor_or_bubblesort23_V0;
    assign SE_in_i_llvm_fpga_mem_lm1_bubblesort24_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_V0 & SE_in_i_llvm_fpga_mem_lm1_bubblesort24_and0;
    assign SE_in_i_llvm_fpga_mem_lm1_bubblesort24_wireValid = SE_i_idxprom_bubblesort11_vt_join_V0 & SE_in_i_llvm_fpga_mem_lm1_bubblesort24_and1;

    // SE_out_i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7(STALLENABLE,480)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_wireValid = i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_out_valid_out;

    // bubble_join_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo(BITJOIN,423)
    assign bubble_join_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_q = redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_data_out;

    // bubble_select_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo(BITSELECT,424)
    assign bubble_select_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_b = $unsigned(bubble_join_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7(BLACKBOX,47)@96
    // in in_stall_in@20000000
    // out out_data_out@97
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@97
    bubbleSort_i_llvm_fpga_push_i1_demorgan40_push22_bubblesort0 thei_llvm_fpga_push_i1_demorgan40_push22_bubblesort7 (
        .in_data_in(bubble_select_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_b),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_feedback_stall_out_22),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_backStall),
        .in_valid_in(SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo(STALLENABLE,601)
    // Valid signal propagation
    assign SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_V0 = SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_backStall = i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_out_stall_out | ~ (SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_and0 = redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_valid_out;
    assign SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V1 & SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_and0;

    // redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo(STALLFIFO,303)
    assign redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_V1;
    assign redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_stall_in = SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_backStall;
    assign redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_b;
    assign redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_valid_in_bitsignaltemp = redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_valid_in[0];
    assign redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_stall_in_bitsignaltemp = redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_stall_in[0];
    assign redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_valid_out[0] = redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_valid_out_bitsignaltemp;
    assign redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_stall_out[0] = redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo (
        .valid_in(redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_valid_in_bitsignaltemp),
        .stall_in(redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_b),
        .valid_out(redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_valid_out_bitsignaltemp),
        .stall_out(redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_stall_out_bitsignaltemp),
        .data_out(redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6(STALLENABLE,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_consumed0 = (~ (SE_i_first_cleanup_xor_or_bubblesort23_backStall) & SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_wireValid) | SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_consumed1 = (~ (redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_wireValid) | SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_StallValid = SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_backStall & SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_toReg0 = SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_StallValid & SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_toReg1 = SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_StallValid & SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_or0 = SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_consumed1 & SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_or0);
    assign SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_backStall = SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_V0 = SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_V1 = SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_wireValid = i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_valid_out;

    // SE_i_first_cleanup_xor_or_bubblesort23(STALLENABLE,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_first_cleanup_xor_or_bubblesort23_fromReg0 <= '0;
            SE_i_first_cleanup_xor_or_bubblesort23_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_first_cleanup_xor_or_bubblesort23_fromReg0 <= SE_i_first_cleanup_xor_or_bubblesort23_toReg0;
            // Successor 1
            SE_i_first_cleanup_xor_or_bubblesort23_fromReg1 <= SE_i_first_cleanup_xor_or_bubblesort23_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_first_cleanup_xor_or_bubblesort23_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm1_bubblesort24_backStall) & SE_i_first_cleanup_xor_or_bubblesort23_wireValid) | SE_i_first_cleanup_xor_or_bubblesort23_fromReg0;
    assign SE_i_first_cleanup_xor_or_bubblesort23_consumed1 = (~ (SE_in_i_llvm_fpga_mem_lm92_bubblesort29_backStall) & SE_i_first_cleanup_xor_or_bubblesort23_wireValid) | SE_i_first_cleanup_xor_or_bubblesort23_fromReg1;
    // Consuming
    assign SE_i_first_cleanup_xor_or_bubblesort23_StallValid = SE_i_first_cleanup_xor_or_bubblesort23_backStall & SE_i_first_cleanup_xor_or_bubblesort23_wireValid;
    assign SE_i_first_cleanup_xor_or_bubblesort23_toReg0 = SE_i_first_cleanup_xor_or_bubblesort23_StallValid & SE_i_first_cleanup_xor_or_bubblesort23_consumed0;
    assign SE_i_first_cleanup_xor_or_bubblesort23_toReg1 = SE_i_first_cleanup_xor_or_bubblesort23_StallValid & SE_i_first_cleanup_xor_or_bubblesort23_consumed1;
    // Backward Stall generation
    assign SE_i_first_cleanup_xor_or_bubblesort23_or0 = SE_i_first_cleanup_xor_or_bubblesort23_consumed0;
    assign SE_i_first_cleanup_xor_or_bubblesort23_wireStall = ~ (SE_i_first_cleanup_xor_or_bubblesort23_consumed1 & SE_i_first_cleanup_xor_or_bubblesort23_or0);
    assign SE_i_first_cleanup_xor_or_bubblesort23_backStall = SE_i_first_cleanup_xor_or_bubblesort23_wireStall;
    // Valid signal propagation
    assign SE_i_first_cleanup_xor_or_bubblesort23_V0 = SE_i_first_cleanup_xor_or_bubblesort23_wireValid & ~ (SE_i_first_cleanup_xor_or_bubblesort23_fromReg0);
    assign SE_i_first_cleanup_xor_or_bubblesort23_V1 = SE_i_first_cleanup_xor_or_bubblesort23_wireValid & ~ (SE_i_first_cleanup_xor_or_bubblesort23_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_first_cleanup_xor_or_bubblesort23_and0 = SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_V0;
    assign SE_i_first_cleanup_xor_or_bubblesort23_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_V1 & SE_i_first_cleanup_xor_or_bubblesort23_and0;

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0(STALLENABLE,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed0 = (~ (redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed1 = (~ (SE_i_first_cleanup_xor_or_bubblesort23_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed2 = (~ (redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed3 = (~ (redist10_i_xor_bubblesort2_q_32_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_or2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_wireValid = i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_valid_out;

    // redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo(STALLFIFO,296)
    assign redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_V0;
    assign redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_stall_in = SE_out_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_backStall;
    assign redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_data_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_b;
    assign redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_valid_in_bitsignaltemp = redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_valid_in[0];
    assign redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_stall_in_bitsignaltemp = redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_stall_in[0];
    assign redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_valid_out[0] = redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_valid_out_bitsignaltemp;
    assign redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_stall_out[0] = redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(94),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) theredist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo (
        .valid_in(redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_b),
        .valid_out(redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo(BITJOIN,405)
    assign bubble_join_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_q = redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_data_out;

    // bubble_select_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo(BITSELECT,406)
    assign bubble_select_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_b = $unsigned(bubble_join_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_q[1:0]);

    // bubble_join_redist11_i_xor_bubblesort2_q_93_fifo(BITJOIN,399)
    assign bubble_join_redist11_i_xor_bubblesort2_q_93_fifo_q = redist11_i_xor_bubblesort2_q_93_fifo_data_out;

    // bubble_select_redist11_i_xor_bubblesort2_q_93_fifo(BITSELECT,400)
    assign bubble_select_redist11_i_xor_bubblesort2_q_93_fifo_b = $unsigned(bubble_join_redist11_i_xor_bubblesort2_q_93_fifo_q[0:0]);

    // SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo(STALLENABLE,575)
    // Valid signal propagation
    assign SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_V0 = SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_backStall = i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_stall_out | ~ (SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_and0 = redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_valid_out;
    assign SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_wireValid = SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_V0 & SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_and0;

    // SE_i_fpga_indvars_iv_next14_bubblesort47(STALLENABLE,439)
    // Valid signal propagation
    assign SE_i_fpga_indvars_iv_next14_bubblesort47_V0 = SE_i_fpga_indvars_iv_next14_bubblesort47_wireValid;
    // Backward Stall generation
    assign SE_i_fpga_indvars_iv_next14_bubblesort47_backStall = i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_out_stall_out | ~ (SE_i_fpga_indvars_iv_next14_bubblesort47_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_fpga_indvars_iv_next14_bubblesort47_and0 = SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_V0;
    assign SE_i_fpga_indvars_iv_next14_bubblesort47_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V11 & SE_i_fpga_indvars_iv_next14_bubblesort47_and0;

    // SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48(STALLENABLE,504)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_wireValid = i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_out_valid_out;

    // c_i33_163(CONSTANT,8)
    assign c_i33_163_q = $unsigned(33'b111111111111111111111111111111111);

    // redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0(REG,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_backEN == 1'b1)
        begin
            redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_b);
        end
    end

    // i_fpga_indvars_iv_next14_bubblesort47(ADD,21)@96
    assign i_fpga_indvars_iv_next14_bubblesort47_a = {1'b0, redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_q};
    assign i_fpga_indvars_iv_next14_bubblesort47_b = {1'b0, c_i33_163_q};
    assign i_fpga_indvars_iv_next14_bubblesort47_o = $unsigned(i_fpga_indvars_iv_next14_bubblesort47_a) + $unsigned(i_fpga_indvars_iv_next14_bubblesort47_b);
    assign i_fpga_indvars_iv_next14_bubblesort47_q = i_fpga_indvars_iv_next14_bubblesort47_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next14_bubblesort47_sel_x(BITSELECT,150)@96
    assign bgTrunc_i_fpga_indvars_iv_next14_bubblesort47_sel_x_b = i_fpga_indvars_iv_next14_bubblesort47_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48(BLACKBOX,59)@96
    // in in_stall_in@20000000
    // out out_data_out@97
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@97
    bubbleSort_i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort0 thei_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next14_bubblesort47_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_feedback_stall_out_14),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_backStall),
        .in_valid_in(SE_i_fpga_indvars_iv_next14_bubblesort47_V0),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_out_feedback_valid_out_14),
        .out_stall_out(i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo(BITJOIN,384)
    assign bubble_join_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_q = redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_data_out;

    // bubble_select_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo(BITSELECT,385)
    assign bubble_select_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_b = $unsigned(bubble_join_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_q[0:0]);

    // bubble_join_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo(BITJOIN,387)
    assign bubble_join_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_q = redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_data_out;

    // bubble_select_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo(BITSELECT,388)
    assign bubble_select_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_b = $unsigned(bubble_join_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_q[32:0]);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44(BLACKBOX,46)@94
    // in in_stall_in@20000000
    // out out_data_out@95
    // out out_feedback_stall_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@95
    bubbleSort_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort0 thei_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44 (
        .in_data_in(bubble_select_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_b),
        .in_dir(bubble_select_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_b),
        .in_feedback_in_14(i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i33_fpga_indvars_iv13_push14_bubblesort48_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_backStall),
        .in_valid_in(SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_feedback_stall_out_14),
        .out_stall_out(i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44(BITJOIN,362)
    assign bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_q = i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44(BITSELECT,363)
    assign bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_b = $unsigned(bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_q[32:0]);

    // i_exitcond_bubblesort45_cmp_nsign(LOGICAL,198)@95
    assign i_exitcond_bubblesort45_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_b[32:32]));

    // bubble_join_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo(BITJOIN,408)
    assign bubble_join_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_q = redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_data_out;

    // bubble_select_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo(BITSELECT,409)
    assign bubble_select_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_b = $unsigned(bubble_join_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_q[0:0]);

    // i_unnamed_bubblesort49(LOGICAL,70)@95
    assign i_unnamed_bubblesort49_q = bubble_select_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_b & i_exitcond_bubblesort45_cmp_nsign_q;

    // i_notcmp_bubblesort50(LOGICAL,63)@95
    assign i_notcmp_bubblesort50_q = i_unnamed_bubblesort49_q ^ VCC_q;

    // i_or_bubblesort52(LOGICAL,64)@95
    assign i_or_bubblesort52_q = i_notcmp_bubblesort50_q | bubble_select_redist11_i_xor_bubblesort2_q_93_fifo_b;

    // i_next_cleanups_bubblesort53(MUX,62)@95 + 1
    assign i_next_cleanups_bubblesort53_s = i_or_bubblesort52_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_next_cleanups_bubblesort53_q <= 2'b0;
        end
        else if (SE_i_next_cleanups_bubblesort53_backEN == 1'b1)
        begin
            unique case (i_next_cleanups_bubblesort53_s)
                1'b0 : i_next_cleanups_bubblesort53_q <= bubble_select_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_b;
                1'b1 : i_next_cleanups_bubblesort53_q <= i_cleanups_shl_bubblesort3_vt_join_q;
                default : i_next_cleanups_bubblesort53_q <= 2'b0;
            endcase
        end
    end

    // i_llvm_fpga_push_i2_cleanups_push18_bubblesort54(BLACKBOX,56)@96
    // in in_stall_in@20000000
    // out out_data_out@97
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@97
    bubbleSort_i_llvm_fpga_push_i2_cleanups_push18_bubblesort0 thei_llvm_fpga_push_i2_cleanups_push18_bubblesort54 (
        .in_data_in(i_next_cleanups_bubblesort53_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_feedback_stall_out_18),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_V0),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54(STALLENABLE,497)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_V0 = SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_backStall = i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_and0 = SE_i_next_cleanups_bubblesort53_V0;
    assign SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V8 & SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_and0;

    // SE_out_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo(STALLENABLE,588)
    // Valid signal propagation
    assign SE_out_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_V0 = SE_out_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_backStall = SE_i_next_cleanups_bubblesort53_backStall | ~ (SE_out_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_wireValid = redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_valid_out;

    // SE_i_next_cleanups_bubblesort53(STALLENABLE,507)
    // Valid signal propagation
    assign SE_i_next_cleanups_bubblesort53_V0 = SE_i_next_cleanups_bubblesort53_R_v_0;
    // Stall signal propagation
    assign SE_i_next_cleanups_bubblesort53_s_tv_0 = SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_backStall & SE_i_next_cleanups_bubblesort53_R_v_0;
    // Backward Enable generation
    assign SE_i_next_cleanups_bubblesort53_backEN = ~ (SE_i_next_cleanups_bubblesort53_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_next_cleanups_bubblesort53_and0 = SE_out_redist11_i_xor_bubblesort2_q_93_fifo_V0 & SE_i_next_cleanups_bubblesort53_backEN;
    assign SE_i_next_cleanups_bubblesort53_v_s_0 = SE_out_redist14_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out_93_fifo_V0 & SE_i_next_cleanups_bubblesort53_and0;
    // Backward Stall generation
    assign SE_i_next_cleanups_bubblesort53_backStall = ~ (SE_i_next_cleanups_bubblesort53_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_cleanups_bubblesort53_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_next_cleanups_bubblesort53_backEN == 1'b0)
            begin
                SE_i_next_cleanups_bubblesort53_R_v_0 <= SE_i_next_cleanups_bubblesort53_R_v_0 & SE_i_next_cleanups_bubblesort53_s_tv_0;
            end
            else
            begin
                SE_i_next_cleanups_bubblesort53_R_v_0 <= SE_i_next_cleanups_bubblesort53_v_s_0;
            end

        end
    end

    // redist11_i_xor_bubblesort2_q_93_fifo(STALLFIFO,293)
    assign redist11_i_xor_bubblesort2_q_93_fifo_valid_in = SE_out_redist10_i_xor_bubblesort2_q_32_fifo_V1;
    assign redist11_i_xor_bubblesort2_q_93_fifo_stall_in = SE_out_redist11_i_xor_bubblesort2_q_93_fifo_backStall;
    assign redist11_i_xor_bubblesort2_q_93_fifo_data_in = bubble_select_redist10_i_xor_bubblesort2_q_32_fifo_b;
    assign redist11_i_xor_bubblesort2_q_93_fifo_valid_in_bitsignaltemp = redist11_i_xor_bubblesort2_q_93_fifo_valid_in[0];
    assign redist11_i_xor_bubblesort2_q_93_fifo_stall_in_bitsignaltemp = redist11_i_xor_bubblesort2_q_93_fifo_stall_in[0];
    assign redist11_i_xor_bubblesort2_q_93_fifo_valid_out[0] = redist11_i_xor_bubblesort2_q_93_fifo_valid_out_bitsignaltemp;
    assign redist11_i_xor_bubblesort2_q_93_fifo_stall_out[0] = redist11_i_xor_bubblesort2_q_93_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(62),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist11_i_xor_bubblesort2_q_93_fifo (
        .valid_in(redist11_i_xor_bubblesort2_q_93_fifo_valid_in_bitsignaltemp),
        .stall_in(redist11_i_xor_bubblesort2_q_93_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist10_i_xor_bubblesort2_q_32_fifo_b),
        .valid_out(redist11_i_xor_bubblesort2_q_93_fifo_valid_out_bitsignaltemp),
        .stall_out(redist11_i_xor_bubblesort2_q_93_fifo_stall_out_bitsignaltemp),
        .data_out(redist11_i_xor_bubblesort2_q_93_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist11_i_xor_bubblesort2_q_93_fifo(STALLENABLE,583)
    // Valid signal propagation
    assign SE_out_redist11_i_xor_bubblesort2_q_93_fifo_V0 = SE_out_redist11_i_xor_bubblesort2_q_93_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist11_i_xor_bubblesort2_q_93_fifo_backStall = SE_i_next_cleanups_bubblesort53_backStall | ~ (SE_out_redist11_i_xor_bubblesort2_q_93_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist11_i_xor_bubblesort2_q_93_fifo_and0 = redist11_i_xor_bubblesort2_q_93_fifo_valid_out;
    assign SE_out_redist11_i_xor_bubblesort2_q_93_fifo_wireValid = SE_i_exitcond_bubblesort45_cmp_nsign_V2 & SE_out_redist11_i_xor_bubblesort2_q_93_fifo_and0;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51(STALLENABLE,493)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51_backStall = i_llvm_fpga_push_i1_notexitcond_bubblesort51_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51_and0 = SE_i_exitcond_bubblesort45_cmp_nsign_V0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51_wireValid = SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_V0 & SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51_and0;

    // SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44(STALLENABLE,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_fromReg0 <= SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_fromReg1 <= SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_consumed0 = (~ (SE_i_exitcond_bubblesort45_cmp_nsign_backStall) & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_wireValid) | SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_consumed1 = (~ (SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_backStall) & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_wireValid) | SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_StallValid = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_backStall & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_wireValid;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_toReg0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_StallValid & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_consumed0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_toReg1 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_StallValid & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_or0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_consumed0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_wireStall = ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_consumed1 & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_or0);
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_backStall = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_V0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_wireValid & ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_V1 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_wireValid & ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_wireValid = i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_valid_out;

    // SE_i_exitcond_bubblesort45_cmp_nsign(STALLENABLE,535)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_exitcond_bubblesort45_cmp_nsign_fromReg0 <= '0;
            SE_i_exitcond_bubblesort45_cmp_nsign_fromReg1 <= '0;
            SE_i_exitcond_bubblesort45_cmp_nsign_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_exitcond_bubblesort45_cmp_nsign_fromReg0 <= SE_i_exitcond_bubblesort45_cmp_nsign_toReg0;
            // Successor 1
            SE_i_exitcond_bubblesort45_cmp_nsign_fromReg1 <= SE_i_exitcond_bubblesort45_cmp_nsign_toReg1;
            // Successor 2
            SE_i_exitcond_bubblesort45_cmp_nsign_fromReg2 <= SE_i_exitcond_bubblesort45_cmp_nsign_toReg2;
        end
    end
    // Input Stall processing
    assign SE_i_exitcond_bubblesort45_cmp_nsign_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51_backStall) & SE_i_exitcond_bubblesort45_cmp_nsign_wireValid) | SE_i_exitcond_bubblesort45_cmp_nsign_fromReg0;
    assign SE_i_exitcond_bubblesort45_cmp_nsign_consumed1 = (~ (SE_i_masked_bubblesort55_backStall) & SE_i_exitcond_bubblesort45_cmp_nsign_wireValid) | SE_i_exitcond_bubblesort45_cmp_nsign_fromReg1;
    assign SE_i_exitcond_bubblesort45_cmp_nsign_consumed2 = (~ (SE_out_redist11_i_xor_bubblesort2_q_93_fifo_backStall) & SE_i_exitcond_bubblesort45_cmp_nsign_wireValid) | SE_i_exitcond_bubblesort45_cmp_nsign_fromReg2;
    // Consuming
    assign SE_i_exitcond_bubblesort45_cmp_nsign_StallValid = SE_i_exitcond_bubblesort45_cmp_nsign_backStall & SE_i_exitcond_bubblesort45_cmp_nsign_wireValid;
    assign SE_i_exitcond_bubblesort45_cmp_nsign_toReg0 = SE_i_exitcond_bubblesort45_cmp_nsign_StallValid & SE_i_exitcond_bubblesort45_cmp_nsign_consumed0;
    assign SE_i_exitcond_bubblesort45_cmp_nsign_toReg1 = SE_i_exitcond_bubblesort45_cmp_nsign_StallValid & SE_i_exitcond_bubblesort45_cmp_nsign_consumed1;
    assign SE_i_exitcond_bubblesort45_cmp_nsign_toReg2 = SE_i_exitcond_bubblesort45_cmp_nsign_StallValid & SE_i_exitcond_bubblesort45_cmp_nsign_consumed2;
    // Backward Stall generation
    assign SE_i_exitcond_bubblesort45_cmp_nsign_or0 = SE_i_exitcond_bubblesort45_cmp_nsign_consumed0;
    assign SE_i_exitcond_bubblesort45_cmp_nsign_or1 = SE_i_exitcond_bubblesort45_cmp_nsign_consumed1 & SE_i_exitcond_bubblesort45_cmp_nsign_or0;
    assign SE_i_exitcond_bubblesort45_cmp_nsign_wireStall = ~ (SE_i_exitcond_bubblesort45_cmp_nsign_consumed2 & SE_i_exitcond_bubblesort45_cmp_nsign_or1);
    assign SE_i_exitcond_bubblesort45_cmp_nsign_backStall = SE_i_exitcond_bubblesort45_cmp_nsign_wireStall;
    // Valid signal propagation
    assign SE_i_exitcond_bubblesort45_cmp_nsign_V0 = SE_i_exitcond_bubblesort45_cmp_nsign_wireValid & ~ (SE_i_exitcond_bubblesort45_cmp_nsign_fromReg0);
    assign SE_i_exitcond_bubblesort45_cmp_nsign_V1 = SE_i_exitcond_bubblesort45_cmp_nsign_wireValid & ~ (SE_i_exitcond_bubblesort45_cmp_nsign_fromReg1);
    assign SE_i_exitcond_bubblesort45_cmp_nsign_V2 = SE_i_exitcond_bubblesort45_cmp_nsign_wireValid & ~ (SE_i_exitcond_bubblesort45_cmp_nsign_fromReg2);
    // Computing multiple Valid(s)
    assign SE_i_exitcond_bubblesort45_cmp_nsign_and0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_V0;
    assign SE_i_exitcond_bubblesort45_cmp_nsign_wireValid = SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_V0 & SE_i_exitcond_bubblesort45_cmp_nsign_and0;

    // SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo(STALLENABLE,590)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_fromReg0 <= '0;
            SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_fromReg0 <= SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_toReg0;
            // Successor 1
            SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_fromReg1 <= SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_consumed0 = (~ (SE_i_exitcond_bubblesort45_cmp_nsign_backStall) & SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_wireValid) | SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_fromReg0;
    assign SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_consumed1 = (~ (SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_backStall) & SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_wireValid) | SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_fromReg1;
    // Consuming
    assign SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_StallValid = SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_backStall & SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_wireValid;
    assign SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_toReg0 = SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_StallValid & SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_consumed0;
    assign SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_toReg1 = SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_StallValid & SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_or0 = SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_consumed0;
    assign SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_wireStall = ~ (SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_consumed1 & SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_or0);
    assign SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_backStall = SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_V0 = SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_wireValid & ~ (SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_fromReg0);
    assign SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_V1 = SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_wireValid & ~ (SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_wireValid = redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_valid_out;

    // redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo(STALLFIFO,297)
    assign redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_V1;
    assign redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_stall_in = SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_backStall;
    assign redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_pop20_bubblesort32_b;
    assign redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_valid_in_bitsignaltemp = redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_valid_in[0];
    assign redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_stall_in_bitsignaltemp = redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_stall_in[0];
    assign redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_valid_out[0] = redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_valid_out_bitsignaltemp;
    assign redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_stall_out[0] = redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(62),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo (
        .valid_in(redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_valid_in_bitsignaltemp),
        .stall_in(redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_pop20_bubblesort32_b),
        .valid_out(redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_valid_out_bitsignaltemp),
        .stall_out(redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_stall_out_bitsignaltemp),
        .data_out(redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_cmp6_bubblesort30(STALLENABLE,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp6_bubblesort30_fromReg0 <= '0;
            SE_i_cmp6_bubblesort30_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_cmp6_bubblesort30_fromReg0 <= SE_i_cmp6_bubblesort30_toReg0;
            // Successor 1
            SE_i_cmp6_bubblesort30_fromReg1 <= SE_i_cmp6_bubblesort30_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_cmp6_bubblesort30_consumed0 = (~ (SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_backStall) & SE_i_cmp6_bubblesort30_wireValid) | SE_i_cmp6_bubblesort30_fromReg0;
    assign SE_i_cmp6_bubblesort30_consumed1 = (~ (SE_join_for_coalesced_delay_1_backStall) & SE_i_cmp6_bubblesort30_wireValid) | SE_i_cmp6_bubblesort30_fromReg1;
    // Consuming
    assign SE_i_cmp6_bubblesort30_StallValid = SE_i_cmp6_bubblesort30_backStall & SE_i_cmp6_bubblesort30_wireValid;
    assign SE_i_cmp6_bubblesort30_toReg0 = SE_i_cmp6_bubblesort30_StallValid & SE_i_cmp6_bubblesort30_consumed0;
    assign SE_i_cmp6_bubblesort30_toReg1 = SE_i_cmp6_bubblesort30_StallValid & SE_i_cmp6_bubblesort30_consumed1;
    // Backward Stall generation
    assign SE_i_cmp6_bubblesort30_or0 = SE_i_cmp6_bubblesort30_consumed0;
    assign SE_i_cmp6_bubblesort30_wireStall = ~ (SE_i_cmp6_bubblesort30_consumed1 & SE_i_cmp6_bubblesort30_or0);
    assign SE_i_cmp6_bubblesort30_backStall = SE_i_cmp6_bubblesort30_wireStall;
    // Valid signal propagation
    assign SE_i_cmp6_bubblesort30_V0 = SE_i_cmp6_bubblesort30_wireValid & ~ (SE_i_cmp6_bubblesort30_fromReg0);
    assign SE_i_cmp6_bubblesort30_V1 = SE_i_cmp6_bubblesort30_wireValid & ~ (SE_i_cmp6_bubblesort30_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_cmp6_bubblesort30_and0 = SE_out_i_llvm_fpga_mem_lm1_bubblesort24_V0;
    assign SE_i_cmp6_bubblesort30_and1 = SE_out_i_llvm_fpga_mem_lm92_bubblesort29_V0 & SE_i_cmp6_bubblesort30_and0;
    assign SE_i_cmp6_bubblesort30_and2 = SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_V0 & SE_i_cmp6_bubblesort30_and1;
    assign SE_i_cmp6_bubblesort30_wireValid = SE_out_redist10_i_xor_bubblesort2_q_32_fifo_V0 & SE_i_cmp6_bubblesort30_and2;

    // SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32(STALLENABLE,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_consumed0 = (~ (SE_i_cmp6_bubblesort30_backStall) & SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_wireValid) | SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_consumed1 = (~ (redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_wireValid) | SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_StallValid = SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_backStall & SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_toReg0 = SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_StallValid & SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_toReg1 = SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_StallValid & SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_or0 = SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_consumed1 & SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_or0);
    assign SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_backStall = SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_V0 = SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_V1 = SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_wireValid = i_llvm_fpga_pop_i1_pop20_bubblesort32_out_valid_out;

    // SE_in_i_llvm_fpga_push_i1_push20_bubblesort33(STALLENABLE,495)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_push20_bubblesort33_V0 = SE_in_i_llvm_fpga_push_i1_push20_bubblesort33_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_push20_bubblesort33_backStall = i_llvm_fpga_push_i1_push20_bubblesort33_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_push20_bubblesort33_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_push20_bubblesort33_and0 = SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_V0;
    assign SE_in_i_llvm_fpga_push_i1_push20_bubblesort33_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V7 & SE_in_i_llvm_fpga_push_i1_push20_bubblesort33_and0;

    // SE_out_i_llvm_fpga_push_i1_push20_bubblesort33(STALLENABLE,496)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_push20_bubblesort33_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_push20_bubblesort33_wireValid = i_llvm_fpga_push_i1_push20_bubblesort33_out_valid_out;

    // redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0(REG,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_backEN == 1'b1)
        begin
            redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_q <= $unsigned(bubble_select_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_b);
        end
    end

    // i_llvm_fpga_push_i1_push20_bubblesort33(BLACKBOX,55)@96
    // in in_stall_in@20000000
    // out out_data_out@97
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@97
    bubbleSort_i_llvm_fpga_push_i1_push20_bubblesort0 thei_llvm_fpga_push_i1_push20_bubblesort33 (
        .in_data_in(redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i1_pop20_bubblesort32_out_feedback_stall_out_20),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_push20_bubblesort33_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_push20_bubblesort33_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_push20_bubblesort33_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_push20_bubblesort33_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i1_push20_bubblesort33_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_push20_bubblesort33_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop20_bubblesort32(BLACKBOX,42)@33
    // in in_stall_in@20000000
    // out out_data_out@34
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@34
    bubbleSort_i_llvm_fpga_pop_i1_pop20_bubblesort0 thei_llvm_fpga_pop_i1_pop20_bubblesort32 (
        .in_data_in(sel_for_coalesced_delay_0_c),
        .in_dir(sel_for_coalesced_delay_0_b),
        .in_feedback_in_20(i_llvm_fpga_push_i1_push20_bubblesort33_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i1_push20_bubblesort33_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_pop20_bubblesort32_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_pop20_bubblesort32_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i1_pop20_bubblesort32_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_pop20_bubblesort32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,605)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_pop20_bubblesort32_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = coalesced_delay_0_fifo_valid_out;

    // coalesced_delay_0_fifo(STALLFIFO,305)
    assign coalesced_delay_0_fifo_valid_in = SE_out_bubbleSort_B4_merge_reg_aunroll_x_V11;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo(STALLFIFO,289)
    assign redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_valid_in = SE_out_bubbleSort_B4_merge_reg_aunroll_x_V9;
    assign redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_stall_in = SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_backStall;
    assign redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_data_in = bubble_select_bubbleSort_B4_merge_reg_aunroll_x_c;
    assign redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_valid_in_bitsignaltemp = redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_valid_in[0];
    assign redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_stall_in_bitsignaltemp = redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_stall_in[0];
    assign redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_valid_out[0] = redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_valid_out_bitsignaltemp;
    assign redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_stall_out[0] = redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(94),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
        .IMPL("ram")
    ) theredist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo (
        .valid_in(redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_c),
        .valid_out(redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25(BLACKBOX,45)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    bubbleSort_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort0 thei_llvm_fpga_pop_i32_j_021_pop15_bubblesort25 (
        .in_data_in(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_e),
        .in_dir(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_15(i_llvm_fpga_push_i32_j_021_push15_bubblesort43_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_j_021_push15_bubblesort43_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_backStall),
        .in_valid_in(SE_out_bubbleSort_B4_merge_reg_aunroll_x_V8),
        .out_data_out(i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9(BLACKBOX,44)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    bubbleSort_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort0 thei_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9 (
        .in_data_in(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_d),
        .in_dir(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_19(i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i32_i_023_pop1138_push19_bubblesort10_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_backStall),
        .in_valid_in(SE_out_bubbleSort_B4_merge_reg_aunroll_x_V7),
        .out_data_out(i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_158(CONSTANT,6)
    assign c_i2_158_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0(BLACKBOX,43)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    bubbleSort_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0 thei_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0 (
        .in_data_in(c_i2_158_q),
        .in_dir(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_18(i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_backStall),
        .in_valid_in(SE_out_bubbleSort_B4_merge_reg_aunroll_x_V6),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39(STALLENABLE,489)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_backStall = i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V5;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_wireValid = SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39(STALLENABLE,490)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_wireValid = i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_out_valid_out;

    // bubble_join_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo(BITJOIN,426)
    assign bubble_join_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_q = redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_data_out;

    // bubble_select_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo(BITSELECT,427)
    assign bubble_select_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_b = $unsigned(bubble_join_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39(BLACKBOX,52)@96
    // in in_stall_in@20000000
    // out out_data_out@97
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@97
    bubbleSort_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort0 thei_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39 (
        .in_data_in(bubble_select_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_out_feedback_stall_out_16),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_V0),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19(BLACKBOX,40)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    bubbleSort_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort0 thei_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_16(i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_backStall),
        .in_valid_in(SE_out_bubbleSort_B4_merge_reg_aunroll_x_V5),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16(BLACKBOX,39)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    bubbleSort_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort0 thei_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16 (
        .in_data_in(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_j),
        .in_dir(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_24(i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i1_memdep_phi7_pop1342_push24_bubblesort17_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_backStall),
        .in_valid_in(SE_out_bubbleSort_B4_merge_reg_aunroll_x_V4),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14(BLACKBOX,37)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    bubbleSort_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort0 thei_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14 (
        .in_data_in(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_i),
        .in_dir(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_23(i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i1_memdep_phi3_pop1241_push23_bubblesort15_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_backStall),
        .in_valid_in(SE_out_bubbleSort_B4_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6(BLACKBOX,36)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    bubbleSort_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort0 thei_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6 (
        .in_data_in(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_h),
        .in_dir(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_22(i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_demorgan40_push22_bubblesort7_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_backStall),
        .in_valid_in(SE_out_bubbleSort_B4_merge_reg_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg(STALLENABLE,783)
    // Valid signal propagation
    assign bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_V0 = bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_R_v_0;
    assign bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_V1 = bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_R_v_1;
    // Stall signal propagation
    assign bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_s_tv_0 = i_llvm_fpga_ffwd_dest_p1024i32_v2420_bubblesort12_out_stall_out & bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_R_v_0;
    assign bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_s_tv_1 = i_llvm_fpga_ffwd_dest_p1024i32_v2419_bubblesort27_out_stall_out & bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_R_v_1;
    // Backward Enable generation
    assign bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_or0 = bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_s_tv_0;
    assign bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_backEN = ~ (bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_s_tv_1 | bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_or0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_v_s_0 = bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_backEN & SE_out_bubbleSort_B4_merge_reg_aunroll_x_V0;
    // Backward Stall generation
    assign bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_backStall = ~ (bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_R_v_0 <= 1'b0;
            bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_R_v_1 <= 1'b0;
        end
        else
        begin
            if (bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_R_v_0 <= bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_R_v_0 & bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_R_v_0 <= bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_v_s_0;
            end

            if (bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_R_v_1 <= bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_R_v_1 & bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_s_tv_1;
            end
            else
            begin
                bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_R_v_1 <= bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_v_s_0;
            end

        end
    end

    // bubble_join_stall_entry(BITJOIN,366)
    assign bubble_join_stall_entry_q = {in_unnamed_bubbleSort9, in_unnamed_bubbleSort8, in_notcmp3045, in_memdep_phi7_pop1348, in_memdep_phi3_pop1247, in_i_023_pop1143, in_forked26, in_demorgan46, in_add44};

    // bubble_select_stall_entry(BITSELECT,367)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:67]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[68:68]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[101:69]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[102:102]);

    // SE_stall_entry(STALLENABLE,518)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = bubbleSort_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubbleSort_B4_merge_reg_aunroll_x(BLACKBOX,152)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    bubbleSort_B4_merge_reg thebubbleSort_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_bubbleSort_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_i),
        .in_data_in_2_tpl(bubble_select_stall_entry_e),
        .in_data_in_3_tpl(bubble_select_stall_entry_b),
        .in_data_in_4_tpl(bubble_select_stall_entry_j),
        .in_data_in_5_tpl(bubble_select_stall_entry_h),
        .in_data_in_6_tpl(bubble_select_stall_entry_c),
        .in_data_in_7_tpl(bubble_select_stall_entry_f),
        .in_data_in_8_tpl(bubble_select_stall_entry_g),
        .out_stall_out(bubbleSort_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(bubbleSort_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(bubbleSort_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(bubbleSort_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(bubbleSort_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(bubbleSort_B4_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(bubbleSort_B4_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(bubbleSort_B4_merge_reg_aunroll_x_out_data_out_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubbleSort_B4_merge_reg_aunroll_x(STALLENABLE,523)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg8 <= '0;
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg9 <= '0;
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg10 <= '0;
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg11 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg4 <= SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg5 <= SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg6 <= SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg7 <= SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg8 <= SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg8;
            // Successor 9
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg9 <= SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg9;
            // Successor 10
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg10 <= SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg10;
            // Successor 11
            SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg11 <= SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg11;
        end
    end
    // Input Stall processing
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_bubbleSort_B4_merge_reg_aunroll_x_1_reg_backStall) & SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid) | SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_stall_out) & SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid) | SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_stall_out) & SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid) | SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_stall_out) & SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid) | SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg3;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_stall_out) & SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid) | SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg4;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_out_stall_out) & SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid) | SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg5;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed6 = (~ (i_llvm_fpga_pop_i2_cleanups_pop18_bubblesort0_out_stall_out) & SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid) | SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg6;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed7 = (~ (i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_stall_out) & SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid) | SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg7;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed8 = (~ (i_llvm_fpga_pop_i32_j_021_pop15_bubblesort25_out_stall_out) & SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid) | SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg8;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed9 = (~ (redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_stall_out) & SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid) | SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg9;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed10 = (~ (redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_stall_out) & SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid) | SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg10;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed11 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid) | SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg11;
    // Consuming
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_StallValid = SE_out_bubbleSort_B4_merge_reg_aunroll_x_backStall & SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg0 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_StallValid & SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg1 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_StallValid & SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg2 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_StallValid & SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg3 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_StallValid & SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed3;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg4 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_StallValid & SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed4;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg5 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_StallValid & SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed5;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg6 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_StallValid & SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed6;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg7 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_StallValid & SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed7;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg8 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_StallValid & SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed8;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg9 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_StallValid & SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed9;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg10 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_StallValid & SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed10;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_toReg11 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_StallValid & SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed11;
    // Backward Stall generation
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_or0 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_or1 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed1 & SE_out_bubbleSort_B4_merge_reg_aunroll_x_or0;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_or2 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed2 & SE_out_bubbleSort_B4_merge_reg_aunroll_x_or1;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_or3 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed3 & SE_out_bubbleSort_B4_merge_reg_aunroll_x_or2;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_or4 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed4 & SE_out_bubbleSort_B4_merge_reg_aunroll_x_or3;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_or5 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed5 & SE_out_bubbleSort_B4_merge_reg_aunroll_x_or4;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_or6 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed6 & SE_out_bubbleSort_B4_merge_reg_aunroll_x_or5;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_or7 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed7 & SE_out_bubbleSort_B4_merge_reg_aunroll_x_or6;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_or8 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed8 & SE_out_bubbleSort_B4_merge_reg_aunroll_x_or7;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_or9 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed9 & SE_out_bubbleSort_B4_merge_reg_aunroll_x_or8;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_or10 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed10 & SE_out_bubbleSort_B4_merge_reg_aunroll_x_or9;
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_bubbleSort_B4_merge_reg_aunroll_x_consumed11 & SE_out_bubbleSort_B4_merge_reg_aunroll_x_or10);
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_backStall = SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_V0 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_V1 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_V2 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_V3 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg3);
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_V4 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg4);
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_V5 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg5);
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_V6 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg6);
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_V7 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg7);
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_V8 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg8);
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_V9 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg9);
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_V10 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg10);
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_V11 = SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_bubbleSort_B4_merge_reg_aunroll_x_fromReg11);
    // Computing multiple Valid(s)
    assign SE_out_bubbleSort_B4_merge_reg_aunroll_x_wireValid = bubbleSort_B4_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21(STALLENABLE,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_consumed0 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_bubblesort19_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_consumed1 = (~ (redist19_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out_32_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_wireValid = i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_valid_out;

    // bubble_join_bubbleSort_B4_merge_reg_aunroll_x(BITJOIN,370)
    assign bubble_join_bubbleSort_B4_merge_reg_aunroll_x_q = {bubbleSort_B4_merge_reg_aunroll_x_out_data_out_8_tpl, bubbleSort_B4_merge_reg_aunroll_x_out_data_out_7_tpl, bubbleSort_B4_merge_reg_aunroll_x_out_data_out_6_tpl, bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl, bubbleSort_B4_merge_reg_aunroll_x_out_data_out_4_tpl, bubbleSort_B4_merge_reg_aunroll_x_out_data_out_3_tpl, bubbleSort_B4_merge_reg_aunroll_x_out_data_out_2_tpl, bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl, bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_bubbleSort_B4_merge_reg_aunroll_x(BITSELECT,371)
    assign bubble_select_bubbleSort_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_bubbleSort_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_bubbleSort_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_bubbleSort_B4_merge_reg_aunroll_x_q[33:1]);
    assign bubble_select_bubbleSort_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_bubbleSort_B4_merge_reg_aunroll_x_q[65:34]);
    assign bubble_select_bubbleSort_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_bubbleSort_B4_merge_reg_aunroll_x_q[97:66]);
    assign bubble_select_bubbleSort_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_bubbleSort_B4_merge_reg_aunroll_x_q[98:98]);
    assign bubble_select_bubbleSort_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_bubbleSort_B4_merge_reg_aunroll_x_q[99:99]);
    assign bubble_select_bubbleSort_B4_merge_reg_aunroll_x_h = $unsigned(bubble_join_bubbleSort_B4_merge_reg_aunroll_x_q[100:100]);
    assign bubble_select_bubbleSort_B4_merge_reg_aunroll_x_i = $unsigned(bubble_join_bubbleSort_B4_merge_reg_aunroll_x_q[101:101]);
    assign bubble_select_bubbleSort_B4_merge_reg_aunroll_x_j = $unsigned(bubble_join_bubbleSort_B4_merge_reg_aunroll_x_q[102:102]);

    // i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21(BLACKBOX,38)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    bubbleSort_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort0 thei_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_17(i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_backStall),
        .in_valid_in(SE_out_bubbleSort_B4_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_5_bubblesort40(BITJOIN,320)
    assign bubble_join_i_llvm_fpga_mem_memdep_5_bubblesort40_q = i_llvm_fpga_mem_memdep_5_bubblesort40_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40(BITSELECT,321)
    assign bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_5_bubblesort40_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41(BLACKBOX,50)@96
    // in in_stall_in@20000000
    // out out_data_out@97
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@97
    bubbleSort_i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort0 thei_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i1_memdep_phi6_pop17_bubblesort21_out_feedback_stall_out_17),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_backStall),
        .in_valid_in(SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_V0),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40(STALLENABLE,627)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_V0 = SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_backStall = i_llvm_fpga_push_i1_memdep_phi6_push17_bubblesort41_out_stall_out | ~ (SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_and0 = SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_V1;
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V3 & SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_and0;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,432)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,433)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[32:0]);

    // sel_for_coalesced_delay_1(BITSELECT,283)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[32:32]);

    // bubble_join_redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo(BITJOIN,381)
    assign bubble_join_redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_q = redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_data_out;

    // bubble_select_redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo(BITSELECT,382)
    assign bubble_select_redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_b = $unsigned(bubble_join_redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_q[63:0]);

    // i_llvm_fpga_mem_memdep_5_bubblesort40(BLACKBOX,33)@65
    // in in_i_stall@20000000
    // out out_lsu_memdep_5_o_active@20000000
    // out out_memdep_5_bubbleSort_avm_address@20000000
    // out out_memdep_5_bubbleSort_avm_burstcount@20000000
    // out out_memdep_5_bubbleSort_avm_byteenable@20000000
    // out out_memdep_5_bubbleSort_avm_enable@20000000
    // out out_memdep_5_bubbleSort_avm_read@20000000
    // out out_memdep_5_bubbleSort_avm_write@20000000
    // out out_memdep_5_bubbleSort_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@96
    // out out_o_writeack@96
    bubbleSort_i_llvm_fpga_mem_memdep_5_bubblesort0 thei_llvm_fpga_mem_memdep_5_bubblesort40 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist2_i_arrayidx5_bubblesort0_dupName_0_trunc_sel_x_b_63_fifo_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_mem_memdep_bubblesort38_b),
        .in_i_predicate(sel_for_coalesced_delay_1_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_backStall),
        .in_i_valid(SE_out_coalesced_delay_1_fifo_V0),
        .in_i_writedata(sel_for_coalesced_delay_1_b),
        .in_memdep_5_bubbleSort_avm_readdata(in_memdep_5_bubbleSort_avm_readdata),
        .in_memdep_5_bubbleSort_avm_readdatavalid(in_memdep_5_bubbleSort_avm_readdatavalid),
        .in_memdep_5_bubbleSort_avm_waitrequest(in_memdep_5_bubbleSort_avm_waitrequest),
        .in_memdep_5_bubbleSort_avm_writeack(in_memdep_5_bubbleSort_avm_writeack),
        .out_lsu_memdep_5_o_active(i_llvm_fpga_mem_memdep_5_bubblesort40_out_lsu_memdep_5_o_active),
        .out_memdep_5_bubbleSort_avm_address(i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_address),
        .out_memdep_5_bubbleSort_avm_burstcount(i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_burstcount),
        .out_memdep_5_bubbleSort_avm_byteenable(i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_byteenable),
        .out_memdep_5_bubbleSort_avm_enable(i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_enable),
        .out_memdep_5_bubbleSort_avm_read(i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_read),
        .out_memdep_5_bubbleSort_avm_write(i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_write),
        .out_memdep_5_bubbleSort_avm_writedata(i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_5_bubblesort40_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_5_bubblesort40_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_5_bubblesort40_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40(STALLENABLE,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_wireValid) | SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_backStall) & SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_wireValid) | SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_StallValid = SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_backStall & SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_toReg0 = SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_StallValid & SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_toReg1 = SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_StallValid & SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_or0 = SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_consumed1 & SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_backStall = SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_V0 = SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_V1 = SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_wireValid = i_llvm_fpga_mem_memdep_5_bubblesort40_out_o_valid;

    // SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0(STALLENABLE,591)
    // Valid signal propagation
    assign SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_V0 = SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_R_v_0;
    assign SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_V1 = SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_R_v_1;
    // Stall signal propagation
    assign SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_s_tv_0 = SE_in_i_llvm_fpga_push_i1_push20_bubblesort33_backStall & SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_R_v_0;
    assign SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_s_tv_1 = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_backStall & SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_R_v_1;
    // Backward Enable generation
    assign SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_or0 = SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_s_tv_0;
    assign SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_backEN = ~ (SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_s_tv_1 | SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_v_s_0 = SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_backEN & SE_out_redist15_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_61_fifo_V1;
    // Backward Stall generation
    assign SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_backStall = ~ (SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_R_v_0 <= 1'b0;
            SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_backEN == 1'b0)
            begin
                SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_R_v_0 <= SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_R_v_0 & SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_s_tv_0;
            end
            else
            begin
                SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_R_v_0 <= SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_v_s_0;
            end

            if (SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_backEN == 1'b0)
            begin
                SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_R_v_1 <= SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_R_v_1 & SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_s_tv_1;
            end
            else
            begin
                SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_R_v_1 <= SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_v_s_0;
            end

        end
    end

    // SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo(STALLENABLE,603)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_fromReg0 <= '0;
            SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_fromReg0 <= SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_toReg0;
            // Successor 1
            SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_fromReg1 <= SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_backStall) & SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_wireValid) | SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_fromReg0;
    assign SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_consumed1 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_backStall) & SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_wireValid) | SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_fromReg1;
    // Consuming
    assign SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_StallValid = SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_backStall & SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_wireValid;
    assign SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_toReg0 = SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_StallValid & SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_consumed0;
    assign SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_toReg1 = SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_StallValid & SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_or0 = SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_consumed0;
    assign SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_wireStall = ~ (SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_consumed1 & SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_or0);
    assign SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_backStall = SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_V0 = SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_wireValid & ~ (SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_fromReg0);
    assign SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_V1 = SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_wireValid & ~ (SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_wireValid = redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_valid_out;

    // SE_i_masked_bubblesort55(STALLENABLE,505)
    // Valid signal propagation
    assign SE_i_masked_bubblesort55_V0 = SE_i_masked_bubblesort55_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_bubblesort55_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_backStall & SE_i_masked_bubblesort55_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_bubblesort55_backEN = ~ (SE_i_masked_bubblesort55_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_bubblesort55_and0 = SE_i_exitcond_bubblesort45_cmp_nsign_V1 & SE_i_masked_bubblesort55_backEN;
    assign SE_i_masked_bubblesort55_v_s_0 = SE_out_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_V1 & SE_i_masked_bubblesort55_and0;
    // Backward Stall generation
    assign SE_i_masked_bubblesort55_backStall = ~ (SE_i_masked_bubblesort55_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_bubblesort55_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_bubblesort55_backEN == 1'b0)
            begin
                SE_i_masked_bubblesort55_R_v_0 <= SE_i_masked_bubblesort55_R_v_0 & SE_i_masked_bubblesort55_s_tv_0;
            end
            else
            begin
                SE_i_masked_bubblesort55_R_v_0 <= SE_i_masked_bubblesort55_v_s_0;
            end

        end
    end

    // SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0(STALLENABLE,584)
    // Valid signal propagation
    assign SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_V0 = SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_R_v_0;
    assign SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_V1 = SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_s_tv_0 = SE_i_fpga_indvars_iv_next14_bubblesort47_backStall & SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_R_v_0;
    assign SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_s_tv_1 = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_backStall & SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_or0 = SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_s_tv_0;
    assign SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_backEN = ~ (SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_s_tv_1 | SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_v_s_0 = SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_backEN & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_V1;
    // Backward Stall generation
    assign SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_backStall = ~ (SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_R_v_0 <= 1'b0;
            SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_R_v_0 <= SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_R_v_0 & SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_R_v_0 <= SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_v_s_0;
            end

            if (SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_R_v_1 <= SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_R_v_1 & SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_s_tv_1;
            end
            else
            begin
                SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_R_v_1 <= SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1(STALLENABLE,687)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and0 = SE_redist12_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_out_data_out_1_0_V1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and1 = SE_i_masked_bubblesort55_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and2 = SE_out_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_V1 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and3 = SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_V1 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and4 = SE_redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_V1 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and5 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_5_bubblesort40_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_and5;

    // SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57(STALLENABLE,491)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_V0 = SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_backStall = i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_and0 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V6;
    assign SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_wireValid = SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_V0 & SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_and0;

    // SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56(STALLENABLE,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_consumed1 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_wireValid = i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57(STALLENABLE,492)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_wireValid = i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56(BITJOIN,346)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_q = i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56(BITSELECT,347)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_q[0:0]);

    // i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57(BLACKBOX,53)@96
    // in in_stall_in@20000000
    // out out_data_out@97
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@97
    bubbleSort_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort0 thei_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_out_feedback_stall_out_21),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo(BITJOIN,390)
    assign bubble_join_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_q = redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_data_out;

    // bubble_select_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo(BITSELECT,391)
    assign bubble_select_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_b = $unsigned(bubble_join_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_q[0:0]);

    // i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56(BLACKBOX,41)@95
    // in in_stall_in@20000000
    // out out_data_out@96
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@96
    bubbleSort_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort0 thei_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56 (
        .in_data_in(bubble_select_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_b),
        .in_dir(redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_q),
        .in_feedback_in_21(i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_backStall),
        .in_valid_in(SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo(STALLFIFO,290)
    assign redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_valid_in = SE_out_bubbleSort_B4_merge_reg_aunroll_x_V10;
    assign redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_stall_in = SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_backStall;
    assign redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_data_in = bubble_select_bubbleSort_B4_merge_reg_aunroll_x_g;
    assign redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_valid_in_bitsignaltemp = redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_valid_in[0];
    assign redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_stall_in_bitsignaltemp = redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_stall_in[0];
    assign redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_valid_out[0] = redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_valid_out_bitsignaltemp;
    assign redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_stall_out[0] = redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo (
        .valid_in(redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_bubbleSort_B4_merge_reg_aunroll_x_g),
        .valid_out(redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo(STALLENABLE,577)
    // Valid signal propagation
    assign SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_V0 = SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_backStall = i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_out_stall_out | ~ (SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_and0 = redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_valid_out;
    assign SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_wireValid = SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V0 & SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_and0;

    // SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo(STALLENABLE,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg0 <= '0;
            SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg0 <= SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_toReg0;
            // Successor 1
            SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg1 <= SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed0 = (~ (SE_out_redist6_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_1_tpl_93_fifo_backStall) & SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireValid) | SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg0;
    assign SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed1 = (~ (SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backStall) & SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireValid) | SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg1;
    // Consuming
    assign SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_StallValid = SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_backStall & SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireValid;
    assign SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_toReg0 = SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_StallValid & SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed0;
    assign SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_toReg1 = SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_StallValid & SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_or0 = SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed0;
    assign SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireStall = ~ (SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_consumed1 & SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_or0);
    assign SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_backStall = SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_V0 = SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireValid & ~ (SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg0);
    assign SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_V1 = SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireValid & ~ (SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_wireValid = redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_valid_out;

    // SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0(STALLENABLE,573)
    // Valid signal propagation
    assign SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V0 = SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_0;
    assign SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V1 = SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_1;
    // Stall signal propagation
    assign SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_0 = SE_out_redist8_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_5_tpl_94_fifo_backStall & SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_0;
    assign SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_1 = i_llvm_fpga_pipeline_keep_going_bubblesort4_out_stall_out & SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_1;
    // Backward Enable generation
    assign SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_or0 = SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_0;
    assign SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backEN = ~ (SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_1 | SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_v_s_0 = SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backEN & SE_out_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_V1;
    // Backward Stall generation
    assign SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backStall = ~ (SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_0 <= 1'b0;
            SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backEN == 1'b0)
            begin
                SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_0 <= SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_0 & SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_0;
            end
            else
            begin
                SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_0 <= SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_v_s_0;
            end

            if (SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backEN == 1'b0)
            begin
                SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_1 <= SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_1 & SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_s_tv_1;
            end
            else
            begin
                SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_R_v_1 <= SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4(STALLENABLE,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg6 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg7 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg8 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg9 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg10 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg11 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg12 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg6 <= SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg6;
            // Successor 7
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg7 <= SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg7;
            // Successor 8
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg8 <= SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg8;
            // Successor 9
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg9 <= SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg9;
            // Successor 10
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg10 <= SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg10;
            // Successor 11
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg11 <= SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg11;
            // Successor 12
            SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg12 <= SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg12;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed1 = (~ (SE_out_redist21_i_llvm_fpga_pop_i1_demorgan40_pop22_bubblesort6_out_data_out_94_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed2 = (~ (SE_out_redist20_i_llvm_fpga_pop_i1_memdep_phi3_pop1241_pop23_bubblesort14_out_data_out_94_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed3 = (~ (SE_bubble_select_i_llvm_fpga_mem_memdep_5_bubblesort40_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed4 = (~ (SE_out_redist18_i_llvm_fpga_pop_i1_memdep_phi7_pop1342_pop24_bubblesort16_out_data_out_94_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed5 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_bubblesort39_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed6 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp3039_push21_bubblesort57_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg6;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed7 = (~ (SE_in_i_llvm_fpga_push_i1_push20_bubblesort33_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg7;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed8 = (~ (SE_in_i_llvm_fpga_push_i2_cleanups_push18_bubblesort54_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg8;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed9 = (~ (SE_out_redist13_i_llvm_fpga_pop_i32_i_023_pop1138_pop19_bubblesort9_out_data_out_94_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg9;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed10 = (~ (SE_out_redist9_bgTrunc_i_inc_bubblesort42_sel_x_b_94_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg10;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed11 = (~ (SE_i_fpga_indvars_iv_next14_bubblesort47_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg11;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed12 = (~ (i_llvm_fpga_push_i1_lastiniteration_bubblesort5_out_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg12;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg6 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed6;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg7 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed7;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg8 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed8;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg9 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed9;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg10 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed10;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg11 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed11;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_toReg12 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed12;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or5 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or6 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed6 & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or7 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed7 & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or6;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or8 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed8 & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or7;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or9 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed9 & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or8;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or10 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed10 & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or9;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or11 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed11 & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or10;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_consumed12 & SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_or11);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V6 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg6);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V7 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg7);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V8 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg8);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V9 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg9);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V10 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg10);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V11 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg11);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V12 = SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_fromReg12);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_wireValid = i_llvm_fpga_pipeline_keep_going_bubblesort4_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_bubblesort51(STALLENABLE,494)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_bubblesort51_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_bubblesort51_wireValid = i_llvm_fpga_push_i1_notexitcond_bubblesort51_out_valid_out;

    // bubble_join_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo(BITJOIN,375)
    assign bubble_join_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_q = redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_data_out;

    // bubble_select_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo(BITSELECT,376)
    assign bubble_select_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_b = $unsigned(bubble_join_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_notexitcond_bubblesort51(BLACKBOX,54)@95
    // in in_stall_in@20000000
    // out out_data_out@96
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@96
    bubbleSort_i_llvm_fpga_push_i1_notexitcond_bubblesort0 thei_llvm_fpga_push_i1_notexitcond_bubblesort51 (
        .in_data_in(i_unnamed_bubblesort49_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_bubblesort4_out_not_exitcond_stall_out),
        .in_first_cleanup(bubble_select_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_bubblesort51_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_bubblesort51_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_bubblesort51_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_bubblesort51_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_bubblesort51_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_bubblesort51_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_bubblesort5(STALLENABLE,482)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_bubblesort5_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_bubblesort5_wireValid = i_llvm_fpga_push_i1_lastiniteration_bubblesort5_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_bubblesort5(BLACKBOX,48)@96
    // in in_stall_in@20000000
    // out out_data_out@97
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@97
    bubbleSort_i_llvm_fpga_push_i1_lastiniteration_bubblesort0 thei_llvm_fpga_push_i1_lastiniteration_bubblesort5 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_bubblesort4_out_initeration_stall_out),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_bubblesort4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_bubblesort5_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_V12),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_bubblesort5_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_bubblesort5_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_bubblesort5_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_bubblesort5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0(REG,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_backEN == 1'b1)
        begin
            redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_q <= $unsigned(bubble_select_redist4_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_93_fifo_b);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_bubblesort4(BLACKBOX,35)@95
    // in in_stall_in@20000000
    // out out_data_out@96
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@96
    bubbleSort_i_llvm_fpga_pipeline_keep_going_bubblesort0 thei_llvm_fpga_pipeline_keep_going_bubblesort4 (
        .in_data_in(redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_bubblesort5_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_bubblesort5_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_bubblesort51_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_bubblesort51_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_bubblesort4_backStall),
        .in_valid_in(SE_redist5_bubbleSort_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_0_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_bubblesort4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_bubblesort4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_bubblesort4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_bubblesort4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_bubblesort4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_bubblesort4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_bubblesort4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_bubblesort4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,12)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bubblesort4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_bubblesort4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_bubblesort4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_bubblesort4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,141)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_bubblesort4_out_pipeline_valid_out;

    // sync_out(GPOUT,148)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,155)
    assign out_lm1_bubbleSort_avm_address = i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_address;
    assign out_lm1_bubbleSort_avm_enable = i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_enable;
    assign out_lm1_bubbleSort_avm_read = i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_read;
    assign out_lm1_bubbleSort_avm_write = i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_write;
    assign out_lm1_bubbleSort_avm_writedata = i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_writedata;
    assign out_lm1_bubbleSort_avm_byteenable = i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_byteenable;
    assign out_lm1_bubbleSort_avm_burstcount = i_llvm_fpga_mem_lm1_bubblesort24_out_lm1_bubbleSort_avm_burstcount;

    // i_masked_bubblesort55(LOGICAL,60)@95 + 1
    assign i_masked_bubblesort55_qi = i_notcmp_bubblesort50_q & bubble_select_redist0_i_first_cleanup_bubblesort1_sel_x_b_93_fifo_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_bubblesort55_delay ( .xin(i_masked_bubblesort55_qi), .xout(i_masked_bubblesort55_q), .ena(SE_i_masked_bubblesort55_backEN[0]), .clk(clock), .aclr(resetn) );

    // dupName_0_sync_out_x(GPOUT,156)@96
    assign out_masked = i_masked_bubblesort55_q;
    assign out_memdep = bubble_select_redist22_i_llvm_fpga_mem_memdep_bubblesort38_out_o_writeack_31_fifo_b;
    assign out_notcmp3039_pop21 = bubble_select_i_llvm_fpga_pop_i1_notcmp3039_pop21_bubblesort56_b;
    assign out_pop20 = redist16_i_llvm_fpga_pop_i1_pop20_bubblesort32_out_data_out_62_0_q;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop14_bubblesort44_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,158)
    assign out_lm92_bubbleSort_avm_address = i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_address;
    assign out_lm92_bubbleSort_avm_enable = i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_enable;
    assign out_lm92_bubbleSort_avm_read = i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_read;
    assign out_lm92_bubbleSort_avm_write = i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_write;
    assign out_lm92_bubbleSort_avm_writedata = i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_writedata;
    assign out_lm92_bubbleSort_avm_byteenable = i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_byteenable;
    assign out_lm92_bubbleSort_avm_burstcount = i_llvm_fpga_mem_lm92_bubblesort29_out_lm92_bubbleSort_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,160)
    assign out_memdep_bubbleSort_avm_address = i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_address;
    assign out_memdep_bubbleSort_avm_enable = i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_enable;
    assign out_memdep_bubbleSort_avm_read = i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_read;
    assign out_memdep_bubbleSort_avm_write = i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_write;
    assign out_memdep_bubbleSort_avm_writedata = i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_writedata;
    assign out_memdep_bubbleSort_avm_byteenable = i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_byteenable;
    assign out_memdep_bubbleSort_avm_burstcount = i_llvm_fpga_mem_memdep_bubblesort38_out_memdep_bubbleSort_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,161)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_bubblesort38_out_lsu_memdep_o_active;

    // dupName_4_ext_sig_sync_out_x(GPOUT,162)
    assign out_memdep_5_bubbleSort_avm_address = i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_address;
    assign out_memdep_5_bubbleSort_avm_enable = i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_enable;
    assign out_memdep_5_bubbleSort_avm_read = i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_read;
    assign out_memdep_5_bubbleSort_avm_write = i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_write;
    assign out_memdep_5_bubbleSort_avm_writedata = i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_writedata;
    assign out_memdep_5_bubbleSort_avm_byteenable = i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_byteenable;
    assign out_memdep_5_bubbleSort_avm_burstcount = i_llvm_fpga_mem_memdep_5_bubblesort40_out_memdep_5_bubbleSort_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,163)
    assign out_lsu_memdep_5_o_active = i_llvm_fpga_mem_memdep_5_bubblesort40_out_lsu_memdep_5_o_active;

endmodule
