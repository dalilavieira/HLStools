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

// SystemVerilog created from main_bb_B1_start_stall_region
// SystemVerilog created on Sun May 24 19:48:36 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_bb_B1_start_stall_region (
    input wire [63:0] in_iord_bl_call_main_i_fifodata,
    input wire [0:0] in_iord_bl_call_main_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_main2_main_avm_readdata,
    input wire [0:0] in_unnamed_main2_main_avm_writeack,
    input wire [0:0] in_unnamed_main2_main_avm_waitrequest,
    input wire [0:0] in_unnamed_main2_main_avm_readdatavalid,
    output wire [0:0] out_iord_bl_call_main_o_fifoready,
    output wire [0:0] out_masked,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_return_main_i_fifoready,
    output wire [63:0] out_unnamed_main2_main_avm_address,
    output wire [0:0] out_unnamed_main2_main_avm_enable,
    output wire [0:0] out_unnamed_main2_main_avm_read,
    output wire [0:0] out_unnamed_main2_main_avm_write,
    output wire [63:0] out_unnamed_main2_main_avm_writedata,
    output wire [7:0] out_unnamed_main2_main_avm_byteenable,
    output wire [0:0] out_unnamed_main2_main_avm_burstcount,
    output wire [31:0] out_iowr_bl_return_main_o_fifodata,
    output wire [0:0] out_iowr_bl_return_main_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_102321_q;
    wire [31:0] c_i32_027_q;
    wire [10:0] i_cleanups_shl_main3_vt_join_q;
    wire [9:0] i_cleanups_shl_main3_vt_select_10_b;
    wire [33:0] i_cmp_i_main12_a;
    wire [33:0] i_cmp_i_main12_b;
    logic [33:0] i_cmp_i_main12_o;
    wire [0:0] i_cmp_i_main12_c;
    wire [31:0] i_iowr_bl_return_main_unnamed_main3_main19_out_iowr_bl_return_main_o_fifodata;
    wire [0:0] i_iowr_bl_return_main_unnamed_main3_main19_out_iowr_bl_return_main_o_fifovalid;
    wire [0:0] i_iowr_bl_return_main_unnamed_main3_main19_out_o_stall;
    wire [0:0] i_iowr_bl_return_main_unnamed_main3_main19_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_main2_main11_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_main2_main11_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_main2_main11_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_feedback_stall_out_4;
    wire [0:0] i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_valid_out;
    wire [15:0] i_llvm_fpga_push_i11_cleanups_push4_main20_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i11_cleanups_push4_main20_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i11_cleanups_push4_main20_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i11_cleanups_push4_main20_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_main8_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_main8_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_main8_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_main8_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main15_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main15_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main15_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main15_out_valid_out;
    wire [0:0] i_masked_main17_q;
    wire [0:0] i_next_cleanups_main18_s;
    reg [10:0] i_next_cleanups_main18_q;
    wire [0:0] i_notcmp_main14_q;
    wire [0:0] i_or_main16_q;
    wire [0:0] i_xor_main7_q;
    wire [31:0] c_i32_126_recast_x_q;
    wire [0:0] i_first_cleanup_main2_sel_x_b;
    wire [0:0] i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_iord_bl_call_main_o_fifoready;
    wire [0:0] i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_0_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] main_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] main_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [9:0] leftShiftStage0Idx1Rng1_uid78_i_cleanups_shl_main0_shift_x_in;
    wire [9:0] leftShiftStage0Idx1Rng1_uid78_i_cleanups_shl_main0_shift_x_b;
    wire [10:0] leftShiftStage0Idx1_uid79_i_cleanups_shl_main0_shift_x_q;
    wire [0:0] leftShiftStage0_uid81_i_cleanups_shl_main0_shift_x_s;
    reg [10:0] leftShiftStage0_uid81_i_cleanups_shl_main0_shift_x_q;
    reg [0:0] redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    reg [0:0] redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_q;
    reg [0:0] redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_q;
    reg [0:0] redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_q;
    reg [0:0] redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_q;
    reg [0:0] redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_q;
    reg [0:0] redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_q;
    reg [0:0] redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_q;
    reg [0:0] redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_q;
    wire [0:0] redist3_i_first_cleanup_main2_sel_x_b_8_fifo_valid_in;
    wire redist3_i_first_cleanup_main2_sel_x_b_8_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_first_cleanup_main2_sel_x_b_8_fifo_stall_in;
    wire redist3_i_first_cleanup_main2_sel_x_b_8_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist3_i_first_cleanup_main2_sel_x_b_8_fifo_data_in;
    wire [0:0] redist3_i_first_cleanup_main2_sel_x_b_8_fifo_valid_out;
    wire redist3_i_first_cleanup_main2_sel_x_b_8_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_first_cleanup_main2_sel_x_b_8_fifo_stall_out;
    wire redist3_i_first_cleanup_main2_sel_x_b_8_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist3_i_first_cleanup_main2_sel_x_b_8_fifo_data_out;
    wire [0:0] redist4_i_xor_main7_q_8_fifo_valid_in;
    wire redist4_i_xor_main7_q_8_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_i_xor_main7_q_8_fifo_stall_in;
    wire redist4_i_xor_main7_q_8_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_i_xor_main7_q_8_fifo_data_in;
    wire [0:0] redist4_i_xor_main7_q_8_fifo_valid_out;
    wire redist4_i_xor_main7_q_8_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_i_xor_main7_q_8_fifo_stall_out;
    wire redist4_i_xor_main7_q_8_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_i_xor_main7_q_8_fifo_data_out;
    wire [0:0] redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_valid_in;
    wire redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_stall_in;
    wire redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_stall_in_bitsignaltemp;
    wire [10:0] redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_data_in;
    wire [0:0] redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_valid_out;
    wire redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_stall_out;
    wire redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_stall_out_bitsignaltemp;
    wire [10:0] redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_data_out;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_q;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_main2_main11_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_main2_main11_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_main1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_main1_b;
    wire [10:0] bubble_join_i_llvm_fpga_pop_i11_cleanups_pop4_main0_q;
    wire [10:0] bubble_select_i_llvm_fpga_pop_i11_cleanups_pop4_main0_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [63:0] bubble_join_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_b;
    wire [0:0] bubble_join_main_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_main_B1_start_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_q;
    wire [0:0] bubble_select_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_b;
    wire [0:0] bubble_join_redist4_i_xor_main7_q_8_fifo_q;
    wire [0:0] bubble_select_redist4_i_xor_main7_q_8_fifo_b;
    wire [10:0] bubble_join_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_q;
    wire [10:0] bubble_select_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_b;
    wire [0:0] SE_out_i_iowr_bl_return_main_unnamed_main3_main19_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_main_unnamed_main3_main19_and0;
    wire [0:0] SE_out_i_iowr_bl_return_main_unnamed_main3_main19_and1;
    wire [0:0] SE_out_i_iowr_bl_return_main_unnamed_main3_main19_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_main_unnamed_main3_main19_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main2_main11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main2_main11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main2_main11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main2_main11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_main2_main11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main2_main11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main2_main11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_main2_main11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main2_main11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main2_main11_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main2_main11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main2_main11_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main2_main11_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main1_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main1_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main1_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main1_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main1_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main1_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main1_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main1_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main1_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main1_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main1_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V4;
    wire [0:0] SE_out_i_llvm_fpga_push_i11_cleanups_push4_main20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i11_cleanups_push4_main20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_main8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_main8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_main15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_main15_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_and0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_V0;
    wire [0:0] SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid;
    wire [0:0] SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_and0;
    wire [0:0] SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall;
    wire [0:0] SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V1;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_V0;
    reg [0:0] SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    reg [0:0] SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1;
    wire [0:0] SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
    wire [0:0] SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1;
    wire [0:0] SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN;
    wire [0:0] SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or0;
    wire [0:0] SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall;
    wire [0:0] SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0;
    wire [0:0] SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V1;
    reg [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_R_v_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_v_s_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_s_tv_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_backEN;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_backStall;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_V0;
    reg [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_R_v_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_v_s_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_s_tv_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_backEN;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_backStall;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_V0;
    reg [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_R_v_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_v_s_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_s_tv_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_backEN;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_backStall;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_V0;
    reg [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_R_v_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_v_s_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_s_tv_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_backEN;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_backStall;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_V0;
    reg [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_R_v_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_v_s_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_s_tv_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_backEN;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_backStall;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_V0;
    reg [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_R_v_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_v_s_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_s_tv_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_backEN;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_backStall;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_V0;
    reg [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_R_v_0;
    reg [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_R_v_1;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_v_s_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_s_tv_0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_s_tv_1;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_backEN;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_or0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_backStall;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_V0;
    wire [0:0] SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_V1;
    reg [0:0] SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_R_v_0;
    wire [0:0] SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_v_s_0;
    wire [0:0] SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_s_tv_0;
    wire [0:0] SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_backEN;
    wire [0:0] SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_backStall;
    wire [0:0] SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_V0;
    wire [0:0] SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_wireValid;
    wire [0:0] SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_wireStall;
    wire [0:0] SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_StallValid;
    wire [0:0] SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_toReg0;
    reg [0:0] SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_fromReg0;
    wire [0:0] SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_consumed0;
    wire [0:0] SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_toReg1;
    reg [0:0] SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_fromReg1;
    wire [0:0] SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_consumed1;
    wire [0:0] SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_and0;
    wire [0:0] SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_or0;
    wire [0:0] SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_backStall;
    wire [0:0] SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_V0;
    wire [0:0] SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_V1;
    wire [0:0] SE_out_redist4_i_xor_main7_q_8_fifo_wireValid;
    wire [0:0] SE_out_redist4_i_xor_main7_q_8_fifo_wireStall;
    wire [0:0] SE_out_redist4_i_xor_main7_q_8_fifo_StallValid;
    wire [0:0] SE_out_redist4_i_xor_main7_q_8_fifo_toReg0;
    reg [0:0] SE_out_redist4_i_xor_main7_q_8_fifo_fromReg0;
    wire [0:0] SE_out_redist4_i_xor_main7_q_8_fifo_consumed0;
    wire [0:0] SE_out_redist4_i_xor_main7_q_8_fifo_toReg1;
    reg [0:0] SE_out_redist4_i_xor_main7_q_8_fifo_fromReg1;
    wire [0:0] SE_out_redist4_i_xor_main7_q_8_fifo_consumed1;
    wire [0:0] SE_out_redist4_i_xor_main7_q_8_fifo_and0;
    wire [0:0] SE_out_redist4_i_xor_main7_q_8_fifo_or0;
    wire [0:0] SE_out_redist4_i_xor_main7_q_8_fifo_backStall;
    wire [0:0] SE_out_redist4_i_xor_main7_q_8_fifo_V0;
    wire [0:0] SE_out_redist4_i_xor_main7_q_8_fifo_V1;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_wireValid;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_and0;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_and1;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_backStall;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_V0;
    reg [0:0] SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_0;
    reg [0:0] SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_1;
    wire [0:0] SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_v_s_0;
    wire [0:0] SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_0;
    wire [0:0] SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_1;
    wire [0:0] SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backEN;
    wire [0:0] SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_or0;
    wire [0:0] SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backStall;
    wire [0:0] SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_V0;
    wire [0:0] SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_V1;
    wire [0:0] SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid;
    wire [0:0] SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_and0;
    wire [0:0] SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall;
    wire [0:0] SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V0;
    wire [0:0] SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_i_valid;
    reg [0:0] SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_r_valid;
    reg [0:0] SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_r_data0;
    wire [0:0] SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_backStall;
    wire [0:0] SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_V;
    wire [0:0] SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_D0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_pipeline_keep_going_main1(BITJOIN,107)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_main1_q = i_llvm_fpga_pipeline_keep_going_main1_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_main1(BITSELECT,108)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_main1_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_main1_q[0:0]);

    // SE_out_i_llvm_fpga_push_i11_cleanups_push4_main20(STALLENABLE,147)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i11_cleanups_push4_main20_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i11_cleanups_push4_main20_wireValid = i_llvm_fpga_push_i11_cleanups_push4_main20_out_valid_out;

    // redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0(REG,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backEN == 1'b1)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_main1_b);
        end
    end

    // SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5(STALLENABLE,175)
    // Valid signal propagation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_V0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_R_v_0;
    // Stall signal propagation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_s_tv_0 = SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_backStall & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_R_v_0;
    // Backward Enable generation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_backEN = ~ (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_v_s_0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_backEN & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_V0;
    // Backward Stall generation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_backStall = ~ (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_backEN == 1'b0)
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_R_v_0 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_R_v_0 & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_s_tv_0;
            end
            else
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_R_v_0 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_v_s_0;
            end

        end
    end

    // SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4(STALLENABLE,174)
    // Valid signal propagation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_V0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_R_v_0;
    // Stall signal propagation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_s_tv_0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_backStall & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_R_v_0;
    // Backward Enable generation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_backEN = ~ (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_v_s_0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_backEN & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_V0;
    // Backward Stall generation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_backStall = ~ (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_backEN == 1'b0)
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_R_v_0 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_R_v_0 & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_s_tv_0;
            end
            else
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_R_v_0 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_v_s_0;
            end

        end
    end

    // SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3(STALLENABLE,173)
    // Valid signal propagation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_V0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_R_v_0;
    // Stall signal propagation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_s_tv_0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_backStall & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_R_v_0;
    // Backward Enable generation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_backEN = ~ (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_v_s_0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_backEN & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_V0;
    // Backward Stall generation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_backStall = ~ (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_backEN == 1'b0)
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_R_v_0 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_R_v_0 & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_s_tv_0;
            end
            else
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_R_v_0 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_v_s_0;
            end

        end
    end

    // SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2(STALLENABLE,172)
    // Valid signal propagation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_V0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_R_v_0;
    // Stall signal propagation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_s_tv_0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_backStall & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_R_v_0;
    // Backward Enable generation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_backEN = ~ (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_v_s_0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_backEN & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_V0;
    // Backward Stall generation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_backStall = ~ (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_backEN == 1'b0)
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_R_v_0 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_R_v_0 & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_s_tv_0;
            end
            else
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_R_v_0 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_v_s_0;
            end

        end
    end

    // SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1(STALLENABLE,171)
    // Valid signal propagation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_V0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_R_v_0;
    // Stall signal propagation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_s_tv_0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_backStall & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_R_v_0;
    // Backward Enable generation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_backEN = ~ (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_v_s_0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_backEN & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_V0;
    // Backward Stall generation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_backStall = ~ (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_backEN == 1'b0)
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_R_v_0 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_R_v_0 & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_s_tv_0;
            end
            else
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_R_v_0 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_v_s_0;
            end

        end
    end

    // SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0(STALLENABLE,170)
    // Valid signal propagation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_V0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_s_tv_0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_backStall & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_backEN = ~ (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_v_s_0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_backEN & SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0;
    // Backward Stall generation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_backStall = ~ (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_backEN == 1'b0)
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_R_v_0 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_R_v_0 & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_s_tv_0;
            end
            else
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_R_v_0 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_v_s_0;
            end

        end
    end

    // bubble_join_stall_entry(BITJOIN,113)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,114)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,157)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = main_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // main_B1_start_merge_reg_aunroll_x(BLACKBOX,71)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    main_B1_start_merge_reg themain_B1_start_merge_reg_aunroll_x (
        .in_stall_in(SE_out_main_B1_start_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(main_B1_start_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(main_B1_start_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_main_B1_start_merge_reg_aunroll_x(STALLENABLE,165)
    // Valid signal propagation
    assign SE_out_main_B1_start_merge_reg_aunroll_x_V0 = SE_out_main_B1_start_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_main_B1_start_merge_reg_aunroll_x_backStall = SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall | ~ (SE_out_main_B1_start_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_main_B1_start_merge_reg_aunroll_x_wireValid = main_B1_start_merge_reg_aunroll_x_out_valid_out;

    // SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0(STALLENABLE,169)
    // Valid signal propagation
    assign SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0 = SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    assign SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V1 = SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_backStall & SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    assign SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1 = i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_stall_out & SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or0 = SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0;
    assign SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN = ~ (SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1 | SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0 = SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN & SE_out_main_B1_start_merge_reg_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall = ~ (SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= 1'b0;
            SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 & SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 <= SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 & SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 <= SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_pop_i11_cleanups_pop4_main0(BITJOIN,110)
    assign bubble_join_i_llvm_fpga_pop_i11_cleanups_pop4_main0_q = i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i11_cleanups_pop4_main0(BITSELECT,111)
    assign bubble_select_i_llvm_fpga_pop_i11_cleanups_pop4_main0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i11_cleanups_pop4_main0_q[10:0]);

    // i_first_cleanup_main2_sel_x(BITSELECT,68)@3
    assign i_first_cleanup_main2_sel_x_b = bubble_select_i_llvm_fpga_pop_i11_cleanups_pop4_main0_b[0:0];

    // i_xor_main7(LOGICAL,27)@3
    assign i_xor_main7_q = i_first_cleanup_main2_sel_x_b ^ VCC_q;

    // redist4_i_xor_main7_q_8_fifo(STALLFIFO,99)
    assign redist4_i_xor_main7_q_8_fifo_valid_in = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V4;
    assign redist4_i_xor_main7_q_8_fifo_stall_in = SE_out_redist4_i_xor_main7_q_8_fifo_backStall;
    assign redist4_i_xor_main7_q_8_fifo_data_in = i_xor_main7_q;
    assign redist4_i_xor_main7_q_8_fifo_valid_in_bitsignaltemp = redist4_i_xor_main7_q_8_fifo_valid_in[0];
    assign redist4_i_xor_main7_q_8_fifo_stall_in_bitsignaltemp = redist4_i_xor_main7_q_8_fifo_stall_in[0];
    assign redist4_i_xor_main7_q_8_fifo_valid_out[0] = redist4_i_xor_main7_q_8_fifo_valid_out_bitsignaltemp;
    assign redist4_i_xor_main7_q_8_fifo_stall_out[0] = redist4_i_xor_main7_q_8_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_i_xor_main7_q_8_fifo (
        .valid_in(redist4_i_xor_main7_q_8_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_i_xor_main7_q_8_fifo_stall_in_bitsignaltemp),
        .data_in(i_xor_main7_q),
        .valid_out(redist4_i_xor_main7_q_8_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_i_xor_main7_q_8_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_i_xor_main7_q_8_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_iord_bl_call_main_unnamed_main1_main9_aunroll_x(BLACKBOX,69)@3
    // in in_i_stall@20000000
    // out out_iord_bl_call_main_o_fifoready@20000000
    // out out_o_stall@20000000
    main_i_iord_bl_call_unnamed_main1_main0 thei_iord_bl_call_main_unnamed_main1_main9_aunroll_x (
        .in_i_stall(SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V3),
        .in_iord_bl_call_main_i_fifodata(in_iord_bl_call_main_i_fifodata),
        .in_iord_bl_call_main_i_fifovalid(in_iord_bl_call_main_i_fifovalid),
        .in_xor(i_xor_main7_q),
        .out_iord_bl_call_main_o_fifoready(i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_iord_bl_call_main_o_fifoready),
        .out_o_stall(i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x(BITJOIN,117)
    assign bubble_join_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_q = i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_0_tpl;

    // bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x(BITSELECT,118)
    assign bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_q[63:0]);

    // i_llvm_fpga_mem_unnamed_main2_main11(BLACKBOX,17)@3
    // in in_i_stall@20000000
    // out out_o_readdata@11
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_unnamed_main2_main_avm_address@20000000
    // out out_unnamed_main2_main_avm_burstcount@20000000
    // out out_unnamed_main2_main_avm_byteenable@20000000
    // out out_unnamed_main2_main_avm_enable@20000000
    // out out_unnamed_main2_main_avm_read@20000000
    // out out_unnamed_main2_main_avm_write@20000000
    // out out_unnamed_main2_main_avm_writedata@20000000
    main_i_llvm_fpga_mem_unnamed_2_main0 thei_llvm_fpga_mem_unnamed_main2_main11 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_b),
        .in_i_predicate(i_xor_main7_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_main2_main11_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_V0),
        .in_unnamed_main2_main_avm_readdata(in_unnamed_main2_main_avm_readdata),
        .in_unnamed_main2_main_avm_readdatavalid(in_unnamed_main2_main_avm_readdatavalid),
        .in_unnamed_main2_main_avm_waitrequest(in_unnamed_main2_main_avm_waitrequest),
        .in_unnamed_main2_main_avm_writeack(in_unnamed_main2_main_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_main2_main11_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_main2_main11_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_main2_main11_out_o_valid),
        .out_unnamed_main2_main_avm_address(i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_address),
        .out_unnamed_main2_main_avm_burstcount(i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_burstcount),
        .out_unnamed_main2_main_avm_byteenable(i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_byteenable),
        .out_unnamed_main2_main_avm_enable(i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_enable),
        .out_unnamed_main2_main_avm_read(i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_read),
        .out_unnamed_main2_main_avm_write(i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_write),
        .out_unnamed_main2_main_avm_writedata(i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_main2_main11(STALLENABLE,141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_main2_main11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_main2_main11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_main2_main11_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_main2_main11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_main2_main11_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_main2_main11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_main2_main11_consumed0 = (~ (SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_backStall) & SE_out_i_llvm_fpga_mem_unnamed_main2_main11_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_main2_main11_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_main2_main11_consumed1 = (~ (SE_out_redist4_i_xor_main7_q_8_fifo_backStall) & SE_out_i_llvm_fpga_mem_unnamed_main2_main11_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_main2_main11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_main2_main11_StallValid = SE_out_i_llvm_fpga_mem_unnamed_main2_main11_backStall & SE_out_i_llvm_fpga_mem_unnamed_main2_main11_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_main2_main11_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_main2_main11_StallValid & SE_out_i_llvm_fpga_mem_unnamed_main2_main11_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_main2_main11_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_main2_main11_StallValid & SE_out_i_llvm_fpga_mem_unnamed_main2_main11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_main2_main11_or0 = SE_out_i_llvm_fpga_mem_unnamed_main2_main11_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_main2_main11_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_main2_main11_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_main2_main11_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_main2_main11_backStall = SE_out_i_llvm_fpga_mem_unnamed_main2_main11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_main2_main11_V0 = SE_out_i_llvm_fpga_mem_unnamed_main2_main11_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_main2_main11_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_main2_main11_V1 = SE_out_i_llvm_fpga_mem_unnamed_main2_main11_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_main2_main11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_main2_main11_wireValid = i_llvm_fpga_mem_unnamed_main2_main11_out_o_valid;

    // SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo(STALLENABLE,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_fromReg0 <= '0;
            SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_fromReg0 <= SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_toReg0;
            // Successor 1
            SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_fromReg1 <= SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_main15_out_stall_out) & SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_wireValid) | SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_fromReg0;
    assign SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_consumed1 = (~ (SE_out_i_iowr_bl_return_main_unnamed_main3_main19_backStall) & SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_wireValid) | SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_fromReg1;
    // Consuming
    assign SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_StallValid = SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_backStall & SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_wireValid;
    assign SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_toReg0 = SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_StallValid & SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_consumed0;
    assign SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_toReg1 = SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_StallValid & SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_or0 = SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_consumed0;
    assign SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_wireStall = ~ (SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_consumed1 & SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_or0);
    assign SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_backStall = SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_V0 = SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_wireValid & ~ (SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_fromReg0);
    assign SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_V1 = SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_wireValid & ~ (SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_and0 = redist3_i_first_cleanup_main2_sel_x_b_8_fifo_valid_out;
    assign SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_wireValid = SE_out_i_llvm_fpga_mem_unnamed_main2_main11_V0 & SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_and0;

    // redist3_i_first_cleanup_main2_sel_x_b_8_fifo(STALLFIFO,98)
    assign redist3_i_first_cleanup_main2_sel_x_b_8_fifo_valid_in = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V2;
    assign redist3_i_first_cleanup_main2_sel_x_b_8_fifo_stall_in = SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_backStall;
    assign redist3_i_first_cleanup_main2_sel_x_b_8_fifo_data_in = i_first_cleanup_main2_sel_x_b;
    assign redist3_i_first_cleanup_main2_sel_x_b_8_fifo_valid_in_bitsignaltemp = redist3_i_first_cleanup_main2_sel_x_b_8_fifo_valid_in[0];
    assign redist3_i_first_cleanup_main2_sel_x_b_8_fifo_stall_in_bitsignaltemp = redist3_i_first_cleanup_main2_sel_x_b_8_fifo_stall_in[0];
    assign redist3_i_first_cleanup_main2_sel_x_b_8_fifo_valid_out[0] = redist3_i_first_cleanup_main2_sel_x_b_8_fifo_valid_out_bitsignaltemp;
    assign redist3_i_first_cleanup_main2_sel_x_b_8_fifo_stall_out[0] = redist3_i_first_cleanup_main2_sel_x_b_8_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist3_i_first_cleanup_main2_sel_x_b_8_fifo (
        .valid_in(redist3_i_first_cleanup_main2_sel_x_b_8_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_first_cleanup_main2_sel_x_b_8_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_main2_sel_x_b),
        .valid_out(redist3_i_first_cleanup_main2_sel_x_b_8_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_first_cleanup_main2_sel_x_b_8_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_first_cleanup_main2_sel_x_b_8_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x(STALLENABLE,161)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_V0 = SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_backStall = i_llvm_fpga_mem_unnamed_main2_main11_out_o_stall | ~ (SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_and0 = i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_valid;
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_wireValid = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V1 & SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_and0;

    // SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0(STALLENABLE,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg0 <= SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg1 <= SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg2 <= SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg3 <= SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg4 <= SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed0 = (~ (redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireValid) | SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed1 = (~ (SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireValid) | SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed2 = (~ (redist3_i_first_cleanup_main2_sel_x_b_8_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireValid) | SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed3 = (~ (i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_stall) & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireValid) | SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed4 = (~ (redist4_i_xor_main7_q_8_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireValid) | SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_StallValid = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_backStall & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg0 = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_StallValid & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg1 = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_StallValid & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg2 = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_StallValid & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg3 = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_StallValid & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed3;
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_toReg4 = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_StallValid & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_or0 = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_or1 = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed1 & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_or0;
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_or2 = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed2 & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_or1;
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_or3 = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed3 & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_or2;
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_consumed4 & SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_or3);
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_backStall = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V0 = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V1 = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V2 = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V3 = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V4 = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_wireValid = i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_valid_out;

    // bubble_join_main_B1_start_merge_reg_aunroll_x(BITJOIN,124)
    assign bubble_join_main_B1_start_merge_reg_aunroll_x_q = main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_main_B1_start_merge_reg_aunroll_x(BITSELECT,125)
    assign bubble_select_main_B1_start_merge_reg_aunroll_x_b = $unsigned(bubble_join_main_B1_start_merge_reg_aunroll_x_q[0:0]);

    // redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0(REG,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b1)
        begin
            redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q <= $unsigned(bubble_select_main_B1_start_merge_reg_aunroll_x_b);
        end
    end

    // c_i11_102321(CONSTANT,2)
    assign c_i11_102321_q = $unsigned(11'b01111111111);

    // i_llvm_fpga_pop_i11_cleanups_pop4_main0(BLACKBOX,19)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_stall_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    main_i_llvm_fpga_pop_i11_cleanups_pop4_0 thei_llvm_fpga_pop_i11_cleanups_pop4_main0 (
        .in_data_in(c_i11_102321_q),
        .in_dir(redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q),
        .in_feedback_in_4(i_llvm_fpga_push_i11_cleanups_push4_main20_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i11_cleanups_push4_main20_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_backStall),
        .in_valid_in(SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V1),
        .out_data_out(i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_feedback_stall_out_4),
        .out_stall_out(i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0Idx1Rng1_uid78_i_cleanups_shl_main0_shift_x(BITSELECT,77)@11
    assign leftShiftStage0Idx1Rng1_uid78_i_cleanups_shl_main0_shift_x_in = bubble_select_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_b[9:0];
    assign leftShiftStage0Idx1Rng1_uid78_i_cleanups_shl_main0_shift_x_b = leftShiftStage0Idx1Rng1_uid78_i_cleanups_shl_main0_shift_x_in[9:0];

    // leftShiftStage0Idx1_uid79_i_cleanups_shl_main0_shift_x(BITJOIN,78)@11
    assign leftShiftStage0Idx1_uid79_i_cleanups_shl_main0_shift_x_q = {leftShiftStage0Idx1Rng1_uid78_i_cleanups_shl_main0_shift_x_b, GND_q};

    // leftShiftStage0_uid81_i_cleanups_shl_main0_shift_x(MUX,80)@11
    assign leftShiftStage0_uid81_i_cleanups_shl_main0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid81_i_cleanups_shl_main0_shift_x_s or bubble_select_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_b or leftShiftStage0Idx1_uid79_i_cleanups_shl_main0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid81_i_cleanups_shl_main0_shift_x_s)
            1'b0 : leftShiftStage0_uid81_i_cleanups_shl_main0_shift_x_q = bubble_select_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_b;
            1'b1 : leftShiftStage0_uid81_i_cleanups_shl_main0_shift_x_q = leftShiftStage0Idx1_uid79_i_cleanups_shl_main0_shift_x_q;
            default : leftShiftStage0_uid81_i_cleanups_shl_main0_shift_x_q = 11'b0;
        endcase
    end

    // i_cleanups_shl_main3_vt_select_10(BITSELECT,13)@11
    assign i_cleanups_shl_main3_vt_select_10_b = leftShiftStage0_uid81_i_cleanups_shl_main0_shift_x_q[10:1];

    // i_cleanups_shl_main3_vt_join(BITJOIN,12)@11
    assign i_cleanups_shl_main3_vt_join_q = {i_cleanups_shl_main3_vt_select_10_b, GND_q};

    // bubble_join_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo(BITJOIN,133)
    assign bubble_join_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_q = redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_data_out;

    // bubble_select_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo(BITSELECT,134)
    assign bubble_select_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_b = $unsigned(bubble_join_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_q[10:0]);

    // bubble_join_redist4_i_xor_main7_q_8_fifo(BITJOIN,130)
    assign bubble_join_redist4_i_xor_main7_q_8_fifo_q = redist4_i_xor_main7_q_8_fifo_data_out;

    // bubble_select_redist4_i_xor_main7_q_8_fifo(BITSELECT,131)
    assign bubble_select_redist4_i_xor_main7_q_8_fifo_b = $unsigned(bubble_join_redist4_i_xor_main7_q_8_fifo_q[0:0]);

    // c_i32_126_recast_x(CONSTANT,57)
    assign c_i32_126_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_mem_unnamed_main2_main11(BITJOIN,104)
    assign bubble_join_i_llvm_fpga_mem_unnamed_main2_main11_q = i_llvm_fpga_mem_unnamed_main2_main11_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_main2_main11(BITSELECT,105)
    assign bubble_select_i_llvm_fpga_mem_unnamed_main2_main11_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_main2_main11_q[31:0]);

    // i_cmp_i_main12(COMPARE,14)@11
    assign i_cmp_i_main12_a = $unsigned({{2{bubble_select_i_llvm_fpga_mem_unnamed_main2_main11_b[31]}}, bubble_select_i_llvm_fpga_mem_unnamed_main2_main11_b});
    assign i_cmp_i_main12_b = $unsigned({{2{c_i32_126_recast_x_q[31]}}, c_i32_126_recast_x_q});
    assign i_cmp_i_main12_o = $unsigned($signed(i_cmp_i_main12_a) - $signed(i_cmp_i_main12_b));
    assign i_cmp_i_main12_c[0] = i_cmp_i_main12_o[33];

    // i_notcmp_main14(LOGICAL,25)@11
    assign i_notcmp_main14_q = i_cmp_i_main12_c ^ VCC_q;

    // i_or_main16(LOGICAL,26)@11
    assign i_or_main16_q = i_notcmp_main14_q | bubble_select_redist4_i_xor_main7_q_8_fifo_b;

    // i_next_cleanups_main18(MUX,24)@11
    assign i_next_cleanups_main18_s = i_or_main16_q;
    always @(i_next_cleanups_main18_s or bubble_select_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_b or i_cleanups_shl_main3_vt_join_q)
    begin
        unique case (i_next_cleanups_main18_s)
            1'b0 : i_next_cleanups_main18_q = bubble_select_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_b;
            1'b1 : i_next_cleanups_main18_q = i_cleanups_shl_main3_vt_join_q;
            default : i_next_cleanups_main18_q = 11'b0;
        endcase
    end

    // i_llvm_fpga_push_i11_cleanups_push4_main20(BLACKBOX,20)@11
    // in in_stall_in@20000000
    // out out_data_out@12
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@12
    main_i_llvm_fpga_push_i11_cleanups_push4_0 thei_llvm_fpga_push_i11_cleanups_push4_main20 (
        .in_data_in(i_next_cleanups_main18_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_feedback_stall_out_4),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i11_cleanups_push4_main20_backStall),
        .in_valid_in(SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_V0),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i11_cleanups_push4_main20_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i11_cleanups_push4_main20_out_feedback_valid_out_4),
        .out_stall_out(i_llvm_fpga_push_i11_cleanups_push4_main20_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i11_cleanups_push4_main20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_027(CONSTANT,6)
    assign c_i32_027_q = $unsigned(32'b00000000000000000000000000000000);

    // i_iowr_bl_return_main_unnamed_main3_main19(BLACKBOX,16)@11
    // in in_i_stall@20000000
    // out out_iowr_bl_return_main_o_fifodata@20000000
    // out out_iowr_bl_return_main_o_fifovalid@20000000
    // out out_o_stall@20000000
    main_i_iowr_bl_return_unnamed_main3_main0 thei_iowr_bl_return_main_unnamed_main3_main19 (
        .in_i_data(c_i32_027_q),
        .in_i_stall(SE_out_i_iowr_bl_return_main_unnamed_main3_main19_backStall),
        .in_i_valid(SE_out_redist4_i_xor_main7_q_8_fifo_V1),
        .in_iowr_bl_return_main_i_fifoready(in_iowr_bl_return_main_i_fifoready),
        .in_or(i_or_main16_q),
        .out_iowr_bl_return_main_o_fifodata(i_iowr_bl_return_main_unnamed_main3_main19_out_iowr_bl_return_main_o_fifodata),
        .out_iowr_bl_return_main_o_fifovalid(i_iowr_bl_return_main_unnamed_main3_main19_out_iowr_bl_return_main_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_main_unnamed_main3_main19_out_o_stall),
        .out_o_valid(i_iowr_bl_return_main_unnamed_main3_main19_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist4_i_xor_main7_q_8_fifo(STALLENABLE,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist4_i_xor_main7_q_8_fifo_fromReg0 <= '0;
            SE_out_redist4_i_xor_main7_q_8_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist4_i_xor_main7_q_8_fifo_fromReg0 <= SE_out_redist4_i_xor_main7_q_8_fifo_toReg0;
            // Successor 1
            SE_out_redist4_i_xor_main7_q_8_fifo_fromReg1 <= SE_out_redist4_i_xor_main7_q_8_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist4_i_xor_main7_q_8_fifo_consumed0 = (~ (SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_backStall) & SE_out_redist4_i_xor_main7_q_8_fifo_wireValid) | SE_out_redist4_i_xor_main7_q_8_fifo_fromReg0;
    assign SE_out_redist4_i_xor_main7_q_8_fifo_consumed1 = (~ (i_iowr_bl_return_main_unnamed_main3_main19_out_o_stall) & SE_out_redist4_i_xor_main7_q_8_fifo_wireValid) | SE_out_redist4_i_xor_main7_q_8_fifo_fromReg1;
    // Consuming
    assign SE_out_redist4_i_xor_main7_q_8_fifo_StallValid = SE_out_redist4_i_xor_main7_q_8_fifo_backStall & SE_out_redist4_i_xor_main7_q_8_fifo_wireValid;
    assign SE_out_redist4_i_xor_main7_q_8_fifo_toReg0 = SE_out_redist4_i_xor_main7_q_8_fifo_StallValid & SE_out_redist4_i_xor_main7_q_8_fifo_consumed0;
    assign SE_out_redist4_i_xor_main7_q_8_fifo_toReg1 = SE_out_redist4_i_xor_main7_q_8_fifo_StallValid & SE_out_redist4_i_xor_main7_q_8_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist4_i_xor_main7_q_8_fifo_or0 = SE_out_redist4_i_xor_main7_q_8_fifo_consumed0;
    assign SE_out_redist4_i_xor_main7_q_8_fifo_wireStall = ~ (SE_out_redist4_i_xor_main7_q_8_fifo_consumed1 & SE_out_redist4_i_xor_main7_q_8_fifo_or0);
    assign SE_out_redist4_i_xor_main7_q_8_fifo_backStall = SE_out_redist4_i_xor_main7_q_8_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist4_i_xor_main7_q_8_fifo_V0 = SE_out_redist4_i_xor_main7_q_8_fifo_wireValid & ~ (SE_out_redist4_i_xor_main7_q_8_fifo_fromReg0);
    assign SE_out_redist4_i_xor_main7_q_8_fifo_V1 = SE_out_redist4_i_xor_main7_q_8_fifo_wireValid & ~ (SE_out_redist4_i_xor_main7_q_8_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist4_i_xor_main7_q_8_fifo_and0 = redist4_i_xor_main7_q_8_fifo_valid_out;
    assign SE_out_redist4_i_xor_main7_q_8_fifo_wireValid = SE_out_i_llvm_fpga_mem_unnamed_main2_main11_V1 & SE_out_redist4_i_xor_main7_q_8_fifo_and0;

    // redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo(STALLFIFO,100)
    assign redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_valid_in = SE_out_i_llvm_fpga_pop_i11_cleanups_pop4_main0_V0;
    assign redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_stall_in = SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_backStall;
    assign redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_data_in = bubble_select_i_llvm_fpga_pop_i11_cleanups_pop4_main0_b;
    assign redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_valid_in_bitsignaltemp = redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_valid_in[0];
    assign redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_stall_in_bitsignaltemp = redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_stall_in[0];
    assign redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_valid_out[0] = redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_valid_out_bitsignaltemp;
    assign redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_stall_out[0] = redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(11),
        .IMPL("ram")
    ) theredist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo (
        .valid_in(redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i11_cleanups_pop4_main0_b),
        .valid_out(redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo(STALLENABLE,183)
    // Valid signal propagation
    assign SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_V0 = SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_backStall = i_llvm_fpga_push_i11_cleanups_push4_main20_out_stall_out | ~ (SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_and0 = redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_valid_out;
    assign SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_and1 = SE_out_redist4_i_xor_main7_q_8_fifo_V0 & SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_and0;
    assign SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_wireValid = SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_V0 & SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_and1;

    // SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0(STALLENABLE,184)
    // Valid signal propagation
    assign SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_V0 = SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_0;
    assign SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_V1 = SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_0 = SE_out_redist5_i_llvm_fpga_pop_i11_cleanups_pop4_main0_out_data_out_8_fifo_backStall & SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_0;
    assign SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_1 = SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall & SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_or0 = SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_0;
    assign SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backEN = ~ (SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_1 | SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_v_s_0 = SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backEN & SE_out_i_llvm_fpga_pipeline_keep_going_main1_V1;
    // Backward Stall generation
    assign SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backStall = ~ (SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_0 <= 1'b0;
            SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_0 <= SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_0 & SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_0 <= SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_v_s_0;
            end

            if (SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_1 <= SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_1 & SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_1;
            end
            else
            begin
                SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_1 <= SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_v_s_0;
            end

        end
    end

    // SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x(STALLENABLE,212)
    // Valid signal propagation
    assign SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V0 = SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall = i_llvm_fpga_push_i1_lastiniteration_main8_out_stall_out | ~ (SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_and0 = SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V1;
    assign SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid = SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_V1 & SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_and0;

    // SE_out_i_iowr_bl_return_main_unnamed_main3_main19(STALLENABLE,139)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_return_main_unnamed_main3_main19_V0 = SE_out_i_iowr_bl_return_main_unnamed_main3_main19_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_main_unnamed_main3_main19_backStall = in_stall_in | ~ (SE_out_i_iowr_bl_return_main_unnamed_main3_main19_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_main_unnamed_main3_main19_and0 = i_iowr_bl_return_main_unnamed_main3_main19_out_o_valid;
    assign SE_out_i_iowr_bl_return_main_unnamed_main3_main19_and1 = SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_V1 & SE_out_i_iowr_bl_return_main_unnamed_main3_main19_and0;
    assign SE_out_i_iowr_bl_return_main_unnamed_main3_main19_wireValid = SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V0 & SE_out_i_iowr_bl_return_main_unnamed_main3_main19_and1;

    // SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x(STALLENABLE,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_consumed0 = (~ (SE_out_i_iowr_bl_return_main_unnamed_main3_main19_backStall) & SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_consumed1 = (~ (SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall) & SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_o_valid;

    // redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0(REG,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_backEN == 1'b1)
        begin
            redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_q <= $unsigned(redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_q);
        end
    end

    // i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x(BLACKBOX,70)@10
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_c0_exit_0_tpl@11
    // out out_c0_exit_1_tpl@11
    main_i_sfc_s_c0_in_wt_entry_s_c0_enter1_main5 thei_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x (
        .in_forked(redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_q),
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall),
        .in_i_valid(SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V0),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_main1_b),
        .in_c0_eni2_0_tpl(GND_q),
        .in_c0_eni2_1_tpl(redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_q),
        .in_c0_eni2_2_tpl(bubble_select_i_llvm_fpga_pipeline_keep_going_main1_b),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_c0_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x(STALLENABLE,162)
    // Valid signal propagation
    assign SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V0 = SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_o_stall | ~ (SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_and0 = SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_V0;
    assign SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_main1_V0 & SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_and0;

    // SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0(STALLENABLE,177)
    // Valid signal propagation
    assign SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_V0 = SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_s_tv_0 = SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall & SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_backEN = ~ (SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_v_s_0 = SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_backEN & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_V0;
    // Backward Stall generation
    assign SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_backStall = ~ (SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_backEN == 1'b0)
            begin
                SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_R_v_0 <= SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_R_v_0 & SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_s_tv_0;
            end
            else
            begin
                SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_R_v_0 <= SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_v_s_0;
            end

        end
    end

    // redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0(REG,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_backEN == 1'b1)
        begin
            redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_q <= $unsigned(redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q);
        end
    end

    // redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1(REG,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_backEN == 1'b1)
        begin
            redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_q <= $unsigned(redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_0_q);
        end
    end

    // redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2(REG,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_backEN == 1'b1)
        begin
            redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_q <= $unsigned(redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_1_q);
        end
    end

    // redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3(REG,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_backEN == 1'b1)
        begin
            redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_q <= $unsigned(redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_2_q);
        end
    end

    // redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4(REG,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_backEN == 1'b1)
        begin
            redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_q <= $unsigned(redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_3_q);
        end
    end

    // redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5(REG,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_backEN == 1'b1)
        begin
            redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_q <= $unsigned(redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_4_q);
        end
    end

    // SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6(STALLREG,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_r_valid <= 1'b0;
            SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_r_valid <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_backStall & (SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_r_valid | SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_i_valid);

            if (SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_r_data0 <= $unsigned(redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_i_valid = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_V0;
    // Stall signal propagation
    assign SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_backStall = SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_r_valid | ~ (SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_i_valid);

    // Valid
    assign SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_V = SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_r_valid == 1'b1 ? SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_r_valid : SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_i_valid;

    assign SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_D0 = SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_r_valid == 1'b1 ? SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_r_data0 : redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_5_q;

    // SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6(STALLENABLE,176)
    // Valid signal propagation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_V0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_R_v_0;
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_V1 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_R_v_1;
    // Stall signal propagation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_s_tv_0 = SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_9_0_backStall & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_R_v_0;
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_s_tv_1 = i_llvm_fpga_pipeline_keep_going_main1_out_stall_out & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_R_v_1;
    // Backward Enable generation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_or0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_s_tv_0;
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_backEN = ~ (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_s_tv_1 | SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_v_s_0 = SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_backEN & SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_V;
    // Backward Stall generation
    assign SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_backStall = ~ (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_R_v_0 <= 1'b0;
            SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_backEN == 1'b0)
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_R_v_0 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_R_v_0 & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_s_tv_0;
            end
            else
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_R_v_0 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_v_s_0;
            end

            if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_backEN == 1'b0)
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_R_v_1 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_R_v_1 & SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_s_tv_1;
            end
            else
            begin
                SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_R_v_1 <= SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pipeline_keep_going_main1(STALLENABLE,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_main1_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_main1_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_main1_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_main1_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_main1_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_main1_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main1_consumed0 = (~ (SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_main1_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_main1_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main1_consumed1 = (~ (SE_redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_main1_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_main1_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main1_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_main1_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_main1_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main1_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_main1_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_main1_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main1_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_main1_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_main1_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main1_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_main1_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main1_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_main1_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_main1_or0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main1_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_main1_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main1_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_main1_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_main1_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main1_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_main1_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_main1_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main1_wireValid = i_llvm_fpga_pipeline_keep_going_main1_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_main15(STALLENABLE,151)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_main15_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_main15_wireValid = i_llvm_fpga_push_i1_notexitcond_main15_out_valid_out;

    // bubble_join_redist3_i_first_cleanup_main2_sel_x_b_8_fifo(BITJOIN,127)
    assign bubble_join_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_q = redist3_i_first_cleanup_main2_sel_x_b_8_fifo_data_out;

    // bubble_select_redist3_i_first_cleanup_main2_sel_x_b_8_fifo(BITSELECT,128)
    assign bubble_select_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_b = $unsigned(bubble_join_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_notexitcond_main15(BLACKBOX,22)@11
    // in in_stall_in@20000000
    // out out_data_out@12
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@12
    main_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_main15 (
        .in_data_in(i_cmp_i_main12_c),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_main1_out_not_exitcond_stall_out),
        .in_first_cleanup(bubble_select_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_main15_backStall),
        .in_valid_in(SE_out_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_main15_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_main15_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_main15_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_main15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_main8(STALLENABLE,149)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_main8_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_main8_wireValid = i_llvm_fpga_push_i1_lastiniteration_main8_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x(BITJOIN,120)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_q = i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_c0_exit_1_tpl;

    // bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x(BITSELECT,121)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_q[0:0]);

    // i_llvm_fpga_push_i1_lastiniteration_main8(BLACKBOX,21)@11
    // in in_stall_in@20000000
    // out out_data_out@12
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@12
    main_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_main8 (
        .in_data_in(bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_main1_out_initeration_stall_out),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_main8_backStall),
        .in_valid_in(SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V0),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_main8_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_main8_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_main8_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_main8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6(REG,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_backEN == 1'b1)
        begin
            redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_q <= $unsigned(SR_SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_D0);
        end
    end

    // i_llvm_fpga_pipeline_keep_going_main1(BLACKBOX,18)@9
    // in in_stall_in@20000000
    // out out_data_out@10
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@10
    main_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_main1 (
        .in_data_in(redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_main8_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_main8_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_main15_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_main15_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_main1_backStall),
        .in_valid_in(SE_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_8_6_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_main1_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_main1_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_main1_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_main1_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_main1_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_main1_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_main1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_main1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,10)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_main1_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_main1_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,50)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_main1_out_pipeline_valid_out;

    // sync_out(GPOUT,55)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,59)
    assign out_iord_bl_call_main_o_fifoready = i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_iord_bl_call_main_o_fifoready;

    // i_masked_main17(LOGICAL,23)@11
    assign i_masked_main17_q = i_notcmp_main14_q & bubble_select_redist3_i_first_cleanup_main2_sel_x_b_8_fifo_b;

    // dupName_0_sync_out_x(GPOUT,60)@11
    assign out_masked = i_masked_main17_q;
    assign out_valid_out = SE_out_i_iowr_bl_return_main_unnamed_main3_main19_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,62)
    assign out_unnamed_main2_main_avm_address = i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_address;
    assign out_unnamed_main2_main_avm_enable = i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_enable;
    assign out_unnamed_main2_main_avm_read = i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_read;
    assign out_unnamed_main2_main_avm_write = i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_write;
    assign out_unnamed_main2_main_avm_writedata = i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_writedata;
    assign out_unnamed_main2_main_avm_byteenable = i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_byteenable;
    assign out_unnamed_main2_main_avm_burstcount = i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,63)
    assign out_iowr_bl_return_main_o_fifodata = i_iowr_bl_return_main_unnamed_main3_main19_out_iowr_bl_return_main_o_fifodata;
    assign out_iowr_bl_return_main_o_fifovalid = i_iowr_bl_return_main_unnamed_main3_main19_out_iowr_bl_return_main_o_fifovalid;

endmodule
