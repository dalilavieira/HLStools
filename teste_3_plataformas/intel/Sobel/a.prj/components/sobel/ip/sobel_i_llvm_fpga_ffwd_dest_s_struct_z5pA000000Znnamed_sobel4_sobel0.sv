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

// SystemVerilog created from sobel_i_llvm_fpga_ffwd_dest_s_struct_z5pA000000Znnamed_sobel4_sobel0
// SystemVerilog created on Mon Apr  6 12:55:50 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_i_llvm_fpga_ffwd_dest_s_struct_z5pA000000Znnamed_sobel4_sobel0 (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    output wire [63:0] out_dest_data_out_0_0_0_tpl,
    output wire [63:0] out_dest_data_out_0_0_1_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [127:0] dsdk_ip_adapt_bitjoin2_q;
    wire [127:0] i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_data_in;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_stall_in;
    wire i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_valid_in;
    wire i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_valid_in_bitsignaltemp;
    wire [127:0] i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_data_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_stall_out;
    wire i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_valid_out;
    wire i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_valid_out_bitsignaltemp;
    wire [63:0] ip_dsdk_adapt_bitselect5_b;
    wire [63:0] ip_dsdk_adapt_bitselect7_b;


    // dsdk_ip_adapt_bitjoin2(BITJOIN,2)
    assign dsdk_ip_adapt_bitjoin2_q = {in_intel_reserved_ffwd_0_0_1_tpl, in_intel_reserved_ffwd_0_0_0_tpl};

    // i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1(EXTIFACE,3)
    assign i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_data_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_stall_in = in_stall_in;
    assign i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_stall_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_stall_in[0];
    assign i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_valid_in[0];
    assign i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_stall_out[0] = i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_valid_out[0] = i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_valid_out_bitsignaltemp;
    acl_ffwddst #(
        .MAX_LATENCY(1),
        .MIN_CAPACITY(1),
        .STALL_FREE(0),
        .WIDTH(128)
    ) thei_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1 (
        .data_in(dsdk_ip_adapt_bitjoin2_q),
        .stall_in(i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_data_out),
        .stall_out(i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,9)@20000000
    assign out_stall_out = i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_stall_out;

    // ip_dsdk_adapt_bitselect7(BITSELECT,5)
    assign ip_dsdk_adapt_bitselect7_b = i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_data_out[127:64];

    // ip_dsdk_adapt_bitselect5(BITSELECT,4)
    assign ip_dsdk_adapt_bitselect5_b = i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_data_out[63:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,12)@114
    assign out_dest_data_out_0_0_0_tpl = ip_dsdk_adapt_bitselect5_b;
    assign out_dest_data_out_0_0_1_tpl = ip_dsdk_adapt_bitselect7_b;
    assign out_valid_out = i_llvm_fpga_ffwd_dest_s_struct_z5sobelpa100_is0_inputss_unnamed_sobel4_sobel1_valid_out;

endmodule
