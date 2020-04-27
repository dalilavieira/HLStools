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

// SystemVerilog created from kmeans_i_llvm_fpga_sfc_exit_s_c0_out_forA000000Z08_kmeans1_data_fifo
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_i_llvm_fpga_sfc_exit_s_c0_out_forA000000Z08_kmeans1_data_fifo (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [31:0] in_data_in_1_tpl,
    input wire [15:0] in_data_in_2_tpl,
    input wire [0:0] in_data_in_3_tpl,
    input wire [0:0] in_data_in_4_tpl,
    input wire [0:0] in_data_in_5_tpl,
    input wire [0:0] in_data_in_6_tpl,
    input wire [31:0] in_data_in_7_tpl,
    input wire [0:0] in_data_in_8_tpl,
    input wire [0:0] in_data_in_9_tpl,
    input wire [0:0] in_data_in_10_tpl,
    input wire [31:0] in_data_in_11_tpl,
    input wire [0:0] in_data_in_12_tpl,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_full,
    output wire [0:0] out_data_out_0_tpl,
    output wire [31:0] out_data_out_1_tpl,
    output wire [15:0] out_data_out_2_tpl,
    output wire [0:0] out_data_out_3_tpl,
    output wire [0:0] out_data_out_4_tpl,
    output wire [0:0] out_data_out_5_tpl,
    output wire [0:0] out_data_out_6_tpl,
    output wire [31:0] out_data_out_7_tpl,
    output wire [0:0] out_data_out_8_tpl,
    output wire [0:0] out_data_out_9_tpl,
    output wire [0:0] out_data_out_10_tpl,
    output wire [31:0] out_data_out_11_tpl,
    output wire [0:0] out_data_out_12_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc27_in;
    wire [0:0] adapt_scalar_trunc27_q;
    wire [0:0] adapt_scalar_trunc33_in;
    wire [0:0] adapt_scalar_trunc33_q;
    wire [0:0] adapt_scalar_trunc35_in;
    wire [0:0] adapt_scalar_trunc35_q;
    wire [0:0] adapt_scalar_trunc37_in;
    wire [0:0] adapt_scalar_trunc37_q;
    wire [0:0] adapt_scalar_trunc39_in;
    wire [0:0] adapt_scalar_trunc39_q;
    wire [0:0] adapt_scalar_trunc43_in;
    wire [0:0] adapt_scalar_trunc43_q;
    wire [0:0] adapt_scalar_trunc45_in;
    wire [0:0] adapt_scalar_trunc45_q;
    wire [0:0] adapt_scalar_trunc47_in;
    wire [0:0] adapt_scalar_trunc47_q;
    wire [0:0] adapt_scalar_trunc51_in;
    wire [0:0] adapt_scalar_trunc51_q;
    wire [15:0] c_i16_014_q;
    wire [23:0] c_i24_024_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] c_i8_021_q;
    wire [255:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [255:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_almost_full_bitsignaltemp;
    wire [255:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_stall_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect26_b;
    wire [31:0] ip_dsdk_adapt_bitselect28_b;
    wire [15:0] ip_dsdk_adapt_bitselect30_b;
    wire [0:0] ip_dsdk_adapt_bitselect32_b;
    wire [0:0] ip_dsdk_adapt_bitselect34_b;
    wire [0:0] ip_dsdk_adapt_bitselect36_b;
    wire [0:0] ip_dsdk_adapt_bitselect38_b;
    wire [31:0] ip_dsdk_adapt_bitselect40_b;
    wire [0:0] ip_dsdk_adapt_bitselect42_b;
    wire [0:0] ip_dsdk_adapt_bitselect44_b;
    wire [0:0] ip_dsdk_adapt_bitselect46_b;
    wire [31:0] ip_dsdk_adapt_bitselect48_b;
    wire [0:0] ip_dsdk_adapt_bitselect50_b;


    // c_i7_011(CONSTANT,14)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension22(BITJOIN,30)
    assign element_extension22_q = {c_i7_011_q, in_data_in_12_tpl};

    // c_i8_021(CONSTANT,23)
    assign c_i8_021_q = $unsigned(8'b00000000);

    // element_extension19(BITJOIN,29)
    assign element_extension19_q = {c_i7_011_q, in_data_in_10_tpl};

    // element_extension17(BITJOIN,28)
    assign element_extension17_q = {c_i7_011_q, in_data_in_9_tpl};

    // element_extension15(BITJOIN,27)
    assign element_extension15_q = {c_i7_011_q, in_data_in_8_tpl};

    // c_i16_014(CONSTANT,11)
    assign c_i16_014_q = $unsigned(16'b0000000000000000);

    // element_extension12(BITJOIN,26)
    assign element_extension12_q = {c_i7_011_q, in_data_in_6_tpl};

    // element_extension10(BITJOIN,25)
    assign element_extension10_q = {c_i7_011_q, in_data_in_5_tpl};

    // element_extension8(BITJOIN,33)
    assign element_extension8_q = {c_i7_011_q, in_data_in_4_tpl};

    // element_extension6(BITJOIN,32)
    assign element_extension6_q = {c_i7_011_q, in_data_in_3_tpl};

    // c_i24_024(CONSTANT,12)
    assign c_i24_024_q = $unsigned(24'b000000000000000000000000);

    // element_extension3(BITJOIN,31)
    assign element_extension3_q = {c_i7_011_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,24)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i24_024_q, element_extension22_q, in_data_in_11_tpl, c_i8_021_q, element_extension19_q, element_extension17_q, element_extension15_q, in_data_in_7_tpl, c_i16_014_q, element_extension12_q, element_extension10_q, element_extension8_q, element_extension6_q, in_data_in_2_tpl, in_data_in_1_tpl, c_i24_024_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0(EXTIFACE,34)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_in = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_stall_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_stall_out_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_valid_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_valid_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(8),
        .ALLOW_FULL_WRITE(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(256),
        .IMPL("ram"),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0 (
        .data_in(dsdk_ip_adapt_bitjoin1_q),
        .stall_in(i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_valid_in_bitsignaltemp),
        .almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_almost_full_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out),
        .stall_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,53)@20000000
    assign out_stall_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_stall_out;

    // ip_dsdk_adapt_bitselect50(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out[224:224];

    // adapt_scalar_trunc51(ROUND,10)
    assign adapt_scalar_trunc51_in = ip_dsdk_adapt_bitselect50_b;
    assign adapt_scalar_trunc51_q = adapt_scalar_trunc51_in[0:0];

    // ip_dsdk_adapt_bitselect48(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect48_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out[223:192];

    // ip_dsdk_adapt_bitselect46(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect46_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out[176:176];

    // adapt_scalar_trunc47(ROUND,9)
    assign adapt_scalar_trunc47_in = ip_dsdk_adapt_bitselect46_b;
    assign adapt_scalar_trunc47_q = adapt_scalar_trunc47_in[0:0];

    // ip_dsdk_adapt_bitselect44(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect44_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out[168:168];

    // adapt_scalar_trunc45(ROUND,8)
    assign adapt_scalar_trunc45_in = ip_dsdk_adapt_bitselect44_b;
    assign adapt_scalar_trunc45_q = adapt_scalar_trunc45_in[0:0];

    // ip_dsdk_adapt_bitselect42(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect42_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out[160:160];

    // adapt_scalar_trunc43(ROUND,7)
    assign adapt_scalar_trunc43_in = ip_dsdk_adapt_bitselect42_b;
    assign adapt_scalar_trunc43_q = adapt_scalar_trunc43_in[0:0];

    // ip_dsdk_adapt_bitselect40(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect40_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out[159:128];

    // ip_dsdk_adapt_bitselect38(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect38_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out[104:104];

    // adapt_scalar_trunc39(ROUND,6)
    assign adapt_scalar_trunc39_in = ip_dsdk_adapt_bitselect38_b;
    assign adapt_scalar_trunc39_q = adapt_scalar_trunc39_in[0:0];

    // ip_dsdk_adapt_bitselect36(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect36_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out[96:96];

    // adapt_scalar_trunc37(ROUND,5)
    assign adapt_scalar_trunc37_in = ip_dsdk_adapt_bitselect36_b;
    assign adapt_scalar_trunc37_q = adapt_scalar_trunc37_in[0:0];

    // ip_dsdk_adapt_bitselect34(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect34_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out[88:88];

    // adapt_scalar_trunc35(ROUND,4)
    assign adapt_scalar_trunc35_in = ip_dsdk_adapt_bitselect34_b;
    assign adapt_scalar_trunc35_q = adapt_scalar_trunc35_in[0:0];

    // ip_dsdk_adapt_bitselect32(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect32_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out[80:80];

    // adapt_scalar_trunc33(ROUND,3)
    assign adapt_scalar_trunc33_in = ip_dsdk_adapt_bitselect32_b;
    assign adapt_scalar_trunc33_q = adapt_scalar_trunc33_in[0:0];

    // ip_dsdk_adapt_bitselect30(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect30_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out[79:64];

    // ip_dsdk_adapt_bitselect28(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect28_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out[63:32];

    // ip_dsdk_adapt_bitselect26(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect26_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_data_out[0:0];

    // adapt_scalar_trunc27(ROUND,2)
    assign adapt_scalar_trunc27_in = ip_dsdk_adapt_bitselect26_b;
    assign adapt_scalar_trunc27_q = adapt_scalar_trunc27_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,55)@20000003
    assign out_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_almost_full;
    assign out_data_out_0_tpl = adapt_scalar_trunc27_q;
    assign out_data_out_1_tpl = ip_dsdk_adapt_bitselect28_b;
    assign out_data_out_2_tpl = ip_dsdk_adapt_bitselect30_b;
    assign out_data_out_3_tpl = adapt_scalar_trunc33_q;
    assign out_data_out_4_tpl = adapt_scalar_trunc35_q;
    assign out_data_out_5_tpl = adapt_scalar_trunc37_q;
    assign out_data_out_6_tpl = adapt_scalar_trunc39_q;
    assign out_data_out_7_tpl = ip_dsdk_adapt_bitselect40_b;
    assign out_data_out_8_tpl = adapt_scalar_trunc43_q;
    assign out_data_out_9_tpl = adapt_scalar_trunc45_q;
    assign out_data_out_10_tpl = adapt_scalar_trunc47_q;
    assign out_data_out_11_tpl = ip_dsdk_adapt_bitselect48_b;
    assign out_data_out_12_tpl = adapt_scalar_trunc51_q;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond37_preheader_kmeanss_c0_exit208_kmeans0_valid_out;

endmodule
