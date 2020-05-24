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
// SystemVerilog created on Sun May 24 19:52:40 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_bb_B1_start_stall_region (
    input wire [255:0] in_iord_bl_call_main_i_fifodata,
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
    input wire [63:0] in_unnamed_main3_main_avm_readdata,
    input wire [0:0] in_unnamed_main3_main_avm_writeack,
    input wire [0:0] in_unnamed_main3_main_avm_waitrequest,
    input wire [0:0] in_unnamed_main3_main_avm_readdatavalid,
    output wire [63:0] out_unnamed_main2_main_avm_address,
    output wire [0:0] out_unnamed_main2_main_avm_enable,
    output wire [0:0] out_unnamed_main2_main_avm_read,
    output wire [0:0] out_unnamed_main2_main_avm_write,
    output wire [63:0] out_unnamed_main2_main_avm_writedata,
    output wire [7:0] out_unnamed_main2_main_avm_byteenable,
    output wire [0:0] out_unnamed_main2_main_avm_burstcount,
    input wire [63:0] in_lm1_main_avm_readdata,
    input wire [0:0] in_lm1_main_avm_writeack,
    input wire [0:0] in_lm1_main_avm_waitrequest,
    input wire [0:0] in_lm1_main_avm_readdatavalid,
    output wire [63:0] out_unnamed_main3_main_avm_address,
    output wire [0:0] out_unnamed_main3_main_avm_enable,
    output wire [0:0] out_unnamed_main3_main_avm_read,
    output wire [0:0] out_unnamed_main3_main_avm_write,
    output wire [63:0] out_unnamed_main3_main_avm_writedata,
    output wire [7:0] out_unnamed_main3_main_avm_byteenable,
    output wire [0:0] out_unnamed_main3_main_avm_burstcount,
    input wire [63:0] in_lm42_main_avm_readdata,
    input wire [0:0] in_lm42_main_avm_writeack,
    input wire [0:0] in_lm42_main_avm_waitrequest,
    input wire [0:0] in_lm42_main_avm_readdatavalid,
    output wire [63:0] out_lm1_main_avm_address,
    output wire [0:0] out_lm1_main_avm_enable,
    output wire [0:0] out_lm1_main_avm_read,
    output wire [0:0] out_lm1_main_avm_write,
    output wire [63:0] out_lm1_main_avm_writedata,
    output wire [7:0] out_lm1_main_avm_byteenable,
    output wire [0:0] out_lm1_main_avm_burstcount,
    input wire [0:0] in_iowr_bl_return_main_i_fifoready,
    output wire [63:0] out_lm42_main_avm_address,
    output wire [0:0] out_lm42_main_avm_enable,
    output wire [0:0] out_lm42_main_avm_read,
    output wire [0:0] out_lm42_main_avm_write,
    output wire [63:0] out_lm42_main_avm_writedata,
    output wire [7:0] out_lm42_main_avm_byteenable,
    output wire [0:0] out_lm42_main_avm_burstcount,
    output wire [31:0] out_iowr_bl_return_main_o_fifodata,
    output wire [0:0] out_iowr_bl_return_main_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [16:0] c_i17_6553532_q;
    wire [31:0] c_i32_037_q;
    wire [0:0] i_acl_2_main22_q;
    wire [0:0] i_acl_6_xor_main23_q;
    wire [16:0] i_cleanups_shl_main3_vt_join_q;
    wire [15:0] i_cleanups_shl_main3_vt_select_16_b;
    wire [33:0] i_cmp162_i_main13_a;
    wire [33:0] i_cmp162_i_main13_b;
    logic [33:0] i_cmp162_i_main13_o;
    wire [0:0] i_cmp162_i_main13_c;
    wire [0:0] i_cmp162_i_not_main15_q;
    wire [33:0] i_cmp216_i_main19_a;
    wire [33:0] i_cmp216_i_main19_b;
    logic [33:0] i_cmp216_i_main19_o;
    wire [0:0] i_cmp216_i_main19_n;
    wire [0:0] i_cmp216_i_not_main21_q;
    wire [0:0] i_first_cleanup_xor5_or_main16_q;
    wire [0:0] i_first_cleanup_xor7_or_main26_q;
    wire [31:0] i_iowr_bl_return_main_unnamed_main4_main29_out_iowr_bl_return_main_o_fifodata;
    wire [0:0] i_iowr_bl_return_main_unnamed_main4_main29_out_iowr_bl_return_main_o_fifovalid;
    wire [0:0] i_iowr_bl_return_main_unnamed_main4_main29_out_o_stall;
    wire [0:0] i_iowr_bl_return_main_unnamed_main4_main29_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_main17_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1_main17_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1_main17_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm42_main18_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm42_main18_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm42_main18_out_o_valid;
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
    wire [31:0] i_llvm_fpga_mem_unnamed_main3_main12_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_main3_main12_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_main3_main12_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main1_out_valid_out;
    wire [16:0] i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_feedback_stall_out_4;
    wire [0:0] i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i17_cleanups_push4_main31_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i17_cleanups_push4_main31_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i17_cleanups_push4_main31_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i17_cleanups_push4_main31_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_main8_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_main8_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_main8_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_main8_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main25_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main25_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main25_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main25_out_valid_out;
    wire [0:0] i_masked_main28_q;
    wire [0:0] i_next_cleanups_main30_s;
    reg [16:0] i_next_cleanups_main30_q;
    wire [0:0] i_notcmp_main24_q;
    wire [0:0] i_or_main27_q;
    wire [0:0] i_xor_main7_q;
    wire [0:0] i_first_cleanup_main2_sel_x_b;
    wire [0:0] i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_iord_bl_call_main_o_fifoready;
    wire [0:0] i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_1_tpl;
    wire [63:0] i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_2_tpl;
    wire [63:0] i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_3_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] main_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] main_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [15:0] leftShiftStage0Idx1Rng1_uid102_i_cleanups_shl_main0_shift_x_in;
    wire [15:0] leftShiftStage0Idx1Rng1_uid102_i_cleanups_shl_main0_shift_x_b;
    wire [16:0] leftShiftStage0Idx1_uid103_i_cleanups_shl_main0_shift_x_q;
    wire [0:0] leftShiftStage0_uid105_i_cleanups_shl_main0_shift_x_s;
    reg [16:0] leftShiftStage0_uid105_i_cleanups_shl_main0_shift_x_q;
    wire [127:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    reg [0:0] redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    wire [0:0] redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in;
    wire redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in;
    wire redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_in;
    wire [0:0] redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out;
    wire redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out;
    wire redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_out;
    reg [0:0] redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q;
    wire [0:0] redist5_i_first_cleanup_main2_sel_x_b_64_fifo_valid_in;
    wire redist5_i_first_cleanup_main2_sel_x_b_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_first_cleanup_main2_sel_x_b_64_fifo_stall_in;
    wire redist5_i_first_cleanup_main2_sel_x_b_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist5_i_first_cleanup_main2_sel_x_b_64_fifo_data_in;
    wire [0:0] redist5_i_first_cleanup_main2_sel_x_b_64_fifo_valid_out;
    wire redist5_i_first_cleanup_main2_sel_x_b_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_first_cleanup_main2_sel_x_b_64_fifo_stall_out;
    wire redist5_i_first_cleanup_main2_sel_x_b_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist5_i_first_cleanup_main2_sel_x_b_64_fifo_data_out;
    wire [0:0] redist6_i_xor_main7_q_32_fifo_valid_in;
    wire redist6_i_xor_main7_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_i_xor_main7_q_32_fifo_stall_in;
    wire redist6_i_xor_main7_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist6_i_xor_main7_q_32_fifo_data_in;
    wire [0:0] redist6_i_xor_main7_q_32_fifo_valid_out;
    wire redist6_i_xor_main7_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_i_xor_main7_q_32_fifo_stall_out;
    wire redist6_i_xor_main7_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist6_i_xor_main7_q_32_fifo_data_out;
    wire [0:0] redist7_i_xor_main7_q_64_fifo_valid_in;
    wire redist7_i_xor_main7_q_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_i_xor_main7_q_64_fifo_stall_in;
    wire redist7_i_xor_main7_q_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist7_i_xor_main7_q_64_fifo_data_in;
    wire [0:0] redist7_i_xor_main7_q_64_fifo_valid_out;
    wire redist7_i_xor_main7_q_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_i_xor_main7_q_64_fifo_stall_out;
    wire redist7_i_xor_main7_q_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist7_i_xor_main7_q_64_fifo_data_out;
    wire [0:0] redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_valid_in;
    wire redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_stall_in;
    wire redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_stall_in_bitsignaltemp;
    wire [16:0] redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_data_in;
    wire [0:0] redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_valid_out;
    wire redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_stall_out;
    wire redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_stall_out_bitsignaltemp;
    wire [16:0] redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_data_out;
    reg [0:0] redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_q;
    wire [0:0] redist10_i_cmp162_i_main13_c_32_fifo_valid_in;
    wire redist10_i_cmp162_i_main13_c_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist10_i_cmp162_i_main13_c_32_fifo_stall_in;
    wire redist10_i_cmp162_i_main13_c_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist10_i_cmp162_i_main13_c_32_fifo_data_in;
    wire [0:0] redist10_i_cmp162_i_main13_c_32_fifo_valid_out;
    wire redist10_i_cmp162_i_main13_c_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist10_i_cmp162_i_main13_c_32_fifo_stall_out;
    wire redist10_i_cmp162_i_main13_c_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist10_i_cmp162_i_main13_c_32_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [127:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [127:0] coalesced_delay_0_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1_main17_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1_main17_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm42_main18_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm42_main18_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_main2_main11_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_main2_main11_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_main3_main12_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_main3_main12_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_main1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_main1_b;
    wire [16:0] bubble_join_i_llvm_fpga_pop_i17_cleanups_pop4_main0_q;
    wire [16:0] bubble_select_i_llvm_fpga_pop_i17_cleanups_pop4_main0_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [255:0] bubble_join_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_c;
    wire [63:0] bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_d;
    wire [63:0] bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_e;
    wire [0:0] bubble_join_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_b;
    wire [0:0] bubble_join_main_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_main_B1_start_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_q;
    wire [0:0] bubble_select_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_b;
    wire [0:0] bubble_join_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_q;
    wire [0:0] bubble_select_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_b;
    wire [0:0] bubble_join_redist6_i_xor_main7_q_32_fifo_q;
    wire [0:0] bubble_select_redist6_i_xor_main7_q_32_fifo_b;
    wire [0:0] bubble_join_redist7_i_xor_main7_q_64_fifo_q;
    wire [0:0] bubble_select_redist7_i_xor_main7_q_64_fifo_b;
    wire [16:0] bubble_join_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_q;
    wire [16:0] bubble_select_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_b;
    wire [0:0] bubble_join_redist10_i_cmp162_i_main13_c_32_fifo_q;
    wire [0:0] bubble_select_redist10_i_cmp162_i_main13_c_32_fifo_b;
    wire [127:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [127:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_i_acl_2_main22_wireValid;
    wire [0:0] SE_i_acl_2_main22_wireStall;
    wire [0:0] SE_i_acl_2_main22_StallValid;
    wire [0:0] SE_i_acl_2_main22_toReg0;
    reg [0:0] SE_i_acl_2_main22_fromReg0;
    wire [0:0] SE_i_acl_2_main22_consumed0;
    wire [0:0] SE_i_acl_2_main22_toReg1;
    reg [0:0] SE_i_acl_2_main22_fromReg1;
    wire [0:0] SE_i_acl_2_main22_consumed1;
    wire [0:0] SE_i_acl_2_main22_and0;
    wire [0:0] SE_i_acl_2_main22_or0;
    wire [0:0] SE_i_acl_2_main22_backStall;
    wire [0:0] SE_i_acl_2_main22_V0;
    wire [0:0] SE_i_acl_2_main22_V1;
    wire [0:0] SE_i_acl_6_xor_main23_wireValid;
    wire [0:0] SE_i_acl_6_xor_main23_and0;
    wire [0:0] SE_i_acl_6_xor_main23_and1;
    wire [0:0] SE_i_acl_6_xor_main23_backStall;
    wire [0:0] SE_i_acl_6_xor_main23_V0;
    wire [0:0] SE_out_i_iowr_bl_return_main_unnamed_main4_main29_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_main_unnamed_main4_main29_and0;
    wire [0:0] SE_out_i_iowr_bl_return_main_unnamed_main4_main29_and1;
    wire [0:0] SE_out_i_iowr_bl_return_main_unnamed_main4_main29_backStall;
    wire [0:0] SE_out_i_iowr_bl_return_main_unnamed_main4_main29_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm42_main18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm42_main18_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm42_main18_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm42_main18_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm42_main18_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm42_main18_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm42_main18_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm42_main18_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm42_main18_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm42_main18_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm42_main18_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm42_main18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm42_main18_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm42_main18_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_main2_main11_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_main2_main11_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_main2_main11_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_main2_main11_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_mem_unnamed_main2_main11_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_main2_main11_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_main2_main11_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_mem_unnamed_main2_main11_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_main2_main11_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_main2_main11_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_main2_main11_or0;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_main2_main11_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_main2_main11_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_main2_main11_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main3_main12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main3_main12_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main3_main12_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main3_main12_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_main3_main12_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main3_main12_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main3_main12_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_main3_main12_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main3_main12_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main3_main12_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main3_main12_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main3_main12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main3_main12_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_main3_main12_V1;
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
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V4;
    wire [0:0] SE_out_i_llvm_fpga_push_i17_cleanups_push4_main31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i17_cleanups_push4_main31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_main8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_main8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_main25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_main25_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_V1;
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
    wire [0:0] SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid;
    wire [0:0] SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireStall;
    wire [0:0] SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_StallValid;
    wire [0:0] SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg0;
    reg [0:0] SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0;
    wire [0:0] SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed0;
    wire [0:0] SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg1;
    reg [0:0] SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1;
    wire [0:0] SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed1;
    wire [0:0] SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_or0;
    wire [0:0] SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_backStall;
    wire [0:0] SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V0;
    wire [0:0] SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V1;
    reg [0:0] SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_0;
    wire [0:0] SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_v_s_0;
    wire [0:0] SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_0;
    wire [0:0] SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backEN;
    wire [0:0] SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backStall;
    wire [0:0] SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V0;
    wire [0:0] SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_wireValid;
    wire [0:0] SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_wireStall;
    wire [0:0] SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_StallValid;
    wire [0:0] SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_toReg0;
    reg [0:0] SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_fromReg0;
    wire [0:0] SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_consumed0;
    wire [0:0] SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_toReg1;
    reg [0:0] SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_fromReg1;
    wire [0:0] SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_consumed1;
    wire [0:0] SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_and0;
    wire [0:0] SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_or0;
    wire [0:0] SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_backStall;
    wire [0:0] SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_V0;
    wire [0:0] SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_V1;
    wire [0:0] SE_out_redist6_i_xor_main7_q_32_fifo_wireValid;
    wire [0:0] SE_out_redist6_i_xor_main7_q_32_fifo_wireStall;
    wire [0:0] SE_out_redist6_i_xor_main7_q_32_fifo_StallValid;
    wire [0:0] SE_out_redist6_i_xor_main7_q_32_fifo_toReg0;
    reg [0:0] SE_out_redist6_i_xor_main7_q_32_fifo_fromReg0;
    wire [0:0] SE_out_redist6_i_xor_main7_q_32_fifo_consumed0;
    wire [0:0] SE_out_redist6_i_xor_main7_q_32_fifo_toReg1;
    reg [0:0] SE_out_redist6_i_xor_main7_q_32_fifo_fromReg1;
    wire [0:0] SE_out_redist6_i_xor_main7_q_32_fifo_consumed1;
    wire [0:0] SE_out_redist6_i_xor_main7_q_32_fifo_or0;
    wire [0:0] SE_out_redist6_i_xor_main7_q_32_fifo_backStall;
    wire [0:0] SE_out_redist6_i_xor_main7_q_32_fifo_V0;
    wire [0:0] SE_out_redist6_i_xor_main7_q_32_fifo_V1;
    wire [0:0] SE_out_redist7_i_xor_main7_q_64_fifo_wireValid;
    wire [0:0] SE_out_redist7_i_xor_main7_q_64_fifo_wireStall;
    wire [0:0] SE_out_redist7_i_xor_main7_q_64_fifo_StallValid;
    wire [0:0] SE_out_redist7_i_xor_main7_q_64_fifo_toReg0;
    reg [0:0] SE_out_redist7_i_xor_main7_q_64_fifo_fromReg0;
    wire [0:0] SE_out_redist7_i_xor_main7_q_64_fifo_consumed0;
    wire [0:0] SE_out_redist7_i_xor_main7_q_64_fifo_toReg1;
    reg [0:0] SE_out_redist7_i_xor_main7_q_64_fifo_fromReg1;
    wire [0:0] SE_out_redist7_i_xor_main7_q_64_fifo_consumed1;
    wire [0:0] SE_out_redist7_i_xor_main7_q_64_fifo_or0;
    wire [0:0] SE_out_redist7_i_xor_main7_q_64_fifo_backStall;
    wire [0:0] SE_out_redist7_i_xor_main7_q_64_fifo_V0;
    wire [0:0] SE_out_redist7_i_xor_main7_q_64_fifo_V1;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_wireValid;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_and0;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_and1;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_and2;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_backStall;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_V0;
    reg [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_0;
    reg [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_1;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_v_s_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_1;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backEN;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_or0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backStall;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_V0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_V1;
    wire [0:0] SE_out_redist10_i_cmp162_i_main13_c_32_fifo_wireValid;
    wire [0:0] SE_out_redist10_i_cmp162_i_main13_c_32_fifo_wireStall;
    wire [0:0] SE_out_redist10_i_cmp162_i_main13_c_32_fifo_StallValid;
    wire [0:0] SE_out_redist10_i_cmp162_i_main13_c_32_fifo_toReg0;
    reg [0:0] SE_out_redist10_i_cmp162_i_main13_c_32_fifo_fromReg0;
    wire [0:0] SE_out_redist10_i_cmp162_i_main13_c_32_fifo_consumed0;
    wire [0:0] SE_out_redist10_i_cmp162_i_main13_c_32_fifo_toReg1;
    reg [0:0] SE_out_redist10_i_cmp162_i_main13_c_32_fifo_fromReg1;
    wire [0:0] SE_out_redist10_i_cmp162_i_main13_c_32_fifo_consumed1;
    wire [0:0] SE_out_redist10_i_cmp162_i_main13_c_32_fifo_or0;
    wire [0:0] SE_out_redist10_i_cmp162_i_main13_c_32_fifo_backStall;
    wire [0:0] SE_out_redist10_i_cmp162_i_main13_c_32_fifo_V0;
    wire [0:0] SE_out_redist10_i_cmp162_i_main13_c_32_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid;
    wire [0:0] SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_and0;
    wire [0:0] SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall;
    wire [0:0] SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_pipeline_keep_going_main1(BITJOIN,144)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_main1_q = i_llvm_fpga_pipeline_keep_going_main1_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_main1(BITSELECT,145)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_main1_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_main1_q[0:0]);

    // SE_out_i_llvm_fpga_push_i17_cleanups_push4_main31(STALLENABLE,209)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i17_cleanups_push4_main31_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i17_cleanups_push4_main31_wireValid = i_llvm_fpga_push_i17_cleanups_push4_main31_out_valid_out;

    // redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0(REG,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backEN == 1'b1)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_main1_b);
        end
    end

    // bubble_join_stall_entry(BITJOIN,150)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,151)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,219)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = main_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // main_B1_start_merge_reg_aunroll_x(BLACKBOX,95)@0
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

    // SE_out_main_B1_start_merge_reg_aunroll_x(STALLENABLE,227)
    // Valid signal propagation
    assign SE_out_main_B1_start_merge_reg_aunroll_x_V0 = SE_out_main_B1_start_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_main_B1_start_merge_reg_aunroll_x_backStall = SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall | ~ (SE_out_main_B1_start_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_main_B1_start_merge_reg_aunroll_x_wireValid = main_B1_start_merge_reg_aunroll_x_out_valid_out;

    // SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0(STALLENABLE,233)
    // Valid signal propagation
    assign SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0 = SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    assign SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V1 = SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0 = i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_stall_out & SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    assign SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1 = redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out & SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1;
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

    // bubble_join_i_llvm_fpga_pop_i17_cleanups_pop4_main0(BITJOIN,147)
    assign bubble_join_i_llvm_fpga_pop_i17_cleanups_pop4_main0_q = i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i17_cleanups_pop4_main0(BITSELECT,148)
    assign bubble_select_i_llvm_fpga_pop_i17_cleanups_pop4_main0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i17_cleanups_pop4_main0_q[16:0]);

    // i_first_cleanup_main2_sel_x(BITSELECT,92)@3
    assign i_first_cleanup_main2_sel_x_b = bubble_select_i_llvm_fpga_pop_i17_cleanups_pop4_main0_b[0:0];

    // i_xor_main7(LOGICAL,37)@3
    assign i_xor_main7_q = i_first_cleanup_main2_sel_x_b ^ VCC_q;

    // bubble_join_redist6_i_xor_main7_q_32_fifo(BITJOIN,170)
    assign bubble_join_redist6_i_xor_main7_q_32_fifo_q = redist6_i_xor_main7_q_32_fifo_data_out;

    // bubble_select_redist6_i_xor_main7_q_32_fifo(BITSELECT,171)
    assign bubble_select_redist6_i_xor_main7_q_32_fifo_b = $unsigned(bubble_join_redist6_i_xor_main7_q_32_fifo_q[0:0]);

    // redist7_i_xor_main7_q_64_fifo(STALLFIFO,125)
    assign redist7_i_xor_main7_q_64_fifo_valid_in = SE_out_redist6_i_xor_main7_q_32_fifo_V1;
    assign redist7_i_xor_main7_q_64_fifo_stall_in = SE_out_redist7_i_xor_main7_q_64_fifo_backStall;
    assign redist7_i_xor_main7_q_64_fifo_data_in = bubble_select_redist6_i_xor_main7_q_32_fifo_b;
    assign redist7_i_xor_main7_q_64_fifo_valid_in_bitsignaltemp = redist7_i_xor_main7_q_64_fifo_valid_in[0];
    assign redist7_i_xor_main7_q_64_fifo_stall_in_bitsignaltemp = redist7_i_xor_main7_q_64_fifo_stall_in[0];
    assign redist7_i_xor_main7_q_64_fifo_valid_out[0] = redist7_i_xor_main7_q_64_fifo_valid_out_bitsignaltemp;
    assign redist7_i_xor_main7_q_64_fifo_stall_out[0] = redist7_i_xor_main7_q_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist7_i_xor_main7_q_64_fifo (
        .valid_in(redist7_i_xor_main7_q_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_i_xor_main7_q_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist6_i_xor_main7_q_32_fifo_b),
        .valid_out(redist7_i_xor_main7_q_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_i_xor_main7_q_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_i_xor_main7_q_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_037(CONSTANT,6)
    assign c_i32_037_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_redist7_i_xor_main7_q_64_fifo(BITJOIN,173)
    assign bubble_join_redist7_i_xor_main7_q_64_fifo_q = redist7_i_xor_main7_q_64_fifo_data_out;

    // bubble_select_redist7_i_xor_main7_q_64_fifo(BITSELECT,174)
    assign bubble_select_redist7_i_xor_main7_q_64_fifo_b = $unsigned(bubble_join_redist7_i_xor_main7_q_64_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_lm42_main18(BITJOIN,135)
    assign bubble_join_i_llvm_fpga_mem_lm42_main18_q = i_llvm_fpga_mem_lm42_main18_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm42_main18(BITSELECT,136)
    assign bubble_select_i_llvm_fpga_mem_lm42_main18_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm42_main18_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm1_main17(BITJOIN,132)
    assign bubble_join_i_llvm_fpga_mem_lm1_main17_q = i_llvm_fpga_mem_lm1_main17_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1_main17(BITSELECT,133)
    assign bubble_select_i_llvm_fpga_mem_lm1_main17_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1_main17_q[31:0]);

    // i_cmp216_i_main19(COMPARE,18)@67
    assign i_cmp216_i_main19_a = $unsigned({{2{bubble_select_i_llvm_fpga_mem_lm1_main17_b[31]}}, bubble_select_i_llvm_fpga_mem_lm1_main17_b});
    assign i_cmp216_i_main19_b = $unsigned({{2{bubble_select_i_llvm_fpga_mem_lm42_main18_b[31]}}, bubble_select_i_llvm_fpga_mem_lm42_main18_b});
    assign i_cmp216_i_main19_o = $unsigned($signed(i_cmp216_i_main19_a) - $signed(i_cmp216_i_main19_b));
    assign i_cmp216_i_main19_n[0] = ~ (i_cmp216_i_main19_o[33]);

    // i_cmp216_i_not_main21(LOGICAL,19)@67
    assign i_cmp216_i_not_main21_q = i_cmp216_i_main19_n ^ VCC_q;

    // bubble_join_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x(BITJOIN,154)
    assign bubble_join_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_q = {i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_3_tpl, i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x(BITSELECT,155)
    assign bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_q[191:128]);
    assign bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_q[255:192]);

    // i_llvm_fpga_mem_unnamed_main3_main12(BLACKBOX,27)@3
    // in in_i_stall@20000000
    // out out_o_readdata@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_unnamed_main3_main_avm_address@20000000
    // out out_unnamed_main3_main_avm_burstcount@20000000
    // out out_unnamed_main3_main_avm_byteenable@20000000
    // out out_unnamed_main3_main_avm_enable@20000000
    // out out_unnamed_main3_main_avm_read@20000000
    // out out_unnamed_main3_main_avm_write@20000000
    // out out_unnamed_main3_main_avm_writedata@20000000
    main_i_llvm_fpga_mem_unnamed_3_main0 thei_llvm_fpga_mem_unnamed_main3_main12 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_e),
        .in_i_predicate(i_xor_main7_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_main3_main12_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_unnamed_main2_main11_V1),
        .in_unnamed_main3_main_avm_readdata(in_unnamed_main3_main_avm_readdata),
        .in_unnamed_main3_main_avm_readdatavalid(in_unnamed_main3_main_avm_readdatavalid),
        .in_unnamed_main3_main_avm_waitrequest(in_unnamed_main3_main_avm_waitrequest),
        .in_unnamed_main3_main_avm_writeack(in_unnamed_main3_main_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_main3_main12_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_main3_main12_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_main3_main12_out_o_valid),
        .out_unnamed_main3_main_avm_address(i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_address),
        .out_unnamed_main3_main_avm_burstcount(i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_burstcount),
        .out_unnamed_main3_main_avm_byteenable(i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_byteenable),
        .out_unnamed_main3_main_avm_enable(i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_enable),
        .out_unnamed_main3_main_avm_read(i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_read),
        .out_unnamed_main3_main_avm_write(i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_write),
        .out_unnamed_main3_main_avm_writedata(i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_main3_main12(BITJOIN,141)
    assign bubble_join_i_llvm_fpga_mem_unnamed_main3_main12_q = i_llvm_fpga_mem_unnamed_main3_main12_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_main3_main12(BITSELECT,142)
    assign bubble_select_i_llvm_fpga_mem_unnamed_main3_main12_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_main3_main12_q[31:0]);

    // i_llvm_fpga_mem_unnamed_main2_main11(BLACKBOX,26)@3
    // in in_i_stall@20000000
    // out out_o_readdata@35
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_unnamed_main2_main_avm_address@20000000
    // out out_unnamed_main2_main_avm_burstcount@20000000
    // out out_unnamed_main2_main_avm_byteenable@20000000
    // out out_unnamed_main2_main_avm_enable@20000000
    // out out_unnamed_main2_main_avm_read@20000000
    // out out_unnamed_main2_main_avm_write@20000000
    // out out_unnamed_main2_main_avm_writedata@20000000
    main_i_llvm_fpga_mem_unnamed_2_main0 thei_llvm_fpga_mem_unnamed_main2_main11 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_d),
        .in_i_predicate(i_xor_main7_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_main3_main12_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_unnamed_main2_main11_V0),
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

    // bubble_join_i_llvm_fpga_mem_unnamed_main2_main11(BITJOIN,138)
    assign bubble_join_i_llvm_fpga_mem_unnamed_main2_main11_q = i_llvm_fpga_mem_unnamed_main2_main11_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_main2_main11(BITSELECT,139)
    assign bubble_select_i_llvm_fpga_mem_unnamed_main2_main11_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_main2_main11_q[31:0]);

    // i_cmp162_i_main13(COMPARE,16)@35
    assign i_cmp162_i_main13_a = $unsigned({{2{bubble_select_i_llvm_fpga_mem_unnamed_main2_main11_b[31]}}, bubble_select_i_llvm_fpga_mem_unnamed_main2_main11_b});
    assign i_cmp162_i_main13_b = $unsigned({{2{bubble_select_i_llvm_fpga_mem_unnamed_main3_main12_b[31]}}, bubble_select_i_llvm_fpga_mem_unnamed_main3_main12_b});
    assign i_cmp162_i_main13_o = $unsigned($signed(i_cmp162_i_main13_a) - $signed(i_cmp162_i_main13_b));
    assign i_cmp162_i_main13_c[0] = i_cmp162_i_main13_o[33];

    // redist10_i_cmp162_i_main13_c_32_fifo(STALLFIFO,128)
    assign redist10_i_cmp162_i_main13_c_32_fifo_valid_in = SE_out_i_llvm_fpga_mem_unnamed_main3_main12_V1;
    assign redist10_i_cmp162_i_main13_c_32_fifo_stall_in = SE_out_redist10_i_cmp162_i_main13_c_32_fifo_backStall;
    assign redist10_i_cmp162_i_main13_c_32_fifo_data_in = i_cmp162_i_main13_c;
    assign redist10_i_cmp162_i_main13_c_32_fifo_valid_in_bitsignaltemp = redist10_i_cmp162_i_main13_c_32_fifo_valid_in[0];
    assign redist10_i_cmp162_i_main13_c_32_fifo_stall_in_bitsignaltemp = redist10_i_cmp162_i_main13_c_32_fifo_stall_in[0];
    assign redist10_i_cmp162_i_main13_c_32_fifo_valid_out[0] = redist10_i_cmp162_i_main13_c_32_fifo_valid_out_bitsignaltemp;
    assign redist10_i_cmp162_i_main13_c_32_fifo_stall_out[0] = redist10_i_cmp162_i_main13_c_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist10_i_cmp162_i_main13_c_32_fifo (
        .valid_in(redist10_i_cmp162_i_main13_c_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist10_i_cmp162_i_main13_c_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp162_i_main13_c),
        .valid_out(redist10_i_cmp162_i_main13_c_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist10_i_cmp162_i_main13_c_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist10_i_cmp162_i_main13_c_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist10_i_cmp162_i_main13_c_32_fifo(BITJOIN,179)
    assign bubble_join_redist10_i_cmp162_i_main13_c_32_fifo_q = redist10_i_cmp162_i_main13_c_32_fifo_data_out;

    // bubble_select_redist10_i_cmp162_i_main13_c_32_fifo(BITSELECT,180)
    assign bubble_select_redist10_i_cmp162_i_main13_c_32_fifo_b = $unsigned(bubble_join_redist10_i_cmp162_i_main13_c_32_fifo_q[0:0]);

    // i_acl_6_xor_main23(LOGICAL,12)@67
    assign i_acl_6_xor_main23_q = bubble_select_redist10_i_cmp162_i_main13_c_32_fifo_b | i_cmp216_i_not_main21_q;

    // i_first_cleanup_xor7_or_main26(LOGICAL,22)@67
    assign i_first_cleanup_xor7_or_main26_q = i_acl_6_xor_main23_q | bubble_select_redist7_i_xor_main7_q_64_fifo_b;

    // i_iowr_bl_return_main_unnamed_main4_main29(BLACKBOX,23)@67
    // in in_i_stall@20000000
    // out out_iowr_bl_return_main_o_fifodata@20000000
    // out out_iowr_bl_return_main_o_fifovalid@20000000
    // out out_o_stall@20000000
    main_i_iowr_bl_return_unnamed_main4_main0 thei_iowr_bl_return_main_unnamed_main4_main29 (
        .in_first_cleanup_xor7_or(i_first_cleanup_xor7_or_main26_q),
        .in_i_data(c_i32_037_q),
        .in_i_stall(SE_out_i_iowr_bl_return_main_unnamed_main4_main29_backStall),
        .in_i_valid(SE_i_acl_6_xor_main23_V0),
        .in_iowr_bl_return_main_i_fifoready(in_iowr_bl_return_main_i_fifoready),
        .out_iowr_bl_return_main_o_fifodata(i_iowr_bl_return_main_unnamed_main4_main29_out_iowr_bl_return_main_o_fifodata),
        .out_iowr_bl_return_main_o_fifovalid(i_iowr_bl_return_main_unnamed_main4_main29_out_iowr_bl_return_main_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_main_unnamed_main4_main29_out_o_stall),
        .out_o_valid(i_iowr_bl_return_main_unnamed_main4_main29_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist10_i_cmp162_i_main13_c_32_fifo(STALLENABLE,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist10_i_cmp162_i_main13_c_32_fifo_fromReg0 <= '0;
            SE_out_redist10_i_cmp162_i_main13_c_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist10_i_cmp162_i_main13_c_32_fifo_fromReg0 <= SE_out_redist10_i_cmp162_i_main13_c_32_fifo_toReg0;
            // Successor 1
            SE_out_redist10_i_cmp162_i_main13_c_32_fifo_fromReg1 <= SE_out_redist10_i_cmp162_i_main13_c_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist10_i_cmp162_i_main13_c_32_fifo_consumed0 = (~ (SE_i_acl_6_xor_main23_backStall) & SE_out_redist10_i_cmp162_i_main13_c_32_fifo_wireValid) | SE_out_redist10_i_cmp162_i_main13_c_32_fifo_fromReg0;
    assign SE_out_redist10_i_cmp162_i_main13_c_32_fifo_consumed1 = (~ (SE_i_acl_2_main22_backStall) & SE_out_redist10_i_cmp162_i_main13_c_32_fifo_wireValid) | SE_out_redist10_i_cmp162_i_main13_c_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist10_i_cmp162_i_main13_c_32_fifo_StallValid = SE_out_redist10_i_cmp162_i_main13_c_32_fifo_backStall & SE_out_redist10_i_cmp162_i_main13_c_32_fifo_wireValid;
    assign SE_out_redist10_i_cmp162_i_main13_c_32_fifo_toReg0 = SE_out_redist10_i_cmp162_i_main13_c_32_fifo_StallValid & SE_out_redist10_i_cmp162_i_main13_c_32_fifo_consumed0;
    assign SE_out_redist10_i_cmp162_i_main13_c_32_fifo_toReg1 = SE_out_redist10_i_cmp162_i_main13_c_32_fifo_StallValid & SE_out_redist10_i_cmp162_i_main13_c_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist10_i_cmp162_i_main13_c_32_fifo_or0 = SE_out_redist10_i_cmp162_i_main13_c_32_fifo_consumed0;
    assign SE_out_redist10_i_cmp162_i_main13_c_32_fifo_wireStall = ~ (SE_out_redist10_i_cmp162_i_main13_c_32_fifo_consumed1 & SE_out_redist10_i_cmp162_i_main13_c_32_fifo_or0);
    assign SE_out_redist10_i_cmp162_i_main13_c_32_fifo_backStall = SE_out_redist10_i_cmp162_i_main13_c_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist10_i_cmp162_i_main13_c_32_fifo_V0 = SE_out_redist10_i_cmp162_i_main13_c_32_fifo_wireValid & ~ (SE_out_redist10_i_cmp162_i_main13_c_32_fifo_fromReg0);
    assign SE_out_redist10_i_cmp162_i_main13_c_32_fifo_V1 = SE_out_redist10_i_cmp162_i_main13_c_32_fifo_wireValid & ~ (SE_out_redist10_i_cmp162_i_main13_c_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist10_i_cmp162_i_main13_c_32_fifo_wireValid = redist10_i_cmp162_i_main13_c_32_fifo_valid_out;

    // SE_i_acl_6_xor_main23(STALLENABLE,185)
    // Valid signal propagation
    assign SE_i_acl_6_xor_main23_V0 = SE_i_acl_6_xor_main23_wireValid;
    // Backward Stall generation
    assign SE_i_acl_6_xor_main23_backStall = i_iowr_bl_return_main_unnamed_main4_main29_out_o_stall | ~ (SE_i_acl_6_xor_main23_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_acl_6_xor_main23_and0 = SE_out_i_llvm_fpga_mem_lm42_main18_V1;
    assign SE_i_acl_6_xor_main23_and1 = SE_out_redist10_i_cmp162_i_main13_c_32_fifo_V0 & SE_i_acl_6_xor_main23_and0;
    assign SE_i_acl_6_xor_main23_wireValid = SE_out_redist7_i_xor_main7_q_64_fifo_V0 & SE_i_acl_6_xor_main23_and1;

    // SE_out_i_llvm_fpga_mem_lm42_main18(STALLENABLE,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm42_main18_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm42_main18_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm42_main18_fromReg0 <= SE_out_i_llvm_fpga_mem_lm42_main18_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm42_main18_fromReg1 <= SE_out_i_llvm_fpga_mem_lm42_main18_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm42_main18_consumed0 = (~ (SE_i_acl_2_main22_backStall) & SE_out_i_llvm_fpga_mem_lm42_main18_wireValid) | SE_out_i_llvm_fpga_mem_lm42_main18_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm42_main18_consumed1 = (~ (SE_i_acl_6_xor_main23_backStall) & SE_out_i_llvm_fpga_mem_lm42_main18_wireValid) | SE_out_i_llvm_fpga_mem_lm42_main18_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm42_main18_StallValid = SE_out_i_llvm_fpga_mem_lm42_main18_backStall & SE_out_i_llvm_fpga_mem_lm42_main18_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm42_main18_toReg0 = SE_out_i_llvm_fpga_mem_lm42_main18_StallValid & SE_out_i_llvm_fpga_mem_lm42_main18_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm42_main18_toReg1 = SE_out_i_llvm_fpga_mem_lm42_main18_StallValid & SE_out_i_llvm_fpga_mem_lm42_main18_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm42_main18_or0 = SE_out_i_llvm_fpga_mem_lm42_main18_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm42_main18_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm42_main18_consumed1 & SE_out_i_llvm_fpga_mem_lm42_main18_or0);
    assign SE_out_i_llvm_fpga_mem_lm42_main18_backStall = SE_out_i_llvm_fpga_mem_lm42_main18_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm42_main18_V0 = SE_out_i_llvm_fpga_mem_lm42_main18_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm42_main18_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm42_main18_V1 = SE_out_i_llvm_fpga_mem_lm42_main18_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm42_main18_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm42_main18_and0 = i_llvm_fpga_mem_lm42_main18_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_lm42_main18_wireValid = i_llvm_fpga_mem_lm1_main17_out_o_valid & SE_out_i_llvm_fpga_mem_lm42_main18_and0;

    // i_first_cleanup_xor5_or_main16(LOGICAL,21)@35
    assign i_first_cleanup_xor5_or_main16_q = i_cmp162_i_main13_c | bubble_select_redist6_i_xor_main7_q_32_fifo_b;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,182)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,183)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[127:0]);

    // sel_for_coalesced_delay_0(BITSELECT,119)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);

    // i_llvm_fpga_mem_lm42_main18(BLACKBOX,25)@35
    // in in_i_stall@20000000
    // out out_lm42_main_avm_address@20000000
    // out out_lm42_main_avm_burstcount@20000000
    // out out_lm42_main_avm_byteenable@20000000
    // out out_lm42_main_avm_enable@20000000
    // out out_lm42_main_avm_read@20000000
    // out out_lm42_main_avm_write@20000000
    // out out_lm42_main_avm_writedata@20000000
    // out out_o_readdata@67
    // out out_o_stall@20000000
    // out out_o_valid@67
    main_i_llvm_fpga_mem_lm42_0 thei_llvm_fpga_mem_lm42_main18 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_c),
        .in_i_predicate(i_first_cleanup_xor5_or_main16_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm42_main18_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V1),
        .in_lm42_main_avm_readdata(in_lm42_main_avm_readdata),
        .in_lm42_main_avm_readdatavalid(in_lm42_main_avm_readdatavalid),
        .in_lm42_main_avm_waitrequest(in_lm42_main_avm_waitrequest),
        .in_lm42_main_avm_writeack(in_lm42_main_avm_writeack),
        .out_lm42_main_avm_address(i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_address),
        .out_lm42_main_avm_burstcount(i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_burstcount),
        .out_lm42_main_avm_byteenable(i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_byteenable),
        .out_lm42_main_avm_enable(i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_enable),
        .out_lm42_main_avm_read(i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_read),
        .out_lm42_main_avm_write(i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_write),
        .out_lm42_main_avm_writedata(i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm42_main18_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm42_main18_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm42_main18_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm1_main17(BLACKBOX,24)@35
    // in in_i_stall@20000000
    // out out_lm1_main_avm_address@20000000
    // out out_lm1_main_avm_burstcount@20000000
    // out out_lm1_main_avm_byteenable@20000000
    // out out_lm1_main_avm_enable@20000000
    // out out_lm1_main_avm_read@20000000
    // out out_lm1_main_avm_write@20000000
    // out out_lm1_main_avm_writedata@20000000
    // out out_o_readdata@67
    // out out_o_stall@20000000
    // out out_o_valid@67
    main_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_main17 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_predicate(i_first_cleanup_xor5_or_main16_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm42_main18_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_lm1_main_avm_readdata(in_lm1_main_avm_readdata),
        .in_lm1_main_avm_readdatavalid(in_lm1_main_avm_readdatavalid),
        .in_lm1_main_avm_waitrequest(in_lm1_main_avm_waitrequest),
        .in_lm1_main_avm_writeack(in_lm1_main_avm_writeack),
        .out_lm1_main_avm_address(i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_address),
        .out_lm1_main_avm_burstcount(i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_burstcount),
        .out_lm1_main_avm_byteenable(i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_byteenable),
        .out_lm1_main_avm_enable(i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_enable),
        .out_lm1_main_avm_read(i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_read),
        .out_lm1_main_avm_write(i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_write),
        .out_lm1_main_avm_writedata(i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_main17_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1_main17_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1_main17_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_main3_main12(STALLENABLE,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_main3_main12_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_main3_main12_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_main3_main12_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_main3_main12_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_main3_main12_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_main3_main12_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_main3_main12_consumed0 = (~ (SE_out_coalesced_delay_0_fifo_backStall) & SE_out_i_llvm_fpga_mem_unnamed_main3_main12_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_main3_main12_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_main3_main12_consumed1 = (~ (redist10_i_cmp162_i_main13_c_32_fifo_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_main3_main12_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_main3_main12_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_main3_main12_StallValid = SE_out_i_llvm_fpga_mem_unnamed_main3_main12_backStall & SE_out_i_llvm_fpga_mem_unnamed_main3_main12_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_main3_main12_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_main3_main12_StallValid & SE_out_i_llvm_fpga_mem_unnamed_main3_main12_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_main3_main12_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_main3_main12_StallValid & SE_out_i_llvm_fpga_mem_unnamed_main3_main12_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_main3_main12_or0 = SE_out_i_llvm_fpga_mem_unnamed_main3_main12_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_main3_main12_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_main3_main12_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_main3_main12_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_main3_main12_backStall = SE_out_i_llvm_fpga_mem_unnamed_main3_main12_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_main3_main12_V0 = SE_out_i_llvm_fpga_mem_unnamed_main3_main12_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_main3_main12_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_main3_main12_V1 = SE_out_i_llvm_fpga_mem_unnamed_main3_main12_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_main3_main12_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_main3_main12_and0 = i_llvm_fpga_mem_unnamed_main3_main12_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_main3_main12_wireValid = i_llvm_fpga_mem_unnamed_main2_main11_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_main3_main12_and0;

    // join_for_coalesced_delay_0(BITJOIN,118)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_c, bubble_select_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_b};

    // SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x(STALLENABLE,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_consumed0 = (~ (SE_in_i_llvm_fpga_mem_unnamed_main2_main11_backStall) & SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_wireValid) | SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_wireValid) | SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_StallValid = SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_backStall & SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_toReg0 = SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_StallValid & SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_toReg1 = SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_StallValid & SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_or0 = SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_consumed1 & SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_or0);
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_backStall = SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_V0 = SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_V1 = SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_wireValid = i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_valid;

    // coalesced_delay_0_fifo(STALLFIFO,129)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_V1;
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
        .DATA_WIDTH(128),
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

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,249)
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
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (i_llvm_fpga_mem_lm1_main17_out_o_stall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_mem_lm42_main18_out_o_stall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
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
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = SE_out_i_llvm_fpga_mem_unnamed_main3_main12_V0 & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = SE_out_redist6_i_xor_main7_q_32_fifo_V0 & SE_out_coalesced_delay_0_fifo_and1;

    // SE_out_redist6_i_xor_main7_q_32_fifo(STALLENABLE,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist6_i_xor_main7_q_32_fifo_fromReg0 <= '0;
            SE_out_redist6_i_xor_main7_q_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist6_i_xor_main7_q_32_fifo_fromReg0 <= SE_out_redist6_i_xor_main7_q_32_fifo_toReg0;
            // Successor 1
            SE_out_redist6_i_xor_main7_q_32_fifo_fromReg1 <= SE_out_redist6_i_xor_main7_q_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist6_i_xor_main7_q_32_fifo_consumed0 = (~ (SE_out_coalesced_delay_0_fifo_backStall) & SE_out_redist6_i_xor_main7_q_32_fifo_wireValid) | SE_out_redist6_i_xor_main7_q_32_fifo_fromReg0;
    assign SE_out_redist6_i_xor_main7_q_32_fifo_consumed1 = (~ (redist7_i_xor_main7_q_64_fifo_stall_out) & SE_out_redist6_i_xor_main7_q_32_fifo_wireValid) | SE_out_redist6_i_xor_main7_q_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist6_i_xor_main7_q_32_fifo_StallValid = SE_out_redist6_i_xor_main7_q_32_fifo_backStall & SE_out_redist6_i_xor_main7_q_32_fifo_wireValid;
    assign SE_out_redist6_i_xor_main7_q_32_fifo_toReg0 = SE_out_redist6_i_xor_main7_q_32_fifo_StallValid & SE_out_redist6_i_xor_main7_q_32_fifo_consumed0;
    assign SE_out_redist6_i_xor_main7_q_32_fifo_toReg1 = SE_out_redist6_i_xor_main7_q_32_fifo_StallValid & SE_out_redist6_i_xor_main7_q_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist6_i_xor_main7_q_32_fifo_or0 = SE_out_redist6_i_xor_main7_q_32_fifo_consumed0;
    assign SE_out_redist6_i_xor_main7_q_32_fifo_wireStall = ~ (SE_out_redist6_i_xor_main7_q_32_fifo_consumed1 & SE_out_redist6_i_xor_main7_q_32_fifo_or0);
    assign SE_out_redist6_i_xor_main7_q_32_fifo_backStall = SE_out_redist6_i_xor_main7_q_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist6_i_xor_main7_q_32_fifo_V0 = SE_out_redist6_i_xor_main7_q_32_fifo_wireValid & ~ (SE_out_redist6_i_xor_main7_q_32_fifo_fromReg0);
    assign SE_out_redist6_i_xor_main7_q_32_fifo_V1 = SE_out_redist6_i_xor_main7_q_32_fifo_wireValid & ~ (SE_out_redist6_i_xor_main7_q_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist6_i_xor_main7_q_32_fifo_wireValid = redist6_i_xor_main7_q_32_fifo_valid_out;

    // redist6_i_xor_main7_q_32_fifo(STALLFIFO,124)
    assign redist6_i_xor_main7_q_32_fifo_valid_in = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V4;
    assign redist6_i_xor_main7_q_32_fifo_stall_in = SE_out_redist6_i_xor_main7_q_32_fifo_backStall;
    assign redist6_i_xor_main7_q_32_fifo_data_in = i_xor_main7_q;
    assign redist6_i_xor_main7_q_32_fifo_valid_in_bitsignaltemp = redist6_i_xor_main7_q_32_fifo_valid_in[0];
    assign redist6_i_xor_main7_q_32_fifo_stall_in_bitsignaltemp = redist6_i_xor_main7_q_32_fifo_stall_in[0];
    assign redist6_i_xor_main7_q_32_fifo_valid_out[0] = redist6_i_xor_main7_q_32_fifo_valid_out_bitsignaltemp;
    assign redist6_i_xor_main7_q_32_fifo_stall_out[0] = redist6_i_xor_main7_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist6_i_xor_main7_q_32_fifo (
        .valid_in(redist6_i_xor_main7_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_i_xor_main7_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_xor_main7_q),
        .valid_out(redist6_i_xor_main7_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_i_xor_main7_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_i_xor_main7_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_iord_bl_call_main_unnamed_main1_main9_aunroll_x(BLACKBOX,93)@3
    // in in_i_stall@20000000
    // out out_iord_bl_call_main_o_fifoready@20000000
    // out out_o_stall@20000000
    main_i_iord_bl_call_unnamed_main1_main0 thei_iord_bl_call_main_unnamed_main1_main9_aunroll_x (
        .in_i_stall(SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V3),
        .in_iord_bl_call_main_i_fifodata(in_iord_bl_call_main_i_fifodata),
        .in_iord_bl_call_main_i_fifovalid(in_iord_bl_call_main_i_fifovalid),
        .in_xor(i_xor_main7_q),
        .out_iord_bl_call_main_o_fifoready(i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_iord_bl_call_main_o_fifoready),
        .out_o_stall(i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo(STALLENABLE,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_fromReg0 <= '0;
            SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_fromReg0 <= SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_toReg0;
            // Successor 1
            SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_fromReg1 <= SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_main25_out_stall_out) & SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_wireValid) | SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_fromReg0;
    assign SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_consumed1 = (~ (SE_out_i_iowr_bl_return_main_unnamed_main4_main29_backStall) & SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_wireValid) | SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_fromReg1;
    // Consuming
    assign SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_StallValid = SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_backStall & SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_wireValid;
    assign SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_toReg0 = SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_StallValid & SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_consumed0;
    assign SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_toReg1 = SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_StallValid & SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_or0 = SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_consumed0;
    assign SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_wireStall = ~ (SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_consumed1 & SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_or0);
    assign SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_backStall = SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_V0 = SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_wireValid & ~ (SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_fromReg0);
    assign SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_V1 = SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_wireValid & ~ (SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_and0 = redist5_i_first_cleanup_main2_sel_x_b_64_fifo_valid_out;
    assign SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_wireValid = SE_i_acl_2_main22_V0 & SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_and0;

    // redist5_i_first_cleanup_main2_sel_x_b_64_fifo(STALLFIFO,123)
    assign redist5_i_first_cleanup_main2_sel_x_b_64_fifo_valid_in = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V2;
    assign redist5_i_first_cleanup_main2_sel_x_b_64_fifo_stall_in = SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_backStall;
    assign redist5_i_first_cleanup_main2_sel_x_b_64_fifo_data_in = i_first_cleanup_main2_sel_x_b;
    assign redist5_i_first_cleanup_main2_sel_x_b_64_fifo_valid_in_bitsignaltemp = redist5_i_first_cleanup_main2_sel_x_b_64_fifo_valid_in[0];
    assign redist5_i_first_cleanup_main2_sel_x_b_64_fifo_stall_in_bitsignaltemp = redist5_i_first_cleanup_main2_sel_x_b_64_fifo_stall_in[0];
    assign redist5_i_first_cleanup_main2_sel_x_b_64_fifo_valid_out[0] = redist5_i_first_cleanup_main2_sel_x_b_64_fifo_valid_out_bitsignaltemp;
    assign redist5_i_first_cleanup_main2_sel_x_b_64_fifo_stall_out[0] = redist5_i_first_cleanup_main2_sel_x_b_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist5_i_first_cleanup_main2_sel_x_b_64_fifo (
        .valid_in(redist5_i_first_cleanup_main2_sel_x_b_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_first_cleanup_main2_sel_x_b_64_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_main2_sel_x_b),
        .valid_out(redist5_i_first_cleanup_main2_sel_x_b_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_first_cleanup_main2_sel_x_b_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_first_cleanup_main2_sel_x_b_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_mem_unnamed_main2_main11(STALLENABLE,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_mem_unnamed_main2_main11_fromReg0 <= '0;
            SE_in_i_llvm_fpga_mem_unnamed_main2_main11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_mem_unnamed_main2_main11_fromReg0 <= SE_in_i_llvm_fpga_mem_unnamed_main2_main11_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_mem_unnamed_main2_main11_fromReg1 <= SE_in_i_llvm_fpga_mem_unnamed_main2_main11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_mem_unnamed_main2_main11_consumed0 = (~ (i_llvm_fpga_mem_unnamed_main2_main11_out_o_stall) & SE_in_i_llvm_fpga_mem_unnamed_main2_main11_wireValid) | SE_in_i_llvm_fpga_mem_unnamed_main2_main11_fromReg0;
    assign SE_in_i_llvm_fpga_mem_unnamed_main2_main11_consumed1 = (~ (i_llvm_fpga_mem_unnamed_main3_main12_out_o_stall) & SE_in_i_llvm_fpga_mem_unnamed_main2_main11_wireValid) | SE_in_i_llvm_fpga_mem_unnamed_main2_main11_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_mem_unnamed_main2_main11_StallValid = SE_in_i_llvm_fpga_mem_unnamed_main2_main11_backStall & SE_in_i_llvm_fpga_mem_unnamed_main2_main11_wireValid;
    assign SE_in_i_llvm_fpga_mem_unnamed_main2_main11_toReg0 = SE_in_i_llvm_fpga_mem_unnamed_main2_main11_StallValid & SE_in_i_llvm_fpga_mem_unnamed_main2_main11_consumed0;
    assign SE_in_i_llvm_fpga_mem_unnamed_main2_main11_toReg1 = SE_in_i_llvm_fpga_mem_unnamed_main2_main11_StallValid & SE_in_i_llvm_fpga_mem_unnamed_main2_main11_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_unnamed_main2_main11_or0 = SE_in_i_llvm_fpga_mem_unnamed_main2_main11_consumed0;
    assign SE_in_i_llvm_fpga_mem_unnamed_main2_main11_wireStall = ~ (SE_in_i_llvm_fpga_mem_unnamed_main2_main11_consumed1 & SE_in_i_llvm_fpga_mem_unnamed_main2_main11_or0);
    assign SE_in_i_llvm_fpga_mem_unnamed_main2_main11_backStall = SE_in_i_llvm_fpga_mem_unnamed_main2_main11_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_unnamed_main2_main11_V0 = SE_in_i_llvm_fpga_mem_unnamed_main2_main11_wireValid & ~ (SE_in_i_llvm_fpga_mem_unnamed_main2_main11_fromReg0);
    assign SE_in_i_llvm_fpga_mem_unnamed_main2_main11_V1 = SE_in_i_llvm_fpga_mem_unnamed_main2_main11_wireValid & ~ (SE_in_i_llvm_fpga_mem_unnamed_main2_main11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_unnamed_main2_main11_and0 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V1;
    assign SE_in_i_llvm_fpga_mem_unnamed_main2_main11_wireValid = SE_out_i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_V0 & SE_in_i_llvm_fpga_mem_unnamed_main2_main11_and0;

    // SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0(STALLENABLE,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg0 <= SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg1 <= SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg2 <= SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg3 <= SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg4 <= SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed0 = (~ (redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireValid) | SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed1 = (~ (SE_in_i_llvm_fpga_mem_unnamed_main2_main11_backStall) & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireValid) | SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed2 = (~ (redist5_i_first_cleanup_main2_sel_x_b_64_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireValid) | SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed3 = (~ (i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_o_stall) & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireValid) | SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed4 = (~ (redist6_i_xor_main7_q_32_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireValid) | SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_StallValid = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_backStall & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg0 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_StallValid & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg1 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_StallValid & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg2 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_StallValid & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg3 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_StallValid & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed3;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_toReg4 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_StallValid & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_or0 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_or1 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed1 & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_or0;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_or2 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed2 & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_or1;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_or3 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed3 & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_or2;
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_consumed4 & SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_or3);
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_backStall = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V0 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V1 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V2 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V3 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V4 = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_wireValid = i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_valid_out;

    // bubble_join_main_B1_start_merge_reg_aunroll_x(BITJOIN,161)
    assign bubble_join_main_B1_start_merge_reg_aunroll_x_q = main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_main_B1_start_merge_reg_aunroll_x(BITSELECT,162)
    assign bubble_select_main_B1_start_merge_reg_aunroll_x_b = $unsigned(bubble_join_main_B1_start_merge_reg_aunroll_x_q[0:0]);

    // redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0(REG,120)
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

    // c_i17_6553532(CONSTANT,3)
    assign c_i17_6553532_q = $unsigned(17'b01111111111111111);

    // i_llvm_fpga_pop_i17_cleanups_pop4_main0(BLACKBOX,29)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_stall_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    main_i_llvm_fpga_pop_i17_cleanups_pop4_0 thei_llvm_fpga_pop_i17_cleanups_pop4_main0 (
        .in_data_in(c_i17_6553532_q),
        .in_dir(redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q),
        .in_feedback_in_4(i_llvm_fpga_push_i17_cleanups_push4_main31_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i17_cleanups_push4_main31_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_backStall),
        .in_valid_in(SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0),
        .out_data_out(i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_feedback_stall_out_4),
        .out_stall_out(i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0Idx1Rng1_uid102_i_cleanups_shl_main0_shift_x(BITSELECT,101)@67
    assign leftShiftStage0Idx1Rng1_uid102_i_cleanups_shl_main0_shift_x_in = bubble_select_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_b[15:0];
    assign leftShiftStage0Idx1Rng1_uid102_i_cleanups_shl_main0_shift_x_b = leftShiftStage0Idx1Rng1_uid102_i_cleanups_shl_main0_shift_x_in[15:0];

    // leftShiftStage0Idx1_uid103_i_cleanups_shl_main0_shift_x(BITJOIN,102)@67
    assign leftShiftStage0Idx1_uid103_i_cleanups_shl_main0_shift_x_q = {leftShiftStage0Idx1Rng1_uid102_i_cleanups_shl_main0_shift_x_b, GND_q};

    // leftShiftStage0_uid105_i_cleanups_shl_main0_shift_x(MUX,104)@67
    assign leftShiftStage0_uid105_i_cleanups_shl_main0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid105_i_cleanups_shl_main0_shift_x_s or bubble_select_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_b or leftShiftStage0Idx1_uid103_i_cleanups_shl_main0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid105_i_cleanups_shl_main0_shift_x_s)
            1'b0 : leftShiftStage0_uid105_i_cleanups_shl_main0_shift_x_q = bubble_select_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_b;
            1'b1 : leftShiftStage0_uid105_i_cleanups_shl_main0_shift_x_q = leftShiftStage0Idx1_uid103_i_cleanups_shl_main0_shift_x_q;
            default : leftShiftStage0_uid105_i_cleanups_shl_main0_shift_x_q = 17'b0;
        endcase
    end

    // i_cleanups_shl_main3_vt_select_16(BITSELECT,15)@67
    assign i_cleanups_shl_main3_vt_select_16_b = leftShiftStage0_uid105_i_cleanups_shl_main0_shift_x_q[16:1];

    // i_cleanups_shl_main3_vt_join(BITJOIN,14)@67
    assign i_cleanups_shl_main3_vt_join_q = {i_cleanups_shl_main3_vt_select_16_b, GND_q};

    // bubble_join_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo(BITJOIN,176)
    assign bubble_join_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_q = redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_data_out;

    // bubble_select_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo(BITSELECT,177)
    assign bubble_select_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_b = $unsigned(bubble_join_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_q[16:0]);

    // i_cmp162_i_not_main15(LOGICAL,17)@67
    assign i_cmp162_i_not_main15_q = bubble_select_redist10_i_cmp162_i_main13_c_32_fifo_b ^ VCC_q;

    // i_acl_2_main22(LOGICAL,11)@67
    assign i_acl_2_main22_q = i_cmp216_i_main19_n & i_cmp162_i_not_main15_q;

    // i_notcmp_main24(LOGICAL,35)@67
    assign i_notcmp_main24_q = i_acl_2_main22_q ^ VCC_q;

    // i_or_main27(LOGICAL,36)@67
    assign i_or_main27_q = i_notcmp_main24_q | bubble_select_redist7_i_xor_main7_q_64_fifo_b;

    // i_next_cleanups_main30(MUX,34)@67
    assign i_next_cleanups_main30_s = i_or_main27_q;
    always @(i_next_cleanups_main30_s or bubble_select_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_b or i_cleanups_shl_main3_vt_join_q)
    begin
        unique case (i_next_cleanups_main30_s)
            1'b0 : i_next_cleanups_main30_q = bubble_select_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_b;
            1'b1 : i_next_cleanups_main30_q = i_cleanups_shl_main3_vt_join_q;
            default : i_next_cleanups_main30_q = 17'b0;
        endcase
    end

    // i_llvm_fpga_push_i17_cleanups_push4_main31(BLACKBOX,30)@67
    // in in_stall_in@20000000
    // out out_data_out@68
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@68
    main_i_llvm_fpga_push_i17_cleanups_push4_0 thei_llvm_fpga_push_i17_cleanups_push4_main31 (
        .in_data_in(i_next_cleanups_main30_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_feedback_stall_out_4),
        .in_keep_going(redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i17_cleanups_push4_main31_backStall),
        .in_valid_in(SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_V0),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i17_cleanups_push4_main31_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i17_cleanups_push4_main31_out_feedback_valid_out_4),
        .out_stall_out(i_llvm_fpga_push_i17_cleanups_push4_main31_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i17_cleanups_push4_main31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist7_i_xor_main7_q_64_fifo(STALLENABLE,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist7_i_xor_main7_q_64_fifo_fromReg0 <= '0;
            SE_out_redist7_i_xor_main7_q_64_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist7_i_xor_main7_q_64_fifo_fromReg0 <= SE_out_redist7_i_xor_main7_q_64_fifo_toReg0;
            // Successor 1
            SE_out_redist7_i_xor_main7_q_64_fifo_fromReg1 <= SE_out_redist7_i_xor_main7_q_64_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist7_i_xor_main7_q_64_fifo_consumed0 = (~ (SE_i_acl_6_xor_main23_backStall) & SE_out_redist7_i_xor_main7_q_64_fifo_wireValid) | SE_out_redist7_i_xor_main7_q_64_fifo_fromReg0;
    assign SE_out_redist7_i_xor_main7_q_64_fifo_consumed1 = (~ (SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_backStall) & SE_out_redist7_i_xor_main7_q_64_fifo_wireValid) | SE_out_redist7_i_xor_main7_q_64_fifo_fromReg1;
    // Consuming
    assign SE_out_redist7_i_xor_main7_q_64_fifo_StallValid = SE_out_redist7_i_xor_main7_q_64_fifo_backStall & SE_out_redist7_i_xor_main7_q_64_fifo_wireValid;
    assign SE_out_redist7_i_xor_main7_q_64_fifo_toReg0 = SE_out_redist7_i_xor_main7_q_64_fifo_StallValid & SE_out_redist7_i_xor_main7_q_64_fifo_consumed0;
    assign SE_out_redist7_i_xor_main7_q_64_fifo_toReg1 = SE_out_redist7_i_xor_main7_q_64_fifo_StallValid & SE_out_redist7_i_xor_main7_q_64_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist7_i_xor_main7_q_64_fifo_or0 = SE_out_redist7_i_xor_main7_q_64_fifo_consumed0;
    assign SE_out_redist7_i_xor_main7_q_64_fifo_wireStall = ~ (SE_out_redist7_i_xor_main7_q_64_fifo_consumed1 & SE_out_redist7_i_xor_main7_q_64_fifo_or0);
    assign SE_out_redist7_i_xor_main7_q_64_fifo_backStall = SE_out_redist7_i_xor_main7_q_64_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist7_i_xor_main7_q_64_fifo_V0 = SE_out_redist7_i_xor_main7_q_64_fifo_wireValid & ~ (SE_out_redist7_i_xor_main7_q_64_fifo_fromReg0);
    assign SE_out_redist7_i_xor_main7_q_64_fifo_V1 = SE_out_redist7_i_xor_main7_q_64_fifo_wireValid & ~ (SE_out_redist7_i_xor_main7_q_64_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist7_i_xor_main7_q_64_fifo_wireValid = redist7_i_xor_main7_q_64_fifo_valid_out;

    // SE_i_acl_2_main22(STALLENABLE,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_acl_2_main22_fromReg0 <= '0;
            SE_i_acl_2_main22_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_acl_2_main22_fromReg0 <= SE_i_acl_2_main22_toReg0;
            // Successor 1
            SE_i_acl_2_main22_fromReg1 <= SE_i_acl_2_main22_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_acl_2_main22_consumed0 = (~ (SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_backStall) & SE_i_acl_2_main22_wireValid) | SE_i_acl_2_main22_fromReg0;
    assign SE_i_acl_2_main22_consumed1 = (~ (SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_backStall) & SE_i_acl_2_main22_wireValid) | SE_i_acl_2_main22_fromReg1;
    // Consuming
    assign SE_i_acl_2_main22_StallValid = SE_i_acl_2_main22_backStall & SE_i_acl_2_main22_wireValid;
    assign SE_i_acl_2_main22_toReg0 = SE_i_acl_2_main22_StallValid & SE_i_acl_2_main22_consumed0;
    assign SE_i_acl_2_main22_toReg1 = SE_i_acl_2_main22_StallValid & SE_i_acl_2_main22_consumed1;
    // Backward Stall generation
    assign SE_i_acl_2_main22_or0 = SE_i_acl_2_main22_consumed0;
    assign SE_i_acl_2_main22_wireStall = ~ (SE_i_acl_2_main22_consumed1 & SE_i_acl_2_main22_or0);
    assign SE_i_acl_2_main22_backStall = SE_i_acl_2_main22_wireStall;
    // Valid signal propagation
    assign SE_i_acl_2_main22_V0 = SE_i_acl_2_main22_wireValid & ~ (SE_i_acl_2_main22_fromReg0);
    assign SE_i_acl_2_main22_V1 = SE_i_acl_2_main22_wireValid & ~ (SE_i_acl_2_main22_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_acl_2_main22_and0 = SE_out_redist10_i_cmp162_i_main13_c_32_fifo_V1;
    assign SE_i_acl_2_main22_wireValid = SE_out_i_llvm_fpga_mem_lm42_main18_V0 & SE_i_acl_2_main22_and0;

    // redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo(STALLFIFO,126)
    assign redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_valid_in = SE_out_i_llvm_fpga_pop_i17_cleanups_pop4_main0_V0;
    assign redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_stall_in = SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_backStall;
    assign redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_data_in = bubble_select_i_llvm_fpga_pop_i17_cleanups_pop4_main0_b;
    assign redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_valid_in_bitsignaltemp = redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_valid_in[0];
    assign redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_stall_in_bitsignaltemp = redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_stall_in[0];
    assign redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_valid_out[0] = redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_valid_out_bitsignaltemp;
    assign redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_stall_out[0] = redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(17),
        .IMPL("ram")
    ) theredist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo (
        .valid_in(redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i17_cleanups_pop4_main0_b),
        .valid_out(redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo(STALLENABLE,244)
    // Valid signal propagation
    assign SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_V0 = SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_backStall = i_llvm_fpga_push_i17_cleanups_push4_main31_out_stall_out | ~ (SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_and0 = redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_valid_out;
    assign SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_and1 = SE_i_acl_2_main22_V1 & SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_and0;
    assign SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_and2 = SE_out_redist7_i_xor_main7_q_64_fifo_V1 & SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_and1;
    assign SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_wireValid = SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_V0 & SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_and2;

    // SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0(STALLENABLE,245)
    // Valid signal propagation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_V0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_0;
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_V1 = SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_0 = SE_out_redist8_i_llvm_fpga_pop_i17_cleanups_pop4_main0_out_data_out_64_fifo_backStall & SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_0;
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_1 = SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall & SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_or0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_0;
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backEN = ~ (SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_1 | SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_v_s_0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backEN & SE_out_i_llvm_fpga_pipeline_keep_going_main1_V1;
    // Backward Stall generation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backStall = ~ (SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_0 <= 1'b0;
            SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_0 <= SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_0 & SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_0 <= SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_v_s_0;
            end

            if (SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_1 <= SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_1 & SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_s_tv_1;
            end
            else
            begin
                SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_R_v_1 <= SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_v_s_0;
            end

        end
    end

    // SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x(STALLENABLE,289)
    // Valid signal propagation
    assign SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V0 = SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall = i_llvm_fpga_push_i1_lastiniteration_main8_out_stall_out | ~ (SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_and0 = SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V1;
    assign SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid = SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_V1 & SE_bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_and0;

    // SE_out_i_iowr_bl_return_main_unnamed_main4_main29(STALLENABLE,195)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_return_main_unnamed_main4_main29_V0 = SE_out_i_iowr_bl_return_main_unnamed_main4_main29_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_main_unnamed_main4_main29_backStall = in_stall_in | ~ (SE_out_i_iowr_bl_return_main_unnamed_main4_main29_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_main_unnamed_main4_main29_and0 = i_iowr_bl_return_main_unnamed_main4_main29_out_o_valid;
    assign SE_out_i_iowr_bl_return_main_unnamed_main4_main29_and1 = SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_V1 & SE_out_i_iowr_bl_return_main_unnamed_main4_main29_and0;
    assign SE_out_i_iowr_bl_return_main_unnamed_main4_main29_wireValid = SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V0 & SE_out_i_iowr_bl_return_main_unnamed_main4_main29_and1;

    // SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x(STALLENABLE,225)
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
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_consumed0 = (~ (SE_out_i_iowr_bl_return_main_unnamed_main4_main29_backStall) & SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_fromReg0;
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

    // redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0(REG,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backEN == 1'b1)
        begin
            redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q <= $unsigned(bubble_select_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_b);
        end
    end

    // i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x(BLACKBOX,94)@66
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@67
    // out out_c0_exit_0_tpl@67
    // out out_c0_exit_1_tpl@67
    main_i_sfc_s_c0_in_wt_entry_s_c0_enter1_main5 thei_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x (
        .in_forked(redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q),
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall),
        .in_i_valid(SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V0),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_main1_b),
        .in_c0_eni2_0_tpl(GND_q),
        .in_c0_eni2_1_tpl(redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q),
        .in_c0_eni2_2_tpl(bubble_select_i_llvm_fpga_pipeline_keep_going_main1_b),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_c0_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x(STALLENABLE,224)
    // Valid signal propagation
    assign SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_V0 = SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_o_stall | ~ (SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_and0 = SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V0;
    assign SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_main1_V0 & SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_and0;

    // SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0(STALLENABLE,236)
    // Valid signal propagation
    assign SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V0 = SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_0 = SE_in_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_backStall & SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backEN = ~ (SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_v_s_0 = SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backEN & SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V0;
    // Backward Stall generation
    assign SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backStall = ~ (SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backEN == 1'b0)
            begin
                SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_0 <= SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_0 & SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_0;
            end
            else
            begin
                SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_0 <= SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_v_s_0;
            end

        end
    end

    // redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo(STALLFIFO,121)
    assign redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in = SE_redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V1;
    assign redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in = SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_backStall;
    assign redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_in = redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    assign redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in_bitsignaltemp = redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in[0];
    assign redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in_bitsignaltemp = redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in[0];
    assign redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out[0] = redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out_bitsignaltemp;
    assign redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out[0] = redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo (
        .valid_in(redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in_bitsignaltemp),
        .data_in(redist0_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q),
        .valid_out(redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo(STALLENABLE,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0 <= '0;
            SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0 <= SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg0;
            // Successor 1
            SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1 <= SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed0 = (~ (SE_redist2_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backStall) & SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid) | SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0;
    assign SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed1 = (~ (i_llvm_fpga_pipeline_keep_going_main1_out_stall_out) & SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid) | SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1;
    // Consuming
    assign SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_StallValid = SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_backStall & SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid;
    assign SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg0 = SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_StallValid & SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed0;
    assign SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg1 = SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_StallValid & SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_or0 = SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed0;
    assign SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireStall = ~ (SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed1 & SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_or0);
    assign SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_backStall = SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V0 = SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid & ~ (SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0);
    assign SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V1 = SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid & ~ (SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid = redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out;

    // SE_out_i_llvm_fpga_pipeline_keep_going_main1(STALLENABLE,205)
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
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main1_consumed1 = (~ (SE_redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_main1_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_main1_fromReg1;
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

    // SE_out_i_llvm_fpga_push_i1_notexitcond_main25(STALLENABLE,213)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_main25_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_main25_wireValid = i_llvm_fpga_push_i1_notexitcond_main25_out_valid_out;

    // bubble_join_redist5_i_first_cleanup_main2_sel_x_b_64_fifo(BITJOIN,167)
    assign bubble_join_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_q = redist5_i_first_cleanup_main2_sel_x_b_64_fifo_data_out;

    // bubble_select_redist5_i_first_cleanup_main2_sel_x_b_64_fifo(BITSELECT,168)
    assign bubble_select_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_b = $unsigned(bubble_join_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_notexitcond_main25(BLACKBOX,32)@67
    // in in_stall_in@20000000
    // out out_data_out@68
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@68
    main_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_main25 (
        .in_data_in(i_acl_2_main22_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_main1_out_not_exitcond_stall_out),
        .in_first_cleanup(bubble_select_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_main25_backStall),
        .in_valid_in(SE_out_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_main25_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_main25_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_main25_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_main25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_main8(STALLENABLE,211)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_main8_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_main8_wireValid = i_llvm_fpga_push_i1_lastiniteration_main8_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x(BITJOIN,157)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_q = i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_out_c0_exit_1_tpl;

    // bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x(BITSELECT,158)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_q[0:0]);

    // i_llvm_fpga_push_i1_lastiniteration_main8(BLACKBOX,31)@67
    // in in_stall_in@20000000
    // out out_data_out@68
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@68
    main_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_main8 (
        .in_data_in(bubble_select_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main5_aunroll_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_main1_out_initeration_stall_out),
        .in_keep_going(redist9_i_llvm_fpga_pipeline_keep_going_main1_out_data_out_1_0_q),
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

    // bubble_join_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo(BITJOIN,164)
    assign bubble_join_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_q = redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_out;

    // bubble_select_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo(BITSELECT,165)
    assign bubble_select_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_b = $unsigned(bubble_join_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going_main1(BLACKBOX,28)@65
    // in in_stall_in@20000000
    // out out_data_out@66
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@66
    main_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_main1 (
        .in_data_in(bubble_select_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_main8_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_main8_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_main25_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_main25_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_main1_backStall),
        .in_valid_in(SE_out_redist1_main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V1),
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

    // pipeline_valid_out_sync(GPOUT,67)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_main1_out_pipeline_valid_out;

    // sync_out(GPOUT,74)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,77)
    assign out_iord_bl_call_main_o_fifoready = i_iord_bl_call_main_unnamed_main1_main9_aunroll_x_out_iord_bl_call_main_o_fifoready;

    // i_masked_main28(LOGICAL,33)@67
    assign i_masked_main28_q = i_notcmp_main24_q & bubble_select_redist5_i_first_cleanup_main2_sel_x_b_64_fifo_b;

    // dupName_0_sync_out_x(GPOUT,78)@67
    assign out_masked = i_masked_main28_q;
    assign out_valid_out = SE_out_i_iowr_bl_return_main_unnamed_main4_main29_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,80)
    assign out_unnamed_main2_main_avm_address = i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_address;
    assign out_unnamed_main2_main_avm_enable = i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_enable;
    assign out_unnamed_main2_main_avm_read = i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_read;
    assign out_unnamed_main2_main_avm_write = i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_write;
    assign out_unnamed_main2_main_avm_writedata = i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_writedata;
    assign out_unnamed_main2_main_avm_byteenable = i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_byteenable;
    assign out_unnamed_main2_main_avm_burstcount = i_llvm_fpga_mem_unnamed_main2_main11_out_unnamed_main2_main_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,82)
    assign out_unnamed_main3_main_avm_address = i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_address;
    assign out_unnamed_main3_main_avm_enable = i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_enable;
    assign out_unnamed_main3_main_avm_read = i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_read;
    assign out_unnamed_main3_main_avm_write = i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_write;
    assign out_unnamed_main3_main_avm_writedata = i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_writedata;
    assign out_unnamed_main3_main_avm_byteenable = i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_byteenable;
    assign out_unnamed_main3_main_avm_burstcount = i_llvm_fpga_mem_unnamed_main3_main12_out_unnamed_main3_main_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,84)
    assign out_lm1_main_avm_address = i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_address;
    assign out_lm1_main_avm_enable = i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_enable;
    assign out_lm1_main_avm_read = i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_read;
    assign out_lm1_main_avm_write = i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_write;
    assign out_lm1_main_avm_writedata = i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_writedata;
    assign out_lm1_main_avm_byteenable = i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_byteenable;
    assign out_lm1_main_avm_burstcount = i_llvm_fpga_mem_lm1_main17_out_lm1_main_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,86)
    assign out_lm42_main_avm_address = i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_address;
    assign out_lm42_main_avm_enable = i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_enable;
    assign out_lm42_main_avm_read = i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_read;
    assign out_lm42_main_avm_write = i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_write;
    assign out_lm42_main_avm_writedata = i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_writedata;
    assign out_lm42_main_avm_byteenable = i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_byteenable;
    assign out_lm42_main_avm_burstcount = i_llvm_fpga_mem_lm42_main18_out_lm42_main_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,87)
    assign out_iowr_bl_return_main_o_fifodata = i_iowr_bl_return_main_unnamed_main4_main29_out_iowr_bl_return_main_o_fifodata;
    assign out_iowr_bl_return_main_o_fifovalid = i_iowr_bl_return_main_unnamed_main4_main29_out_iowr_bl_return_main_o_fifovalid;

endmodule
