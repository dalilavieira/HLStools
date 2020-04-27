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

// SystemVerilog created from fir_bb_B11_stall_region
// SystemVerilog created on Mon Apr 27 09:47:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_bb_B11_stall_region (
    input wire [15:0] in_lm2_fir_avm_readdata,
    input wire [0:0] in_lm2_fir_avm_writeack,
    input wire [0:0] in_lm2_fir_avm_waitrequest,
    input wire [0:0] in_lm2_fir_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [31:0] in_j_027_pop2482,
    input wire [0:0] in_notcmp2481,
    input wire [0:0] in_notcmp2973_pop2583,
    input wire [0:0] in_notcmp2980,
    input wire [0:0] in_valid_in,
    input wire [15:0] in_lm121_fir_avm_readdata,
    input wire [0:0] in_lm121_fir_avm_writeack,
    input wire [0:0] in_lm121_fir_avm_waitrequest,
    input wire [0:0] in_lm121_fir_avm_readdatavalid,
    output wire [31:0] out_lm2_fir_avm_address,
    output wire [0:0] out_lm2_fir_avm_enable,
    output wire [0:0] out_lm2_fir_avm_read,
    output wire [0:0] out_lm2_fir_avm_write,
    output wire [15:0] out_lm2_fir_avm_writedata,
    output wire [1:0] out_lm2_fir_avm_byteenable,
    output wire [0:0] out_lm2_fir_avm_burstcount,
    output wire [31:0] out_c0_exe2133,
    output wire [15:0] out_c0_exe3134,
    output wire [0:0] out_c0_exe4135,
    output wire [0:0] out_c0_exe5136,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_lm121_fir_avm_address,
    output wire [0:0] out_lm121_fir_avm_enable,
    output wire [0:0] out_lm121_fir_avm_read,
    output wire [0:0] out_lm121_fir_avm_write,
    output wire [15:0] out_lm121_fir_avm_writedata,
    output wire [1:0] out_lm121_fir_avm_byteenable,
    output wire [0:0] out_lm121_fir_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] fir_B11_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] fir_B11_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] fir_B11_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] fir_B11_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] fir_B11_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] fir_B11_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] fir_B11_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_burstcount;
    wire [1:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_write;
    wire [15:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_burstcount;
    wire [1:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_write;
    wire [15:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_2_tpl;
    wire [15:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_6_tpl;
    wire [35:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [35:0] bubble_join_fir_B11_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_fir_B11_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_fir_B11_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_fir_B11_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_fir_B11_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_fir_B11_merge_reg_aunroll_x_f;
    wire [50:0] bubble_join_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_b;
    wire [15:0] bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_f;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_fir_B11_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_fir_B11_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_fir_B11_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,29)
    assign bubble_join_stall_entry_q = {in_notcmp2980, in_notcmp2973_pop2583, in_notcmp2481, in_j_027_pop2482, in_forked};

    // bubble_select_stall_entry(BITSELECT,30)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);

    // SE_stall_entry(STALLENABLE,39)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = fir_B11_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // fir_B11_merge_reg_aunroll_x(BLACKBOX,26)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    fir_B11_merge_reg thefir_B11_merge_reg_aunroll_x (
        .in_stall_in(SE_out_fir_B11_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_f),
        .in_data_in_2_tpl(bubble_select_stall_entry_d),
        .in_data_in_3_tpl(bubble_select_stall_entry_c),
        .in_data_in_4_tpl(bubble_select_stall_entry_e),
        .out_stall_out(fir_B11_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(fir_B11_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(fir_B11_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(fir_B11_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(fir_B11_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(fir_B11_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(fir_B11_merge_reg_aunroll_x_out_data_out_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_fir_B11_merge_reg_aunroll_x(BITJOIN,33)
    assign bubble_join_fir_B11_merge_reg_aunroll_x_q = {fir_B11_merge_reg_aunroll_x_out_data_out_4_tpl, fir_B11_merge_reg_aunroll_x_out_data_out_3_tpl, fir_B11_merge_reg_aunroll_x_out_data_out_2_tpl, fir_B11_merge_reg_aunroll_x_out_data_out_1_tpl, fir_B11_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_fir_B11_merge_reg_aunroll_x(BITSELECT,34)
    assign bubble_select_fir_B11_merge_reg_aunroll_x_b = $unsigned(bubble_join_fir_B11_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_fir_B11_merge_reg_aunroll_x_c = $unsigned(bubble_join_fir_B11_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_fir_B11_merge_reg_aunroll_x_d = $unsigned(bubble_join_fir_B11_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_fir_B11_merge_reg_aunroll_x_e = $unsigned(bubble_join_fir_B11_merge_reg_aunroll_x_q[34:3]);
    assign bubble_select_fir_B11_merge_reg_aunroll_x_f = $unsigned(bubble_join_fir_B11_merge_reg_aunroll_x_q[35:35]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_fir_B11_merge_reg_aunroll_x(STALLENABLE,42)
    // Valid signal propagation
    assign SE_out_fir_B11_merge_reg_aunroll_x_V0 = SE_out_fir_B11_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_fir_B11_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_o_stall | ~ (SE_out_fir_B11_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_fir_B11_merge_reg_aunroll_x_wireValid = fir_B11_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x(STALLENABLE,44)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x(BLACKBOX,27)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out@20000000
    // out out_lm121_fir_avm_address@20000000
    // out out_lm121_fir_avm_burstcount@20000000
    // out out_lm121_fir_avm_byteenable@20000000
    // out out_lm121_fir_avm_enable@20000000
    // out out_lm121_fir_avm_read@20000000
    // out out_lm121_fir_avm_write@20000000
    // out out_lm121_fir_avm_writedata@20000000
    // out out_lm2_fir_avm_address@20000000
    // out out_lm2_fir_avm_burstcount@20000000
    // out out_lm2_fir_avm_byteenable@20000000
    // out out_lm2_fir_avm_enable@20000000
    // out out_lm2_fir_avm_read@20000000
    // out out_lm2_fir_avm_write@20000000
    // out out_lm2_fir_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@13
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit131_0_tpl@13
    // out out_c0_exit131_1_tpl@13
    // out out_c0_exit131_2_tpl@13
    // out out_c0_exit131_3_tpl@13
    // out out_c0_exit131_4_tpl@13
    // out out_c0_exit131_5_tpl@13
    // out out_c0_exit131_6_tpl@13
    // out out_c0_exit131_7_tpl@13
    fir_i_sfc_s_c0_in_for_body26_s_c0_enter12311_fir1 thei_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_backStall),
        .in_i_valid(SE_out_fir_B11_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_lm121_fir_avm_readdata(in_lm121_fir_avm_readdata),
        .in_lm121_fir_avm_readdatavalid(in_lm121_fir_avm_readdatavalid),
        .in_lm121_fir_avm_waitrequest(in_lm121_fir_avm_waitrequest),
        .in_lm121_fir_avm_writeack(in_lm121_fir_avm_writeack),
        .in_lm2_fir_avm_readdata(in_lm2_fir_avm_readdata),
        .in_lm2_fir_avm_readdatavalid(in_lm2_fir_avm_readdatavalid),
        .in_lm2_fir_avm_waitrequest(in_lm2_fir_avm_waitrequest),
        .in_lm2_fir_avm_writeack(in_lm2_fir_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(bubble_select_fir_B11_merge_reg_aunroll_x_b),
        .in_c0_eni5_2_tpl(bubble_select_fir_B11_merge_reg_aunroll_x_e),
        .in_c0_eni5_3_tpl(bubble_select_fir_B11_merge_reg_aunroll_x_f),
        .in_c0_eni5_4_tpl(bubble_select_fir_B11_merge_reg_aunroll_x_d),
        .in_c0_eni5_5_tpl(bubble_select_fir_B11_merge_reg_aunroll_x_c),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out),
        .out_lm121_fir_avm_address(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_address),
        .out_lm121_fir_avm_burstcount(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_burstcount),
        .out_lm121_fir_avm_byteenable(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_byteenable),
        .out_lm121_fir_avm_enable(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_enable),
        .out_lm121_fir_avm_read(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_read),
        .out_lm121_fir_avm_write(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_write),
        .out_lm121_fir_avm_writedata(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_writedata),
        .out_lm2_fir_avm_address(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_address),
        .out_lm2_fir_avm_burstcount(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_burstcount),
        .out_lm2_fir_avm_byteenable(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_byteenable),
        .out_lm2_fir_avm_enable(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_enable),
        .out_lm2_fir_avm_read(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_read),
        .out_lm2_fir_avm_write(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_write),
        .out_lm2_fir_avm_writedata(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit131_0_tpl(),
        .out_c0_exit131_1_tpl(),
        .out_c0_exit131_2_tpl(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_2_tpl),
        .out_c0_exit131_3_tpl(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_3_tpl),
        .out_c0_exit131_4_tpl(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_4_tpl),
        .out_c0_exit131_5_tpl(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_5_tpl),
        .out_c0_exit131_6_tpl(i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_6_tpl),
        .out_c0_exit131_7_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,20)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,23)
    assign out_lm2_fir_avm_address = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_address;
    assign out_lm2_fir_avm_enable = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_enable;
    assign out_lm2_fir_avm_read = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_read;
    assign out_lm2_fir_avm_write = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_write;
    assign out_lm2_fir_avm_writedata = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_writedata;
    assign out_lm2_fir_avm_byteenable = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_byteenable;
    assign out_lm2_fir_avm_burstcount = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm2_fir_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x(BITJOIN,36)
    assign bubble_join_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_q = {i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_6_tpl, i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_5_tpl, i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_4_tpl, i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_3_tpl, i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_c0_exit131_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x(BITSELECT,37)
    assign bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_q[47:32]);
    assign bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_q[48:48]);
    assign bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_q[49:49]);
    assign bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_q[50:50]);

    // dupName_0_sync_out_x(GPOUT,24)@13
    assign out_c0_exe2133 = bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_b;
    assign out_c0_exe3134 = bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_c;
    assign out_c0_exe4135 = bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_d;
    assign out_c0_exe5136 = bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_e;
    assign out_c0_exe6 = bubble_select_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_f;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,25)
    assign out_lm121_fir_avm_address = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_address;
    assign out_lm121_fir_avm_enable = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_enable;
    assign out_lm121_fir_avm_read = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_read;
    assign out_lm121_fir_avm_write = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_write;
    assign out_lm121_fir_avm_writedata = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_writedata;
    assign out_lm121_fir_avm_byteenable = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_byteenable;
    assign out_lm121_fir_avm_burstcount = i_sfc_s_c0_in_for_body26_firs_c0_enter12311_fir1_aunroll_x_out_lm121_fir_avm_burstcount;

endmodule
