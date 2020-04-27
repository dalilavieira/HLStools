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

// SystemVerilog created from kmeans_i_llvm_fpga_sfc_exit_s_c0_out_forA000000Z49_kmeans1_data_fifo
// SystemVerilog created on Mon Apr 27 09:47:55 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_i_llvm_fpga_sfc_exit_s_c0_out_forA000000Z49_kmeans1_data_fifo (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [0:0] in_data_in_1_tpl,
    input wire [31:0] in_data_in_2_tpl,
    input wire [0:0] in_data_in_3_tpl,
    input wire [15:0] in_data_in_4_tpl,
    input wire [0:0] in_data_in_5_tpl,
    input wire [0:0] in_data_in_6_tpl,
    input wire [0:0] in_data_in_7_tpl,
    input wire [15:0] in_data_in_8_tpl,
    input wire [0:0] in_data_in_9_tpl,
    input wire [0:0] in_data_in_10_tpl,
    input wire [0:0] in_data_in_11_tpl,
    input wire [0:0] in_data_in_12_tpl,
    input wire [31:0] in_data_in_13_tpl,
    input wire [0:0] in_data_in_14_tpl,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_almost_full,
    output wire [0:0] out_data_out_0_tpl,
    output wire [0:0] out_data_out_1_tpl,
    output wire [31:0] out_data_out_2_tpl,
    output wire [0:0] out_data_out_3_tpl,
    output wire [15:0] out_data_out_4_tpl,
    output wire [0:0] out_data_out_5_tpl,
    output wire [0:0] out_data_out_6_tpl,
    output wire [0:0] out_data_out_7_tpl,
    output wire [15:0] out_data_out_8_tpl,
    output wire [0:0] out_data_out_9_tpl,
    output wire [0:0] out_data_out_10_tpl,
    output wire [0:0] out_data_out_11_tpl,
    output wire [0:0] out_data_out_12_tpl,
    output wire [31:0] out_data_out_13_tpl,
    output wire [0:0] out_data_out_14_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc32_in;
    wire [0:0] adapt_scalar_trunc32_q;
    wire [0:0] adapt_scalar_trunc34_in;
    wire [0:0] adapt_scalar_trunc34_q;
    wire [0:0] adapt_scalar_trunc38_in;
    wire [0:0] adapt_scalar_trunc38_q;
    wire [0:0] adapt_scalar_trunc42_in;
    wire [0:0] adapt_scalar_trunc42_q;
    wire [0:0] adapt_scalar_trunc44_in;
    wire [0:0] adapt_scalar_trunc44_q;
    wire [0:0] adapt_scalar_trunc46_in;
    wire [0:0] adapt_scalar_trunc46_q;
    wire [0:0] adapt_scalar_trunc50_in;
    wire [0:0] adapt_scalar_trunc50_q;
    wire [0:0] adapt_scalar_trunc52_in;
    wire [0:0] adapt_scalar_trunc52_q;
    wire [0:0] adapt_scalar_trunc54_in;
    wire [0:0] adapt_scalar_trunc54_q;
    wire [0:0] adapt_scalar_trunc56_in;
    wire [0:0] adapt_scalar_trunc56_q;
    wire [0:0] adapt_scalar_trunc60_in;
    wire [0:0] adapt_scalar_trunc60_q;
    wire [15:0] c_i16_026_q;
    wire [23:0] c_i24_029_q;
    wire [6:0] c_i7_012_q;
    wire [7:0] c_i8_010_q;
    wire [255:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension20_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension24_q;
    wire [7:0] element_extension27_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension8_q;
    wire [255:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_almost_full_bitsignaltemp;
    wire [255:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_stall_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect31_b;
    wire [0:0] ip_dsdk_adapt_bitselect33_b;
    wire [31:0] ip_dsdk_adapt_bitselect35_b;
    wire [0:0] ip_dsdk_adapt_bitselect37_b;
    wire [15:0] ip_dsdk_adapt_bitselect39_b;
    wire [0:0] ip_dsdk_adapt_bitselect41_b;
    wire [0:0] ip_dsdk_adapt_bitselect43_b;
    wire [0:0] ip_dsdk_adapt_bitselect45_b;
    wire [15:0] ip_dsdk_adapt_bitselect47_b;
    wire [0:0] ip_dsdk_adapt_bitselect49_b;
    wire [0:0] ip_dsdk_adapt_bitselect51_b;
    wire [0:0] ip_dsdk_adapt_bitselect53_b;
    wire [0:0] ip_dsdk_adapt_bitselect55_b;
    wire [31:0] ip_dsdk_adapt_bitselect57_b;
    wire [0:0] ip_dsdk_adapt_bitselect59_b;


    // c_i24_029(CONSTANT,15)
    assign c_i24_029_q = $unsigned(24'b000000000000000000000000);

    // c_i7_012(CONSTANT,16)
    assign c_i7_012_q = $unsigned(7'b0000000);

    // element_extension27(BITJOIN,37)
    assign element_extension27_q = {c_i7_012_q, in_data_in_14_tpl};

    // element_extension24(BITJOIN,36)
    assign element_extension24_q = {c_i7_012_q, in_data_in_12_tpl};

    // element_extension22(BITJOIN,35)
    assign element_extension22_q = {c_i7_012_q, in_data_in_11_tpl};

    // element_extension20(BITJOIN,34)
    assign element_extension20_q = {c_i7_012_q, in_data_in_10_tpl};

    // element_extension18(BITJOIN,33)
    assign element_extension18_q = {c_i7_012_q, in_data_in_9_tpl};

    // element_extension15(BITJOIN,32)
    assign element_extension15_q = {c_i7_012_q, in_data_in_7_tpl};

    // element_extension13(BITJOIN,31)
    assign element_extension13_q = {c_i7_012_q, in_data_in_6_tpl};

    // element_extension11(BITJOIN,30)
    assign element_extension11_q = {c_i7_012_q, in_data_in_5_tpl};

    // c_i8_010(CONSTANT,27)
    assign c_i8_010_q = $unsigned(8'b00000000);

    // element_extension8(BITJOIN,40)
    assign element_extension8_q = {c_i7_012_q, in_data_in_3_tpl};

    // c_i16_026(CONSTANT,13)
    assign c_i16_026_q = $unsigned(16'b0000000000000000);

    // element_extension5(BITJOIN,39)
    assign element_extension5_q = {c_i7_012_q, in_data_in_1_tpl};

    // element_extension3(BITJOIN,38)
    assign element_extension3_q = {c_i7_012_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,29)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i24_029_q, element_extension27_q, in_data_in_13_tpl, c_i16_026_q, element_extension24_q, element_extension22_q, element_extension20_q, element_extension18_q, in_data_in_8_tpl, c_i8_010_q, element_extension15_q, element_extension13_q, element_extension11_q, in_data_in_4_tpl, c_i8_010_q, element_extension8_q, in_data_in_2_tpl, c_i16_026_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0(EXTIFACE,41)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_in = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_stall_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_stall_out_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_valid_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_valid_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(16),
        .ALLOW_FULL_WRITE(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(256),
        .IMPL("ram"),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0 (
        .data_in(dsdk_ip_adapt_bitjoin1_q),
        .stall_in(i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_valid_in_bitsignaltemp),
        .almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_almost_full_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out),
        .stall_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,62)@20000000
    assign out_stall_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_stall_out;

    // ip_dsdk_adapt_bitselect59(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect59_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[224:224];

    // adapt_scalar_trunc60(ROUND,12)
    assign adapt_scalar_trunc60_in = ip_dsdk_adapt_bitselect59_b;
    assign adapt_scalar_trunc60_q = adapt_scalar_trunc60_in[0:0];

    // ip_dsdk_adapt_bitselect57(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect57_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[223:192];

    // ip_dsdk_adapt_bitselect55(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect55_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[168:168];

    // adapt_scalar_trunc56(ROUND,11)
    assign adapt_scalar_trunc56_in = ip_dsdk_adapt_bitselect55_b;
    assign adapt_scalar_trunc56_q = adapt_scalar_trunc56_in[0:0];

    // ip_dsdk_adapt_bitselect53(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect53_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[160:160];

    // adapt_scalar_trunc54(ROUND,10)
    assign adapt_scalar_trunc54_in = ip_dsdk_adapt_bitselect53_b;
    assign adapt_scalar_trunc54_q = adapt_scalar_trunc54_in[0:0];

    // ip_dsdk_adapt_bitselect51(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[152:152];

    // adapt_scalar_trunc52(ROUND,9)
    assign adapt_scalar_trunc52_in = ip_dsdk_adapt_bitselect51_b;
    assign adapt_scalar_trunc52_q = adapt_scalar_trunc52_in[0:0];

    // ip_dsdk_adapt_bitselect49(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect49_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[144:144];

    // adapt_scalar_trunc50(ROUND,8)
    assign adapt_scalar_trunc50_in = ip_dsdk_adapt_bitselect49_b;
    assign adapt_scalar_trunc50_q = adapt_scalar_trunc50_in[0:0];

    // ip_dsdk_adapt_bitselect47(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect47_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[143:128];

    // ip_dsdk_adapt_bitselect45(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect45_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[112:112];

    // adapt_scalar_trunc46(ROUND,7)
    assign adapt_scalar_trunc46_in = ip_dsdk_adapt_bitselect45_b;
    assign adapt_scalar_trunc46_q = adapt_scalar_trunc46_in[0:0];

    // ip_dsdk_adapt_bitselect43(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect43_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[104:104];

    // adapt_scalar_trunc44(ROUND,6)
    assign adapt_scalar_trunc44_in = ip_dsdk_adapt_bitselect43_b;
    assign adapt_scalar_trunc44_q = adapt_scalar_trunc44_in[0:0];

    // ip_dsdk_adapt_bitselect41(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect41_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[96:96];

    // adapt_scalar_trunc42(ROUND,5)
    assign adapt_scalar_trunc42_in = ip_dsdk_adapt_bitselect41_b;
    assign adapt_scalar_trunc42_q = adapt_scalar_trunc42_in[0:0];

    // ip_dsdk_adapt_bitselect39(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect39_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[95:80];

    // ip_dsdk_adapt_bitselect37(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect37_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[64:64];

    // adapt_scalar_trunc38(ROUND,4)
    assign adapt_scalar_trunc38_in = ip_dsdk_adapt_bitselect37_b;
    assign adapt_scalar_trunc38_q = adapt_scalar_trunc38_in[0:0];

    // ip_dsdk_adapt_bitselect35(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect35_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[63:32];

    // ip_dsdk_adapt_bitselect33(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect33_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[8:8];

    // adapt_scalar_trunc34(ROUND,3)
    assign adapt_scalar_trunc34_in = ip_dsdk_adapt_bitselect33_b;
    assign adapt_scalar_trunc34_q = adapt_scalar_trunc34_in[0:0];

    // ip_dsdk_adapt_bitselect31(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect31_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_data_out[0:0];

    // adapt_scalar_trunc32(ROUND,2)
    assign adapt_scalar_trunc32_in = ip_dsdk_adapt_bitselect31_b;
    assign adapt_scalar_trunc32_q = adapt_scalar_trunc32_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,64)@20000003
    assign out_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_almost_full;
    assign out_data_out_0_tpl = adapt_scalar_trunc32_q;
    assign out_data_out_1_tpl = adapt_scalar_trunc34_q;
    assign out_data_out_2_tpl = ip_dsdk_adapt_bitselect35_b;
    assign out_data_out_3_tpl = adapt_scalar_trunc38_q;
    assign out_data_out_4_tpl = ip_dsdk_adapt_bitselect39_b;
    assign out_data_out_5_tpl = adapt_scalar_trunc42_q;
    assign out_data_out_6_tpl = adapt_scalar_trunc44_q;
    assign out_data_out_7_tpl = adapt_scalar_trunc46_q;
    assign out_data_out_8_tpl = ip_dsdk_adapt_bitselect47_b;
    assign out_data_out_9_tpl = adapt_scalar_trunc50_q;
    assign out_data_out_10_tpl = adapt_scalar_trunc52_q;
    assign out_data_out_11_tpl = adapt_scalar_trunc54_q;
    assign out_data_out_12_tpl = adapt_scalar_trunc56_q;
    assign out_data_out_13_tpl = ip_dsdk_adapt_bitselect57_b;
    assign out_data_out_14_tpl = adapt_scalar_trunc60_q;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_for_body40_kmeanss_c0_exit249_kmeans0_valid_out;

endmodule
