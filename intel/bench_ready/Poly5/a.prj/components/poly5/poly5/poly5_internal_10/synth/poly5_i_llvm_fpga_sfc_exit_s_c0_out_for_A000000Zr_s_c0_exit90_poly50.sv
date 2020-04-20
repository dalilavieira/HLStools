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

// SystemVerilog created from poly5_i_llvm_fpga_sfc_exit_s_c0_out_for_A000000Zr_s_c0_exit90_poly50
// SystemVerilog created on Sun Apr 19 21:29:13 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module poly5_i_llvm_fpga_sfc_exit_s_c0_out_for_A000000Zr_s_c0_exit90_poly50 (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_entry,
    input wire [0:0] in_data_in_0_tpl,
    input wire [0:0] in_data_in_1_tpl,
    input wire [0:0] in_data_in_2_tpl,
    input wire [0:0] in_input_accepted,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_data_out_0_tpl,
    output wire [0:0] out_data_out_1_tpl,
    output wire [0:0] out_data_out_2_tpl,
    output wire [0:0] out_enable,
    output wire [0:0] out_valid_mask,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [6:0] c_i7_05_q;
    wire [23:0] dsdk_ip_adapt_bitjoin2_q;
    wire [7:0] element_extension4_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [23:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_dec_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_dec_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_inc_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_inc_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_input_accepted;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_input_accepted_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_in_bitsignaltemp;
    wire [23:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_enable;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_stall_entry;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_stall_entry_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_mask;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_mask_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect11_b;
    wire [0:0] ip_dsdk_adapt_bitselect13_b;
    wire [0:0] ip_dsdk_adapt_bitselect15_b;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i7_05(CONSTANT,4)
    assign c_i7_05_q = $unsigned(7'b0000000);

    // element_extension8(BITJOIN,10)
    assign element_extension8_q = {c_i7_05_q, in_data_in_2_tpl};

    // element_extension6(BITJOIN,9)
    assign element_extension6_q = {c_i7_05_q, in_data_in_1_tpl};

    // element_extension4(BITJOIN,8)
    assign element_extension4_q = {c_i7_05_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin2(BITJOIN,7)
    assign dsdk_ip_adapt_bitjoin2_q = {element_extension8_q, element_extension6_q, element_extension4_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51(EXTIFACE,11)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_data_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_dec_pipelined_thread = GND_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_inc_pipelined_thread = GND_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_input_accepted = in_input_accepted;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_dec_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_dec_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_inc_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_inc_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_input_accepted_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_input_accepted[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_enable[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_enable_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_stall_entry[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_stall_entry_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_mask[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_mask_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_out_bitsignaltemp;
    acl_enable_sink #(
        .PIPELINE_DEPTH(0),
        .SCHEDULEII(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(24),
        .IP_PIPELINE_LATENCY_PLUS1(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51 (
        .data_in(dsdk_ip_adapt_bitjoin2_q),
        .dec_pipelined_thread(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_dec_pipelined_thread_bitsignaltemp),
        .inc_pipelined_thread(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_inc_pipelined_thread_bitsignaltemp),
        .input_accepted(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_input_accepted_bitsignaltemp),
        .stall_in(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_data_out),
        .enable(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_enable_bitsignaltemp),
        .stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_stall_entry_bitsignaltemp),
        .valid_mask(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_mask_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,16)@20000000
    assign out_stall_entry = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_stall_entry;

    // ip_dsdk_adapt_bitselect15(BITSELECT,14)
    assign ip_dsdk_adapt_bitselect15_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_data_out[16:16];

    // ip_dsdk_adapt_bitselect13(BITSELECT,13)
    assign ip_dsdk_adapt_bitselect13_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_data_out[8:8];

    // ip_dsdk_adapt_bitselect11(BITSELECT,12)
    assign ip_dsdk_adapt_bitselect11_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_data_out[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,18)@1
    assign out_data_out_0_tpl = ip_dsdk_adapt_bitselect11_b;
    assign out_data_out_1_tpl = ip_dsdk_adapt_bitselect13_b;
    assign out_data_out_2_tpl = ip_dsdk_adapt_bitselect15_b;
    assign out_enable = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_enable;
    assign out_valid_mask = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_mask;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond14_preheader_poly5s_c0_exit90_poly51_valid_out;

endmodule
