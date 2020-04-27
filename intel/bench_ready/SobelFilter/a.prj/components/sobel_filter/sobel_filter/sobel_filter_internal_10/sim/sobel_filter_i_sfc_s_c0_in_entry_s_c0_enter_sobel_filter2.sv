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

// SystemVerilog created from sobel_filter_i_sfc_s_c0_in_entry_s_c0_enter_sobel_filter2
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_i_sfc_s_c0_in_entry_s_c0_enter_sobel_filter2 (
    output wire [31:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_unnamed_sobel_filter0_0_tpl,
    output wire [0:0] out_c0_exit_0_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_sobel_filters_c0_exit_sobel_filter1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_sobel_filters_c0_exit_sobel_filter1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_entry_sobel_filters_c0_exit_sobel_filter1_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter0_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_sfc_logic_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter0_aunroll_x_out_o_valid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_entry_sobel_filters_c0_exit_sobel_filter1_aunroll_x(BLACKBOX,8)@40
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@43
    // out out_data_out_0_tpl@43
    sobel_filter_i_llvm_fpga_sfc_exit_s_c0_oA000000Z0_exit_sobel_filter0 thei_llvm_fpga_sfc_exit_s_c0_out_entry_sobel_filters_c0_exit_sobel_filter1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(GND_q),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_entry_sobel_filters_c0_exit_sobel_filter1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_entry_sobel_filters_c0_exit_sobel_filter1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_entry_sobel_filters_c0_exit_sobel_filter1_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_entry_sobel_filters_c0_exit_sobel_filter1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter0_aunroll_x(BLACKBOX,9)@1
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_o_valid@40
    // out out_unnamed_sobel_filter3@40
    // out out_unnamed_sobel_filter2_0_tpl@40
    sobel_filter_i_sfc_logic_s_c0_in_entry_s_c0_enter_sobel_filter0 thei_sfc_logic_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter0_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .out_intel_reserved_ffwd_0_0(i_sfc_logic_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter0_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_o_valid(i_sfc_logic_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter0_aunroll_x_out_o_valid),
        .out_unnamed_sobel_filter3(),
        .out_unnamed_sobel_filter2_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,5)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_logic_s_c0_in_entry_sobel_filters_c0_enter_sobel_filter0_aunroll_x_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,7)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_entry_sobel_filters_c0_exit_sobel_filter1_aunroll_x_out_stall_entry;

    // dupName_0_sync_out_aunroll_x(GPOUT,11)@43
    assign out_c0_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_entry_sobel_filters_c0_exit_sobel_filter1_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_entry_sobel_filters_c0_exit_sobel_filter1_aunroll_x_out_valid_out;

endmodule
