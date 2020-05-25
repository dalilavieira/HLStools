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

// SystemVerilog created from glfwChooseFBConfig_i_sfc_logic_s_c1_in_fA000000Z_glfwchoosefbconfig0
// SystemVerilog created on Sun May 24 22:29:58 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module glfwChooseFBConfig_i_sfc_logic_s_c1_in_fA000000Z_glfwchoosefbconfig0 (
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_20_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_glfwChooseFBConfig1,
    output wire [0:0] out_unnamed_glfwChooseFBConfig32_0_tpl,
    input wire [0:0] in_c1_eni48_0_tpl,
    input wire [0:0] in_c1_eni48_1_tpl,
    input wire [31:0] in_c1_eni48_2_tpl,
    input wire [0:0] in_c1_eni48_3_tpl,
    input wire [31:0] in_c1_eni48_4_tpl,
    input wire [0:0] in_c1_eni48_5_tpl,
    input wire [31:0] in_c1_eni48_6_tpl,
    input wire [0:0] in_c1_eni48_7_tpl,
    input wire [31:0] in_c1_eni48_8_tpl,
    input wire [31:0] in_c1_eni48_9_tpl,
    input wire [0:0] in_c1_eni48_10_tpl,
    input wire [31:0] in_c1_eni48_11_tpl,
    input wire [0:0] in_c1_eni48_12_tpl,
    input wire [31:0] in_c1_eni48_13_tpl,
    input wire [31:0] in_c1_eni48_14_tpl,
    input wire [0:0] in_c1_eni48_15_tpl,
    input wire [31:0] in_c1_eni48_16_tpl,
    input wire [31:0] in_c1_eni48_17_tpl,
    input wire [0:0] in_c1_eni48_18_tpl,
    input wire [31:0] in_c1_eni48_19_tpl,
    input wire [31:0] in_c1_eni48_20_tpl,
    input wire [0:0] in_c1_eni48_21_tpl,
    input wire [31:0] in_c1_eni48_22_tpl,
    input wire [0:0] in_c1_eni48_23_tpl,
    input wire [31:0] in_c1_eni48_24_tpl,
    input wire [0:0] in_c1_eni48_25_tpl,
    input wire [31:0] in_c1_eni48_26_tpl,
    input wire [0:0] in_c1_eni48_27_tpl,
    input wire [31:0] in_c1_eni48_28_tpl,
    input wire [31:0] in_c1_eni48_29_tpl,
    input wire [0:0] in_c1_eni48_30_tpl,
    input wire [31:0] in_c1_eni48_31_tpl,
    input wire [31:0] in_c1_eni48_32_tpl,
    input wire [0:0] in_c1_eni48_33_tpl,
    input wire [31:0] in_c1_eni48_34_tpl,
    input wire [31:0] in_c1_eni48_35_tpl,
    input wire [0:0] in_c1_eni48_36_tpl,
    input wire [31:0] in_c1_eni48_37_tpl,
    input wire [31:0] in_c1_eni48_38_tpl,
    input wire [0:0] in_c1_eni48_39_tpl,
    input wire [31:0] in_c1_eni48_40_tpl,
    input wire [0:0] in_c1_eni48_41_tpl,
    input wire [31:0] in_c1_eni48_42_tpl,
    input wire [0:0] in_c1_eni48_43_tpl,
    input wire [63:0] in_c1_eni48_44_tpl,
    input wire [0:0] in_c1_eni48_45_tpl,
    input wire [0:0] in_c1_eni48_46_tpl,
    input wire [0:0] in_c1_eni48_47_tpl,
    input wire [0:0] in_c1_eni48_48_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0129_q;
    wire [63:0] cpn_struct_TYPE_5gr_q;
    wire [0:0] i_acl_20_glfwchoosefbconfig92_q;
    wire [0:0] i_acl_22_glfwchoosefbconfig95_s;
    reg [63:0] i_acl_22_glfwchoosefbconfig95_q;
    wire [0:0] i_acl_23_glfwchoosefbconfig96_q;
    wire [0:0] i_acl_24_glfwchoosefbconfig97_q;
    wire [0:0] i_acl_26_glfwchoosefbconfig98_s;
    reg [63:0] i_acl_26_glfwchoosefbconfig98_q;
    wire [0:0] i_acl_28_demorgan_glfwchoosefbconfig101_qi;
    reg [0:0] i_acl_28_demorgan_glfwchoosefbconfig101_q;
    wire [0:0] i_acl_5_glfwchoosefbconfig35_s;
    reg [31:0] i_acl_5_glfwchoosefbconfig35_q;
    wire [31:0] i_acl_5_glfwchoosefbconfig35_vt_join_q;
    wire [30:0] i_acl_5_glfwchoosefbconfig35_vt_select_30_b;
    wire [32:0] i_acl_6_glfwchoosefbconfig39_a;
    wire [32:0] i_acl_6_glfwchoosefbconfig39_b;
    logic [32:0] i_acl_6_glfwchoosefbconfig39_o;
    wire [32:0] i_acl_6_glfwchoosefbconfig39_q;
    wire [32:0] i_acl_7_glfwchoosefbconfig43_a;
    wire [32:0] i_acl_7_glfwchoosefbconfig43_b;
    logic [32:0] i_acl_7_glfwchoosefbconfig43_o;
    wire [32:0] i_acl_7_glfwchoosefbconfig43_q;
    wire [0:0] i_acl_8_glfwchoosefbconfig46_s;
    reg [31:0] i_acl_8_glfwchoosefbconfig46_q;
    wire [31:0] i_acl_8_glfwchoosefbconfig46_vt_join_q;
    wire [30:0] i_acl_8_glfwchoosefbconfig46_vt_select_30_b;
    wire [0:0] i_add110_glfwchoosefbconfig52_s;
    reg [31:0] i_add110_glfwchoosefbconfig52_q;
    wire [31:0] i_add110_glfwchoosefbconfig52_vt_join_q;
    wire [30:0] i_add110_glfwchoosefbconfig52_vt_select_30_b;
    wire [0:0] i_add121_glfwchoosefbconfig55_s;
    reg [31:0] i_add121_glfwchoosefbconfig55_q;
    wire [31:0] i_add121_glfwchoosefbconfig55_vt_join_q;
    wire [30:0] i_add121_glfwchoosefbconfig55_vt_select_30_b;
    wire [0:0] i_add132_glfwchoosefbconfig58_s;
    reg [31:0] i_add132_glfwchoosefbconfig58_q;
    wire [31:0] i_add132_glfwchoosefbconfig58_vt_join_q;
    wire [30:0] i_add132_glfwchoosefbconfig58_vt_select_30_b;
    wire [0:0] i_add143_glfwchoosefbconfig61_s;
    reg [31:0] i_add143_glfwchoosefbconfig61_q;
    wire [31:0] i_add143_glfwchoosefbconfig61_vt_join_q;
    wire [30:0] i_add143_glfwchoosefbconfig61_vt_select_30_b;
    wire [0:0] i_add154_glfwchoosefbconfig64_s;
    reg [31:0] i_add154_glfwchoosefbconfig64_q;
    wire [31:0] i_add154_glfwchoosefbconfig64_vt_join_q;
    wire [30:0] i_add154_glfwchoosefbconfig64_vt_select_30_b;
    wire [0:0] i_add166_glfwchoosefbconfig67_s;
    reg [31:0] i_add166_glfwchoosefbconfig67_q;
    wire [31:0] i_add166_glfwchoosefbconfig67_vt_join_q;
    wire [30:0] i_add166_glfwchoosefbconfig67_vt_select_30_b;
    wire [0:0] i_add63_glfwchoosefbconfig38_s;
    reg [31:0] i_add63_glfwchoosefbconfig38_q;
    wire [31:0] i_add63_glfwchoosefbconfig38_vt_join_q;
    wire [30:0] i_add63_glfwchoosefbconfig38_vt_select_30_b;
    wire [0:0] i_add74_glfwchoosefbconfig42_s;
    reg [31:0] i_add74_glfwchoosefbconfig42_q;
    wire [31:0] i_add74_glfwchoosefbconfig42_vt_join_q;
    wire [30:0] i_add74_glfwchoosefbconfig42_vt_select_30_b;
    wire [0:0] i_add98_glfwchoosefbconfig49_s;
    reg [31:0] i_add98_glfwchoosefbconfig49_q;
    wire [31:0] i_add98_glfwchoosefbconfig49_vt_join_q;
    wire [30:0] i_add98_glfwchoosefbconfig49_vt_select_30_b;
    wire [0:0] i_cmp11_glfwchoosefbconfig11_q;
    wire [33:0] i_cmp174_glfwchoosefbconfig80_a;
    wire [33:0] i_cmp174_glfwchoosefbconfig80_b;
    logic [33:0] i_cmp174_glfwchoosefbconfig80_o;
    wire [0:0] i_cmp174_glfwchoosefbconfig80_c;
    wire [0:0] i_cmp176_glfwchoosefbconfig81_q;
    wire [33:0] i_cmp178_glfwchoosefbconfig83_a;
    wire [33:0] i_cmp178_glfwchoosefbconfig83_b;
    logic [33:0] i_cmp178_glfwchoosefbconfig83_o;
    wire [0:0] i_cmp178_glfwchoosefbconfig83_c;
    wire [0:0] i_cmp179_glfwchoosefbconfig84_q;
    wire [0:0] i_cmp17_glfwchoosefbconfig14_q;
    wire [33:0] i_cmp181_glfwchoosefbconfig86_a;
    wire [33:0] i_cmp181_glfwchoosefbconfig86_b;
    logic [33:0] i_cmp181_glfwchoosefbconfig86_o;
    wire [0:0] i_cmp181_glfwchoosefbconfig86_c;
    wire [0:0] i_cmp186_glfwchoosefbconfig99_q;
    wire [0:0] i_cmp24_glfwchoosefbconfig17_q;
    wire [33:0] i_cmp32_glfwchoosefbconfig20_a;
    wire [33:0] i_cmp32_glfwchoosefbconfig20_b;
    logic [33:0] i_cmp32_glfwchoosefbconfig20_o;
    wire [0:0] i_cmp32_glfwchoosefbconfig20_c;
    wire [0:0] i_cmp40_glfwchoosefbconfig25_q;
    wire [0:0] i_leastcolordiff_0134_replace_phi_glfwchoosefbconfig7_s;
    reg [31:0] i_leastcolordiff_0134_replace_phi_glfwchoosefbconfig7_q;
    wire [0:0] i_leastextradiff_0135_replace_phi_glfwchoosefbconfig4_s;
    reg [31:0] i_leastextradiff_0135_replace_phi_glfwchoosefbconfig4_q;
    wire [0:0] i_leastmissing_0133_replace_phi_glfwchoosefbconfig10_s;
    reg [31:0] i_leastmissing_0133_replace_phi_glfwchoosefbconfig10_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig28_glfwchoosefbconfig2_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig29_glfwchoosefbconfig5_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig30_glfwchoosefbconfig8_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024s_struct_type_5_s_unnamed_glfwchoosefbconfig31_glfwchoosefbconfig114_out_intel_reserved_ffwd_20_0;
    wire [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig28_a;
    wire [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig28_b;
    logic [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig28_o;
    wire [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig28_q;
    wire [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig29_a;
    wire [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig29_b;
    logic [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig29_o;
    wire [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig29_q;
    wire [2:0] i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig30_a;
    wire [2:0] i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig30_b;
    logic [2:0] i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig30_o;
    wire [2:0] i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig30_q;
    wire [31:0] i_llvm_fpga_pop_i32_leastcolordiff_0134_pop9_glfwchoosefbconfig6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_leastcolordiff_0134_pop9_glfwchoosefbconfig6_out_feedback_stall_out_9;
    wire [31:0] i_llvm_fpga_pop_i32_leastextradiff_0135_pop8_glfwchoosefbconfig3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_leastextradiff_0135_pop8_glfwchoosefbconfig3_out_feedback_stall_out_8;
    wire [31:0] i_llvm_fpga_pop_i32_leastmissing_0133_pop10_glfwchoosefbconfig9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_leastmissing_0133_pop10_glfwchoosefbconfig9_out_feedback_stall_out_10;
    wire [63:0] i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0136_pop7_glfwchoosefbconfig94_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0136_pop7_glfwchoosefbconfig94_out_feedback_stall_out_7;
    wire [31:0] i_llvm_fpga_push_i32_leastcolordiff_0134_push9_glfwchoosefbconfig108_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_leastcolordiff_0134_push9_glfwchoosefbconfig108_out_feedback_valid_out_9;
    wire [31:0] i_llvm_fpga_push_i32_leastextradiff_0135_push8_glfwchoosefbconfig110_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_leastextradiff_0135_push8_glfwchoosefbconfig110_out_feedback_valid_out_8;
    wire [31:0] i_llvm_fpga_push_i32_leastmissing_0133_push10_glfwchoosefbconfig106_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i32_leastmissing_0133_push10_glfwchoosefbconfig106_out_feedback_valid_out_10;
    wire [63:0] i_llvm_fpga_push_p1024s_struct_type_5_s_closest_0136_push7_glfwchoosefbconfig113_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_p1024s_struct_type_5_s_closest_0136_push7_glfwchoosefbconfig113_out_feedback_valid_out_7;
    wire [31:0] i_mul109_glfwchoosefbconfig51_vt_join_q;
    wire [30:0] i_mul109_glfwchoosefbconfig51_vt_select_30_b;
    wire [31:0] i_mul120_glfwchoosefbconfig54_vt_join_q;
    wire [30:0] i_mul120_glfwchoosefbconfig54_vt_select_30_b;
    wire [31:0] i_mul131_glfwchoosefbconfig57_vt_join_q;
    wire [30:0] i_mul131_glfwchoosefbconfig57_vt_select_30_b;
    wire [31:0] i_mul142_glfwchoosefbconfig60_vt_join_q;
    wire [30:0] i_mul142_glfwchoosefbconfig60_vt_select_30_b;
    wire [31:0] i_mul153_glfwchoosefbconfig63_vt_join_q;
    wire [30:0] i_mul153_glfwchoosefbconfig63_vt_select_30_b;
    wire [31:0] i_mul165_glfwchoosefbconfig66_vt_join_q;
    wire [30:0] i_mul165_glfwchoosefbconfig66_vt_select_30_b;
    wire [31:0] i_mul62_glfwchoosefbconfig37_vt_join_q;
    wire [30:0] i_mul62_glfwchoosefbconfig37_vt_select_30_b;
    wire [31:0] i_mul73_glfwchoosefbconfig41_vt_join_q;
    wire [30:0] i_mul73_glfwchoosefbconfig41_vt_select_30_b;
    wire [31:0] i_mul85_glfwchoosefbconfig45_vt_join_q;
    wire [30:0] i_mul85_glfwchoosefbconfig45_vt_select_30_b;
    wire [31:0] i_mul97_glfwchoosefbconfig48_vt_join_q;
    wire [30:0] i_mul97_glfwchoosefbconfig48_vt_select_30_b;
    wire [31:0] i_mul_glfwchoosefbconfig34_vt_join_q;
    wire [30:0] i_mul_glfwchoosefbconfig34_vt_select_30_b;
    wire [0:0] i_narrow158_glfwchoosefbconfig16_q;
    wire [0:0] i_narrow159_glfwchoosefbconfig19_q;
    wire [0:0] i_narrow160_glfwchoosefbconfig27_q;
    wire [0:0] i_narrow161_glfwchoosefbconfig70_qi;
    reg [0:0] i_narrow161_glfwchoosefbconfig70_q;
    wire [0:0] i_narrow_glfwchoosefbconfig13_q;
    wire [0:0] i_or_cond_glfwchoosefbconfig87_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig105_s;
    reg [31:0] i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig105_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig88_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_17_glfwchoosefbconfig89_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_18_glfwchoosefbconfig90_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_19_glfwchoosefbconfig91_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig107_s;
    reg [31:0] i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig107_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig109_s;
    reg [31:0] i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig109_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig112_s;
    reg [63:0] i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig112_q;
    wire [28:0] i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_vt_const_31_q;
    wire [31:0] i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_vt_join_q;
    wire [2:0] i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_vt_select_2_b;
    wire [32:0] i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_q;
    wire [0:0] i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_qi;
    reg [0:0] i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q;
    wire [0:0] i_selcond_glfwchoosefbconfig_1_glfwchoosefbconfig104_q;
    wire [0:0] i_selcond_glfwchoosefbconfig_7_glfwchoosefbconfig111_q;
    wire [30:0] i_spec_select127_glfwchoosefbconfig71_vt_const_31_q;
    wire [31:0] i_spec_select127_glfwchoosefbconfig71_vt_join_q;
    wire [0:0] i_spec_select127_glfwchoosefbconfig71_vt_select_0_b;
    wire [32:0] i_sub105_glfwchoosefbconfig50_a;
    wire [32:0] i_sub105_glfwchoosefbconfig50_b;
    logic [32:0] i_sub105_glfwchoosefbconfig50_o;
    wire [32:0] i_sub105_glfwchoosefbconfig50_q;
    wire [32:0] i_sub116_glfwchoosefbconfig53_a;
    wire [32:0] i_sub116_glfwchoosefbconfig53_b;
    logic [32:0] i_sub116_glfwchoosefbconfig53_o;
    wire [32:0] i_sub116_glfwchoosefbconfig53_q;
    wire [32:0] i_sub127_glfwchoosefbconfig56_a;
    wire [32:0] i_sub127_glfwchoosefbconfig56_b;
    logic [32:0] i_sub127_glfwchoosefbconfig56_o;
    wire [32:0] i_sub127_glfwchoosefbconfig56_q;
    wire [32:0] i_sub138_glfwchoosefbconfig59_a;
    wire [32:0] i_sub138_glfwchoosefbconfig59_b;
    logic [32:0] i_sub138_glfwchoosefbconfig59_o;
    wire [32:0] i_sub138_glfwchoosefbconfig59_q;
    wire [32:0] i_sub149_glfwchoosefbconfig62_a;
    wire [32:0] i_sub149_glfwchoosefbconfig62_b;
    logic [32:0] i_sub149_glfwchoosefbconfig62_o;
    wire [32:0] i_sub149_glfwchoosefbconfig62_q;
    wire [32:0] i_sub161_glfwchoosefbconfig65_a;
    wire [32:0] i_sub161_glfwchoosefbconfig65_b;
    logic [32:0] i_sub161_glfwchoosefbconfig65_o;
    wire [32:0] i_sub161_glfwchoosefbconfig65_q;
    wire [32:0] i_sub48_glfwchoosefbconfig33_a;
    wire [32:0] i_sub48_glfwchoosefbconfig33_b;
    logic [32:0] i_sub48_glfwchoosefbconfig33_o;
    wire [32:0] i_sub48_glfwchoosefbconfig33_q;
    wire [32:0] i_sub58_glfwchoosefbconfig36_a;
    wire [32:0] i_sub58_glfwchoosefbconfig36_b;
    logic [32:0] i_sub58_glfwchoosefbconfig36_o;
    wire [32:0] i_sub58_glfwchoosefbconfig36_q;
    wire [32:0] i_sub69_glfwchoosefbconfig40_a;
    wire [32:0] i_sub69_glfwchoosefbconfig40_b;
    logic [32:0] i_sub69_glfwchoosefbconfig40_o;
    wire [32:0] i_sub69_glfwchoosefbconfig40_q;
    wire [32:0] i_sub81_glfwchoosefbconfig44_a;
    wire [32:0] i_sub81_glfwchoosefbconfig44_b;
    logic [32:0] i_sub81_glfwchoosefbconfig44_o;
    wire [32:0] i_sub81_glfwchoosefbconfig44_q;
    wire [32:0] i_sub93_glfwchoosefbconfig47_a;
    wire [32:0] i_sub93_glfwchoosefbconfig47_b;
    logic [32:0] i_sub93_glfwchoosefbconfig47_o;
    wire [32:0] i_sub93_glfwchoosefbconfig47_q;
    wire [32:0] i_sub_glfwchoosefbconfig22_a;
    wire [32:0] i_sub_glfwchoosefbconfig22_b;
    logic [32:0] i_sub_glfwchoosefbconfig22_o;
    wire [32:0] i_sub_glfwchoosefbconfig22_q;
    wire [0:0] i_tobool170_glfwchoosefbconfig68_q;
    wire [0:0] i_unnamed_glfwchoosefbconfig102_q;
    wire [0:0] i_unnamed_glfwchoosefbconfig23_q;
    wire [0:0] i_unnamed_glfwchoosefbconfig24_s;
    reg [31:0] i_unnamed_glfwchoosefbconfig24_q;
    wire [0:0] i_unnamed_glfwchoosefbconfig93_q;
    wire [31:0] bgTrunc_i_acl_6_glfwchoosefbconfig39_sel_x_b;
    wire [31:0] bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b;
    wire [63:0] bgTrunc_i_mul109_glfwchoosefbconfig51_sel_x_in;
    wire [31:0] bgTrunc_i_mul109_glfwchoosefbconfig51_sel_x_b;
    wire [63:0] bgTrunc_i_mul120_glfwchoosefbconfig54_sel_x_in;
    wire [31:0] bgTrunc_i_mul120_glfwchoosefbconfig54_sel_x_b;
    wire [63:0] bgTrunc_i_mul131_glfwchoosefbconfig57_sel_x_in;
    wire [31:0] bgTrunc_i_mul131_glfwchoosefbconfig57_sel_x_b;
    wire [63:0] bgTrunc_i_mul142_glfwchoosefbconfig60_sel_x_in;
    wire [31:0] bgTrunc_i_mul142_glfwchoosefbconfig60_sel_x_b;
    wire [63:0] bgTrunc_i_mul153_glfwchoosefbconfig63_sel_x_in;
    wire [31:0] bgTrunc_i_mul153_glfwchoosefbconfig63_sel_x_b;
    wire [63:0] bgTrunc_i_mul165_glfwchoosefbconfig66_sel_x_in;
    wire [31:0] bgTrunc_i_mul165_glfwchoosefbconfig66_sel_x_b;
    wire [63:0] bgTrunc_i_mul62_glfwchoosefbconfig37_sel_x_in;
    wire [31:0] bgTrunc_i_mul62_glfwchoosefbconfig37_sel_x_b;
    wire [63:0] bgTrunc_i_mul73_glfwchoosefbconfig41_sel_x_in;
    wire [31:0] bgTrunc_i_mul73_glfwchoosefbconfig41_sel_x_b;
    wire [63:0] bgTrunc_i_mul85_glfwchoosefbconfig45_sel_x_in;
    wire [31:0] bgTrunc_i_mul85_glfwchoosefbconfig45_sel_x_b;
    wire [63:0] bgTrunc_i_mul97_glfwchoosefbconfig48_sel_x_in;
    wire [31:0] bgTrunc_i_mul97_glfwchoosefbconfig48_sel_x_b;
    wire [63:0] bgTrunc_i_mul_glfwchoosefbconfig34_sel_x_in;
    wire [31:0] bgTrunc_i_mul_glfwchoosefbconfig34_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_sel_x_b;
    wire [31:0] bgTrunc_i_sub105_glfwchoosefbconfig50_sel_x_b;
    wire [31:0] bgTrunc_i_sub116_glfwchoosefbconfig53_sel_x_b;
    wire [31:0] bgTrunc_i_sub127_glfwchoosefbconfig56_sel_x_b;
    wire [31:0] bgTrunc_i_sub138_glfwchoosefbconfig59_sel_x_b;
    wire [31:0] bgTrunc_i_sub149_glfwchoosefbconfig62_sel_x_b;
    wire [31:0] bgTrunc_i_sub161_glfwchoosefbconfig65_sel_x_b;
    wire [31:0] bgTrunc_i_sub48_glfwchoosefbconfig33_sel_x_b;
    wire [31:0] bgTrunc_i_sub58_glfwchoosefbconfig36_sel_x_b;
    wire [31:0] bgTrunc_i_sub69_glfwchoosefbconfig40_sel_x_b;
    wire [31:0] bgTrunc_i_sub81_glfwchoosefbconfig44_sel_x_b;
    wire [31:0] bgTrunc_i_sub93_glfwchoosefbconfig47_sel_x_b;
    wire [31:0] bgTrunc_i_sub_glfwchoosefbconfig22_sel_x_b;
    wire [31:0] i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_sel_x_b;
    wire [31:0] i_spec_select127_glfwchoosefbconfig71_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    wire [63:0] i_mul109_glfwchoosefbconfig51_sums_join_0_q;
    wire [50:0] i_mul109_glfwchoosefbconfig51_sums_align_1_q;
    wire [50:0] i_mul109_glfwchoosefbconfig51_sums_align_1_qint;
    wire [64:0] i_mul109_glfwchoosefbconfig51_sums_result_add_0_0_a;
    wire [64:0] i_mul109_glfwchoosefbconfig51_sums_result_add_0_0_b;
    logic [64:0] i_mul109_glfwchoosefbconfig51_sums_result_add_0_0_o;
    wire [64:0] i_mul109_glfwchoosefbconfig51_sums_result_add_0_0_q;
    wire [63:0] i_mul120_glfwchoosefbconfig54_sums_join_0_q;
    wire [50:0] i_mul120_glfwchoosefbconfig54_sums_align_1_q;
    wire [50:0] i_mul120_glfwchoosefbconfig54_sums_align_1_qint;
    wire [64:0] i_mul120_glfwchoosefbconfig54_sums_result_add_0_0_a;
    wire [64:0] i_mul120_glfwchoosefbconfig54_sums_result_add_0_0_b;
    logic [64:0] i_mul120_glfwchoosefbconfig54_sums_result_add_0_0_o;
    wire [64:0] i_mul120_glfwchoosefbconfig54_sums_result_add_0_0_q;
    wire [63:0] i_mul131_glfwchoosefbconfig57_sums_join_0_q;
    wire [50:0] i_mul131_glfwchoosefbconfig57_sums_align_1_q;
    wire [50:0] i_mul131_glfwchoosefbconfig57_sums_align_1_qint;
    wire [64:0] i_mul131_glfwchoosefbconfig57_sums_result_add_0_0_a;
    wire [64:0] i_mul131_glfwchoosefbconfig57_sums_result_add_0_0_b;
    logic [64:0] i_mul131_glfwchoosefbconfig57_sums_result_add_0_0_o;
    wire [64:0] i_mul131_glfwchoosefbconfig57_sums_result_add_0_0_q;
    wire [63:0] i_mul142_glfwchoosefbconfig60_sums_join_0_q;
    wire [50:0] i_mul142_glfwchoosefbconfig60_sums_align_1_q;
    wire [50:0] i_mul142_glfwchoosefbconfig60_sums_align_1_qint;
    wire [64:0] i_mul142_glfwchoosefbconfig60_sums_result_add_0_0_a;
    wire [64:0] i_mul142_glfwchoosefbconfig60_sums_result_add_0_0_b;
    logic [64:0] i_mul142_glfwchoosefbconfig60_sums_result_add_0_0_o;
    wire [64:0] i_mul142_glfwchoosefbconfig60_sums_result_add_0_0_q;
    wire [63:0] i_mul153_glfwchoosefbconfig63_sums_join_0_q;
    wire [50:0] i_mul153_glfwchoosefbconfig63_sums_align_1_q;
    wire [50:0] i_mul153_glfwchoosefbconfig63_sums_align_1_qint;
    wire [64:0] i_mul153_glfwchoosefbconfig63_sums_result_add_0_0_a;
    wire [64:0] i_mul153_glfwchoosefbconfig63_sums_result_add_0_0_b;
    logic [64:0] i_mul153_glfwchoosefbconfig63_sums_result_add_0_0_o;
    wire [64:0] i_mul153_glfwchoosefbconfig63_sums_result_add_0_0_q;
    wire [63:0] i_mul165_glfwchoosefbconfig66_sums_join_0_q;
    wire [50:0] i_mul165_glfwchoosefbconfig66_sums_align_1_q;
    wire [50:0] i_mul165_glfwchoosefbconfig66_sums_align_1_qint;
    wire [64:0] i_mul165_glfwchoosefbconfig66_sums_result_add_0_0_a;
    wire [64:0] i_mul165_glfwchoosefbconfig66_sums_result_add_0_0_b;
    logic [64:0] i_mul165_glfwchoosefbconfig66_sums_result_add_0_0_o;
    wire [64:0] i_mul165_glfwchoosefbconfig66_sums_result_add_0_0_q;
    wire [63:0] i_mul62_glfwchoosefbconfig37_sums_join_0_q;
    wire [50:0] i_mul62_glfwchoosefbconfig37_sums_align_1_q;
    wire [50:0] i_mul62_glfwchoosefbconfig37_sums_align_1_qint;
    wire [64:0] i_mul62_glfwchoosefbconfig37_sums_result_add_0_0_a;
    wire [64:0] i_mul62_glfwchoosefbconfig37_sums_result_add_0_0_b;
    logic [64:0] i_mul62_glfwchoosefbconfig37_sums_result_add_0_0_o;
    wire [64:0] i_mul62_glfwchoosefbconfig37_sums_result_add_0_0_q;
    wire [63:0] i_mul73_glfwchoosefbconfig41_sums_join_0_q;
    wire [50:0] i_mul73_glfwchoosefbconfig41_sums_align_1_q;
    wire [50:0] i_mul73_glfwchoosefbconfig41_sums_align_1_qint;
    wire [64:0] i_mul73_glfwchoosefbconfig41_sums_result_add_0_0_a;
    wire [64:0] i_mul73_glfwchoosefbconfig41_sums_result_add_0_0_b;
    logic [64:0] i_mul73_glfwchoosefbconfig41_sums_result_add_0_0_o;
    wire [64:0] i_mul73_glfwchoosefbconfig41_sums_result_add_0_0_q;
    wire [63:0] i_mul85_glfwchoosefbconfig45_sums_join_0_q;
    wire [50:0] i_mul85_glfwchoosefbconfig45_sums_align_1_q;
    wire [50:0] i_mul85_glfwchoosefbconfig45_sums_align_1_qint;
    wire [64:0] i_mul85_glfwchoosefbconfig45_sums_result_add_0_0_a;
    wire [64:0] i_mul85_glfwchoosefbconfig45_sums_result_add_0_0_b;
    logic [64:0] i_mul85_glfwchoosefbconfig45_sums_result_add_0_0_o;
    wire [64:0] i_mul85_glfwchoosefbconfig45_sums_result_add_0_0_q;
    wire [63:0] i_mul97_glfwchoosefbconfig48_sums_join_0_q;
    wire [50:0] i_mul97_glfwchoosefbconfig48_sums_align_1_q;
    wire [50:0] i_mul97_glfwchoosefbconfig48_sums_align_1_qint;
    wire [64:0] i_mul97_glfwchoosefbconfig48_sums_result_add_0_0_a;
    wire [64:0] i_mul97_glfwchoosefbconfig48_sums_result_add_0_0_b;
    logic [64:0] i_mul97_glfwchoosefbconfig48_sums_result_add_0_0_o;
    wire [64:0] i_mul97_glfwchoosefbconfig48_sums_result_add_0_0_q;
    wire [63:0] i_mul_glfwchoosefbconfig34_sums_join_0_q;
    wire [50:0] i_mul_glfwchoosefbconfig34_sums_align_1_q;
    wire [50:0] i_mul_glfwchoosefbconfig34_sums_align_1_qint;
    wire [64:0] i_mul_glfwchoosefbconfig34_sums_result_add_0_0_a;
    wire [64:0] i_mul_glfwchoosefbconfig34_sums_result_add_0_0_b;
    logic [64:0] i_mul_glfwchoosefbconfig34_sums_result_add_0_0_o;
    wire [64:0] i_mul_glfwchoosefbconfig34_sums_result_add_0_0_q;
    wire i_mul109_glfwchoosefbconfig51_im0_cma_reset;
    wire [13:0] i_mul109_glfwchoosefbconfig51_im0_cma_a0;
    wire [13:0] i_mul109_glfwchoosefbconfig51_im0_cma_c0;
    wire [27:0] i_mul109_glfwchoosefbconfig51_im0_cma_s0;
    wire [27:0] i_mul109_glfwchoosefbconfig51_im0_cma_qq;
    wire [27:0] i_mul109_glfwchoosefbconfig51_im0_cma_q;
    wire i_mul109_glfwchoosefbconfig51_im0_cma_ena0;
    wire i_mul109_glfwchoosefbconfig51_im0_cma_ena1;
    wire i_mul109_glfwchoosefbconfig51_im0_cma_ena2;
    wire i_mul109_glfwchoosefbconfig51_im8_cma_reset;
    wire [17:0] i_mul109_glfwchoosefbconfig51_im8_cma_a0;
    wire [17:0] i_mul109_glfwchoosefbconfig51_im8_cma_c0;
    wire [35:0] i_mul109_glfwchoosefbconfig51_im8_cma_s0;
    wire [35:0] i_mul109_glfwchoosefbconfig51_im8_cma_qq;
    wire [35:0] i_mul109_glfwchoosefbconfig51_im8_cma_q;
    wire i_mul109_glfwchoosefbconfig51_im8_cma_ena0;
    wire i_mul109_glfwchoosefbconfig51_im8_cma_ena1;
    wire i_mul109_glfwchoosefbconfig51_im8_cma_ena2;
    wire i_mul120_glfwchoosefbconfig54_im0_cma_reset;
    wire [13:0] i_mul120_glfwchoosefbconfig54_im0_cma_a0;
    wire [13:0] i_mul120_glfwchoosefbconfig54_im0_cma_c0;
    wire [27:0] i_mul120_glfwchoosefbconfig54_im0_cma_s0;
    wire [27:0] i_mul120_glfwchoosefbconfig54_im0_cma_qq;
    wire [27:0] i_mul120_glfwchoosefbconfig54_im0_cma_q;
    wire i_mul120_glfwchoosefbconfig54_im0_cma_ena0;
    wire i_mul120_glfwchoosefbconfig54_im0_cma_ena1;
    wire i_mul120_glfwchoosefbconfig54_im0_cma_ena2;
    wire i_mul120_glfwchoosefbconfig54_im8_cma_reset;
    wire [17:0] i_mul120_glfwchoosefbconfig54_im8_cma_a0;
    wire [17:0] i_mul120_glfwchoosefbconfig54_im8_cma_c0;
    wire [35:0] i_mul120_glfwchoosefbconfig54_im8_cma_s0;
    wire [35:0] i_mul120_glfwchoosefbconfig54_im8_cma_qq;
    wire [35:0] i_mul120_glfwchoosefbconfig54_im8_cma_q;
    wire i_mul120_glfwchoosefbconfig54_im8_cma_ena0;
    wire i_mul120_glfwchoosefbconfig54_im8_cma_ena1;
    wire i_mul120_glfwchoosefbconfig54_im8_cma_ena2;
    wire i_mul131_glfwchoosefbconfig57_im0_cma_reset;
    wire [13:0] i_mul131_glfwchoosefbconfig57_im0_cma_a0;
    wire [13:0] i_mul131_glfwchoosefbconfig57_im0_cma_c0;
    wire [27:0] i_mul131_glfwchoosefbconfig57_im0_cma_s0;
    wire [27:0] i_mul131_glfwchoosefbconfig57_im0_cma_qq;
    wire [27:0] i_mul131_glfwchoosefbconfig57_im0_cma_q;
    wire i_mul131_glfwchoosefbconfig57_im0_cma_ena0;
    wire i_mul131_glfwchoosefbconfig57_im0_cma_ena1;
    wire i_mul131_glfwchoosefbconfig57_im0_cma_ena2;
    wire i_mul131_glfwchoosefbconfig57_im8_cma_reset;
    wire [17:0] i_mul131_glfwchoosefbconfig57_im8_cma_a0;
    wire [17:0] i_mul131_glfwchoosefbconfig57_im8_cma_c0;
    wire [35:0] i_mul131_glfwchoosefbconfig57_im8_cma_s0;
    wire [35:0] i_mul131_glfwchoosefbconfig57_im8_cma_qq;
    wire [35:0] i_mul131_glfwchoosefbconfig57_im8_cma_q;
    wire i_mul131_glfwchoosefbconfig57_im8_cma_ena0;
    wire i_mul131_glfwchoosefbconfig57_im8_cma_ena1;
    wire i_mul131_glfwchoosefbconfig57_im8_cma_ena2;
    wire i_mul142_glfwchoosefbconfig60_im0_cma_reset;
    wire [13:0] i_mul142_glfwchoosefbconfig60_im0_cma_a0;
    wire [13:0] i_mul142_glfwchoosefbconfig60_im0_cma_c0;
    wire [27:0] i_mul142_glfwchoosefbconfig60_im0_cma_s0;
    wire [27:0] i_mul142_glfwchoosefbconfig60_im0_cma_qq;
    wire [27:0] i_mul142_glfwchoosefbconfig60_im0_cma_q;
    wire i_mul142_glfwchoosefbconfig60_im0_cma_ena0;
    wire i_mul142_glfwchoosefbconfig60_im0_cma_ena1;
    wire i_mul142_glfwchoosefbconfig60_im0_cma_ena2;
    wire i_mul142_glfwchoosefbconfig60_im8_cma_reset;
    wire [17:0] i_mul142_glfwchoosefbconfig60_im8_cma_a0;
    wire [17:0] i_mul142_glfwchoosefbconfig60_im8_cma_c0;
    wire [35:0] i_mul142_glfwchoosefbconfig60_im8_cma_s0;
    wire [35:0] i_mul142_glfwchoosefbconfig60_im8_cma_qq;
    wire [35:0] i_mul142_glfwchoosefbconfig60_im8_cma_q;
    wire i_mul142_glfwchoosefbconfig60_im8_cma_ena0;
    wire i_mul142_glfwchoosefbconfig60_im8_cma_ena1;
    wire i_mul142_glfwchoosefbconfig60_im8_cma_ena2;
    wire i_mul153_glfwchoosefbconfig63_im0_cma_reset;
    wire [13:0] i_mul153_glfwchoosefbconfig63_im0_cma_a0;
    wire [13:0] i_mul153_glfwchoosefbconfig63_im0_cma_c0;
    wire [27:0] i_mul153_glfwchoosefbconfig63_im0_cma_s0;
    wire [27:0] i_mul153_glfwchoosefbconfig63_im0_cma_qq;
    wire [27:0] i_mul153_glfwchoosefbconfig63_im0_cma_q;
    wire i_mul153_glfwchoosefbconfig63_im0_cma_ena0;
    wire i_mul153_glfwchoosefbconfig63_im0_cma_ena1;
    wire i_mul153_glfwchoosefbconfig63_im0_cma_ena2;
    wire i_mul153_glfwchoosefbconfig63_im8_cma_reset;
    wire [17:0] i_mul153_glfwchoosefbconfig63_im8_cma_a0;
    wire [17:0] i_mul153_glfwchoosefbconfig63_im8_cma_c0;
    wire [35:0] i_mul153_glfwchoosefbconfig63_im8_cma_s0;
    wire [35:0] i_mul153_glfwchoosefbconfig63_im8_cma_qq;
    wire [35:0] i_mul153_glfwchoosefbconfig63_im8_cma_q;
    wire i_mul153_glfwchoosefbconfig63_im8_cma_ena0;
    wire i_mul153_glfwchoosefbconfig63_im8_cma_ena1;
    wire i_mul153_glfwchoosefbconfig63_im8_cma_ena2;
    wire i_mul165_glfwchoosefbconfig66_im0_cma_reset;
    wire [13:0] i_mul165_glfwchoosefbconfig66_im0_cma_a0;
    wire [13:0] i_mul165_glfwchoosefbconfig66_im0_cma_c0;
    wire [27:0] i_mul165_glfwchoosefbconfig66_im0_cma_s0;
    wire [27:0] i_mul165_glfwchoosefbconfig66_im0_cma_qq;
    wire [27:0] i_mul165_glfwchoosefbconfig66_im0_cma_q;
    wire i_mul165_glfwchoosefbconfig66_im0_cma_ena0;
    wire i_mul165_glfwchoosefbconfig66_im0_cma_ena1;
    wire i_mul165_glfwchoosefbconfig66_im0_cma_ena2;
    wire i_mul165_glfwchoosefbconfig66_im8_cma_reset;
    wire [17:0] i_mul165_glfwchoosefbconfig66_im8_cma_a0;
    wire [17:0] i_mul165_glfwchoosefbconfig66_im8_cma_c0;
    wire [35:0] i_mul165_glfwchoosefbconfig66_im8_cma_s0;
    wire [35:0] i_mul165_glfwchoosefbconfig66_im8_cma_qq;
    wire [35:0] i_mul165_glfwchoosefbconfig66_im8_cma_q;
    wire i_mul165_glfwchoosefbconfig66_im8_cma_ena0;
    wire i_mul165_glfwchoosefbconfig66_im8_cma_ena1;
    wire i_mul165_glfwchoosefbconfig66_im8_cma_ena2;
    wire i_mul62_glfwchoosefbconfig37_im0_cma_reset;
    wire [13:0] i_mul62_glfwchoosefbconfig37_im0_cma_a0;
    wire [13:0] i_mul62_glfwchoosefbconfig37_im0_cma_c0;
    wire [27:0] i_mul62_glfwchoosefbconfig37_im0_cma_s0;
    wire [27:0] i_mul62_glfwchoosefbconfig37_im0_cma_qq;
    wire [27:0] i_mul62_glfwchoosefbconfig37_im0_cma_q;
    wire i_mul62_glfwchoosefbconfig37_im0_cma_ena0;
    wire i_mul62_glfwchoosefbconfig37_im0_cma_ena1;
    wire i_mul62_glfwchoosefbconfig37_im0_cma_ena2;
    wire i_mul62_glfwchoosefbconfig37_im8_cma_reset;
    wire [17:0] i_mul62_glfwchoosefbconfig37_im8_cma_a0;
    wire [17:0] i_mul62_glfwchoosefbconfig37_im8_cma_c0;
    wire [35:0] i_mul62_glfwchoosefbconfig37_im8_cma_s0;
    wire [35:0] i_mul62_glfwchoosefbconfig37_im8_cma_qq;
    wire [35:0] i_mul62_glfwchoosefbconfig37_im8_cma_q;
    wire i_mul62_glfwchoosefbconfig37_im8_cma_ena0;
    wire i_mul62_glfwchoosefbconfig37_im8_cma_ena1;
    wire i_mul62_glfwchoosefbconfig37_im8_cma_ena2;
    wire i_mul73_glfwchoosefbconfig41_im0_cma_reset;
    wire [13:0] i_mul73_glfwchoosefbconfig41_im0_cma_a0;
    wire [13:0] i_mul73_glfwchoosefbconfig41_im0_cma_c0;
    wire [27:0] i_mul73_glfwchoosefbconfig41_im0_cma_s0;
    wire [27:0] i_mul73_glfwchoosefbconfig41_im0_cma_qq;
    wire [27:0] i_mul73_glfwchoosefbconfig41_im0_cma_q;
    wire i_mul73_glfwchoosefbconfig41_im0_cma_ena0;
    wire i_mul73_glfwchoosefbconfig41_im0_cma_ena1;
    wire i_mul73_glfwchoosefbconfig41_im0_cma_ena2;
    wire i_mul73_glfwchoosefbconfig41_im8_cma_reset;
    wire [17:0] i_mul73_glfwchoosefbconfig41_im8_cma_a0;
    wire [17:0] i_mul73_glfwchoosefbconfig41_im8_cma_c0;
    wire [35:0] i_mul73_glfwchoosefbconfig41_im8_cma_s0;
    wire [35:0] i_mul73_glfwchoosefbconfig41_im8_cma_qq;
    wire [35:0] i_mul73_glfwchoosefbconfig41_im8_cma_q;
    wire i_mul73_glfwchoosefbconfig41_im8_cma_ena0;
    wire i_mul73_glfwchoosefbconfig41_im8_cma_ena1;
    wire i_mul73_glfwchoosefbconfig41_im8_cma_ena2;
    wire i_mul85_glfwchoosefbconfig45_im0_cma_reset;
    wire [13:0] i_mul85_glfwchoosefbconfig45_im0_cma_a0;
    wire [13:0] i_mul85_glfwchoosefbconfig45_im0_cma_c0;
    wire [27:0] i_mul85_glfwchoosefbconfig45_im0_cma_s0;
    wire [27:0] i_mul85_glfwchoosefbconfig45_im0_cma_qq;
    wire [27:0] i_mul85_glfwchoosefbconfig45_im0_cma_q;
    wire i_mul85_glfwchoosefbconfig45_im0_cma_ena0;
    wire i_mul85_glfwchoosefbconfig45_im0_cma_ena1;
    wire i_mul85_glfwchoosefbconfig45_im0_cma_ena2;
    wire i_mul85_glfwchoosefbconfig45_im8_cma_reset;
    wire [17:0] i_mul85_glfwchoosefbconfig45_im8_cma_a0;
    wire [17:0] i_mul85_glfwchoosefbconfig45_im8_cma_c0;
    wire [35:0] i_mul85_glfwchoosefbconfig45_im8_cma_s0;
    wire [35:0] i_mul85_glfwchoosefbconfig45_im8_cma_qq;
    wire [35:0] i_mul85_glfwchoosefbconfig45_im8_cma_q;
    wire i_mul85_glfwchoosefbconfig45_im8_cma_ena0;
    wire i_mul85_glfwchoosefbconfig45_im8_cma_ena1;
    wire i_mul85_glfwchoosefbconfig45_im8_cma_ena2;
    wire i_mul97_glfwchoosefbconfig48_im0_cma_reset;
    wire [13:0] i_mul97_glfwchoosefbconfig48_im0_cma_a0;
    wire [13:0] i_mul97_glfwchoosefbconfig48_im0_cma_c0;
    wire [27:0] i_mul97_glfwchoosefbconfig48_im0_cma_s0;
    wire [27:0] i_mul97_glfwchoosefbconfig48_im0_cma_qq;
    wire [27:0] i_mul97_glfwchoosefbconfig48_im0_cma_q;
    wire i_mul97_glfwchoosefbconfig48_im0_cma_ena0;
    wire i_mul97_glfwchoosefbconfig48_im0_cma_ena1;
    wire i_mul97_glfwchoosefbconfig48_im0_cma_ena2;
    wire i_mul97_glfwchoosefbconfig48_im8_cma_reset;
    wire [17:0] i_mul97_glfwchoosefbconfig48_im8_cma_a0;
    wire [17:0] i_mul97_glfwchoosefbconfig48_im8_cma_c0;
    wire [35:0] i_mul97_glfwchoosefbconfig48_im8_cma_s0;
    wire [35:0] i_mul97_glfwchoosefbconfig48_im8_cma_qq;
    wire [35:0] i_mul97_glfwchoosefbconfig48_im8_cma_q;
    wire i_mul97_glfwchoosefbconfig48_im8_cma_ena0;
    wire i_mul97_glfwchoosefbconfig48_im8_cma_ena1;
    wire i_mul97_glfwchoosefbconfig48_im8_cma_ena2;
    wire i_mul_glfwchoosefbconfig34_im0_cma_reset;
    wire [13:0] i_mul_glfwchoosefbconfig34_im0_cma_a0;
    wire [13:0] i_mul_glfwchoosefbconfig34_im0_cma_c0;
    wire [27:0] i_mul_glfwchoosefbconfig34_im0_cma_s0;
    wire [27:0] i_mul_glfwchoosefbconfig34_im0_cma_qq;
    wire [27:0] i_mul_glfwchoosefbconfig34_im0_cma_q;
    wire i_mul_glfwchoosefbconfig34_im0_cma_ena0;
    wire i_mul_glfwchoosefbconfig34_im0_cma_ena1;
    wire i_mul_glfwchoosefbconfig34_im0_cma_ena2;
    wire i_mul_glfwchoosefbconfig34_im8_cma_reset;
    wire [17:0] i_mul_glfwchoosefbconfig34_im8_cma_a0;
    wire [17:0] i_mul_glfwchoosefbconfig34_im8_cma_c0;
    wire [35:0] i_mul_glfwchoosefbconfig34_im8_cma_s0;
    wire [35:0] i_mul_glfwchoosefbconfig34_im8_cma_qq;
    wire [35:0] i_mul_glfwchoosefbconfig34_im8_cma_q;
    wire i_mul_glfwchoosefbconfig34_im8_cma_ena0;
    wire i_mul_glfwchoosefbconfig34_im8_cma_ena1;
    wire i_mul_glfwchoosefbconfig34_im8_cma_ena2;
    wire i_mul109_glfwchoosefbconfig51_ma3_cma_reset;
    wire [13:0] i_mul109_glfwchoosefbconfig51_ma3_cma_a0;
    wire [17:0] i_mul109_glfwchoosefbconfig51_ma3_cma_c0;
    wire [13:0] i_mul109_glfwchoosefbconfig51_ma3_cma_a1;
    wire [17:0] i_mul109_glfwchoosefbconfig51_ma3_cma_c1;
    wire [32:0] i_mul109_glfwchoosefbconfig51_ma3_cma_s0;
    wire [32:0] i_mul109_glfwchoosefbconfig51_ma3_cma_qq;
    wire [32:0] i_mul109_glfwchoosefbconfig51_ma3_cma_q;
    wire i_mul109_glfwchoosefbconfig51_ma3_cma_ena0;
    wire i_mul109_glfwchoosefbconfig51_ma3_cma_ena1;
    wire i_mul109_glfwchoosefbconfig51_ma3_cma_ena2;
    wire i_mul120_glfwchoosefbconfig54_ma3_cma_reset;
    wire [13:0] i_mul120_glfwchoosefbconfig54_ma3_cma_a0;
    wire [17:0] i_mul120_glfwchoosefbconfig54_ma3_cma_c0;
    wire [13:0] i_mul120_glfwchoosefbconfig54_ma3_cma_a1;
    wire [17:0] i_mul120_glfwchoosefbconfig54_ma3_cma_c1;
    wire [32:0] i_mul120_glfwchoosefbconfig54_ma3_cma_s0;
    wire [32:0] i_mul120_glfwchoosefbconfig54_ma3_cma_qq;
    wire [32:0] i_mul120_glfwchoosefbconfig54_ma3_cma_q;
    wire i_mul120_glfwchoosefbconfig54_ma3_cma_ena0;
    wire i_mul120_glfwchoosefbconfig54_ma3_cma_ena1;
    wire i_mul120_glfwchoosefbconfig54_ma3_cma_ena2;
    wire i_mul131_glfwchoosefbconfig57_ma3_cma_reset;
    wire [13:0] i_mul131_glfwchoosefbconfig57_ma3_cma_a0;
    wire [17:0] i_mul131_glfwchoosefbconfig57_ma3_cma_c0;
    wire [13:0] i_mul131_glfwchoosefbconfig57_ma3_cma_a1;
    wire [17:0] i_mul131_glfwchoosefbconfig57_ma3_cma_c1;
    wire [32:0] i_mul131_glfwchoosefbconfig57_ma3_cma_s0;
    wire [32:0] i_mul131_glfwchoosefbconfig57_ma3_cma_qq;
    wire [32:0] i_mul131_glfwchoosefbconfig57_ma3_cma_q;
    wire i_mul131_glfwchoosefbconfig57_ma3_cma_ena0;
    wire i_mul131_glfwchoosefbconfig57_ma3_cma_ena1;
    wire i_mul131_glfwchoosefbconfig57_ma3_cma_ena2;
    wire i_mul142_glfwchoosefbconfig60_ma3_cma_reset;
    wire [13:0] i_mul142_glfwchoosefbconfig60_ma3_cma_a0;
    wire [17:0] i_mul142_glfwchoosefbconfig60_ma3_cma_c0;
    wire [13:0] i_mul142_glfwchoosefbconfig60_ma3_cma_a1;
    wire [17:0] i_mul142_glfwchoosefbconfig60_ma3_cma_c1;
    wire [32:0] i_mul142_glfwchoosefbconfig60_ma3_cma_s0;
    wire [32:0] i_mul142_glfwchoosefbconfig60_ma3_cma_qq;
    wire [32:0] i_mul142_glfwchoosefbconfig60_ma3_cma_q;
    wire i_mul142_glfwchoosefbconfig60_ma3_cma_ena0;
    wire i_mul142_glfwchoosefbconfig60_ma3_cma_ena1;
    wire i_mul142_glfwchoosefbconfig60_ma3_cma_ena2;
    wire i_mul153_glfwchoosefbconfig63_ma3_cma_reset;
    wire [13:0] i_mul153_glfwchoosefbconfig63_ma3_cma_a0;
    wire [17:0] i_mul153_glfwchoosefbconfig63_ma3_cma_c0;
    wire [13:0] i_mul153_glfwchoosefbconfig63_ma3_cma_a1;
    wire [17:0] i_mul153_glfwchoosefbconfig63_ma3_cma_c1;
    wire [32:0] i_mul153_glfwchoosefbconfig63_ma3_cma_s0;
    wire [32:0] i_mul153_glfwchoosefbconfig63_ma3_cma_qq;
    wire [32:0] i_mul153_glfwchoosefbconfig63_ma3_cma_q;
    wire i_mul153_glfwchoosefbconfig63_ma3_cma_ena0;
    wire i_mul153_glfwchoosefbconfig63_ma3_cma_ena1;
    wire i_mul153_glfwchoosefbconfig63_ma3_cma_ena2;
    wire i_mul165_glfwchoosefbconfig66_ma3_cma_reset;
    wire [13:0] i_mul165_glfwchoosefbconfig66_ma3_cma_a0;
    wire [17:0] i_mul165_glfwchoosefbconfig66_ma3_cma_c0;
    wire [13:0] i_mul165_glfwchoosefbconfig66_ma3_cma_a1;
    wire [17:0] i_mul165_glfwchoosefbconfig66_ma3_cma_c1;
    wire [32:0] i_mul165_glfwchoosefbconfig66_ma3_cma_s0;
    wire [32:0] i_mul165_glfwchoosefbconfig66_ma3_cma_qq;
    wire [32:0] i_mul165_glfwchoosefbconfig66_ma3_cma_q;
    wire i_mul165_glfwchoosefbconfig66_ma3_cma_ena0;
    wire i_mul165_glfwchoosefbconfig66_ma3_cma_ena1;
    wire i_mul165_glfwchoosefbconfig66_ma3_cma_ena2;
    wire i_mul62_glfwchoosefbconfig37_ma3_cma_reset;
    wire [13:0] i_mul62_glfwchoosefbconfig37_ma3_cma_a0;
    wire [17:0] i_mul62_glfwchoosefbconfig37_ma3_cma_c0;
    wire [13:0] i_mul62_glfwchoosefbconfig37_ma3_cma_a1;
    wire [17:0] i_mul62_glfwchoosefbconfig37_ma3_cma_c1;
    wire [32:0] i_mul62_glfwchoosefbconfig37_ma3_cma_s0;
    wire [32:0] i_mul62_glfwchoosefbconfig37_ma3_cma_qq;
    wire [32:0] i_mul62_glfwchoosefbconfig37_ma3_cma_q;
    wire i_mul62_glfwchoosefbconfig37_ma3_cma_ena0;
    wire i_mul62_glfwchoosefbconfig37_ma3_cma_ena1;
    wire i_mul62_glfwchoosefbconfig37_ma3_cma_ena2;
    wire i_mul73_glfwchoosefbconfig41_ma3_cma_reset;
    wire [13:0] i_mul73_glfwchoosefbconfig41_ma3_cma_a0;
    wire [17:0] i_mul73_glfwchoosefbconfig41_ma3_cma_c0;
    wire [13:0] i_mul73_glfwchoosefbconfig41_ma3_cma_a1;
    wire [17:0] i_mul73_glfwchoosefbconfig41_ma3_cma_c1;
    wire [32:0] i_mul73_glfwchoosefbconfig41_ma3_cma_s0;
    wire [32:0] i_mul73_glfwchoosefbconfig41_ma3_cma_qq;
    wire [32:0] i_mul73_glfwchoosefbconfig41_ma3_cma_q;
    wire i_mul73_glfwchoosefbconfig41_ma3_cma_ena0;
    wire i_mul73_glfwchoosefbconfig41_ma3_cma_ena1;
    wire i_mul73_glfwchoosefbconfig41_ma3_cma_ena2;
    wire i_mul85_glfwchoosefbconfig45_ma3_cma_reset;
    wire [13:0] i_mul85_glfwchoosefbconfig45_ma3_cma_a0;
    wire [17:0] i_mul85_glfwchoosefbconfig45_ma3_cma_c0;
    wire [13:0] i_mul85_glfwchoosefbconfig45_ma3_cma_a1;
    wire [17:0] i_mul85_glfwchoosefbconfig45_ma3_cma_c1;
    wire [32:0] i_mul85_glfwchoosefbconfig45_ma3_cma_s0;
    wire [32:0] i_mul85_glfwchoosefbconfig45_ma3_cma_qq;
    wire [32:0] i_mul85_glfwchoosefbconfig45_ma3_cma_q;
    wire i_mul85_glfwchoosefbconfig45_ma3_cma_ena0;
    wire i_mul85_glfwchoosefbconfig45_ma3_cma_ena1;
    wire i_mul85_glfwchoosefbconfig45_ma3_cma_ena2;
    wire i_mul97_glfwchoosefbconfig48_ma3_cma_reset;
    wire [13:0] i_mul97_glfwchoosefbconfig48_ma3_cma_a0;
    wire [17:0] i_mul97_glfwchoosefbconfig48_ma3_cma_c0;
    wire [13:0] i_mul97_glfwchoosefbconfig48_ma3_cma_a1;
    wire [17:0] i_mul97_glfwchoosefbconfig48_ma3_cma_c1;
    wire [32:0] i_mul97_glfwchoosefbconfig48_ma3_cma_s0;
    wire [32:0] i_mul97_glfwchoosefbconfig48_ma3_cma_qq;
    wire [32:0] i_mul97_glfwchoosefbconfig48_ma3_cma_q;
    wire i_mul97_glfwchoosefbconfig48_ma3_cma_ena0;
    wire i_mul97_glfwchoosefbconfig48_ma3_cma_ena1;
    wire i_mul97_glfwchoosefbconfig48_ma3_cma_ena2;
    wire i_mul_glfwchoosefbconfig34_ma3_cma_reset;
    wire [13:0] i_mul_glfwchoosefbconfig34_ma3_cma_a0;
    wire [17:0] i_mul_glfwchoosefbconfig34_ma3_cma_c0;
    wire [13:0] i_mul_glfwchoosefbconfig34_ma3_cma_a1;
    wire [17:0] i_mul_glfwchoosefbconfig34_ma3_cma_c1;
    wire [32:0] i_mul_glfwchoosefbconfig34_ma3_cma_s0;
    wire [32:0] i_mul_glfwchoosefbconfig34_ma3_cma_qq;
    wire [32:0] i_mul_glfwchoosefbconfig34_ma3_cma_q;
    wire i_mul_glfwchoosefbconfig34_ma3_cma_ena0;
    wire i_mul_glfwchoosefbconfig34_ma3_cma_ena1;
    wire i_mul_glfwchoosefbconfig34_ma3_cma_ena2;
    wire [13:0] i_mul109_glfwchoosefbconfig51_bs1_merged_bit_select_b;
    wire [17:0] i_mul109_glfwchoosefbconfig51_bs1_merged_bit_select_c;
    wire [13:0] i_mul120_glfwchoosefbconfig54_bs1_merged_bit_select_b;
    wire [17:0] i_mul120_glfwchoosefbconfig54_bs1_merged_bit_select_c;
    wire [13:0] i_mul131_glfwchoosefbconfig57_bs1_merged_bit_select_b;
    wire [17:0] i_mul131_glfwchoosefbconfig57_bs1_merged_bit_select_c;
    wire [13:0] i_mul142_glfwchoosefbconfig60_bs1_merged_bit_select_b;
    wire [17:0] i_mul142_glfwchoosefbconfig60_bs1_merged_bit_select_c;
    wire [13:0] i_mul153_glfwchoosefbconfig63_bs1_merged_bit_select_b;
    wire [17:0] i_mul153_glfwchoosefbconfig63_bs1_merged_bit_select_c;
    wire [13:0] i_mul165_glfwchoosefbconfig66_bs1_merged_bit_select_b;
    wire [17:0] i_mul165_glfwchoosefbconfig66_bs1_merged_bit_select_c;
    wire [13:0] i_mul_glfwchoosefbconfig34_bs1_merged_bit_select_b;
    wire [17:0] i_mul_glfwchoosefbconfig34_bs1_merged_bit_select_c;
    wire [13:0] i_mul62_glfwchoosefbconfig37_bs1_merged_bit_select_b;
    wire [17:0] i_mul62_glfwchoosefbconfig37_bs1_merged_bit_select_c;
    wire [13:0] i_mul73_glfwchoosefbconfig41_bs1_merged_bit_select_b;
    wire [17:0] i_mul73_glfwchoosefbconfig41_bs1_merged_bit_select_c;
    wire [13:0] i_mul85_glfwchoosefbconfig45_bs1_merged_bit_select_b;
    wire [17:0] i_mul85_glfwchoosefbconfig45_bs1_merged_bit_select_c;
    wire [13:0] i_mul97_glfwchoosefbconfig48_bs1_merged_bit_select_b;
    wire [17:0] i_mul97_glfwchoosefbconfig48_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together140_aunroll_x_in_c1_eni48_1_tpl_6_q;
    reg [0:0] redist1_sync_together140_aunroll_x_in_c1_eni48_15_tpl_3_q;
    reg [0:0] redist1_sync_together140_aunroll_x_in_c1_eni48_15_tpl_3_delay_0;
    reg [0:0] redist1_sync_together140_aunroll_x_in_c1_eni48_15_tpl_3_delay_1;
    reg [0:0] redist2_sync_together140_aunroll_x_in_c1_eni48_18_tpl_3_q;
    reg [0:0] redist2_sync_together140_aunroll_x_in_c1_eni48_18_tpl_3_delay_0;
    reg [0:0] redist2_sync_together140_aunroll_x_in_c1_eni48_18_tpl_3_delay_1;
    reg [0:0] redist3_sync_together140_aunroll_x_in_c1_eni48_21_tpl_3_q;
    reg [0:0] redist3_sync_together140_aunroll_x_in_c1_eni48_21_tpl_3_delay_0;
    reg [0:0] redist3_sync_together140_aunroll_x_in_c1_eni48_21_tpl_3_delay_1;
    reg [0:0] redist4_sync_together140_aunroll_x_in_c1_eni48_23_tpl_3_q;
    reg [0:0] redist4_sync_together140_aunroll_x_in_c1_eni48_23_tpl_3_delay_0;
    reg [0:0] redist4_sync_together140_aunroll_x_in_c1_eni48_23_tpl_3_delay_1;
    reg [0:0] redist5_sync_together140_aunroll_x_in_c1_eni48_25_tpl_3_q;
    reg [0:0] redist5_sync_together140_aunroll_x_in_c1_eni48_25_tpl_3_delay_0;
    reg [0:0] redist5_sync_together140_aunroll_x_in_c1_eni48_25_tpl_3_delay_1;
    reg [0:0] redist6_sync_together140_aunroll_x_in_c1_eni48_27_tpl_3_q;
    reg [0:0] redist6_sync_together140_aunroll_x_in_c1_eni48_27_tpl_3_delay_0;
    reg [0:0] redist6_sync_together140_aunroll_x_in_c1_eni48_27_tpl_3_delay_1;
    reg [0:0] redist7_sync_together140_aunroll_x_in_c1_eni48_30_tpl_3_q;
    reg [0:0] redist7_sync_together140_aunroll_x_in_c1_eni48_30_tpl_3_delay_0;
    reg [0:0] redist7_sync_together140_aunroll_x_in_c1_eni48_30_tpl_3_delay_1;
    reg [0:0] redist8_sync_together140_aunroll_x_in_c1_eni48_33_tpl_3_q;
    reg [0:0] redist8_sync_together140_aunroll_x_in_c1_eni48_33_tpl_3_delay_0;
    reg [0:0] redist8_sync_together140_aunroll_x_in_c1_eni48_33_tpl_3_delay_1;
    reg [0:0] redist9_sync_together140_aunroll_x_in_c1_eni48_36_tpl_3_q;
    reg [0:0] redist9_sync_together140_aunroll_x_in_c1_eni48_36_tpl_3_delay_0;
    reg [0:0] redist9_sync_together140_aunroll_x_in_c1_eni48_36_tpl_3_delay_1;
    reg [0:0] redist10_sync_together140_aunroll_x_in_c1_eni48_39_tpl_3_q;
    reg [0:0] redist10_sync_together140_aunroll_x_in_c1_eni48_39_tpl_3_delay_0;
    reg [0:0] redist10_sync_together140_aunroll_x_in_c1_eni48_39_tpl_3_delay_1;
    reg [0:0] redist11_sync_together140_aunroll_x_in_c1_eni48_41_tpl_3_q;
    reg [0:0] redist11_sync_together140_aunroll_x_in_c1_eni48_41_tpl_3_delay_0;
    reg [0:0] redist11_sync_together140_aunroll_x_in_c1_eni48_41_tpl_3_delay_1;
    reg [0:0] redist13_sync_together140_aunroll_x_in_c1_eni48_47_tpl_6_q;
    reg [0:0] redist14_sync_together140_aunroll_x_in_c1_eni48_48_tpl_6_q;
    reg [0:0] redist15_sync_together140_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist15_sync_together140_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist15_sync_together140_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist15_sync_together140_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist15_sync_together140_aunroll_x_in_i_valid_5_delay_3;
    reg [31:0] redist17_bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_sel_x_b_1_q;
    reg [31:0] redist18_bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_sel_x_b_1_q;
    reg [31:0] redist19_bgTrunc_i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_sel_x_b_1_q;
    reg [31:0] redist20_bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b_2_q;
    reg [31:0] redist20_bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b_2_delay_0;
    reg [0:0] redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_q;
    reg [0:0] redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_0;
    reg [0:0] redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_1;
    reg [0:0] redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_2;
    reg [0:0] redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_3;
    reg [0:0] redist22_i_narrow161_glfwchoosefbconfig70_q_5_q;
    reg [0:0] redist22_i_narrow161_glfwchoosefbconfig70_q_5_delay_0;
    reg [0:0] redist22_i_narrow161_glfwchoosefbconfig70_q_5_delay_1;
    reg [0:0] redist22_i_narrow161_glfwchoosefbconfig70_q_5_delay_2;
    reg [30:0] redist23_i_add98_glfwchoosefbconfig49_vt_select_30_b_1_q;
    reg [30:0] redist24_i_add74_glfwchoosefbconfig42_vt_select_30_b_1_q;
    reg [30:0] redist25_i_add63_glfwchoosefbconfig38_vt_select_30_b_1_q;
    reg [30:0] redist26_i_add166_glfwchoosefbconfig67_vt_select_30_b_1_q;
    reg [30:0] redist27_i_add154_glfwchoosefbconfig64_vt_select_30_b_1_q;
    reg [30:0] redist28_i_add143_glfwchoosefbconfig61_vt_select_30_b_1_q;
    reg [30:0] redist29_i_add132_glfwchoosefbconfig58_vt_select_30_b_1_q;
    reg [30:0] redist30_i_add121_glfwchoosefbconfig55_vt_select_30_b_1_q;
    reg [30:0] redist31_i_add110_glfwchoosefbconfig52_vt_select_30_b_1_q;
    reg [30:0] redist32_i_acl_8_glfwchoosefbconfig46_vt_select_30_b_1_q;
    reg [30:0] redist33_i_acl_5_glfwchoosefbconfig35_vt_select_30_b_1_q;
    reg [0:0] redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_q;
    reg [0:0] redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_0;
    reg [0:0] redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_1;
    reg [0:0] redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_2;
    reg [0:0] redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_3;
    reg [63:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_outputreg0_q;
    wire redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_reset0;
    wire [63:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_ia;
    wire [1:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_aa;
    wire [1:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_ab;
    wire [63:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_iq;
    wire [63:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_q;
    wire [1:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_rdcnt_i;
    reg [1:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_wraddr_q;
    wire [2:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_last_q;
    wire [2:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_cmp_b;
    wire [0:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_cmpReg_q;
    wire [0:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_notEnable_q;
    wire [0:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_sticky_ena_q;
    wire [0:0] redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_enaAnd_q;
    reg [31:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_inputreg0_q;
    reg [31:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_outputreg0_q;
    wire redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_reset0;
    wire [31:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_ia;
    wire [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_aa;
    wire [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_ab;
    wire [31:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_iq;
    wire [31:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_q;
    wire [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_rdcnt_q;
    (* preserve *) reg [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_rdcnt_i;
    reg [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_wraddr_q;
    (* dont_merge *) reg [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_cmpReg_q;
    wire [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_notEnable_q;
    wire [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_nor_q;
    (* dont_merge *) reg [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_sticky_ena_q;
    wire [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist15_sync_together140_aunroll_x_in_i_valid_5(DELAY,560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together140_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist15_sync_together140_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist15_sync_together140_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist15_sync_together140_aunroll_x_in_i_valid_5_delay_3 <= '0;
            redist15_sync_together140_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist15_sync_together140_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
            redist15_sync_together140_aunroll_x_in_i_valid_5_delay_1 <= redist15_sync_together140_aunroll_x_in_i_valid_5_delay_0;
            redist15_sync_together140_aunroll_x_in_i_valid_5_delay_2 <= redist15_sync_together140_aunroll_x_in_i_valid_5_delay_1;
            redist15_sync_together140_aunroll_x_in_i_valid_5_delay_3 <= redist15_sync_together140_aunroll_x_in_i_valid_5_delay_2;
            redist15_sync_together140_aunroll_x_in_i_valid_5_q <= redist15_sync_together140_aunroll_x_in_i_valid_5_delay_3;
        end
    end

    // valid_fanout_reg12(REG,299)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_notEnable(LOGICAL,587)
    assign redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_nor(LOGICAL,588)
    assign redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_nor_q = ~ (redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_notEnable_q | redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_sticky_ena_q);

    // redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_last(CONSTANT,584)
    assign redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_last_q = $unsigned(3'b010);

    // redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_cmp(LOGICAL,585)
    assign redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_cmp_b = {1'b0, redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_rdcnt_q};
    assign redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_cmp_q = $unsigned(redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_last_q == redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_cmpReg(REG,586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_cmpReg_q <= $unsigned(redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_cmp_q);
        end
    end

    // redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_sticky_ena(REG,589)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_nor_q == 1'b1)
        begin
            redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_sticky_ena_q <= $unsigned(redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_cmpReg_q);
        end
    end

    // redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_enaAnd(LOGICAL,590)
    assign redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_enaAnd_q = redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_sticky_ena_q & VCC_q;

    // redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_rdcnt(COUNTER,582)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_rdcnt_i <= $unsigned(redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_rdcnt_q = redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_rdcnt_i[1:0];

    // redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_wraddr(REG,583)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_wraddr_q <= $unsigned(redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_rdcnt_q);
        end
    end

    // redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem(DUALMEM,581)
    assign redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_ia = $unsigned(in_c1_eni48_44_tpl);
    assign redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_aa = redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_wraddr_q;
    assign redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_ab = redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_rdcnt_q;
    assign redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(64),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_dmem (
        .clocken1(redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_aa),
        .data_a(redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_ab),
        .q_b(redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_q = redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_iq[63:0];

    // redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_outputreg0(DELAY,580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_outputreg0_q <= '0;
        end
        else
        begin
            redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_outputreg0_q <= $unsigned(redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_mem_q);
        end
    end

    // valid_fanout_reg5(REG,292)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig30_glfwchoosefbconfig8(BLACKBOX,120)@139
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000047Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig30_glfwchoosefbconfig8 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig30_glfwchoosefbconfig8_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,293)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg8(REG,295)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_cmp186_glfwchoosefbconfig99(LOGICAL,111)@139
    assign i_cmp186_glfwchoosefbconfig99_q = $unsigned(redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_outputreg0_q == i_acl_26_glfwchoosefbconfig98_q ? 1'b1 : 1'b0);

    // i_acl_28_demorgan_glfwchoosefbconfig101(LOGICAL,57)@133 + 1
    assign i_acl_28_demorgan_glfwchoosefbconfig101_qi = in_c1_eni48_45_tpl | in_c1_eni48_46_tpl;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_28_demorgan_glfwchoosefbconfig101_delay ( .xin(i_acl_28_demorgan_glfwchoosefbconfig101_qi), .xout(i_acl_28_demorgan_glfwchoosefbconfig101_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6(DELAY,579)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_0 <= '0;
            redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_1 <= '0;
            redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_2 <= '0;
            redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_3 <= '0;
            redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_q <= '0;
        end
        else
        begin
            redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_0 <= $unsigned(i_acl_28_demorgan_glfwchoosefbconfig101_q);
            redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_1 <= redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_0;
            redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_2 <= redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_1;
            redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_3 <= redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_2;
            redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_q <= redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_delay_3;
        end
    end

    // i_unnamed_glfwchoosefbconfig102(LOGICAL,224)@139
    assign i_unnamed_glfwchoosefbconfig102_q = redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_q & i_cmp186_glfwchoosefbconfig99_q;

    // i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103(LOGICAL,204)@133 + 1
    assign i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_qi = in_c1_eni48_45_tpl ^ VCC_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_delay ( .xin(i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_qi), .xout(i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6(DELAY,566)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_0 <= '0;
            redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_1 <= '0;
            redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_2 <= '0;
            redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_3 <= '0;
            redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_q <= '0;
        end
        else
        begin
            redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_0 <= $unsigned(i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q);
            redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_1 <= redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_0;
            redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_2 <= redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_1;
            redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_3 <= redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_2;
            redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_q <= redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_delay_3;
        end
    end

    // i_selcond_glfwchoosefbconfig_1_glfwchoosefbconfig104(LOGICAL,205)@139
    assign i_selcond_glfwchoosefbconfig_1_glfwchoosefbconfig104_q = redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_q & i_unnamed_glfwchoosefbconfig102_q;

    // i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig105(MUX,183)@139
    assign i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig105_s = i_selcond_glfwchoosefbconfig_1_glfwchoosefbconfig104_q;
    always @(i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig105_s or i_leastmissing_0133_replace_phi_glfwchoosefbconfig10_q or redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_outputreg0_q)
    begin
        unique case (i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig105_s)
            1'b0 : i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig105_q = i_leastmissing_0133_replace_phi_glfwchoosefbconfig10_q;
            1'b1 : i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig105_q = redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_outputreg0_q;
            default : i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig105_q = 32'b0;
        endcase
    end

    // redist13_sync_together140_aunroll_x_in_c1_eni48_47_tpl_6(DELAY,558)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_sync_together140_aunroll_x_in_c1_eni48_47_tpl_6 ( .xin(in_c1_eni48_47_tpl), .xout(redist13_sync_together140_aunroll_x_in_c1_eni48_47_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i32_leastmissing_0133_push10_glfwchoosefbconfig106(BLACKBOX,131)@139
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i32_A000003Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i32_leastmissing_0133_push10_glfwchoosefbconfig106 (
        .in_c1_ene47(redist13_sync_together140_aunroll_x_in_c1_eni48_47_tpl_6_q),
        .in_data_in(i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig105_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i32_leastmissing_0133_pop10_glfwchoosefbconfig9_out_feedback_stall_out_10),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i32_leastmissing_0133_push10_glfwchoosefbconfig106_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i32_leastmissing_0133_push10_glfwchoosefbconfig106_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0129(CONSTANT,49)
    assign c_i32_0129_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_leastmissing_0133_pop10_glfwchoosefbconfig9(BLACKBOX,127)@139
    // out out_feedback_stall_out_10@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_i32_lA000002Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_i32_leastmissing_0133_pop10_glfwchoosefbconfig9 (
        .in_data_in(c_i32_0129_q),
        .in_dir(redist0_sync_together140_aunroll_x_in_c1_eni48_1_tpl_6_q),
        .in_feedback_in_10(i_llvm_fpga_push_i32_leastmissing_0133_push10_glfwchoosefbconfig106_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i32_leastmissing_0133_push10_glfwchoosefbconfig106_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_leastmissing_0133_pop10_glfwchoosefbconfig9_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i32_leastmissing_0133_pop10_glfwchoosefbconfig9_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together140_aunroll_x_in_c1_eni48_1_tpl_6(DELAY,545)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together140_aunroll_x_in_c1_eni48_1_tpl_6 ( .xin(in_c1_eni48_1_tpl), .xout(redist0_sync_together140_aunroll_x_in_c1_eni48_1_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_leastmissing_0133_replace_phi_glfwchoosefbconfig10(MUX,117)@139
    assign i_leastmissing_0133_replace_phi_glfwchoosefbconfig10_s = redist0_sync_together140_aunroll_x_in_c1_eni48_1_tpl_6_q;
    always @(i_leastmissing_0133_replace_phi_glfwchoosefbconfig10_s or i_llvm_fpga_pop_i32_leastmissing_0133_pop10_glfwchoosefbconfig9_out_data_out or i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig30_glfwchoosefbconfig8_out_dest_data_out_1_0)
    begin
        unique case (i_leastmissing_0133_replace_phi_glfwchoosefbconfig10_s)
            1'b0 : i_leastmissing_0133_replace_phi_glfwchoosefbconfig10_q = i_llvm_fpga_pop_i32_leastmissing_0133_pop10_glfwchoosefbconfig9_out_data_out;
            1'b1 : i_leastmissing_0133_replace_phi_glfwchoosefbconfig10_q = i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig30_glfwchoosefbconfig8_out_dest_data_out_1_0;
            default : i_leastmissing_0133_replace_phi_glfwchoosefbconfig10_q = 32'b0;
        endcase
    end

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_notEnable(LOGICAL,597)
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_nor(LOGICAL,598)
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_nor_q = ~ (redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_notEnable_q | redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_sticky_ena_q);

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_cmpReg(REG,596)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_sticky_ena(REG,599)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_nor_q == 1'b1)
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_sticky_ena_q <= $unsigned(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_cmpReg_q);
        end
    end

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_enaAnd(LOGICAL,600)
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_enaAnd_q = redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_sticky_ena_q & VCC_q;

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_rdcnt(COUNTER,594)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_rdcnt_i <= $unsigned(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_rdcnt_q = redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_rdcnt_i[0:0];

    // i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_vt_const_31(CONSTANT,198)
    assign i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_vt_const_31_q = $unsigned(29'b00000000000000000000000000000);

    // i_cmp40_glfwchoosefbconfig25(LOGICAL,114)@133
    assign i_cmp40_glfwchoosefbconfig25_q = $unsigned(in_c1_eni48_11_tpl == c_i32_0129_q ? 1'b1 : 1'b0);

    // i_narrow160_glfwchoosefbconfig27(LOGICAL,179)@133
    assign i_narrow160_glfwchoosefbconfig27_q = i_cmp40_glfwchoosefbconfig25_q & in_c1_eni48_12_tpl;

    // i_cmp24_glfwchoosefbconfig17(LOGICAL,112)@133
    assign i_cmp24_glfwchoosefbconfig17_q = $unsigned(in_c1_eni48_6_tpl == c_i32_0129_q ? 1'b1 : 1'b0);

    // i_narrow159_glfwchoosefbconfig19(LOGICAL,178)@133
    assign i_narrow159_glfwchoosefbconfig19_q = i_cmp24_glfwchoosefbconfig17_q & in_c1_eni48_7_tpl;

    // i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig29(ADD,123)@133 + 1
    assign i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig29_a = {1'b0, i_narrow159_glfwchoosefbconfig19_q};
    assign i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig29_b = {1'b0, i_narrow160_glfwchoosefbconfig27_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig29_o <= 2'b0;
        end
        else
        begin
            i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig29_o <= $unsigned(i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig29_a) + $unsigned(i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig29_b);
        end
    end
    assign i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig29_q = i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig29_o[1:0];

    // i_cmp11_glfwchoosefbconfig11(LOGICAL,104)@133
    assign i_cmp11_glfwchoosefbconfig11_q = $unsigned(in_c1_eni48_2_tpl == c_i32_0129_q ? 1'b1 : 1'b0);

    // i_narrow_glfwchoosefbconfig13(LOGICAL,181)@133
    assign i_narrow_glfwchoosefbconfig13_q = i_cmp11_glfwchoosefbconfig11_q & in_c1_eni48_3_tpl;

    // i_cmp17_glfwchoosefbconfig14(LOGICAL,109)@133
    assign i_cmp17_glfwchoosefbconfig14_q = $unsigned(in_c1_eni48_4_tpl == c_i32_0129_q ? 1'b1 : 1'b0);

    // i_narrow158_glfwchoosefbconfig16(LOGICAL,177)@133
    assign i_narrow158_glfwchoosefbconfig16_q = i_cmp17_glfwchoosefbconfig14_q & in_c1_eni48_5_tpl;

    // i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig28(ADD,122)@133 + 1
    assign i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig28_a = {1'b0, i_narrow158_glfwchoosefbconfig16_q};
    assign i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig28_b = {1'b0, i_narrow_glfwchoosefbconfig13_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig28_o <= 2'b0;
        end
        else
        begin
            i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig28_o <= $unsigned(i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig28_a) + $unsigned(i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig28_b);
        end
    end
    assign i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig28_q = i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig28_o[1:0];

    // i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig30(ADD,124)@134
    assign i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig30_a = {1'b0, i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig28_q};
    assign i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig30_b = {1'b0, i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig29_q};
    assign i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig30_o = $unsigned(i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig30_a) + $unsigned(i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig30_b);
    assign i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig30_q = i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig30_o[2:0];

    // i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_sel_x(BITSELECT,283)@134
    assign i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_sel_x_b = {29'b00000000000000000000000000000, i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig30_q[2:0]};

    // i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_vt_select_2(BITSELECT,200)@134
    assign i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_vt_select_2_b = i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_sel_x_b[2:0];

    // i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_vt_join(BITJOIN,199)@134
    assign i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_vt_join_q = {i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_vt_const_31_q, i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_vt_select_2_b};

    // i_sub_glfwchoosefbconfig22(SUB,222)@133
    assign i_sub_glfwchoosefbconfig22_a = {1'b0, in_c1_eni48_8_tpl};
    assign i_sub_glfwchoosefbconfig22_b = {1'b0, in_c1_eni48_9_tpl};
    assign i_sub_glfwchoosefbconfig22_o = $unsigned(i_sub_glfwchoosefbconfig22_a) - $unsigned(i_sub_glfwchoosefbconfig22_b);
    assign i_sub_glfwchoosefbconfig22_q = i_sub_glfwchoosefbconfig22_o[32:0];

    // bgTrunc_i_sub_glfwchoosefbconfig22_sel_x(BITSELECT,277)@133
    assign bgTrunc_i_sub_glfwchoosefbconfig22_sel_x_b = $unsigned(i_sub_glfwchoosefbconfig22_q[31:0]);

    // i_cmp32_glfwchoosefbconfig20(COMPARE,113)@133
    assign i_cmp32_glfwchoosefbconfig20_a = $unsigned({{2{in_c1_eni48_9_tpl[31]}}, in_c1_eni48_9_tpl});
    assign i_cmp32_glfwchoosefbconfig20_b = $unsigned({{2{in_c1_eni48_8_tpl[31]}}, in_c1_eni48_8_tpl});
    assign i_cmp32_glfwchoosefbconfig20_o = $unsigned($signed(i_cmp32_glfwchoosefbconfig20_a) - $signed(i_cmp32_glfwchoosefbconfig20_b));
    assign i_cmp32_glfwchoosefbconfig20_c[0] = i_cmp32_glfwchoosefbconfig20_o[33];

    // i_unnamed_glfwchoosefbconfig23(LOGICAL,225)@133
    assign i_unnamed_glfwchoosefbconfig23_q = in_c1_eni48_10_tpl & i_cmp32_glfwchoosefbconfig20_c;

    // i_unnamed_glfwchoosefbconfig24(MUX,226)@133 + 1
    assign i_unnamed_glfwchoosefbconfig24_s = i_unnamed_glfwchoosefbconfig23_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_glfwchoosefbconfig24_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_glfwchoosefbconfig24_s)
                1'b0 : i_unnamed_glfwchoosefbconfig24_q <= c_i32_0129_q;
                1'b1 : i_unnamed_glfwchoosefbconfig24_q <= bgTrunc_i_sub_glfwchoosefbconfig22_sel_x_b;
                default : i_unnamed_glfwchoosefbconfig24_q <= 32'b0;
            endcase
        end
    end

    // i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32(ADD,201)@134
    assign i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_a = {1'b0, i_unnamed_glfwchoosefbconfig24_q};
    assign i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_b = {1'b0, i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig31_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_o = $unsigned(i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_a) + $unsigned(i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_b);
    assign i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_q = i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x(BITSELECT,263)@134
    assign bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b = i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_q[31:0];

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_inputreg0(DELAY,591)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_inputreg0_q <= '0;
        end
        else
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_inputreg0_q <= $unsigned(bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b);
        end
    end

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_wraddr(REG,595)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_wraddr_q <= $unsigned(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_rdcnt_q);
        end
    end

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem(DUALMEM,593)
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_ia = $unsigned(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_inputreg0_q);
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_aa = redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_wraddr_q;
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_ab = redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_rdcnt_q;
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_dmem (
        .clocken1(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_reset0),
        .clock1(clock),
        .address_a(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_aa),
        .data_a(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_ab),
        .q_b(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_q = redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_iq[31:0];

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_outputreg0(DELAY,592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_outputreg0_q <= '0;
        end
        else
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_outputreg0_q <= $unsigned(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_mem_q);
        end
    end

    // i_cmp174_glfwchoosefbconfig80(COMPARE,105)@139
    assign i_cmp174_glfwchoosefbconfig80_a = {2'b00, redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_outputreg0_q};
    assign i_cmp174_glfwchoosefbconfig80_b = {2'b00, i_leastmissing_0133_replace_phi_glfwchoosefbconfig10_q};
    assign i_cmp174_glfwchoosefbconfig80_o = $unsigned(i_cmp174_glfwchoosefbconfig80_a) - $unsigned(i_cmp174_glfwchoosefbconfig80_b);
    assign i_cmp174_glfwchoosefbconfig80_c[0] = i_cmp174_glfwchoosefbconfig80_o[33];

    // i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig88(LOGICAL,190)@139
    assign i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig88_q = i_cmp174_glfwchoosefbconfig80_c ^ VCC_q;

    // i_cmp176_glfwchoosefbconfig81(LOGICAL,106)@139
    assign i_cmp176_glfwchoosefbconfig81_q = $unsigned(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig32_sel_x_b_5_outputreg0_q == i_leastmissing_0133_replace_phi_glfwchoosefbconfig10_q ? 1'b1 : 1'b0);

    // i_reduction_glfwchoosefbconfig_17_glfwchoosefbconfig89(LOGICAL,191)@139
    assign i_reduction_glfwchoosefbconfig_17_glfwchoosefbconfig89_q = i_cmp176_glfwchoosefbconfig81_q ^ i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig88_q;

    // valid_fanout_reg3(REG,290)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig29_glfwchoosefbconfig5(BLACKBOX,119)@139
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000046Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig29_glfwchoosefbconfig5 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig29_glfwchoosefbconfig5_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,291)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg9(REG,296)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig107(MUX,194)@139
    assign i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig107_s = i_selcond_glfwchoosefbconfig_1_glfwchoosefbconfig104_q;
    always @(i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig107_s or i_leastcolordiff_0134_replace_phi_glfwchoosefbconfig7_q or redist20_bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b_2_q)
    begin
        unique case (i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig107_s)
            1'b0 : i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig107_q = i_leastcolordiff_0134_replace_phi_glfwchoosefbconfig7_q;
            1'b1 : i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig107_q = redist20_bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b_2_q;
            default : i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig107_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_leastcolordiff_0134_push9_glfwchoosefbconfig108(BLACKBOX,129)@139
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i32_A000001Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i32_leastcolordiff_0134_push9_glfwchoosefbconfig108 (
        .in_c1_ene47(redist13_sync_together140_aunroll_x_in_c1_eni48_47_tpl_6_q),
        .in_data_in(i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig107_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_leastcolordiff_0134_pop9_glfwchoosefbconfig6_out_feedback_stall_out_9),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_leastcolordiff_0134_push9_glfwchoosefbconfig108_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_leastcolordiff_0134_push9_glfwchoosefbconfig108_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_leastcolordiff_0134_pop9_glfwchoosefbconfig6(BLACKBOX,125)@139
    // out out_feedback_stall_out_9@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_i32_lA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_i32_leastcolordiff_0134_pop9_glfwchoosefbconfig6 (
        .in_data_in(c_i32_0129_q),
        .in_dir(redist0_sync_together140_aunroll_x_in_c1_eni48_1_tpl_6_q),
        .in_feedback_in_9(i_llvm_fpga_push_i32_leastcolordiff_0134_push9_glfwchoosefbconfig108_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_leastcolordiff_0134_push9_glfwchoosefbconfig108_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_leastcolordiff_0134_pop9_glfwchoosefbconfig6_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_leastcolordiff_0134_pop9_glfwchoosefbconfig6_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_leastcolordiff_0134_replace_phi_glfwchoosefbconfig7(MUX,115)@139
    assign i_leastcolordiff_0134_replace_phi_glfwchoosefbconfig7_s = redist0_sync_together140_aunroll_x_in_c1_eni48_1_tpl_6_q;
    always @(i_leastcolordiff_0134_replace_phi_glfwchoosefbconfig7_s or i_llvm_fpga_pop_i32_leastcolordiff_0134_pop9_glfwchoosefbconfig6_out_data_out or i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig29_glfwchoosefbconfig5_out_dest_data_out_1_0)
    begin
        unique case (i_leastcolordiff_0134_replace_phi_glfwchoosefbconfig7_s)
            1'b0 : i_leastcolordiff_0134_replace_phi_glfwchoosefbconfig7_q = i_llvm_fpga_pop_i32_leastcolordiff_0134_pop9_glfwchoosefbconfig6_out_data_out;
            1'b1 : i_leastcolordiff_0134_replace_phi_glfwchoosefbconfig7_q = i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig29_glfwchoosefbconfig5_out_dest_data_out_1_0;
            default : i_leastcolordiff_0134_replace_phi_glfwchoosefbconfig7_q = 32'b0;
        endcase
    end

    // i_sub69_glfwchoosefbconfig40(SUB,219)@133
    assign i_sub69_glfwchoosefbconfig40_a = {1'b0, in_c1_eni48_19_tpl};
    assign i_sub69_glfwchoosefbconfig40_b = {1'b0, in_c1_eni48_20_tpl};
    assign i_sub69_glfwchoosefbconfig40_o = $unsigned(i_sub69_glfwchoosefbconfig40_a) - $unsigned(i_sub69_glfwchoosefbconfig40_b);
    assign i_sub69_glfwchoosefbconfig40_q = i_sub69_glfwchoosefbconfig40_o[32:0];

    // bgTrunc_i_sub69_glfwchoosefbconfig40_sel_x(BITSELECT,274)@133
    assign bgTrunc_i_sub69_glfwchoosefbconfig40_sel_x_b = $unsigned(i_sub69_glfwchoosefbconfig40_q[31:0]);

    // i_mul73_glfwchoosefbconfig41_bs1_merged_bit_select(BITSELECT,542)@133
    assign i_mul73_glfwchoosefbconfig41_bs1_merged_bit_select_b = bgTrunc_i_sub69_glfwchoosefbconfig40_sel_x_b[31:18];
    assign i_mul73_glfwchoosefbconfig41_bs1_merged_bit_select_c = bgTrunc_i_sub69_glfwchoosefbconfig40_sel_x_b[17:0];

    // i_mul73_glfwchoosefbconfig41_ma3_cma(CHAINMULTADD,530)@133 + 3
    assign i_mul73_glfwchoosefbconfig41_ma3_cma_reset = ~ (resetn);
    assign i_mul73_glfwchoosefbconfig41_ma3_cma_ena0 = 1'b1;
    assign i_mul73_glfwchoosefbconfig41_ma3_cma_ena1 = i_mul73_glfwchoosefbconfig41_ma3_cma_ena0;
    assign i_mul73_glfwchoosefbconfig41_ma3_cma_ena2 = i_mul73_glfwchoosefbconfig41_ma3_cma_ena0;

    assign i_mul73_glfwchoosefbconfig41_ma3_cma_a0 = i_mul73_glfwchoosefbconfig41_bs1_merged_bit_select_b;
    assign i_mul73_glfwchoosefbconfig41_ma3_cma_c0 = i_mul73_glfwchoosefbconfig41_bs1_merged_bit_select_c;
    assign i_mul73_glfwchoosefbconfig41_ma3_cma_a1 = i_mul73_glfwchoosefbconfig41_bs1_merged_bit_select_b;
    assign i_mul73_glfwchoosefbconfig41_ma3_cma_c1 = i_mul73_glfwchoosefbconfig41_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul73_glfwchoosefbconfig41_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul73_glfwchoosefbconfig41_ma3_cma_ena2, i_mul73_glfwchoosefbconfig41_ma3_cma_ena1, i_mul73_glfwchoosefbconfig41_ma3_cma_ena0 }),
        .aclr({ i_mul73_glfwchoosefbconfig41_ma3_cma_reset, i_mul73_glfwchoosefbconfig41_ma3_cma_reset }),
        .ay(i_mul73_glfwchoosefbconfig41_ma3_cma_a1),
        .by(i_mul73_glfwchoosefbconfig41_ma3_cma_a0),
        .ax(i_mul73_glfwchoosefbconfig41_ma3_cma_c1),
        .bx(i_mul73_glfwchoosefbconfig41_ma3_cma_c0),
        .resulta(i_mul73_glfwchoosefbconfig41_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul73_glfwchoosefbconfig41_ma3_cma_delay ( .xin(i_mul73_glfwchoosefbconfig41_ma3_cma_s0), .xout(i_mul73_glfwchoosefbconfig41_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul73_glfwchoosefbconfig41_ma3_cma_q = $unsigned(i_mul73_glfwchoosefbconfig41_ma3_cma_qq[32:0]);

    // i_mul73_glfwchoosefbconfig41_sums_align_1(BITSHIFT,453)@136
    assign i_mul73_glfwchoosefbconfig41_sums_align_1_qint = { i_mul73_glfwchoosefbconfig41_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul73_glfwchoosefbconfig41_sums_align_1_q = i_mul73_glfwchoosefbconfig41_sums_align_1_qint[50:0];

    // i_mul73_glfwchoosefbconfig41_im0_cma(CHAINMULTADD,515)@133 + 3
    assign i_mul73_glfwchoosefbconfig41_im0_cma_reset = ~ (resetn);
    assign i_mul73_glfwchoosefbconfig41_im0_cma_ena0 = 1'b1;
    assign i_mul73_glfwchoosefbconfig41_im0_cma_ena1 = i_mul73_glfwchoosefbconfig41_im0_cma_ena0;
    assign i_mul73_glfwchoosefbconfig41_im0_cma_ena2 = i_mul73_glfwchoosefbconfig41_im0_cma_ena0;

    assign i_mul73_glfwchoosefbconfig41_im0_cma_a0 = i_mul73_glfwchoosefbconfig41_bs1_merged_bit_select_b;
    assign i_mul73_glfwchoosefbconfig41_im0_cma_c0 = i_mul73_glfwchoosefbconfig41_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul73_glfwchoosefbconfig41_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul73_glfwchoosefbconfig41_im0_cma_ena2, i_mul73_glfwchoosefbconfig41_im0_cma_ena1, i_mul73_glfwchoosefbconfig41_im0_cma_ena0 }),
        .aclr({ i_mul73_glfwchoosefbconfig41_im0_cma_reset, i_mul73_glfwchoosefbconfig41_im0_cma_reset }),
        .ay(i_mul73_glfwchoosefbconfig41_im0_cma_a0),
        .ax(i_mul73_glfwchoosefbconfig41_im0_cma_c0),
        .resulta(i_mul73_glfwchoosefbconfig41_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul73_glfwchoosefbconfig41_im0_cma_delay ( .xin(i_mul73_glfwchoosefbconfig41_im0_cma_s0), .xout(i_mul73_glfwchoosefbconfig41_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul73_glfwchoosefbconfig41_im0_cma_q = $unsigned(i_mul73_glfwchoosefbconfig41_im0_cma_qq[27:0]);

    // i_mul73_glfwchoosefbconfig41_im8_cma(CHAINMULTADD,516)@133 + 3
    assign i_mul73_glfwchoosefbconfig41_im8_cma_reset = ~ (resetn);
    assign i_mul73_glfwchoosefbconfig41_im8_cma_ena0 = 1'b1;
    assign i_mul73_glfwchoosefbconfig41_im8_cma_ena1 = i_mul73_glfwchoosefbconfig41_im8_cma_ena0;
    assign i_mul73_glfwchoosefbconfig41_im8_cma_ena2 = i_mul73_glfwchoosefbconfig41_im8_cma_ena0;

    assign i_mul73_glfwchoosefbconfig41_im8_cma_a0 = i_mul73_glfwchoosefbconfig41_bs1_merged_bit_select_c;
    assign i_mul73_glfwchoosefbconfig41_im8_cma_c0 = i_mul73_glfwchoosefbconfig41_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul73_glfwchoosefbconfig41_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul73_glfwchoosefbconfig41_im8_cma_ena2, i_mul73_glfwchoosefbconfig41_im8_cma_ena1, i_mul73_glfwchoosefbconfig41_im8_cma_ena0 }),
        .aclr({ i_mul73_glfwchoosefbconfig41_im8_cma_reset, i_mul73_glfwchoosefbconfig41_im8_cma_reset }),
        .ay(i_mul73_glfwchoosefbconfig41_im8_cma_a0),
        .ax(i_mul73_glfwchoosefbconfig41_im8_cma_c0),
        .resulta(i_mul73_glfwchoosefbconfig41_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul73_glfwchoosefbconfig41_im8_cma_delay ( .xin(i_mul73_glfwchoosefbconfig41_im8_cma_s0), .xout(i_mul73_glfwchoosefbconfig41_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul73_glfwchoosefbconfig41_im8_cma_q = $unsigned(i_mul73_glfwchoosefbconfig41_im8_cma_qq[35:0]);

    // i_mul73_glfwchoosefbconfig41_sums_join_0(BITJOIN,452)@136
    assign i_mul73_glfwchoosefbconfig41_sums_join_0_q = {i_mul73_glfwchoosefbconfig41_im0_cma_q, i_mul73_glfwchoosefbconfig41_im8_cma_q};

    // i_mul73_glfwchoosefbconfig41_sums_result_add_0_0(ADD,455)@136
    assign i_mul73_glfwchoosefbconfig41_sums_result_add_0_0_a = {1'b0, i_mul73_glfwchoosefbconfig41_sums_join_0_q};
    assign i_mul73_glfwchoosefbconfig41_sums_result_add_0_0_b = {14'b00000000000000, i_mul73_glfwchoosefbconfig41_sums_align_1_q};
    assign i_mul73_glfwchoosefbconfig41_sums_result_add_0_0_o = $unsigned(i_mul73_glfwchoosefbconfig41_sums_result_add_0_0_a) + $unsigned(i_mul73_glfwchoosefbconfig41_sums_result_add_0_0_b);
    assign i_mul73_glfwchoosefbconfig41_sums_result_add_0_0_q = i_mul73_glfwchoosefbconfig41_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul73_glfwchoosefbconfig41_sel_x(BITSELECT,253)@136
    assign bgTrunc_i_mul73_glfwchoosefbconfig41_sel_x_in = i_mul73_glfwchoosefbconfig41_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul73_glfwchoosefbconfig41_sel_x_b = bgTrunc_i_mul73_glfwchoosefbconfig41_sel_x_in[31:0];

    // i_mul73_glfwchoosefbconfig41_vt_select_30(BITSELECT,164)@136
    assign i_mul73_glfwchoosefbconfig41_vt_select_30_b = bgTrunc_i_mul73_glfwchoosefbconfig41_sel_x_b[30:0];

    // i_mul73_glfwchoosefbconfig41_vt_join(BITJOIN,163)@136
    assign i_mul73_glfwchoosefbconfig41_vt_join_q = {GND_q, i_mul73_glfwchoosefbconfig41_vt_select_30_b};

    // redist3_sync_together140_aunroll_x_in_c1_eni48_21_tpl_3(DELAY,548)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together140_aunroll_x_in_c1_eni48_21_tpl_3_delay_0 <= '0;
            redist3_sync_together140_aunroll_x_in_c1_eni48_21_tpl_3_delay_1 <= '0;
            redist3_sync_together140_aunroll_x_in_c1_eni48_21_tpl_3_q <= '0;
        end
        else
        begin
            redist3_sync_together140_aunroll_x_in_c1_eni48_21_tpl_3_delay_0 <= $unsigned(in_c1_eni48_21_tpl);
            redist3_sync_together140_aunroll_x_in_c1_eni48_21_tpl_3_delay_1 <= redist3_sync_together140_aunroll_x_in_c1_eni48_21_tpl_3_delay_0;
            redist3_sync_together140_aunroll_x_in_c1_eni48_21_tpl_3_q <= redist3_sync_together140_aunroll_x_in_c1_eni48_21_tpl_3_delay_1;
        end
    end

    // i_add74_glfwchoosefbconfig42(MUX,96)@136
    assign i_add74_glfwchoosefbconfig42_s = redist3_sync_together140_aunroll_x_in_c1_eni48_21_tpl_3_q;
    always @(i_add74_glfwchoosefbconfig42_s or c_i32_0129_q or i_mul73_glfwchoosefbconfig41_vt_join_q)
    begin
        unique case (i_add74_glfwchoosefbconfig42_s)
            1'b0 : i_add74_glfwchoosefbconfig42_q = c_i32_0129_q;
            1'b1 : i_add74_glfwchoosefbconfig42_q = i_mul73_glfwchoosefbconfig41_vt_join_q;
            default : i_add74_glfwchoosefbconfig42_q = 32'b0;
        endcase
    end

    // i_add74_glfwchoosefbconfig42_vt_select_30(BITSELECT,99)@136
    assign i_add74_glfwchoosefbconfig42_vt_select_30_b = i_add74_glfwchoosefbconfig42_q[30:0];

    // redist24_i_add74_glfwchoosefbconfig42_vt_select_30_b_1(DELAY,569)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_add74_glfwchoosefbconfig42_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist24_i_add74_glfwchoosefbconfig42_vt_select_30_b_1_q <= $unsigned(i_add74_glfwchoosefbconfig42_vt_select_30_b);
        end
    end

    // i_add74_glfwchoosefbconfig42_vt_join(BITJOIN,98)@137
    assign i_add74_glfwchoosefbconfig42_vt_join_q = {GND_q, redist24_i_add74_glfwchoosefbconfig42_vt_select_30_b_1_q};

    // i_sub58_glfwchoosefbconfig36(SUB,218)@133
    assign i_sub58_glfwchoosefbconfig36_a = {1'b0, in_c1_eni48_16_tpl};
    assign i_sub58_glfwchoosefbconfig36_b = {1'b0, in_c1_eni48_17_tpl};
    assign i_sub58_glfwchoosefbconfig36_o = $unsigned(i_sub58_glfwchoosefbconfig36_a) - $unsigned(i_sub58_glfwchoosefbconfig36_b);
    assign i_sub58_glfwchoosefbconfig36_q = i_sub58_glfwchoosefbconfig36_o[32:0];

    // bgTrunc_i_sub58_glfwchoosefbconfig36_sel_x(BITSELECT,273)@133
    assign bgTrunc_i_sub58_glfwchoosefbconfig36_sel_x_b = $unsigned(i_sub58_glfwchoosefbconfig36_q[31:0]);

    // i_mul62_glfwchoosefbconfig37_bs1_merged_bit_select(BITSELECT,541)@133
    assign i_mul62_glfwchoosefbconfig37_bs1_merged_bit_select_b = bgTrunc_i_sub58_glfwchoosefbconfig36_sel_x_b[31:18];
    assign i_mul62_glfwchoosefbconfig37_bs1_merged_bit_select_c = bgTrunc_i_sub58_glfwchoosefbconfig36_sel_x_b[17:0];

    // i_mul62_glfwchoosefbconfig37_ma3_cma(CHAINMULTADD,529)@133 + 3
    assign i_mul62_glfwchoosefbconfig37_ma3_cma_reset = ~ (resetn);
    assign i_mul62_glfwchoosefbconfig37_ma3_cma_ena0 = 1'b1;
    assign i_mul62_glfwchoosefbconfig37_ma3_cma_ena1 = i_mul62_glfwchoosefbconfig37_ma3_cma_ena0;
    assign i_mul62_glfwchoosefbconfig37_ma3_cma_ena2 = i_mul62_glfwchoosefbconfig37_ma3_cma_ena0;

    assign i_mul62_glfwchoosefbconfig37_ma3_cma_a0 = i_mul62_glfwchoosefbconfig37_bs1_merged_bit_select_b;
    assign i_mul62_glfwchoosefbconfig37_ma3_cma_c0 = i_mul62_glfwchoosefbconfig37_bs1_merged_bit_select_c;
    assign i_mul62_glfwchoosefbconfig37_ma3_cma_a1 = i_mul62_glfwchoosefbconfig37_bs1_merged_bit_select_b;
    assign i_mul62_glfwchoosefbconfig37_ma3_cma_c1 = i_mul62_glfwchoosefbconfig37_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul62_glfwchoosefbconfig37_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul62_glfwchoosefbconfig37_ma3_cma_ena2, i_mul62_glfwchoosefbconfig37_ma3_cma_ena1, i_mul62_glfwchoosefbconfig37_ma3_cma_ena0 }),
        .aclr({ i_mul62_glfwchoosefbconfig37_ma3_cma_reset, i_mul62_glfwchoosefbconfig37_ma3_cma_reset }),
        .ay(i_mul62_glfwchoosefbconfig37_ma3_cma_a1),
        .by(i_mul62_glfwchoosefbconfig37_ma3_cma_a0),
        .ax(i_mul62_glfwchoosefbconfig37_ma3_cma_c1),
        .bx(i_mul62_glfwchoosefbconfig37_ma3_cma_c0),
        .resulta(i_mul62_glfwchoosefbconfig37_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul62_glfwchoosefbconfig37_ma3_cma_delay ( .xin(i_mul62_glfwchoosefbconfig37_ma3_cma_s0), .xout(i_mul62_glfwchoosefbconfig37_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul62_glfwchoosefbconfig37_ma3_cma_q = $unsigned(i_mul62_glfwchoosefbconfig37_ma3_cma_qq[32:0]);

    // i_mul62_glfwchoosefbconfig37_sums_align_1(BITSHIFT,438)@136
    assign i_mul62_glfwchoosefbconfig37_sums_align_1_qint = { i_mul62_glfwchoosefbconfig37_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul62_glfwchoosefbconfig37_sums_align_1_q = i_mul62_glfwchoosefbconfig37_sums_align_1_qint[50:0];

    // i_mul62_glfwchoosefbconfig37_im0_cma(CHAINMULTADD,513)@133 + 3
    assign i_mul62_glfwchoosefbconfig37_im0_cma_reset = ~ (resetn);
    assign i_mul62_glfwchoosefbconfig37_im0_cma_ena0 = 1'b1;
    assign i_mul62_glfwchoosefbconfig37_im0_cma_ena1 = i_mul62_glfwchoosefbconfig37_im0_cma_ena0;
    assign i_mul62_glfwchoosefbconfig37_im0_cma_ena2 = i_mul62_glfwchoosefbconfig37_im0_cma_ena0;

    assign i_mul62_glfwchoosefbconfig37_im0_cma_a0 = i_mul62_glfwchoosefbconfig37_bs1_merged_bit_select_b;
    assign i_mul62_glfwchoosefbconfig37_im0_cma_c0 = i_mul62_glfwchoosefbconfig37_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul62_glfwchoosefbconfig37_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul62_glfwchoosefbconfig37_im0_cma_ena2, i_mul62_glfwchoosefbconfig37_im0_cma_ena1, i_mul62_glfwchoosefbconfig37_im0_cma_ena0 }),
        .aclr({ i_mul62_glfwchoosefbconfig37_im0_cma_reset, i_mul62_glfwchoosefbconfig37_im0_cma_reset }),
        .ay(i_mul62_glfwchoosefbconfig37_im0_cma_a0),
        .ax(i_mul62_glfwchoosefbconfig37_im0_cma_c0),
        .resulta(i_mul62_glfwchoosefbconfig37_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul62_glfwchoosefbconfig37_im0_cma_delay ( .xin(i_mul62_glfwchoosefbconfig37_im0_cma_s0), .xout(i_mul62_glfwchoosefbconfig37_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul62_glfwchoosefbconfig37_im0_cma_q = $unsigned(i_mul62_glfwchoosefbconfig37_im0_cma_qq[27:0]);

    // i_mul62_glfwchoosefbconfig37_im8_cma(CHAINMULTADD,514)@133 + 3
    assign i_mul62_glfwchoosefbconfig37_im8_cma_reset = ~ (resetn);
    assign i_mul62_glfwchoosefbconfig37_im8_cma_ena0 = 1'b1;
    assign i_mul62_glfwchoosefbconfig37_im8_cma_ena1 = i_mul62_glfwchoosefbconfig37_im8_cma_ena0;
    assign i_mul62_glfwchoosefbconfig37_im8_cma_ena2 = i_mul62_glfwchoosefbconfig37_im8_cma_ena0;

    assign i_mul62_glfwchoosefbconfig37_im8_cma_a0 = i_mul62_glfwchoosefbconfig37_bs1_merged_bit_select_c;
    assign i_mul62_glfwchoosefbconfig37_im8_cma_c0 = i_mul62_glfwchoosefbconfig37_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul62_glfwchoosefbconfig37_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul62_glfwchoosefbconfig37_im8_cma_ena2, i_mul62_glfwchoosefbconfig37_im8_cma_ena1, i_mul62_glfwchoosefbconfig37_im8_cma_ena0 }),
        .aclr({ i_mul62_glfwchoosefbconfig37_im8_cma_reset, i_mul62_glfwchoosefbconfig37_im8_cma_reset }),
        .ay(i_mul62_glfwchoosefbconfig37_im8_cma_a0),
        .ax(i_mul62_glfwchoosefbconfig37_im8_cma_c0),
        .resulta(i_mul62_glfwchoosefbconfig37_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul62_glfwchoosefbconfig37_im8_cma_delay ( .xin(i_mul62_glfwchoosefbconfig37_im8_cma_s0), .xout(i_mul62_glfwchoosefbconfig37_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul62_glfwchoosefbconfig37_im8_cma_q = $unsigned(i_mul62_glfwchoosefbconfig37_im8_cma_qq[35:0]);

    // i_mul62_glfwchoosefbconfig37_sums_join_0(BITJOIN,437)@136
    assign i_mul62_glfwchoosefbconfig37_sums_join_0_q = {i_mul62_glfwchoosefbconfig37_im0_cma_q, i_mul62_glfwchoosefbconfig37_im8_cma_q};

    // i_mul62_glfwchoosefbconfig37_sums_result_add_0_0(ADD,440)@136
    assign i_mul62_glfwchoosefbconfig37_sums_result_add_0_0_a = {1'b0, i_mul62_glfwchoosefbconfig37_sums_join_0_q};
    assign i_mul62_glfwchoosefbconfig37_sums_result_add_0_0_b = {14'b00000000000000, i_mul62_glfwchoosefbconfig37_sums_align_1_q};
    assign i_mul62_glfwchoosefbconfig37_sums_result_add_0_0_o = $unsigned(i_mul62_glfwchoosefbconfig37_sums_result_add_0_0_a) + $unsigned(i_mul62_glfwchoosefbconfig37_sums_result_add_0_0_b);
    assign i_mul62_glfwchoosefbconfig37_sums_result_add_0_0_q = i_mul62_glfwchoosefbconfig37_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul62_glfwchoosefbconfig37_sel_x(BITSELECT,252)@136
    assign bgTrunc_i_mul62_glfwchoosefbconfig37_sel_x_in = i_mul62_glfwchoosefbconfig37_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul62_glfwchoosefbconfig37_sel_x_b = bgTrunc_i_mul62_glfwchoosefbconfig37_sel_x_in[31:0];

    // i_mul62_glfwchoosefbconfig37_vt_select_30(BITSELECT,160)@136
    assign i_mul62_glfwchoosefbconfig37_vt_select_30_b = bgTrunc_i_mul62_glfwchoosefbconfig37_sel_x_b[30:0];

    // i_mul62_glfwchoosefbconfig37_vt_join(BITJOIN,159)@136
    assign i_mul62_glfwchoosefbconfig37_vt_join_q = {GND_q, i_mul62_glfwchoosefbconfig37_vt_select_30_b};

    // redist2_sync_together140_aunroll_x_in_c1_eni48_18_tpl_3(DELAY,547)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together140_aunroll_x_in_c1_eni48_18_tpl_3_delay_0 <= '0;
            redist2_sync_together140_aunroll_x_in_c1_eni48_18_tpl_3_delay_1 <= '0;
            redist2_sync_together140_aunroll_x_in_c1_eni48_18_tpl_3_q <= '0;
        end
        else
        begin
            redist2_sync_together140_aunroll_x_in_c1_eni48_18_tpl_3_delay_0 <= $unsigned(in_c1_eni48_18_tpl);
            redist2_sync_together140_aunroll_x_in_c1_eni48_18_tpl_3_delay_1 <= redist2_sync_together140_aunroll_x_in_c1_eni48_18_tpl_3_delay_0;
            redist2_sync_together140_aunroll_x_in_c1_eni48_18_tpl_3_q <= redist2_sync_together140_aunroll_x_in_c1_eni48_18_tpl_3_delay_1;
        end
    end

    // i_add63_glfwchoosefbconfig38(MUX,92)@136
    assign i_add63_glfwchoosefbconfig38_s = redist2_sync_together140_aunroll_x_in_c1_eni48_18_tpl_3_q;
    always @(i_add63_glfwchoosefbconfig38_s or c_i32_0129_q or i_mul62_glfwchoosefbconfig37_vt_join_q)
    begin
        unique case (i_add63_glfwchoosefbconfig38_s)
            1'b0 : i_add63_glfwchoosefbconfig38_q = c_i32_0129_q;
            1'b1 : i_add63_glfwchoosefbconfig38_q = i_mul62_glfwchoosefbconfig37_vt_join_q;
            default : i_add63_glfwchoosefbconfig38_q = 32'b0;
        endcase
    end

    // i_add63_glfwchoosefbconfig38_vt_select_30(BITSELECT,95)@136
    assign i_add63_glfwchoosefbconfig38_vt_select_30_b = i_add63_glfwchoosefbconfig38_q[30:0];

    // redist25_i_add63_glfwchoosefbconfig38_vt_select_30_b_1(DELAY,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_add63_glfwchoosefbconfig38_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist25_i_add63_glfwchoosefbconfig38_vt_select_30_b_1_q <= $unsigned(i_add63_glfwchoosefbconfig38_vt_select_30_b);
        end
    end

    // i_add63_glfwchoosefbconfig38_vt_join(BITJOIN,94)@137
    assign i_add63_glfwchoosefbconfig38_vt_join_q = {GND_q, redist25_i_add63_glfwchoosefbconfig38_vt_select_30_b_1_q};

    // i_sub48_glfwchoosefbconfig33(SUB,217)@133
    assign i_sub48_glfwchoosefbconfig33_a = {1'b0, in_c1_eni48_13_tpl};
    assign i_sub48_glfwchoosefbconfig33_b = {1'b0, in_c1_eni48_14_tpl};
    assign i_sub48_glfwchoosefbconfig33_o = $unsigned(i_sub48_glfwchoosefbconfig33_a) - $unsigned(i_sub48_glfwchoosefbconfig33_b);
    assign i_sub48_glfwchoosefbconfig33_q = i_sub48_glfwchoosefbconfig33_o[32:0];

    // bgTrunc_i_sub48_glfwchoosefbconfig33_sel_x(BITSELECT,272)@133
    assign bgTrunc_i_sub48_glfwchoosefbconfig33_sel_x_b = $unsigned(i_sub48_glfwchoosefbconfig33_q[31:0]);

    // i_mul_glfwchoosefbconfig34_bs1_merged_bit_select(BITSELECT,540)@133
    assign i_mul_glfwchoosefbconfig34_bs1_merged_bit_select_b = bgTrunc_i_sub48_glfwchoosefbconfig33_sel_x_b[31:18];
    assign i_mul_glfwchoosefbconfig34_bs1_merged_bit_select_c = bgTrunc_i_sub48_glfwchoosefbconfig33_sel_x_b[17:0];

    // i_mul_glfwchoosefbconfig34_ma3_cma(CHAINMULTADD,533)@133 + 3
    assign i_mul_glfwchoosefbconfig34_ma3_cma_reset = ~ (resetn);
    assign i_mul_glfwchoosefbconfig34_ma3_cma_ena0 = 1'b1;
    assign i_mul_glfwchoosefbconfig34_ma3_cma_ena1 = i_mul_glfwchoosefbconfig34_ma3_cma_ena0;
    assign i_mul_glfwchoosefbconfig34_ma3_cma_ena2 = i_mul_glfwchoosefbconfig34_ma3_cma_ena0;

    assign i_mul_glfwchoosefbconfig34_ma3_cma_a0 = i_mul_glfwchoosefbconfig34_bs1_merged_bit_select_b;
    assign i_mul_glfwchoosefbconfig34_ma3_cma_c0 = i_mul_glfwchoosefbconfig34_bs1_merged_bit_select_c;
    assign i_mul_glfwchoosefbconfig34_ma3_cma_a1 = i_mul_glfwchoosefbconfig34_bs1_merged_bit_select_b;
    assign i_mul_glfwchoosefbconfig34_ma3_cma_c1 = i_mul_glfwchoosefbconfig34_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul_glfwchoosefbconfig34_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_glfwchoosefbconfig34_ma3_cma_ena2, i_mul_glfwchoosefbconfig34_ma3_cma_ena1, i_mul_glfwchoosefbconfig34_ma3_cma_ena0 }),
        .aclr({ i_mul_glfwchoosefbconfig34_ma3_cma_reset, i_mul_glfwchoosefbconfig34_ma3_cma_reset }),
        .ay(i_mul_glfwchoosefbconfig34_ma3_cma_a1),
        .by(i_mul_glfwchoosefbconfig34_ma3_cma_a0),
        .ax(i_mul_glfwchoosefbconfig34_ma3_cma_c1),
        .bx(i_mul_glfwchoosefbconfig34_ma3_cma_c0),
        .resulta(i_mul_glfwchoosefbconfig34_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_glfwchoosefbconfig34_ma3_cma_delay ( .xin(i_mul_glfwchoosefbconfig34_ma3_cma_s0), .xout(i_mul_glfwchoosefbconfig34_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_glfwchoosefbconfig34_ma3_cma_q = $unsigned(i_mul_glfwchoosefbconfig34_ma3_cma_qq[32:0]);

    // i_mul_glfwchoosefbconfig34_sums_align_1(BITSHIFT,498)@136
    assign i_mul_glfwchoosefbconfig34_sums_align_1_qint = { i_mul_glfwchoosefbconfig34_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_glfwchoosefbconfig34_sums_align_1_q = i_mul_glfwchoosefbconfig34_sums_align_1_qint[50:0];

    // i_mul_glfwchoosefbconfig34_im0_cma(CHAINMULTADD,521)@133 + 3
    assign i_mul_glfwchoosefbconfig34_im0_cma_reset = ~ (resetn);
    assign i_mul_glfwchoosefbconfig34_im0_cma_ena0 = 1'b1;
    assign i_mul_glfwchoosefbconfig34_im0_cma_ena1 = i_mul_glfwchoosefbconfig34_im0_cma_ena0;
    assign i_mul_glfwchoosefbconfig34_im0_cma_ena2 = i_mul_glfwchoosefbconfig34_im0_cma_ena0;

    assign i_mul_glfwchoosefbconfig34_im0_cma_a0 = i_mul_glfwchoosefbconfig34_bs1_merged_bit_select_b;
    assign i_mul_glfwchoosefbconfig34_im0_cma_c0 = i_mul_glfwchoosefbconfig34_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul_glfwchoosefbconfig34_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_glfwchoosefbconfig34_im0_cma_ena2, i_mul_glfwchoosefbconfig34_im0_cma_ena1, i_mul_glfwchoosefbconfig34_im0_cma_ena0 }),
        .aclr({ i_mul_glfwchoosefbconfig34_im0_cma_reset, i_mul_glfwchoosefbconfig34_im0_cma_reset }),
        .ay(i_mul_glfwchoosefbconfig34_im0_cma_a0),
        .ax(i_mul_glfwchoosefbconfig34_im0_cma_c0),
        .resulta(i_mul_glfwchoosefbconfig34_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_glfwchoosefbconfig34_im0_cma_delay ( .xin(i_mul_glfwchoosefbconfig34_im0_cma_s0), .xout(i_mul_glfwchoosefbconfig34_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_glfwchoosefbconfig34_im0_cma_q = $unsigned(i_mul_glfwchoosefbconfig34_im0_cma_qq[27:0]);

    // i_mul_glfwchoosefbconfig34_im8_cma(CHAINMULTADD,522)@133 + 3
    assign i_mul_glfwchoosefbconfig34_im8_cma_reset = ~ (resetn);
    assign i_mul_glfwchoosefbconfig34_im8_cma_ena0 = 1'b1;
    assign i_mul_glfwchoosefbconfig34_im8_cma_ena1 = i_mul_glfwchoosefbconfig34_im8_cma_ena0;
    assign i_mul_glfwchoosefbconfig34_im8_cma_ena2 = i_mul_glfwchoosefbconfig34_im8_cma_ena0;

    assign i_mul_glfwchoosefbconfig34_im8_cma_a0 = i_mul_glfwchoosefbconfig34_bs1_merged_bit_select_c;
    assign i_mul_glfwchoosefbconfig34_im8_cma_c0 = i_mul_glfwchoosefbconfig34_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul_glfwchoosefbconfig34_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_glfwchoosefbconfig34_im8_cma_ena2, i_mul_glfwchoosefbconfig34_im8_cma_ena1, i_mul_glfwchoosefbconfig34_im8_cma_ena0 }),
        .aclr({ i_mul_glfwchoosefbconfig34_im8_cma_reset, i_mul_glfwchoosefbconfig34_im8_cma_reset }),
        .ay(i_mul_glfwchoosefbconfig34_im8_cma_a0),
        .ax(i_mul_glfwchoosefbconfig34_im8_cma_c0),
        .resulta(i_mul_glfwchoosefbconfig34_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_glfwchoosefbconfig34_im8_cma_delay ( .xin(i_mul_glfwchoosefbconfig34_im8_cma_s0), .xout(i_mul_glfwchoosefbconfig34_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_glfwchoosefbconfig34_im8_cma_q = $unsigned(i_mul_glfwchoosefbconfig34_im8_cma_qq[35:0]);

    // i_mul_glfwchoosefbconfig34_sums_join_0(BITJOIN,497)@136
    assign i_mul_glfwchoosefbconfig34_sums_join_0_q = {i_mul_glfwchoosefbconfig34_im0_cma_q, i_mul_glfwchoosefbconfig34_im8_cma_q};

    // i_mul_glfwchoosefbconfig34_sums_result_add_0_0(ADD,500)@136
    assign i_mul_glfwchoosefbconfig34_sums_result_add_0_0_a = {1'b0, i_mul_glfwchoosefbconfig34_sums_join_0_q};
    assign i_mul_glfwchoosefbconfig34_sums_result_add_0_0_b = {14'b00000000000000, i_mul_glfwchoosefbconfig34_sums_align_1_q};
    assign i_mul_glfwchoosefbconfig34_sums_result_add_0_0_o = $unsigned(i_mul_glfwchoosefbconfig34_sums_result_add_0_0_a) + $unsigned(i_mul_glfwchoosefbconfig34_sums_result_add_0_0_b);
    assign i_mul_glfwchoosefbconfig34_sums_result_add_0_0_q = i_mul_glfwchoosefbconfig34_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_glfwchoosefbconfig34_sel_x(BITSELECT,256)@136
    assign bgTrunc_i_mul_glfwchoosefbconfig34_sel_x_in = i_mul_glfwchoosefbconfig34_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_glfwchoosefbconfig34_sel_x_b = bgTrunc_i_mul_glfwchoosefbconfig34_sel_x_in[31:0];

    // i_mul_glfwchoosefbconfig34_vt_select_30(BITSELECT,176)@136
    assign i_mul_glfwchoosefbconfig34_vt_select_30_b = bgTrunc_i_mul_glfwchoosefbconfig34_sel_x_b[30:0];

    // i_mul_glfwchoosefbconfig34_vt_join(BITJOIN,175)@136
    assign i_mul_glfwchoosefbconfig34_vt_join_q = {GND_q, i_mul_glfwchoosefbconfig34_vt_select_30_b};

    // redist1_sync_together140_aunroll_x_in_c1_eni48_15_tpl_3(DELAY,546)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together140_aunroll_x_in_c1_eni48_15_tpl_3_delay_0 <= '0;
            redist1_sync_together140_aunroll_x_in_c1_eni48_15_tpl_3_delay_1 <= '0;
            redist1_sync_together140_aunroll_x_in_c1_eni48_15_tpl_3_q <= '0;
        end
        else
        begin
            redist1_sync_together140_aunroll_x_in_c1_eni48_15_tpl_3_delay_0 <= $unsigned(in_c1_eni48_15_tpl);
            redist1_sync_together140_aunroll_x_in_c1_eni48_15_tpl_3_delay_1 <= redist1_sync_together140_aunroll_x_in_c1_eni48_15_tpl_3_delay_0;
            redist1_sync_together140_aunroll_x_in_c1_eni48_15_tpl_3_q <= redist1_sync_together140_aunroll_x_in_c1_eni48_15_tpl_3_delay_1;
        end
    end

    // i_acl_5_glfwchoosefbconfig35(MUX,58)@136
    assign i_acl_5_glfwchoosefbconfig35_s = redist1_sync_together140_aunroll_x_in_c1_eni48_15_tpl_3_q;
    always @(i_acl_5_glfwchoosefbconfig35_s or c_i32_0129_q or i_mul_glfwchoosefbconfig34_vt_join_q)
    begin
        unique case (i_acl_5_glfwchoosefbconfig35_s)
            1'b0 : i_acl_5_glfwchoosefbconfig35_q = c_i32_0129_q;
            1'b1 : i_acl_5_glfwchoosefbconfig35_q = i_mul_glfwchoosefbconfig34_vt_join_q;
            default : i_acl_5_glfwchoosefbconfig35_q = 32'b0;
        endcase
    end

    // i_acl_5_glfwchoosefbconfig35_vt_select_30(BITSELECT,61)@136
    assign i_acl_5_glfwchoosefbconfig35_vt_select_30_b = i_acl_5_glfwchoosefbconfig35_q[30:0];

    // redist33_i_acl_5_glfwchoosefbconfig35_vt_select_30_b_1(DELAY,578)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_acl_5_glfwchoosefbconfig35_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist33_i_acl_5_glfwchoosefbconfig35_vt_select_30_b_1_q <= $unsigned(i_acl_5_glfwchoosefbconfig35_vt_select_30_b);
        end
    end

    // i_acl_5_glfwchoosefbconfig35_vt_join(BITJOIN,60)@137
    assign i_acl_5_glfwchoosefbconfig35_vt_join_q = {GND_q, redist33_i_acl_5_glfwchoosefbconfig35_vt_select_30_b_1_q};

    // i_acl_6_glfwchoosefbconfig39(ADD,62)@137
    assign i_acl_6_glfwchoosefbconfig39_a = {1'b0, i_acl_5_glfwchoosefbconfig35_vt_join_q};
    assign i_acl_6_glfwchoosefbconfig39_b = {1'b0, i_add63_glfwchoosefbconfig38_vt_join_q};
    assign i_acl_6_glfwchoosefbconfig39_o = $unsigned(i_acl_6_glfwchoosefbconfig39_a) + $unsigned(i_acl_6_glfwchoosefbconfig39_b);
    assign i_acl_6_glfwchoosefbconfig39_q = i_acl_6_glfwchoosefbconfig39_o[32:0];

    // bgTrunc_i_acl_6_glfwchoosefbconfig39_sel_x(BITSELECT,244)@137
    assign bgTrunc_i_acl_6_glfwchoosefbconfig39_sel_x_b = i_acl_6_glfwchoosefbconfig39_q[31:0];

    // i_acl_7_glfwchoosefbconfig43(ADD,63)@137
    assign i_acl_7_glfwchoosefbconfig43_a = {1'b0, bgTrunc_i_acl_6_glfwchoosefbconfig39_sel_x_b};
    assign i_acl_7_glfwchoosefbconfig43_b = {1'b0, i_add74_glfwchoosefbconfig42_vt_join_q};
    assign i_acl_7_glfwchoosefbconfig43_o = $unsigned(i_acl_7_glfwchoosefbconfig43_a) + $unsigned(i_acl_7_glfwchoosefbconfig43_b);
    assign i_acl_7_glfwchoosefbconfig43_q = i_acl_7_glfwchoosefbconfig43_o[32:0];

    // bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x(BITSELECT,245)@137
    assign bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b = i_acl_7_glfwchoosefbconfig43_q[31:0];

    // redist20_bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b_2(DELAY,565)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b_2_delay_0 <= '0;
            redist20_bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist20_bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b_2_delay_0 <= $unsigned(bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b);
            redist20_bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b_2_q <= redist20_bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b_2_delay_0;
        end
    end

    // i_cmp178_glfwchoosefbconfig83(COMPARE,107)@139
    assign i_cmp178_glfwchoosefbconfig83_a = {2'b00, redist20_bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b_2_q};
    assign i_cmp178_glfwchoosefbconfig83_b = {2'b00, i_leastcolordiff_0134_replace_phi_glfwchoosefbconfig7_q};
    assign i_cmp178_glfwchoosefbconfig83_o = $unsigned(i_cmp178_glfwchoosefbconfig83_a) - $unsigned(i_cmp178_glfwchoosefbconfig83_b);
    assign i_cmp178_glfwchoosefbconfig83_c[0] = i_cmp178_glfwchoosefbconfig83_o[33];

    // i_reduction_glfwchoosefbconfig_18_glfwchoosefbconfig90(LOGICAL,192)@139
    assign i_reduction_glfwchoosefbconfig_18_glfwchoosefbconfig90_q = i_cmp178_glfwchoosefbconfig83_c ^ VCC_q;

    // valid_fanout_reg1(REG,288)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig28_glfwchoosefbconfig2(BLACKBOX,118)@139
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000045Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig28_glfwchoosefbconfig2 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig28_glfwchoosefbconfig2_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,289)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg10(REG,297)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig109(MUX,195)@139
    assign i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig109_s = i_selcond_glfwchoosefbconfig_1_glfwchoosefbconfig104_q;
    always @(i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig109_s or i_leastextradiff_0135_replace_phi_glfwchoosefbconfig4_q or redist17_bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_sel_x_b_1_q)
    begin
        unique case (i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig109_s)
            1'b0 : i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig109_q = i_leastextradiff_0135_replace_phi_glfwchoosefbconfig4_q;
            1'b1 : i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig109_q = redist17_bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_sel_x_b_1_q;
            default : i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig109_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_leastextradiff_0135_push8_glfwchoosefbconfig110(BLACKBOX,130)@139
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i32_A000002Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i32_leastextradiff_0135_push8_glfwchoosefbconfig110 (
        .in_c1_ene47(redist13_sync_together140_aunroll_x_in_c1_eni48_47_tpl_6_q),
        .in_data_in(i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig109_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_leastextradiff_0135_pop8_glfwchoosefbconfig3_out_feedback_stall_out_8),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_leastextradiff_0135_push8_glfwchoosefbconfig110_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_leastextradiff_0135_push8_glfwchoosefbconfig110_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_leastextradiff_0135_pop8_glfwchoosefbconfig3(BLACKBOX,126)@139
    // out out_feedback_stall_out_8@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_i32_lA000001Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_i32_leastextradiff_0135_pop8_glfwchoosefbconfig3 (
        .in_data_in(c_i32_0129_q),
        .in_dir(redist0_sync_together140_aunroll_x_in_c1_eni48_1_tpl_6_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_leastextradiff_0135_push8_glfwchoosefbconfig110_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_leastextradiff_0135_push8_glfwchoosefbconfig110_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_leastextradiff_0135_pop8_glfwchoosefbconfig3_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_leastextradiff_0135_pop8_glfwchoosefbconfig3_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_leastextradiff_0135_replace_phi_glfwchoosefbconfig4(MUX,116)@139
    assign i_leastextradiff_0135_replace_phi_glfwchoosefbconfig4_s = redist0_sync_together140_aunroll_x_in_c1_eni48_1_tpl_6_q;
    always @(i_leastextradiff_0135_replace_phi_glfwchoosefbconfig4_s or i_llvm_fpga_pop_i32_leastextradiff_0135_pop8_glfwchoosefbconfig3_out_data_out or i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig28_glfwchoosefbconfig2_out_dest_data_out_1_0)
    begin
        unique case (i_leastextradiff_0135_replace_phi_glfwchoosefbconfig4_s)
            1'b0 : i_leastextradiff_0135_replace_phi_glfwchoosefbconfig4_q = i_llvm_fpga_pop_i32_leastextradiff_0135_pop8_glfwchoosefbconfig3_out_data_out;
            1'b1 : i_leastextradiff_0135_replace_phi_glfwchoosefbconfig4_q = i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig28_glfwchoosefbconfig2_out_dest_data_out_1_0;
            default : i_leastextradiff_0135_replace_phi_glfwchoosefbconfig4_q = 32'b0;
        endcase
    end

    // i_sub161_glfwchoosefbconfig65(SUB,216)@133
    assign i_sub161_glfwchoosefbconfig65_a = {1'b0, in_c1_eni48_40_tpl};
    assign i_sub161_glfwchoosefbconfig65_b = {1'b0, in_c1_eni48_11_tpl};
    assign i_sub161_glfwchoosefbconfig65_o = $unsigned(i_sub161_glfwchoosefbconfig65_a) - $unsigned(i_sub161_glfwchoosefbconfig65_b);
    assign i_sub161_glfwchoosefbconfig65_q = i_sub161_glfwchoosefbconfig65_o[32:0];

    // bgTrunc_i_sub161_glfwchoosefbconfig65_sel_x(BITSELECT,271)@133
    assign bgTrunc_i_sub161_glfwchoosefbconfig65_sel_x_b = $unsigned(i_sub161_glfwchoosefbconfig65_q[31:0]);

    // i_mul165_glfwchoosefbconfig66_bs1_merged_bit_select(BITSELECT,539)@133
    assign i_mul165_glfwchoosefbconfig66_bs1_merged_bit_select_b = bgTrunc_i_sub161_glfwchoosefbconfig65_sel_x_b[31:18];
    assign i_mul165_glfwchoosefbconfig66_bs1_merged_bit_select_c = bgTrunc_i_sub161_glfwchoosefbconfig65_sel_x_b[17:0];

    // i_mul165_glfwchoosefbconfig66_ma3_cma(CHAINMULTADD,528)@133 + 3
    assign i_mul165_glfwchoosefbconfig66_ma3_cma_reset = ~ (resetn);
    assign i_mul165_glfwchoosefbconfig66_ma3_cma_ena0 = 1'b1;
    assign i_mul165_glfwchoosefbconfig66_ma3_cma_ena1 = i_mul165_glfwchoosefbconfig66_ma3_cma_ena0;
    assign i_mul165_glfwchoosefbconfig66_ma3_cma_ena2 = i_mul165_glfwchoosefbconfig66_ma3_cma_ena0;

    assign i_mul165_glfwchoosefbconfig66_ma3_cma_a0 = i_mul165_glfwchoosefbconfig66_bs1_merged_bit_select_b;
    assign i_mul165_glfwchoosefbconfig66_ma3_cma_c0 = i_mul165_glfwchoosefbconfig66_bs1_merged_bit_select_c;
    assign i_mul165_glfwchoosefbconfig66_ma3_cma_a1 = i_mul165_glfwchoosefbconfig66_bs1_merged_bit_select_b;
    assign i_mul165_glfwchoosefbconfig66_ma3_cma_c1 = i_mul165_glfwchoosefbconfig66_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul165_glfwchoosefbconfig66_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul165_glfwchoosefbconfig66_ma3_cma_ena2, i_mul165_glfwchoosefbconfig66_ma3_cma_ena1, i_mul165_glfwchoosefbconfig66_ma3_cma_ena0 }),
        .aclr({ i_mul165_glfwchoosefbconfig66_ma3_cma_reset, i_mul165_glfwchoosefbconfig66_ma3_cma_reset }),
        .ay(i_mul165_glfwchoosefbconfig66_ma3_cma_a1),
        .by(i_mul165_glfwchoosefbconfig66_ma3_cma_a0),
        .ax(i_mul165_glfwchoosefbconfig66_ma3_cma_c1),
        .bx(i_mul165_glfwchoosefbconfig66_ma3_cma_c0),
        .resulta(i_mul165_glfwchoosefbconfig66_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul165_glfwchoosefbconfig66_ma3_cma_delay ( .xin(i_mul165_glfwchoosefbconfig66_ma3_cma_s0), .xout(i_mul165_glfwchoosefbconfig66_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul165_glfwchoosefbconfig66_ma3_cma_q = $unsigned(i_mul165_glfwchoosefbconfig66_ma3_cma_qq[32:0]);

    // i_mul165_glfwchoosefbconfig66_sums_align_1(BITSHIFT,423)@136
    assign i_mul165_glfwchoosefbconfig66_sums_align_1_qint = { i_mul165_glfwchoosefbconfig66_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul165_glfwchoosefbconfig66_sums_align_1_q = i_mul165_glfwchoosefbconfig66_sums_align_1_qint[50:0];

    // i_mul165_glfwchoosefbconfig66_im0_cma(CHAINMULTADD,511)@133 + 3
    assign i_mul165_glfwchoosefbconfig66_im0_cma_reset = ~ (resetn);
    assign i_mul165_glfwchoosefbconfig66_im0_cma_ena0 = 1'b1;
    assign i_mul165_glfwchoosefbconfig66_im0_cma_ena1 = i_mul165_glfwchoosefbconfig66_im0_cma_ena0;
    assign i_mul165_glfwchoosefbconfig66_im0_cma_ena2 = i_mul165_glfwchoosefbconfig66_im0_cma_ena0;

    assign i_mul165_glfwchoosefbconfig66_im0_cma_a0 = i_mul165_glfwchoosefbconfig66_bs1_merged_bit_select_b;
    assign i_mul165_glfwchoosefbconfig66_im0_cma_c0 = i_mul165_glfwchoosefbconfig66_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul165_glfwchoosefbconfig66_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul165_glfwchoosefbconfig66_im0_cma_ena2, i_mul165_glfwchoosefbconfig66_im0_cma_ena1, i_mul165_glfwchoosefbconfig66_im0_cma_ena0 }),
        .aclr({ i_mul165_glfwchoosefbconfig66_im0_cma_reset, i_mul165_glfwchoosefbconfig66_im0_cma_reset }),
        .ay(i_mul165_glfwchoosefbconfig66_im0_cma_a0),
        .ax(i_mul165_glfwchoosefbconfig66_im0_cma_c0),
        .resulta(i_mul165_glfwchoosefbconfig66_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul165_glfwchoosefbconfig66_im0_cma_delay ( .xin(i_mul165_glfwchoosefbconfig66_im0_cma_s0), .xout(i_mul165_glfwchoosefbconfig66_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul165_glfwchoosefbconfig66_im0_cma_q = $unsigned(i_mul165_glfwchoosefbconfig66_im0_cma_qq[27:0]);

    // i_mul165_glfwchoosefbconfig66_im8_cma(CHAINMULTADD,512)@133 + 3
    assign i_mul165_glfwchoosefbconfig66_im8_cma_reset = ~ (resetn);
    assign i_mul165_glfwchoosefbconfig66_im8_cma_ena0 = 1'b1;
    assign i_mul165_glfwchoosefbconfig66_im8_cma_ena1 = i_mul165_glfwchoosefbconfig66_im8_cma_ena0;
    assign i_mul165_glfwchoosefbconfig66_im8_cma_ena2 = i_mul165_glfwchoosefbconfig66_im8_cma_ena0;

    assign i_mul165_glfwchoosefbconfig66_im8_cma_a0 = i_mul165_glfwchoosefbconfig66_bs1_merged_bit_select_c;
    assign i_mul165_glfwchoosefbconfig66_im8_cma_c0 = i_mul165_glfwchoosefbconfig66_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul165_glfwchoosefbconfig66_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul165_glfwchoosefbconfig66_im8_cma_ena2, i_mul165_glfwchoosefbconfig66_im8_cma_ena1, i_mul165_glfwchoosefbconfig66_im8_cma_ena0 }),
        .aclr({ i_mul165_glfwchoosefbconfig66_im8_cma_reset, i_mul165_glfwchoosefbconfig66_im8_cma_reset }),
        .ay(i_mul165_glfwchoosefbconfig66_im8_cma_a0),
        .ax(i_mul165_glfwchoosefbconfig66_im8_cma_c0),
        .resulta(i_mul165_glfwchoosefbconfig66_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul165_glfwchoosefbconfig66_im8_cma_delay ( .xin(i_mul165_glfwchoosefbconfig66_im8_cma_s0), .xout(i_mul165_glfwchoosefbconfig66_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul165_glfwchoosefbconfig66_im8_cma_q = $unsigned(i_mul165_glfwchoosefbconfig66_im8_cma_qq[35:0]);

    // i_mul165_glfwchoosefbconfig66_sums_join_0(BITJOIN,422)@136
    assign i_mul165_glfwchoosefbconfig66_sums_join_0_q = {i_mul165_glfwchoosefbconfig66_im0_cma_q, i_mul165_glfwchoosefbconfig66_im8_cma_q};

    // i_mul165_glfwchoosefbconfig66_sums_result_add_0_0(ADD,425)@136
    assign i_mul165_glfwchoosefbconfig66_sums_result_add_0_0_a = {1'b0, i_mul165_glfwchoosefbconfig66_sums_join_0_q};
    assign i_mul165_glfwchoosefbconfig66_sums_result_add_0_0_b = {14'b00000000000000, i_mul165_glfwchoosefbconfig66_sums_align_1_q};
    assign i_mul165_glfwchoosefbconfig66_sums_result_add_0_0_o = $unsigned(i_mul165_glfwchoosefbconfig66_sums_result_add_0_0_a) + $unsigned(i_mul165_glfwchoosefbconfig66_sums_result_add_0_0_b);
    assign i_mul165_glfwchoosefbconfig66_sums_result_add_0_0_q = i_mul165_glfwchoosefbconfig66_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul165_glfwchoosefbconfig66_sel_x(BITSELECT,251)@136
    assign bgTrunc_i_mul165_glfwchoosefbconfig66_sel_x_in = i_mul165_glfwchoosefbconfig66_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul165_glfwchoosefbconfig66_sel_x_b = bgTrunc_i_mul165_glfwchoosefbconfig66_sel_x_in[31:0];

    // i_mul165_glfwchoosefbconfig66_vt_select_30(BITSELECT,156)@136
    assign i_mul165_glfwchoosefbconfig66_vt_select_30_b = bgTrunc_i_mul165_glfwchoosefbconfig66_sel_x_b[30:0];

    // i_mul165_glfwchoosefbconfig66_vt_join(BITJOIN,155)@136
    assign i_mul165_glfwchoosefbconfig66_vt_join_q = {GND_q, i_mul165_glfwchoosefbconfig66_vt_select_30_b};

    // redist11_sync_together140_aunroll_x_in_c1_eni48_41_tpl_3(DELAY,556)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together140_aunroll_x_in_c1_eni48_41_tpl_3_delay_0 <= '0;
            redist11_sync_together140_aunroll_x_in_c1_eni48_41_tpl_3_delay_1 <= '0;
            redist11_sync_together140_aunroll_x_in_c1_eni48_41_tpl_3_q <= '0;
        end
        else
        begin
            redist11_sync_together140_aunroll_x_in_c1_eni48_41_tpl_3_delay_0 <= $unsigned(in_c1_eni48_41_tpl);
            redist11_sync_together140_aunroll_x_in_c1_eni48_41_tpl_3_delay_1 <= redist11_sync_together140_aunroll_x_in_c1_eni48_41_tpl_3_delay_0;
            redist11_sync_together140_aunroll_x_in_c1_eni48_41_tpl_3_q <= redist11_sync_together140_aunroll_x_in_c1_eni48_41_tpl_3_delay_1;
        end
    end

    // i_add166_glfwchoosefbconfig67(MUX,88)@136
    assign i_add166_glfwchoosefbconfig67_s = redist11_sync_together140_aunroll_x_in_c1_eni48_41_tpl_3_q;
    always @(i_add166_glfwchoosefbconfig67_s or c_i32_0129_q or i_mul165_glfwchoosefbconfig66_vt_join_q)
    begin
        unique case (i_add166_glfwchoosefbconfig67_s)
            1'b0 : i_add166_glfwchoosefbconfig67_q = c_i32_0129_q;
            1'b1 : i_add166_glfwchoosefbconfig67_q = i_mul165_glfwchoosefbconfig66_vt_join_q;
            default : i_add166_glfwchoosefbconfig67_q = 32'b0;
        endcase
    end

    // i_add166_glfwchoosefbconfig67_vt_select_30(BITSELECT,91)@136
    assign i_add166_glfwchoosefbconfig67_vt_select_30_b = i_add166_glfwchoosefbconfig67_q[30:0];

    // redist26_i_add166_glfwchoosefbconfig67_vt_select_30_b_1(DELAY,571)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_add166_glfwchoosefbconfig67_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist26_i_add166_glfwchoosefbconfig67_vt_select_30_b_1_q <= $unsigned(i_add166_glfwchoosefbconfig67_vt_select_30_b);
        end
    end

    // i_add166_glfwchoosefbconfig67_vt_join(BITJOIN,90)@137
    assign i_add166_glfwchoosefbconfig67_vt_join_q = {GND_q, redist26_i_add166_glfwchoosefbconfig67_vt_select_30_b_1_q};

    // i_sub149_glfwchoosefbconfig62(SUB,215)@133
    assign i_sub149_glfwchoosefbconfig62_a = {1'b0, in_c1_eni48_37_tpl};
    assign i_sub149_glfwchoosefbconfig62_b = {1'b0, in_c1_eni48_38_tpl};
    assign i_sub149_glfwchoosefbconfig62_o = $unsigned(i_sub149_glfwchoosefbconfig62_a) - $unsigned(i_sub149_glfwchoosefbconfig62_b);
    assign i_sub149_glfwchoosefbconfig62_q = i_sub149_glfwchoosefbconfig62_o[32:0];

    // bgTrunc_i_sub149_glfwchoosefbconfig62_sel_x(BITSELECT,270)@133
    assign bgTrunc_i_sub149_glfwchoosefbconfig62_sel_x_b = $unsigned(i_sub149_glfwchoosefbconfig62_q[31:0]);

    // i_mul153_glfwchoosefbconfig63_bs1_merged_bit_select(BITSELECT,538)@133
    assign i_mul153_glfwchoosefbconfig63_bs1_merged_bit_select_b = bgTrunc_i_sub149_glfwchoosefbconfig62_sel_x_b[31:18];
    assign i_mul153_glfwchoosefbconfig63_bs1_merged_bit_select_c = bgTrunc_i_sub149_glfwchoosefbconfig62_sel_x_b[17:0];

    // i_mul153_glfwchoosefbconfig63_ma3_cma(CHAINMULTADD,527)@133 + 3
    assign i_mul153_glfwchoosefbconfig63_ma3_cma_reset = ~ (resetn);
    assign i_mul153_glfwchoosefbconfig63_ma3_cma_ena0 = 1'b1;
    assign i_mul153_glfwchoosefbconfig63_ma3_cma_ena1 = i_mul153_glfwchoosefbconfig63_ma3_cma_ena0;
    assign i_mul153_glfwchoosefbconfig63_ma3_cma_ena2 = i_mul153_glfwchoosefbconfig63_ma3_cma_ena0;

    assign i_mul153_glfwchoosefbconfig63_ma3_cma_a0 = i_mul153_glfwchoosefbconfig63_bs1_merged_bit_select_b;
    assign i_mul153_glfwchoosefbconfig63_ma3_cma_c0 = i_mul153_glfwchoosefbconfig63_bs1_merged_bit_select_c;
    assign i_mul153_glfwchoosefbconfig63_ma3_cma_a1 = i_mul153_glfwchoosefbconfig63_bs1_merged_bit_select_b;
    assign i_mul153_glfwchoosefbconfig63_ma3_cma_c1 = i_mul153_glfwchoosefbconfig63_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul153_glfwchoosefbconfig63_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul153_glfwchoosefbconfig63_ma3_cma_ena2, i_mul153_glfwchoosefbconfig63_ma3_cma_ena1, i_mul153_glfwchoosefbconfig63_ma3_cma_ena0 }),
        .aclr({ i_mul153_glfwchoosefbconfig63_ma3_cma_reset, i_mul153_glfwchoosefbconfig63_ma3_cma_reset }),
        .ay(i_mul153_glfwchoosefbconfig63_ma3_cma_a1),
        .by(i_mul153_glfwchoosefbconfig63_ma3_cma_a0),
        .ax(i_mul153_glfwchoosefbconfig63_ma3_cma_c1),
        .bx(i_mul153_glfwchoosefbconfig63_ma3_cma_c0),
        .resulta(i_mul153_glfwchoosefbconfig63_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul153_glfwchoosefbconfig63_ma3_cma_delay ( .xin(i_mul153_glfwchoosefbconfig63_ma3_cma_s0), .xout(i_mul153_glfwchoosefbconfig63_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul153_glfwchoosefbconfig63_ma3_cma_q = $unsigned(i_mul153_glfwchoosefbconfig63_ma3_cma_qq[32:0]);

    // i_mul153_glfwchoosefbconfig63_sums_align_1(BITSHIFT,408)@136
    assign i_mul153_glfwchoosefbconfig63_sums_align_1_qint = { i_mul153_glfwchoosefbconfig63_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul153_glfwchoosefbconfig63_sums_align_1_q = i_mul153_glfwchoosefbconfig63_sums_align_1_qint[50:0];

    // i_mul153_glfwchoosefbconfig63_im0_cma(CHAINMULTADD,509)@133 + 3
    assign i_mul153_glfwchoosefbconfig63_im0_cma_reset = ~ (resetn);
    assign i_mul153_glfwchoosefbconfig63_im0_cma_ena0 = 1'b1;
    assign i_mul153_glfwchoosefbconfig63_im0_cma_ena1 = i_mul153_glfwchoosefbconfig63_im0_cma_ena0;
    assign i_mul153_glfwchoosefbconfig63_im0_cma_ena2 = i_mul153_glfwchoosefbconfig63_im0_cma_ena0;

    assign i_mul153_glfwchoosefbconfig63_im0_cma_a0 = i_mul153_glfwchoosefbconfig63_bs1_merged_bit_select_b;
    assign i_mul153_glfwchoosefbconfig63_im0_cma_c0 = i_mul153_glfwchoosefbconfig63_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul153_glfwchoosefbconfig63_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul153_glfwchoosefbconfig63_im0_cma_ena2, i_mul153_glfwchoosefbconfig63_im0_cma_ena1, i_mul153_glfwchoosefbconfig63_im0_cma_ena0 }),
        .aclr({ i_mul153_glfwchoosefbconfig63_im0_cma_reset, i_mul153_glfwchoosefbconfig63_im0_cma_reset }),
        .ay(i_mul153_glfwchoosefbconfig63_im0_cma_a0),
        .ax(i_mul153_glfwchoosefbconfig63_im0_cma_c0),
        .resulta(i_mul153_glfwchoosefbconfig63_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul153_glfwchoosefbconfig63_im0_cma_delay ( .xin(i_mul153_glfwchoosefbconfig63_im0_cma_s0), .xout(i_mul153_glfwchoosefbconfig63_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul153_glfwchoosefbconfig63_im0_cma_q = $unsigned(i_mul153_glfwchoosefbconfig63_im0_cma_qq[27:0]);

    // i_mul153_glfwchoosefbconfig63_im8_cma(CHAINMULTADD,510)@133 + 3
    assign i_mul153_glfwchoosefbconfig63_im8_cma_reset = ~ (resetn);
    assign i_mul153_glfwchoosefbconfig63_im8_cma_ena0 = 1'b1;
    assign i_mul153_glfwchoosefbconfig63_im8_cma_ena1 = i_mul153_glfwchoosefbconfig63_im8_cma_ena0;
    assign i_mul153_glfwchoosefbconfig63_im8_cma_ena2 = i_mul153_glfwchoosefbconfig63_im8_cma_ena0;

    assign i_mul153_glfwchoosefbconfig63_im8_cma_a0 = i_mul153_glfwchoosefbconfig63_bs1_merged_bit_select_c;
    assign i_mul153_glfwchoosefbconfig63_im8_cma_c0 = i_mul153_glfwchoosefbconfig63_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul153_glfwchoosefbconfig63_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul153_glfwchoosefbconfig63_im8_cma_ena2, i_mul153_glfwchoosefbconfig63_im8_cma_ena1, i_mul153_glfwchoosefbconfig63_im8_cma_ena0 }),
        .aclr({ i_mul153_glfwchoosefbconfig63_im8_cma_reset, i_mul153_glfwchoosefbconfig63_im8_cma_reset }),
        .ay(i_mul153_glfwchoosefbconfig63_im8_cma_a0),
        .ax(i_mul153_glfwchoosefbconfig63_im8_cma_c0),
        .resulta(i_mul153_glfwchoosefbconfig63_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul153_glfwchoosefbconfig63_im8_cma_delay ( .xin(i_mul153_glfwchoosefbconfig63_im8_cma_s0), .xout(i_mul153_glfwchoosefbconfig63_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul153_glfwchoosefbconfig63_im8_cma_q = $unsigned(i_mul153_glfwchoosefbconfig63_im8_cma_qq[35:0]);

    // i_mul153_glfwchoosefbconfig63_sums_join_0(BITJOIN,407)@136
    assign i_mul153_glfwchoosefbconfig63_sums_join_0_q = {i_mul153_glfwchoosefbconfig63_im0_cma_q, i_mul153_glfwchoosefbconfig63_im8_cma_q};

    // i_mul153_glfwchoosefbconfig63_sums_result_add_0_0(ADD,410)@136
    assign i_mul153_glfwchoosefbconfig63_sums_result_add_0_0_a = {1'b0, i_mul153_glfwchoosefbconfig63_sums_join_0_q};
    assign i_mul153_glfwchoosefbconfig63_sums_result_add_0_0_b = {14'b00000000000000, i_mul153_glfwchoosefbconfig63_sums_align_1_q};
    assign i_mul153_glfwchoosefbconfig63_sums_result_add_0_0_o = $unsigned(i_mul153_glfwchoosefbconfig63_sums_result_add_0_0_a) + $unsigned(i_mul153_glfwchoosefbconfig63_sums_result_add_0_0_b);
    assign i_mul153_glfwchoosefbconfig63_sums_result_add_0_0_q = i_mul153_glfwchoosefbconfig63_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul153_glfwchoosefbconfig63_sel_x(BITSELECT,250)@136
    assign bgTrunc_i_mul153_glfwchoosefbconfig63_sel_x_in = i_mul153_glfwchoosefbconfig63_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul153_glfwchoosefbconfig63_sel_x_b = bgTrunc_i_mul153_glfwchoosefbconfig63_sel_x_in[31:0];

    // i_mul153_glfwchoosefbconfig63_vt_select_30(BITSELECT,152)@136
    assign i_mul153_glfwchoosefbconfig63_vt_select_30_b = bgTrunc_i_mul153_glfwchoosefbconfig63_sel_x_b[30:0];

    // i_mul153_glfwchoosefbconfig63_vt_join(BITJOIN,151)@136
    assign i_mul153_glfwchoosefbconfig63_vt_join_q = {GND_q, i_mul153_glfwchoosefbconfig63_vt_select_30_b};

    // redist10_sync_together140_aunroll_x_in_c1_eni48_39_tpl_3(DELAY,555)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together140_aunroll_x_in_c1_eni48_39_tpl_3_delay_0 <= '0;
            redist10_sync_together140_aunroll_x_in_c1_eni48_39_tpl_3_delay_1 <= '0;
            redist10_sync_together140_aunroll_x_in_c1_eni48_39_tpl_3_q <= '0;
        end
        else
        begin
            redist10_sync_together140_aunroll_x_in_c1_eni48_39_tpl_3_delay_0 <= $unsigned(in_c1_eni48_39_tpl);
            redist10_sync_together140_aunroll_x_in_c1_eni48_39_tpl_3_delay_1 <= redist10_sync_together140_aunroll_x_in_c1_eni48_39_tpl_3_delay_0;
            redist10_sync_together140_aunroll_x_in_c1_eni48_39_tpl_3_q <= redist10_sync_together140_aunroll_x_in_c1_eni48_39_tpl_3_delay_1;
        end
    end

    // i_add154_glfwchoosefbconfig64(MUX,84)@136
    assign i_add154_glfwchoosefbconfig64_s = redist10_sync_together140_aunroll_x_in_c1_eni48_39_tpl_3_q;
    always @(i_add154_glfwchoosefbconfig64_s or c_i32_0129_q or i_mul153_glfwchoosefbconfig63_vt_join_q)
    begin
        unique case (i_add154_glfwchoosefbconfig64_s)
            1'b0 : i_add154_glfwchoosefbconfig64_q = c_i32_0129_q;
            1'b1 : i_add154_glfwchoosefbconfig64_q = i_mul153_glfwchoosefbconfig63_vt_join_q;
            default : i_add154_glfwchoosefbconfig64_q = 32'b0;
        endcase
    end

    // i_add154_glfwchoosefbconfig64_vt_select_30(BITSELECT,87)@136
    assign i_add154_glfwchoosefbconfig64_vt_select_30_b = i_add154_glfwchoosefbconfig64_q[30:0];

    // redist27_i_add154_glfwchoosefbconfig64_vt_select_30_b_1(DELAY,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_add154_glfwchoosefbconfig64_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist27_i_add154_glfwchoosefbconfig64_vt_select_30_b_1_q <= $unsigned(i_add154_glfwchoosefbconfig64_vt_select_30_b);
        end
    end

    // i_add154_glfwchoosefbconfig64_vt_join(BITJOIN,86)@137
    assign i_add154_glfwchoosefbconfig64_vt_join_q = {GND_q, redist27_i_add154_glfwchoosefbconfig64_vt_select_30_b_1_q};

    // i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75(ADD,185)@137
    assign i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_a = {1'b0, i_add154_glfwchoosefbconfig64_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_b = {1'b0, i_add166_glfwchoosefbconfig67_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_o = $unsigned(i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_a) + $unsigned(i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_b);
    assign i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_q = i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_sel_x(BITSELECT,258)@137
    assign bgTrunc_i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_sel_x_b = i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_q[31:0];

    // i_sub138_glfwchoosefbconfig59(SUB,214)@133
    assign i_sub138_glfwchoosefbconfig59_a = {1'b0, in_c1_eni48_34_tpl};
    assign i_sub138_glfwchoosefbconfig59_b = {1'b0, in_c1_eni48_35_tpl};
    assign i_sub138_glfwchoosefbconfig59_o = $unsigned(i_sub138_glfwchoosefbconfig59_a) - $unsigned(i_sub138_glfwchoosefbconfig59_b);
    assign i_sub138_glfwchoosefbconfig59_q = i_sub138_glfwchoosefbconfig59_o[32:0];

    // bgTrunc_i_sub138_glfwchoosefbconfig59_sel_x(BITSELECT,269)@133
    assign bgTrunc_i_sub138_glfwchoosefbconfig59_sel_x_b = $unsigned(i_sub138_glfwchoosefbconfig59_q[31:0]);

    // i_mul142_glfwchoosefbconfig60_bs1_merged_bit_select(BITSELECT,537)@133
    assign i_mul142_glfwchoosefbconfig60_bs1_merged_bit_select_b = bgTrunc_i_sub138_glfwchoosefbconfig59_sel_x_b[31:18];
    assign i_mul142_glfwchoosefbconfig60_bs1_merged_bit_select_c = bgTrunc_i_sub138_glfwchoosefbconfig59_sel_x_b[17:0];

    // i_mul142_glfwchoosefbconfig60_ma3_cma(CHAINMULTADD,526)@133 + 3
    assign i_mul142_glfwchoosefbconfig60_ma3_cma_reset = ~ (resetn);
    assign i_mul142_glfwchoosefbconfig60_ma3_cma_ena0 = 1'b1;
    assign i_mul142_glfwchoosefbconfig60_ma3_cma_ena1 = i_mul142_glfwchoosefbconfig60_ma3_cma_ena0;
    assign i_mul142_glfwchoosefbconfig60_ma3_cma_ena2 = i_mul142_glfwchoosefbconfig60_ma3_cma_ena0;

    assign i_mul142_glfwchoosefbconfig60_ma3_cma_a0 = i_mul142_glfwchoosefbconfig60_bs1_merged_bit_select_b;
    assign i_mul142_glfwchoosefbconfig60_ma3_cma_c0 = i_mul142_glfwchoosefbconfig60_bs1_merged_bit_select_c;
    assign i_mul142_glfwchoosefbconfig60_ma3_cma_a1 = i_mul142_glfwchoosefbconfig60_bs1_merged_bit_select_b;
    assign i_mul142_glfwchoosefbconfig60_ma3_cma_c1 = i_mul142_glfwchoosefbconfig60_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul142_glfwchoosefbconfig60_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul142_glfwchoosefbconfig60_ma3_cma_ena2, i_mul142_glfwchoosefbconfig60_ma3_cma_ena1, i_mul142_glfwchoosefbconfig60_ma3_cma_ena0 }),
        .aclr({ i_mul142_glfwchoosefbconfig60_ma3_cma_reset, i_mul142_glfwchoosefbconfig60_ma3_cma_reset }),
        .ay(i_mul142_glfwchoosefbconfig60_ma3_cma_a1),
        .by(i_mul142_glfwchoosefbconfig60_ma3_cma_a0),
        .ax(i_mul142_glfwchoosefbconfig60_ma3_cma_c1),
        .bx(i_mul142_glfwchoosefbconfig60_ma3_cma_c0),
        .resulta(i_mul142_glfwchoosefbconfig60_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul142_glfwchoosefbconfig60_ma3_cma_delay ( .xin(i_mul142_glfwchoosefbconfig60_ma3_cma_s0), .xout(i_mul142_glfwchoosefbconfig60_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul142_glfwchoosefbconfig60_ma3_cma_q = $unsigned(i_mul142_glfwchoosefbconfig60_ma3_cma_qq[32:0]);

    // i_mul142_glfwchoosefbconfig60_sums_align_1(BITSHIFT,393)@136
    assign i_mul142_glfwchoosefbconfig60_sums_align_1_qint = { i_mul142_glfwchoosefbconfig60_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul142_glfwchoosefbconfig60_sums_align_1_q = i_mul142_glfwchoosefbconfig60_sums_align_1_qint[50:0];

    // i_mul142_glfwchoosefbconfig60_im0_cma(CHAINMULTADD,507)@133 + 3
    assign i_mul142_glfwchoosefbconfig60_im0_cma_reset = ~ (resetn);
    assign i_mul142_glfwchoosefbconfig60_im0_cma_ena0 = 1'b1;
    assign i_mul142_glfwchoosefbconfig60_im0_cma_ena1 = i_mul142_glfwchoosefbconfig60_im0_cma_ena0;
    assign i_mul142_glfwchoosefbconfig60_im0_cma_ena2 = i_mul142_glfwchoosefbconfig60_im0_cma_ena0;

    assign i_mul142_glfwchoosefbconfig60_im0_cma_a0 = i_mul142_glfwchoosefbconfig60_bs1_merged_bit_select_b;
    assign i_mul142_glfwchoosefbconfig60_im0_cma_c0 = i_mul142_glfwchoosefbconfig60_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul142_glfwchoosefbconfig60_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul142_glfwchoosefbconfig60_im0_cma_ena2, i_mul142_glfwchoosefbconfig60_im0_cma_ena1, i_mul142_glfwchoosefbconfig60_im0_cma_ena0 }),
        .aclr({ i_mul142_glfwchoosefbconfig60_im0_cma_reset, i_mul142_glfwchoosefbconfig60_im0_cma_reset }),
        .ay(i_mul142_glfwchoosefbconfig60_im0_cma_a0),
        .ax(i_mul142_glfwchoosefbconfig60_im0_cma_c0),
        .resulta(i_mul142_glfwchoosefbconfig60_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul142_glfwchoosefbconfig60_im0_cma_delay ( .xin(i_mul142_glfwchoosefbconfig60_im0_cma_s0), .xout(i_mul142_glfwchoosefbconfig60_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul142_glfwchoosefbconfig60_im0_cma_q = $unsigned(i_mul142_glfwchoosefbconfig60_im0_cma_qq[27:0]);

    // i_mul142_glfwchoosefbconfig60_im8_cma(CHAINMULTADD,508)@133 + 3
    assign i_mul142_glfwchoosefbconfig60_im8_cma_reset = ~ (resetn);
    assign i_mul142_glfwchoosefbconfig60_im8_cma_ena0 = 1'b1;
    assign i_mul142_glfwchoosefbconfig60_im8_cma_ena1 = i_mul142_glfwchoosefbconfig60_im8_cma_ena0;
    assign i_mul142_glfwchoosefbconfig60_im8_cma_ena2 = i_mul142_glfwchoosefbconfig60_im8_cma_ena0;

    assign i_mul142_glfwchoosefbconfig60_im8_cma_a0 = i_mul142_glfwchoosefbconfig60_bs1_merged_bit_select_c;
    assign i_mul142_glfwchoosefbconfig60_im8_cma_c0 = i_mul142_glfwchoosefbconfig60_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul142_glfwchoosefbconfig60_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul142_glfwchoosefbconfig60_im8_cma_ena2, i_mul142_glfwchoosefbconfig60_im8_cma_ena1, i_mul142_glfwchoosefbconfig60_im8_cma_ena0 }),
        .aclr({ i_mul142_glfwchoosefbconfig60_im8_cma_reset, i_mul142_glfwchoosefbconfig60_im8_cma_reset }),
        .ay(i_mul142_glfwchoosefbconfig60_im8_cma_a0),
        .ax(i_mul142_glfwchoosefbconfig60_im8_cma_c0),
        .resulta(i_mul142_glfwchoosefbconfig60_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul142_glfwchoosefbconfig60_im8_cma_delay ( .xin(i_mul142_glfwchoosefbconfig60_im8_cma_s0), .xout(i_mul142_glfwchoosefbconfig60_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul142_glfwchoosefbconfig60_im8_cma_q = $unsigned(i_mul142_glfwchoosefbconfig60_im8_cma_qq[35:0]);

    // i_mul142_glfwchoosefbconfig60_sums_join_0(BITJOIN,392)@136
    assign i_mul142_glfwchoosefbconfig60_sums_join_0_q = {i_mul142_glfwchoosefbconfig60_im0_cma_q, i_mul142_glfwchoosefbconfig60_im8_cma_q};

    // i_mul142_glfwchoosefbconfig60_sums_result_add_0_0(ADD,395)@136
    assign i_mul142_glfwchoosefbconfig60_sums_result_add_0_0_a = {1'b0, i_mul142_glfwchoosefbconfig60_sums_join_0_q};
    assign i_mul142_glfwchoosefbconfig60_sums_result_add_0_0_b = {14'b00000000000000, i_mul142_glfwchoosefbconfig60_sums_align_1_q};
    assign i_mul142_glfwchoosefbconfig60_sums_result_add_0_0_o = $unsigned(i_mul142_glfwchoosefbconfig60_sums_result_add_0_0_a) + $unsigned(i_mul142_glfwchoosefbconfig60_sums_result_add_0_0_b);
    assign i_mul142_glfwchoosefbconfig60_sums_result_add_0_0_q = i_mul142_glfwchoosefbconfig60_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul142_glfwchoosefbconfig60_sel_x(BITSELECT,249)@136
    assign bgTrunc_i_mul142_glfwchoosefbconfig60_sel_x_in = i_mul142_glfwchoosefbconfig60_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul142_glfwchoosefbconfig60_sel_x_b = bgTrunc_i_mul142_glfwchoosefbconfig60_sel_x_in[31:0];

    // i_mul142_glfwchoosefbconfig60_vt_select_30(BITSELECT,148)@136
    assign i_mul142_glfwchoosefbconfig60_vt_select_30_b = bgTrunc_i_mul142_glfwchoosefbconfig60_sel_x_b[30:0];

    // i_mul142_glfwchoosefbconfig60_vt_join(BITJOIN,147)@136
    assign i_mul142_glfwchoosefbconfig60_vt_join_q = {GND_q, i_mul142_glfwchoosefbconfig60_vt_select_30_b};

    // redist9_sync_together140_aunroll_x_in_c1_eni48_36_tpl_3(DELAY,554)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together140_aunroll_x_in_c1_eni48_36_tpl_3_delay_0 <= '0;
            redist9_sync_together140_aunroll_x_in_c1_eni48_36_tpl_3_delay_1 <= '0;
            redist9_sync_together140_aunroll_x_in_c1_eni48_36_tpl_3_q <= '0;
        end
        else
        begin
            redist9_sync_together140_aunroll_x_in_c1_eni48_36_tpl_3_delay_0 <= $unsigned(in_c1_eni48_36_tpl);
            redist9_sync_together140_aunroll_x_in_c1_eni48_36_tpl_3_delay_1 <= redist9_sync_together140_aunroll_x_in_c1_eni48_36_tpl_3_delay_0;
            redist9_sync_together140_aunroll_x_in_c1_eni48_36_tpl_3_q <= redist9_sync_together140_aunroll_x_in_c1_eni48_36_tpl_3_delay_1;
        end
    end

    // i_add143_glfwchoosefbconfig61(MUX,80)@136
    assign i_add143_glfwchoosefbconfig61_s = redist9_sync_together140_aunroll_x_in_c1_eni48_36_tpl_3_q;
    always @(i_add143_glfwchoosefbconfig61_s or c_i32_0129_q or i_mul142_glfwchoosefbconfig60_vt_join_q)
    begin
        unique case (i_add143_glfwchoosefbconfig61_s)
            1'b0 : i_add143_glfwchoosefbconfig61_q = c_i32_0129_q;
            1'b1 : i_add143_glfwchoosefbconfig61_q = i_mul142_glfwchoosefbconfig60_vt_join_q;
            default : i_add143_glfwchoosefbconfig61_q = 32'b0;
        endcase
    end

    // i_add143_glfwchoosefbconfig61_vt_select_30(BITSELECT,83)@136
    assign i_add143_glfwchoosefbconfig61_vt_select_30_b = i_add143_glfwchoosefbconfig61_q[30:0];

    // redist28_i_add143_glfwchoosefbconfig61_vt_select_30_b_1(DELAY,573)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_add143_glfwchoosefbconfig61_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist28_i_add143_glfwchoosefbconfig61_vt_select_30_b_1_q <= $unsigned(i_add143_glfwchoosefbconfig61_vt_select_30_b);
        end
    end

    // i_add143_glfwchoosefbconfig61_vt_join(BITJOIN,82)@137
    assign i_add143_glfwchoosefbconfig61_vt_join_q = {GND_q, redist28_i_add143_glfwchoosefbconfig61_vt_select_30_b_1_q};

    // i_sub127_glfwchoosefbconfig56(SUB,213)@133
    assign i_sub127_glfwchoosefbconfig56_a = {1'b0, in_c1_eni48_31_tpl};
    assign i_sub127_glfwchoosefbconfig56_b = {1'b0, in_c1_eni48_32_tpl};
    assign i_sub127_glfwchoosefbconfig56_o = $unsigned(i_sub127_glfwchoosefbconfig56_a) - $unsigned(i_sub127_glfwchoosefbconfig56_b);
    assign i_sub127_glfwchoosefbconfig56_q = i_sub127_glfwchoosefbconfig56_o[32:0];

    // bgTrunc_i_sub127_glfwchoosefbconfig56_sel_x(BITSELECT,268)@133
    assign bgTrunc_i_sub127_glfwchoosefbconfig56_sel_x_b = $unsigned(i_sub127_glfwchoosefbconfig56_q[31:0]);

    // i_mul131_glfwchoosefbconfig57_bs1_merged_bit_select(BITSELECT,536)@133
    assign i_mul131_glfwchoosefbconfig57_bs1_merged_bit_select_b = bgTrunc_i_sub127_glfwchoosefbconfig56_sel_x_b[31:18];
    assign i_mul131_glfwchoosefbconfig57_bs1_merged_bit_select_c = bgTrunc_i_sub127_glfwchoosefbconfig56_sel_x_b[17:0];

    // i_mul131_glfwchoosefbconfig57_ma3_cma(CHAINMULTADD,525)@133 + 3
    assign i_mul131_glfwchoosefbconfig57_ma3_cma_reset = ~ (resetn);
    assign i_mul131_glfwchoosefbconfig57_ma3_cma_ena0 = 1'b1;
    assign i_mul131_glfwchoosefbconfig57_ma3_cma_ena1 = i_mul131_glfwchoosefbconfig57_ma3_cma_ena0;
    assign i_mul131_glfwchoosefbconfig57_ma3_cma_ena2 = i_mul131_glfwchoosefbconfig57_ma3_cma_ena0;

    assign i_mul131_glfwchoosefbconfig57_ma3_cma_a0 = i_mul131_glfwchoosefbconfig57_bs1_merged_bit_select_b;
    assign i_mul131_glfwchoosefbconfig57_ma3_cma_c0 = i_mul131_glfwchoosefbconfig57_bs1_merged_bit_select_c;
    assign i_mul131_glfwchoosefbconfig57_ma3_cma_a1 = i_mul131_glfwchoosefbconfig57_bs1_merged_bit_select_b;
    assign i_mul131_glfwchoosefbconfig57_ma3_cma_c1 = i_mul131_glfwchoosefbconfig57_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul131_glfwchoosefbconfig57_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul131_glfwchoosefbconfig57_ma3_cma_ena2, i_mul131_glfwchoosefbconfig57_ma3_cma_ena1, i_mul131_glfwchoosefbconfig57_ma3_cma_ena0 }),
        .aclr({ i_mul131_glfwchoosefbconfig57_ma3_cma_reset, i_mul131_glfwchoosefbconfig57_ma3_cma_reset }),
        .ay(i_mul131_glfwchoosefbconfig57_ma3_cma_a1),
        .by(i_mul131_glfwchoosefbconfig57_ma3_cma_a0),
        .ax(i_mul131_glfwchoosefbconfig57_ma3_cma_c1),
        .bx(i_mul131_glfwchoosefbconfig57_ma3_cma_c0),
        .resulta(i_mul131_glfwchoosefbconfig57_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul131_glfwchoosefbconfig57_ma3_cma_delay ( .xin(i_mul131_glfwchoosefbconfig57_ma3_cma_s0), .xout(i_mul131_glfwchoosefbconfig57_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul131_glfwchoosefbconfig57_ma3_cma_q = $unsigned(i_mul131_glfwchoosefbconfig57_ma3_cma_qq[32:0]);

    // i_mul131_glfwchoosefbconfig57_sums_align_1(BITSHIFT,378)@136
    assign i_mul131_glfwchoosefbconfig57_sums_align_1_qint = { i_mul131_glfwchoosefbconfig57_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul131_glfwchoosefbconfig57_sums_align_1_q = i_mul131_glfwchoosefbconfig57_sums_align_1_qint[50:0];

    // i_mul131_glfwchoosefbconfig57_im0_cma(CHAINMULTADD,505)@133 + 3
    assign i_mul131_glfwchoosefbconfig57_im0_cma_reset = ~ (resetn);
    assign i_mul131_glfwchoosefbconfig57_im0_cma_ena0 = 1'b1;
    assign i_mul131_glfwchoosefbconfig57_im0_cma_ena1 = i_mul131_glfwchoosefbconfig57_im0_cma_ena0;
    assign i_mul131_glfwchoosefbconfig57_im0_cma_ena2 = i_mul131_glfwchoosefbconfig57_im0_cma_ena0;

    assign i_mul131_glfwchoosefbconfig57_im0_cma_a0 = i_mul131_glfwchoosefbconfig57_bs1_merged_bit_select_b;
    assign i_mul131_glfwchoosefbconfig57_im0_cma_c0 = i_mul131_glfwchoosefbconfig57_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul131_glfwchoosefbconfig57_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul131_glfwchoosefbconfig57_im0_cma_ena2, i_mul131_glfwchoosefbconfig57_im0_cma_ena1, i_mul131_glfwchoosefbconfig57_im0_cma_ena0 }),
        .aclr({ i_mul131_glfwchoosefbconfig57_im0_cma_reset, i_mul131_glfwchoosefbconfig57_im0_cma_reset }),
        .ay(i_mul131_glfwchoosefbconfig57_im0_cma_a0),
        .ax(i_mul131_glfwchoosefbconfig57_im0_cma_c0),
        .resulta(i_mul131_glfwchoosefbconfig57_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul131_glfwchoosefbconfig57_im0_cma_delay ( .xin(i_mul131_glfwchoosefbconfig57_im0_cma_s0), .xout(i_mul131_glfwchoosefbconfig57_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul131_glfwchoosefbconfig57_im0_cma_q = $unsigned(i_mul131_glfwchoosefbconfig57_im0_cma_qq[27:0]);

    // i_mul131_glfwchoosefbconfig57_im8_cma(CHAINMULTADD,506)@133 + 3
    assign i_mul131_glfwchoosefbconfig57_im8_cma_reset = ~ (resetn);
    assign i_mul131_glfwchoosefbconfig57_im8_cma_ena0 = 1'b1;
    assign i_mul131_glfwchoosefbconfig57_im8_cma_ena1 = i_mul131_glfwchoosefbconfig57_im8_cma_ena0;
    assign i_mul131_glfwchoosefbconfig57_im8_cma_ena2 = i_mul131_glfwchoosefbconfig57_im8_cma_ena0;

    assign i_mul131_glfwchoosefbconfig57_im8_cma_a0 = i_mul131_glfwchoosefbconfig57_bs1_merged_bit_select_c;
    assign i_mul131_glfwchoosefbconfig57_im8_cma_c0 = i_mul131_glfwchoosefbconfig57_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul131_glfwchoosefbconfig57_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul131_glfwchoosefbconfig57_im8_cma_ena2, i_mul131_glfwchoosefbconfig57_im8_cma_ena1, i_mul131_glfwchoosefbconfig57_im8_cma_ena0 }),
        .aclr({ i_mul131_glfwchoosefbconfig57_im8_cma_reset, i_mul131_glfwchoosefbconfig57_im8_cma_reset }),
        .ay(i_mul131_glfwchoosefbconfig57_im8_cma_a0),
        .ax(i_mul131_glfwchoosefbconfig57_im8_cma_c0),
        .resulta(i_mul131_glfwchoosefbconfig57_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul131_glfwchoosefbconfig57_im8_cma_delay ( .xin(i_mul131_glfwchoosefbconfig57_im8_cma_s0), .xout(i_mul131_glfwchoosefbconfig57_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul131_glfwchoosefbconfig57_im8_cma_q = $unsigned(i_mul131_glfwchoosefbconfig57_im8_cma_qq[35:0]);

    // i_mul131_glfwchoosefbconfig57_sums_join_0(BITJOIN,377)@136
    assign i_mul131_glfwchoosefbconfig57_sums_join_0_q = {i_mul131_glfwchoosefbconfig57_im0_cma_q, i_mul131_glfwchoosefbconfig57_im8_cma_q};

    // i_mul131_glfwchoosefbconfig57_sums_result_add_0_0(ADD,380)@136
    assign i_mul131_glfwchoosefbconfig57_sums_result_add_0_0_a = {1'b0, i_mul131_glfwchoosefbconfig57_sums_join_0_q};
    assign i_mul131_glfwchoosefbconfig57_sums_result_add_0_0_b = {14'b00000000000000, i_mul131_glfwchoosefbconfig57_sums_align_1_q};
    assign i_mul131_glfwchoosefbconfig57_sums_result_add_0_0_o = $unsigned(i_mul131_glfwchoosefbconfig57_sums_result_add_0_0_a) + $unsigned(i_mul131_glfwchoosefbconfig57_sums_result_add_0_0_b);
    assign i_mul131_glfwchoosefbconfig57_sums_result_add_0_0_q = i_mul131_glfwchoosefbconfig57_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul131_glfwchoosefbconfig57_sel_x(BITSELECT,248)@136
    assign bgTrunc_i_mul131_glfwchoosefbconfig57_sel_x_in = i_mul131_glfwchoosefbconfig57_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul131_glfwchoosefbconfig57_sel_x_b = bgTrunc_i_mul131_glfwchoosefbconfig57_sel_x_in[31:0];

    // i_mul131_glfwchoosefbconfig57_vt_select_30(BITSELECT,144)@136
    assign i_mul131_glfwchoosefbconfig57_vt_select_30_b = bgTrunc_i_mul131_glfwchoosefbconfig57_sel_x_b[30:0];

    // i_mul131_glfwchoosefbconfig57_vt_join(BITJOIN,143)@136
    assign i_mul131_glfwchoosefbconfig57_vt_join_q = {GND_q, i_mul131_glfwchoosefbconfig57_vt_select_30_b};

    // redist8_sync_together140_aunroll_x_in_c1_eni48_33_tpl_3(DELAY,553)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together140_aunroll_x_in_c1_eni48_33_tpl_3_delay_0 <= '0;
            redist8_sync_together140_aunroll_x_in_c1_eni48_33_tpl_3_delay_1 <= '0;
            redist8_sync_together140_aunroll_x_in_c1_eni48_33_tpl_3_q <= '0;
        end
        else
        begin
            redist8_sync_together140_aunroll_x_in_c1_eni48_33_tpl_3_delay_0 <= $unsigned(in_c1_eni48_33_tpl);
            redist8_sync_together140_aunroll_x_in_c1_eni48_33_tpl_3_delay_1 <= redist8_sync_together140_aunroll_x_in_c1_eni48_33_tpl_3_delay_0;
            redist8_sync_together140_aunroll_x_in_c1_eni48_33_tpl_3_q <= redist8_sync_together140_aunroll_x_in_c1_eni48_33_tpl_3_delay_1;
        end
    end

    // i_add132_glfwchoosefbconfig58(MUX,76)@136
    assign i_add132_glfwchoosefbconfig58_s = redist8_sync_together140_aunroll_x_in_c1_eni48_33_tpl_3_q;
    always @(i_add132_glfwchoosefbconfig58_s or c_i32_0129_q or i_mul131_glfwchoosefbconfig57_vt_join_q)
    begin
        unique case (i_add132_glfwchoosefbconfig58_s)
            1'b0 : i_add132_glfwchoosefbconfig58_q = c_i32_0129_q;
            1'b1 : i_add132_glfwchoosefbconfig58_q = i_mul131_glfwchoosefbconfig57_vt_join_q;
            default : i_add132_glfwchoosefbconfig58_q = 32'b0;
        endcase
    end

    // i_add132_glfwchoosefbconfig58_vt_select_30(BITSELECT,79)@136
    assign i_add132_glfwchoosefbconfig58_vt_select_30_b = i_add132_glfwchoosefbconfig58_q[30:0];

    // redist29_i_add132_glfwchoosefbconfig58_vt_select_30_b_1(DELAY,574)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_add132_glfwchoosefbconfig58_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist29_i_add132_glfwchoosefbconfig58_vt_select_30_b_1_q <= $unsigned(i_add132_glfwchoosefbconfig58_vt_select_30_b);
        end
    end

    // i_add132_glfwchoosefbconfig58_vt_join(BITJOIN,78)@137
    assign i_add132_glfwchoosefbconfig58_vt_join_q = {GND_q, redist29_i_add132_glfwchoosefbconfig58_vt_select_30_b_1_q};

    // i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74(ADD,184)@137
    assign i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_a = {1'b0, i_add132_glfwchoosefbconfig58_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_b = {1'b0, i_add143_glfwchoosefbconfig61_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_o = $unsigned(i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_a) + $unsigned(i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_b);
    assign i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_q = i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_sel_x(BITSELECT,257)@137
    assign bgTrunc_i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_sel_x_b = i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_q[31:0];

    // i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77(ADD,187)@137
    assign i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_a = {1'b0, bgTrunc_i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig74_sel_x_b};
    assign i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_b = {1'b0, bgTrunc_i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig75_sel_x_b};
    assign i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_o = $unsigned(i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_a) + $unsigned(i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_b);
    assign i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_q = i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_sel_x(BITSELECT,260)@137
    assign bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_sel_x_b = i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_q[31:0];

    // redist18_bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_sel_x_b_1(DELAY,563)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist18_bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_sel_x_b_1_q <= $unsigned(bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_sel_x_b);
        end
    end

    // i_sub116_glfwchoosefbconfig53(SUB,212)@133
    assign i_sub116_glfwchoosefbconfig53_a = {1'b0, in_c1_eni48_28_tpl};
    assign i_sub116_glfwchoosefbconfig53_b = {1'b0, in_c1_eni48_29_tpl};
    assign i_sub116_glfwchoosefbconfig53_o = $unsigned(i_sub116_glfwchoosefbconfig53_a) - $unsigned(i_sub116_glfwchoosefbconfig53_b);
    assign i_sub116_glfwchoosefbconfig53_q = i_sub116_glfwchoosefbconfig53_o[32:0];

    // bgTrunc_i_sub116_glfwchoosefbconfig53_sel_x(BITSELECT,267)@133
    assign bgTrunc_i_sub116_glfwchoosefbconfig53_sel_x_b = $unsigned(i_sub116_glfwchoosefbconfig53_q[31:0]);

    // i_mul120_glfwchoosefbconfig54_bs1_merged_bit_select(BITSELECT,535)@133
    assign i_mul120_glfwchoosefbconfig54_bs1_merged_bit_select_b = bgTrunc_i_sub116_glfwchoosefbconfig53_sel_x_b[31:18];
    assign i_mul120_glfwchoosefbconfig54_bs1_merged_bit_select_c = bgTrunc_i_sub116_glfwchoosefbconfig53_sel_x_b[17:0];

    // i_mul120_glfwchoosefbconfig54_ma3_cma(CHAINMULTADD,524)@133 + 3
    assign i_mul120_glfwchoosefbconfig54_ma3_cma_reset = ~ (resetn);
    assign i_mul120_glfwchoosefbconfig54_ma3_cma_ena0 = 1'b1;
    assign i_mul120_glfwchoosefbconfig54_ma3_cma_ena1 = i_mul120_glfwchoosefbconfig54_ma3_cma_ena0;
    assign i_mul120_glfwchoosefbconfig54_ma3_cma_ena2 = i_mul120_glfwchoosefbconfig54_ma3_cma_ena0;

    assign i_mul120_glfwchoosefbconfig54_ma3_cma_a0 = i_mul120_glfwchoosefbconfig54_bs1_merged_bit_select_b;
    assign i_mul120_glfwchoosefbconfig54_ma3_cma_c0 = i_mul120_glfwchoosefbconfig54_bs1_merged_bit_select_c;
    assign i_mul120_glfwchoosefbconfig54_ma3_cma_a1 = i_mul120_glfwchoosefbconfig54_bs1_merged_bit_select_b;
    assign i_mul120_glfwchoosefbconfig54_ma3_cma_c1 = i_mul120_glfwchoosefbconfig54_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul120_glfwchoosefbconfig54_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul120_glfwchoosefbconfig54_ma3_cma_ena2, i_mul120_glfwchoosefbconfig54_ma3_cma_ena1, i_mul120_glfwchoosefbconfig54_ma3_cma_ena0 }),
        .aclr({ i_mul120_glfwchoosefbconfig54_ma3_cma_reset, i_mul120_glfwchoosefbconfig54_ma3_cma_reset }),
        .ay(i_mul120_glfwchoosefbconfig54_ma3_cma_a1),
        .by(i_mul120_glfwchoosefbconfig54_ma3_cma_a0),
        .ax(i_mul120_glfwchoosefbconfig54_ma3_cma_c1),
        .bx(i_mul120_glfwchoosefbconfig54_ma3_cma_c0),
        .resulta(i_mul120_glfwchoosefbconfig54_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul120_glfwchoosefbconfig54_ma3_cma_delay ( .xin(i_mul120_glfwchoosefbconfig54_ma3_cma_s0), .xout(i_mul120_glfwchoosefbconfig54_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul120_glfwchoosefbconfig54_ma3_cma_q = $unsigned(i_mul120_glfwchoosefbconfig54_ma3_cma_qq[32:0]);

    // i_mul120_glfwchoosefbconfig54_sums_align_1(BITSHIFT,363)@136
    assign i_mul120_glfwchoosefbconfig54_sums_align_1_qint = { i_mul120_glfwchoosefbconfig54_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul120_glfwchoosefbconfig54_sums_align_1_q = i_mul120_glfwchoosefbconfig54_sums_align_1_qint[50:0];

    // i_mul120_glfwchoosefbconfig54_im0_cma(CHAINMULTADD,503)@133 + 3
    assign i_mul120_glfwchoosefbconfig54_im0_cma_reset = ~ (resetn);
    assign i_mul120_glfwchoosefbconfig54_im0_cma_ena0 = 1'b1;
    assign i_mul120_glfwchoosefbconfig54_im0_cma_ena1 = i_mul120_glfwchoosefbconfig54_im0_cma_ena0;
    assign i_mul120_glfwchoosefbconfig54_im0_cma_ena2 = i_mul120_glfwchoosefbconfig54_im0_cma_ena0;

    assign i_mul120_glfwchoosefbconfig54_im0_cma_a0 = i_mul120_glfwchoosefbconfig54_bs1_merged_bit_select_b;
    assign i_mul120_glfwchoosefbconfig54_im0_cma_c0 = i_mul120_glfwchoosefbconfig54_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul120_glfwchoosefbconfig54_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul120_glfwchoosefbconfig54_im0_cma_ena2, i_mul120_glfwchoosefbconfig54_im0_cma_ena1, i_mul120_glfwchoosefbconfig54_im0_cma_ena0 }),
        .aclr({ i_mul120_glfwchoosefbconfig54_im0_cma_reset, i_mul120_glfwchoosefbconfig54_im0_cma_reset }),
        .ay(i_mul120_glfwchoosefbconfig54_im0_cma_a0),
        .ax(i_mul120_glfwchoosefbconfig54_im0_cma_c0),
        .resulta(i_mul120_glfwchoosefbconfig54_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul120_glfwchoosefbconfig54_im0_cma_delay ( .xin(i_mul120_glfwchoosefbconfig54_im0_cma_s0), .xout(i_mul120_glfwchoosefbconfig54_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul120_glfwchoosefbconfig54_im0_cma_q = $unsigned(i_mul120_glfwchoosefbconfig54_im0_cma_qq[27:0]);

    // i_mul120_glfwchoosefbconfig54_im8_cma(CHAINMULTADD,504)@133 + 3
    assign i_mul120_glfwchoosefbconfig54_im8_cma_reset = ~ (resetn);
    assign i_mul120_glfwchoosefbconfig54_im8_cma_ena0 = 1'b1;
    assign i_mul120_glfwchoosefbconfig54_im8_cma_ena1 = i_mul120_glfwchoosefbconfig54_im8_cma_ena0;
    assign i_mul120_glfwchoosefbconfig54_im8_cma_ena2 = i_mul120_glfwchoosefbconfig54_im8_cma_ena0;

    assign i_mul120_glfwchoosefbconfig54_im8_cma_a0 = i_mul120_glfwchoosefbconfig54_bs1_merged_bit_select_c;
    assign i_mul120_glfwchoosefbconfig54_im8_cma_c0 = i_mul120_glfwchoosefbconfig54_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul120_glfwchoosefbconfig54_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul120_glfwchoosefbconfig54_im8_cma_ena2, i_mul120_glfwchoosefbconfig54_im8_cma_ena1, i_mul120_glfwchoosefbconfig54_im8_cma_ena0 }),
        .aclr({ i_mul120_glfwchoosefbconfig54_im8_cma_reset, i_mul120_glfwchoosefbconfig54_im8_cma_reset }),
        .ay(i_mul120_glfwchoosefbconfig54_im8_cma_a0),
        .ax(i_mul120_glfwchoosefbconfig54_im8_cma_c0),
        .resulta(i_mul120_glfwchoosefbconfig54_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul120_glfwchoosefbconfig54_im8_cma_delay ( .xin(i_mul120_glfwchoosefbconfig54_im8_cma_s0), .xout(i_mul120_glfwchoosefbconfig54_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul120_glfwchoosefbconfig54_im8_cma_q = $unsigned(i_mul120_glfwchoosefbconfig54_im8_cma_qq[35:0]);

    // i_mul120_glfwchoosefbconfig54_sums_join_0(BITJOIN,362)@136
    assign i_mul120_glfwchoosefbconfig54_sums_join_0_q = {i_mul120_glfwchoosefbconfig54_im0_cma_q, i_mul120_glfwchoosefbconfig54_im8_cma_q};

    // i_mul120_glfwchoosefbconfig54_sums_result_add_0_0(ADD,365)@136
    assign i_mul120_glfwchoosefbconfig54_sums_result_add_0_0_a = {1'b0, i_mul120_glfwchoosefbconfig54_sums_join_0_q};
    assign i_mul120_glfwchoosefbconfig54_sums_result_add_0_0_b = {14'b00000000000000, i_mul120_glfwchoosefbconfig54_sums_align_1_q};
    assign i_mul120_glfwchoosefbconfig54_sums_result_add_0_0_o = $unsigned(i_mul120_glfwchoosefbconfig54_sums_result_add_0_0_a) + $unsigned(i_mul120_glfwchoosefbconfig54_sums_result_add_0_0_b);
    assign i_mul120_glfwchoosefbconfig54_sums_result_add_0_0_q = i_mul120_glfwchoosefbconfig54_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul120_glfwchoosefbconfig54_sel_x(BITSELECT,247)@136
    assign bgTrunc_i_mul120_glfwchoosefbconfig54_sel_x_in = i_mul120_glfwchoosefbconfig54_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul120_glfwchoosefbconfig54_sel_x_b = bgTrunc_i_mul120_glfwchoosefbconfig54_sel_x_in[31:0];

    // i_mul120_glfwchoosefbconfig54_vt_select_30(BITSELECT,140)@136
    assign i_mul120_glfwchoosefbconfig54_vt_select_30_b = bgTrunc_i_mul120_glfwchoosefbconfig54_sel_x_b[30:0];

    // i_mul120_glfwchoosefbconfig54_vt_join(BITJOIN,139)@136
    assign i_mul120_glfwchoosefbconfig54_vt_join_q = {GND_q, i_mul120_glfwchoosefbconfig54_vt_select_30_b};

    // redist7_sync_together140_aunroll_x_in_c1_eni48_30_tpl_3(DELAY,552)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together140_aunroll_x_in_c1_eni48_30_tpl_3_delay_0 <= '0;
            redist7_sync_together140_aunroll_x_in_c1_eni48_30_tpl_3_delay_1 <= '0;
            redist7_sync_together140_aunroll_x_in_c1_eni48_30_tpl_3_q <= '0;
        end
        else
        begin
            redist7_sync_together140_aunroll_x_in_c1_eni48_30_tpl_3_delay_0 <= $unsigned(in_c1_eni48_30_tpl);
            redist7_sync_together140_aunroll_x_in_c1_eni48_30_tpl_3_delay_1 <= redist7_sync_together140_aunroll_x_in_c1_eni48_30_tpl_3_delay_0;
            redist7_sync_together140_aunroll_x_in_c1_eni48_30_tpl_3_q <= redist7_sync_together140_aunroll_x_in_c1_eni48_30_tpl_3_delay_1;
        end
    end

    // i_add121_glfwchoosefbconfig55(MUX,72)@136
    assign i_add121_glfwchoosefbconfig55_s = redist7_sync_together140_aunroll_x_in_c1_eni48_30_tpl_3_q;
    always @(i_add121_glfwchoosefbconfig55_s or c_i32_0129_q or i_mul120_glfwchoosefbconfig54_vt_join_q)
    begin
        unique case (i_add121_glfwchoosefbconfig55_s)
            1'b0 : i_add121_glfwchoosefbconfig55_q = c_i32_0129_q;
            1'b1 : i_add121_glfwchoosefbconfig55_q = i_mul120_glfwchoosefbconfig54_vt_join_q;
            default : i_add121_glfwchoosefbconfig55_q = 32'b0;
        endcase
    end

    // i_add121_glfwchoosefbconfig55_vt_select_30(BITSELECT,75)@136
    assign i_add121_glfwchoosefbconfig55_vt_select_30_b = i_add121_glfwchoosefbconfig55_q[30:0];

    // redist30_i_add121_glfwchoosefbconfig55_vt_select_30_b_1(DELAY,575)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_add121_glfwchoosefbconfig55_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist30_i_add121_glfwchoosefbconfig55_vt_select_30_b_1_q <= $unsigned(i_add121_glfwchoosefbconfig55_vt_select_30_b);
        end
    end

    // i_add121_glfwchoosefbconfig55_vt_join(BITJOIN,74)@137
    assign i_add121_glfwchoosefbconfig55_vt_join_q = {GND_q, redist30_i_add121_glfwchoosefbconfig55_vt_select_30_b_1_q};

    // i_sub105_glfwchoosefbconfig50(SUB,211)@133
    assign i_sub105_glfwchoosefbconfig50_a = {1'b0, in_c1_eni48_26_tpl};
    assign i_sub105_glfwchoosefbconfig50_b = {1'b0, in_c1_eni48_6_tpl};
    assign i_sub105_glfwchoosefbconfig50_o = $unsigned(i_sub105_glfwchoosefbconfig50_a) - $unsigned(i_sub105_glfwchoosefbconfig50_b);
    assign i_sub105_glfwchoosefbconfig50_q = i_sub105_glfwchoosefbconfig50_o[32:0];

    // bgTrunc_i_sub105_glfwchoosefbconfig50_sel_x(BITSELECT,266)@133
    assign bgTrunc_i_sub105_glfwchoosefbconfig50_sel_x_b = $unsigned(i_sub105_glfwchoosefbconfig50_q[31:0]);

    // i_mul109_glfwchoosefbconfig51_bs1_merged_bit_select(BITSELECT,534)@133
    assign i_mul109_glfwchoosefbconfig51_bs1_merged_bit_select_b = bgTrunc_i_sub105_glfwchoosefbconfig50_sel_x_b[31:18];
    assign i_mul109_glfwchoosefbconfig51_bs1_merged_bit_select_c = bgTrunc_i_sub105_glfwchoosefbconfig50_sel_x_b[17:0];

    // i_mul109_glfwchoosefbconfig51_ma3_cma(CHAINMULTADD,523)@133 + 3
    assign i_mul109_glfwchoosefbconfig51_ma3_cma_reset = ~ (resetn);
    assign i_mul109_glfwchoosefbconfig51_ma3_cma_ena0 = 1'b1;
    assign i_mul109_glfwchoosefbconfig51_ma3_cma_ena1 = i_mul109_glfwchoosefbconfig51_ma3_cma_ena0;
    assign i_mul109_glfwchoosefbconfig51_ma3_cma_ena2 = i_mul109_glfwchoosefbconfig51_ma3_cma_ena0;

    assign i_mul109_glfwchoosefbconfig51_ma3_cma_a0 = i_mul109_glfwchoosefbconfig51_bs1_merged_bit_select_b;
    assign i_mul109_glfwchoosefbconfig51_ma3_cma_c0 = i_mul109_glfwchoosefbconfig51_bs1_merged_bit_select_c;
    assign i_mul109_glfwchoosefbconfig51_ma3_cma_a1 = i_mul109_glfwchoosefbconfig51_bs1_merged_bit_select_b;
    assign i_mul109_glfwchoosefbconfig51_ma3_cma_c1 = i_mul109_glfwchoosefbconfig51_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul109_glfwchoosefbconfig51_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul109_glfwchoosefbconfig51_ma3_cma_ena2, i_mul109_glfwchoosefbconfig51_ma3_cma_ena1, i_mul109_glfwchoosefbconfig51_ma3_cma_ena0 }),
        .aclr({ i_mul109_glfwchoosefbconfig51_ma3_cma_reset, i_mul109_glfwchoosefbconfig51_ma3_cma_reset }),
        .ay(i_mul109_glfwchoosefbconfig51_ma3_cma_a1),
        .by(i_mul109_glfwchoosefbconfig51_ma3_cma_a0),
        .ax(i_mul109_glfwchoosefbconfig51_ma3_cma_c1),
        .bx(i_mul109_glfwchoosefbconfig51_ma3_cma_c0),
        .resulta(i_mul109_glfwchoosefbconfig51_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul109_glfwchoosefbconfig51_ma3_cma_delay ( .xin(i_mul109_glfwchoosefbconfig51_ma3_cma_s0), .xout(i_mul109_glfwchoosefbconfig51_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul109_glfwchoosefbconfig51_ma3_cma_q = $unsigned(i_mul109_glfwchoosefbconfig51_ma3_cma_qq[32:0]);

    // i_mul109_glfwchoosefbconfig51_sums_align_1(BITSHIFT,348)@136
    assign i_mul109_glfwchoosefbconfig51_sums_align_1_qint = { i_mul109_glfwchoosefbconfig51_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul109_glfwchoosefbconfig51_sums_align_1_q = i_mul109_glfwchoosefbconfig51_sums_align_1_qint[50:0];

    // i_mul109_glfwchoosefbconfig51_im0_cma(CHAINMULTADD,501)@133 + 3
    assign i_mul109_glfwchoosefbconfig51_im0_cma_reset = ~ (resetn);
    assign i_mul109_glfwchoosefbconfig51_im0_cma_ena0 = 1'b1;
    assign i_mul109_glfwchoosefbconfig51_im0_cma_ena1 = i_mul109_glfwchoosefbconfig51_im0_cma_ena0;
    assign i_mul109_glfwchoosefbconfig51_im0_cma_ena2 = i_mul109_glfwchoosefbconfig51_im0_cma_ena0;

    assign i_mul109_glfwchoosefbconfig51_im0_cma_a0 = i_mul109_glfwchoosefbconfig51_bs1_merged_bit_select_b;
    assign i_mul109_glfwchoosefbconfig51_im0_cma_c0 = i_mul109_glfwchoosefbconfig51_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul109_glfwchoosefbconfig51_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul109_glfwchoosefbconfig51_im0_cma_ena2, i_mul109_glfwchoosefbconfig51_im0_cma_ena1, i_mul109_glfwchoosefbconfig51_im0_cma_ena0 }),
        .aclr({ i_mul109_glfwchoosefbconfig51_im0_cma_reset, i_mul109_glfwchoosefbconfig51_im0_cma_reset }),
        .ay(i_mul109_glfwchoosefbconfig51_im0_cma_a0),
        .ax(i_mul109_glfwchoosefbconfig51_im0_cma_c0),
        .resulta(i_mul109_glfwchoosefbconfig51_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul109_glfwchoosefbconfig51_im0_cma_delay ( .xin(i_mul109_glfwchoosefbconfig51_im0_cma_s0), .xout(i_mul109_glfwchoosefbconfig51_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul109_glfwchoosefbconfig51_im0_cma_q = $unsigned(i_mul109_glfwchoosefbconfig51_im0_cma_qq[27:0]);

    // i_mul109_glfwchoosefbconfig51_im8_cma(CHAINMULTADD,502)@133 + 3
    assign i_mul109_glfwchoosefbconfig51_im8_cma_reset = ~ (resetn);
    assign i_mul109_glfwchoosefbconfig51_im8_cma_ena0 = 1'b1;
    assign i_mul109_glfwchoosefbconfig51_im8_cma_ena1 = i_mul109_glfwchoosefbconfig51_im8_cma_ena0;
    assign i_mul109_glfwchoosefbconfig51_im8_cma_ena2 = i_mul109_glfwchoosefbconfig51_im8_cma_ena0;

    assign i_mul109_glfwchoosefbconfig51_im8_cma_a0 = i_mul109_glfwchoosefbconfig51_bs1_merged_bit_select_c;
    assign i_mul109_glfwchoosefbconfig51_im8_cma_c0 = i_mul109_glfwchoosefbconfig51_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul109_glfwchoosefbconfig51_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul109_glfwchoosefbconfig51_im8_cma_ena2, i_mul109_glfwchoosefbconfig51_im8_cma_ena1, i_mul109_glfwchoosefbconfig51_im8_cma_ena0 }),
        .aclr({ i_mul109_glfwchoosefbconfig51_im8_cma_reset, i_mul109_glfwchoosefbconfig51_im8_cma_reset }),
        .ay(i_mul109_glfwchoosefbconfig51_im8_cma_a0),
        .ax(i_mul109_glfwchoosefbconfig51_im8_cma_c0),
        .resulta(i_mul109_glfwchoosefbconfig51_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul109_glfwchoosefbconfig51_im8_cma_delay ( .xin(i_mul109_glfwchoosefbconfig51_im8_cma_s0), .xout(i_mul109_glfwchoosefbconfig51_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul109_glfwchoosefbconfig51_im8_cma_q = $unsigned(i_mul109_glfwchoosefbconfig51_im8_cma_qq[35:0]);

    // i_mul109_glfwchoosefbconfig51_sums_join_0(BITJOIN,347)@136
    assign i_mul109_glfwchoosefbconfig51_sums_join_0_q = {i_mul109_glfwchoosefbconfig51_im0_cma_q, i_mul109_glfwchoosefbconfig51_im8_cma_q};

    // i_mul109_glfwchoosefbconfig51_sums_result_add_0_0(ADD,350)@136
    assign i_mul109_glfwchoosefbconfig51_sums_result_add_0_0_a = {1'b0, i_mul109_glfwchoosefbconfig51_sums_join_0_q};
    assign i_mul109_glfwchoosefbconfig51_sums_result_add_0_0_b = {14'b00000000000000, i_mul109_glfwchoosefbconfig51_sums_align_1_q};
    assign i_mul109_glfwchoosefbconfig51_sums_result_add_0_0_o = $unsigned(i_mul109_glfwchoosefbconfig51_sums_result_add_0_0_a) + $unsigned(i_mul109_glfwchoosefbconfig51_sums_result_add_0_0_b);
    assign i_mul109_glfwchoosefbconfig51_sums_result_add_0_0_q = i_mul109_glfwchoosefbconfig51_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul109_glfwchoosefbconfig51_sel_x(BITSELECT,246)@136
    assign bgTrunc_i_mul109_glfwchoosefbconfig51_sel_x_in = i_mul109_glfwchoosefbconfig51_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul109_glfwchoosefbconfig51_sel_x_b = bgTrunc_i_mul109_glfwchoosefbconfig51_sel_x_in[31:0];

    // i_mul109_glfwchoosefbconfig51_vt_select_30(BITSELECT,136)@136
    assign i_mul109_glfwchoosefbconfig51_vt_select_30_b = bgTrunc_i_mul109_glfwchoosefbconfig51_sel_x_b[30:0];

    // i_mul109_glfwchoosefbconfig51_vt_join(BITJOIN,135)@136
    assign i_mul109_glfwchoosefbconfig51_vt_join_q = {GND_q, i_mul109_glfwchoosefbconfig51_vt_select_30_b};

    // redist6_sync_together140_aunroll_x_in_c1_eni48_27_tpl_3(DELAY,551)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together140_aunroll_x_in_c1_eni48_27_tpl_3_delay_0 <= '0;
            redist6_sync_together140_aunroll_x_in_c1_eni48_27_tpl_3_delay_1 <= '0;
            redist6_sync_together140_aunroll_x_in_c1_eni48_27_tpl_3_q <= '0;
        end
        else
        begin
            redist6_sync_together140_aunroll_x_in_c1_eni48_27_tpl_3_delay_0 <= $unsigned(in_c1_eni48_27_tpl);
            redist6_sync_together140_aunroll_x_in_c1_eni48_27_tpl_3_delay_1 <= redist6_sync_together140_aunroll_x_in_c1_eni48_27_tpl_3_delay_0;
            redist6_sync_together140_aunroll_x_in_c1_eni48_27_tpl_3_q <= redist6_sync_together140_aunroll_x_in_c1_eni48_27_tpl_3_delay_1;
        end
    end

    // i_add110_glfwchoosefbconfig52(MUX,68)@136
    assign i_add110_glfwchoosefbconfig52_s = redist6_sync_together140_aunroll_x_in_c1_eni48_27_tpl_3_q;
    always @(i_add110_glfwchoosefbconfig52_s or c_i32_0129_q or i_mul109_glfwchoosefbconfig51_vt_join_q)
    begin
        unique case (i_add110_glfwchoosefbconfig52_s)
            1'b0 : i_add110_glfwchoosefbconfig52_q = c_i32_0129_q;
            1'b1 : i_add110_glfwchoosefbconfig52_q = i_mul109_glfwchoosefbconfig51_vt_join_q;
            default : i_add110_glfwchoosefbconfig52_q = 32'b0;
        endcase
    end

    // i_add110_glfwchoosefbconfig52_vt_select_30(BITSELECT,71)@136
    assign i_add110_glfwchoosefbconfig52_vt_select_30_b = i_add110_glfwchoosefbconfig52_q[30:0];

    // redist31_i_add110_glfwchoosefbconfig52_vt_select_30_b_1(DELAY,576)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_add110_glfwchoosefbconfig52_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist31_i_add110_glfwchoosefbconfig52_vt_select_30_b_1_q <= $unsigned(i_add110_glfwchoosefbconfig52_vt_select_30_b);
        end
    end

    // i_add110_glfwchoosefbconfig52_vt_join(BITJOIN,70)@137
    assign i_add110_glfwchoosefbconfig52_vt_join_q = {GND_q, redist31_i_add110_glfwchoosefbconfig52_vt_select_30_b_1_q};

    // i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73(ADD,203)@137
    assign i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_a = {1'b0, i_add110_glfwchoosefbconfig52_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_b = {1'b0, i_add121_glfwchoosefbconfig55_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_o = $unsigned(i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_a) + $unsigned(i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_b);
    assign i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_q = i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_sel_x(BITSELECT,265)@137
    assign bgTrunc_i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_sel_x_b = i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_q[31:0];

    // i_sub93_glfwchoosefbconfig47(SUB,221)@133
    assign i_sub93_glfwchoosefbconfig47_a = {1'b0, in_c1_eni48_24_tpl};
    assign i_sub93_glfwchoosefbconfig47_b = {1'b0, in_c1_eni48_4_tpl};
    assign i_sub93_glfwchoosefbconfig47_o = $unsigned(i_sub93_glfwchoosefbconfig47_a) - $unsigned(i_sub93_glfwchoosefbconfig47_b);
    assign i_sub93_glfwchoosefbconfig47_q = i_sub93_glfwchoosefbconfig47_o[32:0];

    // bgTrunc_i_sub93_glfwchoosefbconfig47_sel_x(BITSELECT,276)@133
    assign bgTrunc_i_sub93_glfwchoosefbconfig47_sel_x_b = $unsigned(i_sub93_glfwchoosefbconfig47_q[31:0]);

    // i_mul97_glfwchoosefbconfig48_bs1_merged_bit_select(BITSELECT,544)@133
    assign i_mul97_glfwchoosefbconfig48_bs1_merged_bit_select_b = bgTrunc_i_sub93_glfwchoosefbconfig47_sel_x_b[31:18];
    assign i_mul97_glfwchoosefbconfig48_bs1_merged_bit_select_c = bgTrunc_i_sub93_glfwchoosefbconfig47_sel_x_b[17:0];

    // i_mul97_glfwchoosefbconfig48_ma3_cma(CHAINMULTADD,532)@133 + 3
    assign i_mul97_glfwchoosefbconfig48_ma3_cma_reset = ~ (resetn);
    assign i_mul97_glfwchoosefbconfig48_ma3_cma_ena0 = 1'b1;
    assign i_mul97_glfwchoosefbconfig48_ma3_cma_ena1 = i_mul97_glfwchoosefbconfig48_ma3_cma_ena0;
    assign i_mul97_glfwchoosefbconfig48_ma3_cma_ena2 = i_mul97_glfwchoosefbconfig48_ma3_cma_ena0;

    assign i_mul97_glfwchoosefbconfig48_ma3_cma_a0 = i_mul97_glfwchoosefbconfig48_bs1_merged_bit_select_b;
    assign i_mul97_glfwchoosefbconfig48_ma3_cma_c0 = i_mul97_glfwchoosefbconfig48_bs1_merged_bit_select_c;
    assign i_mul97_glfwchoosefbconfig48_ma3_cma_a1 = i_mul97_glfwchoosefbconfig48_bs1_merged_bit_select_b;
    assign i_mul97_glfwchoosefbconfig48_ma3_cma_c1 = i_mul97_glfwchoosefbconfig48_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul97_glfwchoosefbconfig48_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul97_glfwchoosefbconfig48_ma3_cma_ena2, i_mul97_glfwchoosefbconfig48_ma3_cma_ena1, i_mul97_glfwchoosefbconfig48_ma3_cma_ena0 }),
        .aclr({ i_mul97_glfwchoosefbconfig48_ma3_cma_reset, i_mul97_glfwchoosefbconfig48_ma3_cma_reset }),
        .ay(i_mul97_glfwchoosefbconfig48_ma3_cma_a1),
        .by(i_mul97_glfwchoosefbconfig48_ma3_cma_a0),
        .ax(i_mul97_glfwchoosefbconfig48_ma3_cma_c1),
        .bx(i_mul97_glfwchoosefbconfig48_ma3_cma_c0),
        .resulta(i_mul97_glfwchoosefbconfig48_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul97_glfwchoosefbconfig48_ma3_cma_delay ( .xin(i_mul97_glfwchoosefbconfig48_ma3_cma_s0), .xout(i_mul97_glfwchoosefbconfig48_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul97_glfwchoosefbconfig48_ma3_cma_q = $unsigned(i_mul97_glfwchoosefbconfig48_ma3_cma_qq[32:0]);

    // i_mul97_glfwchoosefbconfig48_sums_align_1(BITSHIFT,483)@136
    assign i_mul97_glfwchoosefbconfig48_sums_align_1_qint = { i_mul97_glfwchoosefbconfig48_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul97_glfwchoosefbconfig48_sums_align_1_q = i_mul97_glfwchoosefbconfig48_sums_align_1_qint[50:0];

    // i_mul97_glfwchoosefbconfig48_im0_cma(CHAINMULTADD,519)@133 + 3
    assign i_mul97_glfwchoosefbconfig48_im0_cma_reset = ~ (resetn);
    assign i_mul97_glfwchoosefbconfig48_im0_cma_ena0 = 1'b1;
    assign i_mul97_glfwchoosefbconfig48_im0_cma_ena1 = i_mul97_glfwchoosefbconfig48_im0_cma_ena0;
    assign i_mul97_glfwchoosefbconfig48_im0_cma_ena2 = i_mul97_glfwchoosefbconfig48_im0_cma_ena0;

    assign i_mul97_glfwchoosefbconfig48_im0_cma_a0 = i_mul97_glfwchoosefbconfig48_bs1_merged_bit_select_b;
    assign i_mul97_glfwchoosefbconfig48_im0_cma_c0 = i_mul97_glfwchoosefbconfig48_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul97_glfwchoosefbconfig48_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul97_glfwchoosefbconfig48_im0_cma_ena2, i_mul97_glfwchoosefbconfig48_im0_cma_ena1, i_mul97_glfwchoosefbconfig48_im0_cma_ena0 }),
        .aclr({ i_mul97_glfwchoosefbconfig48_im0_cma_reset, i_mul97_glfwchoosefbconfig48_im0_cma_reset }),
        .ay(i_mul97_glfwchoosefbconfig48_im0_cma_a0),
        .ax(i_mul97_glfwchoosefbconfig48_im0_cma_c0),
        .resulta(i_mul97_glfwchoosefbconfig48_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul97_glfwchoosefbconfig48_im0_cma_delay ( .xin(i_mul97_glfwchoosefbconfig48_im0_cma_s0), .xout(i_mul97_glfwchoosefbconfig48_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul97_glfwchoosefbconfig48_im0_cma_q = $unsigned(i_mul97_glfwchoosefbconfig48_im0_cma_qq[27:0]);

    // i_mul97_glfwchoosefbconfig48_im8_cma(CHAINMULTADD,520)@133 + 3
    assign i_mul97_glfwchoosefbconfig48_im8_cma_reset = ~ (resetn);
    assign i_mul97_glfwchoosefbconfig48_im8_cma_ena0 = 1'b1;
    assign i_mul97_glfwchoosefbconfig48_im8_cma_ena1 = i_mul97_glfwchoosefbconfig48_im8_cma_ena0;
    assign i_mul97_glfwchoosefbconfig48_im8_cma_ena2 = i_mul97_glfwchoosefbconfig48_im8_cma_ena0;

    assign i_mul97_glfwchoosefbconfig48_im8_cma_a0 = i_mul97_glfwchoosefbconfig48_bs1_merged_bit_select_c;
    assign i_mul97_glfwchoosefbconfig48_im8_cma_c0 = i_mul97_glfwchoosefbconfig48_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul97_glfwchoosefbconfig48_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul97_glfwchoosefbconfig48_im8_cma_ena2, i_mul97_glfwchoosefbconfig48_im8_cma_ena1, i_mul97_glfwchoosefbconfig48_im8_cma_ena0 }),
        .aclr({ i_mul97_glfwchoosefbconfig48_im8_cma_reset, i_mul97_glfwchoosefbconfig48_im8_cma_reset }),
        .ay(i_mul97_glfwchoosefbconfig48_im8_cma_a0),
        .ax(i_mul97_glfwchoosefbconfig48_im8_cma_c0),
        .resulta(i_mul97_glfwchoosefbconfig48_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul97_glfwchoosefbconfig48_im8_cma_delay ( .xin(i_mul97_glfwchoosefbconfig48_im8_cma_s0), .xout(i_mul97_glfwchoosefbconfig48_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul97_glfwchoosefbconfig48_im8_cma_q = $unsigned(i_mul97_glfwchoosefbconfig48_im8_cma_qq[35:0]);

    // i_mul97_glfwchoosefbconfig48_sums_join_0(BITJOIN,482)@136
    assign i_mul97_glfwchoosefbconfig48_sums_join_0_q = {i_mul97_glfwchoosefbconfig48_im0_cma_q, i_mul97_glfwchoosefbconfig48_im8_cma_q};

    // i_mul97_glfwchoosefbconfig48_sums_result_add_0_0(ADD,485)@136
    assign i_mul97_glfwchoosefbconfig48_sums_result_add_0_0_a = {1'b0, i_mul97_glfwchoosefbconfig48_sums_join_0_q};
    assign i_mul97_glfwchoosefbconfig48_sums_result_add_0_0_b = {14'b00000000000000, i_mul97_glfwchoosefbconfig48_sums_align_1_q};
    assign i_mul97_glfwchoosefbconfig48_sums_result_add_0_0_o = $unsigned(i_mul97_glfwchoosefbconfig48_sums_result_add_0_0_a) + $unsigned(i_mul97_glfwchoosefbconfig48_sums_result_add_0_0_b);
    assign i_mul97_glfwchoosefbconfig48_sums_result_add_0_0_q = i_mul97_glfwchoosefbconfig48_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul97_glfwchoosefbconfig48_sel_x(BITSELECT,255)@136
    assign bgTrunc_i_mul97_glfwchoosefbconfig48_sel_x_in = i_mul97_glfwchoosefbconfig48_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul97_glfwchoosefbconfig48_sel_x_b = bgTrunc_i_mul97_glfwchoosefbconfig48_sel_x_in[31:0];

    // i_mul97_glfwchoosefbconfig48_vt_select_30(BITSELECT,172)@136
    assign i_mul97_glfwchoosefbconfig48_vt_select_30_b = bgTrunc_i_mul97_glfwchoosefbconfig48_sel_x_b[30:0];

    // i_mul97_glfwchoosefbconfig48_vt_join(BITJOIN,171)@136
    assign i_mul97_glfwchoosefbconfig48_vt_join_q = {GND_q, i_mul97_glfwchoosefbconfig48_vt_select_30_b};

    // redist5_sync_together140_aunroll_x_in_c1_eni48_25_tpl_3(DELAY,550)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together140_aunroll_x_in_c1_eni48_25_tpl_3_delay_0 <= '0;
            redist5_sync_together140_aunroll_x_in_c1_eni48_25_tpl_3_delay_1 <= '0;
            redist5_sync_together140_aunroll_x_in_c1_eni48_25_tpl_3_q <= '0;
        end
        else
        begin
            redist5_sync_together140_aunroll_x_in_c1_eni48_25_tpl_3_delay_0 <= $unsigned(in_c1_eni48_25_tpl);
            redist5_sync_together140_aunroll_x_in_c1_eni48_25_tpl_3_delay_1 <= redist5_sync_together140_aunroll_x_in_c1_eni48_25_tpl_3_delay_0;
            redist5_sync_together140_aunroll_x_in_c1_eni48_25_tpl_3_q <= redist5_sync_together140_aunroll_x_in_c1_eni48_25_tpl_3_delay_1;
        end
    end

    // i_add98_glfwchoosefbconfig49(MUX,100)@136
    assign i_add98_glfwchoosefbconfig49_s = redist5_sync_together140_aunroll_x_in_c1_eni48_25_tpl_3_q;
    always @(i_add98_glfwchoosefbconfig49_s or c_i32_0129_q or i_mul97_glfwchoosefbconfig48_vt_join_q)
    begin
        unique case (i_add98_glfwchoosefbconfig49_s)
            1'b0 : i_add98_glfwchoosefbconfig49_q = c_i32_0129_q;
            1'b1 : i_add98_glfwchoosefbconfig49_q = i_mul97_glfwchoosefbconfig48_vt_join_q;
            default : i_add98_glfwchoosefbconfig49_q = 32'b0;
        endcase
    end

    // i_add98_glfwchoosefbconfig49_vt_select_30(BITSELECT,103)@136
    assign i_add98_glfwchoosefbconfig49_vt_select_30_b = i_add98_glfwchoosefbconfig49_q[30:0];

    // redist23_i_add98_glfwchoosefbconfig49_vt_select_30_b_1(DELAY,568)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_add98_glfwchoosefbconfig49_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist23_i_add98_glfwchoosefbconfig49_vt_select_30_b_1_q <= $unsigned(i_add98_glfwchoosefbconfig49_vt_select_30_b);
        end
    end

    // i_add98_glfwchoosefbconfig49_vt_join(BITJOIN,102)@137
    assign i_add98_glfwchoosefbconfig49_vt_join_q = {GND_q, redist23_i_add98_glfwchoosefbconfig49_vt_select_30_b_1_q};

    // i_sub81_glfwchoosefbconfig44(SUB,220)@133
    assign i_sub81_glfwchoosefbconfig44_a = {1'b0, in_c1_eni48_22_tpl};
    assign i_sub81_glfwchoosefbconfig44_b = {1'b0, in_c1_eni48_2_tpl};
    assign i_sub81_glfwchoosefbconfig44_o = $unsigned(i_sub81_glfwchoosefbconfig44_a) - $unsigned(i_sub81_glfwchoosefbconfig44_b);
    assign i_sub81_glfwchoosefbconfig44_q = i_sub81_glfwchoosefbconfig44_o[32:0];

    // bgTrunc_i_sub81_glfwchoosefbconfig44_sel_x(BITSELECT,275)@133
    assign bgTrunc_i_sub81_glfwchoosefbconfig44_sel_x_b = $unsigned(i_sub81_glfwchoosefbconfig44_q[31:0]);

    // i_mul85_glfwchoosefbconfig45_bs1_merged_bit_select(BITSELECT,543)@133
    assign i_mul85_glfwchoosefbconfig45_bs1_merged_bit_select_b = bgTrunc_i_sub81_glfwchoosefbconfig44_sel_x_b[31:18];
    assign i_mul85_glfwchoosefbconfig45_bs1_merged_bit_select_c = bgTrunc_i_sub81_glfwchoosefbconfig44_sel_x_b[17:0];

    // i_mul85_glfwchoosefbconfig45_ma3_cma(CHAINMULTADD,531)@133 + 3
    assign i_mul85_glfwchoosefbconfig45_ma3_cma_reset = ~ (resetn);
    assign i_mul85_glfwchoosefbconfig45_ma3_cma_ena0 = 1'b1;
    assign i_mul85_glfwchoosefbconfig45_ma3_cma_ena1 = i_mul85_glfwchoosefbconfig45_ma3_cma_ena0;
    assign i_mul85_glfwchoosefbconfig45_ma3_cma_ena2 = i_mul85_glfwchoosefbconfig45_ma3_cma_ena0;

    assign i_mul85_glfwchoosefbconfig45_ma3_cma_a0 = i_mul85_glfwchoosefbconfig45_bs1_merged_bit_select_b;
    assign i_mul85_glfwchoosefbconfig45_ma3_cma_c0 = i_mul85_glfwchoosefbconfig45_bs1_merged_bit_select_c;
    assign i_mul85_glfwchoosefbconfig45_ma3_cma_a1 = i_mul85_glfwchoosefbconfig45_bs1_merged_bit_select_b;
    assign i_mul85_glfwchoosefbconfig45_ma3_cma_c1 = i_mul85_glfwchoosefbconfig45_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul85_glfwchoosefbconfig45_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul85_glfwchoosefbconfig45_ma3_cma_ena2, i_mul85_glfwchoosefbconfig45_ma3_cma_ena1, i_mul85_glfwchoosefbconfig45_ma3_cma_ena0 }),
        .aclr({ i_mul85_glfwchoosefbconfig45_ma3_cma_reset, i_mul85_glfwchoosefbconfig45_ma3_cma_reset }),
        .ay(i_mul85_glfwchoosefbconfig45_ma3_cma_a1),
        .by(i_mul85_glfwchoosefbconfig45_ma3_cma_a0),
        .ax(i_mul85_glfwchoosefbconfig45_ma3_cma_c1),
        .bx(i_mul85_glfwchoosefbconfig45_ma3_cma_c0),
        .resulta(i_mul85_glfwchoosefbconfig45_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul85_glfwchoosefbconfig45_ma3_cma_delay ( .xin(i_mul85_glfwchoosefbconfig45_ma3_cma_s0), .xout(i_mul85_glfwchoosefbconfig45_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul85_glfwchoosefbconfig45_ma3_cma_q = $unsigned(i_mul85_glfwchoosefbconfig45_ma3_cma_qq[32:0]);

    // i_mul85_glfwchoosefbconfig45_sums_align_1(BITSHIFT,468)@136
    assign i_mul85_glfwchoosefbconfig45_sums_align_1_qint = { i_mul85_glfwchoosefbconfig45_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul85_glfwchoosefbconfig45_sums_align_1_q = i_mul85_glfwchoosefbconfig45_sums_align_1_qint[50:0];

    // i_mul85_glfwchoosefbconfig45_im0_cma(CHAINMULTADD,517)@133 + 3
    assign i_mul85_glfwchoosefbconfig45_im0_cma_reset = ~ (resetn);
    assign i_mul85_glfwchoosefbconfig45_im0_cma_ena0 = 1'b1;
    assign i_mul85_glfwchoosefbconfig45_im0_cma_ena1 = i_mul85_glfwchoosefbconfig45_im0_cma_ena0;
    assign i_mul85_glfwchoosefbconfig45_im0_cma_ena2 = i_mul85_glfwchoosefbconfig45_im0_cma_ena0;

    assign i_mul85_glfwchoosefbconfig45_im0_cma_a0 = i_mul85_glfwchoosefbconfig45_bs1_merged_bit_select_b;
    assign i_mul85_glfwchoosefbconfig45_im0_cma_c0 = i_mul85_glfwchoosefbconfig45_bs1_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul85_glfwchoosefbconfig45_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul85_glfwchoosefbconfig45_im0_cma_ena2, i_mul85_glfwchoosefbconfig45_im0_cma_ena1, i_mul85_glfwchoosefbconfig45_im0_cma_ena0 }),
        .aclr({ i_mul85_glfwchoosefbconfig45_im0_cma_reset, i_mul85_glfwchoosefbconfig45_im0_cma_reset }),
        .ay(i_mul85_glfwchoosefbconfig45_im0_cma_a0),
        .ax(i_mul85_glfwchoosefbconfig45_im0_cma_c0),
        .resulta(i_mul85_glfwchoosefbconfig45_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul85_glfwchoosefbconfig45_im0_cma_delay ( .xin(i_mul85_glfwchoosefbconfig45_im0_cma_s0), .xout(i_mul85_glfwchoosefbconfig45_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul85_glfwchoosefbconfig45_im0_cma_q = $unsigned(i_mul85_glfwchoosefbconfig45_im0_cma_qq[27:0]);

    // i_mul85_glfwchoosefbconfig45_im8_cma(CHAINMULTADD,518)@133 + 3
    assign i_mul85_glfwchoosefbconfig45_im8_cma_reset = ~ (resetn);
    assign i_mul85_glfwchoosefbconfig45_im8_cma_ena0 = 1'b1;
    assign i_mul85_glfwchoosefbconfig45_im8_cma_ena1 = i_mul85_glfwchoosefbconfig45_im8_cma_ena0;
    assign i_mul85_glfwchoosefbconfig45_im8_cma_ena2 = i_mul85_glfwchoosefbconfig45_im8_cma_ena0;

    assign i_mul85_glfwchoosefbconfig45_im8_cma_a0 = i_mul85_glfwchoosefbconfig45_bs1_merged_bit_select_c;
    assign i_mul85_glfwchoosefbconfig45_im8_cma_c0 = i_mul85_glfwchoosefbconfig45_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul85_glfwchoosefbconfig45_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul85_glfwchoosefbconfig45_im8_cma_ena2, i_mul85_glfwchoosefbconfig45_im8_cma_ena1, i_mul85_glfwchoosefbconfig45_im8_cma_ena0 }),
        .aclr({ i_mul85_glfwchoosefbconfig45_im8_cma_reset, i_mul85_glfwchoosefbconfig45_im8_cma_reset }),
        .ay(i_mul85_glfwchoosefbconfig45_im8_cma_a0),
        .ax(i_mul85_glfwchoosefbconfig45_im8_cma_c0),
        .resulta(i_mul85_glfwchoosefbconfig45_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul85_glfwchoosefbconfig45_im8_cma_delay ( .xin(i_mul85_glfwchoosefbconfig45_im8_cma_s0), .xout(i_mul85_glfwchoosefbconfig45_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul85_glfwchoosefbconfig45_im8_cma_q = $unsigned(i_mul85_glfwchoosefbconfig45_im8_cma_qq[35:0]);

    // i_mul85_glfwchoosefbconfig45_sums_join_0(BITJOIN,467)@136
    assign i_mul85_glfwchoosefbconfig45_sums_join_0_q = {i_mul85_glfwchoosefbconfig45_im0_cma_q, i_mul85_glfwchoosefbconfig45_im8_cma_q};

    // i_mul85_glfwchoosefbconfig45_sums_result_add_0_0(ADD,470)@136
    assign i_mul85_glfwchoosefbconfig45_sums_result_add_0_0_a = {1'b0, i_mul85_glfwchoosefbconfig45_sums_join_0_q};
    assign i_mul85_glfwchoosefbconfig45_sums_result_add_0_0_b = {14'b00000000000000, i_mul85_glfwchoosefbconfig45_sums_align_1_q};
    assign i_mul85_glfwchoosefbconfig45_sums_result_add_0_0_o = $unsigned(i_mul85_glfwchoosefbconfig45_sums_result_add_0_0_a) + $unsigned(i_mul85_glfwchoosefbconfig45_sums_result_add_0_0_b);
    assign i_mul85_glfwchoosefbconfig45_sums_result_add_0_0_q = i_mul85_glfwchoosefbconfig45_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul85_glfwchoosefbconfig45_sel_x(BITSELECT,254)@136
    assign bgTrunc_i_mul85_glfwchoosefbconfig45_sel_x_in = i_mul85_glfwchoosefbconfig45_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul85_glfwchoosefbconfig45_sel_x_b = bgTrunc_i_mul85_glfwchoosefbconfig45_sel_x_in[31:0];

    // i_mul85_glfwchoosefbconfig45_vt_select_30(BITSELECT,168)@136
    assign i_mul85_glfwchoosefbconfig45_vt_select_30_b = bgTrunc_i_mul85_glfwchoosefbconfig45_sel_x_b[30:0];

    // i_mul85_glfwchoosefbconfig45_vt_join(BITJOIN,167)@136
    assign i_mul85_glfwchoosefbconfig45_vt_join_q = {GND_q, i_mul85_glfwchoosefbconfig45_vt_select_30_b};

    // redist4_sync_together140_aunroll_x_in_c1_eni48_23_tpl_3(DELAY,549)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together140_aunroll_x_in_c1_eni48_23_tpl_3_delay_0 <= '0;
            redist4_sync_together140_aunroll_x_in_c1_eni48_23_tpl_3_delay_1 <= '0;
            redist4_sync_together140_aunroll_x_in_c1_eni48_23_tpl_3_q <= '0;
        end
        else
        begin
            redist4_sync_together140_aunroll_x_in_c1_eni48_23_tpl_3_delay_0 <= $unsigned(in_c1_eni48_23_tpl);
            redist4_sync_together140_aunroll_x_in_c1_eni48_23_tpl_3_delay_1 <= redist4_sync_together140_aunroll_x_in_c1_eni48_23_tpl_3_delay_0;
            redist4_sync_together140_aunroll_x_in_c1_eni48_23_tpl_3_q <= redist4_sync_together140_aunroll_x_in_c1_eni48_23_tpl_3_delay_1;
        end
    end

    // i_acl_8_glfwchoosefbconfig46(MUX,64)@136
    assign i_acl_8_glfwchoosefbconfig46_s = redist4_sync_together140_aunroll_x_in_c1_eni48_23_tpl_3_q;
    always @(i_acl_8_glfwchoosefbconfig46_s or c_i32_0129_q or i_mul85_glfwchoosefbconfig45_vt_join_q)
    begin
        unique case (i_acl_8_glfwchoosefbconfig46_s)
            1'b0 : i_acl_8_glfwchoosefbconfig46_q = c_i32_0129_q;
            1'b1 : i_acl_8_glfwchoosefbconfig46_q = i_mul85_glfwchoosefbconfig45_vt_join_q;
            default : i_acl_8_glfwchoosefbconfig46_q = 32'b0;
        endcase
    end

    // i_acl_8_glfwchoosefbconfig46_vt_select_30(BITSELECT,67)@136
    assign i_acl_8_glfwchoosefbconfig46_vt_select_30_b = i_acl_8_glfwchoosefbconfig46_q[30:0];

    // redist32_i_acl_8_glfwchoosefbconfig46_vt_select_30_b_1(DELAY,577)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_acl_8_glfwchoosefbconfig46_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist32_i_acl_8_glfwchoosefbconfig46_vt_select_30_b_1_q <= $unsigned(i_acl_8_glfwchoosefbconfig46_vt_select_30_b);
        end
    end

    // i_acl_8_glfwchoosefbconfig46_vt_join(BITJOIN,66)@137
    assign i_acl_8_glfwchoosefbconfig46_vt_join_q = {GND_q, redist32_i_acl_8_glfwchoosefbconfig46_vt_select_30_b_1_q};

    // i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72(ADD,202)@137
    assign i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_a = {1'b0, i_acl_8_glfwchoosefbconfig46_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_b = {1'b0, i_add98_glfwchoosefbconfig49_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_o = $unsigned(i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_a) + $unsigned(i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_b);
    assign i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_q = i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_sel_x(BITSELECT,264)@137
    assign bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_sel_x_b = i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_q[31:0];

    // i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76(ADD,186)@137
    assign i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_a = {1'b0, bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig72_sel_x_b};
    assign i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_b = {1'b0, bgTrunc_i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig73_sel_x_b};
    assign i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_o = $unsigned(i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_a) + $unsigned(i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_b);
    assign i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_q = i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_sel_x(BITSELECT,259)@137
    assign bgTrunc_i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_sel_x_b = i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_q[31:0];

    // redist19_bgTrunc_i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_sel_x_b_1(DELAY,564)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_bgTrunc_i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist19_bgTrunc_i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_sel_x_b_1_q <= $unsigned(bgTrunc_i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_sel_x_b);
        end
    end

    // i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78(ADD,188)@138
    assign i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_a = {1'b0, redist19_bgTrunc_i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig76_sel_x_b_1_q};
    assign i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_b = {1'b0, redist18_bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig77_sel_x_b_1_q};
    assign i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_o = $unsigned(i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_a) + $unsigned(i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_b);
    assign i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_q = i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_sel_x(BITSELECT,261)@138
    assign bgTrunc_i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_sel_x_b = i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_q[31:0];

    // i_spec_select127_glfwchoosefbconfig71_vt_const_31(CONSTANT,208)
    assign i_spec_select127_glfwchoosefbconfig71_vt_const_31_q = $unsigned(31'b0000000000000000000000000000000);

    // i_tobool170_glfwchoosefbconfig68(LOGICAL,223)@133
    assign i_tobool170_glfwchoosefbconfig68_q = $unsigned(in_c1_eni48_42_tpl == c_i32_0129_q ? 1'b1 : 1'b0);

    // i_narrow161_glfwchoosefbconfig70(LOGICAL,180)@133 + 1
    assign i_narrow161_glfwchoosefbconfig70_qi = i_tobool170_glfwchoosefbconfig68_q & in_c1_eni48_43_tpl;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_narrow161_glfwchoosefbconfig70_delay ( .xin(i_narrow161_glfwchoosefbconfig70_qi), .xout(i_narrow161_glfwchoosefbconfig70_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_narrow161_glfwchoosefbconfig70_q_5(DELAY,567)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_narrow161_glfwchoosefbconfig70_q_5_delay_0 <= '0;
            redist22_i_narrow161_glfwchoosefbconfig70_q_5_delay_1 <= '0;
            redist22_i_narrow161_glfwchoosefbconfig70_q_5_delay_2 <= '0;
            redist22_i_narrow161_glfwchoosefbconfig70_q_5_q <= '0;
        end
        else
        begin
            redist22_i_narrow161_glfwchoosefbconfig70_q_5_delay_0 <= $unsigned(i_narrow161_glfwchoosefbconfig70_q);
            redist22_i_narrow161_glfwchoosefbconfig70_q_5_delay_1 <= redist22_i_narrow161_glfwchoosefbconfig70_q_5_delay_0;
            redist22_i_narrow161_glfwchoosefbconfig70_q_5_delay_2 <= redist22_i_narrow161_glfwchoosefbconfig70_q_5_delay_1;
            redist22_i_narrow161_glfwchoosefbconfig70_q_5_q <= redist22_i_narrow161_glfwchoosefbconfig70_q_5_delay_2;
        end
    end

    // i_spec_select127_glfwchoosefbconfig71_sel_x(BITSELECT,284)@138
    assign i_spec_select127_glfwchoosefbconfig71_sel_x_b = {31'b0000000000000000000000000000000, redist22_i_narrow161_glfwchoosefbconfig70_q_5_q[0:0]};

    // i_spec_select127_glfwchoosefbconfig71_vt_select_0(BITSELECT,210)@138
    assign i_spec_select127_glfwchoosefbconfig71_vt_select_0_b = i_spec_select127_glfwchoosefbconfig71_sel_x_b[0:0];

    // i_spec_select127_glfwchoosefbconfig71_vt_join(BITJOIN,209)@138
    assign i_spec_select127_glfwchoosefbconfig71_vt_join_q = {i_spec_select127_glfwchoosefbconfig71_vt_const_31_q, i_spec_select127_glfwchoosefbconfig71_vt_select_0_b};

    // i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79(ADD,189)@138
    assign i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_a = {1'b0, i_spec_select127_glfwchoosefbconfig71_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_b = {1'b0, bgTrunc_i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig78_sel_x_b};
    assign i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_o = $unsigned(i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_a) + $unsigned(i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_b);
    assign i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_q = i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_sel_x(BITSELECT,262)@138
    assign bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_sel_x_b = i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_q[31:0];

    // redist17_bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_sel_x_b_1(DELAY,562)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_sel_x_b_1_q <= $unsigned(bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_sel_x_b);
        end
    end

    // i_cmp181_glfwchoosefbconfig86(COMPARE,110)@139
    assign i_cmp181_glfwchoosefbconfig86_a = {2'b00, redist17_bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig79_sel_x_b_1_q};
    assign i_cmp181_glfwchoosefbconfig86_b = {2'b00, i_leastextradiff_0135_replace_phi_glfwchoosefbconfig4_q};
    assign i_cmp181_glfwchoosefbconfig86_o = $unsigned(i_cmp181_glfwchoosefbconfig86_a) - $unsigned(i_cmp181_glfwchoosefbconfig86_b);
    assign i_cmp181_glfwchoosefbconfig86_c[0] = i_cmp181_glfwchoosefbconfig86_o[33];

    // i_cmp179_glfwchoosefbconfig84(LOGICAL,108)@139
    assign i_cmp179_glfwchoosefbconfig84_q = $unsigned(redist20_bgTrunc_i_acl_7_glfwchoosefbconfig43_sel_x_b_2_q == i_leastcolordiff_0134_replace_phi_glfwchoosefbconfig7_q ? 1'b1 : 1'b0);

    // i_or_cond_glfwchoosefbconfig87(LOGICAL,182)@139
    assign i_or_cond_glfwchoosefbconfig87_q = i_cmp179_glfwchoosefbconfig84_q & i_cmp181_glfwchoosefbconfig86_c;

    // i_reduction_glfwchoosefbconfig_19_glfwchoosefbconfig91(LOGICAL,193)@139
    assign i_reduction_glfwchoosefbconfig_19_glfwchoosefbconfig91_q = i_or_cond_glfwchoosefbconfig87_q ^ i_reduction_glfwchoosefbconfig_18_glfwchoosefbconfig90_q;

    // i_acl_20_glfwchoosefbconfig92(LOGICAL,52)@139
    assign i_acl_20_glfwchoosefbconfig92_q = i_cmp176_glfwchoosefbconfig81_q & i_reduction_glfwchoosefbconfig_19_glfwchoosefbconfig91_q;

    // i_unnamed_glfwchoosefbconfig93(LOGICAL,227)@139
    assign i_unnamed_glfwchoosefbconfig93_q = i_acl_20_glfwchoosefbconfig92_q | i_reduction_glfwchoosefbconfig_17_glfwchoosefbconfig89_q;

    // i_acl_22_glfwchoosefbconfig95(MUX,53)@139
    assign i_acl_22_glfwchoosefbconfig95_s = i_unnamed_glfwchoosefbconfig93_q;
    always @(i_acl_22_glfwchoosefbconfig95_s or redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_outputreg0_q or i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0136_pop7_glfwchoosefbconfig94_out_data_out)
    begin
        unique case (i_acl_22_glfwchoosefbconfig95_s)
            1'b0 : i_acl_22_glfwchoosefbconfig95_q = redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_outputreg0_q;
            1'b1 : i_acl_22_glfwchoosefbconfig95_q = i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0136_pop7_glfwchoosefbconfig94_out_data_out;
            default : i_acl_22_glfwchoosefbconfig95_q = 64'b0;
        endcase
    end

    // i_acl_23_glfwchoosefbconfig96(LOGICAL,54)@139
    assign i_acl_23_glfwchoosefbconfig96_q = i_cmp178_glfwchoosefbconfig83_c | i_or_cond_glfwchoosefbconfig87_q;

    // i_acl_24_glfwchoosefbconfig97(LOGICAL,55)@139
    assign i_acl_24_glfwchoosefbconfig97_q = i_cmp176_glfwchoosefbconfig81_q & i_acl_23_glfwchoosefbconfig96_q;

    // i_acl_26_glfwchoosefbconfig98(MUX,56)@139
    assign i_acl_26_glfwchoosefbconfig98_s = i_acl_24_glfwchoosefbconfig97_q;
    always @(i_acl_26_glfwchoosefbconfig98_s or i_acl_22_glfwchoosefbconfig95_q or redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_outputreg0_q)
    begin
        unique case (i_acl_26_glfwchoosefbconfig98_s)
            1'b0 : i_acl_26_glfwchoosefbconfig98_q = i_acl_22_glfwchoosefbconfig95_q;
            1'b1 : i_acl_26_glfwchoosefbconfig98_q = redist12_sync_together140_aunroll_x_in_c1_eni48_44_tpl_6_outputreg0_q;
            default : i_acl_26_glfwchoosefbconfig98_q = 64'b0;
        endcase
    end

    // valid_fanout_reg7(REG,294)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg11(REG,298)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_p1024s_struct_type_5_s_closest_0136_push7_glfwchoosefbconfig113(BLACKBOX,132)@139
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_p102A000000Z_glfwchoosefbconfig0 thei_llvm_fpga_push_p1024s_struct_type_5_s_closest_0136_push7_glfwchoosefbconfig113 (
        .in_c1_ene47(redist13_sync_together140_aunroll_x_in_c1_eni48_47_tpl_6_q),
        .in_data_in(i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig112_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0136_pop7_glfwchoosefbconfig94_out_feedback_stall_out_7),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_p1024s_struct_type_5_s_closest_0136_push7_glfwchoosefbconfig113_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_p1024s_struct_type_5_s_closest_0136_push7_glfwchoosefbconfig113_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // cpn_struct_TYPE_5gr(CONSTANT,51)
    assign cpn_struct_TYPE_5gr_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0136_pop7_glfwchoosefbconfig94(BLACKBOX,128)@139
    // out out_feedback_stall_out_7@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_p1024A000000Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0136_pop7_glfwchoosefbconfig94 (
        .in_data_in(cpn_struct_TYPE_5gr_q),
        .in_dir(redist0_sync_together140_aunroll_x_in_c1_eni48_1_tpl_6_q),
        .in_feedback_in_7(i_llvm_fpga_push_p1024s_struct_type_5_s_closest_0136_push7_glfwchoosefbconfig113_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_p1024s_struct_type_5_s_closest_0136_push7_glfwchoosefbconfig113_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0136_pop7_glfwchoosefbconfig94_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0136_pop7_glfwchoosefbconfig94_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_selcond_glfwchoosefbconfig_7_glfwchoosefbconfig111(LOGICAL,206)@139
    assign i_selcond_glfwchoosefbconfig_7_glfwchoosefbconfig111_q = redist21_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig103_q_6_q & redist34_i_acl_28_demorgan_glfwchoosefbconfig101_q_6_q;

    // i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig112(MUX,196)@139
    assign i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig112_s = i_selcond_glfwchoosefbconfig_7_glfwchoosefbconfig111_q;
    always @(i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig112_s or i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0136_pop7_glfwchoosefbconfig94_out_data_out or i_acl_26_glfwchoosefbconfig98_q)
    begin
        unique case (i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig112_s)
            1'b0 : i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig112_q = i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0136_pop7_glfwchoosefbconfig94_out_data_out;
            1'b1 : i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig112_q = i_acl_26_glfwchoosefbconfig98_q;
            default : i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig112_q = 64'b0;
        endcase
    end

    // redist14_sync_together140_aunroll_x_in_c1_eni48_48_tpl_6(DELAY,559)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_sync_together140_aunroll_x_in_c1_eni48_48_tpl_6 ( .xin(in_c1_eni48_48_tpl), .xout(redist14_sync_together140_aunroll_x_in_c1_eni48_48_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_p1024s_struct_type_5_s_unnamed_glfwchoosefbconfig31_glfwchoosefbconfig114(BLACKBOX,121)@139
    // out out_intel_reserved_ffwd_20_0@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000020Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024s_struct_type_5_s_unnamed_glfwchoosefbconfig31_glfwchoosefbconfig114 (
        .in_predicate_in(redist14_sync_together140_aunroll_x_in_c1_eni48_48_tpl_6_q),
        .in_src_data_in_20_0(i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig112_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_p1024s_struct_type_5_s_unnamed_glfwchoosefbconfig31_glfwchoosefbconfig114_out_intel_reserved_ffwd_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,238)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_p1024s_struct_type_5_s_unnamed_glfwchoosefbconfig31_glfwchoosefbconfig114_out_intel_reserved_ffwd_20_0;

    // valid_fanout_reg0(REG,287)@138 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist15_sync_together140_aunroll_x_in_i_valid_5_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,285)@139
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_glfwChooseFBConfig1 = GND_q;
    assign out_unnamed_glfwChooseFBConfig32_0_tpl = GND_q;

endmodule
