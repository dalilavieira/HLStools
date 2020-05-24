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

// SystemVerilog created from main_bb_B1_stall_region
// SystemVerilog created on Sun May 24 20:09:11 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_bb_B1_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] main_B1_merge_reg_out_stall_out;
    wire [0:0] main_B1_merge_reg_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] SE_out_main_B1_merge_reg_wireValid;
    wire [0:0] SE_out_main_B1_merge_reg_backStall;
    wire [0:0] SE_out_main_B1_merge_reg_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,26)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = main_B1_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // main_B1_merge_reg(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    main_B1_merge_reg themain_B1_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_main_B1_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(main_B1_merge_reg_out_stall_out),
        .out_valid_out(main_B1_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_main_B1_merge_reg(STALLENABLE,25)
    // Valid signal propagation
    assign SE_out_main_B1_merge_reg_V0 = SE_out_main_B1_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_main_B1_merge_reg_backStall = i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_o_stall | ~ (SE_out_main_B1_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_main_B1_merge_reg_wireValid = main_B1_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x(STALLENABLE,29)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x(BLACKBOX,20)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    main_i_sfc_s_c0_in_for_cond_i_s_c0_enter1_main0 thei_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_backStall),
        .in_i_valid(SE_out_main_B1_merge_reg_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_main1_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out(i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out(i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out = i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out = i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,13)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,19)@1
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond_i_mains_c0_enter1_main0_aunroll_x_V0;

endmodule
