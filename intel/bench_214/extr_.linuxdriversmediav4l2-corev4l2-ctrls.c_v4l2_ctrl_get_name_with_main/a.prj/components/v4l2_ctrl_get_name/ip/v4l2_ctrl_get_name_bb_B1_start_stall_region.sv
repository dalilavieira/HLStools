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

// SystemVerilog created from v4l2_ctrl_get_name_bb_B1_start_stall_region
// SystemVerilog created on Sun May 24 22:35:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module v4l2_ctrl_get_name_bb_B1_start_stall_region (
    input wire [31:0] in_iord_bl_call_v4l2_ctrl_get_name_i_fifodata,
    input wire [0:0] in_iord_bl_call_v4l2_ctrl_get_name_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_v4l2_ctrl_get_name1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_v4l2_ctrl_get_name1_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_return_v4l2_ctrl_get_name_i_fifoready,
    output wire [0:0] out_iord_bl_call_v4l2_ctrl_get_name_o_fifoready,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_iowr_bl_return_v4l2_ctrl_get_name_o_fifodata,
    output wire [0:0] out_iowr_bl_return_v4l2_ctrl_get_name_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_out_iowr_bl_return_v4l2_ctrl_get_name_o_fifodata;
    wire [0:0] i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_out_iowr_bl_return_v4l2_ctrl_get_name_o_fifovalid;
    wire [0:0] i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_out_o_stall;
    wire [0:0] i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_out_o_valid;
    wire [0:0] v4l2_ctrl_get_name_B1_start_merge_reg_out_stall_out;
    wire [0:0] v4l2_ctrl_get_name_B1_start_merge_reg_out_valid_out;
    wire [0:0] i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_out_iord_bl_call_v4l2_ctrl_get_name_o_fifoready;
    wire [0:0] i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_out_o_valid;
    wire [31:0] i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_v4l2_ctrl_get_name1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_v4l2_ctrl_get_name1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_out_c1_exit_1_tpl;
    wire [31:0] bubble_join_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_q;
    wire [31:0] bubble_select_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_b;
    wire [63:0] bubble_join_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_b;
    wire [0:0] SE_out_i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_wireStall;
    wire [0:0] SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_StallValid;
    wire [0:0] SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_toReg0;
    reg [0:0] SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_fromReg0;
    wire [0:0] SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_consumed0;
    wire [0:0] SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_toReg1;
    reg [0:0] SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_fromReg1;
    wire [0:0] SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_consumed1;
    wire [0:0] SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_or0;
    wire [0:0] SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_V0;
    wire [0:0] SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_V1;
    wire [0:0] SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x(BITJOIN,38)
    assign bubble_join_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_q = i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_out_o_data_0_tpl;

    // bubble_select_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x(BITSELECT,39)
    assign bubble_select_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_q[31:0]);

    // SE_out_i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5(STALLENABLE,46)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_wireValid = i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_out_o_valid;

    // bubble_join_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x(BITJOIN,43)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_q = i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x(BITSELECT,44)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_q[63:0]);

    // i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5(BLACKBOX,8)@37
    // in in_i_stall@20000000
    // out out_iowr_bl_return_v4l2_ctrl_get_name_o_fifodata@20000000
    // out out_iowr_bl_return_v4l2_ctrl_get_name_o_fifovalid@20000000
    // out out_o_stall@20000000
    v4l2_ctrl_get_name_i_iowr_bl_return_unnaA000000Z_v4l2_ctrl_get_name0 thei_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5 (
        .in_i_data(bubble_select_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_b),
        .in_i_stall(SE_out_i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_V0),
        .in_iowr_bl_return_v4l2_ctrl_get_name_i_fifoready(in_iowr_bl_return_v4l2_ctrl_get_name_i_fifoready),
        .out_iowr_bl_return_v4l2_ctrl_get_name_o_fifodata(i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_out_iowr_bl_return_v4l2_ctrl_get_name_o_fifodata),
        .out_iowr_bl_return_v4l2_ctrl_get_name_o_fifovalid(i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_out_iowr_bl_return_v4l2_ctrl_get_name_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_out_o_stall),
        .out_o_valid(i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x(STALLENABLE,56)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_backStall = i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_out_o_stall | ~ (SE_out_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_wireValid = i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_out_o_valid;

    // i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x(BLACKBOX,33)@1
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_c1_exit_0_tpl@37
    // out out_c1_exit_1_tpl@37
    v4l2_ctrl_get_name_i_sfc_s_c1_in_wt_entrA000000Z_v4l2_ctrl_get_name3 thei_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_V1),
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_b),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x(STALLENABLE,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_consumed0 = (~ (SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_backStall) & SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_wt_entry_v4l2_ctrl_get_names_c1_enter_v4l2_ctrl_get_name3_aunroll_x_out_o_stall) & SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_StallValid = SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_backStall & SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_toReg0 = SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_StallValid & SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_toReg1 = SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_StallValid & SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_or0 = SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_consumed1 & SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_or0);
    assign SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_backStall = SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_V0 = SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_V1 = SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_wireValid = i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_out_o_valid;

    // i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x(BLACKBOX,31)@1
    // in in_i_stall@20000000
    // out out_iord_bl_call_v4l2_ctrl_get_name_o_fifoready@20000000
    // out out_o_stall@20000000
    v4l2_ctrl_get_name_i_iord_bl_call_unnameA000000Z_v4l2_ctrl_get_name0 thei_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x (
        .in_i_stall(SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_backStall),
        .in_i_valid(SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_V0),
        .in_iord_bl_call_v4l2_ctrl_get_name_i_fifodata(in_iord_bl_call_v4l2_ctrl_get_name_i_fifodata),
        .in_iord_bl_call_v4l2_ctrl_get_name_i_fifovalid(in_iord_bl_call_v4l2_ctrl_get_name_i_fifovalid),
        .out_iord_bl_call_v4l2_ctrl_get_name_o_fifoready(i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_out_iord_bl_call_v4l2_ctrl_get_name_o_fifoready),
        .out_o_stall(i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,47)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = v4l2_ctrl_get_name_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // v4l2_ctrl_get_name_B1_start_merge_reg(BLACKBOX,26)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    v4l2_ctrl_get_name_B1_start_merge_reg thev4l2_ctrl_get_name_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(v4l2_ctrl_get_name_B1_start_merge_reg_out_stall_out),
        .out_valid_out(v4l2_ctrl_get_name_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_v4l2_ctrl_get_name_B1_start_merge_reg(STALLENABLE,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_fromReg0 <= '0;
            SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_fromReg0 <= SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_toReg0;
            // Successor 1
            SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_fromReg1 <= SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_consumed0 = (~ (i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_out_o_stall) & SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_wireValid) | SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_fromReg0;
    assign SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_o_stall) & SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_wireValid) | SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_fromReg1;
    // Consuming
    assign SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_StallValid = SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_backStall & SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_wireValid;
    assign SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_toReg0 = SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_StallValid & SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_consumed0;
    assign SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_toReg1 = SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_StallValid & SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_or0 = SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_consumed0;
    assign SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_wireStall = ~ (SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_consumed1 & SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_or0);
    assign SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_backStall = SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_V0 = SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_wireValid & ~ (SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_fromReg0);
    assign SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_V1 = SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_wireValid & ~ (SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_wireValid = v4l2_ctrl_get_name_B1_start_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x(STALLENABLE,54)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_and0 = i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_wireValid = SE_out_i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_V0 & SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_and0;

    // i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x(BLACKBOX,32)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_v4l2_ctrl_get_name1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_v4l2_ctrl_get_name1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    v4l2_ctrl_get_name_i_sfc_s_c0_in_wt_entrA000000Z_v4l2_ctrl_get_name0 thei_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_backStall),
        .in_i_valid(SE_out_v4l2_ctrl_get_name_B1_start_merge_reg_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_v4l2_ctrl_get_name0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_v4l2_ctrl_get_name1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_v4l2_ctrl_get_name1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_v4l2_ctrl_get_name1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_v4l2_ctrl_get_name1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_v4l2_ctrl_get_name1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_v4l2_ctrl_get_name1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_v4l2_ctrl_get_name1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_v4l2_ctrl_get_name1_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,28)
    assign out_iord_bl_call_v4l2_ctrl_get_name_o_fifoready = i_iord_bl_call_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name2_v4l2_ctrl_get_name1_aunroll_x_out_iord_bl_call_v4l2_ctrl_get_name_o_fifoready;

    // dupName_0_sync_out_x(GPOUT,29)@1
    assign out_valid_out = SE_out_i_sfc_s_c0_in_wt_entry_v4l2_ctrl_get_names_c0_enter1_v4l2_ctrl_get_name0_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,30)
    assign out_iowr_bl_return_v4l2_ctrl_get_name_o_fifodata = i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_out_iowr_bl_return_v4l2_ctrl_get_name_o_fifodata;
    assign out_iowr_bl_return_v4l2_ctrl_get_name_o_fifovalid = i_iowr_bl_return_v4l2_ctrl_get_name_unnamed_v4l2_ctrl_get_name3_v4l2_ctrl_get_name5_out_iowr_bl_return_v4l2_ctrl_get_name_o_fifovalid;

endmodule
