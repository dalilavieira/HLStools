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

// SystemVerilog created from glfwChooseFBConfig_i_llvm_fpga_sfc_exit_A000001Z_glfwchoosefbconfig0
// SystemVerilog created on Sun May 24 22:33:25 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module glfwChooseFBConfig_i_llvm_fpga_sfc_exit_A000001Z_glfwchoosefbconfig0 (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_entry,
    input wire [0:0] in_data_in_0_tpl,
    input wire [0:0] in_data_in_1_tpl,
    input wire [0:0] in_data_in_2_tpl,
    input wire [63:0] in_data_in_3_tpl,
    input wire [63:0] in_data_in_4_tpl,
    input wire [0:0] in_data_in_5_tpl,
    input wire [63:0] in_data_in_6_tpl,
    input wire [63:0] in_data_in_7_tpl,
    input wire [63:0] in_data_in_8_tpl,
    input wire [63:0] in_data_in_9_tpl,
    input wire [63:0] in_data_in_10_tpl,
    input wire [63:0] in_data_in_11_tpl,
    input wire [63:0] in_data_in_12_tpl,
    input wire [63:0] in_data_in_13_tpl,
    input wire [63:0] in_data_in_14_tpl,
    input wire [63:0] in_data_in_15_tpl,
    input wire [63:0] in_data_in_16_tpl,
    input wire [63:0] in_data_in_17_tpl,
    input wire [63:0] in_data_in_18_tpl,
    input wire [63:0] in_data_in_19_tpl,
    input wire [63:0] in_data_in_20_tpl,
    input wire [0:0] in_data_in_21_tpl,
    input wire [0:0] in_data_in_22_tpl,
    input wire [0:0] in_input_accepted,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_data_out_0_tpl,
    output wire [0:0] out_data_out_1_tpl,
    output wire [0:0] out_data_out_2_tpl,
    output wire [63:0] out_data_out_3_tpl,
    output wire [63:0] out_data_out_4_tpl,
    output wire [0:0] out_data_out_5_tpl,
    output wire [63:0] out_data_out_6_tpl,
    output wire [63:0] out_data_out_7_tpl,
    output wire [63:0] out_data_out_8_tpl,
    output wire [63:0] out_data_out_9_tpl,
    output wire [63:0] out_data_out_10_tpl,
    output wire [63:0] out_data_out_11_tpl,
    output wire [63:0] out_data_out_12_tpl,
    output wire [63:0] out_data_out_13_tpl,
    output wire [63:0] out_data_out_14_tpl,
    output wire [63:0] out_data_out_15_tpl,
    output wire [63:0] out_data_out_16_tpl,
    output wire [63:0] out_data_out_17_tpl,
    output wire [63:0] out_data_out_18_tpl,
    output wire [63:0] out_data_out_19_tpl,
    output wire [63:0] out_data_out_20_tpl,
    output wire [0:0] out_data_out_21_tpl,
    output wire [0:0] out_data_out_22_tpl,
    output wire [0:0] out_enable,
    output wire [0:0] out_valid_mask,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [39:0] c_i40_010_q;
    wire [47:0] c_i48_018_q;
    wire [55:0] c_i56_013_q;
    wire [6:0] c_i7_012_q;
    wire [1279:0] dsdk_ip_adapt_bitjoin2_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension4_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [1279:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_dec_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_dec_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_inc_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_inc_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_input_accepted;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_input_accepted_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_in_bitsignaltemp;
    wire [1279:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_enable;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_stall_entry;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_stall_entry_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_mask;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_mask_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect20_b;
    wire [0:0] ip_dsdk_adapt_bitselect22_b;
    wire [0:0] ip_dsdk_adapt_bitselect24_b;
    wire [63:0] ip_dsdk_adapt_bitselect26_b;
    wire [63:0] ip_dsdk_adapt_bitselect28_b;
    wire [0:0] ip_dsdk_adapt_bitselect30_b;
    wire [63:0] ip_dsdk_adapt_bitselect32_b;
    wire [63:0] ip_dsdk_adapt_bitselect34_b;
    wire [63:0] ip_dsdk_adapt_bitselect36_b;
    wire [63:0] ip_dsdk_adapt_bitselect38_b;
    wire [63:0] ip_dsdk_adapt_bitselect40_b;
    wire [63:0] ip_dsdk_adapt_bitselect42_b;
    wire [63:0] ip_dsdk_adapt_bitselect44_b;
    wire [63:0] ip_dsdk_adapt_bitselect46_b;
    wire [63:0] ip_dsdk_adapt_bitselect48_b;
    wire [63:0] ip_dsdk_adapt_bitselect50_b;
    wire [63:0] ip_dsdk_adapt_bitselect52_b;
    wire [63:0] ip_dsdk_adapt_bitselect54_b;
    wire [63:0] ip_dsdk_adapt_bitselect56_b;
    wire [63:0] ip_dsdk_adapt_bitselect58_b;
    wire [63:0] ip_dsdk_adapt_bitselect60_b;
    wire [0:0] ip_dsdk_adapt_bitselect62_b;
    wire [0:0] ip_dsdk_adapt_bitselect64_b;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i48_018(CONSTANT,5)
    assign c_i48_018_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // c_i7_012(CONSTANT,7)
    assign c_i7_012_q = $unsigned(7'b0000000);

    // element_extension16(BITJOIN,16)
    assign element_extension16_q = {c_i7_012_q, in_data_in_22_tpl};

    // element_extension14(BITJOIN,15)
    assign element_extension14_q = {c_i7_012_q, in_data_in_21_tpl};

    // c_i56_013(CONSTANT,6)
    assign c_i56_013_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension11(BITJOIN,14)
    assign element_extension11_q = {c_i7_012_q, in_data_in_5_tpl};

    // c_i40_010(CONSTANT,4)
    assign c_i40_010_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // element_extension8(BITJOIN,19)
    assign element_extension8_q = {c_i7_012_q, in_data_in_2_tpl};

    // element_extension6(BITJOIN,18)
    assign element_extension6_q = {c_i7_012_q, in_data_in_1_tpl};

    // element_extension4(BITJOIN,17)
    assign element_extension4_q = {c_i7_012_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin2(BITJOIN,13)
    assign dsdk_ip_adapt_bitjoin2_q = {c_i48_018_q, element_extension16_q, element_extension14_q, in_data_in_20_tpl, in_data_in_19_tpl, in_data_in_18_tpl, in_data_in_17_tpl, in_data_in_16_tpl, in_data_in_15_tpl, in_data_in_14_tpl, in_data_in_13_tpl, in_data_in_12_tpl, in_data_in_11_tpl, in_data_in_10_tpl, in_data_in_9_tpl, in_data_in_8_tpl, in_data_in_7_tpl, in_data_in_6_tpl, c_i56_013_q, element_extension11_q, in_data_in_4_tpl, in_data_in_3_tpl, c_i40_010_q, element_extension8_q, element_extension6_q, element_extension4_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1(EXTIFACE,20)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_dec_pipelined_thread = GND_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_inc_pipelined_thread = GND_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_input_accepted = in_input_accepted;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_dec_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_dec_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_inc_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_inc_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_input_accepted_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_input_accepted[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_enable[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_enable_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_stall_entry[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_stall_entry_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_mask[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_mask_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_out_bitsignaltemp;
    acl_enable_sink #(
        .PIPELINE_DEPTH(2),
        .SCHEDULEII(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(1280),
        .IP_PIPELINE_LATENCY_PLUS1(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1 (
        .data_in(dsdk_ip_adapt_bitjoin2_q),
        .dec_pipelined_thread(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_dec_pipelined_thread_bitsignaltemp),
        .inc_pipelined_thread(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_inc_pipelined_thread_bitsignaltemp),
        .input_accepted(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_input_accepted_bitsignaltemp),
        .stall_in(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out),
        .enable(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_enable_bitsignaltemp),
        .stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_stall_entry_bitsignaltemp),
        .valid_mask(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_mask_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,45)@20000000
    assign out_stall_entry = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_stall_entry;

    // ip_dsdk_adapt_bitselect64(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect64_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[1224:1224];

    // ip_dsdk_adapt_bitselect62(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect62_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[1216:1216];

    // ip_dsdk_adapt_bitselect60(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect60_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[1215:1152];

    // ip_dsdk_adapt_bitselect58(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect58_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[1151:1088];

    // ip_dsdk_adapt_bitselect56(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect56_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[1087:1024];

    // ip_dsdk_adapt_bitselect54(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect54_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[1023:960];

    // ip_dsdk_adapt_bitselect52(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect52_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[959:896];

    // ip_dsdk_adapt_bitselect50(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[895:832];

    // ip_dsdk_adapt_bitselect48(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect48_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[831:768];

    // ip_dsdk_adapt_bitselect46(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect46_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[767:704];

    // ip_dsdk_adapt_bitselect44(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect44_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[703:640];

    // ip_dsdk_adapt_bitselect42(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect42_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[639:576];

    // ip_dsdk_adapt_bitselect40(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect40_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[575:512];

    // ip_dsdk_adapt_bitselect38(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect38_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[511:448];

    // ip_dsdk_adapt_bitselect36(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect36_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[447:384];

    // ip_dsdk_adapt_bitselect34(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect34_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[383:320];

    // ip_dsdk_adapt_bitselect32(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect32_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[319:256];

    // ip_dsdk_adapt_bitselect30(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect30_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[192:192];

    // ip_dsdk_adapt_bitselect28(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect28_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[191:128];

    // ip_dsdk_adapt_bitselect26(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect26_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[127:64];

    // ip_dsdk_adapt_bitselect24(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect24_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[16:16];

    // ip_dsdk_adapt_bitselect22(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect22_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[8:8];

    // ip_dsdk_adapt_bitselect20(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect20_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_data_out[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,47)@3
    assign out_data_out_0_tpl = ip_dsdk_adapt_bitselect20_b;
    assign out_data_out_1_tpl = ip_dsdk_adapt_bitselect22_b;
    assign out_data_out_2_tpl = ip_dsdk_adapt_bitselect24_b;
    assign out_data_out_3_tpl = ip_dsdk_adapt_bitselect26_b;
    assign out_data_out_4_tpl = ip_dsdk_adapt_bitselect28_b;
    assign out_data_out_5_tpl = ip_dsdk_adapt_bitselect30_b;
    assign out_data_out_6_tpl = ip_dsdk_adapt_bitselect32_b;
    assign out_data_out_7_tpl = ip_dsdk_adapt_bitselect34_b;
    assign out_data_out_8_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_data_out_9_tpl = ip_dsdk_adapt_bitselect38_b;
    assign out_data_out_10_tpl = ip_dsdk_adapt_bitselect40_b;
    assign out_data_out_11_tpl = ip_dsdk_adapt_bitselect42_b;
    assign out_data_out_12_tpl = ip_dsdk_adapt_bitselect44_b;
    assign out_data_out_13_tpl = ip_dsdk_adapt_bitselect46_b;
    assign out_data_out_14_tpl = ip_dsdk_adapt_bitselect48_b;
    assign out_data_out_15_tpl = ip_dsdk_adapt_bitselect50_b;
    assign out_data_out_16_tpl = ip_dsdk_adapt_bitselect52_b;
    assign out_data_out_17_tpl = ip_dsdk_adapt_bitselect54_b;
    assign out_data_out_18_tpl = ip_dsdk_adapt_bitselect56_b;
    assign out_data_out_19_tpl = ip_dsdk_adapt_bitselect58_b;
    assign out_data_out_20_tpl = ip_dsdk_adapt_bitselect60_b;
    assign out_data_out_21_tpl = ip_dsdk_adapt_bitselect62_b;
    assign out_data_out_22_tpl = ip_dsdk_adapt_bitselect64_b;
    assign out_enable = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_enable;
    assign out_valid_mask = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_mask;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body_glfwchoosefbconfigs_c0_exit125_glfwchoosefbconfig1_valid_out;

endmodule
