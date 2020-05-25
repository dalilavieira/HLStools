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

// SystemVerilog created from glfwChooseFBConfig_i_sfc_s_c1_in_for_bodA000000Zlfwchoosefbconfig188
// SystemVerilog created on Sun May 24 22:29:58 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module glfwChooseFBConfig_i_sfc_s_c1_in_for_bodA000000Zlfwchoosefbconfig188 (
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_20_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_c0_exe2,
    input wire [0:0] in_c0_exe21,
    input wire [0:0] in_c1_eni48_0_tpl,
    input wire [0:0] in_c1_eni48_1_tpl,
    input wire [31:0] in_c1_eni48_2_tpl,
    input wire [0:0] in_c1_eni48_3_tpl,
    input wire [31:0] in_c1_eni48_4_tpl,
    input wire [0:0] in_c1_eni48_5_tpl,
    input wire [31:0] in_c1_eni48_6_tpl,
    input wire [0:0] in_c1_eni48_7_tpl,
    input wire [31:0] in_c1_eni48_8_tpl,
    input wire [31:0] in_c1_eni48_9_tpl,
    input wire [0:0] in_c1_eni48_10_tpl,
    input wire [31:0] in_c1_eni48_11_tpl,
    input wire [0:0] in_c1_eni48_12_tpl,
    input wire [31:0] in_c1_eni48_13_tpl,
    input wire [31:0] in_c1_eni48_14_tpl,
    input wire [0:0] in_c1_eni48_15_tpl,
    input wire [31:0] in_c1_eni48_16_tpl,
    input wire [31:0] in_c1_eni48_17_tpl,
    input wire [0:0] in_c1_eni48_18_tpl,
    input wire [31:0] in_c1_eni48_19_tpl,
    input wire [31:0] in_c1_eni48_20_tpl,
    input wire [0:0] in_c1_eni48_21_tpl,
    input wire [31:0] in_c1_eni48_22_tpl,
    input wire [0:0] in_c1_eni48_23_tpl,
    input wire [31:0] in_c1_eni48_24_tpl,
    input wire [0:0] in_c1_eni48_25_tpl,
    input wire [31:0] in_c1_eni48_26_tpl,
    input wire [0:0] in_c1_eni48_27_tpl,
    input wire [31:0] in_c1_eni48_28_tpl,
    input wire [31:0] in_c1_eni48_29_tpl,
    input wire [0:0] in_c1_eni48_30_tpl,
    input wire [31:0] in_c1_eni48_31_tpl,
    input wire [31:0] in_c1_eni48_32_tpl,
    input wire [0:0] in_c1_eni48_33_tpl,
    input wire [31:0] in_c1_eni48_34_tpl,
    input wire [31:0] in_c1_eni48_35_tpl,
    input wire [0:0] in_c1_eni48_36_tpl,
    input wire [31:0] in_c1_eni48_37_tpl,
    input wire [31:0] in_c1_eni48_38_tpl,
    input wire [0:0] in_c1_eni48_39_tpl,
    input wire [31:0] in_c1_eni48_40_tpl,
    input wire [0:0] in_c1_eni48_41_tpl,
    input wire [31:0] in_c1_eni48_42_tpl,
    input wire [0:0] in_c1_eni48_43_tpl,
    input wire [63:0] in_c1_eni48_44_tpl,
    input wire [0:0] in_c1_eni48_45_tpl,
    input wire [0:0] in_c1_eni48_46_tpl,
    input wire [0:0] in_c1_eni48_47_tpl,
    input wire [0:0] in_c1_eni48_48_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c1_exit_0_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_glfwchoosefbconfigs_c1_exit_glfwchoosefbconfig1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_glfwchoosefbconfigs_c1_exit_glfwchoosefbconfig1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_glfwchoosefbconfigs_c1_exit_glfwchoosefbconfig1_aunroll_x_out_data_out_0_tpl;
    wire [63:0] i_sfc_logic_s_c1_in_for_body_glfwchoosefbconfigs_c1_enter_glfwchoosefbconfig0_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [0:0] i_sfc_logic_s_c1_in_for_body_glfwchoosefbconfigs_c1_enter_glfwchoosefbconfig0_aunroll_x_out_o_valid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body_glfwchoosefbconfigs_c1_exit_glfwchoosefbconfig1_aunroll_x(BLACKBOX,9)@139
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@142
    // out out_data_out_0_tpl@142
    glfwChooseFBConfig_i_llvm_fpga_sfc_exit_A000002Z_glfwchoosefbconfig0 thei_llvm_fpga_sfc_exit_s_c1_out_for_body_glfwchoosefbconfigs_c1_exit_glfwchoosefbconfig1_aunroll_x (
        .in_dec_pipelined_thread(in_c0_exe2),
        .in_inc_pipelined_thread(in_c0_exe21),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_for_body_glfwchoosefbconfigs_c1_enter_glfwchoosefbconfig0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(GND_q),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_for_body_glfwchoosefbconfigs_c1_exit_glfwchoosefbconfig1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body_glfwchoosefbconfigs_c1_exit_glfwchoosefbconfig1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body_glfwchoosefbconfigs_c1_exit_glfwchoosefbconfig1_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_for_body_glfwchoosefbconfigs_c1_exit_glfwchoosefbconfig1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c1_in_for_body_glfwchoosefbconfigs_c1_enter_glfwchoosefbconfig0_aunroll_x(BLACKBOX,10)@133
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_o_valid@139
    // out out_unnamed_glfwChooseFBConfig1@139
    // out out_unnamed_glfwChooseFBConfig32_0_tpl@139
    glfwChooseFBConfig_i_sfc_logic_s_c1_in_fA000000Z_glfwchoosefbconfig0 thei_sfc_logic_s_c1_in_for_body_glfwchoosefbconfigs_c1_enter_glfwchoosefbconfig0_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_c1_eni48_0_tpl(in_c1_eni48_0_tpl),
        .in_c1_eni48_1_tpl(in_c1_eni48_1_tpl),
        .in_c1_eni48_2_tpl(in_c1_eni48_2_tpl),
        .in_c1_eni48_3_tpl(in_c1_eni48_3_tpl),
        .in_c1_eni48_4_tpl(in_c1_eni48_4_tpl),
        .in_c1_eni48_5_tpl(in_c1_eni48_5_tpl),
        .in_c1_eni48_6_tpl(in_c1_eni48_6_tpl),
        .in_c1_eni48_7_tpl(in_c1_eni48_7_tpl),
        .in_c1_eni48_8_tpl(in_c1_eni48_8_tpl),
        .in_c1_eni48_9_tpl(in_c1_eni48_9_tpl),
        .in_c1_eni48_10_tpl(in_c1_eni48_10_tpl),
        .in_c1_eni48_11_tpl(in_c1_eni48_11_tpl),
        .in_c1_eni48_12_tpl(in_c1_eni48_12_tpl),
        .in_c1_eni48_13_tpl(in_c1_eni48_13_tpl),
        .in_c1_eni48_14_tpl(in_c1_eni48_14_tpl),
        .in_c1_eni48_15_tpl(in_c1_eni48_15_tpl),
        .in_c1_eni48_16_tpl(in_c1_eni48_16_tpl),
        .in_c1_eni48_17_tpl(in_c1_eni48_17_tpl),
        .in_c1_eni48_18_tpl(in_c1_eni48_18_tpl),
        .in_c1_eni48_19_tpl(in_c1_eni48_19_tpl),
        .in_c1_eni48_20_tpl(in_c1_eni48_20_tpl),
        .in_c1_eni48_21_tpl(in_c1_eni48_21_tpl),
        .in_c1_eni48_22_tpl(in_c1_eni48_22_tpl),
        .in_c1_eni48_23_tpl(in_c1_eni48_23_tpl),
        .in_c1_eni48_24_tpl(in_c1_eni48_24_tpl),
        .in_c1_eni48_25_tpl(in_c1_eni48_25_tpl),
        .in_c1_eni48_26_tpl(in_c1_eni48_26_tpl),
        .in_c1_eni48_27_tpl(in_c1_eni48_27_tpl),
        .in_c1_eni48_28_tpl(in_c1_eni48_28_tpl),
        .in_c1_eni48_29_tpl(in_c1_eni48_29_tpl),
        .in_c1_eni48_30_tpl(in_c1_eni48_30_tpl),
        .in_c1_eni48_31_tpl(in_c1_eni48_31_tpl),
        .in_c1_eni48_32_tpl(in_c1_eni48_32_tpl),
        .in_c1_eni48_33_tpl(in_c1_eni48_33_tpl),
        .in_c1_eni48_34_tpl(in_c1_eni48_34_tpl),
        .in_c1_eni48_35_tpl(in_c1_eni48_35_tpl),
        .in_c1_eni48_36_tpl(in_c1_eni48_36_tpl),
        .in_c1_eni48_37_tpl(in_c1_eni48_37_tpl),
        .in_c1_eni48_38_tpl(in_c1_eni48_38_tpl),
        .in_c1_eni48_39_tpl(in_c1_eni48_39_tpl),
        .in_c1_eni48_40_tpl(in_c1_eni48_40_tpl),
        .in_c1_eni48_41_tpl(in_c1_eni48_41_tpl),
        .in_c1_eni48_42_tpl(in_c1_eni48_42_tpl),
        .in_c1_eni48_43_tpl(in_c1_eni48_43_tpl),
        .in_c1_eni48_44_tpl(in_c1_eni48_44_tpl),
        .in_c1_eni48_45_tpl(in_c1_eni48_45_tpl),
        .in_c1_eni48_46_tpl(in_c1_eni48_46_tpl),
        .in_c1_eni48_47_tpl(in_c1_eni48_47_tpl),
        .in_c1_eni48_48_tpl(in_c1_eni48_48_tpl),
        .out_intel_reserved_ffwd_20_0(i_sfc_logic_s_c1_in_for_body_glfwchoosefbconfigs_c1_enter_glfwchoosefbconfig0_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_o_valid(i_sfc_logic_s_c1_in_for_body_glfwchoosefbconfigs_c1_enter_glfwchoosefbconfig0_aunroll_x_out_o_valid),
        .out_unnamed_glfwChooseFBConfig1(),
        .out_unnamed_glfwChooseFBConfig32_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,6)
    assign out_intel_reserved_ffwd_20_0 = i_sfc_logic_s_c1_in_for_body_glfwchoosefbconfigs_c1_enter_glfwchoosefbconfig0_aunroll_x_out_intel_reserved_ffwd_20_0;

    // sync_out(GPOUT,8)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body_glfwchoosefbconfigs_c1_exit_glfwchoosefbconfig1_aunroll_x_out_stall_entry;

    // dupName_0_sync_out_aunroll_x(GPOUT,12)@142
    assign out_c1_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body_glfwchoosefbconfigs_c1_exit_glfwchoosefbconfig1_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body_glfwchoosefbconfigs_c1_exit_glfwchoosefbconfig1_aunroll_x_out_valid_out;

endmodule
