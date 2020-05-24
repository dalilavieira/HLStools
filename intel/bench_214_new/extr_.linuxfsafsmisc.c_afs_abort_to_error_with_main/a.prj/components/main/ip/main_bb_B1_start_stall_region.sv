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
// SystemVerilog created on Sun May 24 19:58:51 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_bb_B1_start_stall_region (
    input wire [0:0] in_iord_bl_call_main_i_fifodata,
    input wire [0:0] in_iord_bl_call_main_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_iowr_bl_return_main_i_fifoready,
    output wire [0:0] out_iord_bl_call_main_o_fifoready,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_iowr_bl_return_main_o_fifodata,
    output wire [0:0] out_iowr_bl_return_main_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_05_q;
    wire [0:0] i_iord_bl_call_main_unnamed_main2_main1_out_iord_bl_call_main_o_fifoready;
    wire [0:0] i_iord_bl_call_main_unnamed_main2_main1_out_o_data;
    wire [0:0] i_iord_bl_call_main_unnamed_main2_main1_out_o_stall;
    wire [0:0] i_iord_bl_call_main_unnamed_main2_main1_out_o_valid;
    wire [31:0] i_iowr_bl_return_main_unnamed_main3_main2_out_iowr_bl_return_main_o_fifodata;
    wire [0:0] i_iowr_bl_return_main_unnamed_main3_main2_out_iowr_bl_return_main_o_fifovalid;
    wire [0:0] i_iowr_bl_return_main_unnamed_main3_main2_out_o_stall;
    wire [0:0] i_iowr_bl_return_main_unnamed_main3_main2_out_o_valid;
    wire [0:0] main_B1_start_merge_reg_out_stall_out;
    wire [0:0] main_B1_start_merge_reg_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bubble_join_i_iord_bl_call_main_unnamed_main2_main1_q;
    wire [0:0] bubble_select_i_iord_bl_call_main_unnamed_main2_main1_b;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main2_main1_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main2_main1_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main2_main1_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main2_main1_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_main_unnamed_main2_main1_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main2_main1_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main2_main1_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_main_unnamed_main2_main1_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main2_main1_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main2_main1_or0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main2_main1_backStall;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main2_main1_V0;
    wire [0:0] SE_out_i_iord_bl_call_main_unnamed_main2_main1_V1;
    wire [0:0] SE_out_i_iowr_bl_return_main_unnamed_main3_main2_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_main_unnamed_main3_main2_backStall;
    wire [0:0] SE_out_main_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_main_B1_start_merge_reg_wireStall;
    wire [0:0] SE_out_main_B1_start_merge_reg_StallValid;
    wire [0:0] SE_out_main_B1_start_merge_reg_toReg0;
    reg [0:0] SE_out_main_B1_start_merge_reg_fromReg0;
    wire [0:0] SE_out_main_B1_start_merge_reg_consumed0;
    wire [0:0] SE_out_main_B1_start_merge_reg_toReg1;
    reg [0:0] SE_out_main_B1_start_merge_reg_fromReg1;
    wire [0:0] SE_out_main_B1_start_merge_reg_consumed1;
    wire [0:0] SE_out_main_B1_start_merge_reg_or0;
    wire [0:0] SE_out_main_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_main_B1_start_merge_reg_V0;
    wire [0:0] SE_out_main_B1_start_merge_reg_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_and0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_iowr_bl_return_main_unnamed_main3_main2(STALLENABLE,43)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_main_unnamed_main3_main2_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_main_unnamed_main3_main2_wireValid = i_iowr_bl_return_main_unnamed_main3_main2_out_o_valid;

    // bubble_join_i_iord_bl_call_main_unnamed_main2_main1(BITJOIN,33)
    assign bubble_join_i_iord_bl_call_main_unnamed_main2_main1_q = i_iord_bl_call_main_unnamed_main2_main1_out_o_data;

    // bubble_select_i_iord_bl_call_main_unnamed_main2_main1(BITSELECT,34)
    assign bubble_select_i_iord_bl_call_main_unnamed_main2_main1_b = $unsigned(bubble_join_i_iord_bl_call_main_unnamed_main2_main1_q[0:0]);

    // c_i32_05(CONSTANT,3)
    assign c_i32_05_q = $unsigned(32'b00000000000000000000000000000000);

    // i_iowr_bl_return_main_unnamed_main3_main2(BLACKBOX,10)@1
    // in in_i_stall@20000000
    // out out_iowr_bl_return_main_o_fifodata@20000000
    // out out_iowr_bl_return_main_o_fifovalid@20000000
    // out out_o_stall@20000000
    main_i_iowr_bl_return_unnamed_main3_main0 thei_iowr_bl_return_main_unnamed_main3_main2 (
        .in_i_data(c_i32_05_q),
        .in_i_dependence(bubble_select_i_iord_bl_call_main_unnamed_main2_main1_b),
        .in_i_stall(SE_out_i_iowr_bl_return_main_unnamed_main3_main2_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_main_unnamed_main2_main1_V1),
        .in_iowr_bl_return_main_i_fifoready(in_iowr_bl_return_main_i_fifoready),
        .out_iowr_bl_return_main_o_fifodata(i_iowr_bl_return_main_unnamed_main3_main2_out_iowr_bl_return_main_o_fifodata),
        .out_iowr_bl_return_main_o_fifovalid(i_iowr_bl_return_main_unnamed_main3_main2_out_iowr_bl_return_main_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_main_unnamed_main3_main2_out_o_stall),
        .out_o_valid(i_iowr_bl_return_main_unnamed_main3_main2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_main_unnamed_main2_main1(STALLENABLE,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_main_unnamed_main2_main1_fromReg0 <= '0;
            SE_out_i_iord_bl_call_main_unnamed_main2_main1_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_main_unnamed_main2_main1_fromReg0 <= SE_out_i_iord_bl_call_main_unnamed_main2_main1_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_main_unnamed_main2_main1_fromReg1 <= SE_out_i_iord_bl_call_main_unnamed_main2_main1_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_main_unnamed_main2_main1_consumed0 = (~ (SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_backStall) & SE_out_i_iord_bl_call_main_unnamed_main2_main1_wireValid) | SE_out_i_iord_bl_call_main_unnamed_main2_main1_fromReg0;
    assign SE_out_i_iord_bl_call_main_unnamed_main2_main1_consumed1 = (~ (i_iowr_bl_return_main_unnamed_main3_main2_out_o_stall) & SE_out_i_iord_bl_call_main_unnamed_main2_main1_wireValid) | SE_out_i_iord_bl_call_main_unnamed_main2_main1_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_call_main_unnamed_main2_main1_StallValid = SE_out_i_iord_bl_call_main_unnamed_main2_main1_backStall & SE_out_i_iord_bl_call_main_unnamed_main2_main1_wireValid;
    assign SE_out_i_iord_bl_call_main_unnamed_main2_main1_toReg0 = SE_out_i_iord_bl_call_main_unnamed_main2_main1_StallValid & SE_out_i_iord_bl_call_main_unnamed_main2_main1_consumed0;
    assign SE_out_i_iord_bl_call_main_unnamed_main2_main1_toReg1 = SE_out_i_iord_bl_call_main_unnamed_main2_main1_StallValid & SE_out_i_iord_bl_call_main_unnamed_main2_main1_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_main_unnamed_main2_main1_or0 = SE_out_i_iord_bl_call_main_unnamed_main2_main1_consumed0;
    assign SE_out_i_iord_bl_call_main_unnamed_main2_main1_wireStall = ~ (SE_out_i_iord_bl_call_main_unnamed_main2_main1_consumed1 & SE_out_i_iord_bl_call_main_unnamed_main2_main1_or0);
    assign SE_out_i_iord_bl_call_main_unnamed_main2_main1_backStall = SE_out_i_iord_bl_call_main_unnamed_main2_main1_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_main_unnamed_main2_main1_V0 = SE_out_i_iord_bl_call_main_unnamed_main2_main1_wireValid & ~ (SE_out_i_iord_bl_call_main_unnamed_main2_main1_fromReg0);
    assign SE_out_i_iord_bl_call_main_unnamed_main2_main1_V1 = SE_out_i_iord_bl_call_main_unnamed_main2_main1_wireValid & ~ (SE_out_i_iord_bl_call_main_unnamed_main2_main1_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_main_unnamed_main2_main1_wireValid = i_iord_bl_call_main_unnamed_main2_main1_out_o_valid;

    // i_iord_bl_call_main_unnamed_main2_main1(BLACKBOX,9)@1
    // in in_i_stall@20000000
    // out out_iord_bl_call_main_o_fifoready@20000000
    // out out_o_stall@20000000
    main_i_iord_bl_call_unnamed_main2_main0 thei_iord_bl_call_main_unnamed_main2_main1 (
        .in_i_stall(SE_out_i_iord_bl_call_main_unnamed_main2_main1_backStall),
        .in_i_valid(SE_out_main_B1_start_merge_reg_V0),
        .in_iord_bl_call_main_i_fifodata(in_iord_bl_call_main_i_fifodata),
        .in_iord_bl_call_main_i_fifovalid(in_iord_bl_call_main_i_fifovalid),
        .out_iord_bl_call_main_o_fifoready(i_iord_bl_call_main_unnamed_main2_main1_out_iord_bl_call_main_o_fifoready),
        .out_o_data(i_iord_bl_call_main_unnamed_main2_main1_out_o_data),
        .out_o_stall(i_iord_bl_call_main_unnamed_main2_main1_out_o_stall),
        .out_o_valid(i_iord_bl_call_main_unnamed_main2_main1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,46)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = main_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // main_B1_start_merge_reg(BLACKBOX,15)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    main_B1_start_merge_reg themain_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_main_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(main_B1_start_merge_reg_out_stall_out),
        .out_valid_out(main_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_main_B1_start_merge_reg(STALLENABLE,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_main_B1_start_merge_reg_fromReg0 <= '0;
            SE_out_main_B1_start_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_main_B1_start_merge_reg_fromReg0 <= SE_out_main_B1_start_merge_reg_toReg0;
            // Successor 1
            SE_out_main_B1_start_merge_reg_fromReg1 <= SE_out_main_B1_start_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_main_B1_start_merge_reg_consumed0 = (~ (i_iord_bl_call_main_unnamed_main2_main1_out_o_stall) & SE_out_main_B1_start_merge_reg_wireValid) | SE_out_main_B1_start_merge_reg_fromReg0;
    assign SE_out_main_B1_start_merge_reg_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_o_stall) & SE_out_main_B1_start_merge_reg_wireValid) | SE_out_main_B1_start_merge_reg_fromReg1;
    // Consuming
    assign SE_out_main_B1_start_merge_reg_StallValid = SE_out_main_B1_start_merge_reg_backStall & SE_out_main_B1_start_merge_reg_wireValid;
    assign SE_out_main_B1_start_merge_reg_toReg0 = SE_out_main_B1_start_merge_reg_StallValid & SE_out_main_B1_start_merge_reg_consumed0;
    assign SE_out_main_B1_start_merge_reg_toReg1 = SE_out_main_B1_start_merge_reg_StallValid & SE_out_main_B1_start_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_main_B1_start_merge_reg_or0 = SE_out_main_B1_start_merge_reg_consumed0;
    assign SE_out_main_B1_start_merge_reg_wireStall = ~ (SE_out_main_B1_start_merge_reg_consumed1 & SE_out_main_B1_start_merge_reg_or0);
    assign SE_out_main_B1_start_merge_reg_backStall = SE_out_main_B1_start_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_main_B1_start_merge_reg_V0 = SE_out_main_B1_start_merge_reg_wireValid & ~ (SE_out_main_B1_start_merge_reg_fromReg0);
    assign SE_out_main_B1_start_merge_reg_V1 = SE_out_main_B1_start_merge_reg_wireValid & ~ (SE_out_main_B1_start_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_main_B1_start_merge_reg_wireValid = main_B1_start_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x(STALLENABLE,49)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_and0 = i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_o_valid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_wireValid = SE_out_i_iord_bl_call_main_unnamed_main2_main1_V0 & SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_and0;

    // i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x(BLACKBOX,31)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    main_i_sfc_s_c0_in_wt_entry_s_c0_enter1_main0 thei_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_backStall),
        .in_i_valid(SE_out_main_B1_start_merge_reg_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_main0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,21)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,25)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,28)
    assign out_iord_bl_call_main_o_fifoready = i_iord_bl_call_main_unnamed_main2_main1_out_iord_bl_call_main_o_fifoready;

    // dupName_0_sync_out_x(GPOUT,29)@1
    assign out_valid_out = SE_out_i_sfc_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,30)
    assign out_iowr_bl_return_main_o_fifodata = i_iowr_bl_return_main_unnamed_main3_main2_out_iowr_bl_return_main_o_fifodata;
    assign out_iowr_bl_return_main_o_fifovalid = i_iowr_bl_return_main_unnamed_main3_main2_out_iowr_bl_return_main_o_fifovalid;

endmodule
