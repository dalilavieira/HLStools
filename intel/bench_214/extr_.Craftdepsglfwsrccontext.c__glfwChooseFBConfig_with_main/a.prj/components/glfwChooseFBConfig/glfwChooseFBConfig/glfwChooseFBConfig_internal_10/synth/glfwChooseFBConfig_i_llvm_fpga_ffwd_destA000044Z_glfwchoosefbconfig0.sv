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

// SystemVerilog created from glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000044Z_glfwchoosefbconfig0
// SystemVerilog created on Sun May 24 22:29:58 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000044Z_glfwchoosefbconfig0 (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_3_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_4_tpl,
    output wire [63:0] out_dest_data_out_0_0_0_tpl,
    output wire [63:0] out_dest_data_out_0_0_1_tpl,
    output wire [31:0] out_dest_data_out_0_0_2_tpl,
    output wire [63:0] out_dest_data_out_0_0_3_tpl,
    output wire [63:0] out_dest_data_out_0_0_4_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] c_i32_04_q;
    wire [319:0] dsdk_ip_adapt_bitjoin2_q;
    wire [319:0] i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_data_in;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_stall_in;
    wire i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_valid_in;
    wire i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_valid_in_bitsignaltemp;
    wire [319:0] i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_data_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_stall_out;
    wire i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_valid_out;
    wire i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_valid_out_bitsignaltemp;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_b;
    wire [63:0] ip_dsdk_adapt_bitselect10_merged_bit_select_c;
    wire [63:0] ip_dsdk_adapt_bitselect10_merged_bit_select_d;
    wire [63:0] ip_dsdk_adapt_bitselect10_merged_bit_select_e;
    wire [63:0] ip_dsdk_adapt_bitselect10_merged_bit_select_f;


    // c_i32_04(CONSTANT,2)
    assign c_i32_04_q = $unsigned(32'b00000000000000000000000000000000);

    // dsdk_ip_adapt_bitjoin2(BITJOIN,3)@20000000
    assign dsdk_ip_adapt_bitjoin2_q = {in_intel_reserved_ffwd_0_0_4_tpl, in_intel_reserved_ffwd_0_0_3_tpl, c_i32_04_q, in_intel_reserved_ffwd_0_0_2_tpl, in_intel_reserved_ffwd_0_0_1_tpl, in_intel_reserved_ffwd_0_0_0_tpl};

    // i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1(EXTIFACE,4)@4
    assign i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_data_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_stall_in = in_stall_in;
    assign i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_stall_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_stall_in[0];
    assign i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_valid_in[0];
    assign i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_stall_out[0] = i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_valid_out[0] = i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_valid_out_bitsignaltemp;
    acl_ffwddst #(
        .MAX_LATENCY(0),
        .MIN_CAPACITY(1),
        .STALL_FREE(0),
        .WIDTH(320)
    ) thei_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1 (
        .data_in(dsdk_ip_adapt_bitjoin2_q),
        .stall_in(i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_data_out),
        .stall_out(i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,16)@4
    assign out_stall_out = i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_stall_out;

    // ip_dsdk_adapt_bitselect10_merged_bit_select(BITSELECT,20)@4
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_b = i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_data_out[159:128];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_c = i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_data_out[255:192];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_d = i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_data_out[319:256];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_e = i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_data_out[63:0];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_f = i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_data_out[127:64];

    // dupName_0_sync_out_aunroll_x(GPOUT,19)@4
    assign out_dest_data_out_0_0_0_tpl = ip_dsdk_adapt_bitselect10_merged_bit_select_e;
    assign out_dest_data_out_0_0_1_tpl = ip_dsdk_adapt_bitselect10_merged_bit_select_f;
    assign out_dest_data_out_0_0_2_tpl = ip_dsdk_adapt_bitselect10_merged_bit_select_b;
    assign out_dest_data_out_0_0_3_tpl = ip_dsdk_adapt_bitselect10_merged_bit_select_c;
    assign out_dest_data_out_0_0_4_tpl = ip_dsdk_adapt_bitselect10_merged_bit_select_d;
    assign out_valid_out = i_llvm_fpga_ffwd_dest_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig26_glfwchoosefbconfig1_valid_out;

endmodule
