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

// SystemVerilog created from kmeans_bb_B4_stall_region
// SystemVerilog created on Sun Apr 19 22:13:38 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_bb_B4_stall_region (
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_intel_reserved_ffwd_6_0,
    output wire [0:0] out_valid_out,
    output wire [32:0] out_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [32:0] i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_o_valid;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_V0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,21)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x(STALLENABLE,24)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x(BLACKBOX,17)@0
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_c0_exit161_0_tpl@6
    kmeans_i_sfc_s_c0_in_for_cond12_preheader_s_c0_enter160_kmeans0 thei_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .in_unnamed_kmeans9_0_tpl(GND_q),
        .out_intel_reserved_ffwd_5_0(i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_o_stall(i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_o_valid),
        .out_c0_exit161_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,8)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_intel_reserved_ffwd_5_0;

    // sync_out(GPOUT,12)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_6_0 = i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_intel_reserved_ffwd_6_0;

    // dupName_0_sync_out_x(GPOUT,15)@6
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_7_0 = i_sfc_s_c0_in_for_cond12_preheader_kmeanss_c0_enter160_kmeans0_aunroll_x_out_intel_reserved_ffwd_7_0;

endmodule
