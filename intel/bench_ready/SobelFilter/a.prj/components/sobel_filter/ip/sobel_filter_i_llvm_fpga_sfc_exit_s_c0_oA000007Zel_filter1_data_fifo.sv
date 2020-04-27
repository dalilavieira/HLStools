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

// SystemVerilog created from sobel_filter_i_llvm_fpga_sfc_exit_s_c0_oA000007Zel_filter1_data_fifo
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_i_llvm_fpga_sfc_exit_s_c0_oA000007Zel_filter1_data_fifo (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [31:0] in_data_in_1_tpl,
    input wire [31:0] in_data_in_2_tpl,
    input wire [63:0] in_data_in_3_tpl,
    input wire [31:0] in_data_in_4_tpl,
    input wire [31:0] in_data_in_5_tpl,
    input wire [31:0] in_data_in_6_tpl,
    input wire [31:0] in_data_in_7_tpl,
    input wire [31:0] in_data_in_8_tpl,
    input wire [31:0] in_data_in_9_tpl,
    input wire [31:0] in_data_in_10_tpl,
    input wire [0:0] in_data_in_11_tpl,
    input wire [0:0] in_data_in_12_tpl,
    input wire [0:0] in_data_in_13_tpl,
    input wire [0:0] in_data_in_14_tpl,
    input wire [0:0] in_data_in_15_tpl,
    input wire [0:0] in_data_in_16_tpl,
    input wire [0:0] in_data_in_17_tpl,
    input wire [0:0] in_data_in_18_tpl,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_full,
    output wire [0:0] out_data_out_0_tpl,
    output wire [31:0] out_data_out_1_tpl,
    output wire [31:0] out_data_out_2_tpl,
    output wire [63:0] out_data_out_3_tpl,
    output wire [31:0] out_data_out_4_tpl,
    output wire [31:0] out_data_out_5_tpl,
    output wire [31:0] out_data_out_6_tpl,
    output wire [31:0] out_data_out_7_tpl,
    output wire [31:0] out_data_out_8_tpl,
    output wire [31:0] out_data_out_9_tpl,
    output wire [31:0] out_data_out_10_tpl,
    output wire [0:0] out_data_out_11_tpl,
    output wire [0:0] out_data_out_12_tpl,
    output wire [0:0] out_data_out_13_tpl,
    output wire [0:0] out_data_out_14_tpl,
    output wire [0:0] out_data_out_15_tpl,
    output wire [0:0] out_data_out_16_tpl,
    output wire [0:0] out_data_out_17_tpl,
    output wire [0:0] out_data_out_18_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc29_in;
    wire [0:0] adapt_scalar_trunc29_q;
    wire [0:0] adapt_scalar_trunc53_in;
    wire [0:0] adapt_scalar_trunc53_q;
    wire [0:0] adapt_scalar_trunc55_in;
    wire [0:0] adapt_scalar_trunc55_q;
    wire [0:0] adapt_scalar_trunc57_in;
    wire [0:0] adapt_scalar_trunc57_q;
    wire [0:0] adapt_scalar_trunc59_in;
    wire [0:0] adapt_scalar_trunc59_q;
    wire [0:0] adapt_scalar_trunc61_in;
    wire [0:0] adapt_scalar_trunc61_q;
    wire [0:0] adapt_scalar_trunc63_in;
    wire [0:0] adapt_scalar_trunc63_q;
    wire [0:0] adapt_scalar_trunc65_in;
    wire [0:0] adapt_scalar_trunc65_q;
    wire [0:0] adapt_scalar_trunc67_in;
    wire [0:0] adapt_scalar_trunc67_q;
    wire [23:0] c_i24_05_q;
    wire [31:0] c_i32_026_q;
    wire [6:0] c_i7_011_q;
    wire [511:0] dsdk_ip_adapt_bitjoin1_q;
    wire [191:0] dsdk_ip_adapt_bitjoin7_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension20_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension24_q;
    wire [7:0] element_extension3_q;
    wire [511:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_almost_full_bitsignaltemp;
    wire [511:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_stall_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect28_b;
    wire [31:0] ip_dsdk_adapt_bitselect30_b;
    wire [31:0] ip_dsdk_adapt_bitselect32_b;
    wire [63:0] ip_dsdk_adapt_bitselect34_b;
    wire [31:0] ip_dsdk_adapt_bitselect36_b;
    wire [191:0] ip_dsdk_adapt_bitselect38_b;
    wire [31:0] ip_dsdk_adapt_bitselect40_b;
    wire [31:0] ip_dsdk_adapt_bitselect42_b;
    wire [31:0] ip_dsdk_adapt_bitselect44_b;
    wire [31:0] ip_dsdk_adapt_bitselect46_b;
    wire [31:0] ip_dsdk_adapt_bitselect48_b;
    wire [31:0] ip_dsdk_adapt_bitselect50_b;
    wire [0:0] ip_dsdk_adapt_bitselect52_b;
    wire [0:0] ip_dsdk_adapt_bitselect54_b;
    wire [0:0] ip_dsdk_adapt_bitselect56_b;
    wire [0:0] ip_dsdk_adapt_bitselect58_b;
    wire [0:0] ip_dsdk_adapt_bitselect60_b;
    wire [0:0] ip_dsdk_adapt_bitselect62_b;
    wire [0:0] ip_dsdk_adapt_bitselect64_b;
    wire [0:0] ip_dsdk_adapt_bitselect66_b;


    // c_i7_011(CONSTANT,15)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension24(BITJOIN,33)
    assign element_extension24_q = {c_i7_011_q, in_data_in_18_tpl};

    // element_extension22(BITJOIN,32)
    assign element_extension22_q = {c_i7_011_q, in_data_in_17_tpl};

    // element_extension20(BITJOIN,31)
    assign element_extension20_q = {c_i7_011_q, in_data_in_16_tpl};

    // element_extension18(BITJOIN,30)
    assign element_extension18_q = {c_i7_011_q, in_data_in_15_tpl};

    // element_extension16(BITJOIN,29)
    assign element_extension16_q = {c_i7_011_q, in_data_in_14_tpl};

    // element_extension14(BITJOIN,28)
    assign element_extension14_q = {c_i7_011_q, in_data_in_13_tpl};

    // element_extension12(BITJOIN,27)
    assign element_extension12_q = {c_i7_011_q, in_data_in_12_tpl};

    // element_extension10(BITJOIN,26)
    assign element_extension10_q = {c_i7_011_q, in_data_in_11_tpl};

    // dsdk_ip_adapt_bitjoin7(BITJOIN,25)
    assign dsdk_ip_adapt_bitjoin7_q = {in_data_in_10_tpl, in_data_in_9_tpl, in_data_in_8_tpl, in_data_in_7_tpl, in_data_in_6_tpl, in_data_in_5_tpl};

    // c_i32_026(CONSTANT,13)
    assign c_i32_026_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i24_05(CONSTANT,12)
    assign c_i24_05_q = $unsigned(24'b000000000000000000000000);

    // element_extension3(BITJOIN,34)
    assign element_extension3_q = {c_i7_011_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,24)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i32_026_q, element_extension24_q, element_extension22_q, element_extension20_q, element_extension18_q, element_extension16_q, element_extension14_q, element_extension12_q, element_extension10_q, dsdk_ip_adapt_bitjoin7_q, in_data_in_4_tpl, in_data_in_3_tpl, c_i32_026_q, in_data_in_2_tpl, in_data_in_1_tpl, c_i24_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0(EXTIFACE,35)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_in = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_stall_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_stall_out_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_valid_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_valid_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .ALLOW_FULL_WRITE(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(512),
        .IMPL("ram"),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0 (
        .data_in(dsdk_ip_adapt_bitjoin1_q),
        .stall_in(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_valid_in_bitsignaltemp),
        .almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_almost_full_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out),
        .stall_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,67)@20000000
    assign out_stall_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_stall_out;

    // ip_dsdk_adapt_bitselect66(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect66_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out[472:472];

    // adapt_scalar_trunc67(ROUND,10)
    assign adapt_scalar_trunc67_in = ip_dsdk_adapt_bitselect66_b;
    assign adapt_scalar_trunc67_q = adapt_scalar_trunc67_in[0:0];

    // ip_dsdk_adapt_bitselect64(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect64_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out[464:464];

    // adapt_scalar_trunc65(ROUND,9)
    assign adapt_scalar_trunc65_in = ip_dsdk_adapt_bitselect64_b;
    assign adapt_scalar_trunc65_q = adapt_scalar_trunc65_in[0:0];

    // ip_dsdk_adapt_bitselect62(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect62_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out[456:456];

    // adapt_scalar_trunc63(ROUND,8)
    assign adapt_scalar_trunc63_in = ip_dsdk_adapt_bitselect62_b;
    assign adapt_scalar_trunc63_q = adapt_scalar_trunc63_in[0:0];

    // ip_dsdk_adapt_bitselect60(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect60_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out[448:448];

    // adapt_scalar_trunc61(ROUND,7)
    assign adapt_scalar_trunc61_in = ip_dsdk_adapt_bitselect60_b;
    assign adapt_scalar_trunc61_q = adapt_scalar_trunc61_in[0:0];

    // ip_dsdk_adapt_bitselect58(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect58_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out[440:440];

    // adapt_scalar_trunc59(ROUND,6)
    assign adapt_scalar_trunc59_in = ip_dsdk_adapt_bitselect58_b;
    assign adapt_scalar_trunc59_q = adapt_scalar_trunc59_in[0:0];

    // ip_dsdk_adapt_bitselect56(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect56_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out[432:432];

    // adapt_scalar_trunc57(ROUND,5)
    assign adapt_scalar_trunc57_in = ip_dsdk_adapt_bitselect56_b;
    assign adapt_scalar_trunc57_q = adapt_scalar_trunc57_in[0:0];

    // ip_dsdk_adapt_bitselect54(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect54_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out[424:424];

    // adapt_scalar_trunc55(ROUND,4)
    assign adapt_scalar_trunc55_in = ip_dsdk_adapt_bitselect54_b;
    assign adapt_scalar_trunc55_q = adapt_scalar_trunc55_in[0:0];

    // ip_dsdk_adapt_bitselect52(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect52_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out[416:416];

    // adapt_scalar_trunc53(ROUND,3)
    assign adapt_scalar_trunc53_in = ip_dsdk_adapt_bitselect52_b;
    assign adapt_scalar_trunc53_q = adapt_scalar_trunc53_in[0:0];

    // ip_dsdk_adapt_bitselect38(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect38_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out[415:224];

    // ip_dsdk_adapt_bitselect50(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect50_b = ip_dsdk_adapt_bitselect38_b[191:160];

    // ip_dsdk_adapt_bitselect48(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect48_b = ip_dsdk_adapt_bitselect38_b[159:128];

    // ip_dsdk_adapt_bitselect46(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect46_b = ip_dsdk_adapt_bitselect38_b[127:96];

    // ip_dsdk_adapt_bitselect44(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect44_b = ip_dsdk_adapt_bitselect38_b[95:64];

    // ip_dsdk_adapt_bitselect42(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect42_b = ip_dsdk_adapt_bitselect38_b[63:32];

    // ip_dsdk_adapt_bitselect40(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect40_b = ip_dsdk_adapt_bitselect38_b[31:0];

    // ip_dsdk_adapt_bitselect36(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect36_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out[223:192];

    // ip_dsdk_adapt_bitselect34(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect34_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out[191:128];

    // ip_dsdk_adapt_bitselect32(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect32_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out[95:64];

    // ip_dsdk_adapt_bitselect30(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect30_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out[63:32];

    // ip_dsdk_adapt_bitselect28(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect28_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_data_out[0:0];

    // adapt_scalar_trunc29(ROUND,2)
    assign adapt_scalar_trunc29_in = ip_dsdk_adapt_bitselect28_b;
    assign adapt_scalar_trunc29_q = adapt_scalar_trunc29_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,69)@20000003
    assign out_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_almost_full;
    assign out_data_out_0_tpl = adapt_scalar_trunc29_q;
    assign out_data_out_1_tpl = ip_dsdk_adapt_bitselect30_b;
    assign out_data_out_2_tpl = ip_dsdk_adapt_bitselect32_b;
    assign out_data_out_3_tpl = ip_dsdk_adapt_bitselect34_b;
    assign out_data_out_4_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_data_out_5_tpl = ip_dsdk_adapt_bitselect40_b;
    assign out_data_out_6_tpl = ip_dsdk_adapt_bitselect42_b;
    assign out_data_out_7_tpl = ip_dsdk_adapt_bitselect44_b;
    assign out_data_out_8_tpl = ip_dsdk_adapt_bitselect46_b;
    assign out_data_out_9_tpl = ip_dsdk_adapt_bitselect48_b;
    assign out_data_out_10_tpl = ip_dsdk_adapt_bitselect50_b;
    assign out_data_out_11_tpl = adapt_scalar_trunc53_q;
    assign out_data_out_12_tpl = adapt_scalar_trunc55_q;
    assign out_data_out_13_tpl = adapt_scalar_trunc57_q;
    assign out_data_out_14_tpl = adapt_scalar_trunc59_q;
    assign out_data_out_15_tpl = adapt_scalar_trunc61_q;
    assign out_data_out_16_tpl = adapt_scalar_trunc63_q;
    assign out_data_out_17_tpl = adapt_scalar_trunc65_q;
    assign out_data_out_18_tpl = adapt_scalar_trunc67_q;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i47_sobel_filters_c0_exit393_sobel_filter0_valid_out;

endmodule
