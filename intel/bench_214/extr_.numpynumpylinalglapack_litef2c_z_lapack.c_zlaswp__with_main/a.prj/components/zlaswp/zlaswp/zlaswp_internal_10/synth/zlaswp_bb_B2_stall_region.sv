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

// SystemVerilog created from zlaswp_bb_B2_stall_region
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_bb_B2_stall_region (
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_25_0,
    input wire [0:0] in_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_13_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked179,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_intel_reserved_ffwd_14_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_111_q;
    wire [33:0] i_cmp8_zlaswp3_a;
    wire [33:0] i_cmp8_zlaswp3_b;
    logic [33:0] i_cmp8_zlaswp3_o;
    wire [0:0] i_cmp8_zlaswp3_n;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_out_dest_data_out_12_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_out_dest_data_out_25_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp21_zlaswp10_out_intel_reserved_ffwd_14_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp21_zlaswp10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp21_zlaswp10_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_out_intel_reserved_ffwd_13_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_out_valid_out;
    wire [0:0] i_not_zlaswp6_q;
    wire [0:0] i_storemerge69_replace_phi_zlaswp1_s;
    reg [31:0] i_storemerge69_replace_phi_zlaswp1_q;
    wire [0:0] i_unnamed_zlaswp8_q;
    wire [0:0] zlaswp_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] zlaswp_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] zlaswp_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_zlaswp_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_zlaswp_B2_merge_reg_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_zlaswp_B2_merge_reg_aunroll_x_V4;


    // bubble_join_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2(BITJOIN,55)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_q = i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_out_dest_data_out_11_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2(BITSELECT,56)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_q[31:0]);

    // i_cmp8_zlaswp3(COMPARE,6)@1
    assign i_cmp8_zlaswp3_a = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_b});
    assign i_cmp8_zlaswp3_b = $unsigned({{2{i_storemerge69_replace_phi_zlaswp1_q[31]}}, i_storemerge69_replace_phi_zlaswp1_q});
    assign i_cmp8_zlaswp3_o = $unsigned($signed(i_cmp8_zlaswp3_a) - $signed(i_cmp8_zlaswp3_b));
    assign i_cmp8_zlaswp3_n[0] = ~ (i_cmp8_zlaswp3_o[33]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5(BITJOIN,46)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_q = i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_out_dest_data_out_12_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5(BITSELECT,47)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_q[0:0]);

    // i_not_zlaswp6(LOGICAL,13)@1
    assign i_not_zlaswp6_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_b & i_cmp8_zlaswp3_n;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7(BITJOIN,49)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_q = i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_out_dest_data_out_6_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7(BITSELECT,50)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_q[0:0]);

    // i_unnamed_zlaswp8(LOGICAL,15)@1
    assign i_unnamed_zlaswp8_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_b & i_not_zlaswp6_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp21_zlaswp10(BLACKBOX,11)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_source_i1_unnamed_21_zlaswp0 thei_llvm_fpga_ffwd_source_i1_unnamed_zlaswp21_zlaswp10 (
        .in_predicate_in(GND_q),
        .in_src_data_in_14_0(i_unnamed_zlaswp8_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_V0),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp21_zlaswp10_out_intel_reserved_ffwd_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp21_zlaswp10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp21_zlaswp10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5(BLACKBOX,7)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_i1_unnamed_18_zlaswp0 thei_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_backStall),
        .in_valid_in(SE_out_zlaswp_B2_merge_reg_aunroll_x_V0),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_out_dest_data_out_12_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7(BLACKBOX,8)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_i1_unnamed_19_zlaswp0 thei_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_backStall),
        .in_valid_in(SE_out_zlaswp_B2_merge_reg_aunroll_x_V1),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_out_dest_data_out_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2(BLACKBOX,10)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_i32_shl161_0 thei_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_backStall),
        .in_valid_in(SE_out_zlaswp_B2_merge_reg_aunroll_x_V3),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_out_dest_data_out_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2(STALLENABLE,78)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp21_zlaswp10_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_and0 = i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_and1 = i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_and2 = i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_and2;

    // bubble_join_stall_entry(BITJOIN,60)
    assign bubble_join_stall_entry_q = in_forked179;

    // bubble_select_stall_entry(BITSELECT,61)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,86)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = zlaswp_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // zlaswp_B2_merge_reg_aunroll_x(BLACKBOX,44)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    zlaswp_B2_merge_reg thezlaswp_B2_merge_reg_aunroll_x (
        .in_stall_in(SE_out_zlaswp_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(zlaswp_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(zlaswp_B2_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(zlaswp_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_zlaswp_B2_merge_reg_aunroll_x(STALLENABLE,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg0 <= SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg1 <= SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg2 <= SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg3 <= SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg4 <= SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp18_zlaswp5_out_stall_out) & SE_out_zlaswp_B2_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg0;
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp19_zlaswp7_out_stall_out) & SE_out_zlaswp_B2_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg1;
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_out_stall_out) & SE_out_zlaswp_B2_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg2;
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_out_stall_out) & SE_out_zlaswp_B2_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg3;
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed4 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_backStall) & SE_out_zlaswp_B2_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg4;
    // Consuming
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_StallValid = SE_out_zlaswp_B2_merge_reg_aunroll_x_backStall & SE_out_zlaswp_B2_merge_reg_aunroll_x_wireValid;
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg0 = SE_out_zlaswp_B2_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg1 = SE_out_zlaswp_B2_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed1;
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg2 = SE_out_zlaswp_B2_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed2;
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg3 = SE_out_zlaswp_B2_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed3;
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_toReg4 = SE_out_zlaswp_B2_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed4;
    // Backward Stall generation
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_or0 = SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_or1 = SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed1 & SE_out_zlaswp_B2_merge_reg_aunroll_x_or0;
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_or2 = SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed2 & SE_out_zlaswp_B2_merge_reg_aunroll_x_or1;
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_or3 = SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed3 & SE_out_zlaswp_B2_merge_reg_aunroll_x_or2;
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_wireStall = ~ (SE_out_zlaswp_B2_merge_reg_aunroll_x_consumed4 & SE_out_zlaswp_B2_merge_reg_aunroll_x_or3);
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_backStall = SE_out_zlaswp_B2_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_V0 = SE_out_zlaswp_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg0);
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_V1 = SE_out_zlaswp_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg1);
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_V2 = SE_out_zlaswp_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg2);
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_V3 = SE_out_zlaswp_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg3);
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_V4 = SE_out_zlaswp_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B2_merge_reg_aunroll_x_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_zlaswp_B2_merge_reg_aunroll_x_wireValid = zlaswp_B2_merge_reg_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0(BLACKBOX,9)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_i32_add56180_0 thei_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0 (
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_backStall),
        .in_valid_in(SE_out_zlaswp_B2_merge_reg_aunroll_x_V2),
        .out_dest_data_out_25_0(i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_out_dest_data_out_25_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0(STALLENABLE,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_shl161_zlaswp2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_and0 = i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_wireValid = SE_out_zlaswp_B2_merge_reg_aunroll_x_V4 & SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_and0;

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9(STALLENABLE,82)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_and0 = i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp21_zlaswp10_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_and0;

    // c_i32_111(CONSTANT,3)
    assign c_i32_111_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0(BITJOIN,52)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_q = i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_out_dest_data_out_25_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0(BITSELECT,53)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_q[31:0]);

    // bubble_join_zlaswp_B2_merge_reg_aunroll_x(BITJOIN,64)
    assign bubble_join_zlaswp_B2_merge_reg_aunroll_x_q = zlaswp_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_zlaswp_B2_merge_reg_aunroll_x(BITSELECT,65)
    assign bubble_select_zlaswp_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_zlaswp_B2_merge_reg_aunroll_x_q[0:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_storemerge69_replace_phi_zlaswp1(MUX,14)@1
    assign i_storemerge69_replace_phi_zlaswp1_s = bubble_select_zlaswp_B2_merge_reg_aunroll_x_b;
    always @(i_storemerge69_replace_phi_zlaswp1_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_b or c_i32_111_q)
    begin
        unique case (i_storemerge69_replace_phi_zlaswp1_s)
            1'b0 : i_storemerge69_replace_phi_zlaswp1_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_b;
            1'b1 : i_storemerge69_replace_phi_zlaswp1_q = c_i32_111_q;
            default : i_storemerge69_replace_phi_zlaswp1_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9(BLACKBOX,12)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_source_i32_unnamed_20_zlaswp0 thei_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9 (
        .in_predicate_in(GND_q),
        .in_src_data_in_13_0(i_storemerge69_replace_phi_zlaswp1_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_add56180_zlaswp0_V1),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_out_intel_reserved_ffwd_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,35)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_out_intel_reserved_ffwd_13_0;

    // sync_out(GPOUT,40)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,42)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i1_unnamed_zlaswp21_zlaswp10_out_intel_reserved_ffwd_14_0;

    // dupName_0_sync_out_x(GPOUT,43)@1
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp20_zlaswp9_V0;

endmodule
