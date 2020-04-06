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

// SystemVerilog created from dijkstra_bb_B3_stall_region
// SystemVerilog created on Mon Apr  6 12:54:17 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_bb_B3_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked139,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_intel_reserved_ffwd_12_0,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_13_0,
    output wire [31:0] out_intel_reserved_ffwd_14_0,
    output wire [31:0] out_intel_reserved_ffwd_15_0,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    output wire [31:0] out_intel_reserved_ffwd_17_0,
    output wire [31:0] out_intel_reserved_ffwd_18_0,
    output wire [31:0] out_intel_reserved_ffwd_19_0,
    output wire [31:0] out_intel_reserved_ffwd_20_0,
    output wire [31:0] out_intel_reserved_ffwd_21_0,
    output wire [31:0] out_intel_reserved_ffwd_22_0,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    output wire [31:0] out_intel_reserved_ffwd_24_0,
    output wire [31:0] out_intel_reserved_ffwd_25_0,
    output wire [31:0] out_intel_reserved_ffwd_26_0,
    output wire [31:0] out_intel_reserved_ffwd_27_0,
    output wire [31:0] out_intel_reserved_ffwd_28_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] dijkstra_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] dijkstra_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] dijkstra_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_11_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_12_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_13_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_14_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_15_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_17_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_18_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_19_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_21_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_22_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_24_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_25_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_26_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_27_0;
    wire [31:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_28_0;
    wire [0:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_c0_exit183_2_tpl;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_dijkstra_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_dijkstra_B3_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_dijkstra_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_dijkstra_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_dijkstra_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,39)
    assign bubble_join_stall_entry_q = in_forked139;

    // bubble_select_stall_entry(BITSELECT,40)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,49)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = dijkstra_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // dijkstra_B3_merge_reg_aunroll_x(BLACKBOX,18)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    dijkstra_B3_merge_reg thedijkstra_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_dijkstra_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(dijkstra_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(dijkstra_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(dijkstra_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_dijkstra_B3_merge_reg_aunroll_x(BITJOIN,43)
    assign bubble_join_dijkstra_B3_merge_reg_aunroll_x_q = dijkstra_B3_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_dijkstra_B3_merge_reg_aunroll_x(BITSELECT,44)
    assign bubble_select_dijkstra_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_dijkstra_B3_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_dijkstra_B3_merge_reg_aunroll_x(STALLENABLE,52)
    // Valid signal propagation
    assign SE_out_dijkstra_B3_merge_reg_aunroll_x_V0 = SE_out_dijkstra_B3_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_dijkstra_B3_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_o_stall | ~ (SE_out_dijkstra_B3_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_dijkstra_B3_merge_reg_aunroll_x_wireValid = dijkstra_B3_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x(STALLENABLE,54)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x(BLACKBOX,37)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_valid_out@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_intel_reserved_ffwd_25_0@20000000
    // out out_intel_reserved_ffwd_26_0@20000000
    // out out_intel_reserved_ffwd_27_0@20000000
    // out out_intel_reserved_ffwd_28_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit183_0_tpl@5
    // out out_c0_exit183_1_tpl@5
    // out out_c0_exit183_2_tpl@5
    dijkstra_i_sfc_s_c0_in_for_body_s_c0_enter1814_dijkstra1 thei_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_backStall),
        .in_i_valid(SE_out_dijkstra_B3_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_dijkstra_B3_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_stall_out(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_valid_out(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_valid_out),
        .out_intel_reserved_ffwd_11_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_28_0),
        .out_o_stall(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit183_0_tpl(),
        .out_c0_exit183_1_tpl(),
        .out_c0_exit183_2_tpl(i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_c0_exit183_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_valid_out = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_stall_out = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,12)
    assign out_intel_reserved_ffwd_11_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_11_0;

    // sync_out(GPOUT,16)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_12_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_12_0;

    // bubble_join_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x(BITJOIN,46)
    assign bubble_join_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_q = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_c0_exit183_2_tpl;

    // bubble_select_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x(BITSELECT,47)
    assign bubble_select_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,20)@5
    assign out_c0_exe2 = bubble_select_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_13_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_13_0;

    // dupName_2_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_14_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_14_0;

    // dupName_3_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_15_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_15_0;

    // dupName_4_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_16_0;

    // dupName_5_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_17_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_17_0;

    // dupName_6_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_18_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_18_0;

    // dupName_7_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_19_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_19_0;

    // dupName_8_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_20_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_20_0;

    // dupName_9_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_21_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_21_0;

    // dupName_10_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_22_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_22_0;

    // dupName_11_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_23_0;

    // dupName_12_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_24_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_24_0;

    // dupName_13_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_25_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_25_0;

    // dupName_14_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_26_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_26_0;

    // dupName_15_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_27_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_27_0;

    // dupName_16_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_28_0 = i_sfc_s_c0_in_for_body_dijkstras_c0_enter1814_dijkstra1_aunroll_x_out_intel_reserved_ffwd_28_0;

endmodule
