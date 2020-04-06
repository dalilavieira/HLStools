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

// SystemVerilog created from floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi32_floydwarshall0
// SystemVerilog created on Mon Apr  6 10:28:01 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_i_llvm_fpga_ffwd_dest_i32_A000000Zphi32_floydwarshall0 (
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_dest_data_out_18_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_data_in;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_stall_in;
    wire i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_valid_in;
    wire i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_valid_in_bitsignaltemp;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_data_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_stall_out;
    wire i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_valid_out;
    wire i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_valid_out_bitsignaltemp;


    // i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1(EXTIFACE,2)
    assign i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_data_in = in_intel_reserved_ffwd_18_0;
    assign i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_stall_in = in_stall_in;
    assign i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_stall_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_stall_in[0];
    assign i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_valid_in[0];
    assign i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_stall_out[0] = i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_valid_out[0] = i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_valid_out_bitsignaltemp;
    acl_ffwddst #(
        .MAX_LATENCY(1),
        .MIN_CAPACITY(1),
        .STALL_FREE(0),
        .WIDTH(32)
    ) thei_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1 (
        .data_in(in_intel_reserved_ffwd_18_0),
        .stall_in(i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_data_out),
        .stall_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,6)@20000000
    assign out_stall_out = i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_stall_out;

    // dupName_0_sync_out_x(GPOUT,8)@6
    assign out_dest_data_out_18_0 = i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_data_out;
    assign out_valid_out = i_llvm_fpga_ffwd_dest_i32_a_sroa_77_3_replace_phi32_floydwarshall1_valid_out;

endmodule
