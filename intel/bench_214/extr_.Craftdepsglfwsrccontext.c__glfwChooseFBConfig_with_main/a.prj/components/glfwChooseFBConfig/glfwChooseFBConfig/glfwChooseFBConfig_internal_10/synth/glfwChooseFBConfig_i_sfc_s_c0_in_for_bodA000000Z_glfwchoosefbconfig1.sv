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

// SystemVerilog created from glfwChooseFBConfig_i_sfc_s_c0_in_for_bodA000000Z_glfwchoosefbconfig1
// SystemVerilog created on Sun May 24 22:29:58 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module glfwChooseFBConfig_i_sfc_s_c0_in_for_bodA000000Z_glfwchoosefbconfig1 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_19_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_3_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_4_tpl,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit121_0_tpl,
    output wire [0:0] out_c0_exit121_1_tpl,
    output wire [0:0] out_c0_exit121_2_tpl,
    output wire [63:0] out_c0_exit121_3_tpl,
    output wire [63:0] out_c0_exit121_4_tpl,
    output wire [0:0] out_c0_exit121_5_tpl,
    output wire [63:0] out_c0_exit121_6_tpl,
    output wire [63:0] out_c0_exit121_7_tpl,
    output wire [63:0] out_c0_exit121_8_tpl,
    output wire [63:0] out_c0_exit121_9_tpl,
    output wire [63:0] out_c0_exit121_10_tpl,
    output wire [63:0] out_c0_exit121_11_tpl,
    output wire [63:0] out_c0_exit121_12_tpl,
    output wire [63:0] out_c0_exit121_13_tpl,
    output wire [63:0] out_c0_exit121_14_tpl,
    output wire [63:0] out_c0_exit121_15_tpl,
    output wire [63:0] out_c0_exit121_16_tpl,
    output wire [63:0] out_c0_exit121_17_tpl,
    output wire [63:0] out_c0_exit121_18_tpl,
    output wire [63:0] out_c0_exit121_19_tpl,
    output wire [0:0] out_c0_exit121_20_tpl,
    output wire [0:0] out_c0_exit121_21_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_enable;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_valid_mask;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_2_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_3_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_5_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_6_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_7_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_8_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_9_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_10_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_11_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_12_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_13_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_14_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_15_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_16_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_17_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_18_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_19_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_20_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_21_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_2_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_3_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_5_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_6_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_7_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_8_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_9_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_10_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_11_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_12_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_13_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_14_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_15_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_16_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_17_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_18_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_19_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_20_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_21_tpl;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,3)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_valid_mask);

    // input_accepted_and(LOGICAL,2)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x(BLACKBOX,13)@4
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    glfwChooseFBConfig_i_llvm_fpga_sfc_exit_A000001Z_glfwchoosefbconfig0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_21_tpl),
        .out_enable(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_enable),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_stall_entry),
        .out_valid_mask(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_valid_mask),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_21_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x(BLACKBOX,14)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_valid_out@20000000
    // out out_o_valid@4
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_glfwChooseFBConfig1@4
    // out out_c0_exi21_0_tpl@4
    // out out_c0_exi21_1_tpl@4
    // out out_c0_exi21_2_tpl@4
    // out out_c0_exi21_3_tpl@4
    // out out_c0_exi21_4_tpl@4
    // out out_c0_exi21_5_tpl@4
    // out out_c0_exi21_6_tpl@4
    // out out_c0_exi21_7_tpl@4
    // out out_c0_exi21_8_tpl@4
    // out out_c0_exi21_9_tpl@4
    // out out_c0_exi21_10_tpl@4
    // out out_c0_exi21_11_tpl@4
    // out out_c0_exi21_12_tpl@4
    // out out_c0_exi21_13_tpl@4
    // out out_c0_exi21_14_tpl@4
    // out out_c0_exi21_15_tpl@4
    // out out_c0_exi21_16_tpl@4
    // out out_c0_exi21_17_tpl@4
    // out out_c0_exi21_18_tpl@4
    // out out_c0_exi21_19_tpl@4
    // out out_c0_exi21_20_tpl@4
    // out out_c0_exi21_21_tpl@4
    glfwChooseFBConfig_i_sfc_logic_s_c0_in_fA000000Z_glfwchoosefbconfig0 thei_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x (
        .in_enable(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_enable),
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(in_c0_eni1_0_tpl),
        .in_c0_eni1_1_tpl(in_c0_eni1_1_tpl),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .in_intel_reserved_ffwd_0_0_3_tpl(in_intel_reserved_ffwd_0_0_3_tpl),
        .in_intel_reserved_ffwd_0_0_4_tpl(in_intel_reserved_ffwd_0_0_4_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_stall_out(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_valid_out(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_valid_out),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_glfwChooseFBConfig1(),
        .out_c0_exi21_0_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_0_tpl),
        .out_c0_exi21_1_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_1_tpl),
        .out_c0_exi21_2_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_2_tpl),
        .out_c0_exi21_3_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_3_tpl),
        .out_c0_exi21_4_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_4_tpl),
        .out_c0_exi21_5_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_5_tpl),
        .out_c0_exi21_6_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_6_tpl),
        .out_c0_exi21_7_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_7_tpl),
        .out_c0_exi21_8_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_8_tpl),
        .out_c0_exi21_9_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_9_tpl),
        .out_c0_exi21_10_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_10_tpl),
        .out_c0_exi21_11_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_11_tpl),
        .out_c0_exi21_12_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_12_tpl),
        .out_c0_exi21_13_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_13_tpl),
        .out_c0_exi21_14_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_14_tpl),
        .out_c0_exi21_15_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_15_tpl),
        .out_c0_exi21_16_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_16_tpl),
        .out_c0_exi21_17_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_17_tpl),
        .out_c0_exi21_18_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_18_tpl),
        .out_c0_exi21_19_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_19_tpl),
        .out_c0_exi21_20_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_20_tpl),
        .out_c0_exi21_21_tpl(i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_c0_exi21_21_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,5)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,9)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_stall_out = i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_stall_out;

    // sync_out(GPOUT,11)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,12)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_valid_out = i_sfc_logic_s_c0_in_for_body_glfwchoosefbconfigs_c0_enter1192_glfwchoosefbconfig0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_valid_out;

    // dupName_0_sync_out_aunroll_x(GPOUT,17)@4
    assign out_c0_exit121_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit121_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit121_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit121_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit121_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit121_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit121_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit121_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit121_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit121_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit121_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit121_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit121_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit121_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit121_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit121_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit121_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit121_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit121_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit121_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit121_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_20_tpl;
    assign out_c0_exit121_21_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_data_out_21_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit121_glfwchoosefbconfig1_aunroll_x_out_valid_out;

endmodule
