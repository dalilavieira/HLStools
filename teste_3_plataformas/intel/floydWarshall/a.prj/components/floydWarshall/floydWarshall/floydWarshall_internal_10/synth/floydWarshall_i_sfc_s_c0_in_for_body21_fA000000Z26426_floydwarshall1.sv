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

// SystemVerilog created from floydWarshall_i_sfc_s_c0_in_for_body21_fA000000Z26426_floydwarshall1
// SystemVerilog created on Mon Apr  6 10:18:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_i_sfc_s_c0_in_for_body21_fA000000Z26426_floydwarshall1 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_17_0,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_35_0,
    output wire [31:0] out_intel_reserved_ffwd_36_0,
    output wire [31:0] out_intel_reserved_ffwd_37_0,
    output wire [31:0] out_intel_reserved_ffwd_38_0,
    output wire [31:0] out_intel_reserved_ffwd_39_0,
    output wire [31:0] out_intel_reserved_ffwd_40_0,
    output wire [31:0] out_intel_reserved_ffwd_41_0,
    output wire [31:0] out_intel_reserved_ffwd_42_0,
    output wire [31:0] out_intel_reserved_ffwd_43_0,
    output wire [31:0] out_intel_reserved_ffwd_44_0,
    output wire [31:0] out_intel_reserved_ffwd_45_0,
    output wire [31:0] out_intel_reserved_ffwd_46_0,
    output wire [31:0] out_intel_reserved_ffwd_47_0,
    output wire [31:0] out_intel_reserved_ffwd_48_0,
    output wire [31:0] out_intel_reserved_ffwd_49_0,
    output wire [31:0] out_intel_reserved_ffwd_50_0,
    input wire [0:0] in_c0_eni22_0_tpl,
    input wire [0:0] in_c0_eni22_1_tpl,
    input wire [31:0] in_c0_eni22_2_tpl,
    input wire [31:0] in_c0_eni22_3_tpl,
    input wire [31:0] in_c0_eni22_4_tpl,
    input wire [31:0] in_c0_eni22_5_tpl,
    input wire [31:0] in_c0_eni22_6_tpl,
    input wire [31:0] in_c0_eni22_7_tpl,
    input wire [31:0] in_c0_eni22_8_tpl,
    input wire [31:0] in_c0_eni22_9_tpl,
    input wire [31:0] in_c0_eni22_10_tpl,
    input wire [31:0] in_c0_eni22_11_tpl,
    input wire [31:0] in_c0_eni22_12_tpl,
    input wire [31:0] in_c0_eni22_13_tpl,
    input wire [31:0] in_c0_eni22_14_tpl,
    input wire [31:0] in_c0_eni22_15_tpl,
    input wire [31:0] in_c0_eni22_16_tpl,
    input wire [31:0] in_c0_eni22_17_tpl,
    input wire [31:0] in_c0_eni22_18_tpl,
    input wire [31:0] in_c0_eni22_19_tpl,
    input wire [0:0] in_c0_eni22_20_tpl,
    input wire [0:0] in_c0_eni22_21_tpl,
    input wire [31:0] in_c0_eni22_22_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit276_0_tpl,
    output wire [0:0] out_c0_exit276_1_tpl,
    output wire [31:0] out_c0_exit276_2_tpl,
    output wire [31:0] out_c0_exit276_3_tpl,
    output wire [31:0] out_c0_exit276_4_tpl,
    output wire [31:0] out_c0_exit276_5_tpl,
    output wire [31:0] out_c0_exit276_6_tpl,
    output wire [31:0] out_c0_exit276_7_tpl,
    output wire [31:0] out_c0_exit276_8_tpl,
    output wire [31:0] out_c0_exit276_9_tpl,
    output wire [31:0] out_c0_exit276_10_tpl,
    output wire [31:0] out_c0_exit276_11_tpl,
    output wire [31:0] out_c0_exit276_12_tpl,
    output wire [31:0] out_c0_exit276_13_tpl,
    output wire [31:0] out_c0_exit276_14_tpl,
    output wire [31:0] out_c0_exit276_15_tpl,
    output wire [31:0] out_c0_exit276_16_tpl,
    output wire [31:0] out_c0_exit276_17_tpl,
    output wire [0:0] out_c0_exit276_18_tpl,
    output wire [31:0] out_c0_exit276_19_tpl,
    output wire [0:0] out_c0_exit276_20_tpl,
    output wire [0:0] out_c0_exit276_21_tpl,
    output wire [31:0] out_c0_exit276_22_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_3_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_4_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_5_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_6_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_8_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_9_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_10_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_11_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_12_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_13_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_14_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_15_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_16_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_17_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_18_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_19_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_20_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_21_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_22_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_35_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_36_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_37_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_38_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_39_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_40_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_41_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_42_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_43_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_44_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_45_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_46_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_47_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_48_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_49_0;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_50_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_1_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_2_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_3_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_4_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_5_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_6_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_7_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_8_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_9_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_10_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_11_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_12_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_13_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_14_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_15_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_16_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_17_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_18_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_19_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_20_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_21_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_22_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x(BLACKBOX,28)@3
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@6
    // out out_data_out_0_tpl@6
    // out out_data_out_1_tpl@6
    // out out_data_out_2_tpl@6
    // out out_data_out_3_tpl@6
    // out out_data_out_4_tpl@6
    // out out_data_out_5_tpl@6
    // out out_data_out_6_tpl@6
    // out out_data_out_7_tpl@6
    // out out_data_out_8_tpl@6
    // out out_data_out_9_tpl@6
    // out out_data_out_10_tpl@6
    // out out_data_out_11_tpl@6
    // out out_data_out_12_tpl@6
    // out out_data_out_13_tpl@6
    // out out_data_out_14_tpl@6
    // out out_data_out_15_tpl@6
    // out out_data_out_16_tpl@6
    // out out_data_out_17_tpl@6
    // out out_data_out_18_tpl@6
    // out out_data_out_19_tpl@6
    // out out_data_out_20_tpl@6
    // out out_data_out_21_tpl@6
    // out out_data_out_22_tpl@6
    floydWarshall_i_llvm_fpga_sfc_exit_s_c0_A000000Zit276_floydwarshall0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_21_tpl),
        .in_data_in_22_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_22_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_22_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x(BLACKBOX,29)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out@20000000
    // out out_intel_reserved_ffwd_35_0@20000000
    // out out_intel_reserved_ffwd_36_0@20000000
    // out out_intel_reserved_ffwd_37_0@20000000
    // out out_intel_reserved_ffwd_38_0@20000000
    // out out_intel_reserved_ffwd_39_0@20000000
    // out out_intel_reserved_ffwd_40_0@20000000
    // out out_intel_reserved_ffwd_41_0@20000000
    // out out_intel_reserved_ffwd_42_0@20000000
    // out out_intel_reserved_ffwd_43_0@20000000
    // out out_intel_reserved_ffwd_44_0@20000000
    // out out_intel_reserved_ffwd_45_0@20000000
    // out out_intel_reserved_ffwd_46_0@20000000
    // out out_intel_reserved_ffwd_47_0@20000000
    // out out_intel_reserved_ffwd_48_0@20000000
    // out out_intel_reserved_ffwd_49_0@20000000
    // out out_intel_reserved_ffwd_50_0@20000000
    // out out_o_valid@3
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_floydWarshall1@3
    // out out_c0_exi22_0_tpl@3
    // out out_c0_exi22_1_tpl@3
    // out out_c0_exi22_2_tpl@3
    // out out_c0_exi22_3_tpl@3
    // out out_c0_exi22_4_tpl@3
    // out out_c0_exi22_5_tpl@3
    // out out_c0_exi22_6_tpl@3
    // out out_c0_exi22_7_tpl@3
    // out out_c0_exi22_8_tpl@3
    // out out_c0_exi22_9_tpl@3
    // out out_c0_exi22_10_tpl@3
    // out out_c0_exi22_11_tpl@3
    // out out_c0_exi22_12_tpl@3
    // out out_c0_exi22_13_tpl@3
    // out out_c0_exi22_14_tpl@3
    // out out_c0_exi22_15_tpl@3
    // out out_c0_exi22_16_tpl@3
    // out out_c0_exi22_17_tpl@3
    // out out_c0_exi22_18_tpl@3
    // out out_c0_exi22_19_tpl@3
    // out out_c0_exi22_20_tpl@3
    // out out_c0_exi22_21_tpl@3
    // out out_c0_exi22_22_tpl@3
    floydWarshall_i_sfc_logic_s_c0_in_for_boA000000Z26426_floydwarshall0 thei_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni22_0_tpl(in_c0_eni22_0_tpl),
        .in_c0_eni22_1_tpl(in_c0_eni22_1_tpl),
        .in_c0_eni22_2_tpl(in_c0_eni22_2_tpl),
        .in_c0_eni22_3_tpl(in_c0_eni22_3_tpl),
        .in_c0_eni22_4_tpl(in_c0_eni22_4_tpl),
        .in_c0_eni22_5_tpl(in_c0_eni22_5_tpl),
        .in_c0_eni22_6_tpl(in_c0_eni22_6_tpl),
        .in_c0_eni22_7_tpl(in_c0_eni22_7_tpl),
        .in_c0_eni22_8_tpl(in_c0_eni22_8_tpl),
        .in_c0_eni22_9_tpl(in_c0_eni22_9_tpl),
        .in_c0_eni22_10_tpl(in_c0_eni22_10_tpl),
        .in_c0_eni22_11_tpl(in_c0_eni22_11_tpl),
        .in_c0_eni22_12_tpl(in_c0_eni22_12_tpl),
        .in_c0_eni22_13_tpl(in_c0_eni22_13_tpl),
        .in_c0_eni22_14_tpl(in_c0_eni22_14_tpl),
        .in_c0_eni22_15_tpl(in_c0_eni22_15_tpl),
        .in_c0_eni22_16_tpl(in_c0_eni22_16_tpl),
        .in_c0_eni22_17_tpl(in_c0_eni22_17_tpl),
        .in_c0_eni22_18_tpl(in_c0_eni22_18_tpl),
        .in_c0_eni22_19_tpl(in_c0_eni22_19_tpl),
        .in_c0_eni22_20_tpl(in_c0_eni22_20_tpl),
        .in_c0_eni22_21_tpl(in_c0_eni22_21_tpl),
        .in_c0_eni22_22_tpl(in_c0_eni22_22_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out),
        .out_intel_reserved_ffwd_35_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_50_0(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_50_0),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_floydWarshall1(),
        .out_c0_exi22_0_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_0_tpl),
        .out_c0_exi22_1_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_1_tpl),
        .out_c0_exi22_2_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_2_tpl),
        .out_c0_exi22_3_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_3_tpl),
        .out_c0_exi22_4_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_4_tpl),
        .out_c0_exi22_5_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_5_tpl),
        .out_c0_exi22_6_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_6_tpl),
        .out_c0_exi22_7_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_7_tpl),
        .out_c0_exi22_8_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_8_tpl),
        .out_c0_exi22_9_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_9_tpl),
        .out_c0_exi22_10_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_10_tpl),
        .out_c0_exi22_11_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_11_tpl),
        .out_c0_exi22_12_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_12_tpl),
        .out_c0_exi22_13_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_13_tpl),
        .out_c0_exi22_14_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_14_tpl),
        .out_c0_exi22_15_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_15_tpl),
        .out_c0_exi22_16_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_16_tpl),
        .out_c0_exi22_17_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_17_tpl),
        .out_c0_exi22_18_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_18_tpl),
        .out_c0_exi22_19_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_19_tpl),
        .out_c0_exi22_20_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_20_tpl),
        .out_c0_exi22_21_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_21_tpl),
        .out_c0_exi22_22_tpl(i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_c0_exi22_22_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_stall_out;

    // sync_out(GPOUT,10)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,11)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_floydwarshall6_exiting_valid_out;

    // dupName_1_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_35_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_35_0;

    // dupName_2_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_36_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_36_0;

    // dupName_3_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_37_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_37_0;

    // dupName_4_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_38_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_38_0;

    // dupName_5_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_39_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_39_0;

    // dupName_6_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_40_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_40_0;

    // dupName_7_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_41_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_41_0;

    // dupName_8_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_42_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_42_0;

    // dupName_9_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_43_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_43_0;

    // dupName_10_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_44_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_44_0;

    // dupName_11_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_45_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_45_0;

    // dupName_12_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_46_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_46_0;

    // dupName_13_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_47_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_47_0;

    // dupName_14_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_48_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_48_0;

    // dupName_15_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_49_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_49_0;

    // dupName_16_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_50_0 = i_sfc_logic_s_c0_in_for_body21_floydwarshalls_c0_enter26426_floydwarshall0_aunroll_x_out_intel_reserved_ffwd_50_0;

    // dupName_0_sync_out_aunroll_x(GPOUT,31)@6
    assign out_c0_exit276_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit276_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit276_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit276_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit276_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit276_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit276_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit276_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit276_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit276_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit276_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit276_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit276_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit276_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit276_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit276_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit276_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit276_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit276_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit276_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit276_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_20_tpl;
    assign out_c0_exit276_21_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_21_tpl;
    assign out_c0_exit276_22_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_data_out_22_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body21_floydwarshalls_c0_exit276_floydwarshall1_aunroll_x_out_valid_out;

endmodule
