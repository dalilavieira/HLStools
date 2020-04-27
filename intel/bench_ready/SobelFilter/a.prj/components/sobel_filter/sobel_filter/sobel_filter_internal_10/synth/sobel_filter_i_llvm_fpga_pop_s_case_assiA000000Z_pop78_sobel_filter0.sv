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

// SystemVerilog created from sobel_filter_i_llvm_fpga_pop_s_case_assiA000000Z_pop78_sobel_filter0
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_i_llvm_fpga_pop_s_case_assiA000000Z_pop78_sobel_filter0 (
    input wire [191:0] in_feedback_in_78,
    input wire [0:0] in_feedback_valid_in_78,
    output wire [0:0] out_feedback_stall_out_78,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_data_in_0_tpl,
    input wire [31:0] in_data_in_1_tpl,
    input wire [31:0] in_data_in_2_tpl,
    input wire [31:0] in_data_in_3_tpl,
    input wire [31:0] in_data_in_4_tpl,
    input wire [31:0] in_data_in_5_tpl,
    input wire [0:0] in_dir,
    input wire [0:0] in_predicate,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_data_out_0_tpl,
    output wire [31:0] out_data_out_1_tpl,
    output wire [31:0] out_data_out_2_tpl,
    output wire [31:0] out_data_out_3_tpl,
    output wire [31:0] out_data_out_4_tpl,
    output wire [31:0] out_data_out_5_tpl,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [191:0] dsdk_ip_adapt_bitjoin2_q;
    wire [191:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_data_in;
    wire [0:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_dir;
    wire i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_dir_bitsignaltemp;
    wire [191:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_feedback_in;
    wire [0:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_feedback_valid_in;
    wire i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_feedback_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_predicate;
    wire i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_stall_in;
    wire i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_valid_in;
    wire i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_valid_in_bitsignaltemp;
    wire [191:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_data_out;
    wire [0:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_feedback_stall_out;
    wire i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_feedback_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_stall_out;
    wire i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_valid_out;
    wire i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_valid_out_bitsignaltemp;
    wire [31:0] ip_dsdk_adapt_bitselect11_merged_bit_select_b;
    wire [31:0] ip_dsdk_adapt_bitselect11_merged_bit_select_c;
    wire [31:0] ip_dsdk_adapt_bitselect11_merged_bit_select_d;
    wire [31:0] ip_dsdk_adapt_bitselect11_merged_bit_select_e;
    wire [31:0] ip_dsdk_adapt_bitselect11_merged_bit_select_f;
    wire [31:0] ip_dsdk_adapt_bitselect11_merged_bit_select_g;


    // dsdk_ip_adapt_bitjoin2(BITJOIN,2)@2
    assign dsdk_ip_adapt_bitjoin2_q = {in_data_in_5_tpl, in_data_in_4_tpl, in_data_in_3_tpl, in_data_in_2_tpl, in_data_in_1_tpl, in_data_in_0_tpl};

    // i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1(EXTIFACE,5)@2
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_data_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_dir = in_dir;
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_feedback_in = in_feedback_in_78;
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_feedback_valid_in = in_feedback_valid_in_78;
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_predicate = in_predicate;
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_stall_in = in_stall_in;
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_valid_in = in_valid_in;
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_dir_bitsignaltemp = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_dir[0];
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_feedback_valid_in_bitsignaltemp = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_feedback_valid_in[0];
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_predicate_bitsignaltemp = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_predicate[0];
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_stall_in_bitsignaltemp = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_stall_in[0];
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_valid_in_bitsignaltemp = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_valid_in[0];
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_feedback_stall_out[0] = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_feedback_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_stall_out[0] = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_valid_out[0] = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_valid_out_bitsignaltemp;
    acl_pop #(
        .INF_LOOP(0),
        .STYLE("REGULAR"),
        .ASYNC_RESET(1),
        .COALESCE_DISTANCE(1),
        .DATA_WIDTH(192),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1 (
        .data_in(dsdk_ip_adapt_bitjoin2_q),
        .dir(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_dir_bitsignaltemp),
        .feedback_in(in_feedback_in_78),
        .feedback_valid_in(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_feedback_valid_in_bitsignaltemp),
        .predicate(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_data_out),
        .feedback_stall_out(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_feedback_stall_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_sync_out(GPOUT,4)
    assign out_feedback_stall_out_78 = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_feedback_stall_out;

    // sync_out(GPOUT,19)@2
    assign out_stall_out = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_stall_out;

    // ip_dsdk_adapt_bitselect11_merged_bit_select(BITSELECT,22)@2
    assign ip_dsdk_adapt_bitselect11_merged_bit_select_b = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_data_out[127:96];
    assign ip_dsdk_adapt_bitselect11_merged_bit_select_c = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_data_out[159:128];
    assign ip_dsdk_adapt_bitselect11_merged_bit_select_d = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_data_out[191:160];
    assign ip_dsdk_adapt_bitselect11_merged_bit_select_e = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_data_out[31:0];
    assign ip_dsdk_adapt_bitselect11_merged_bit_select_f = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_data_out[63:32];
    assign ip_dsdk_adapt_bitselect11_merged_bit_select_g = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_data_out[95:64];

    // dupName_0_sync_out_aunroll_x(GPOUT,21)@2
    assign out_data_out_0_tpl = ip_dsdk_adapt_bitselect11_merged_bit_select_e;
    assign out_data_out_1_tpl = ip_dsdk_adapt_bitselect11_merged_bit_select_f;
    assign out_data_out_2_tpl = ip_dsdk_adapt_bitselect11_merged_bit_select_g;
    assign out_data_out_3_tpl = ip_dsdk_adapt_bitselect11_merged_bit_select_b;
    assign out_data_out_4_tpl = ip_dsdk_adapt_bitselect11_merged_bit_select_c;
    assign out_data_out_5_tpl = ip_dsdk_adapt_bitselect11_merged_bit_select_d;
    assign out_valid_out = i_llvm_fpga_pop_s_case_assign_struct_sobel_filter_fpgaunique_0s_case_assign178187_pop78_sobel_filter1_valid_out;

endmodule
