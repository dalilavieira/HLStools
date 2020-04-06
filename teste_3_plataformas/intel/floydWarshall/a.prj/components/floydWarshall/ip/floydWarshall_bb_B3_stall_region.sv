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

// SystemVerilog created from floydWarshall_bb_B3_stall_region
// SystemVerilog created on Mon Apr  6 10:28:01 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_bb_B3_stall_region (
    input wire [63:0] in_unnamed_floydWarshall4_floydWarshall_avm_readdata,
    input wire [0:0] in_unnamed_floydWarshall4_floydWarshall_avm_writeack,
    input wire [0:0] in_unnamed_floydWarshall4_floydWarshall_avm_waitrequest,
    input wire [0:0] in_unnamed_floydWarshall4_floydWarshall_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond3184,
    input wire [0:0] in_forked102,
    input wire [0:0] in_forked141183,
    input wire [31:0] in_i_030_pop13186,
    input wire [0:0] in_notcmp133185,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_unnamed_floydWarshall4_floydWarshall_avm_address,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_enable,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_read,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_write,
    output wire [63:0] out_unnamed_floydWarshall4_floydWarshall_avm_writedata,
    output wire [7:0] out_unnamed_floydWarshall4_floydWarshall_avm_byteenable,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    output wire [0:0] out_c0_exe2243,
    output wire [0:0] out_c0_exe3244,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_12_0,
    output wire [31:0] out_intel_reserved_ffwd_13_0,
    output wire [31:0] out_intel_reserved_ffwd_14_0,
    output wire [31:0] out_intel_reserved_ffwd_15_0,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] floydWarshall_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] floydWarshall_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] floydWarshall_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] floydWarshall_B3_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] floydWarshall_B3_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] floydWarshall_B3_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] floydWarshall_B3_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_10_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_11_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_12_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_13_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_14_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_15_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_8_0;
    wire [31:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_pipeline_valid_out;
    wire [63:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_burstcount;
    wire [7:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_write;
    wire [63:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_c0_exit241_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_c0_exit241_3_tpl;
    wire [35:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [35:0] bubble_join_floydWarshall_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_floydWarshall_B3_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_floydWarshall_B3_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_floydWarshall_B3_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_floydWarshall_B3_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_floydWarshall_B3_merge_reg_aunroll_x_f;
    wire [1:0] bubble_join_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_c;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_floydWarshall_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_floydWarshall_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_floydWarshall_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,41)
    assign bubble_join_stall_entry_q = {in_notcmp133185, in_i_030_pop13186, in_forked141183, in_forked102, in_exitcond3184};

    // bubble_select_stall_entry(BITSELECT,42)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);

    // SE_stall_entry(STALLENABLE,51)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = floydWarshall_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // floydWarshall_B3_merge_reg_aunroll_x(BLACKBOX,38)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    floydWarshall_B3_merge_reg thefloydWarshall_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_floydWarshall_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_b),
        .in_data_in_3_tpl(bubble_select_stall_entry_f),
        .in_data_in_4_tpl(bubble_select_stall_entry_e),
        .out_stall_out(floydWarshall_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(floydWarshall_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(floydWarshall_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(floydWarshall_B3_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(floydWarshall_B3_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(floydWarshall_B3_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(floydWarshall_B3_merge_reg_aunroll_x_out_data_out_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_floydWarshall_B3_merge_reg_aunroll_x(BITJOIN,45)
    assign bubble_join_floydWarshall_B3_merge_reg_aunroll_x_q = {floydWarshall_B3_merge_reg_aunroll_x_out_data_out_4_tpl, floydWarshall_B3_merge_reg_aunroll_x_out_data_out_3_tpl, floydWarshall_B3_merge_reg_aunroll_x_out_data_out_2_tpl, floydWarshall_B3_merge_reg_aunroll_x_out_data_out_1_tpl, floydWarshall_B3_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_floydWarshall_B3_merge_reg_aunroll_x(BITSELECT,46)
    assign bubble_select_floydWarshall_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_floydWarshall_B3_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_floydWarshall_B3_merge_reg_aunroll_x_c = $unsigned(bubble_join_floydWarshall_B3_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_floydWarshall_B3_merge_reg_aunroll_x_d = $unsigned(bubble_join_floydWarshall_B3_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_floydWarshall_B3_merge_reg_aunroll_x_e = $unsigned(bubble_join_floydWarshall_B3_merge_reg_aunroll_x_q[3:3]);
    assign bubble_select_floydWarshall_B3_merge_reg_aunroll_x_f = $unsigned(bubble_join_floydWarshall_B3_merge_reg_aunroll_x_q[35:4]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_floydWarshall_B3_merge_reg_aunroll_x(STALLENABLE,54)
    // Valid signal propagation
    assign SE_out_floydWarshall_B3_merge_reg_aunroll_x_V0 = SE_out_floydWarshall_B3_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_floydWarshall_B3_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_o_stall | ~ (SE_out_floydWarshall_B3_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_floydWarshall_B3_merge_reg_aunroll_x_wireValid = floydWarshall_B3_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x(STALLENABLE,56)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x(BLACKBOX,39)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_valid_out@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@11
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_floydWarshall4_floydWarshall_avm_address@20000000
    // out out_unnamed_floydWarshall4_floydWarshall_avm_burstcount@20000000
    // out out_unnamed_floydWarshall4_floydWarshall_avm_byteenable@20000000
    // out out_unnamed_floydWarshall4_floydWarshall_avm_enable@20000000
    // out out_unnamed_floydWarshall4_floydWarshall_avm_read@20000000
    // out out_unnamed_floydWarshall4_floydWarshall_avm_write@20000000
    // out out_unnamed_floydWarshall4_floydWarshall_avm_writedata@20000000
    // out out_c0_exit241_0_tpl@11
    // out out_c0_exit241_1_tpl@11
    // out out_c0_exit241_2_tpl@11
    // out out_c0_exit241_3_tpl@11
    floydWarshall_i_sfc_s_c0_in_for_body3_flA000000Z23624_floydwarshall1 thei_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_backStall),
        .in_i_valid(SE_out_floydWarshall_B3_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_floydWarshall4_floydWarshall_avm_readdata(in_unnamed_floydWarshall4_floydWarshall_avm_readdata),
        .in_unnamed_floydWarshall4_floydWarshall_avm_readdatavalid(in_unnamed_floydWarshall4_floydWarshall_avm_readdatavalid),
        .in_unnamed_floydWarshall4_floydWarshall_avm_waitrequest(in_unnamed_floydWarshall4_floydWarshall_avm_waitrequest),
        .in_unnamed_floydWarshall4_floydWarshall_avm_writeack(in_unnamed_floydWarshall4_floydWarshall_avm_writeack),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(bubble_select_floydWarshall_B3_merge_reg_aunroll_x_c),
        .in_c0_eni5_2_tpl(bubble_select_floydWarshall_B3_merge_reg_aunroll_x_b),
        .in_c0_eni5_3_tpl(bubble_select_floydWarshall_B3_merge_reg_aunroll_x_d),
        .in_c0_eni5_4_tpl(bubble_select_floydWarshall_B3_merge_reg_aunroll_x_f),
        .in_c0_eni5_5_tpl(bubble_select_floydWarshall_B3_merge_reg_aunroll_x_e),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_stall_out(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_valid_out(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_valid_out),
        .out_intel_reserved_ffwd_10_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_9_0),
        .out_o_stall(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_floydWarshall4_floydWarshall_avm_address(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_address),
        .out_unnamed_floydWarshall4_floydWarshall_avm_burstcount(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_burstcount),
        .out_unnamed_floydWarshall4_floydWarshall_avm_byteenable(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_byteenable),
        .out_unnamed_floydWarshall4_floydWarshall_avm_enable(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_enable),
        .out_unnamed_floydWarshall4_floydWarshall_avm_read(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_read),
        .out_unnamed_floydWarshall4_floydWarshall_avm_write(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_write),
        .out_unnamed_floydWarshall4_floydWarshall_avm_writedata(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_writedata),
        .out_c0_exit241_0_tpl(),
        .out_c0_exit241_1_tpl(),
        .out_c0_exit241_2_tpl(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_c0_exit241_2_tpl),
        .out_c0_exit241_3_tpl(i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_c0_exit241_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_valid_out = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_stall_out = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,15)
    assign out_intel_reserved_ffwd_10_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_10_0;

    // sync_out(GPOUT,19)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,21)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_address = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_address;
    assign out_unnamed_floydWarshall4_floydWarshall_avm_enable = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_enable;
    assign out_unnamed_floydWarshall4_floydWarshall_avm_read = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_read;
    assign out_unnamed_floydWarshall4_floydWarshall_avm_write = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_write;
    assign out_unnamed_floydWarshall4_floydWarshall_avm_writedata = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_writedata;
    assign out_unnamed_floydWarshall4_floydWarshall_avm_byteenable = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_byteenable;
    assign out_unnamed_floydWarshall4_floydWarshall_avm_burstcount = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_unnamed_floydWarshall4_floydWarshall_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_11_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_11_0;

    // bubble_join_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x(BITJOIN,48)
    assign bubble_join_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_q = {i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_c0_exit241_3_tpl, i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_c0_exit241_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x(BITSELECT,49)
    assign bubble_select_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_q[1:1]);

    // dupName_0_sync_out_x(GPOUT,23)@11
    assign out_c0_exe2243 = bubble_select_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_b;
    assign out_c0_exe3244 = bubble_select_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_c;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_12_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_12_0;

    // dupName_2_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_13_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_13_0;

    // dupName_3_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_14_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_14_0;

    // dupName_4_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_15_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_15_0;

    // dupName_5_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_16_0;

    // dupName_6_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_1_0;

    // dupName_7_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_8_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_9_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_4_0;

    // dupName_10_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_5_0;

    // dupName_11_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_6_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_6_0;

    // dupName_12_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_7_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_7_0;

    // dupName_13_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_8_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_8_0;

    // dupName_14_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_9_0 = i_sfc_s_c0_in_for_body3_floydwarshalls_c0_enter23624_floydwarshall1_aunroll_x_out_intel_reserved_ffwd_9_0;

endmodule
