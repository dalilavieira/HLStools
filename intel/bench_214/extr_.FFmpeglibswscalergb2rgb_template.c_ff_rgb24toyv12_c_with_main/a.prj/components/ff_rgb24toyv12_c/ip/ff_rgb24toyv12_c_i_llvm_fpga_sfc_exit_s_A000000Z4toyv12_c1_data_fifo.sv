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

// SystemVerilog created from ff_rgb24toyv12_c_i_llvm_fpga_sfc_exit_s_A000000Z4toyv12_c1_data_fifo
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_i_llvm_fpga_sfc_exit_s_A000000Z4toyv12_c1_data_fifo (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [63:0] in_data_in_1_tpl,
    input wire [63:0] in_data_in_2_tpl,
    input wire [63:0] in_data_in_3_tpl,
    input wire [63:0] in_data_in_4_tpl,
    input wire [0:0] in_data_in_5_tpl,
    input wire [0:0] in_data_in_6_tpl,
    input wire [0:0] in_data_in_7_tpl,
    input wire [63:0] in_data_in_8_tpl,
    input wire [63:0] in_data_in_9_tpl,
    input wire [0:0] in_data_in_10_tpl,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_full,
    output wire [0:0] out_data_out_0_tpl,
    output wire [63:0] out_data_out_1_tpl,
    output wire [63:0] out_data_out_2_tpl,
    output wire [63:0] out_data_out_3_tpl,
    output wire [63:0] out_data_out_4_tpl,
    output wire [0:0] out_data_out_5_tpl,
    output wire [0:0] out_data_out_6_tpl,
    output wire [0:0] out_data_out_7_tpl,
    output wire [63:0] out_data_out_8_tpl,
    output wire [63:0] out_data_out_9_tpl,
    output wire [0:0] out_data_out_10_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc18_in;
    wire [0:0] adapt_scalar_trunc18_q;
    wire [0:0] adapt_scalar_trunc28_in;
    wire [0:0] adapt_scalar_trunc28_q;
    wire [0:0] adapt_scalar_trunc30_in;
    wire [0:0] adapt_scalar_trunc30_q;
    wire [0:0] adapt_scalar_trunc32_in;
    wire [0:0] adapt_scalar_trunc32_q;
    wire [0:0] adapt_scalar_trunc38_in;
    wire [0:0] adapt_scalar_trunc38_q;
    wire [39:0] c_i40_012_q;
    wire [55:0] c_i56_015_q;
    wire [6:0] c_i7_011_q;
    wire [575:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [575:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_almost_full_bitsignaltemp;
    wire [575:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_stall_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect17_b;
    wire [63:0] ip_dsdk_adapt_bitselect19_b;
    wire [63:0] ip_dsdk_adapt_bitselect21_b;
    wire [63:0] ip_dsdk_adapt_bitselect23_b;
    wire [63:0] ip_dsdk_adapt_bitselect25_b;
    wire [0:0] ip_dsdk_adapt_bitselect27_b;
    wire [0:0] ip_dsdk_adapt_bitselect29_b;
    wire [0:0] ip_dsdk_adapt_bitselect31_b;
    wire [63:0] ip_dsdk_adapt_bitselect33_b;
    wire [63:0] ip_dsdk_adapt_bitselect35_b;
    wire [0:0] ip_dsdk_adapt_bitselect37_b;


    // c_i7_011(CONSTANT,10)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension13(BITJOIN,17)
    assign element_extension13_q = {c_i7_011_q, in_data_in_10_tpl};

    // c_i40_012(CONSTANT,7)
    assign c_i40_012_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // element_extension10(BITJOIN,16)
    assign element_extension10_q = {c_i7_011_q, in_data_in_7_tpl};

    // element_extension8(BITJOIN,20)
    assign element_extension8_q = {c_i7_011_q, in_data_in_6_tpl};

    // element_extension6(BITJOIN,19)
    assign element_extension6_q = {c_i7_011_q, in_data_in_5_tpl};

    // c_i56_015(CONSTANT,8)
    assign c_i56_015_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension3(BITJOIN,18)
    assign element_extension3_q = {c_i7_011_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,15)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i56_015_q, element_extension13_q, in_data_in_9_tpl, in_data_in_8_tpl, c_i40_012_q, element_extension10_q, element_extension8_q, element_extension6_q, in_data_in_4_tpl, in_data_in_3_tpl, in_data_in_2_tpl, in_data_in_1_tpl, c_i56_015_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0(EXTIFACE,21)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_in = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_stall_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_stall_out_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_valid_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_valid_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(8),
        .ALLOW_FULL_WRITE(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(576),
        .IMPL("ram"),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0 (
        .data_in(dsdk_ip_adapt_bitjoin1_q),
        .stall_in(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_valid_in_bitsignaltemp),
        .almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_almost_full_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_out),
        .stall_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,40)@20000000
    assign out_stall_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_stall_out;

    // ip_dsdk_adapt_bitselect37(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect37_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_out[512:512];

    // adapt_scalar_trunc38(ROUND,6)
    assign adapt_scalar_trunc38_in = ip_dsdk_adapt_bitselect37_b;
    assign adapt_scalar_trunc38_q = adapt_scalar_trunc38_in[0:0];

    // ip_dsdk_adapt_bitselect35(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect35_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_out[511:448];

    // ip_dsdk_adapt_bitselect33(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect33_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_out[447:384];

    // ip_dsdk_adapt_bitselect31(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect31_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_out[336:336];

    // adapt_scalar_trunc32(ROUND,5)
    assign adapt_scalar_trunc32_in = ip_dsdk_adapt_bitselect31_b;
    assign adapt_scalar_trunc32_q = adapt_scalar_trunc32_in[0:0];

    // ip_dsdk_adapt_bitselect29(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect29_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_out[328:328];

    // adapt_scalar_trunc30(ROUND,4)
    assign adapt_scalar_trunc30_in = ip_dsdk_adapt_bitselect29_b;
    assign adapt_scalar_trunc30_q = adapt_scalar_trunc30_in[0:0];

    // ip_dsdk_adapt_bitselect27(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect27_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_out[320:320];

    // adapt_scalar_trunc28(ROUND,3)
    assign adapt_scalar_trunc28_in = ip_dsdk_adapt_bitselect27_b;
    assign adapt_scalar_trunc28_q = adapt_scalar_trunc28_in[0:0];

    // ip_dsdk_adapt_bitselect25(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect25_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_out[319:256];

    // ip_dsdk_adapt_bitselect23(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect23_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_out[255:192];

    // ip_dsdk_adapt_bitselect21(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect21_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_out[191:128];

    // ip_dsdk_adapt_bitselect19(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect19_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_out[127:64];

    // ip_dsdk_adapt_bitselect17(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect17_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_data_out[0:0];

    // adapt_scalar_trunc18(ROUND,2)
    assign adapt_scalar_trunc18_in = ip_dsdk_adapt_bitselect17_b;
    assign adapt_scalar_trunc18_q = adapt_scalar_trunc18_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,42)@20000003
    assign out_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_almost_full;
    assign out_data_out_0_tpl = adapt_scalar_trunc18_q;
    assign out_data_out_1_tpl = ip_dsdk_adapt_bitselect19_b;
    assign out_data_out_2_tpl = ip_dsdk_adapt_bitselect21_b;
    assign out_data_out_3_tpl = ip_dsdk_adapt_bitselect23_b;
    assign out_data_out_4_tpl = ip_dsdk_adapt_bitselect25_b;
    assign out_data_out_5_tpl = adapt_scalar_trunc28_q;
    assign out_data_out_6_tpl = adapt_scalar_trunc30_q;
    assign out_data_out_7_tpl = adapt_scalar_trunc32_q;
    assign out_data_out_8_tpl = ip_dsdk_adapt_bitselect33_b;
    assign out_data_out_9_tpl = ip_dsdk_adapt_bitselect35_b;
    assign out_data_out_10_tpl = adapt_scalar_trunc38_q;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_cond9_preheader_ff_rgb24toyv12_cs_c0_exit422_ff_rgb24toyv12_c0_valid_out;

endmodule
