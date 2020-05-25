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

// SystemVerilog created from xmlCheckLanguageID_bb_B3_stall_region
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_bb_B3_stall_region (
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    output wire [63:0] out_intel_reserved_ffwd_7_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_out_valid_out;
    wire [64:0] i_add_ptr_xmlchecklanguageid0_add_x_a;
    wire [64:0] i_add_ptr_xmlchecklanguageid0_add_x_b;
    logic [64:0] i_add_ptr_xmlchecklanguageid0_add_x_o;
    wire [64:0] i_add_ptr_xmlchecklanguageid0_add_x_q;
    wire [63:0] i_add_ptr_xmlchecklanguageid0_c_i64_21_x_q;
    wire [63:0] i_add_ptr_xmlchecklanguageid0_trunc_sel_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,32)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0(BLACKBOX,5)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000001Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0(STALLENABLE,29)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_backStall = i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_wireValid = i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2(STALLENABLE,31)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_wireValid = i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_out_valid_out;

    // i_add_ptr_xmlchecklanguageid0_c_i64_21_x(CONSTANT,20)
    assign i_add_ptr_xmlchecklanguageid0_c_i64_21_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000010);

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0(BITJOIN,24)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_q = i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0(BITSELECT,25)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_q[63:0]);

    // i_add_ptr_xmlchecklanguageid0_add_x(ADD,19)@0
    assign i_add_ptr_xmlchecklanguageid0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_b};
    assign i_add_ptr_xmlchecklanguageid0_add_x_b = {1'b0, i_add_ptr_xmlchecklanguageid0_c_i64_21_x_q};
    assign i_add_ptr_xmlchecklanguageid0_add_x_o = $unsigned(i_add_ptr_xmlchecklanguageid0_add_x_a) + $unsigned(i_add_ptr_xmlchecklanguageid0_add_x_b);
    assign i_add_ptr_xmlchecklanguageid0_add_x_q = i_add_ptr_xmlchecklanguageid0_add_x_o[64:0];

    // i_add_ptr_xmlchecklanguageid0_trunc_sel_x(BITSELECT,22)@0
    assign i_add_ptr_xmlchecklanguageid0_trunc_sel_x_b = i_add_ptr_xmlchecklanguageid0_add_x_q[63:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2(BLACKBOX,6)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000007Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(i_add_ptr_xmlchecklanguageid0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i8_lang18233_xmlchecklanguageid0_V0),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_out_intel_reserved_ffwd_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,12)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_out_intel_reserved_ffwd_7_0;

    // sync_out(GPOUT,16)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,18)@0
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid10_xmlchecklanguageid2_V0;

endmodule
