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

// SystemVerilog created from kmeans_i_llvm_fpga_sfc_exit_s_c0_out_forA000000Z95_kmeans1_data_fifo
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_i_llvm_fpga_sfc_exit_s_c0_out_forA000000Z95_kmeans1_data_fifo (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [0:0] in_data_in_1_tpl,
    input wire [0:0] in_data_in_2_tpl,
    input wire [31:0] in_data_in_3_tpl,
    input wire [0:0] in_data_in_4_tpl,
    input wire [0:0] in_data_in_5_tpl,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_full,
    output wire [0:0] out_data_out_0_tpl,
    output wire [0:0] out_data_out_1_tpl,
    output wire [0:0] out_data_out_2_tpl,
    output wire [31:0] out_data_out_3_tpl,
    output wire [0:0] out_data_out_4_tpl,
    output wire [0:0] out_data_out_5_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc17_in;
    wire [0:0] adapt_scalar_trunc17_q;
    wire [0:0] adapt_scalar_trunc19_in;
    wire [0:0] adapt_scalar_trunc19_q;
    wire [0:0] adapt_scalar_trunc21_in;
    wire [0:0] adapt_scalar_trunc21_q;
    wire [0:0] adapt_scalar_trunc25_in;
    wire [0:0] adapt_scalar_trunc25_q;
    wire [0:0] adapt_scalar_trunc27_in;
    wire [0:0] adapt_scalar_trunc27_q;
    wire [15:0] c_i16_014_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] c_i8_09_q;
    wire [95:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [95:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_almost_full_bitsignaltemp;
    wire [95:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_stall_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect16_b;
    wire [0:0] ip_dsdk_adapt_bitselect18_b;
    wire [0:0] ip_dsdk_adapt_bitselect20_b;
    wire [31:0] ip_dsdk_adapt_bitselect22_b;
    wire [0:0] ip_dsdk_adapt_bitselect24_b;
    wire [0:0] ip_dsdk_adapt_bitselect26_b;


    // c_i16_014(CONSTANT,7)
    assign c_i16_014_q = $unsigned(16'b0000000000000000);

    // c_i7_011(CONSTANT,8)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension12(BITJOIN,16)
    assign element_extension12_q = {c_i7_011_q, in_data_in_5_tpl};

    // element_extension10(BITJOIN,15)
    assign element_extension10_q = {c_i7_011_q, in_data_in_4_tpl};

    // c_i8_09(CONSTANT,13)
    assign c_i8_09_q = $unsigned(8'b00000000);

    // element_extension7(BITJOIN,19)
    assign element_extension7_q = {c_i7_011_q, in_data_in_2_tpl};

    // element_extension5(BITJOIN,18)
    assign element_extension5_q = {c_i7_011_q, in_data_in_1_tpl};

    // element_extension3(BITJOIN,17)
    assign element_extension3_q = {c_i7_011_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,14)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i16_014_q, element_extension12_q, element_extension10_q, in_data_in_3_tpl, c_i8_09_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0(EXTIFACE,20)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_data_in = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_stall_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_stall_out_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_valid_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_valid_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(8),
        .ALLOW_FULL_WRITE(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(96),
        .IMPL("ram"),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0 (
        .data_in(dsdk_ip_adapt_bitjoin1_q),
        .stall_in(i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_valid_in_bitsignaltemp),
        .almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_almost_full_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_data_out),
        .stall_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,29)@20000000
    assign out_stall_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_stall_out;

    // ip_dsdk_adapt_bitselect26(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect26_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_data_out[72:72];

    // adapt_scalar_trunc27(ROUND,6)
    assign adapt_scalar_trunc27_in = ip_dsdk_adapt_bitselect26_b;
    assign adapt_scalar_trunc27_q = adapt_scalar_trunc27_in[0:0];

    // ip_dsdk_adapt_bitselect24(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect24_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_data_out[64:64];

    // adapt_scalar_trunc25(ROUND,5)
    assign adapt_scalar_trunc25_in = ip_dsdk_adapt_bitselect24_b;
    assign adapt_scalar_trunc25_q = adapt_scalar_trunc25_in[0:0];

    // ip_dsdk_adapt_bitselect22(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect22_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_data_out[63:32];

    // ip_dsdk_adapt_bitselect20(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect20_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_data_out[16:16];

    // adapt_scalar_trunc21(ROUND,4)
    assign adapt_scalar_trunc21_in = ip_dsdk_adapt_bitselect20_b;
    assign adapt_scalar_trunc21_q = adapt_scalar_trunc21_in[0:0];

    // ip_dsdk_adapt_bitselect18(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect18_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_data_out[8:8];

    // adapt_scalar_trunc19(ROUND,3)
    assign adapt_scalar_trunc19_in = ip_dsdk_adapt_bitselect18_b;
    assign adapt_scalar_trunc19_q = adapt_scalar_trunc19_in[0:0];

    // ip_dsdk_adapt_bitselect16(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect16_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_data_out[0:0];

    // adapt_scalar_trunc17(ROUND,2)
    assign adapt_scalar_trunc17_in = ip_dsdk_adapt_bitselect16_b;
    assign adapt_scalar_trunc17_q = adapt_scalar_trunc17_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,31)@20000003
    assign out_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_almost_full;
    assign out_data_out_0_tpl = adapt_scalar_trunc17_q;
    assign out_data_out_1_tpl = adapt_scalar_trunc19_q;
    assign out_data_out_2_tpl = adapt_scalar_trunc21_q;
    assign out_data_out_3_tpl = ip_dsdk_adapt_bitselect22_b;
    assign out_data_out_4_tpl = adapt_scalar_trunc25_q;
    assign out_data_out_5_tpl = adapt_scalar_trunc27_q;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond32_preheader_kmeanss_c0_exit195_kmeans0_valid_out;

endmodule
