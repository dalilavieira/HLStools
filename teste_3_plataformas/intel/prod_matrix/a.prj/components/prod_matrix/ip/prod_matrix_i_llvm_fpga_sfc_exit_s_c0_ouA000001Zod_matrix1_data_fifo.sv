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

// SystemVerilog created from prod_matrix_i_llvm_fpga_sfc_exit_s_c0_ouA000001Zod_matrix1_data_fifo
// SystemVerilog created on Mon Apr  6 10:28:45 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module prod_matrix_i_llvm_fpga_sfc_exit_s_c0_ouA000001Zod_matrix1_data_fifo (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [0:0] in_data_in_1_tpl,
    input wire [0:0] in_data_in_2_tpl,
    input wire [31:0] in_data_in_3_tpl,
    input wire [0:0] in_data_in_4_tpl,
    input wire [0:0] in_data_in_5_tpl,
    input wire [31:0] in_data_in_6_tpl,
    input wire [0:0] in_data_in_7_tpl,
    input wire [0:0] in_data_in_8_tpl,
    input wire [0:0] in_data_in_9_tpl,
    input wire [0:0] in_data_in_10_tpl,
    input wire [31:0] in_data_in_11_tpl,
    input wire [0:0] in_data_in_12_tpl,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_full,
    output wire [0:0] out_data_out_0_tpl,
    output wire [0:0] out_data_out_1_tpl,
    output wire [0:0] out_data_out_2_tpl,
    output wire [31:0] out_data_out_3_tpl,
    output wire [0:0] out_data_out_4_tpl,
    output wire [0:0] out_data_out_5_tpl,
    output wire [31:0] out_data_out_6_tpl,
    output wire [0:0] out_data_out_7_tpl,
    output wire [0:0] out_data_out_8_tpl,
    output wire [0:0] out_data_out_9_tpl,
    output wire [0:0] out_data_out_10_tpl,
    output wire [31:0] out_data_out_11_tpl,
    output wire [0:0] out_data_out_12_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc28_in;
    wire [0:0] adapt_scalar_trunc28_q;
    wire [0:0] adapt_scalar_trunc30_in;
    wire [0:0] adapt_scalar_trunc30_q;
    wire [0:0] adapt_scalar_trunc32_in;
    wire [0:0] adapt_scalar_trunc32_q;
    wire [0:0] adapt_scalar_trunc36_in;
    wire [0:0] adapt_scalar_trunc36_q;
    wire [0:0] adapt_scalar_trunc38_in;
    wire [0:0] adapt_scalar_trunc38_q;
    wire [0:0] adapt_scalar_trunc42_in;
    wire [0:0] adapt_scalar_trunc42_q;
    wire [0:0] adapt_scalar_trunc44_in;
    wire [0:0] adapt_scalar_trunc44_q;
    wire [0:0] adapt_scalar_trunc46_in;
    wire [0:0] adapt_scalar_trunc46_q;
    wire [0:0] adapt_scalar_trunc48_in;
    wire [0:0] adapt_scalar_trunc48_q;
    wire [0:0] adapt_scalar_trunc52_in;
    wire [0:0] adapt_scalar_trunc52_q;
    wire [15:0] c_i16_014_q;
    wire [23:0] c_i24_025_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] c_i8_09_q;
    wire [223:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension23_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [223:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_almost_full_bitsignaltemp;
    wire [223:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_stall_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect27_b;
    wire [0:0] ip_dsdk_adapt_bitselect29_b;
    wire [0:0] ip_dsdk_adapt_bitselect31_b;
    wire [31:0] ip_dsdk_adapt_bitselect33_b;
    wire [0:0] ip_dsdk_adapt_bitselect35_b;
    wire [0:0] ip_dsdk_adapt_bitselect37_b;
    wire [31:0] ip_dsdk_adapt_bitselect39_b;
    wire [0:0] ip_dsdk_adapt_bitselect41_b;
    wire [0:0] ip_dsdk_adapt_bitselect43_b;
    wire [0:0] ip_dsdk_adapt_bitselect45_b;
    wire [0:0] ip_dsdk_adapt_bitselect47_b;
    wire [31:0] ip_dsdk_adapt_bitselect49_b;
    wire [0:0] ip_dsdk_adapt_bitselect51_b;


    // c_i24_025(CONSTANT,13)
    assign c_i24_025_q = $unsigned(24'b000000000000000000000000);

    // c_i7_011(CONSTANT,14)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension23(BITJOIN,32)
    assign element_extension23_q = {c_i7_011_q, in_data_in_12_tpl};

    // element_extension21(BITJOIN,31)
    assign element_extension21_q = {c_i7_011_q, in_data_in_10_tpl};

    // element_extension19(BITJOIN,30)
    assign element_extension19_q = {c_i7_011_q, in_data_in_9_tpl};

    // element_extension17(BITJOIN,29)
    assign element_extension17_q = {c_i7_011_q, in_data_in_8_tpl};

    // element_extension15(BITJOIN,28)
    assign element_extension15_q = {c_i7_011_q, in_data_in_7_tpl};

    // c_i16_014(CONSTANT,12)
    assign c_i16_014_q = $unsigned(16'b0000000000000000);

    // element_extension12(BITJOIN,27)
    assign element_extension12_q = {c_i7_011_q, in_data_in_5_tpl};

    // element_extension10(BITJOIN,26)
    assign element_extension10_q = {c_i7_011_q, in_data_in_4_tpl};

    // c_i8_09(CONSTANT,24)
    assign c_i8_09_q = $unsigned(8'b00000000);

    // element_extension7(BITJOIN,35)
    assign element_extension7_q = {c_i7_011_q, in_data_in_2_tpl};

    // element_extension5(BITJOIN,34)
    assign element_extension5_q = {c_i7_011_q, in_data_in_1_tpl};

    // element_extension3(BITJOIN,33)
    assign element_extension3_q = {c_i7_011_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,25)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i24_025_q, element_extension23_q, in_data_in_11_tpl, element_extension21_q, element_extension19_q, element_extension17_q, element_extension15_q, in_data_in_6_tpl, c_i16_014_q, element_extension12_q, element_extension10_q, in_data_in_3_tpl, c_i8_09_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0(EXTIFACE,36)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_in = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_stall_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_stall_out_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_valid_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_valid_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(8),
        .ALLOW_FULL_WRITE(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(224),
        .IMPL("ram"),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0 (
        .data_in(dsdk_ip_adapt_bitjoin1_q),
        .stall_in(i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_valid_in_bitsignaltemp),
        .almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_almost_full_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out),
        .stall_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,54)@20000000
    assign out_stall_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_stall_out;

    // ip_dsdk_adapt_bitselect51(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out[192:192];

    // adapt_scalar_trunc52(ROUND,11)
    assign adapt_scalar_trunc52_in = ip_dsdk_adapt_bitselect51_b;
    assign adapt_scalar_trunc52_q = adapt_scalar_trunc52_in[0:0];

    // ip_dsdk_adapt_bitselect49(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect49_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out[191:160];

    // ip_dsdk_adapt_bitselect47(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect47_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out[152:152];

    // adapt_scalar_trunc48(ROUND,10)
    assign adapt_scalar_trunc48_in = ip_dsdk_adapt_bitselect47_b;
    assign adapt_scalar_trunc48_q = adapt_scalar_trunc48_in[0:0];

    // ip_dsdk_adapt_bitselect45(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect45_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out[144:144];

    // adapt_scalar_trunc46(ROUND,9)
    assign adapt_scalar_trunc46_in = ip_dsdk_adapt_bitselect45_b;
    assign adapt_scalar_trunc46_q = adapt_scalar_trunc46_in[0:0];

    // ip_dsdk_adapt_bitselect43(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect43_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out[136:136];

    // adapt_scalar_trunc44(ROUND,8)
    assign adapt_scalar_trunc44_in = ip_dsdk_adapt_bitselect43_b;
    assign adapt_scalar_trunc44_q = adapt_scalar_trunc44_in[0:0];

    // ip_dsdk_adapt_bitselect41(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect41_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out[128:128];

    // adapt_scalar_trunc42(ROUND,7)
    assign adapt_scalar_trunc42_in = ip_dsdk_adapt_bitselect41_b;
    assign adapt_scalar_trunc42_q = adapt_scalar_trunc42_in[0:0];

    // ip_dsdk_adapt_bitselect39(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect39_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out[127:96];

    // ip_dsdk_adapt_bitselect37(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect37_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out[72:72];

    // adapt_scalar_trunc38(ROUND,6)
    assign adapt_scalar_trunc38_in = ip_dsdk_adapt_bitselect37_b;
    assign adapt_scalar_trunc38_q = adapt_scalar_trunc38_in[0:0];

    // ip_dsdk_adapt_bitselect35(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect35_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out[64:64];

    // adapt_scalar_trunc36(ROUND,5)
    assign adapt_scalar_trunc36_in = ip_dsdk_adapt_bitselect35_b;
    assign adapt_scalar_trunc36_q = adapt_scalar_trunc36_in[0:0];

    // ip_dsdk_adapt_bitselect33(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect33_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out[63:32];

    // ip_dsdk_adapt_bitselect31(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect31_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out[16:16];

    // adapt_scalar_trunc32(ROUND,4)
    assign adapt_scalar_trunc32_in = ip_dsdk_adapt_bitselect31_b;
    assign adapt_scalar_trunc32_q = adapt_scalar_trunc32_in[0:0];

    // ip_dsdk_adapt_bitselect29(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect29_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out[8:8];

    // adapt_scalar_trunc30(ROUND,3)
    assign adapt_scalar_trunc30_in = ip_dsdk_adapt_bitselect29_b;
    assign adapt_scalar_trunc30_q = adapt_scalar_trunc30_in[0:0];

    // ip_dsdk_adapt_bitselect27(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect27_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_data_out[0:0];

    // adapt_scalar_trunc28(ROUND,2)
    assign adapt_scalar_trunc28_in = ip_dsdk_adapt_bitselect27_b;
    assign adapt_scalar_trunc28_q = adapt_scalar_trunc28_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,56)@20000003
    assign out_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_almost_full;
    assign out_data_out_0_tpl = adapt_scalar_trunc28_q;
    assign out_data_out_1_tpl = adapt_scalar_trunc30_q;
    assign out_data_out_2_tpl = adapt_scalar_trunc32_q;
    assign out_data_out_3_tpl = ip_dsdk_adapt_bitselect33_b;
    assign out_data_out_4_tpl = adapt_scalar_trunc36_q;
    assign out_data_out_5_tpl = adapt_scalar_trunc38_q;
    assign out_data_out_6_tpl = ip_dsdk_adapt_bitselect39_b;
    assign out_data_out_7_tpl = adapt_scalar_trunc42_q;
    assign out_data_out_8_tpl = adapt_scalar_trunc44_q;
    assign out_data_out_9_tpl = adapt_scalar_trunc46_q;
    assign out_data_out_10_tpl = adapt_scalar_trunc48_q;
    assign out_data_out_11_tpl = ip_dsdk_adapt_bitselect49_b;
    assign out_data_out_12_tpl = adapt_scalar_trunc52_q;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body6_lr_ph_prod_matrixs_c0_exit78_prod_matrix0_valid_out;

endmodule
