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

// SystemVerilog created from sobel_filter_i_llvm_fpga_sfc_exit_s_c0_oA000004Zel_filter1_data_fifo
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_i_llvm_fpga_sfc_exit_s_c0_oA000004Zel_filter1_data_fifo (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [31:0] in_data_in_1_tpl,
    input wire [31:0] in_data_in_2_tpl,
    input wire [31:0] in_data_in_3_tpl,
    input wire [63:0] in_data_in_4_tpl,
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
    input wire [0:0] in_data_in_19_tpl,
    input wire [0:0] in_data_in_20_tpl,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_full,
    output wire [0:0] out_data_out_0_tpl,
    output wire [31:0] out_data_out_1_tpl,
    output wire [31:0] out_data_out_2_tpl,
    output wire [31:0] out_data_out_3_tpl,
    output wire [63:0] out_data_out_4_tpl,
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
    output wire [0:0] out_data_out_19_tpl,
    output wire [0:0] out_data_out_20_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc32_in;
    wire [0:0] adapt_scalar_trunc32_q;
    wire [0:0] adapt_scalar_trunc56_in;
    wire [0:0] adapt_scalar_trunc56_q;
    wire [0:0] adapt_scalar_trunc58_in;
    wire [0:0] adapt_scalar_trunc58_q;
    wire [0:0] adapt_scalar_trunc60_in;
    wire [0:0] adapt_scalar_trunc60_q;
    wire [0:0] adapt_scalar_trunc62_in;
    wire [0:0] adapt_scalar_trunc62_q;
    wire [0:0] adapt_scalar_trunc64_in;
    wire [0:0] adapt_scalar_trunc64_q;
    wire [0:0] adapt_scalar_trunc66_in;
    wire [0:0] adapt_scalar_trunc66_q;
    wire [0:0] adapt_scalar_trunc68_in;
    wire [0:0] adapt_scalar_trunc68_q;
    wire [0:0] adapt_scalar_trunc70_in;
    wire [0:0] adapt_scalar_trunc70_q;
    wire [0:0] adapt_scalar_trunc72_in;
    wire [0:0] adapt_scalar_trunc72_q;
    wire [0:0] adapt_scalar_trunc74_in;
    wire [0:0] adapt_scalar_trunc74_q;
    wire [23:0] c_i24_05_q;
    wire [47:0] c_i48_029_q;
    wire [6:0] c_i7_010_q;
    wire [511:0] dsdk_ip_adapt_bitjoin1_q;
    wire [191:0] dsdk_ip_adapt_bitjoin6_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension23_q;
    wire [7:0] element_extension25_q;
    wire [7:0] element_extension27_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension9_q;
    wire [511:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_almost_full_bitsignaltemp;
    wire [511:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_stall_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect31_b;
    wire [31:0] ip_dsdk_adapt_bitselect33_b;
    wire [31:0] ip_dsdk_adapt_bitselect35_b;
    wire [31:0] ip_dsdk_adapt_bitselect37_b;
    wire [63:0] ip_dsdk_adapt_bitselect39_b;
    wire [191:0] ip_dsdk_adapt_bitselect41_b;
    wire [31:0] ip_dsdk_adapt_bitselect43_b;
    wire [31:0] ip_dsdk_adapt_bitselect45_b;
    wire [31:0] ip_dsdk_adapt_bitselect47_b;
    wire [31:0] ip_dsdk_adapt_bitselect49_b;
    wire [31:0] ip_dsdk_adapt_bitselect51_b;
    wire [31:0] ip_dsdk_adapt_bitselect53_b;
    wire [0:0] ip_dsdk_adapt_bitselect55_b;
    wire [0:0] ip_dsdk_adapt_bitselect57_b;
    wire [0:0] ip_dsdk_adapt_bitselect59_b;
    wire [0:0] ip_dsdk_adapt_bitselect61_b;
    wire [0:0] ip_dsdk_adapt_bitselect63_b;
    wire [0:0] ip_dsdk_adapt_bitselect65_b;
    wire [0:0] ip_dsdk_adapt_bitselect67_b;
    wire [0:0] ip_dsdk_adapt_bitselect69_b;
    wire [0:0] ip_dsdk_adapt_bitselect71_b;
    wire [0:0] ip_dsdk_adapt_bitselect73_b;


    // c_i48_029(CONSTANT,15)
    assign c_i48_029_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // c_i7_010(CONSTANT,16)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension27(BITJOIN,37)
    assign element_extension27_q = {c_i7_010_q, in_data_in_20_tpl};

    // element_extension25(BITJOIN,36)
    assign element_extension25_q = {c_i7_010_q, in_data_in_19_tpl};

    // element_extension23(BITJOIN,35)
    assign element_extension23_q = {c_i7_010_q, in_data_in_18_tpl};

    // element_extension21(BITJOIN,34)
    assign element_extension21_q = {c_i7_010_q, in_data_in_17_tpl};

    // element_extension19(BITJOIN,33)
    assign element_extension19_q = {c_i7_010_q, in_data_in_16_tpl};

    // element_extension17(BITJOIN,32)
    assign element_extension17_q = {c_i7_010_q, in_data_in_15_tpl};

    // element_extension15(BITJOIN,31)
    assign element_extension15_q = {c_i7_010_q, in_data_in_14_tpl};

    // element_extension13(BITJOIN,30)
    assign element_extension13_q = {c_i7_010_q, in_data_in_13_tpl};

    // element_extension11(BITJOIN,29)
    assign element_extension11_q = {c_i7_010_q, in_data_in_12_tpl};

    // element_extension9(BITJOIN,39)
    assign element_extension9_q = {c_i7_010_q, in_data_in_11_tpl};

    // dsdk_ip_adapt_bitjoin6(BITJOIN,28)
    assign dsdk_ip_adapt_bitjoin6_q = {in_data_in_10_tpl, in_data_in_9_tpl, in_data_in_8_tpl, in_data_in_7_tpl, in_data_in_6_tpl, in_data_in_5_tpl};

    // c_i24_05(CONSTANT,14)
    assign c_i24_05_q = $unsigned(24'b000000000000000000000000);

    // element_extension3(BITJOIN,38)
    assign element_extension3_q = {c_i7_010_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,27)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i48_029_q, element_extension27_q, element_extension25_q, element_extension23_q, element_extension21_q, element_extension19_q, element_extension17_q, element_extension15_q, element_extension13_q, element_extension11_q, element_extension9_q, dsdk_ip_adapt_bitjoin6_q, in_data_in_4_tpl, in_data_in_3_tpl, in_data_in_2_tpl, in_data_in_1_tpl, c_i24_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0(EXTIFACE,40)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_in = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_stall_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_stall_out_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_valid_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_valid_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .ALLOW_FULL_WRITE(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(512),
        .IMPL("ram"),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0 (
        .data_in(dsdk_ip_adapt_bitjoin1_q),
        .stall_in(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_valid_in_bitsignaltemp),
        .almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_almost_full_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out),
        .stall_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,74)@20000000
    assign out_stall_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_stall_out;

    // ip_dsdk_adapt_bitselect73(BITSELECT,62)
    assign ip_dsdk_adapt_bitselect73_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[456:456];

    // adapt_scalar_trunc74(ROUND,12)
    assign adapt_scalar_trunc74_in = ip_dsdk_adapt_bitselect73_b;
    assign adapt_scalar_trunc74_q = adapt_scalar_trunc74_in[0:0];

    // ip_dsdk_adapt_bitselect71(BITSELECT,61)
    assign ip_dsdk_adapt_bitselect71_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[448:448];

    // adapt_scalar_trunc72(ROUND,11)
    assign adapt_scalar_trunc72_in = ip_dsdk_adapt_bitselect71_b;
    assign adapt_scalar_trunc72_q = adapt_scalar_trunc72_in[0:0];

    // ip_dsdk_adapt_bitselect69(BITSELECT,60)
    assign ip_dsdk_adapt_bitselect69_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[440:440];

    // adapt_scalar_trunc70(ROUND,10)
    assign adapt_scalar_trunc70_in = ip_dsdk_adapt_bitselect69_b;
    assign adapt_scalar_trunc70_q = adapt_scalar_trunc70_in[0:0];

    // ip_dsdk_adapt_bitselect67(BITSELECT,59)
    assign ip_dsdk_adapt_bitselect67_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[432:432];

    // adapt_scalar_trunc68(ROUND,9)
    assign adapt_scalar_trunc68_in = ip_dsdk_adapt_bitselect67_b;
    assign adapt_scalar_trunc68_q = adapt_scalar_trunc68_in[0:0];

    // ip_dsdk_adapt_bitselect65(BITSELECT,58)
    assign ip_dsdk_adapt_bitselect65_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[424:424];

    // adapt_scalar_trunc66(ROUND,8)
    assign adapt_scalar_trunc66_in = ip_dsdk_adapt_bitselect65_b;
    assign adapt_scalar_trunc66_q = adapt_scalar_trunc66_in[0:0];

    // ip_dsdk_adapt_bitselect63(BITSELECT,57)
    assign ip_dsdk_adapt_bitselect63_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[416:416];

    // adapt_scalar_trunc64(ROUND,7)
    assign adapt_scalar_trunc64_in = ip_dsdk_adapt_bitselect63_b;
    assign adapt_scalar_trunc64_q = adapt_scalar_trunc64_in[0:0];

    // ip_dsdk_adapt_bitselect61(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect61_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[408:408];

    // adapt_scalar_trunc62(ROUND,6)
    assign adapt_scalar_trunc62_in = ip_dsdk_adapt_bitselect61_b;
    assign adapt_scalar_trunc62_q = adapt_scalar_trunc62_in[0:0];

    // ip_dsdk_adapt_bitselect59(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect59_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[400:400];

    // adapt_scalar_trunc60(ROUND,5)
    assign adapt_scalar_trunc60_in = ip_dsdk_adapt_bitselect59_b;
    assign adapt_scalar_trunc60_q = adapt_scalar_trunc60_in[0:0];

    // ip_dsdk_adapt_bitselect57(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect57_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[392:392];

    // adapt_scalar_trunc58(ROUND,4)
    assign adapt_scalar_trunc58_in = ip_dsdk_adapt_bitselect57_b;
    assign adapt_scalar_trunc58_q = adapt_scalar_trunc58_in[0:0];

    // ip_dsdk_adapt_bitselect55(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect55_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[384:384];

    // adapt_scalar_trunc56(ROUND,3)
    assign adapt_scalar_trunc56_in = ip_dsdk_adapt_bitselect55_b;
    assign adapt_scalar_trunc56_q = adapt_scalar_trunc56_in[0:0];

    // ip_dsdk_adapt_bitselect41(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect41_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[383:192];

    // ip_dsdk_adapt_bitselect53(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect53_b = ip_dsdk_adapt_bitselect41_b[191:160];

    // ip_dsdk_adapt_bitselect51(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect51_b = ip_dsdk_adapt_bitselect41_b[159:128];

    // ip_dsdk_adapt_bitselect49(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect49_b = ip_dsdk_adapt_bitselect41_b[127:96];

    // ip_dsdk_adapt_bitselect47(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect47_b = ip_dsdk_adapt_bitselect41_b[95:64];

    // ip_dsdk_adapt_bitselect45(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect45_b = ip_dsdk_adapt_bitselect41_b[63:32];

    // ip_dsdk_adapt_bitselect43(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect43_b = ip_dsdk_adapt_bitselect41_b[31:0];

    // ip_dsdk_adapt_bitselect39(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect39_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[191:128];

    // ip_dsdk_adapt_bitselect37(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect37_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[127:96];

    // ip_dsdk_adapt_bitselect35(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect35_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[95:64];

    // ip_dsdk_adapt_bitselect33(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect33_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[63:32];

    // ip_dsdk_adapt_bitselect31(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect31_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_data_out[0:0];

    // adapt_scalar_trunc32(ROUND,2)
    assign adapt_scalar_trunc32_in = ip_dsdk_adapt_bitselect31_b;
    assign adapt_scalar_trunc32_q = adapt_scalar_trunc32_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,76)@20000003
    assign out_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_almost_full;
    assign out_data_out_0_tpl = adapt_scalar_trunc32_q;
    assign out_data_out_1_tpl = ip_dsdk_adapt_bitselect33_b;
    assign out_data_out_2_tpl = ip_dsdk_adapt_bitselect35_b;
    assign out_data_out_3_tpl = ip_dsdk_adapt_bitselect37_b;
    assign out_data_out_4_tpl = ip_dsdk_adapt_bitselect39_b;
    assign out_data_out_5_tpl = ip_dsdk_adapt_bitselect43_b;
    assign out_data_out_6_tpl = ip_dsdk_adapt_bitselect45_b;
    assign out_data_out_7_tpl = ip_dsdk_adapt_bitselect47_b;
    assign out_data_out_8_tpl = ip_dsdk_adapt_bitselect49_b;
    assign out_data_out_9_tpl = ip_dsdk_adapt_bitselect51_b;
    assign out_data_out_10_tpl = ip_dsdk_adapt_bitselect53_b;
    assign out_data_out_11_tpl = adapt_scalar_trunc56_q;
    assign out_data_out_12_tpl = adapt_scalar_trunc58_q;
    assign out_data_out_13_tpl = adapt_scalar_trunc60_q;
    assign out_data_out_14_tpl = adapt_scalar_trunc62_q;
    assign out_data_out_15_tpl = adapt_scalar_trunc64_q;
    assign out_data_out_16_tpl = adapt_scalar_trunc66_q;
    assign out_data_out_17_tpl = adapt_scalar_trunc68_q;
    assign out_data_out_18_tpl = adapt_scalar_trunc70_q;
    assign out_data_out_19_tpl = adapt_scalar_trunc72_q;
    assign out_data_out_20_tpl = adapt_scalar_trunc74_q;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body5_i_sobel_filters_c0_exit307_sobel_filter0_valid_out;

endmodule
