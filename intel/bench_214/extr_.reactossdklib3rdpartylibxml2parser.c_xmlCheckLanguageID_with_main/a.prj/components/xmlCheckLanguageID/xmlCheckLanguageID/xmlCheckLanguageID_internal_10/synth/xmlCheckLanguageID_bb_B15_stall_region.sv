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

// SystemVerilog created from xmlCheckLanguageID_bb_B15_stall_region
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_bb_B15_stall_region (
    input wire [7:0] in_intel_reserved_ffwd_28_0,
    input wire [0:0] in_intel_reserved_ffwd_32_0,
    input wire [7:0] in_intel_reserved_ffwd_47_0,
    input wire [0:0] in_intel_reserved_ffwd_49_0,
    input wire [0:0] in_intel_reserved_ffwd_64_0,
    input wire [7:0] in_intel_reserved_ffwd_68_0,
    input wire [0:0] in_intel_reserved_ffwd_71_0,
    input wire [0:0] in_intel_reserved_ffwd_72_0,
    input wire [0:0] in_intel_reserved_ffwd_74_0,
    input wire [63:0] in_intel_reserved_ffwd_75_0,
    input wire [63:0] in_intel_reserved_ffwd_77_0,
    input wire [7:0] in_intel_reserved_ffwd_78_0,
    output wire [0:0] out_intel_reserved_ffwd_79_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_intel_reserved_ffwd_80_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_333_q;
    wire [63:0] c_i64_532_q;
    wire [0:0] i_cmp324_xmlchecklanguageid25_q;
    wire [0:0] i_cmp329_xmlchecklanguageid27_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_out_dest_data_out_71_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_out_dest_data_out_64_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_out_dest_data_out_49_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_out_dest_data_out_32_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_out_valid_out;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_out_dest_data_out_28_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_out_valid_out;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_out_dest_data_out_68_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_out_valid_out;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_out_dest_data_out_47_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_out_valid_out;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_out_dest_data_out_78_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_out_dest_data_out_75_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_out_dest_data_out_77_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid147_xmlchecklanguageid30_out_intel_reserved_ffwd_79_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid147_xmlchecklanguageid30_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid147_xmlchecklanguageid30_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_out_intel_reserved_ffwd_80_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_out_valid_out;
    wire [0:0] i_narrow_xmlchecklanguageid29_qi;
    reg [0:0] i_narrow_xmlchecklanguageid29_q;
    wire [0:0] i_phi_decision274_select_xmlchecklanguageid20_q;
    wire [0:0] i_phi_decision598_select_xmlchecklanguageid14_q;
    wire [0:0] i_select283_xmlchecklanguageid24_s;
    reg [7:0] i_select283_xmlchecklanguageid24_q;
    wire [0:0] i_select606_xmlchecklanguageid22_s;
    reg [7:0] i_select606_xmlchecklanguageid22_q;
    wire [0:0] i_select784_xmlchecklanguageid18_s;
    reg [7:0] i_select784_xmlchecklanguageid18_q;
    wire [64:0] i_sub_ptr_sub313_off_xmlchecklanguageid5_a;
    wire [64:0] i_sub_ptr_sub313_off_xmlchecklanguageid5_b;
    logic [64:0] i_sub_ptr_sub313_off_xmlchecklanguageid5_o;
    wire [64:0] i_sub_ptr_sub313_off_xmlchecklanguageid5_q;
    wire [64:0] i_sub_ptr_sub313_xmlchecklanguageid4_a;
    wire [64:0] i_sub_ptr_sub313_xmlchecklanguageid4_b;
    logic [64:0] i_sub_ptr_sub313_xmlchecklanguageid4_o;
    wire [64:0] i_sub_ptr_sub313_xmlchecklanguageid4_q;
    wire [0:0] i_unnamed_xmlchecklanguageid10_q;
    wire [0:0] i_unnamed_xmlchecklanguageid11_q;
    wire [65:0] i_unnamed_xmlchecklanguageid6_a;
    wire [65:0] i_unnamed_xmlchecklanguageid6_b;
    logic [65:0] i_unnamed_xmlchecklanguageid6_o;
    wire [0:0] i_unnamed_xmlchecklanguageid6_c;
    wire [0:0] i_unnamed_xmlchecklanguageid8_q;
    wire [63:0] bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b;
    wire [63:0] bgTrunc_i_sub_ptr_sub313_xmlchecklanguageid4_sel_x_b;
    wire [7:0] c_i8_035_recast_x_q;
    wire [7:0] c_i8_4536_recast_x_q;
    reg [63:0] redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_q;
    reg [0:0] redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_q;
    reg [0:0] redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_b;
    wire [7:0] bubble_join_i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_q;
    wire [7:0] bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_b;
    wire [7:0] bubble_join_i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_q;
    wire [7:0] bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_b;
    wire [7:0] bubble_join_i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_q;
    wire [7:0] bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_b;
    wire [7:0] bubble_join_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_q;
    wire [7:0] bubble_select_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_V0;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_backStall;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_V0;
    reg [0:0] SE_i_narrow_xmlchecklanguageid29_R_v_0;
    wire [0:0] SE_i_narrow_xmlchecklanguageid29_v_s_0;
    wire [0:0] SE_i_narrow_xmlchecklanguageid29_s_tv_0;
    wire [0:0] SE_i_narrow_xmlchecklanguageid29_backEN;
    wire [0:0] SE_i_narrow_xmlchecklanguageid29_backStall;
    wire [0:0] SE_i_narrow_xmlchecklanguageid29_V0;
    wire [0:0] SE_i_unnamed_xmlchecklanguageid6_wireValid;
    wire [0:0] SE_i_unnamed_xmlchecklanguageid6_and0;
    wire [0:0] SE_i_unnamed_xmlchecklanguageid6_and1;
    wire [0:0] SE_i_unnamed_xmlchecklanguageid6_backStall;
    wire [0:0] SE_i_unnamed_xmlchecklanguageid6_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_toReg4;
    reg [0:0] SE_stall_entry_fromReg4;
    wire [0:0] SE_stall_entry_consumed4;
    wire [0:0] SE_stall_entry_toReg5;
    reg [0:0] SE_stall_entry_fromReg5;
    wire [0:0] SE_stall_entry_consumed5;
    wire [0:0] SE_stall_entry_toReg6;
    reg [0:0] SE_stall_entry_fromReg6;
    wire [0:0] SE_stall_entry_consumed6;
    wire [0:0] SE_stall_entry_toReg7;
    reg [0:0] SE_stall_entry_fromReg7;
    wire [0:0] SE_stall_entry_consumed7;
    wire [0:0] SE_stall_entry_toReg8;
    reg [0:0] SE_stall_entry_fromReg8;
    wire [0:0] SE_stall_entry_consumed8;
    wire [0:0] SE_stall_entry_toReg9;
    reg [0:0] SE_stall_entry_fromReg9;
    wire [0:0] SE_stall_entry_consumed9;
    wire [0:0] SE_stall_entry_toReg10;
    reg [0:0] SE_stall_entry_fromReg10;
    wire [0:0] SE_stall_entry_consumed10;
    wire [0:0] SE_stall_entry_toReg11;
    reg [0:0] SE_stall_entry_fromReg11;
    wire [0:0] SE_stall_entry_consumed11;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_or5;
    wire [0:0] SE_stall_entry_or6;
    wire [0:0] SE_stall_entry_or7;
    wire [0:0] SE_stall_entry_or8;
    wire [0:0] SE_stall_entry_or9;
    wire [0:0] SE_stall_entry_or10;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_entry_V5;
    wire [0:0] SE_stall_entry_V6;
    wire [0:0] SE_stall_entry_V7;
    wire [0:0] SE_stall_entry_V8;
    wire [0:0] SE_stall_entry_V9;
    wire [0:0] SE_stall_entry_V10;
    wire [0:0] SE_stall_entry_V11;
    reg [0:0] SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_V0;
    reg [0:0] SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_R_v_0;
    wire [0:0] SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_v_s_0;
    wire [0:0] SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_backEN;
    wire [0:0] SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_backStall;
    wire [0:0] SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_V0;
    reg [0:0] SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_R_v_0;
    wire [0:0] SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_v_s_0;
    wire [0:0] SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_s_tv_0;
    wire [0:0] SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_backEN;
    wire [0:0] SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_backStall;
    wire [0:0] SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_V0;


    // SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0(STALLENABLE,175)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_backStall = SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_and0 = i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_wireValid = i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_and0;

    // i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0(BLACKBOX,23)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000122Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0 (
        .in_intel_reserved_ffwd_77_0(in_intel_reserved_ffwd_77_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_backStall),
        .in_valid_in(SE_stall_entry_V11),
        .out_dest_data_out_77_0(i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_out_dest_data_out_77_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2(BLACKBOX,22)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000121Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2 (
        .in_intel_reserved_ffwd_75_0(in_intel_reserved_ffwd_75_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_backStall),
        .in_valid_in(SE_stall_entry_V10),
        .out_dest_data_out_75_0(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_out_dest_data_out_75_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_4536_recast_x(CONSTANT,89)
    assign c_i8_4536_recast_x_q = $unsigned(8'b00101101);

    // bubble_join_i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23(BITJOIN,119)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_q = i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_out_dest_data_out_28_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23(BITSELECT,120)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_q[7:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21(BITJOIN,125)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_q = i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_out_dest_data_out_47_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21(BITSELECT,126)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_q[7:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15(BITJOIN,122)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_q = i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_out_dest_data_out_68_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15(BITSELECT,123)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_q[7:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17(BITJOIN,128)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_q = i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_out_dest_data_out_78_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17(BITSELECT,129)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_q[7:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16(BITJOIN,101)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_q = i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_out_dest_data_out_71_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16(BITSELECT,102)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_q[0:0]);

    // i_select784_xmlchecklanguageid18(MUX,31)@0
    assign i_select784_xmlchecklanguageid18_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_b;
    always @(i_select784_xmlchecklanguageid18_s or bubble_select_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_b or bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_b)
    begin
        unique case (i_select784_xmlchecklanguageid18_s)
            1'b0 : i_select784_xmlchecklanguageid18_q = bubble_select_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_b;
            1'b1 : i_select784_xmlchecklanguageid18_q = bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_b;
            default : i_select784_xmlchecklanguageid18_q = 8'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13(BITJOIN,104)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_q = i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_out_dest_data_out_64_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13(BITSELECT,105)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12(BITJOIN,113)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_out_dest_data_out_49_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12(BITSELECT,114)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_q[0:0]);

    // i_phi_decision598_select_xmlchecklanguageid14(LOGICAL,28)@0
    assign i_phi_decision598_select_xmlchecklanguageid14_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_b & bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_b;

    // i_select606_xmlchecklanguageid22(MUX,30)@0
    assign i_select606_xmlchecklanguageid22_s = i_phi_decision598_select_xmlchecklanguageid14_q;
    always @(i_select606_xmlchecklanguageid22_s or i_select784_xmlchecklanguageid18_q or bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_b)
    begin
        unique case (i_select606_xmlchecklanguageid22_s)
            1'b0 : i_select606_xmlchecklanguageid22_q = i_select784_xmlchecklanguageid18_q;
            1'b1 : i_select606_xmlchecklanguageid22_q = bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_b;
            default : i_select606_xmlchecklanguageid22_q = 8'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19(BITJOIN,116)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_out_dest_data_out_32_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19(BITSELECT,117)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_q[0:0]);

    // i_phi_decision274_select_xmlchecklanguageid20(LOGICAL,27)@0
    assign i_phi_decision274_select_xmlchecklanguageid20_q = i_phi_decision598_select_xmlchecklanguageid14_q & bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_b;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_select283_xmlchecklanguageid24(MUX,29)@0
    assign i_select283_xmlchecklanguageid24_s = i_phi_decision274_select_xmlchecklanguageid20_q;
    always @(i_select283_xmlchecklanguageid24_s or i_select606_xmlchecklanguageid22_q or bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_b)
    begin
        unique case (i_select283_xmlchecklanguageid24_s)
            1'b0 : i_select283_xmlchecklanguageid24_q = i_select606_xmlchecklanguageid22_q;
            1'b1 : i_select283_xmlchecklanguageid24_q = bubble_select_i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_b;
            default : i_select283_xmlchecklanguageid24_q = 8'b0;
        endcase
    end

    // i_cmp329_xmlchecklanguageid27(LOGICAL,11)@0
    assign i_cmp329_xmlchecklanguageid27_q = $unsigned(i_select283_xmlchecklanguageid24_q == c_i8_4536_recast_x_q ? 1'b1 : 1'b0);

    // c_i8_035_recast_x(CONSTANT,88)
    assign c_i8_035_recast_x_q = $unsigned(8'b00000000);

    // i_cmp324_xmlchecklanguageid25(LOGICAL,10)@0
    assign i_cmp324_xmlchecklanguageid25_q = $unsigned(i_select283_xmlchecklanguageid24_q == c_i8_035_recast_x_q ? 1'b1 : 1'b0);

    // i_narrow_xmlchecklanguageid29(LOGICAL,26)@0 + 1
    assign i_narrow_xmlchecklanguageid29_qi = i_cmp324_xmlchecklanguageid25_q | i_cmp329_xmlchecklanguageid27_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_narrow_xmlchecklanguageid29_delay ( .xin(i_narrow_xmlchecklanguageid29_qi), .xout(i_narrow_xmlchecklanguageid29_q), .ena(SE_i_narrow_xmlchecklanguageid29_backEN[0]), .clk(clock), .aclr(resetn) );

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31(BLACKBOX,25)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_80_0@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000080Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31 (
        .in_predicate_in(GND_q),
        .in_src_data_in_80_0(i_narrow_xmlchecklanguageid29_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_V0),
        .out_intel_reserved_ffwd_80_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_out_intel_reserved_ffwd_80_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31(STALLENABLE,178)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_V0 = SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_out_stall_out | ~ (SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_wireValid = SE_i_narrow_xmlchecklanguageid29_V0;

    // SE_i_narrow_xmlchecklanguageid29(STALLENABLE,180)
    // Valid signal propagation
    assign SE_i_narrow_xmlchecklanguageid29_V0 = SE_i_narrow_xmlchecklanguageid29_R_v_0;
    // Stall signal propagation
    assign SE_i_narrow_xmlchecklanguageid29_s_tv_0 = SE_in_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_backStall & SE_i_narrow_xmlchecklanguageid29_R_v_0;
    // Backward Enable generation
    assign SE_i_narrow_xmlchecklanguageid29_backEN = ~ (SE_i_narrow_xmlchecklanguageid29_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_narrow_xmlchecklanguageid29_v_s_0 = SE_i_narrow_xmlchecklanguageid29_backEN & SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_V0;
    // Backward Stall generation
    assign SE_i_narrow_xmlchecklanguageid29_backStall = ~ (SE_i_narrow_xmlchecklanguageid29_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_narrow_xmlchecklanguageid29_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_narrow_xmlchecklanguageid29_backEN == 1'b0)
            begin
                SE_i_narrow_xmlchecklanguageid29_R_v_0 <= SE_i_narrow_xmlchecklanguageid29_R_v_0 & SE_i_narrow_xmlchecklanguageid29_s_tv_0;
            end
            else
            begin
                SE_i_narrow_xmlchecklanguageid29_R_v_0 <= SE_i_narrow_xmlchecklanguageid29_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17(STALLENABLE,171)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_V0 = SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_backStall = SE_i_narrow_xmlchecklanguageid29_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and0 = i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and1 = i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and2 = i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and3 = i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and4 = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and3;
    assign SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and5 = i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and4;
    assign SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and6 = i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and5;
    assign SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_and6;

    // i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17(BLACKBOX,21)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000120Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17 (
        .in_intel_reserved_ffwd_78_0(in_intel_reserved_ffwd_78_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_backStall),
        .in_valid_in(SE_stall_entry_V9),
        .out_dest_data_out_78_0(i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_out_dest_data_out_78_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21(BLACKBOX,20)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000119Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21 (
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_backStall),
        .in_valid_in(SE_stall_entry_V8),
        .out_dest_data_out_47_0(i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_out_dest_data_out_47_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000118Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15 (
        .in_intel_reserved_ffwd_68_0(in_intel_reserved_ffwd_68_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_backStall),
        .in_valid_in(SE_stall_entry_V7),
        .out_dest_data_out_68_0(i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_out_dest_data_out_68_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23(BLACKBOX,18)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000117Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23 (
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_backStall),
        .in_valid_in(SE_stall_entry_V6),
        .out_dest_data_out_28_0(i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_out_dest_data_out_28_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000116Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19 (
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_backStall),
        .in_valid_in(SE_stall_entry_V5),
        .out_dest_data_out_32_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_out_dest_data_out_32_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12(BLACKBOX,16)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000115Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_backStall),
        .in_valid_in(SE_stall_entry_V4),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_out_dest_data_out_49_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7(STALLENABLE,157)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_backStall = SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7(BLACKBOX,14)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000113Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7 (
        .in_intel_reserved_ffwd_72_0(in_intel_reserved_ffwd_72_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_72_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000112Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13 (
        .in_intel_reserved_ffwd_64_0(in_intel_reserved_ffwd_64_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_64_0(i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_out_dest_data_out_64_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000111Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16 (
        .in_intel_reserved_ffwd_71_0(in_intel_reserved_ffwd_71_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_71_0(i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_out_dest_data_out_71_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
            SE_stall_entry_fromReg5 <= '0;
            SE_stall_entry_fromReg6 <= '0;
            SE_stall_entry_fromReg7 <= '0;
            SE_stall_entry_fromReg8 <= '0;
            SE_stall_entry_fromReg9 <= '0;
            SE_stall_entry_fromReg10 <= '0;
            SE_stall_entry_fromReg11 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
            // Successor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
            // Successor 5
            SE_stall_entry_fromReg5 <= SE_stall_entry_toReg5;
            // Successor 6
            SE_stall_entry_fromReg6 <= SE_stall_entry_toReg6;
            // Successor 7
            SE_stall_entry_fromReg7 <= SE_stall_entry_toReg7;
            // Successor 8
            SE_stall_entry_fromReg8 <= SE_stall_entry_toReg8;
            // Successor 9
            SE_stall_entry_fromReg9 <= SE_stall_entry_toReg9;
            // Successor 10
            SE_stall_entry_fromReg10 <= SE_stall_entry_toReg10;
            // Successor 11
            SE_stall_entry_fromReg11 <= SE_stall_entry_toReg11;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_phi_decision770_select105_xmlchecklanguageid16_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_phi_decision_xor95_xmlchecklanguageid13_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid145_xmlchecklanguageid12_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid146_xmlchecklanguageid19_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    assign SE_stall_entry_consumed6 = (~ (i_llvm_fpga_ffwd_dest_i8_lcssa147_select69_xmlchecklanguageid23_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg6;
    assign SE_stall_entry_consumed7 = (~ (i_llvm_fpga_ffwd_dest_i8_lcssa163_select101_xmlchecklanguageid15_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg7;
    assign SE_stall_entry_consumed8 = (~ (i_llvm_fpga_ffwd_dest_i8_lcssa164_select84_xmlchecklanguageid21_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg8;
    assign SE_stall_entry_consumed9 = (~ (i_llvm_fpga_ffwd_dest_i8_lm77430110_xmlchecklanguageid17_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg9;
    assign SE_stall_entry_consumed10 = (~ (i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg10;
    assign SE_stall_entry_consumed11 = (~ (i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg11;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    assign SE_stall_entry_toReg5 = SE_stall_entry_StallValid & SE_stall_entry_consumed5;
    assign SE_stall_entry_toReg6 = SE_stall_entry_StallValid & SE_stall_entry_consumed6;
    assign SE_stall_entry_toReg7 = SE_stall_entry_StallValid & SE_stall_entry_consumed7;
    assign SE_stall_entry_toReg8 = SE_stall_entry_StallValid & SE_stall_entry_consumed8;
    assign SE_stall_entry_toReg9 = SE_stall_entry_StallValid & SE_stall_entry_consumed9;
    assign SE_stall_entry_toReg10 = SE_stall_entry_StallValid & SE_stall_entry_consumed10;
    assign SE_stall_entry_toReg11 = SE_stall_entry_StallValid & SE_stall_entry_consumed11;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_or5 = SE_stall_entry_consumed5 & SE_stall_entry_or4;
    assign SE_stall_entry_or6 = SE_stall_entry_consumed6 & SE_stall_entry_or5;
    assign SE_stall_entry_or7 = SE_stall_entry_consumed7 & SE_stall_entry_or6;
    assign SE_stall_entry_or8 = SE_stall_entry_consumed8 & SE_stall_entry_or7;
    assign SE_stall_entry_or9 = SE_stall_entry_consumed9 & SE_stall_entry_or8;
    assign SE_stall_entry_or10 = SE_stall_entry_consumed10 & SE_stall_entry_or9;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed11 & SE_stall_entry_or10);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    assign SE_stall_entry_V5 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg5);
    assign SE_stall_entry_V6 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg6);
    assign SE_stall_entry_V7 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg7);
    assign SE_stall_entry_V8 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg8);
    assign SE_stall_entry_V9 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg9);
    assign SE_stall_entry_V10 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg10);
    assign SE_stall_entry_V11 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg11);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9(BLACKBOX,15)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000114Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9 (
        .in_intel_reserved_ffwd_74_0(in_intel_reserved_ffwd_74_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_74_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9(STALLENABLE,159)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_backStall = SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_valid_out;

    // SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0(STALLENABLE,197)
    // Valid signal propagation
    assign SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_V0 = SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_s_tv_0 = SE_i_unnamed_xmlchecklanguageid6_backStall & SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_backEN = ~ (SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_v_s_0 = SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_V0;
    // Backward Stall generation
    assign SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_backStall = ~ (SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_R_v_0 <= SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_R_v_0 & SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_R_v_0 <= SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_v_s_0;
            end

        end
    end

    // SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0(STALLENABLE,198)
    // Valid signal propagation
    assign SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_V0 = SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_s_tv_0 = SE_i_unnamed_xmlchecklanguageid6_backStall & SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_backEN = ~ (SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_v_s_0 = SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_V0;
    // Backward Stall generation
    assign SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_backStall = ~ (SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_backEN == 1'b0)
            begin
                SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_R_v_0 <= SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_R_v_0 & SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_R_v_0 <= SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_v_s_0;
            end

        end
    end

    // SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0(STALLENABLE,196)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_V0 = SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_s_tv_0 = SE_i_unnamed_xmlchecklanguageid6_backStall & SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_backEN = ~ (SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_v_s_0 = SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_V0;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_backStall = ~ (SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_R_v_0 <= SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_R_v_0 & SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_R_v_0 <= SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_unnamed_xmlchecklanguageid6(STALLENABLE,190)
    // Valid signal propagation
    assign SE_i_unnamed_xmlchecklanguageid6_V0 = SE_i_unnamed_xmlchecklanguageid6_wireValid;
    // Backward Stall generation
    assign SE_i_unnamed_xmlchecklanguageid6_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid147_xmlchecklanguageid30_out_stall_out | ~ (SE_i_unnamed_xmlchecklanguageid6_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_xmlchecklanguageid6_and0 = SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_V0;
    assign SE_i_unnamed_xmlchecklanguageid6_and1 = SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_V0 & SE_i_unnamed_xmlchecklanguageid6_and0;
    assign SE_i_unnamed_xmlchecklanguageid6_wireValid = SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_V0 & SE_i_unnamed_xmlchecklanguageid6_and1;

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31(STALLENABLE,179)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_and0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid147_xmlchecklanguageid30_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9(BITJOIN,110)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9(BITSELECT,111)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_q[0:0]);

    // redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0(REG,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_backEN == 1'b1)
        begin
            redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_b);
        end
    end

    // i_unnamed_xmlchecklanguageid10(LOGICAL,34)@1
    assign i_unnamed_xmlchecklanguageid10_q = redist1_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid144_xmlchecklanguageid9_out_dest_data_out_74_0_1_0_q ^ VCC_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7(BITJOIN,107)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7(BITSELECT,108)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_q[0:0]);

    // redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0(REG,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_backEN == 1'b1)
        begin
            redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_b);
        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0(BITJOIN,134)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_q = i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_out_dest_data_out_77_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0(BITSELECT,135)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_q[63:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2(BITJOIN,131)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_q = i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_out_dest_data_out_75_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2(BITSELECT,132)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_q[63:0]);

    // c_i64_532(CONSTANT,7)
    assign c_i64_532_q = $unsigned(64'b1111111111111111111111111111111111111111111111111111111111111011);

    // i_sub_ptr_sub313_xmlchecklanguageid4(SUB,33)@0
    assign i_sub_ptr_sub313_xmlchecklanguageid4_a = {1'b0, c_i64_532_q};
    assign i_sub_ptr_sub313_xmlchecklanguageid4_b = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr289106_xmlchecklanguageid2_b};
    assign i_sub_ptr_sub313_xmlchecklanguageid4_o = $unsigned(i_sub_ptr_sub313_xmlchecklanguageid4_a) - $unsigned(i_sub_ptr_sub313_xmlchecklanguageid4_b);
    assign i_sub_ptr_sub313_xmlchecklanguageid4_q = i_sub_ptr_sub313_xmlchecklanguageid4_o[64:0];

    // bgTrunc_i_sub_ptr_sub313_xmlchecklanguageid4_sel_x(BITSELECT,87)@0
    assign bgTrunc_i_sub_ptr_sub313_xmlchecklanguageid4_sel_x_b = $unsigned(i_sub_ptr_sub313_xmlchecklanguageid4_q[63:0]);

    // i_sub_ptr_sub313_off_xmlchecklanguageid5(ADD,32)@0
    assign i_sub_ptr_sub313_off_xmlchecklanguageid5_a = {1'b0, bgTrunc_i_sub_ptr_sub313_xmlchecklanguageid4_sel_x_b};
    assign i_sub_ptr_sub313_off_xmlchecklanguageid5_b = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024i8_nxt_6_replace_phi109_xmlchecklanguageid0_b};
    assign i_sub_ptr_sub313_off_xmlchecklanguageid5_o = $unsigned(i_sub_ptr_sub313_off_xmlchecklanguageid5_a) + $unsigned(i_sub_ptr_sub313_off_xmlchecklanguageid5_b);
    assign i_sub_ptr_sub313_off_xmlchecklanguageid5_q = i_sub_ptr_sub313_off_xmlchecklanguageid5_o[64:0];

    // bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x(BITSELECT,86)@0
    assign bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b = i_sub_ptr_sub313_off_xmlchecklanguageid5_q[63:0];

    // redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0(REG,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b);
        end
    end

    // c_i64_333(CONSTANT,6)
    assign c_i64_333_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000011);

    // i_unnamed_xmlchecklanguageid6(COMPARE,36)@1
    assign i_unnamed_xmlchecklanguageid6_a = {2'b00, c_i64_333_q};
    assign i_unnamed_xmlchecklanguageid6_b = {2'b00, redist0_bgTrunc_i_sub_ptr_sub313_off_xmlchecklanguageid5_sel_x_b_1_0_q};
    assign i_unnamed_xmlchecklanguageid6_o = $unsigned(i_unnamed_xmlchecklanguageid6_a) - $unsigned(i_unnamed_xmlchecklanguageid6_b);
    assign i_unnamed_xmlchecklanguageid6_c[0] = i_unnamed_xmlchecklanguageid6_o[65];

    // i_unnamed_xmlchecklanguageid8(LOGICAL,37)@1
    assign i_unnamed_xmlchecklanguageid8_q = i_unnamed_xmlchecklanguageid6_c & redist2_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid143_xmlchecklanguageid7_out_dest_data_out_72_0_1_0_q;

    // i_unnamed_xmlchecklanguageid11(LOGICAL,35)@1
    assign i_unnamed_xmlchecklanguageid11_q = i_unnamed_xmlchecklanguageid8_q | i_unnamed_xmlchecklanguageid10_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid147_xmlchecklanguageid30(BLACKBOX,24)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_79_0@20000000
    // out out_stall_out@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000079Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid147_xmlchecklanguageid30 (
        .in_predicate_in(GND_q),
        .in_src_data_in_79_0(i_unnamed_xmlchecklanguageid11_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_backStall),
        .in_valid_in(SE_i_unnamed_xmlchecklanguageid6_V0),
        .out_intel_reserved_ffwd_79_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid147_xmlchecklanguageid30_out_intel_reserved_ffwd_79_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid147_xmlchecklanguageid30_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid147_xmlchecklanguageid30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,80)
    assign out_intel_reserved_ffwd_79_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid147_xmlchecklanguageid30_out_intel_reserved_ffwd_79_0;

    // sync_out(GPOUT,84)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,90)
    assign out_intel_reserved_ffwd_80_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_out_intel_reserved_ffwd_80_0;

    // dupName_0_sync_out_x(GPOUT,91)@1
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid148_xmlchecklanguageid31_V0;

endmodule
