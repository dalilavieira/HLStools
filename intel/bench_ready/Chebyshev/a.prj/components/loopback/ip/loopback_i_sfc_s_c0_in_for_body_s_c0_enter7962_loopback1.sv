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

// SystemVerilog created from loopback_i_sfc_s_c0_in_for_body_s_c0_enter7962_loopback1
// SystemVerilog created on Sun Apr 19 21:17:08 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loopback_i_sfc_s_c0_in_for_body_s_c0_enter7962_loopback1 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_valid_out,
    output wire [15:0] out_intel_reserved_ffwd_10_0,
    output wire [15:0] out_intel_reserved_ffwd_11_0,
    output wire [15:0] out_intel_reserved_ffwd_12_0,
    output wire [15:0] out_intel_reserved_ffwd_13_0,
    output wire [15:0] out_intel_reserved_ffwd_14_0,
    output wire [15:0] out_intel_reserved_ffwd_15_0,
    output wire [15:0] out_intel_reserved_ffwd_16_0,
    output wire [15:0] out_intel_reserved_ffwd_17_0,
    output wire [15:0] out_intel_reserved_ffwd_18_0,
    output wire [15:0] out_intel_reserved_ffwd_19_0,
    output wire [15:0] out_intel_reserved_ffwd_1_0,
    output wire [15:0] out_intel_reserved_ffwd_20_0,
    output wire [15:0] out_intel_reserved_ffwd_21_0,
    output wire [15:0] out_intel_reserved_ffwd_22_0,
    output wire [15:0] out_intel_reserved_ffwd_23_0,
    output wire [15:0] out_intel_reserved_ffwd_24_0,
    output wire [15:0] out_intel_reserved_ffwd_25_0,
    output wire [15:0] out_intel_reserved_ffwd_26_0,
    output wire [15:0] out_intel_reserved_ffwd_27_0,
    output wire [15:0] out_intel_reserved_ffwd_28_0,
    output wire [15:0] out_intel_reserved_ffwd_29_0,
    output wire [15:0] out_intel_reserved_ffwd_2_0,
    output wire [15:0] out_intel_reserved_ffwd_30_0,
    output wire [15:0] out_intel_reserved_ffwd_31_0,
    output wire [15:0] out_intel_reserved_ffwd_32_0,
    output wire [15:0] out_intel_reserved_ffwd_33_0,
    output wire [15:0] out_intel_reserved_ffwd_34_0,
    output wire [15:0] out_intel_reserved_ffwd_35_0,
    output wire [15:0] out_intel_reserved_ffwd_36_0,
    output wire [15:0] out_intel_reserved_ffwd_37_0,
    output wire [15:0] out_intel_reserved_ffwd_38_0,
    output wire [15:0] out_intel_reserved_ffwd_39_0,
    output wire [15:0] out_intel_reserved_ffwd_3_0,
    output wire [15:0] out_intel_reserved_ffwd_40_0,
    output wire [15:0] out_intel_reserved_ffwd_41_0,
    output wire [15:0] out_intel_reserved_ffwd_42_0,
    output wire [15:0] out_intel_reserved_ffwd_43_0,
    output wire [15:0] out_intel_reserved_ffwd_44_0,
    output wire [15:0] out_intel_reserved_ffwd_45_0,
    output wire [15:0] out_intel_reserved_ffwd_46_0,
    output wire [15:0] out_intel_reserved_ffwd_47_0,
    output wire [15:0] out_intel_reserved_ffwd_48_0,
    output wire [15:0] out_intel_reserved_ffwd_49_0,
    output wire [15:0] out_intel_reserved_ffwd_4_0,
    output wire [15:0] out_intel_reserved_ffwd_50_0,
    output wire [15:0] out_intel_reserved_ffwd_51_0,
    output wire [15:0] out_intel_reserved_ffwd_52_0,
    output wire [15:0] out_intel_reserved_ffwd_53_0,
    output wire [15:0] out_intel_reserved_ffwd_54_0,
    output wire [15:0] out_intel_reserved_ffwd_55_0,
    output wire [15:0] out_intel_reserved_ffwd_56_0,
    output wire [15:0] out_intel_reserved_ffwd_57_0,
    output wire [15:0] out_intel_reserved_ffwd_58_0,
    output wire [15:0] out_intel_reserved_ffwd_59_0,
    output wire [15:0] out_intel_reserved_ffwd_5_0,
    output wire [15:0] out_intel_reserved_ffwd_60_0,
    output wire [15:0] out_intel_reserved_ffwd_61_0,
    output wire [15:0] out_intel_reserved_ffwd_62_0,
    output wire [15:0] out_intel_reserved_ffwd_63_0,
    output wire [15:0] out_intel_reserved_ffwd_64_0,
    output wire [15:0] out_intel_reserved_ffwd_6_0,
    output wire [15:0] out_intel_reserved_ffwd_7_0,
    output wire [15:0] out_intel_reserved_ffwd_8_0,
    output wire [15:0] out_intel_reserved_ffwd_9_0,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit798_0_tpl,
    output wire [0:0] out_c0_exit798_1_tpl,
    output wire [0:0] out_c0_exit798_2_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_valid_out;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_10_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_11_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_12_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_13_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_14_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_15_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_17_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_18_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_19_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_21_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_22_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_24_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_25_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_26_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_27_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_28_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_29_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_30_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_31_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_32_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_33_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_34_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_35_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_36_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_37_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_38_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_39_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_40_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_41_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_42_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_43_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_44_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_45_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_46_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_47_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_48_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_49_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_50_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_51_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_52_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_53_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_54_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_55_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_56_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_57_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_58_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_59_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_60_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_61_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_62_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_63_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_64_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_8_0;
    wire [15:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_c0_exi2_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_c0_exi2_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_c0_exi2_2_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x(BLACKBOX,75)@2
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@5
    // out out_data_out_0_tpl@5
    // out out_data_out_1_tpl@5
    // out out_data_out_2_tpl@5
    loopback_i_llvm_fpga_sfc_exit_s_c0_out_fA000000Zc0_exit798_loopback0 thei_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_c0_exi2_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_c0_exi2_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_c0_exi2_2_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_data_out_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x(BLACKBOX,76)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_valid_out@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_intel_reserved_ffwd_25_0@20000000
    // out out_intel_reserved_ffwd_26_0@20000000
    // out out_intel_reserved_ffwd_27_0@20000000
    // out out_intel_reserved_ffwd_28_0@20000000
    // out out_intel_reserved_ffwd_29_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_30_0@20000000
    // out out_intel_reserved_ffwd_31_0@20000000
    // out out_intel_reserved_ffwd_32_0@20000000
    // out out_intel_reserved_ffwd_33_0@20000000
    // out out_intel_reserved_ffwd_34_0@20000000
    // out out_intel_reserved_ffwd_35_0@20000000
    // out out_intel_reserved_ffwd_36_0@20000000
    // out out_intel_reserved_ffwd_37_0@20000000
    // out out_intel_reserved_ffwd_38_0@20000000
    // out out_intel_reserved_ffwd_39_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
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
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_intel_reserved_ffwd_50_0@20000000
    // out out_intel_reserved_ffwd_51_0@20000000
    // out out_intel_reserved_ffwd_52_0@20000000
    // out out_intel_reserved_ffwd_53_0@20000000
    // out out_intel_reserved_ffwd_54_0@20000000
    // out out_intel_reserved_ffwd_55_0@20000000
    // out out_intel_reserved_ffwd_56_0@20000000
    // out out_intel_reserved_ffwd_57_0@20000000
    // out out_intel_reserved_ffwd_58_0@20000000
    // out out_intel_reserved_ffwd_59_0@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_intel_reserved_ffwd_60_0@20000000
    // out out_intel_reserved_ffwd_61_0@20000000
    // out out_intel_reserved_ffwd_62_0@20000000
    // out out_intel_reserved_ffwd_63_0@20000000
    // out out_intel_reserved_ffwd_64_0@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_o_valid@2
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_loopback1@2
    // out out_c0_exi2_0_tpl@2
    // out out_c0_exi2_1_tpl@2
    // out out_c0_exi2_2_tpl@2
    loopback_i_sfc_logic_s_c0_in_for_body_s_c0_enter7962_loopback0 thei_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(in_c0_eni1_0_tpl),
        .in_c0_eni1_1_tpl(in_c0_eni1_1_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_stall_out(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_valid_out(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_valid_out),
        .out_intel_reserved_ffwd_10_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_20_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_30_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_40_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_4_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_50_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_50_0),
        .out_intel_reserved_ffwd_51_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_51_0),
        .out_intel_reserved_ffwd_52_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_52_0),
        .out_intel_reserved_ffwd_53_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_53_0),
        .out_intel_reserved_ffwd_54_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_54_0),
        .out_intel_reserved_ffwd_55_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_55_0),
        .out_intel_reserved_ffwd_56_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_56_0),
        .out_intel_reserved_ffwd_57_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_57_0),
        .out_intel_reserved_ffwd_58_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_58_0),
        .out_intel_reserved_ffwd_59_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_59_0),
        .out_intel_reserved_ffwd_5_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_60_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_6_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_9_0),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_loopback1(),
        .out_c0_exi2_0_tpl(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_c0_exi2_0_tpl),
        .out_c0_exi2_1_tpl(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_c0_exi2_1_tpl),
        .out_c0_exi2_2_tpl(i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_c0_exi2_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,7)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_stall_out = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_stall_out;

    // sync_out(GPOUT,9)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,10)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_valid_out = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_valid_out;

    // dupName_1_regfree_osync_x(GPOUT,11)
    assign out_intel_reserved_ffwd_10_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_10_0;

    // dupName_2_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_11_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_11_0;

    // dupName_3_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_12_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_12_0;

    // dupName_4_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_13_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_13_0;

    // dupName_5_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_14_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_14_0;

    // dupName_6_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_15_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_15_0;

    // dupName_7_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_16_0;

    // dupName_8_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_17_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_17_0;

    // dupName_9_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_18_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_18_0;

    // dupName_10_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_19_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_19_0;

    // dupName_11_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_1_0;

    // dupName_12_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_20_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_20_0;

    // dupName_13_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_21_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_21_0;

    // dupName_14_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_22_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_22_0;

    // dupName_15_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_23_0;

    // dupName_16_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_24_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_24_0;

    // dupName_17_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_25_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_25_0;

    // dupName_18_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_26_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_26_0;

    // dupName_19_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_27_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_27_0;

    // dupName_20_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_28_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_28_0;

    // dupName_21_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_29_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_29_0;

    // dupName_22_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_23_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_30_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_30_0;

    // dupName_24_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_31_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_31_0;

    // dupName_25_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_32_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_32_0;

    // dupName_26_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_33_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_33_0;

    // dupName_27_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_34_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_34_0;

    // dupName_28_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_35_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_35_0;

    // dupName_29_regfree_osync_x(GPOUT,39)
    assign out_intel_reserved_ffwd_36_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_36_0;

    // dupName_30_regfree_osync_x(GPOUT,40)
    assign out_intel_reserved_ffwd_37_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_37_0;

    // dupName_31_regfree_osync_x(GPOUT,41)
    assign out_intel_reserved_ffwd_38_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_38_0;

    // dupName_32_regfree_osync_x(GPOUT,42)
    assign out_intel_reserved_ffwd_39_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_39_0;

    // dupName_33_regfree_osync_x(GPOUT,43)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_34_regfree_osync_x(GPOUT,44)
    assign out_intel_reserved_ffwd_40_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_40_0;

    // dupName_35_regfree_osync_x(GPOUT,45)
    assign out_intel_reserved_ffwd_41_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_41_0;

    // dupName_36_regfree_osync_x(GPOUT,46)
    assign out_intel_reserved_ffwd_42_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_42_0;

    // dupName_37_regfree_osync_x(GPOUT,47)
    assign out_intel_reserved_ffwd_43_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_43_0;

    // dupName_38_regfree_osync_x(GPOUT,48)
    assign out_intel_reserved_ffwd_44_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_44_0;

    // dupName_39_regfree_osync_x(GPOUT,49)
    assign out_intel_reserved_ffwd_45_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_45_0;

    // dupName_40_regfree_osync_x(GPOUT,50)
    assign out_intel_reserved_ffwd_46_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_46_0;

    // dupName_41_regfree_osync_x(GPOUT,51)
    assign out_intel_reserved_ffwd_47_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_47_0;

    // dupName_42_regfree_osync_x(GPOUT,52)
    assign out_intel_reserved_ffwd_48_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_48_0;

    // dupName_43_regfree_osync_x(GPOUT,53)
    assign out_intel_reserved_ffwd_49_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_49_0;

    // dupName_44_regfree_osync_x(GPOUT,54)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_4_0;

    // dupName_45_regfree_osync_x(GPOUT,55)
    assign out_intel_reserved_ffwd_50_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_50_0;

    // dupName_46_regfree_osync_x(GPOUT,56)
    assign out_intel_reserved_ffwd_51_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_51_0;

    // dupName_47_regfree_osync_x(GPOUT,57)
    assign out_intel_reserved_ffwd_52_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_52_0;

    // dupName_48_regfree_osync_x(GPOUT,58)
    assign out_intel_reserved_ffwd_53_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_53_0;

    // dupName_49_regfree_osync_x(GPOUT,59)
    assign out_intel_reserved_ffwd_54_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_54_0;

    // dupName_50_regfree_osync_x(GPOUT,60)
    assign out_intel_reserved_ffwd_55_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_55_0;

    // dupName_51_regfree_osync_x(GPOUT,61)
    assign out_intel_reserved_ffwd_56_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_56_0;

    // dupName_52_regfree_osync_x(GPOUT,62)
    assign out_intel_reserved_ffwd_57_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_57_0;

    // dupName_53_regfree_osync_x(GPOUT,63)
    assign out_intel_reserved_ffwd_58_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_58_0;

    // dupName_54_regfree_osync_x(GPOUT,64)
    assign out_intel_reserved_ffwd_59_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_59_0;

    // dupName_55_regfree_osync_x(GPOUT,65)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_5_0;

    // dupName_56_regfree_osync_x(GPOUT,66)
    assign out_intel_reserved_ffwd_60_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_60_0;

    // dupName_57_regfree_osync_x(GPOUT,67)
    assign out_intel_reserved_ffwd_61_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_61_0;

    // dupName_58_regfree_osync_x(GPOUT,68)
    assign out_intel_reserved_ffwd_62_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_62_0;

    // dupName_59_regfree_osync_x(GPOUT,69)
    assign out_intel_reserved_ffwd_63_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_63_0;

    // dupName_60_regfree_osync_x(GPOUT,70)
    assign out_intel_reserved_ffwd_64_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_64_0;

    // dupName_61_regfree_osync_x(GPOUT,71)
    assign out_intel_reserved_ffwd_6_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_6_0;

    // dupName_62_regfree_osync_x(GPOUT,72)
    assign out_intel_reserved_ffwd_7_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_7_0;

    // dupName_63_regfree_osync_x(GPOUT,73)
    assign out_intel_reserved_ffwd_8_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_8_0;

    // dupName_64_regfree_osync_x(GPOUT,74)
    assign out_intel_reserved_ffwd_9_0 = i_sfc_logic_s_c0_in_for_body_loopbacks_c0_enter7962_loopback0_aunroll_x_out_intel_reserved_ffwd_9_0;

    // dupName_0_sync_out_aunroll_x(GPOUT,78)@5
    assign out_c0_exit798_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit798_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit798_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_data_out_2_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body_loopbacks_c0_exit798_loopback1_aunroll_x_out_valid_out;

endmodule
