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

// SystemVerilog created from dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_28_dijkstra0
// SystemVerilog created on Mon Apr  6 11:16:51 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_28_dijkstra0 (
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_predicate_in,
    input wire [31:0] in_src_data_in_23_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_predicate_in;
    wire i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_predicate_in_bitsignaltemp;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_source_in;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_valid_in;
    wire i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_valid_in_bitsignaltemp;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_source_out;


    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1(EXTIFACE,2)@2
    assign i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_predicate_in = in_predicate_in;
    assign i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_source_in = in_src_data_in_23_0;
    assign i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_predicate_in_bitsignaltemp = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_predicate_in[0];
    assign i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_valid_in[0];
    acl_ffwdsrc #(
        .MAX_LATENCY(1),
        .MIN_CAPACITY(1),
        .WIDTH(32)
    ) thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1 (
        .predicate_in(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_predicate_in_bitsignaltemp),
        .source_in(in_src_data_in_23_0),
        .valid_in(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_valid_in_bitsignaltemp),
        .source_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_source_out),
        .clock(clock)
    );

    // regfree_osync(GPOUT,4)
    assign out_intel_reserved_ffwd_23_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra1_source_out;

    // sync_out(GPOUT,6)@2
    assign out_stall_out = in_stall_in;

    // dupName_0_sync_out_x(GPOUT,8)@2
    assign out_valid_out = in_valid_in;

endmodule
