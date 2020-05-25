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

// SystemVerilog created from emscripten_compute_dom_pk_code_i_llvm_fpA000167Zcompute_dom_pk_code0
// SystemVerilog created on Sun May 24 22:31:15 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module emscripten_compute_dom_pk_code_i_llvm_fpA000167Zcompute_dom_pk_code0 (
    input wire [0:0] in_intel_reserved_ffwd_158_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_dest_data_out_158_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [6:0] c_i7_03_q;
    wire [7:0] element_extension2_q;
    wire [7:0] i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_data_in;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_stall_in;
    wire i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_valid_in;
    wire i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_valid_in_bitsignaltemp;
    wire [7:0] i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_data_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_stall_out;
    wire i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_valid_out;
    wire i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_valid_out_bitsignaltemp;
    wire [0:0] adapt_scalar_trunc4_sel_x_b;


    // c_i7_03(CONSTANT,3)
    assign c_i7_03_q = $unsigned(7'b0000000);

    // element_extension2(BITJOIN,4)@20000000
    assign element_extension2_q = {c_i7_03_q, in_intel_reserved_ffwd_158_0};

    // i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1(EXTIFACE,5)@1
    assign i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_data_in = element_extension2_q;
    assign i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_stall_in = in_stall_in;
    assign i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_stall_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_stall_in[0];
    assign i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_valid_in[0];
    assign i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_stall_out[0] = i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_valid_out[0] = i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_valid_out_bitsignaltemp;
    acl_ffwddst #(
        .MAX_LATENCY(0),
        .MIN_CAPACITY(1),
        .STALL_FREE(0),
        .WIDTH(8)
    ) thei_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1 (
        .data_in(element_extension2_q),
        .stall_in(i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_data_out),
        .stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,8)@1
    assign out_stall_out = i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_stall_out;

    // adapt_scalar_trunc4_sel_x(BITSELECT,10)@1
    assign adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_data_out[0:0];

    // dupName_0_sync_out_x(GPOUT,11)@1
    assign out_dest_data_out_158_0 = adapt_scalar_trunc4_sel_x_b;
    assign out_valid_out = i_llvm_fpga_ffwd_dest_i1_unnamed_emscripten_compute_dom_pk_code168_emscripten_compute_dom_pk_code1_valid_out;

endmodule
