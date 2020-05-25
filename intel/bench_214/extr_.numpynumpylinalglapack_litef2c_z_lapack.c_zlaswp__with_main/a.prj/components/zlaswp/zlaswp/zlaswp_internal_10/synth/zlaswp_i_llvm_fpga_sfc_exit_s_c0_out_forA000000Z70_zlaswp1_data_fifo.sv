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

// SystemVerilog created from zlaswp_i_llvm_fpga_sfc_exit_s_c0_out_forA000000Z70_zlaswp1_data_fifo
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_i_llvm_fpga_sfc_exit_s_c0_out_forA000000Z70_zlaswp1_data_fifo (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [31:0] in_data_in_1_tpl,
    input wire [0:0] in_data_in_2_tpl,
    input wire [0:0] in_data_in_3_tpl,
    input wire [0:0] in_data_in_4_tpl,
    input wire [0:0] in_data_in_5_tpl,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_full,
    output wire [0:0] out_data_out_0_tpl,
    output wire [31:0] out_data_out_1_tpl,
    output wire [0:0] out_data_out_2_tpl,
    output wire [0:0] out_data_out_3_tpl,
    output wire [0:0] out_data_out_4_tpl,
    output wire [0:0] out_data_out_5_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc16_in;
    wire [0:0] adapt_scalar_trunc16_q;
    wire [0:0] adapt_scalar_trunc20_in;
    wire [0:0] adapt_scalar_trunc20_q;
    wire [0:0] adapt_scalar_trunc22_in;
    wire [0:0] adapt_scalar_trunc22_q;
    wire [0:0] adapt_scalar_trunc24_in;
    wire [0:0] adapt_scalar_trunc24_q;
    wire [0:0] adapt_scalar_trunc26_in;
    wire [0:0] adapt_scalar_trunc26_q;
    wire [23:0] c_i24_05_q;
    wire [6:0] c_i7_011_q;
    wire [95:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [95:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_almost_full_bitsignaltemp;
    wire [95:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_stall_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect15_b;
    wire [31:0] ip_dsdk_adapt_bitselect17_b;
    wire [0:0] ip_dsdk_adapt_bitselect19_b;
    wire [0:0] ip_dsdk_adapt_bitselect21_b;
    wire [0:0] ip_dsdk_adapt_bitselect23_b;
    wire [0:0] ip_dsdk_adapt_bitselect25_b;


    // c_i7_011(CONSTANT,8)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension12(BITJOIN,15)
    assign element_extension12_q = {c_i7_011_q, in_data_in_5_tpl};

    // element_extension10(BITJOIN,14)
    assign element_extension10_q = {c_i7_011_q, in_data_in_4_tpl};

    // element_extension8(BITJOIN,18)
    assign element_extension8_q = {c_i7_011_q, in_data_in_3_tpl};

    // element_extension6(BITJOIN,17)
    assign element_extension6_q = {c_i7_011_q, in_data_in_2_tpl};

    // c_i24_05(CONSTANT,7)
    assign c_i24_05_q = $unsigned(24'b000000000000000000000000);

    // element_extension3(BITJOIN,16)
    assign element_extension3_q = {c_i7_011_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,13)
    assign dsdk_ip_adapt_bitjoin1_q = {element_extension12_q, element_extension10_q, element_extension8_q, element_extension6_q, in_data_in_1_tpl, c_i24_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0(EXTIFACE,19)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_data_in = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_stall_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_stall_out_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_valid_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_valid_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(4),
        .ALLOW_FULL_WRITE(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(96),
        .IMPL("ram"),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0 (
        .data_in(dsdk_ip_adapt_bitjoin1_q),
        .stall_in(i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_valid_in_bitsignaltemp),
        .almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_almost_full_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_data_out),
        .stall_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,28)@20000000
    assign out_stall_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_stall_out;

    // ip_dsdk_adapt_bitselect25(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect25_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_data_out[88:88];

    // adapt_scalar_trunc26(ROUND,6)
    assign adapt_scalar_trunc26_in = ip_dsdk_adapt_bitselect25_b;
    assign adapt_scalar_trunc26_q = adapt_scalar_trunc26_in[0:0];

    // ip_dsdk_adapt_bitselect23(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect23_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_data_out[80:80];

    // adapt_scalar_trunc24(ROUND,5)
    assign adapt_scalar_trunc24_in = ip_dsdk_adapt_bitselect23_b;
    assign adapt_scalar_trunc24_q = adapt_scalar_trunc24_in[0:0];

    // ip_dsdk_adapt_bitselect21(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect21_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_data_out[72:72];

    // adapt_scalar_trunc22(ROUND,4)
    assign adapt_scalar_trunc22_in = ip_dsdk_adapt_bitselect21_b;
    assign adapt_scalar_trunc22_q = adapt_scalar_trunc22_in[0:0];

    // ip_dsdk_adapt_bitselect19(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect19_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_data_out[64:64];

    // adapt_scalar_trunc20(ROUND,3)
    assign adapt_scalar_trunc20_in = ip_dsdk_adapt_bitselect19_b;
    assign adapt_scalar_trunc20_q = adapt_scalar_trunc20_in[0:0];

    // ip_dsdk_adapt_bitselect17(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect17_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_data_out[63:32];

    // ip_dsdk_adapt_bitselect15(BITSELECT,20)
    assign ip_dsdk_adapt_bitselect15_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_data_out[0:0];

    // adapt_scalar_trunc16(ROUND,2)
    assign adapt_scalar_trunc16_in = ip_dsdk_adapt_bitselect15_b;
    assign adapt_scalar_trunc16_q = adapt_scalar_trunc16_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,30)@20000003
    assign out_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_almost_full;
    assign out_data_out_0_tpl = adapt_scalar_trunc16_q;
    assign out_data_out_1_tpl = ip_dsdk_adapt_bitselect17_b;
    assign out_data_out_2_tpl = adapt_scalar_trunc20_q;
    assign out_data_out_3_tpl = adapt_scalar_trunc22_q;
    assign out_data_out_4_tpl = adapt_scalar_trunc24_q;
    assign out_data_out_5_tpl = adapt_scalar_trunc26_q;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_zlaswps_c0_exit270_zlaswp0_valid_out;

endmodule
