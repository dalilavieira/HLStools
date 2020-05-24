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
// SystemVerilog created on Sun May 24 19:40:58 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_bb_B1_start_stall_region (
    input wire [127:0] in_iord_bl_call_main_i_fifodata,
    input wire [0:0] in_iord_bl_call_main_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main0_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main0_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_main1_main_avm_readdata,
    input wire [0:0] in_unnamed_main1_main_avm_writeack,
    input wire [0:0] in_unnamed_main1_main_avm_waitrequest,
    input wire [0:0] in_unnamed_main1_main_avm_readdatavalid,
    output wire [0:0] out_iord_bl_call_main_o_fifoready,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_memdep_1_main_avm_readdata,
    input wire [0:0] in_memdep_1_main_avm_writeack,
    input wire [0:0] in_memdep_1_main_avm_waitrequest,
    input wire [0:0] in_memdep_1_main_avm_readdatavalid,
    output wire [63:0] out_unnamed_main1_main_avm_address,
    output wire [0:0] out_unnamed_main1_main_avm_enable,
    output wire [0:0] out_unnamed_main1_main_avm_read,
    output wire [0:0] out_unnamed_main1_main_avm_write,
    output wire [63:0] out_unnamed_main1_main_avm_writedata,
    output wire [7:0] out_unnamed_main1_main_avm_byteenable,
    output wire [0:0] out_unnamed_main1_main_avm_burstcount,
    input wire [0:0] in_iowr_bl_return_main_i_fifoready,
    output wire [63:0] out_memdep_1_main_avm_address,
    output wire [0:0] out_memdep_1_main_avm_enable,
    output wire [0:0] out_memdep_1_main_avm_read,
    output wire [0:0] out_memdep_1_main_avm_write,
    output wire [63:0] out_memdep_1_main_avm_writedata,
    output wire [7:0] out_memdep_1_main_avm_byteenable,
    output wire [0:0] out_memdep_1_main_avm_burstcount,
    output wire [0:0] out_lsu_memdep_1_o_active,
    output wire [31:0] out_iowr_bl_return_main_o_fifodata,
    output wire [0:0] out_iowr_bl_return_main_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_011_q;
    wire [31:0] i_iowr_bl_return_main_unnamed_main2_main8_out_iowr_bl_return_main_o_fifodata;
    wire [0:0] i_iowr_bl_return_main_unnamed_main2_main8_out_iowr_bl_return_main_o_fifovalid;
    wire [0:0] i_iowr_bl_return_main_unnamed_main2_main8_out_o_stall;
    wire [0:0] i_iowr_bl_return_main_unnamed_main2_main8_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_1_main6_out_lsu_memdep_1_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1_main6_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_1_main6_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_1_main6_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_main1_main5_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_main1_main5_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_main1_main5_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main0_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main0_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main0_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main0_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main0_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_main0_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_out_feedback_stall_out_3;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_main7_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_main7_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_main7_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push3_main7_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main1_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main1_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main1_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_main1_out_valid_out;
    wire [0:0] i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_iord_bl_call_main_o_fifoready;
    wire [0:0] i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl;
    wire [0:0] main_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] main_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_valid_in;
    wire redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_stall_in;
    wire redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_data_in;
    wire [0:0] redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_valid_out;
    wire redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_stall_out;
    wire redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_1_main6_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_1_main6_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_main1_main5_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_main1_main5_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [127:0] bubble_join_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_c;
    wire [0:0] bubble_join_main_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_main_B1_start_merge_reg_aunroll_x_b;
    wire [63:0] bubble_join_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_q;
    wire [63:0] bubble_select_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_b;
    wire [0:0] SE_out_i_iowr_bl_return_main_unnamed_main2_main8_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_main_unnamed_main2_main8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_1_main6_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main0_and0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_main0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_main7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_main7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_main1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_main1_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_V1;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_main_B1_start_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_and0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_backStall;
    wire [0:0] SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_V0;
    wire [0:0] SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_3_V0;
    reg [0:0] bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_R_v_0;
    wire [0:0] bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_v_s_0;
    wire [0:0] bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_s_tv_0;
    wire [0:0] bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_backEN;
    wire [0:0] bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_backStall;
    wire [0:0] bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_V0;
    wire [0:0] bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;


    // bubble_join_i_llvm_fpga_mem_unnamed_main1_main5(BITJOIN,62)
    assign bubble_join_i_llvm_fpga_mem_unnamed_main1_main5_q = i_llvm_fpga_mem_unnamed_main1_main5_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_main1_main5(BITSELECT,63)
    assign bubble_select_i_llvm_fpga_mem_unnamed_main1_main5_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_main1_main5_q[31:0]);

    // SE_out_i_iowr_bl_return_main_unnamed_main2_main8(STALLENABLE,85)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_main_unnamed_main2_main8_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_main_unnamed_main2_main8_wireValid = i_iowr_bl_return_main_unnamed_main2_main8_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_memdep_1_main6(BITJOIN,58)
    assign bubble_join_i_llvm_fpga_mem_memdep_1_main6_q = i_llvm_fpga_mem_memdep_1_main6_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_1_main6(BITSELECT,59)
    assign bubble_select_i_llvm_fpga_mem_memdep_1_main6_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_1_main6_q[0:0]);

    // c_i32_011(CONSTANT,6)
    assign c_i32_011_q = $unsigned(32'b00000000000000000000000000000000);

    // i_iowr_bl_return_main_unnamed_main2_main8(BLACKBOX,11)@65
    // in in_i_stall@20000000
    // out out_iowr_bl_return_main_o_fifodata@20000000
    // out out_iowr_bl_return_main_o_fifovalid@20000000
    // out out_o_stall@20000000
    main_i_iowr_bl_return_unnamed_main2_main0 thei_iowr_bl_return_main_unnamed_main2_main8 (
        .in_i_data(c_i32_011_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_mem_memdep_1_main6_b),
        .in_i_stall(SE_out_i_iowr_bl_return_main_unnamed_main2_main8_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_memdep_1_main6_V1),
        .in_iowr_bl_return_main_i_fifoready(in_iowr_bl_return_main_i_fifoready),
        .out_iowr_bl_return_main_o_fifodata(i_iowr_bl_return_main_unnamed_main2_main8_out_iowr_bl_return_main_o_fifodata),
        .out_iowr_bl_return_main_o_fifovalid(i_iowr_bl_return_main_unnamed_main2_main8_out_iowr_bl_return_main_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_main_unnamed_main2_main8_out_o_stall),
        .out_o_valid(i_iowr_bl_return_main_unnamed_main2_main8_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_1_main6(STALLENABLE,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_1_main6_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_1_main6_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg2 <= SE_out_i_llvm_fpga_mem_memdep_1_main6_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_consumed0 = (~ (SE_out_i_llvm_fpga_pipeline_keep_going_main0_backStall) & SE_out_i_llvm_fpga_mem_memdep_1_main6_wireValid) | SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_consumed1 = (~ (i_iowr_bl_return_main_unnamed_main2_main8_out_o_stall) & SE_out_i_llvm_fpga_mem_memdep_1_main6_wireValid) | SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg1;
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_consumed2 = (~ (i_llvm_fpga_push_i1_memdep_phi_push3_main7_out_stall_out) & SE_out_i_llvm_fpga_mem_memdep_1_main6_wireValid) | SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_StallValid = SE_out_i_llvm_fpga_mem_memdep_1_main6_backStall & SE_out_i_llvm_fpga_mem_memdep_1_main6_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_toReg0 = SE_out_i_llvm_fpga_mem_memdep_1_main6_StallValid & SE_out_i_llvm_fpga_mem_memdep_1_main6_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_toReg1 = SE_out_i_llvm_fpga_mem_memdep_1_main6_StallValid & SE_out_i_llvm_fpga_mem_memdep_1_main6_consumed1;
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_toReg2 = SE_out_i_llvm_fpga_mem_memdep_1_main6_StallValid & SE_out_i_llvm_fpga_mem_memdep_1_main6_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_or0 = SE_out_i_llvm_fpga_mem_memdep_1_main6_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_or1 = SE_out_i_llvm_fpga_mem_memdep_1_main6_consumed1 & SE_out_i_llvm_fpga_mem_memdep_1_main6_or0;
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_1_main6_consumed2 & SE_out_i_llvm_fpga_mem_memdep_1_main6_or1);
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_backStall = SE_out_i_llvm_fpga_mem_memdep_1_main6_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_V0 = SE_out_i_llvm_fpga_mem_memdep_1_main6_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_V1 = SE_out_i_llvm_fpga_mem_memdep_1_main6_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg1);
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_V2 = SE_out_i_llvm_fpga_mem_memdep_1_main6_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_1_main6_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_1_main6_wireValid = i_llvm_fpga_mem_memdep_1_main6_out_o_valid;

    // bubble_join_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo(BITJOIN,82)
    assign bubble_join_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_q = redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_data_out;

    // bubble_select_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo(BITSELECT,83)
    assign bubble_select_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_b = $unsigned(bubble_join_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_q[63:0]);

    // i_llvm_fpga_mem_memdep_1_main6(BLACKBOX,12)@34
    // in in_i_stall@20000000
    // out out_lsu_memdep_1_o_active@20000000
    // out out_memdep_1_main_avm_address@20000000
    // out out_memdep_1_main_avm_burstcount@20000000
    // out out_memdep_1_main_avm_byteenable@20000000
    // out out_memdep_1_main_avm_enable@20000000
    // out out_memdep_1_main_avm_read@20000000
    // out out_memdep_1_main_avm_write@20000000
    // out out_memdep_1_main_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@65
    // out out_o_writeack@65
    main_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_main6 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_1_main6_backStall),
        .in_i_valid(SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_main1_main5_b),
        .in_memdep_1_main_avm_readdata(in_memdep_1_main_avm_readdata),
        .in_memdep_1_main_avm_readdatavalid(in_memdep_1_main_avm_readdatavalid),
        .in_memdep_1_main_avm_waitrequest(in_memdep_1_main_avm_waitrequest),
        .in_memdep_1_main_avm_writeack(in_memdep_1_main_avm_writeack),
        .out_lsu_memdep_1_o_active(i_llvm_fpga_mem_memdep_1_main6_out_lsu_memdep_1_o_active),
        .out_memdep_1_main_avm_address(i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_address),
        .out_memdep_1_main_avm_burstcount(i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_burstcount),
        .out_memdep_1_main_avm_byteenable(i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_byteenable),
        .out_memdep_1_main_avm_enable(i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_enable),
        .out_memdep_1_main_avm_read(i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_read),
        .out_memdep_1_main_avm_write(i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_write),
        .out_memdep_1_main_avm_writedata(i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_1_main6_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_1_main6_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_1_main6_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo(STALLFIFO,56)
    assign redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_valid_in = SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_V1;
    assign redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_stall_in = SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_backStall;
    assign redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_data_in = bubble_select_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_c;
    assign redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_valid_in_bitsignaltemp = redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_valid_in[0];
    assign redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_stall_in_bitsignaltemp = redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_stall_in[0];
    assign redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_valid_out[0] = redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_valid_out_bitsignaltemp;
    assign redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_stall_out[0] = redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo (
        .valid_in(redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_c),
        .valid_out(redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo(STALLENABLE,105)
    // Valid signal propagation
    assign SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_V0 = SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_backStall = i_llvm_fpga_mem_memdep_1_main6_out_o_stall | ~ (SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_and0 = redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_valid_out;
    assign SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_wireValid = i_llvm_fpga_mem_unnamed_main1_main5_out_o_valid & SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_and0;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4(BITJOIN,66)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_q = i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4(BITSELECT,67)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_q[0:0]);

    // i_iord_bl_call_main_unnamed_main0_main2_aunroll_x(BLACKBOX,53)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_main_o_fifoready@20000000
    // out out_o_stall@20000000
    main_i_iord_bl_call_unnamed_main0_main0 thei_iord_bl_call_main_unnamed_main0_main2_aunroll_x (
        .in_i_stall(SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_backStall),
        .in_i_valid(bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_V0),
        .in_iord_bl_call_main_i_fifodata(in_iord_bl_call_main_i_fifodata),
        .in_iord_bl_call_main_i_fifovalid(in_iord_bl_call_main_i_fifovalid),
        .out_iord_bl_call_main_o_fifoready(i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_iord_bl_call_main_o_fifoready),
        .out_o_stall(i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x(BITJOIN,73)
    assign bubble_join_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_q = {i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x(BITSELECT,74)
    assign bubble_select_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_q[127:64]);

    // i_llvm_fpga_mem_unnamed_main1_main5(BLACKBOX,13)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_main1_main_avm_address@20000000
    // out out_unnamed_main1_main_avm_burstcount@20000000
    // out out_unnamed_main1_main_avm_byteenable@20000000
    // out out_unnamed_main1_main_avm_enable@20000000
    // out out_unnamed_main1_main_avm_read@20000000
    // out out_unnamed_main1_main_avm_write@20000000
    // out out_unnamed_main1_main_avm_writedata@20000000
    main_i_llvm_fpga_mem_unnamed_1_main0 thei_llvm_fpga_mem_unnamed_main1_main5 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_V0),
        .in_unnamed_main1_main_avm_readdata(in_unnamed_main1_main_avm_readdata),
        .in_unnamed_main1_main_avm_readdatavalid(in_unnamed_main1_main_avm_readdatavalid),
        .in_unnamed_main1_main_avm_waitrequest(in_unnamed_main1_main_avm_waitrequest),
        .in_unnamed_main1_main_avm_writeack(in_unnamed_main1_main_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_main1_main5_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_main1_main5_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_main1_main5_out_o_valid),
        .out_unnamed_main1_main_avm_address(i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_address),
        .out_unnamed_main1_main_avm_burstcount(i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_burstcount),
        .out_unnamed_main1_main_avm_byteenable(i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_byteenable),
        .out_unnamed_main1_main_avm_enable(i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_enable),
        .out_unnamed_main1_main_avm_read(i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_read),
        .out_unnamed_main1_main_avm_write(i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_write),
        .out_unnamed_main1_main_avm_writedata(i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x(STALLENABLE,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_consumed0 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_backStall) & SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_consumed1 = (~ (redist0_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_data_1_tpl_32_fifo_stall_out) & SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_StallValid = SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_backStall & SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_toReg0 = SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_StallValid & SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_toReg1 = SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_StallValid & SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_or0 = SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_consumed1 & SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_or0);
    assign SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_backStall = SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_V0 = SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_V1 = SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_wireValid = i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4(STALLENABLE,93)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_backStall = i_llvm_fpga_mem_unnamed_main1_main5_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_wireValid = SE_out_i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_main7(STALLENABLE,95)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_main7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_main7_wireValid = i_llvm_fpga_push_i1_memdep_phi_push3_main7_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push3_main7(BLACKBOX,16)@65
    // in in_stall_in@20000000
    // out out_data_out@66
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@66
    main_i_llvm_fpga_push_i1_memdep_phi_push3_0 thei_llvm_fpga_push_i1_memdep_phi_push3_main7 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_1_main6_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_out_feedback_stall_out_3),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push3_main7_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_memdep_1_main6_V2),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_memdep_phi_push3_main7_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_memdep_phi_push3_main7_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push3_main7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push3_main7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_main_B1_start_merge_reg_aunroll_x(BITJOIN,76)
    assign bubble_join_main_B1_start_merge_reg_aunroll_x_q = main_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_main_B1_start_merge_reg_aunroll_x(BITSELECT,77)
    assign bubble_select_main_B1_start_merge_reg_aunroll_x_b = $unsigned(bubble_join_main_B1_start_merge_reg_aunroll_x_q[0:0]);

    // i_llvm_fpga_pop_i1_memdep_phi_pop3_main4(BLACKBOX,15)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    main_i_llvm_fpga_pop_i1_memdep_phi_pop3_0 thei_llvm_fpga_pop_i1_memdep_phi_pop3_main4 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_main_B1_start_merge_reg_aunroll_x_b),
        .in_feedback_in_3(i_llvm_fpga_push_i1_memdep_phi_push3_main7_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i1_memdep_phi_push3_main7_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_backStall),
        .in_valid_in(SE_out_main_B1_start_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_out_feedback_stall_out_3),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_2(STALLENABLE,139)
    // Valid signal propagation
    assign SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_push_i1_notexitcond_main1_out_stall_out | ~ (SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_2_wireValid = bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_valid_out;

    // bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg(STALLFIFO,147)
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_valid_in = SE_out_main_B1_start_merge_reg_aunroll_x_V1;
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_main_B1_start_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg(STALLENABLE,146)
    // Valid signal propagation
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_V0 = bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_s_tv_0 = i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_o_stall & bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_backEN = ~ (bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_v_s_0 = bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_backEN & SE_out_main_B1_start_merge_reg_aunroll_x_V0;
    // Backward Stall generation
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_backStall = ~ (bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_R_v_0 <= bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_R_v_0 & bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_R_v_0 <= bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_v_s_0;
            end

        end
    end

    // bubble_join_stall_entry(BITJOIN,69)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,70)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,98)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = main_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // main_B1_start_merge_reg_aunroll_x(BLACKBOX,54)@0
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

    // SE_out_main_B1_start_merge_reg_aunroll_x(STALLENABLE,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_main_B1_start_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_main_B1_start_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_main_B1_start_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_main_B1_start_merge_reg_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_main_B1_start_merge_reg_aunroll_x_fromReg0 <= SE_out_main_B1_start_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_main_B1_start_merge_reg_aunroll_x_fromReg1 <= SE_out_main_B1_start_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_main_B1_start_merge_reg_aunroll_x_fromReg2 <= SE_out_main_B1_start_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_main_B1_start_merge_reg_aunroll_x_fromReg3 <= SE_out_main_B1_start_merge_reg_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_main_B1_start_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_main_B1_start_merge_reg_aunroll_x_1_reg_backStall) & SE_out_main_B1_start_merge_reg_aunroll_x_wireValid) | SE_out_main_B1_start_merge_reg_aunroll_x_fromReg0;
    assign SE_out_main_B1_start_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_main_B1_start_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_main_B1_start_merge_reg_aunroll_x_wireValid) | SE_out_main_B1_start_merge_reg_aunroll_x_fromReg1;
    assign SE_out_main_B1_start_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_main_B1_start_merge_reg_aunroll_x_wireValid) | SE_out_main_B1_start_merge_reg_aunroll_x_fromReg2;
    assign SE_out_main_B1_start_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop3_main4_out_stall_out) & SE_out_main_B1_start_merge_reg_aunroll_x_wireValid) | SE_out_main_B1_start_merge_reg_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_main_B1_start_merge_reg_aunroll_x_StallValid = SE_out_main_B1_start_merge_reg_aunroll_x_backStall & SE_out_main_B1_start_merge_reg_aunroll_x_wireValid;
    assign SE_out_main_B1_start_merge_reg_aunroll_x_toReg0 = SE_out_main_B1_start_merge_reg_aunroll_x_StallValid & SE_out_main_B1_start_merge_reg_aunroll_x_consumed0;
    assign SE_out_main_B1_start_merge_reg_aunroll_x_toReg1 = SE_out_main_B1_start_merge_reg_aunroll_x_StallValid & SE_out_main_B1_start_merge_reg_aunroll_x_consumed1;
    assign SE_out_main_B1_start_merge_reg_aunroll_x_toReg2 = SE_out_main_B1_start_merge_reg_aunroll_x_StallValid & SE_out_main_B1_start_merge_reg_aunroll_x_consumed2;
    assign SE_out_main_B1_start_merge_reg_aunroll_x_toReg3 = SE_out_main_B1_start_merge_reg_aunroll_x_StallValid & SE_out_main_B1_start_merge_reg_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_main_B1_start_merge_reg_aunroll_x_or0 = SE_out_main_B1_start_merge_reg_aunroll_x_consumed0;
    assign SE_out_main_B1_start_merge_reg_aunroll_x_or1 = SE_out_main_B1_start_merge_reg_aunroll_x_consumed1 & SE_out_main_B1_start_merge_reg_aunroll_x_or0;
    assign SE_out_main_B1_start_merge_reg_aunroll_x_or2 = SE_out_main_B1_start_merge_reg_aunroll_x_consumed2 & SE_out_main_B1_start_merge_reg_aunroll_x_or1;
    assign SE_out_main_B1_start_merge_reg_aunroll_x_wireStall = ~ (SE_out_main_B1_start_merge_reg_aunroll_x_consumed3 & SE_out_main_B1_start_merge_reg_aunroll_x_or2);
    assign SE_out_main_B1_start_merge_reg_aunroll_x_backStall = SE_out_main_B1_start_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_main_B1_start_merge_reg_aunroll_x_V0 = SE_out_main_B1_start_merge_reg_aunroll_x_wireValid & ~ (SE_out_main_B1_start_merge_reg_aunroll_x_fromReg0);
    assign SE_out_main_B1_start_merge_reg_aunroll_x_V1 = SE_out_main_B1_start_merge_reg_aunroll_x_wireValid & ~ (SE_out_main_B1_start_merge_reg_aunroll_x_fromReg1);
    assign SE_out_main_B1_start_merge_reg_aunroll_x_V2 = SE_out_main_B1_start_merge_reg_aunroll_x_wireValid & ~ (SE_out_main_B1_start_merge_reg_aunroll_x_fromReg2);
    assign SE_out_main_B1_start_merge_reg_aunroll_x_V3 = SE_out_main_B1_start_merge_reg_aunroll_x_wireValid & ~ (SE_out_main_B1_start_merge_reg_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_main_B1_start_merge_reg_aunroll_x_wireValid = main_B1_start_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg(STALLFIFO,148)
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_valid_in = SE_out_main_B1_start_merge_reg_aunroll_x_V2;
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_main_B1_start_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_3(STALLENABLE,141)
    // Valid signal propagation
    assign SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_pipeline_keep_going_main0_out_stall_out | ~ (SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_3_wireValid = bubble_out_main_B1_start_merge_reg_aunroll_x_3_reg_valid_out;

    // SE_out_i_llvm_fpga_pipeline_keep_going_main0(STALLENABLE,91)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main0_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_main0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main0_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pipeline_keep_going_main0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main0_and0 = i_llvm_fpga_pipeline_keep_going_main0_out_valid_out;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_main0_wireValid = SE_out_i_llvm_fpga_mem_memdep_1_main6_V0 & SE_out_i_llvm_fpga_pipeline_keep_going_main0_and0;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_main1(STALLENABLE,97)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_main1_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_main1_wireValid = i_llvm_fpga_push_i1_notexitcond_main1_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_main1(BLACKBOX,17)@64
    // in in_stall_in@20000000
    // out out_data_out@65
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@65
    main_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_main1 (
        .in_data_in(VCC_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_main0_out_not_exitcond_stall_out),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_main1_backStall),
        .in_valid_in(SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_2_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_main1_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_main1_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_main1_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_main1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going_main0(BLACKBOX,14)@64
    // in in_stall_in@20000000
    // out out_data_out@65
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@65
    main_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_main0 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_main1_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_main1_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_main0_backStall),
        .in_valid_in(SE_out_bubble_out_main_B1_start_merge_reg_aunroll_x_3_V0),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_main0_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_main0_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_main0_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_main0_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_main0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_main0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,10)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main0_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_main0_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main0_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_main0_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,37)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_main0_out_pipeline_valid_out;

    // sync_out(GPOUT,42)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,45)
    assign out_iord_bl_call_main_o_fifoready = i_iord_bl_call_main_unnamed_main0_main2_aunroll_x_out_iord_bl_call_main_o_fifoready;

    // dupName_0_sync_out_x(GPOUT,46)@65
    assign out_valid_out = SE_out_i_llvm_fpga_pipeline_keep_going_main0_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,48)
    assign out_unnamed_main1_main_avm_address = i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_address;
    assign out_unnamed_main1_main_avm_enable = i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_enable;
    assign out_unnamed_main1_main_avm_read = i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_read;
    assign out_unnamed_main1_main_avm_write = i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_write;
    assign out_unnamed_main1_main_avm_writedata = i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_writedata;
    assign out_unnamed_main1_main_avm_byteenable = i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_byteenable;
    assign out_unnamed_main1_main_avm_burstcount = i_llvm_fpga_mem_unnamed_main1_main5_out_unnamed_main1_main_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,50)
    assign out_memdep_1_main_avm_address = i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_address;
    assign out_memdep_1_main_avm_enable = i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_enable;
    assign out_memdep_1_main_avm_read = i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_read;
    assign out_memdep_1_main_avm_write = i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_write;
    assign out_memdep_1_main_avm_writedata = i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_writedata;
    assign out_memdep_1_main_avm_byteenable = i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_byteenable;
    assign out_memdep_1_main_avm_burstcount = i_llvm_fpga_mem_memdep_1_main6_out_memdep_1_main_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,51)
    assign out_lsu_memdep_1_o_active = i_llvm_fpga_mem_memdep_1_main6_out_lsu_memdep_1_o_active;

    // dupName_4_ext_sig_sync_out_x(GPOUT,52)
    assign out_iowr_bl_return_main_o_fifodata = i_iowr_bl_return_main_unnamed_main2_main8_out_iowr_bl_return_main_o_fifodata;
    assign out_iowr_bl_return_main_o_fifovalid = i_iowr_bl_return_main_unnamed_main2_main8_out_iowr_bl_return_main_o_fifovalid;

endmodule
