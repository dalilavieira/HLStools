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

// SystemVerilog created from main_i_sfc_s_c0_in_wt_entry_s_c0_enter1_main0
// SystemVerilog created on Mon Mar 23 14:17:45 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module main_i_sfc_s_c0_in_wt_entry_s_c0_enter1_main0 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_unnamed_main0_0_tpl,
    output wire [0:0] out_c0_exit_0_tpl,
    output wire [0:0] out_c0_exit_1_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_enable;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_valid_mask;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_c0_exi1_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_c0_exi1_1_tpl;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,3)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_valid_mask);

    // input_accepted_and(LOGICAL,2)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x(BLACKBOX,10)@1
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    main_i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_s_c0_exit_main0 thei_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_c0_exi1_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_c0_exi1_1_tpl),
        .out_enable(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_enable),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_stall_entry),
        .out_valid_mask(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_valid_mask),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_data_out_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x(BLACKBOX,11)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out@20000000
    // out out_pipeline_valid_out@20000000
    main_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_main0 thei_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x (
        .in_enable(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_enable),
        .in_i_valid(input_accepted_and_q),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out(i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out(i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_main1(),
        .out_c0_exi1_0_tpl(i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_c0_exi1_0_tpl),
        .out_c0_exi1_1_tpl(i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_c0_exi1_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,5)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out = i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_stall_out;

    // sync_out(GPOUT,8)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,9)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out = i_sfc_logic_s_c0_in_wt_entry_mains_c0_enter1_main0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_main1_exiting_valid_out;

    // dupName_0_sync_out_aunroll_x(GPOUT,13)@1
    assign out_c0_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_data_out_1_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_mains_c0_exit_main1_aunroll_x_out_valid_out;

endmodule
