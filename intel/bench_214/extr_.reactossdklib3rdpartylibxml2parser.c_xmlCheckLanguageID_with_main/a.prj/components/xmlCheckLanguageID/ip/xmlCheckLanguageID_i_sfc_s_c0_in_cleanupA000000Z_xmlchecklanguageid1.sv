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

// SystemVerilog created from xmlCheckLanguageID_i_sfc_s_c0_in_cleanupA000000Z_xmlchecklanguageid1
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_i_sfc_s_c0_in_cleanupA000000Z_xmlchecklanguageid1 (
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_33_0,
    input wire [0:0] in_intel_reserved_ffwd_35_0,
    input wire [0:0] in_intel_reserved_ffwd_50_0,
    input wire [0:0] in_intel_reserved_ffwd_51_0,
    input wire [0:0] in_intel_reserved_ffwd_52_0,
    input wire [0:0] in_intel_reserved_ffwd_59_0,
    input wire [0:0] in_intel_reserved_ffwd_62_0,
    input wire [0:0] in_intel_reserved_ffwd_69_0,
    input wire [0:0] in_intel_reserved_ffwd_70_0,
    input wire [0:0] in_intel_reserved_ffwd_73_0,
    input wire [0:0] in_intel_reserved_ffwd_74_0,
    input wire [0:0] in_intel_reserved_ffwd_79_0,
    input wire [0:0] in_intel_reserved_ffwd_80_0,
    input wire [0:0] in_intel_reserved_ffwd_9_0,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [0:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_intel_reserved_ffwd_16_0,
    input wire [0:0] in_intel_reserved_ffwd_17_0,
    input wire [0:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_c0_eni7_0_tpl,
    input wire [0:0] in_c0_eni7_1_tpl,
    input wire [0:0] in_c0_eni7_2_tpl,
    input wire [0:0] in_c0_eni7_3_tpl,
    input wire [0:0] in_c0_eni7_4_tpl,
    input wire [0:0] in_c0_eni7_5_tpl,
    input wire [0:0] in_c0_eni7_6_tpl,
    input wire [0:0] in_c0_eni7_7_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit259_0_tpl,
    output wire [31:0] out_c0_exit259_1_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid0_aunroll_x_out_c0_exi1258_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid0_aunroll_x_out_c0_exi1258_1_tpl;


    // i_sfc_logic_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid0_aunroll_x(BLACKBOX,28)@1
    // out out_o_valid@4
    // out out_unnamed_xmlCheckLanguageID7@4
    // out out_c0_exi1258_0_tpl@4
    // out out_c0_exi1258_1_tpl@4
    xmlCheckLanguageID_i_sfc_logic_s_c0_in_cA000000Z_xmlchecklanguageid0 thei_sfc_logic_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid0_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_51_0(in_intel_reserved_ffwd_51_0),
        .in_intel_reserved_ffwd_52_0(in_intel_reserved_ffwd_52_0),
        .in_intel_reserved_ffwd_59_0(in_intel_reserved_ffwd_59_0),
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_intel_reserved_ffwd_69_0(in_intel_reserved_ffwd_69_0),
        .in_intel_reserved_ffwd_70_0(in_intel_reserved_ffwd_70_0),
        .in_intel_reserved_ffwd_73_0(in_intel_reserved_ffwd_73_0),
        .in_intel_reserved_ffwd_74_0(in_intel_reserved_ffwd_74_0),
        .in_intel_reserved_ffwd_79_0(in_intel_reserved_ffwd_79_0),
        .in_intel_reserved_ffwd_80_0(in_intel_reserved_ffwd_80_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_c0_eni7_0_tpl(in_c0_eni7_0_tpl),
        .in_c0_eni7_1_tpl(in_c0_eni7_1_tpl),
        .in_c0_eni7_2_tpl(in_c0_eni7_2_tpl),
        .in_c0_eni7_3_tpl(in_c0_eni7_3_tpl),
        .in_c0_eni7_4_tpl(in_c0_eni7_4_tpl),
        .in_c0_eni7_5_tpl(in_c0_eni7_5_tpl),
        .in_c0_eni7_6_tpl(in_c0_eni7_6_tpl),
        .in_c0_eni7_7_tpl(in_c0_eni7_7_tpl),
        .out_o_valid(i_sfc_logic_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid0_aunroll_x_out_o_valid),
        .out_unnamed_xmlCheckLanguageID7(),
        .out_c0_exi1258_0_tpl(i_sfc_logic_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid0_aunroll_x_out_c0_exi1258_0_tpl),
        .out_c0_exi1258_1_tpl(i_sfc_logic_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid0_aunroll_x_out_c0_exi1258_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x(BLACKBOX,27)@4
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@7
    // out out_data_out_0_tpl@7
    // out out_data_out_1_tpl@7
    xmlCheckLanguageID_i_llvm_fpga_sfc_exit_A000011Z_xmlchecklanguageid0 thei_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid0_aunroll_x_out_c0_exi1258_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_cleanup_xmlchecklanguageids_c0_enter256_xmlchecklanguageid0_aunroll_x_out_c0_exi1258_1_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x_out_data_out_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,26)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x_out_stall_entry;

    // dupName_0_sync_out_aunroll_x(GPOUT,30)@7
    assign out_c0_exit259_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit259_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x_out_data_out_1_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_cleanup_xmlchecklanguageids_c0_exit259_xmlchecklanguageid1_aunroll_x_out_valid_out;

endmodule
