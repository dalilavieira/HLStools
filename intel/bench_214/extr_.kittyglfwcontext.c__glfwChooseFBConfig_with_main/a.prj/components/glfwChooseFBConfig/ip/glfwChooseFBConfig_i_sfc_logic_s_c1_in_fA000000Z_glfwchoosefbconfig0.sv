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
// SystemVerilog created on Sun May 24 22:33:25 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module glfwChooseFBConfig_i_sfc_logic_s_c1_in_fA000000Z_glfwchoosefbconfig0 (
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    output wire [63:0] out_intel_reserved_ffwd_21_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_glfwChooseFBConfig1,
    output wire [0:0] out_unnamed_glfwChooseFBConfig33_0_tpl,
    input wire [0:0] in_c1_eni50_0_tpl,
    input wire [0:0] in_c1_eni50_1_tpl,
    input wire [31:0] in_c1_eni50_2_tpl,
    input wire [0:0] in_c1_eni50_3_tpl,
    input wire [31:0] in_c1_eni50_4_tpl,
    input wire [0:0] in_c1_eni50_5_tpl,
    input wire [31:0] in_c1_eni50_6_tpl,
    input wire [0:0] in_c1_eni50_7_tpl,
    input wire [31:0] in_c1_eni50_8_tpl,
    input wire [31:0] in_c1_eni50_9_tpl,
    input wire [0:0] in_c1_eni50_10_tpl,
    input wire [31:0] in_c1_eni50_11_tpl,
    input wire [0:0] in_c1_eni50_12_tpl,
    input wire [31:0] in_c1_eni50_13_tpl,
    input wire [31:0] in_c1_eni50_14_tpl,
    input wire [31:0] in_c1_eni50_15_tpl,
    input wire [31:0] in_c1_eni50_16_tpl,
    input wire [0:0] in_c1_eni50_17_tpl,
    input wire [31:0] in_c1_eni50_18_tpl,
    input wire [31:0] in_c1_eni50_19_tpl,
    input wire [0:0] in_c1_eni50_20_tpl,
    input wire [31:0] in_c1_eni50_21_tpl,
    input wire [31:0] in_c1_eni50_22_tpl,
    input wire [0:0] in_c1_eni50_23_tpl,
    input wire [31:0] in_c1_eni50_24_tpl,
    input wire [0:0] in_c1_eni50_25_tpl,
    input wire [31:0] in_c1_eni50_26_tpl,
    input wire [0:0] in_c1_eni50_27_tpl,
    input wire [31:0] in_c1_eni50_28_tpl,
    input wire [0:0] in_c1_eni50_29_tpl,
    input wire [31:0] in_c1_eni50_30_tpl,
    input wire [31:0] in_c1_eni50_31_tpl,
    input wire [0:0] in_c1_eni50_32_tpl,
    input wire [31:0] in_c1_eni50_33_tpl,
    input wire [31:0] in_c1_eni50_34_tpl,
    input wire [0:0] in_c1_eni50_35_tpl,
    input wire [31:0] in_c1_eni50_36_tpl,
    input wire [31:0] in_c1_eni50_37_tpl,
    input wire [0:0] in_c1_eni50_38_tpl,
    input wire [31:0] in_c1_eni50_39_tpl,
    input wire [31:0] in_c1_eni50_40_tpl,
    input wire [0:0] in_c1_eni50_41_tpl,
    input wire [31:0] in_c1_eni50_42_tpl,
    input wire [0:0] in_c1_eni50_43_tpl,
    input wire [31:0] in_c1_eni50_44_tpl,
    input wire [0:0] in_c1_eni50_45_tpl,
    input wire [63:0] in_c1_eni50_46_tpl,
    input wire [0:0] in_c1_eni50_47_tpl,
    input wire [0:0] in_c1_eni50_48_tpl,
    input wire [0:0] in_c1_eni50_49_tpl,
    input wire [0:0] in_c1_eni50_50_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0133_q;
    wire [63:0] cpn_struct_TYPE_5gr_q;
    wire [0:0] i_acl_20_glfwchoosefbconfig96_q;
    wire [0:0] i_acl_22_glfwchoosefbconfig99_s;
    reg [63:0] i_acl_22_glfwchoosefbconfig99_q;
    wire [0:0] i_acl_23_glfwchoosefbconfig100_q;
    wire [0:0] i_acl_24_glfwchoosefbconfig101_q;
    wire [0:0] i_acl_26_glfwchoosefbconfig102_s;
    reg [63:0] i_acl_26_glfwchoosefbconfig102_q;
    wire [0:0] i_acl_28_demorgan_glfwchoosefbconfig105_qi;
    reg [0:0] i_acl_28_demorgan_glfwchoosefbconfig105_q;
    wire [0:0] i_acl_5_glfwchoosefbconfig39_s;
    reg [31:0] i_acl_5_glfwchoosefbconfig39_q;
    wire [31:0] i_acl_5_glfwchoosefbconfig39_vt_join_q;
    wire [30:0] i_acl_5_glfwchoosefbconfig39_vt_select_30_b;
    wire [32:0] i_acl_6_glfwchoosefbconfig43_a;
    wire [32:0] i_acl_6_glfwchoosefbconfig43_b;
    logic [32:0] i_acl_6_glfwchoosefbconfig43_o;
    wire [32:0] i_acl_6_glfwchoosefbconfig43_q;
    wire [32:0] i_acl_7_glfwchoosefbconfig47_a;
    wire [32:0] i_acl_7_glfwchoosefbconfig47_b;
    logic [32:0] i_acl_7_glfwchoosefbconfig47_o;
    wire [32:0] i_acl_7_glfwchoosefbconfig47_q;
    wire [0:0] i_acl_8_glfwchoosefbconfig50_s;
    reg [31:0] i_acl_8_glfwchoosefbconfig50_q;
    wire [31:0] i_acl_8_glfwchoosefbconfig50_vt_join_q;
    wire [30:0] i_acl_8_glfwchoosefbconfig50_vt_select_30_b;
    wire [0:0] i_add103_glfwchoosefbconfig53_s;
    reg [31:0] i_add103_glfwchoosefbconfig53_q;
    wire [31:0] i_add103_glfwchoosefbconfig53_vt_join_q;
    wire [30:0] i_add103_glfwchoosefbconfig53_vt_select_30_b;
    wire [0:0] i_add115_glfwchoosefbconfig56_s;
    reg [31:0] i_add115_glfwchoosefbconfig56_q;
    wire [31:0] i_add115_glfwchoosefbconfig56_vt_join_q;
    wire [30:0] i_add115_glfwchoosefbconfig56_vt_select_30_b;
    wire [0:0] i_add126_glfwchoosefbconfig59_s;
    reg [31:0] i_add126_glfwchoosefbconfig59_q;
    wire [31:0] i_add126_glfwchoosefbconfig59_vt_join_q;
    wire [30:0] i_add126_glfwchoosefbconfig59_vt_select_30_b;
    wire [0:0] i_add137_glfwchoosefbconfig62_s;
    reg [31:0] i_add137_glfwchoosefbconfig62_q;
    wire [31:0] i_add137_glfwchoosefbconfig62_vt_join_q;
    wire [30:0] i_add137_glfwchoosefbconfig62_vt_select_30_b;
    wire [0:0] i_add148_glfwchoosefbconfig65_s;
    reg [31:0] i_add148_glfwchoosefbconfig65_q;
    wire [31:0] i_add148_glfwchoosefbconfig65_vt_join_q;
    wire [30:0] i_add148_glfwchoosefbconfig65_vt_select_30_b;
    wire [0:0] i_add159_glfwchoosefbconfig68_s;
    reg [31:0] i_add159_glfwchoosefbconfig68_q;
    wire [31:0] i_add159_glfwchoosefbconfig68_vt_join_q;
    wire [30:0] i_add159_glfwchoosefbconfig68_vt_select_30_b;
    wire [0:0] i_add171_glfwchoosefbconfig71_s;
    reg [31:0] i_add171_glfwchoosefbconfig71_q;
    wire [31:0] i_add171_glfwchoosefbconfig71_vt_join_q;
    wire [30:0] i_add171_glfwchoosefbconfig71_vt_select_30_b;
    wire [0:0] i_add68_glfwchoosefbconfig42_s;
    reg [31:0] i_add68_glfwchoosefbconfig42_q;
    wire [31:0] i_add68_glfwchoosefbconfig42_vt_join_q;
    wire [30:0] i_add68_glfwchoosefbconfig42_vt_select_30_b;
    wire [0:0] i_add79_glfwchoosefbconfig46_s;
    reg [31:0] i_add79_glfwchoosefbconfig46_q;
    wire [31:0] i_add79_glfwchoosefbconfig46_vt_join_q;
    wire [30:0] i_add79_glfwchoosefbconfig46_vt_select_30_b;
    wire [0:0] i_cmp11_glfwchoosefbconfig11_q;
    wire [33:0] i_cmp179_glfwchoosefbconfig84_a;
    wire [33:0] i_cmp179_glfwchoosefbconfig84_b;
    logic [33:0] i_cmp179_glfwchoosefbconfig84_o;
    wire [0:0] i_cmp179_glfwchoosefbconfig84_c;
    wire [0:0] i_cmp17_glfwchoosefbconfig14_q;
    wire [0:0] i_cmp181_glfwchoosefbconfig85_q;
    wire [33:0] i_cmp183_glfwchoosefbconfig87_a;
    wire [33:0] i_cmp183_glfwchoosefbconfig87_b;
    logic [33:0] i_cmp183_glfwchoosefbconfig87_o;
    wire [0:0] i_cmp183_glfwchoosefbconfig87_c;
    wire [0:0] i_cmp184_glfwchoosefbconfig88_q;
    wire [33:0] i_cmp186_glfwchoosefbconfig90_a;
    wire [33:0] i_cmp186_glfwchoosefbconfig90_b;
    logic [33:0] i_cmp186_glfwchoosefbconfig90_o;
    wire [0:0] i_cmp186_glfwchoosefbconfig90_c;
    wire [0:0] i_cmp191_glfwchoosefbconfig103_q;
    wire [0:0] i_cmp24_glfwchoosefbconfig17_q;
    wire [33:0] i_cmp32_glfwchoosefbconfig20_a;
    wire [33:0] i_cmp32_glfwchoosefbconfig20_b;
    logic [33:0] i_cmp32_glfwchoosefbconfig20_o;
    wire [0:0] i_cmp32_glfwchoosefbconfig20_c;
    wire [0:0] i_cmp40_glfwchoosefbconfig25_q;
    wire [0:0] i_cmp45_glfwchoosefbconfig28_q;
    wire [30:0] i_inc47_glfwchoosefbconfig30_vt_const_31_q;
    wire [31:0] i_inc47_glfwchoosefbconfig30_vt_join_q;
    wire [0:0] i_inc47_glfwchoosefbconfig30_vt_select_0_b;
    wire [0:0] i_leastcolordiff_0138_replace_phi_glfwchoosefbconfig7_s;
    reg [31:0] i_leastcolordiff_0138_replace_phi_glfwchoosefbconfig7_q;
    wire [0:0] i_leastextradiff_0139_replace_phi_glfwchoosefbconfig4_s;
    reg [31:0] i_leastextradiff_0139_replace_phi_glfwchoosefbconfig4_q;
    wire [0:0] i_leastmissing_0137_replace_phi_glfwchoosefbconfig10_s;
    reg [31:0] i_leastmissing_0137_replace_phi_glfwchoosefbconfig10_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig29_glfwchoosefbconfig2_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig30_glfwchoosefbconfig5_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig31_glfwchoosefbconfig8_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024s_struct_type_5_s_unnamed_glfwchoosefbconfig32_glfwchoosefbconfig118_out_intel_reserved_ffwd_21_0;
    wire [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig31_a;
    wire [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig31_b;
    logic [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig31_o;
    wire [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig31_q;
    wire [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig32_a;
    wire [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig32_b;
    logic [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig32_o;
    wire [1:0] i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig32_q;
    wire [2:0] i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig33_a;
    wire [2:0] i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig33_b;
    logic [2:0] i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig33_o;
    wire [2:0] i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig33_q;
    wire [31:0] i_llvm_fpga_pop_i32_leastcolordiff_0138_pop9_glfwchoosefbconfig6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_leastcolordiff_0138_pop9_glfwchoosefbconfig6_out_feedback_stall_out_9;
    wire [31:0] i_llvm_fpga_pop_i32_leastextradiff_0139_pop8_glfwchoosefbconfig3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_leastextradiff_0139_pop8_glfwchoosefbconfig3_out_feedback_stall_out_8;
    wire [31:0] i_llvm_fpga_pop_i32_leastmissing_0137_pop10_glfwchoosefbconfig9_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_leastmissing_0137_pop10_glfwchoosefbconfig9_out_feedback_stall_out_10;
    wire [63:0] i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0140_pop7_glfwchoosefbconfig98_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0140_pop7_glfwchoosefbconfig98_out_feedback_stall_out_7;
    wire [31:0] i_llvm_fpga_push_i32_leastcolordiff_0138_push9_glfwchoosefbconfig112_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_leastcolordiff_0138_push9_glfwchoosefbconfig112_out_feedback_valid_out_9;
    wire [31:0] i_llvm_fpga_push_i32_leastextradiff_0139_push8_glfwchoosefbconfig114_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_leastextradiff_0139_push8_glfwchoosefbconfig114_out_feedback_valid_out_8;
    wire [31:0] i_llvm_fpga_push_i32_leastmissing_0137_push10_glfwchoosefbconfig110_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i32_leastmissing_0137_push10_glfwchoosefbconfig110_out_feedback_valid_out_10;
    wire [63:0] i_llvm_fpga_push_p1024s_struct_type_5_s_closest_0140_push7_glfwchoosefbconfig117_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_p1024s_struct_type_5_s_closest_0140_push7_glfwchoosefbconfig117_out_feedback_valid_out_7;
    wire [31:0] i_mul102_glfwchoosefbconfig52_vt_join_q;
    wire [30:0] i_mul102_glfwchoosefbconfig52_vt_select_30_b;
    wire [31:0] i_mul114_glfwchoosefbconfig55_vt_join_q;
    wire [30:0] i_mul114_glfwchoosefbconfig55_vt_select_30_b;
    wire [31:0] i_mul125_glfwchoosefbconfig58_vt_join_q;
    wire [30:0] i_mul125_glfwchoosefbconfig58_vt_select_30_b;
    wire [31:0] i_mul136_glfwchoosefbconfig61_vt_join_q;
    wire [30:0] i_mul136_glfwchoosefbconfig61_vt_select_30_b;
    wire [31:0] i_mul147_glfwchoosefbconfig64_vt_join_q;
    wire [30:0] i_mul147_glfwchoosefbconfig64_vt_select_30_b;
    wire [31:0] i_mul158_glfwchoosefbconfig67_vt_join_q;
    wire [30:0] i_mul158_glfwchoosefbconfig67_vt_select_30_b;
    wire [31:0] i_mul170_glfwchoosefbconfig70_vt_join_q;
    wire [30:0] i_mul170_glfwchoosefbconfig70_vt_select_30_b;
    wire [31:0] i_mul67_glfwchoosefbconfig41_vt_join_q;
    wire [30:0] i_mul67_glfwchoosefbconfig41_vt_select_30_b;
    wire [31:0] i_mul78_glfwchoosefbconfig45_vt_join_q;
    wire [30:0] i_mul78_glfwchoosefbconfig45_vt_select_30_b;
    wire [31:0] i_mul90_glfwchoosefbconfig49_vt_join_q;
    wire [30:0] i_mul90_glfwchoosefbconfig49_vt_select_30_b;
    wire [31:0] i_mul_glfwchoosefbconfig38_vt_join_q;
    wire [30:0] i_mul_glfwchoosefbconfig38_vt_select_30_b;
    wire [0:0] i_narrow162_glfwchoosefbconfig16_q;
    wire [0:0] i_narrow163_glfwchoosefbconfig19_q;
    wire [0:0] i_narrow164_glfwchoosefbconfig27_q;
    wire [0:0] i_narrow165_glfwchoosefbconfig74_q;
    wire [0:0] i_narrow_glfwchoosefbconfig13_q;
    wire [0:0] i_or_cond_glfwchoosefbconfig91_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig109_s;
    reg [31:0] i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig109_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_17_glfwchoosefbconfig92_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_18_glfwchoosefbconfig93_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_19_glfwchoosefbconfig94_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig111_s;
    reg [31:0] i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig111_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_20_glfwchoosefbconfig95_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig113_s;
    reg [31:0] i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig113_q;
    wire [0:0] i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig116_s;
    reg [63:0] i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig116_q;
    wire [28:0] i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_vt_const_31_q;
    wire [31:0] i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_vt_join_q;
    wire [2:0] i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_vt_select_2_b;
    wire [32:0] i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_q;
    wire [32:0] i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_a;
    wire [32:0] i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_b;
    logic [32:0] i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_o;
    wire [32:0] i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_q;
    wire [0:0] i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_qi;
    reg [0:0] i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q;
    wire [0:0] i_selcond_glfwchoosefbconfig_1_glfwchoosefbconfig108_q;
    wire [0:0] i_selcond_glfwchoosefbconfig_7_glfwchoosefbconfig115_q;
    wire [31:0] i_spec_select131_glfwchoosefbconfig75_vt_join_q;
    wire [0:0] i_spec_select131_glfwchoosefbconfig75_vt_select_0_b;
    wire [32:0] i_sub110_glfwchoosefbconfig54_a;
    wire [32:0] i_sub110_glfwchoosefbconfig54_b;
    logic [32:0] i_sub110_glfwchoosefbconfig54_o;
    wire [32:0] i_sub110_glfwchoosefbconfig54_q;
    wire [32:0] i_sub121_glfwchoosefbconfig57_a;
    wire [32:0] i_sub121_glfwchoosefbconfig57_b;
    logic [32:0] i_sub121_glfwchoosefbconfig57_o;
    wire [32:0] i_sub121_glfwchoosefbconfig57_q;
    wire [32:0] i_sub132_glfwchoosefbconfig60_a;
    wire [32:0] i_sub132_glfwchoosefbconfig60_b;
    logic [32:0] i_sub132_glfwchoosefbconfig60_o;
    wire [32:0] i_sub132_glfwchoosefbconfig60_q;
    wire [32:0] i_sub143_glfwchoosefbconfig63_a;
    wire [32:0] i_sub143_glfwchoosefbconfig63_b;
    logic [32:0] i_sub143_glfwchoosefbconfig63_o;
    wire [32:0] i_sub143_glfwchoosefbconfig63_q;
    wire [32:0] i_sub154_glfwchoosefbconfig66_a;
    wire [32:0] i_sub154_glfwchoosefbconfig66_b;
    logic [32:0] i_sub154_glfwchoosefbconfig66_o;
    wire [32:0] i_sub154_glfwchoosefbconfig66_q;
    wire [32:0] i_sub166_glfwchoosefbconfig69_a;
    wire [32:0] i_sub166_glfwchoosefbconfig69_b;
    logic [32:0] i_sub166_glfwchoosefbconfig69_o;
    wire [32:0] i_sub166_glfwchoosefbconfig69_q;
    wire [32:0] i_sub53_glfwchoosefbconfig37_a;
    wire [32:0] i_sub53_glfwchoosefbconfig37_b;
    logic [32:0] i_sub53_glfwchoosefbconfig37_o;
    wire [32:0] i_sub53_glfwchoosefbconfig37_q;
    wire [32:0] i_sub63_glfwchoosefbconfig40_a;
    wire [32:0] i_sub63_glfwchoosefbconfig40_b;
    logic [32:0] i_sub63_glfwchoosefbconfig40_o;
    wire [32:0] i_sub63_glfwchoosefbconfig40_q;
    wire [32:0] i_sub74_glfwchoosefbconfig44_a;
    wire [32:0] i_sub74_glfwchoosefbconfig44_b;
    logic [32:0] i_sub74_glfwchoosefbconfig44_o;
    wire [32:0] i_sub74_glfwchoosefbconfig44_q;
    wire [32:0] i_sub86_glfwchoosefbconfig48_a;
    wire [32:0] i_sub86_glfwchoosefbconfig48_b;
    logic [32:0] i_sub86_glfwchoosefbconfig48_o;
    wire [32:0] i_sub86_glfwchoosefbconfig48_q;
    wire [32:0] i_sub98_glfwchoosefbconfig51_a;
    wire [32:0] i_sub98_glfwchoosefbconfig51_b;
    logic [32:0] i_sub98_glfwchoosefbconfig51_o;
    wire [32:0] i_sub98_glfwchoosefbconfig51_q;
    wire [32:0] i_sub_glfwchoosefbconfig22_a;
    wire [32:0] i_sub_glfwchoosefbconfig22_b;
    logic [32:0] i_sub_glfwchoosefbconfig22_o;
    wire [32:0] i_sub_glfwchoosefbconfig22_q;
    wire [0:0] i_tobool175_glfwchoosefbconfig72_q;
    wire [0:0] i_unnamed_glfwchoosefbconfig106_q;
    wire [0:0] i_unnamed_glfwchoosefbconfig23_q;
    wire [0:0] i_unnamed_glfwchoosefbconfig24_s;
    reg [31:0] i_unnamed_glfwchoosefbconfig24_q;
    wire [0:0] i_unnamed_glfwchoosefbconfig97_q;
    wire [31:0] bgTrunc_i_acl_6_glfwchoosefbconfig43_sel_x_b;
    wire [31:0] bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b;
    wire [63:0] bgTrunc_i_mul102_glfwchoosefbconfig52_sel_x_in;
    wire [31:0] bgTrunc_i_mul102_glfwchoosefbconfig52_sel_x_b;
    wire [63:0] bgTrunc_i_mul114_glfwchoosefbconfig55_sel_x_in;
    wire [31:0] bgTrunc_i_mul114_glfwchoosefbconfig55_sel_x_b;
    wire [63:0] bgTrunc_i_mul125_glfwchoosefbconfig58_sel_x_in;
    wire [31:0] bgTrunc_i_mul125_glfwchoosefbconfig58_sel_x_b;
    wire [63:0] bgTrunc_i_mul136_glfwchoosefbconfig61_sel_x_in;
    wire [31:0] bgTrunc_i_mul136_glfwchoosefbconfig61_sel_x_b;
    wire [63:0] bgTrunc_i_mul147_glfwchoosefbconfig64_sel_x_in;
    wire [31:0] bgTrunc_i_mul147_glfwchoosefbconfig64_sel_x_b;
    wire [63:0] bgTrunc_i_mul158_glfwchoosefbconfig67_sel_x_in;
    wire [31:0] bgTrunc_i_mul158_glfwchoosefbconfig67_sel_x_b;
    wire [63:0] bgTrunc_i_mul170_glfwchoosefbconfig70_sel_x_in;
    wire [31:0] bgTrunc_i_mul170_glfwchoosefbconfig70_sel_x_b;
    wire [63:0] bgTrunc_i_mul67_glfwchoosefbconfig41_sel_x_in;
    wire [31:0] bgTrunc_i_mul67_glfwchoosefbconfig41_sel_x_b;
    wire [63:0] bgTrunc_i_mul78_glfwchoosefbconfig45_sel_x_in;
    wire [31:0] bgTrunc_i_mul78_glfwchoosefbconfig45_sel_x_b;
    wire [63:0] bgTrunc_i_mul90_glfwchoosefbconfig49_sel_x_in;
    wire [31:0] bgTrunc_i_mul90_glfwchoosefbconfig49_sel_x_b;
    wire [63:0] bgTrunc_i_mul_glfwchoosefbconfig38_sel_x_in;
    wire [31:0] bgTrunc_i_mul_glfwchoosefbconfig38_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_sel_x_b;
    wire [31:0] bgTrunc_i_sub110_glfwchoosefbconfig54_sel_x_b;
    wire [31:0] bgTrunc_i_sub121_glfwchoosefbconfig57_sel_x_b;
    wire [31:0] bgTrunc_i_sub132_glfwchoosefbconfig60_sel_x_b;
    wire [31:0] bgTrunc_i_sub143_glfwchoosefbconfig63_sel_x_b;
    wire [31:0] bgTrunc_i_sub154_glfwchoosefbconfig66_sel_x_b;
    wire [31:0] bgTrunc_i_sub166_glfwchoosefbconfig69_sel_x_b;
    wire [31:0] bgTrunc_i_sub53_glfwchoosefbconfig37_sel_x_b;
    wire [31:0] bgTrunc_i_sub63_glfwchoosefbconfig40_sel_x_b;
    wire [31:0] bgTrunc_i_sub74_glfwchoosefbconfig44_sel_x_b;
    wire [31:0] bgTrunc_i_sub86_glfwchoosefbconfig48_sel_x_b;
    wire [31:0] bgTrunc_i_sub98_glfwchoosefbconfig51_sel_x_b;
    wire [31:0] bgTrunc_i_sub_glfwchoosefbconfig22_sel_x_b;
    wire [31:0] i_inc47_glfwchoosefbconfig30_sel_x_b;
    wire [31:0] i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_sel_x_b;
    wire [31:0] i_spec_select131_glfwchoosefbconfig75_sel_x_b;
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
    wire [63:0] i_mul102_glfwchoosefbconfig52_sums_join_0_q;
    wire [50:0] i_mul102_glfwchoosefbconfig52_sums_align_1_q;
    wire [50:0] i_mul102_glfwchoosefbconfig52_sums_align_1_qint;
    wire [64:0] i_mul102_glfwchoosefbconfig52_sums_result_add_0_0_a;
    wire [64:0] i_mul102_glfwchoosefbconfig52_sums_result_add_0_0_b;
    logic [64:0] i_mul102_glfwchoosefbconfig52_sums_result_add_0_0_o;
    wire [64:0] i_mul102_glfwchoosefbconfig52_sums_result_add_0_0_q;
    wire [63:0] i_mul114_glfwchoosefbconfig55_sums_join_0_q;
    wire [50:0] i_mul114_glfwchoosefbconfig55_sums_align_1_q;
    wire [50:0] i_mul114_glfwchoosefbconfig55_sums_align_1_qint;
    wire [64:0] i_mul114_glfwchoosefbconfig55_sums_result_add_0_0_a;
    wire [64:0] i_mul114_glfwchoosefbconfig55_sums_result_add_0_0_b;
    logic [64:0] i_mul114_glfwchoosefbconfig55_sums_result_add_0_0_o;
    wire [64:0] i_mul114_glfwchoosefbconfig55_sums_result_add_0_0_q;
    wire [63:0] i_mul125_glfwchoosefbconfig58_sums_join_0_q;
    wire [50:0] i_mul125_glfwchoosefbconfig58_sums_align_1_q;
    wire [50:0] i_mul125_glfwchoosefbconfig58_sums_align_1_qint;
    wire [64:0] i_mul125_glfwchoosefbconfig58_sums_result_add_0_0_a;
    wire [64:0] i_mul125_glfwchoosefbconfig58_sums_result_add_0_0_b;
    logic [64:0] i_mul125_glfwchoosefbconfig58_sums_result_add_0_0_o;
    wire [64:0] i_mul125_glfwchoosefbconfig58_sums_result_add_0_0_q;
    wire [63:0] i_mul136_glfwchoosefbconfig61_sums_join_0_q;
    wire [50:0] i_mul136_glfwchoosefbconfig61_sums_align_1_q;
    wire [50:0] i_mul136_glfwchoosefbconfig61_sums_align_1_qint;
    wire [64:0] i_mul136_glfwchoosefbconfig61_sums_result_add_0_0_a;
    wire [64:0] i_mul136_glfwchoosefbconfig61_sums_result_add_0_0_b;
    logic [64:0] i_mul136_glfwchoosefbconfig61_sums_result_add_0_0_o;
    wire [64:0] i_mul136_glfwchoosefbconfig61_sums_result_add_0_0_q;
    wire [63:0] i_mul147_glfwchoosefbconfig64_sums_join_0_q;
    wire [50:0] i_mul147_glfwchoosefbconfig64_sums_align_1_q;
    wire [50:0] i_mul147_glfwchoosefbconfig64_sums_align_1_qint;
    wire [64:0] i_mul147_glfwchoosefbconfig64_sums_result_add_0_0_a;
    wire [64:0] i_mul147_glfwchoosefbconfig64_sums_result_add_0_0_b;
    logic [64:0] i_mul147_glfwchoosefbconfig64_sums_result_add_0_0_o;
    wire [64:0] i_mul147_glfwchoosefbconfig64_sums_result_add_0_0_q;
    wire [63:0] i_mul158_glfwchoosefbconfig67_sums_join_0_q;
    wire [50:0] i_mul158_glfwchoosefbconfig67_sums_align_1_q;
    wire [50:0] i_mul158_glfwchoosefbconfig67_sums_align_1_qint;
    wire [64:0] i_mul158_glfwchoosefbconfig67_sums_result_add_0_0_a;
    wire [64:0] i_mul158_glfwchoosefbconfig67_sums_result_add_0_0_b;
    logic [64:0] i_mul158_glfwchoosefbconfig67_sums_result_add_0_0_o;
    wire [64:0] i_mul158_glfwchoosefbconfig67_sums_result_add_0_0_q;
    wire [63:0] i_mul170_glfwchoosefbconfig70_sums_join_0_q;
    wire [50:0] i_mul170_glfwchoosefbconfig70_sums_align_1_q;
    wire [50:0] i_mul170_glfwchoosefbconfig70_sums_align_1_qint;
    wire [64:0] i_mul170_glfwchoosefbconfig70_sums_result_add_0_0_a;
    wire [64:0] i_mul170_glfwchoosefbconfig70_sums_result_add_0_0_b;
    logic [64:0] i_mul170_glfwchoosefbconfig70_sums_result_add_0_0_o;
    wire [64:0] i_mul170_glfwchoosefbconfig70_sums_result_add_0_0_q;
    wire [63:0] i_mul67_glfwchoosefbconfig41_sums_join_0_q;
    wire [50:0] i_mul67_glfwchoosefbconfig41_sums_align_1_q;
    wire [50:0] i_mul67_glfwchoosefbconfig41_sums_align_1_qint;
    wire [64:0] i_mul67_glfwchoosefbconfig41_sums_result_add_0_0_a;
    wire [64:0] i_mul67_glfwchoosefbconfig41_sums_result_add_0_0_b;
    logic [64:0] i_mul67_glfwchoosefbconfig41_sums_result_add_0_0_o;
    wire [64:0] i_mul67_glfwchoosefbconfig41_sums_result_add_0_0_q;
    wire [63:0] i_mul78_glfwchoosefbconfig45_sums_join_0_q;
    wire [50:0] i_mul78_glfwchoosefbconfig45_sums_align_1_q;
    wire [50:0] i_mul78_glfwchoosefbconfig45_sums_align_1_qint;
    wire [64:0] i_mul78_glfwchoosefbconfig45_sums_result_add_0_0_a;
    wire [64:0] i_mul78_glfwchoosefbconfig45_sums_result_add_0_0_b;
    logic [64:0] i_mul78_glfwchoosefbconfig45_sums_result_add_0_0_o;
    wire [64:0] i_mul78_glfwchoosefbconfig45_sums_result_add_0_0_q;
    wire [63:0] i_mul90_glfwchoosefbconfig49_sums_join_0_q;
    wire [50:0] i_mul90_glfwchoosefbconfig49_sums_align_1_q;
    wire [50:0] i_mul90_glfwchoosefbconfig49_sums_align_1_qint;
    wire [64:0] i_mul90_glfwchoosefbconfig49_sums_result_add_0_0_a;
    wire [64:0] i_mul90_glfwchoosefbconfig49_sums_result_add_0_0_b;
    logic [64:0] i_mul90_glfwchoosefbconfig49_sums_result_add_0_0_o;
    wire [64:0] i_mul90_glfwchoosefbconfig49_sums_result_add_0_0_q;
    wire [63:0] i_mul_glfwchoosefbconfig38_sums_join_0_q;
    wire [50:0] i_mul_glfwchoosefbconfig38_sums_align_1_q;
    wire [50:0] i_mul_glfwchoosefbconfig38_sums_align_1_qint;
    wire [64:0] i_mul_glfwchoosefbconfig38_sums_result_add_0_0_a;
    wire [64:0] i_mul_glfwchoosefbconfig38_sums_result_add_0_0_b;
    logic [64:0] i_mul_glfwchoosefbconfig38_sums_result_add_0_0_o;
    wire [64:0] i_mul_glfwchoosefbconfig38_sums_result_add_0_0_q;
    wire i_mul102_glfwchoosefbconfig52_im0_cma_reset;
    wire [13:0] i_mul102_glfwchoosefbconfig52_im0_cma_a0;
    wire [13:0] i_mul102_glfwchoosefbconfig52_im0_cma_c0;
    wire [27:0] i_mul102_glfwchoosefbconfig52_im0_cma_s0;
    wire [27:0] i_mul102_glfwchoosefbconfig52_im0_cma_qq;
    wire [27:0] i_mul102_glfwchoosefbconfig52_im0_cma_q;
    wire i_mul102_glfwchoosefbconfig52_im0_cma_ena0;
    wire i_mul102_glfwchoosefbconfig52_im0_cma_ena1;
    wire i_mul102_glfwchoosefbconfig52_im0_cma_ena2;
    wire i_mul102_glfwchoosefbconfig52_im8_cma_reset;
    wire [17:0] i_mul102_glfwchoosefbconfig52_im8_cma_a0;
    wire [17:0] i_mul102_glfwchoosefbconfig52_im8_cma_c0;
    wire [35:0] i_mul102_glfwchoosefbconfig52_im8_cma_s0;
    wire [35:0] i_mul102_glfwchoosefbconfig52_im8_cma_qq;
    wire [35:0] i_mul102_glfwchoosefbconfig52_im8_cma_q;
    wire i_mul102_glfwchoosefbconfig52_im8_cma_ena0;
    wire i_mul102_glfwchoosefbconfig52_im8_cma_ena1;
    wire i_mul102_glfwchoosefbconfig52_im8_cma_ena2;
    wire i_mul114_glfwchoosefbconfig55_im0_cma_reset;
    wire [13:0] i_mul114_glfwchoosefbconfig55_im0_cma_a0;
    wire [13:0] i_mul114_glfwchoosefbconfig55_im0_cma_c0;
    wire [27:0] i_mul114_glfwchoosefbconfig55_im0_cma_s0;
    wire [27:0] i_mul114_glfwchoosefbconfig55_im0_cma_qq;
    wire [27:0] i_mul114_glfwchoosefbconfig55_im0_cma_q;
    wire i_mul114_glfwchoosefbconfig55_im0_cma_ena0;
    wire i_mul114_glfwchoosefbconfig55_im0_cma_ena1;
    wire i_mul114_glfwchoosefbconfig55_im0_cma_ena2;
    wire i_mul114_glfwchoosefbconfig55_im8_cma_reset;
    wire [17:0] i_mul114_glfwchoosefbconfig55_im8_cma_a0;
    wire [17:0] i_mul114_glfwchoosefbconfig55_im8_cma_c0;
    wire [35:0] i_mul114_glfwchoosefbconfig55_im8_cma_s0;
    wire [35:0] i_mul114_glfwchoosefbconfig55_im8_cma_qq;
    wire [35:0] i_mul114_glfwchoosefbconfig55_im8_cma_q;
    wire i_mul114_glfwchoosefbconfig55_im8_cma_ena0;
    wire i_mul114_glfwchoosefbconfig55_im8_cma_ena1;
    wire i_mul114_glfwchoosefbconfig55_im8_cma_ena2;
    wire i_mul125_glfwchoosefbconfig58_im0_cma_reset;
    wire [13:0] i_mul125_glfwchoosefbconfig58_im0_cma_a0;
    wire [13:0] i_mul125_glfwchoosefbconfig58_im0_cma_c0;
    wire [27:0] i_mul125_glfwchoosefbconfig58_im0_cma_s0;
    wire [27:0] i_mul125_glfwchoosefbconfig58_im0_cma_qq;
    wire [27:0] i_mul125_glfwchoosefbconfig58_im0_cma_q;
    wire i_mul125_glfwchoosefbconfig58_im0_cma_ena0;
    wire i_mul125_glfwchoosefbconfig58_im0_cma_ena1;
    wire i_mul125_glfwchoosefbconfig58_im0_cma_ena2;
    wire i_mul125_glfwchoosefbconfig58_im8_cma_reset;
    wire [17:0] i_mul125_glfwchoosefbconfig58_im8_cma_a0;
    wire [17:0] i_mul125_glfwchoosefbconfig58_im8_cma_c0;
    wire [35:0] i_mul125_glfwchoosefbconfig58_im8_cma_s0;
    wire [35:0] i_mul125_glfwchoosefbconfig58_im8_cma_qq;
    wire [35:0] i_mul125_glfwchoosefbconfig58_im8_cma_q;
    wire i_mul125_glfwchoosefbconfig58_im8_cma_ena0;
    wire i_mul125_glfwchoosefbconfig58_im8_cma_ena1;
    wire i_mul125_glfwchoosefbconfig58_im8_cma_ena2;
    wire i_mul136_glfwchoosefbconfig61_im0_cma_reset;
    wire [13:0] i_mul136_glfwchoosefbconfig61_im0_cma_a0;
    wire [13:0] i_mul136_glfwchoosefbconfig61_im0_cma_c0;
    wire [27:0] i_mul136_glfwchoosefbconfig61_im0_cma_s0;
    wire [27:0] i_mul136_glfwchoosefbconfig61_im0_cma_qq;
    wire [27:0] i_mul136_glfwchoosefbconfig61_im0_cma_q;
    wire i_mul136_glfwchoosefbconfig61_im0_cma_ena0;
    wire i_mul136_glfwchoosefbconfig61_im0_cma_ena1;
    wire i_mul136_glfwchoosefbconfig61_im0_cma_ena2;
    wire i_mul136_glfwchoosefbconfig61_im8_cma_reset;
    wire [17:0] i_mul136_glfwchoosefbconfig61_im8_cma_a0;
    wire [17:0] i_mul136_glfwchoosefbconfig61_im8_cma_c0;
    wire [35:0] i_mul136_glfwchoosefbconfig61_im8_cma_s0;
    wire [35:0] i_mul136_glfwchoosefbconfig61_im8_cma_qq;
    wire [35:0] i_mul136_glfwchoosefbconfig61_im8_cma_q;
    wire i_mul136_glfwchoosefbconfig61_im8_cma_ena0;
    wire i_mul136_glfwchoosefbconfig61_im8_cma_ena1;
    wire i_mul136_glfwchoosefbconfig61_im8_cma_ena2;
    wire i_mul147_glfwchoosefbconfig64_im0_cma_reset;
    wire [13:0] i_mul147_glfwchoosefbconfig64_im0_cma_a0;
    wire [13:0] i_mul147_glfwchoosefbconfig64_im0_cma_c0;
    wire [27:0] i_mul147_glfwchoosefbconfig64_im0_cma_s0;
    wire [27:0] i_mul147_glfwchoosefbconfig64_im0_cma_qq;
    wire [27:0] i_mul147_glfwchoosefbconfig64_im0_cma_q;
    wire i_mul147_glfwchoosefbconfig64_im0_cma_ena0;
    wire i_mul147_glfwchoosefbconfig64_im0_cma_ena1;
    wire i_mul147_glfwchoosefbconfig64_im0_cma_ena2;
    wire i_mul147_glfwchoosefbconfig64_im8_cma_reset;
    wire [17:0] i_mul147_glfwchoosefbconfig64_im8_cma_a0;
    wire [17:0] i_mul147_glfwchoosefbconfig64_im8_cma_c0;
    wire [35:0] i_mul147_glfwchoosefbconfig64_im8_cma_s0;
    wire [35:0] i_mul147_glfwchoosefbconfig64_im8_cma_qq;
    wire [35:0] i_mul147_glfwchoosefbconfig64_im8_cma_q;
    wire i_mul147_glfwchoosefbconfig64_im8_cma_ena0;
    wire i_mul147_glfwchoosefbconfig64_im8_cma_ena1;
    wire i_mul147_glfwchoosefbconfig64_im8_cma_ena2;
    wire i_mul158_glfwchoosefbconfig67_im0_cma_reset;
    wire [13:0] i_mul158_glfwchoosefbconfig67_im0_cma_a0;
    wire [13:0] i_mul158_glfwchoosefbconfig67_im0_cma_c0;
    wire [27:0] i_mul158_glfwchoosefbconfig67_im0_cma_s0;
    wire [27:0] i_mul158_glfwchoosefbconfig67_im0_cma_qq;
    wire [27:0] i_mul158_glfwchoosefbconfig67_im0_cma_q;
    wire i_mul158_glfwchoosefbconfig67_im0_cma_ena0;
    wire i_mul158_glfwchoosefbconfig67_im0_cma_ena1;
    wire i_mul158_glfwchoosefbconfig67_im0_cma_ena2;
    wire i_mul158_glfwchoosefbconfig67_im8_cma_reset;
    wire [17:0] i_mul158_glfwchoosefbconfig67_im8_cma_a0;
    wire [17:0] i_mul158_glfwchoosefbconfig67_im8_cma_c0;
    wire [35:0] i_mul158_glfwchoosefbconfig67_im8_cma_s0;
    wire [35:0] i_mul158_glfwchoosefbconfig67_im8_cma_qq;
    wire [35:0] i_mul158_glfwchoosefbconfig67_im8_cma_q;
    wire i_mul158_glfwchoosefbconfig67_im8_cma_ena0;
    wire i_mul158_glfwchoosefbconfig67_im8_cma_ena1;
    wire i_mul158_glfwchoosefbconfig67_im8_cma_ena2;
    wire i_mul170_glfwchoosefbconfig70_im0_cma_reset;
    wire [13:0] i_mul170_glfwchoosefbconfig70_im0_cma_a0;
    wire [13:0] i_mul170_glfwchoosefbconfig70_im0_cma_c0;
    wire [27:0] i_mul170_glfwchoosefbconfig70_im0_cma_s0;
    wire [27:0] i_mul170_glfwchoosefbconfig70_im0_cma_qq;
    wire [27:0] i_mul170_glfwchoosefbconfig70_im0_cma_q;
    wire i_mul170_glfwchoosefbconfig70_im0_cma_ena0;
    wire i_mul170_glfwchoosefbconfig70_im0_cma_ena1;
    wire i_mul170_glfwchoosefbconfig70_im0_cma_ena2;
    wire i_mul170_glfwchoosefbconfig70_im8_cma_reset;
    wire [17:0] i_mul170_glfwchoosefbconfig70_im8_cma_a0;
    wire [17:0] i_mul170_glfwchoosefbconfig70_im8_cma_c0;
    wire [35:0] i_mul170_glfwchoosefbconfig70_im8_cma_s0;
    wire [35:0] i_mul170_glfwchoosefbconfig70_im8_cma_qq;
    wire [35:0] i_mul170_glfwchoosefbconfig70_im8_cma_q;
    wire i_mul170_glfwchoosefbconfig70_im8_cma_ena0;
    wire i_mul170_glfwchoosefbconfig70_im8_cma_ena1;
    wire i_mul170_glfwchoosefbconfig70_im8_cma_ena2;
    wire i_mul67_glfwchoosefbconfig41_im0_cma_reset;
    wire [13:0] i_mul67_glfwchoosefbconfig41_im0_cma_a0;
    wire [13:0] i_mul67_glfwchoosefbconfig41_im0_cma_c0;
    wire [27:0] i_mul67_glfwchoosefbconfig41_im0_cma_s0;
    wire [27:0] i_mul67_glfwchoosefbconfig41_im0_cma_qq;
    wire [27:0] i_mul67_glfwchoosefbconfig41_im0_cma_q;
    wire i_mul67_glfwchoosefbconfig41_im0_cma_ena0;
    wire i_mul67_glfwchoosefbconfig41_im0_cma_ena1;
    wire i_mul67_glfwchoosefbconfig41_im0_cma_ena2;
    wire i_mul67_glfwchoosefbconfig41_im8_cma_reset;
    wire [17:0] i_mul67_glfwchoosefbconfig41_im8_cma_a0;
    wire [17:0] i_mul67_glfwchoosefbconfig41_im8_cma_c0;
    wire [35:0] i_mul67_glfwchoosefbconfig41_im8_cma_s0;
    wire [35:0] i_mul67_glfwchoosefbconfig41_im8_cma_qq;
    wire [35:0] i_mul67_glfwchoosefbconfig41_im8_cma_q;
    wire i_mul67_glfwchoosefbconfig41_im8_cma_ena0;
    wire i_mul67_glfwchoosefbconfig41_im8_cma_ena1;
    wire i_mul67_glfwchoosefbconfig41_im8_cma_ena2;
    wire i_mul78_glfwchoosefbconfig45_im0_cma_reset;
    wire [13:0] i_mul78_glfwchoosefbconfig45_im0_cma_a0;
    wire [13:0] i_mul78_glfwchoosefbconfig45_im0_cma_c0;
    wire [27:0] i_mul78_glfwchoosefbconfig45_im0_cma_s0;
    wire [27:0] i_mul78_glfwchoosefbconfig45_im0_cma_qq;
    wire [27:0] i_mul78_glfwchoosefbconfig45_im0_cma_q;
    wire i_mul78_glfwchoosefbconfig45_im0_cma_ena0;
    wire i_mul78_glfwchoosefbconfig45_im0_cma_ena1;
    wire i_mul78_glfwchoosefbconfig45_im0_cma_ena2;
    wire i_mul78_glfwchoosefbconfig45_im8_cma_reset;
    wire [17:0] i_mul78_glfwchoosefbconfig45_im8_cma_a0;
    wire [17:0] i_mul78_glfwchoosefbconfig45_im8_cma_c0;
    wire [35:0] i_mul78_glfwchoosefbconfig45_im8_cma_s0;
    wire [35:0] i_mul78_glfwchoosefbconfig45_im8_cma_qq;
    wire [35:0] i_mul78_glfwchoosefbconfig45_im8_cma_q;
    wire i_mul78_glfwchoosefbconfig45_im8_cma_ena0;
    wire i_mul78_glfwchoosefbconfig45_im8_cma_ena1;
    wire i_mul78_glfwchoosefbconfig45_im8_cma_ena2;
    wire i_mul90_glfwchoosefbconfig49_im0_cma_reset;
    wire [13:0] i_mul90_glfwchoosefbconfig49_im0_cma_a0;
    wire [13:0] i_mul90_glfwchoosefbconfig49_im0_cma_c0;
    wire [27:0] i_mul90_glfwchoosefbconfig49_im0_cma_s0;
    wire [27:0] i_mul90_glfwchoosefbconfig49_im0_cma_qq;
    wire [27:0] i_mul90_glfwchoosefbconfig49_im0_cma_q;
    wire i_mul90_glfwchoosefbconfig49_im0_cma_ena0;
    wire i_mul90_glfwchoosefbconfig49_im0_cma_ena1;
    wire i_mul90_glfwchoosefbconfig49_im0_cma_ena2;
    wire i_mul90_glfwchoosefbconfig49_im8_cma_reset;
    wire [17:0] i_mul90_glfwchoosefbconfig49_im8_cma_a0;
    wire [17:0] i_mul90_glfwchoosefbconfig49_im8_cma_c0;
    wire [35:0] i_mul90_glfwchoosefbconfig49_im8_cma_s0;
    wire [35:0] i_mul90_glfwchoosefbconfig49_im8_cma_qq;
    wire [35:0] i_mul90_glfwchoosefbconfig49_im8_cma_q;
    wire i_mul90_glfwchoosefbconfig49_im8_cma_ena0;
    wire i_mul90_glfwchoosefbconfig49_im8_cma_ena1;
    wire i_mul90_glfwchoosefbconfig49_im8_cma_ena2;
    wire i_mul_glfwchoosefbconfig38_im0_cma_reset;
    wire [13:0] i_mul_glfwchoosefbconfig38_im0_cma_a0;
    wire [13:0] i_mul_glfwchoosefbconfig38_im0_cma_c0;
    wire [27:0] i_mul_glfwchoosefbconfig38_im0_cma_s0;
    wire [27:0] i_mul_glfwchoosefbconfig38_im0_cma_qq;
    wire [27:0] i_mul_glfwchoosefbconfig38_im0_cma_q;
    wire i_mul_glfwchoosefbconfig38_im0_cma_ena0;
    wire i_mul_glfwchoosefbconfig38_im0_cma_ena1;
    wire i_mul_glfwchoosefbconfig38_im0_cma_ena2;
    wire i_mul_glfwchoosefbconfig38_im8_cma_reset;
    wire [17:0] i_mul_glfwchoosefbconfig38_im8_cma_a0;
    wire [17:0] i_mul_glfwchoosefbconfig38_im8_cma_c0;
    wire [35:0] i_mul_glfwchoosefbconfig38_im8_cma_s0;
    wire [35:0] i_mul_glfwchoosefbconfig38_im8_cma_qq;
    wire [35:0] i_mul_glfwchoosefbconfig38_im8_cma_q;
    wire i_mul_glfwchoosefbconfig38_im8_cma_ena0;
    wire i_mul_glfwchoosefbconfig38_im8_cma_ena1;
    wire i_mul_glfwchoosefbconfig38_im8_cma_ena2;
    wire i_mul102_glfwchoosefbconfig52_ma3_cma_reset;
    wire [13:0] i_mul102_glfwchoosefbconfig52_ma3_cma_a0;
    wire [17:0] i_mul102_glfwchoosefbconfig52_ma3_cma_c0;
    wire [13:0] i_mul102_glfwchoosefbconfig52_ma3_cma_a1;
    wire [17:0] i_mul102_glfwchoosefbconfig52_ma3_cma_c1;
    wire [32:0] i_mul102_glfwchoosefbconfig52_ma3_cma_s0;
    wire [32:0] i_mul102_glfwchoosefbconfig52_ma3_cma_qq;
    wire [32:0] i_mul102_glfwchoosefbconfig52_ma3_cma_q;
    wire i_mul102_glfwchoosefbconfig52_ma3_cma_ena0;
    wire i_mul102_glfwchoosefbconfig52_ma3_cma_ena1;
    wire i_mul102_glfwchoosefbconfig52_ma3_cma_ena2;
    wire i_mul114_glfwchoosefbconfig55_ma3_cma_reset;
    wire [13:0] i_mul114_glfwchoosefbconfig55_ma3_cma_a0;
    wire [17:0] i_mul114_glfwchoosefbconfig55_ma3_cma_c0;
    wire [13:0] i_mul114_glfwchoosefbconfig55_ma3_cma_a1;
    wire [17:0] i_mul114_glfwchoosefbconfig55_ma3_cma_c1;
    wire [32:0] i_mul114_glfwchoosefbconfig55_ma3_cma_s0;
    wire [32:0] i_mul114_glfwchoosefbconfig55_ma3_cma_qq;
    wire [32:0] i_mul114_glfwchoosefbconfig55_ma3_cma_q;
    wire i_mul114_glfwchoosefbconfig55_ma3_cma_ena0;
    wire i_mul114_glfwchoosefbconfig55_ma3_cma_ena1;
    wire i_mul114_glfwchoosefbconfig55_ma3_cma_ena2;
    wire i_mul125_glfwchoosefbconfig58_ma3_cma_reset;
    wire [13:0] i_mul125_glfwchoosefbconfig58_ma3_cma_a0;
    wire [17:0] i_mul125_glfwchoosefbconfig58_ma3_cma_c0;
    wire [13:0] i_mul125_glfwchoosefbconfig58_ma3_cma_a1;
    wire [17:0] i_mul125_glfwchoosefbconfig58_ma3_cma_c1;
    wire [32:0] i_mul125_glfwchoosefbconfig58_ma3_cma_s0;
    wire [32:0] i_mul125_glfwchoosefbconfig58_ma3_cma_qq;
    wire [32:0] i_mul125_glfwchoosefbconfig58_ma3_cma_q;
    wire i_mul125_glfwchoosefbconfig58_ma3_cma_ena0;
    wire i_mul125_glfwchoosefbconfig58_ma3_cma_ena1;
    wire i_mul125_glfwchoosefbconfig58_ma3_cma_ena2;
    wire i_mul136_glfwchoosefbconfig61_ma3_cma_reset;
    wire [13:0] i_mul136_glfwchoosefbconfig61_ma3_cma_a0;
    wire [17:0] i_mul136_glfwchoosefbconfig61_ma3_cma_c0;
    wire [13:0] i_mul136_glfwchoosefbconfig61_ma3_cma_a1;
    wire [17:0] i_mul136_glfwchoosefbconfig61_ma3_cma_c1;
    wire [32:0] i_mul136_glfwchoosefbconfig61_ma3_cma_s0;
    wire [32:0] i_mul136_glfwchoosefbconfig61_ma3_cma_qq;
    wire [32:0] i_mul136_glfwchoosefbconfig61_ma3_cma_q;
    wire i_mul136_glfwchoosefbconfig61_ma3_cma_ena0;
    wire i_mul136_glfwchoosefbconfig61_ma3_cma_ena1;
    wire i_mul136_glfwchoosefbconfig61_ma3_cma_ena2;
    wire i_mul147_glfwchoosefbconfig64_ma3_cma_reset;
    wire [13:0] i_mul147_glfwchoosefbconfig64_ma3_cma_a0;
    wire [17:0] i_mul147_glfwchoosefbconfig64_ma3_cma_c0;
    wire [13:0] i_mul147_glfwchoosefbconfig64_ma3_cma_a1;
    wire [17:0] i_mul147_glfwchoosefbconfig64_ma3_cma_c1;
    wire [32:0] i_mul147_glfwchoosefbconfig64_ma3_cma_s0;
    wire [32:0] i_mul147_glfwchoosefbconfig64_ma3_cma_qq;
    wire [32:0] i_mul147_glfwchoosefbconfig64_ma3_cma_q;
    wire i_mul147_glfwchoosefbconfig64_ma3_cma_ena0;
    wire i_mul147_glfwchoosefbconfig64_ma3_cma_ena1;
    wire i_mul147_glfwchoosefbconfig64_ma3_cma_ena2;
    wire i_mul158_glfwchoosefbconfig67_ma3_cma_reset;
    wire [13:0] i_mul158_glfwchoosefbconfig67_ma3_cma_a0;
    wire [17:0] i_mul158_glfwchoosefbconfig67_ma3_cma_c0;
    wire [13:0] i_mul158_glfwchoosefbconfig67_ma3_cma_a1;
    wire [17:0] i_mul158_glfwchoosefbconfig67_ma3_cma_c1;
    wire [32:0] i_mul158_glfwchoosefbconfig67_ma3_cma_s0;
    wire [32:0] i_mul158_glfwchoosefbconfig67_ma3_cma_qq;
    wire [32:0] i_mul158_glfwchoosefbconfig67_ma3_cma_q;
    wire i_mul158_glfwchoosefbconfig67_ma3_cma_ena0;
    wire i_mul158_glfwchoosefbconfig67_ma3_cma_ena1;
    wire i_mul158_glfwchoosefbconfig67_ma3_cma_ena2;
    wire i_mul170_glfwchoosefbconfig70_ma3_cma_reset;
    wire [13:0] i_mul170_glfwchoosefbconfig70_ma3_cma_a0;
    wire [17:0] i_mul170_glfwchoosefbconfig70_ma3_cma_c0;
    wire [13:0] i_mul170_glfwchoosefbconfig70_ma3_cma_a1;
    wire [17:0] i_mul170_glfwchoosefbconfig70_ma3_cma_c1;
    wire [32:0] i_mul170_glfwchoosefbconfig70_ma3_cma_s0;
    wire [32:0] i_mul170_glfwchoosefbconfig70_ma3_cma_qq;
    wire [32:0] i_mul170_glfwchoosefbconfig70_ma3_cma_q;
    wire i_mul170_glfwchoosefbconfig70_ma3_cma_ena0;
    wire i_mul170_glfwchoosefbconfig70_ma3_cma_ena1;
    wire i_mul170_glfwchoosefbconfig70_ma3_cma_ena2;
    wire i_mul67_glfwchoosefbconfig41_ma3_cma_reset;
    wire [13:0] i_mul67_glfwchoosefbconfig41_ma3_cma_a0;
    wire [17:0] i_mul67_glfwchoosefbconfig41_ma3_cma_c0;
    wire [13:0] i_mul67_glfwchoosefbconfig41_ma3_cma_a1;
    wire [17:0] i_mul67_glfwchoosefbconfig41_ma3_cma_c1;
    wire [32:0] i_mul67_glfwchoosefbconfig41_ma3_cma_s0;
    wire [32:0] i_mul67_glfwchoosefbconfig41_ma3_cma_qq;
    wire [32:0] i_mul67_glfwchoosefbconfig41_ma3_cma_q;
    wire i_mul67_glfwchoosefbconfig41_ma3_cma_ena0;
    wire i_mul67_glfwchoosefbconfig41_ma3_cma_ena1;
    wire i_mul67_glfwchoosefbconfig41_ma3_cma_ena2;
    wire i_mul78_glfwchoosefbconfig45_ma3_cma_reset;
    wire [13:0] i_mul78_glfwchoosefbconfig45_ma3_cma_a0;
    wire [17:0] i_mul78_glfwchoosefbconfig45_ma3_cma_c0;
    wire [13:0] i_mul78_glfwchoosefbconfig45_ma3_cma_a1;
    wire [17:0] i_mul78_glfwchoosefbconfig45_ma3_cma_c1;
    wire [32:0] i_mul78_glfwchoosefbconfig45_ma3_cma_s0;
    wire [32:0] i_mul78_glfwchoosefbconfig45_ma3_cma_qq;
    wire [32:0] i_mul78_glfwchoosefbconfig45_ma3_cma_q;
    wire i_mul78_glfwchoosefbconfig45_ma3_cma_ena0;
    wire i_mul78_glfwchoosefbconfig45_ma3_cma_ena1;
    wire i_mul78_glfwchoosefbconfig45_ma3_cma_ena2;
    wire i_mul90_glfwchoosefbconfig49_ma3_cma_reset;
    wire [13:0] i_mul90_glfwchoosefbconfig49_ma3_cma_a0;
    wire [17:0] i_mul90_glfwchoosefbconfig49_ma3_cma_c0;
    wire [13:0] i_mul90_glfwchoosefbconfig49_ma3_cma_a1;
    wire [17:0] i_mul90_glfwchoosefbconfig49_ma3_cma_c1;
    wire [32:0] i_mul90_glfwchoosefbconfig49_ma3_cma_s0;
    wire [32:0] i_mul90_glfwchoosefbconfig49_ma3_cma_qq;
    wire [32:0] i_mul90_glfwchoosefbconfig49_ma3_cma_q;
    wire i_mul90_glfwchoosefbconfig49_ma3_cma_ena0;
    wire i_mul90_glfwchoosefbconfig49_ma3_cma_ena1;
    wire i_mul90_glfwchoosefbconfig49_ma3_cma_ena2;
    wire i_mul_glfwchoosefbconfig38_ma3_cma_reset;
    wire [13:0] i_mul_glfwchoosefbconfig38_ma3_cma_a0;
    wire [17:0] i_mul_glfwchoosefbconfig38_ma3_cma_c0;
    wire [13:0] i_mul_glfwchoosefbconfig38_ma3_cma_a1;
    wire [17:0] i_mul_glfwchoosefbconfig38_ma3_cma_c1;
    wire [32:0] i_mul_glfwchoosefbconfig38_ma3_cma_s0;
    wire [32:0] i_mul_glfwchoosefbconfig38_ma3_cma_qq;
    wire [32:0] i_mul_glfwchoosefbconfig38_ma3_cma_q;
    wire i_mul_glfwchoosefbconfig38_ma3_cma_ena0;
    wire i_mul_glfwchoosefbconfig38_ma3_cma_ena1;
    wire i_mul_glfwchoosefbconfig38_ma3_cma_ena2;
    wire [13:0] i_mul114_glfwchoosefbconfig55_bs1_merged_bit_select_b;
    wire [17:0] i_mul114_glfwchoosefbconfig55_bs1_merged_bit_select_c;
    wire [13:0] i_mul125_glfwchoosefbconfig58_bs1_merged_bit_select_b;
    wire [17:0] i_mul125_glfwchoosefbconfig58_bs1_merged_bit_select_c;
    wire [13:0] i_mul136_glfwchoosefbconfig61_bs1_merged_bit_select_b;
    wire [17:0] i_mul136_glfwchoosefbconfig61_bs1_merged_bit_select_c;
    wire [13:0] i_mul147_glfwchoosefbconfig64_bs1_merged_bit_select_b;
    wire [17:0] i_mul147_glfwchoosefbconfig64_bs1_merged_bit_select_c;
    wire [13:0] i_mul158_glfwchoosefbconfig67_bs1_merged_bit_select_b;
    wire [17:0] i_mul158_glfwchoosefbconfig67_bs1_merged_bit_select_c;
    wire [13:0] i_mul170_glfwchoosefbconfig70_bs1_merged_bit_select_b;
    wire [17:0] i_mul170_glfwchoosefbconfig70_bs1_merged_bit_select_c;
    wire [13:0] i_mul_glfwchoosefbconfig38_bs1_merged_bit_select_b;
    wire [17:0] i_mul_glfwchoosefbconfig38_bs1_merged_bit_select_c;
    wire [13:0] i_mul67_glfwchoosefbconfig41_bs1_merged_bit_select_b;
    wire [17:0] i_mul67_glfwchoosefbconfig41_bs1_merged_bit_select_c;
    wire [13:0] i_mul78_glfwchoosefbconfig45_bs1_merged_bit_select_b;
    wire [17:0] i_mul78_glfwchoosefbconfig45_bs1_merged_bit_select_c;
    wire [13:0] i_mul90_glfwchoosefbconfig49_bs1_merged_bit_select_b;
    wire [17:0] i_mul90_glfwchoosefbconfig49_bs1_merged_bit_select_c;
    wire [13:0] i_mul102_glfwchoosefbconfig52_bs1_merged_bit_select_b;
    wire [17:0] i_mul102_glfwchoosefbconfig52_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together144_aunroll_x_in_c1_eni50_1_tpl_6_q;
    reg [0:0] redist1_sync_together144_aunroll_x_in_c1_eni50_17_tpl_3_q;
    reg [0:0] redist1_sync_together144_aunroll_x_in_c1_eni50_17_tpl_3_delay_0;
    reg [0:0] redist1_sync_together144_aunroll_x_in_c1_eni50_17_tpl_3_delay_1;
    reg [0:0] redist2_sync_together144_aunroll_x_in_c1_eni50_20_tpl_3_q;
    reg [0:0] redist2_sync_together144_aunroll_x_in_c1_eni50_20_tpl_3_delay_0;
    reg [0:0] redist2_sync_together144_aunroll_x_in_c1_eni50_20_tpl_3_delay_1;
    reg [0:0] redist3_sync_together144_aunroll_x_in_c1_eni50_23_tpl_3_q;
    reg [0:0] redist3_sync_together144_aunroll_x_in_c1_eni50_23_tpl_3_delay_0;
    reg [0:0] redist3_sync_together144_aunroll_x_in_c1_eni50_23_tpl_3_delay_1;
    reg [0:0] redist4_sync_together144_aunroll_x_in_c1_eni50_25_tpl_3_q;
    reg [0:0] redist4_sync_together144_aunroll_x_in_c1_eni50_25_tpl_3_delay_0;
    reg [0:0] redist4_sync_together144_aunroll_x_in_c1_eni50_25_tpl_3_delay_1;
    reg [0:0] redist5_sync_together144_aunroll_x_in_c1_eni50_27_tpl_3_q;
    reg [0:0] redist5_sync_together144_aunroll_x_in_c1_eni50_27_tpl_3_delay_0;
    reg [0:0] redist5_sync_together144_aunroll_x_in_c1_eni50_27_tpl_3_delay_1;
    reg [0:0] redist6_sync_together144_aunroll_x_in_c1_eni50_29_tpl_3_q;
    reg [0:0] redist6_sync_together144_aunroll_x_in_c1_eni50_29_tpl_3_delay_0;
    reg [0:0] redist6_sync_together144_aunroll_x_in_c1_eni50_29_tpl_3_delay_1;
    reg [0:0] redist7_sync_together144_aunroll_x_in_c1_eni50_32_tpl_3_q;
    reg [0:0] redist7_sync_together144_aunroll_x_in_c1_eni50_32_tpl_3_delay_0;
    reg [0:0] redist7_sync_together144_aunroll_x_in_c1_eni50_32_tpl_3_delay_1;
    reg [0:0] redist8_sync_together144_aunroll_x_in_c1_eni50_35_tpl_3_q;
    reg [0:0] redist8_sync_together144_aunroll_x_in_c1_eni50_35_tpl_3_delay_0;
    reg [0:0] redist8_sync_together144_aunroll_x_in_c1_eni50_35_tpl_3_delay_1;
    reg [0:0] redist9_sync_together144_aunroll_x_in_c1_eni50_38_tpl_3_q;
    reg [0:0] redist9_sync_together144_aunroll_x_in_c1_eni50_38_tpl_3_delay_0;
    reg [0:0] redist9_sync_together144_aunroll_x_in_c1_eni50_38_tpl_3_delay_1;
    reg [0:0] redist10_sync_together144_aunroll_x_in_c1_eni50_41_tpl_3_q;
    reg [0:0] redist10_sync_together144_aunroll_x_in_c1_eni50_41_tpl_3_delay_0;
    reg [0:0] redist10_sync_together144_aunroll_x_in_c1_eni50_41_tpl_3_delay_1;
    reg [0:0] redist11_sync_together144_aunroll_x_in_c1_eni50_43_tpl_3_q;
    reg [0:0] redist11_sync_together144_aunroll_x_in_c1_eni50_43_tpl_3_delay_0;
    reg [0:0] redist11_sync_together144_aunroll_x_in_c1_eni50_43_tpl_3_delay_1;
    reg [0:0] redist13_sync_together144_aunroll_x_in_c1_eni50_49_tpl_6_q;
    reg [0:0] redist14_sync_together144_aunroll_x_in_c1_eni50_50_tpl_6_q;
    reg [0:0] redist15_sync_together144_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist15_sync_together144_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist15_sync_together144_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist15_sync_together144_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist15_sync_together144_aunroll_x_in_i_valid_5_delay_3;
    reg [31:0] redist17_bgTrunc_i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_sel_x_b_1_q;
    reg [31:0] redist18_bgTrunc_i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_sel_x_b_1_q;
    reg [31:0] redist19_bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_sel_x_b_1_q;
    reg [31:0] redist20_bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b_2_q;
    reg [31:0] redist20_bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b_2_delay_0;
    reg [0:0] redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_q;
    reg [0:0] redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_0;
    reg [0:0] redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_1;
    reg [0:0] redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_2;
    reg [0:0] redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_3;
    reg [0:0] redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_q;
    reg [0:0] redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_0;
    reg [0:0] redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_1;
    reg [0:0] redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_2;
    reg [0:0] redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_3;
    reg [0:0] redist23_i_inc47_glfwchoosefbconfig30_vt_select_0_b_1_q;
    reg [30:0] redist24_i_add79_glfwchoosefbconfig46_vt_select_30_b_1_q;
    reg [30:0] redist25_i_add68_glfwchoosefbconfig42_vt_select_30_b_1_q;
    reg [30:0] redist26_i_add171_glfwchoosefbconfig71_vt_select_30_b_1_q;
    reg [30:0] redist27_i_add159_glfwchoosefbconfig68_vt_select_30_b_1_q;
    reg [30:0] redist28_i_add148_glfwchoosefbconfig65_vt_select_30_b_1_q;
    reg [30:0] redist29_i_add137_glfwchoosefbconfig62_vt_select_30_b_1_q;
    reg [30:0] redist30_i_add126_glfwchoosefbconfig59_vt_select_30_b_1_q;
    reg [30:0] redist31_i_add115_glfwchoosefbconfig56_vt_select_30_b_1_q;
    reg [30:0] redist32_i_add103_glfwchoosefbconfig53_vt_select_30_b_1_q;
    reg [30:0] redist33_i_acl_8_glfwchoosefbconfig50_vt_select_30_b_1_q;
    reg [30:0] redist34_i_acl_5_glfwchoosefbconfig39_vt_select_30_b_1_q;
    reg [0:0] redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_q;
    reg [0:0] redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_0;
    reg [0:0] redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_1;
    reg [0:0] redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_2;
    reg [0:0] redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_3;
    reg [63:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_outputreg0_q;
    wire redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_reset0;
    wire [63:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_ia;
    wire [1:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_aa;
    wire [1:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_ab;
    wire [63:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_iq;
    wire [63:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_q;
    wire [1:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_rdcnt_i;
    reg [1:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_wraddr_q;
    wire [2:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_last_q;
    wire [2:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_cmp_b;
    wire [0:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_cmpReg_q;
    wire [0:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_notEnable_q;
    wire [0:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_sticky_ena_q;
    wire [0:0] redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_enaAnd_q;
    reg [31:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_inputreg0_q;
    reg [31:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_outputreg0_q;
    wire redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_reset0;
    wire [31:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_ia;
    wire [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_aa;
    wire [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_ab;
    wire [31:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_iq;
    wire [31:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_q;
    wire [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_rdcnt_q;
    (* preserve *) reg [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_rdcnt_i;
    reg [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_wraddr_q;
    (* dont_merge *) reg [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_cmpReg_q;
    wire [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_notEnable_q;
    wire [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_nor_q;
    (* dont_merge *) reg [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_sticky_ena_q;
    wire [0:0] redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist15_sync_together144_aunroll_x_in_i_valid_5(DELAY,573)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together144_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist15_sync_together144_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist15_sync_together144_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist15_sync_together144_aunroll_x_in_i_valid_5_delay_3 <= '0;
            redist15_sync_together144_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist15_sync_together144_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
            redist15_sync_together144_aunroll_x_in_i_valid_5_delay_1 <= redist15_sync_together144_aunroll_x_in_i_valid_5_delay_0;
            redist15_sync_together144_aunroll_x_in_i_valid_5_delay_2 <= redist15_sync_together144_aunroll_x_in_i_valid_5_delay_1;
            redist15_sync_together144_aunroll_x_in_i_valid_5_delay_3 <= redist15_sync_together144_aunroll_x_in_i_valid_5_delay_2;
            redist15_sync_together144_aunroll_x_in_i_valid_5_q <= redist15_sync_together144_aunroll_x_in_i_valid_5_delay_3;
        end
    end

    // valid_fanout_reg12(REG,310)@137 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist15_sync_together144_aunroll_x_in_i_valid_5_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_notEnable(LOGICAL,601)
    assign redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_nor(LOGICAL,602)
    assign redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_nor_q = ~ (redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_notEnable_q | redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_sticky_ena_q);

    // redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_last(CONSTANT,598)
    assign redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_last_q = $unsigned(3'b010);

    // redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_cmp(LOGICAL,599)
    assign redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_cmp_b = {1'b0, redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_rdcnt_q};
    assign redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_cmp_q = $unsigned(redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_last_q == redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_cmpReg(REG,600)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_cmpReg_q <= $unsigned(redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_cmp_q);
        end
    end

    // redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_sticky_ena(REG,603)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_nor_q == 1'b1)
        begin
            redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_sticky_ena_q <= $unsigned(redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_cmpReg_q);
        end
    end

    // redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_enaAnd(LOGICAL,604)
    assign redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_enaAnd_q = redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_sticky_ena_q & VCC_q;

    // redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_rdcnt(COUNTER,596)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_rdcnt_i <= $unsigned(redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_rdcnt_q = redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_rdcnt_i[1:0];

    // redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_wraddr(REG,597)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_wraddr_q <= $unsigned(redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_rdcnt_q);
        end
    end

    // redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem(DUALMEM,595)
    assign redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_ia = $unsigned(in_c1_eni50_46_tpl);
    assign redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_aa = redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_wraddr_q;
    assign redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_ab = redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_rdcnt_q;
    assign redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_reset0 = ~ (resetn);
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
    ) redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_dmem (
        .clocken1(redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_aa),
        .data_a(redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_ab),
        .q_b(redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_iq),
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
    assign redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_q = redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_iq[63:0];

    // redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_outputreg0(DELAY,594)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_outputreg0_q <= '0;
        end
        else
        begin
            redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_outputreg0_q <= $unsigned(redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_mem_q);
        end
    end

    // valid_fanout_reg5(REG,303)@137 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist15_sync_together144_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig31_glfwchoosefbconfig8(BLACKBOX,126)@138
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000048Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig31_glfwchoosefbconfig8 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig31_glfwchoosefbconfig8_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,304)@137 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist15_sync_together144_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg8(REG,306)@137 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist15_sync_together144_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_cmp191_glfwchoosefbconfig103(LOGICAL,112)@138
    assign i_cmp191_glfwchoosefbconfig103_q = $unsigned(redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_outputreg0_q == i_acl_26_glfwchoosefbconfig102_q ? 1'b1 : 1'b0);

    // i_acl_28_demorgan_glfwchoosefbconfig105(LOGICAL,58)@132 + 1
    assign i_acl_28_demorgan_glfwchoosefbconfig105_qi = in_c1_eni50_47_tpl | in_c1_eni50_48_tpl;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_28_demorgan_glfwchoosefbconfig105_delay ( .xin(i_acl_28_demorgan_glfwchoosefbconfig105_qi), .xout(i_acl_28_demorgan_glfwchoosefbconfig105_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6(DELAY,593)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_0 <= '0;
            redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_1 <= '0;
            redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_2 <= '0;
            redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_3 <= '0;
            redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_q <= '0;
        end
        else
        begin
            redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_0 <= $unsigned(i_acl_28_demorgan_glfwchoosefbconfig105_q);
            redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_1 <= redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_0;
            redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_2 <= redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_1;
            redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_3 <= redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_2;
            redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_q <= redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_delay_3;
        end
    end

    // i_unnamed_glfwchoosefbconfig106(LOGICAL,231)@138
    assign i_unnamed_glfwchoosefbconfig106_q = redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_q & i_cmp191_glfwchoosefbconfig103_q;

    // i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107(LOGICAL,211)@132 + 1
    assign i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_qi = in_c1_eni50_47_tpl ^ VCC_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_delay ( .xin(i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_qi), .xout(i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6(DELAY,580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_0 <= '0;
            redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_1 <= '0;
            redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_2 <= '0;
            redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_3 <= '0;
            redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_q <= '0;
        end
        else
        begin
            redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_0 <= $unsigned(i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q);
            redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_1 <= redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_0;
            redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_2 <= redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_1;
            redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_3 <= redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_2;
            redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_q <= redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_delay_3;
        end
    end

    // i_selcond_glfwchoosefbconfig_1_glfwchoosefbconfig108(LOGICAL,212)@138
    assign i_selcond_glfwchoosefbconfig_1_glfwchoosefbconfig108_q = redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_q & i_unnamed_glfwchoosefbconfig106_q;

    // i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig109(MUX,189)@138
    assign i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig109_s = i_selcond_glfwchoosefbconfig_1_glfwchoosefbconfig108_q;
    always @(i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig109_s or i_leastmissing_0137_replace_phi_glfwchoosefbconfig10_q or redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_outputreg0_q)
    begin
        unique case (i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig109_s)
            1'b0 : i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig109_q = i_leastmissing_0137_replace_phi_glfwchoosefbconfig10_q;
            1'b1 : i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig109_q = redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_outputreg0_q;
            default : i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig109_q = 32'b0;
        endcase
    end

    // redist13_sync_together144_aunroll_x_in_c1_eni50_49_tpl_6(DELAY,571)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_sync_together144_aunroll_x_in_c1_eni50_49_tpl_6 ( .xin(in_c1_eni50_49_tpl), .xout(redist13_sync_together144_aunroll_x_in_c1_eni50_49_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i32_leastmissing_0137_push10_glfwchoosefbconfig110(BLACKBOX,137)@138
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i32_A000003Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i32_leastmissing_0137_push10_glfwchoosefbconfig110 (
        .in_c1_ene49(redist13_sync_together144_aunroll_x_in_c1_eni50_49_tpl_6_q),
        .in_data_in(i_reduction_glfwchoosefbconfig_0_glfwchoosefbconfig109_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i32_leastmissing_0137_pop10_glfwchoosefbconfig9_out_feedback_stall_out_10),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i32_leastmissing_0137_push10_glfwchoosefbconfig110_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i32_leastmissing_0137_push10_glfwchoosefbconfig110_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0133(CONSTANT,50)
    assign c_i32_0133_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_leastmissing_0137_pop10_glfwchoosefbconfig9(BLACKBOX,133)@138
    // out out_feedback_stall_out_10@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_i32_lA000002Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_i32_leastmissing_0137_pop10_glfwchoosefbconfig9 (
        .in_data_in(c_i32_0133_q),
        .in_dir(redist0_sync_together144_aunroll_x_in_c1_eni50_1_tpl_6_q),
        .in_feedback_in_10(i_llvm_fpga_push_i32_leastmissing_0137_push10_glfwchoosefbconfig110_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i32_leastmissing_0137_push10_glfwchoosefbconfig110_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_leastmissing_0137_pop10_glfwchoosefbconfig9_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i32_leastmissing_0137_pop10_glfwchoosefbconfig9_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together144_aunroll_x_in_c1_eni50_1_tpl_6(DELAY,558)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together144_aunroll_x_in_c1_eni50_1_tpl_6 ( .xin(in_c1_eni50_1_tpl), .xout(redist0_sync_together144_aunroll_x_in_c1_eni50_1_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_leastmissing_0137_replace_phi_glfwchoosefbconfig10(MUX,123)@138
    assign i_leastmissing_0137_replace_phi_glfwchoosefbconfig10_s = redist0_sync_together144_aunroll_x_in_c1_eni50_1_tpl_6_q;
    always @(i_leastmissing_0137_replace_phi_glfwchoosefbconfig10_s or i_llvm_fpga_pop_i32_leastmissing_0137_pop10_glfwchoosefbconfig9_out_data_out or i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig31_glfwchoosefbconfig8_out_dest_data_out_1_0)
    begin
        unique case (i_leastmissing_0137_replace_phi_glfwchoosefbconfig10_s)
            1'b0 : i_leastmissing_0137_replace_phi_glfwchoosefbconfig10_q = i_llvm_fpga_pop_i32_leastmissing_0137_pop10_glfwchoosefbconfig9_out_data_out;
            1'b1 : i_leastmissing_0137_replace_phi_glfwchoosefbconfig10_q = i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig31_glfwchoosefbconfig8_out_dest_data_out_1_0;
            default : i_leastmissing_0137_replace_phi_glfwchoosefbconfig10_q = 32'b0;
        endcase
    end

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_notEnable(LOGICAL,611)
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_nor(LOGICAL,612)
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_nor_q = ~ (redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_notEnable_q | redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_sticky_ena_q);

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_cmpReg(REG,610)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_sticky_ena(REG,613)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_nor_q == 1'b1)
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_sticky_ena_q <= $unsigned(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_cmpReg_q);
        end
    end

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_enaAnd(LOGICAL,614)
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_enaAnd_q = redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_sticky_ena_q & VCC_q;

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_rdcnt(COUNTER,608)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_rdcnt_i <= $unsigned(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_rdcnt_q = redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_rdcnt_i[0:0];

    // i_inc47_glfwchoosefbconfig30_vt_const_31(CONSTANT,118)
    assign i_inc47_glfwchoosefbconfig30_vt_const_31_q = $unsigned(31'b0000000000000000000000000000000);

    // i_cmp45_glfwchoosefbconfig28(LOGICAL,116)@132
    assign i_cmp45_glfwchoosefbconfig28_q = $unsigned(in_c1_eni50_13_tpl != in_c1_eni50_14_tpl ? 1'b1 : 1'b0);

    // i_inc47_glfwchoosefbconfig30_sel_x(BITSELECT,293)@132
    assign i_inc47_glfwchoosefbconfig30_sel_x_b = {31'b0000000000000000000000000000000, i_cmp45_glfwchoosefbconfig28_q[0:0]};

    // i_inc47_glfwchoosefbconfig30_vt_select_0(BITSELECT,120)@132
    assign i_inc47_glfwchoosefbconfig30_vt_select_0_b = i_inc47_glfwchoosefbconfig30_sel_x_b[0:0];

    // redist23_i_inc47_glfwchoosefbconfig30_vt_select_0_b_1(DELAY,581)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_inc47_glfwchoosefbconfig30_vt_select_0_b_1_q <= '0;
        end
        else
        begin
            redist23_i_inc47_glfwchoosefbconfig30_vt_select_0_b_1_q <= $unsigned(i_inc47_glfwchoosefbconfig30_vt_select_0_b);
        end
    end

    // i_inc47_glfwchoosefbconfig30_vt_join(BITJOIN,119)@133
    assign i_inc47_glfwchoosefbconfig30_vt_join_q = {i_inc47_glfwchoosefbconfig30_vt_const_31_q, redist23_i_inc47_glfwchoosefbconfig30_vt_select_0_b_1_q};

    // i_sub_glfwchoosefbconfig22(SUB,229)@132
    assign i_sub_glfwchoosefbconfig22_a = {1'b0, in_c1_eni50_8_tpl};
    assign i_sub_glfwchoosefbconfig22_b = {1'b0, in_c1_eni50_9_tpl};
    assign i_sub_glfwchoosefbconfig22_o = $unsigned(i_sub_glfwchoosefbconfig22_a) - $unsigned(i_sub_glfwchoosefbconfig22_b);
    assign i_sub_glfwchoosefbconfig22_q = i_sub_glfwchoosefbconfig22_o[32:0];

    // bgTrunc_i_sub_glfwchoosefbconfig22_sel_x(BITSELECT,287)@132
    assign bgTrunc_i_sub_glfwchoosefbconfig22_sel_x_b = $unsigned(i_sub_glfwchoosefbconfig22_q[31:0]);

    // i_cmp32_glfwchoosefbconfig20(COMPARE,114)@132
    assign i_cmp32_glfwchoosefbconfig20_a = $unsigned({{2{in_c1_eni50_9_tpl[31]}}, in_c1_eni50_9_tpl});
    assign i_cmp32_glfwchoosefbconfig20_b = $unsigned({{2{in_c1_eni50_8_tpl[31]}}, in_c1_eni50_8_tpl});
    assign i_cmp32_glfwchoosefbconfig20_o = $unsigned($signed(i_cmp32_glfwchoosefbconfig20_a) - $signed(i_cmp32_glfwchoosefbconfig20_b));
    assign i_cmp32_glfwchoosefbconfig20_c[0] = i_cmp32_glfwchoosefbconfig20_o[33];

    // i_unnamed_glfwchoosefbconfig23(LOGICAL,232)@132
    assign i_unnamed_glfwchoosefbconfig23_q = in_c1_eni50_10_tpl & i_cmp32_glfwchoosefbconfig20_c;

    // i_unnamed_glfwchoosefbconfig24(MUX,233)@132 + 1
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
                1'b0 : i_unnamed_glfwchoosefbconfig24_q <= c_i32_0133_q;
                1'b1 : i_unnamed_glfwchoosefbconfig24_q <= bgTrunc_i_sub_glfwchoosefbconfig22_sel_x_b;
                default : i_unnamed_glfwchoosefbconfig24_q <= 32'b0;
            endcase
        end
    end

    // i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35(ADD,208)@133
    assign i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_a = {1'b0, i_unnamed_glfwchoosefbconfig24_q};
    assign i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_b = {1'b0, i_inc47_glfwchoosefbconfig30_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_o = $unsigned(i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_a) + $unsigned(i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_b);
    assign i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_q = i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_sel_x(BITSELECT,273)@133
    assign bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_sel_x_b = i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_q[31:0];

    // i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_vt_const_31(CONSTANT,205)
    assign i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_vt_const_31_q = $unsigned(29'b00000000000000000000000000000);

    // i_cmp40_glfwchoosefbconfig25(LOGICAL,115)@132
    assign i_cmp40_glfwchoosefbconfig25_q = $unsigned(in_c1_eni50_11_tpl == c_i32_0133_q ? 1'b1 : 1'b0);

    // i_narrow164_glfwchoosefbconfig27(LOGICAL,185)@132
    assign i_narrow164_glfwchoosefbconfig27_q = i_cmp40_glfwchoosefbconfig25_q & in_c1_eni50_12_tpl;

    // i_cmp24_glfwchoosefbconfig17(LOGICAL,113)@132
    assign i_cmp24_glfwchoosefbconfig17_q = $unsigned(in_c1_eni50_6_tpl == c_i32_0133_q ? 1'b1 : 1'b0);

    // i_narrow163_glfwchoosefbconfig19(LOGICAL,184)@132
    assign i_narrow163_glfwchoosefbconfig19_q = i_cmp24_glfwchoosefbconfig17_q & in_c1_eni50_7_tpl;

    // i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig32(ADD,129)@132 + 1
    assign i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig32_a = {1'b0, i_narrow163_glfwchoosefbconfig19_q};
    assign i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig32_b = {1'b0, i_narrow164_glfwchoosefbconfig27_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig32_o <= 2'b0;
        end
        else
        begin
            i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig32_o <= $unsigned(i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig32_a) + $unsigned(i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig32_b);
        end
    end
    assign i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig32_q = i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig32_o[1:0];

    // i_cmp11_glfwchoosefbconfig11(LOGICAL,105)@132
    assign i_cmp11_glfwchoosefbconfig11_q = $unsigned(in_c1_eni50_2_tpl == c_i32_0133_q ? 1'b1 : 1'b0);

    // i_narrow_glfwchoosefbconfig13(LOGICAL,187)@132
    assign i_narrow_glfwchoosefbconfig13_q = i_cmp11_glfwchoosefbconfig11_q & in_c1_eni50_3_tpl;

    // i_cmp17_glfwchoosefbconfig14(LOGICAL,107)@132
    assign i_cmp17_glfwchoosefbconfig14_q = $unsigned(in_c1_eni50_4_tpl == c_i32_0133_q ? 1'b1 : 1'b0);

    // i_narrow162_glfwchoosefbconfig16(LOGICAL,183)@132
    assign i_narrow162_glfwchoosefbconfig16_q = i_cmp17_glfwchoosefbconfig14_q & in_c1_eni50_5_tpl;

    // i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig31(ADD,128)@132 + 1
    assign i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig31_a = {1'b0, i_narrow162_glfwchoosefbconfig16_q};
    assign i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig31_b = {1'b0, i_narrow_glfwchoosefbconfig13_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig31_o <= 2'b0;
        end
        else
        begin
            i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig31_o <= $unsigned(i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig31_a) + $unsigned(i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig31_b);
        end
    end
    assign i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig31_q = i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig31_o[1:0];

    // i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig33(ADD,130)@133
    assign i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig33_a = {1'b0, i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_4_i_glfwchoosefbconfig31_q};
    assign i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig33_b = {1'b0, i_llvm_fpga_int_add_i2_i1_i1_reduction_glfwchoosefbconfig_5_i_glfwchoosefbconfig32_q};
    assign i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig33_o = $unsigned(i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig33_a) + $unsigned(i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig33_b);
    assign i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig33_q = i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig33_o[2:0];

    // i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_sel_x(BITSELECT,294)@133
    assign i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_sel_x_b = {29'b00000000000000000000000000000, i_llvm_fpga_int_add_i3_i2_i2_reduction_glfwchoosefbconfig_6_i_glfwchoosefbconfig33_q[2:0]};

    // i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_vt_select_2(BITSELECT,207)@133
    assign i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_vt_select_2_b = i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_sel_x_b[2:0];

    // i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_vt_join(BITJOIN,206)@133
    assign i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_vt_join_q = {i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_vt_const_31_q, i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_vt_select_2_b};

    // i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36(ADD,209)@133
    assign i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_a = {1'b0, i_reduction_glfwchoosefbconfig_6_zext_glfwchoosefbconfig34_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_b = {1'b0, bgTrunc_i_reduction_glfwchoosefbconfig_7_glfwchoosefbconfig35_sel_x_b};
    assign i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_o = $unsigned(i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_a) + $unsigned(i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_b);
    assign i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_q = i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x(BITSELECT,274)@133
    assign bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b = i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_q[31:0];

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_inputreg0(DELAY,605)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_inputreg0_q <= '0;
        end
        else
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_inputreg0_q <= $unsigned(bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b);
        end
    end

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_wraddr(REG,609)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_wraddr_q <= $unsigned(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_rdcnt_q);
        end
    end

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem(DUALMEM,607)
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_ia = $unsigned(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_inputreg0_q);
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_aa = redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_wraddr_q;
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_ab = redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_rdcnt_q;
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_reset0 = ~ (resetn);
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
    ) redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_dmem (
        .clocken1(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_reset0),
        .clock1(clock),
        .address_a(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_aa),
        .data_a(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_ab),
        .q_b(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_iq),
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
    assign redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_q = redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_iq[31:0];

    // redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_outputreg0(DELAY,606)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_outputreg0_q <= '0;
        end
        else
        begin
            redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_outputreg0_q <= $unsigned(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_mem_q);
        end
    end

    // i_cmp179_glfwchoosefbconfig84(COMPARE,106)@138
    assign i_cmp179_glfwchoosefbconfig84_a = {2'b00, redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_outputreg0_q};
    assign i_cmp179_glfwchoosefbconfig84_b = {2'b00, i_leastmissing_0137_replace_phi_glfwchoosefbconfig10_q};
    assign i_cmp179_glfwchoosefbconfig84_o = $unsigned(i_cmp179_glfwchoosefbconfig84_a) - $unsigned(i_cmp179_glfwchoosefbconfig84_b);
    assign i_cmp179_glfwchoosefbconfig84_c[0] = i_cmp179_glfwchoosefbconfig84_o[33];

    // i_reduction_glfwchoosefbconfig_17_glfwchoosefbconfig92(LOGICAL,197)@138
    assign i_reduction_glfwchoosefbconfig_17_glfwchoosefbconfig92_q = i_cmp179_glfwchoosefbconfig84_c ^ VCC_q;

    // i_cmp181_glfwchoosefbconfig85(LOGICAL,108)@138
    assign i_cmp181_glfwchoosefbconfig85_q = $unsigned(redist16_bgTrunc_i_reduction_glfwchoosefbconfig_8_glfwchoosefbconfig36_sel_x_b_5_outputreg0_q == i_leastmissing_0137_replace_phi_glfwchoosefbconfig10_q ? 1'b1 : 1'b0);

    // i_reduction_glfwchoosefbconfig_18_glfwchoosefbconfig93(LOGICAL,198)@138
    assign i_reduction_glfwchoosefbconfig_18_glfwchoosefbconfig93_q = i_cmp181_glfwchoosefbconfig85_q ^ i_reduction_glfwchoosefbconfig_17_glfwchoosefbconfig92_q;

    // valid_fanout_reg3(REG,301)@137 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist15_sync_together144_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig30_glfwchoosefbconfig5(BLACKBOX,125)@138
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000047Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig30_glfwchoosefbconfig5 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig30_glfwchoosefbconfig5_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,302)@137 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist15_sync_together144_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg9(REG,307)@137 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist15_sync_together144_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig111(MUX,200)@138
    assign i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig111_s = i_selcond_glfwchoosefbconfig_1_glfwchoosefbconfig108_q;
    always @(i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig111_s or i_leastcolordiff_0138_replace_phi_glfwchoosefbconfig7_q or redist20_bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b_2_q)
    begin
        unique case (i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig111_s)
            1'b0 : i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig111_q = i_leastcolordiff_0138_replace_phi_glfwchoosefbconfig7_q;
            1'b1 : i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig111_q = redist20_bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b_2_q;
            default : i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig111_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_leastcolordiff_0138_push9_glfwchoosefbconfig112(BLACKBOX,135)@138
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i32_A000001Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i32_leastcolordiff_0138_push9_glfwchoosefbconfig112 (
        .in_c1_ene49(redist13_sync_together144_aunroll_x_in_c1_eni50_49_tpl_6_q),
        .in_data_in(i_reduction_glfwchoosefbconfig_1_glfwchoosefbconfig111_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_leastcolordiff_0138_pop9_glfwchoosefbconfig6_out_feedback_stall_out_9),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_leastcolordiff_0138_push9_glfwchoosefbconfig112_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_leastcolordiff_0138_push9_glfwchoosefbconfig112_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_leastcolordiff_0138_pop9_glfwchoosefbconfig6(BLACKBOX,131)@138
    // out out_feedback_stall_out_9@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_i32_lA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_i32_leastcolordiff_0138_pop9_glfwchoosefbconfig6 (
        .in_data_in(c_i32_0133_q),
        .in_dir(redist0_sync_together144_aunroll_x_in_c1_eni50_1_tpl_6_q),
        .in_feedback_in_9(i_llvm_fpga_push_i32_leastcolordiff_0138_push9_glfwchoosefbconfig112_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_leastcolordiff_0138_push9_glfwchoosefbconfig112_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_leastcolordiff_0138_pop9_glfwchoosefbconfig6_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_leastcolordiff_0138_pop9_glfwchoosefbconfig6_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_leastcolordiff_0138_replace_phi_glfwchoosefbconfig7(MUX,121)@138
    assign i_leastcolordiff_0138_replace_phi_glfwchoosefbconfig7_s = redist0_sync_together144_aunroll_x_in_c1_eni50_1_tpl_6_q;
    always @(i_leastcolordiff_0138_replace_phi_glfwchoosefbconfig7_s or i_llvm_fpga_pop_i32_leastcolordiff_0138_pop9_glfwchoosefbconfig6_out_data_out or i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig30_glfwchoosefbconfig5_out_dest_data_out_1_0)
    begin
        unique case (i_leastcolordiff_0138_replace_phi_glfwchoosefbconfig7_s)
            1'b0 : i_leastcolordiff_0138_replace_phi_glfwchoosefbconfig7_q = i_llvm_fpga_pop_i32_leastcolordiff_0138_pop9_glfwchoosefbconfig6_out_data_out;
            1'b1 : i_leastcolordiff_0138_replace_phi_glfwchoosefbconfig7_q = i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig30_glfwchoosefbconfig5_out_dest_data_out_1_0;
            default : i_leastcolordiff_0138_replace_phi_glfwchoosefbconfig7_q = 32'b0;
        endcase
    end

    // i_sub74_glfwchoosefbconfig44(SUB,226)@132
    assign i_sub74_glfwchoosefbconfig44_a = {1'b0, in_c1_eni50_21_tpl};
    assign i_sub74_glfwchoosefbconfig44_b = {1'b0, in_c1_eni50_22_tpl};
    assign i_sub74_glfwchoosefbconfig44_o = $unsigned(i_sub74_glfwchoosefbconfig44_a) - $unsigned(i_sub74_glfwchoosefbconfig44_b);
    assign i_sub74_glfwchoosefbconfig44_q = i_sub74_glfwchoosefbconfig44_o[32:0];

    // bgTrunc_i_sub74_glfwchoosefbconfig44_sel_x(BITSELECT,284)@132
    assign bgTrunc_i_sub74_glfwchoosefbconfig44_sel_x_b = $unsigned(i_sub74_glfwchoosefbconfig44_q[31:0]);

    // i_mul78_glfwchoosefbconfig45_bs1_merged_bit_select(BITSELECT,555)@132
    assign i_mul78_glfwchoosefbconfig45_bs1_merged_bit_select_b = bgTrunc_i_sub74_glfwchoosefbconfig44_sel_x_b[31:18];
    assign i_mul78_glfwchoosefbconfig45_bs1_merged_bit_select_c = bgTrunc_i_sub74_glfwchoosefbconfig44_sel_x_b[17:0];

    // i_mul78_glfwchoosefbconfig45_ma3_cma(CHAINMULTADD,544)@132 + 3
    assign i_mul78_glfwchoosefbconfig45_ma3_cma_reset = ~ (resetn);
    assign i_mul78_glfwchoosefbconfig45_ma3_cma_ena0 = 1'b1;
    assign i_mul78_glfwchoosefbconfig45_ma3_cma_ena1 = i_mul78_glfwchoosefbconfig45_ma3_cma_ena0;
    assign i_mul78_glfwchoosefbconfig45_ma3_cma_ena2 = i_mul78_glfwchoosefbconfig45_ma3_cma_ena0;

    assign i_mul78_glfwchoosefbconfig45_ma3_cma_a0 = i_mul78_glfwchoosefbconfig45_bs1_merged_bit_select_b;
    assign i_mul78_glfwchoosefbconfig45_ma3_cma_c0 = i_mul78_glfwchoosefbconfig45_bs1_merged_bit_select_c;
    assign i_mul78_glfwchoosefbconfig45_ma3_cma_a1 = i_mul78_glfwchoosefbconfig45_bs1_merged_bit_select_b;
    assign i_mul78_glfwchoosefbconfig45_ma3_cma_c1 = i_mul78_glfwchoosefbconfig45_bs1_merged_bit_select_c;
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
    ) i_mul78_glfwchoosefbconfig45_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul78_glfwchoosefbconfig45_ma3_cma_ena2, i_mul78_glfwchoosefbconfig45_ma3_cma_ena1, i_mul78_glfwchoosefbconfig45_ma3_cma_ena0 }),
        .aclr({ i_mul78_glfwchoosefbconfig45_ma3_cma_reset, i_mul78_glfwchoosefbconfig45_ma3_cma_reset }),
        .ay(i_mul78_glfwchoosefbconfig45_ma3_cma_a1),
        .by(i_mul78_glfwchoosefbconfig45_ma3_cma_a0),
        .ax(i_mul78_glfwchoosefbconfig45_ma3_cma_c1),
        .bx(i_mul78_glfwchoosefbconfig45_ma3_cma_c0),
        .resulta(i_mul78_glfwchoosefbconfig45_ma3_cma_s0),
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
    i_mul78_glfwchoosefbconfig45_ma3_cma_delay ( .xin(i_mul78_glfwchoosefbconfig45_ma3_cma_s0), .xout(i_mul78_glfwchoosefbconfig45_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul78_glfwchoosefbconfig45_ma3_cma_q = $unsigned(i_mul78_glfwchoosefbconfig45_ma3_cma_qq[32:0]);

    // i_mul78_glfwchoosefbconfig45_sums_align_1(BITSHIFT,481)@135
    assign i_mul78_glfwchoosefbconfig45_sums_align_1_qint = { i_mul78_glfwchoosefbconfig45_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul78_glfwchoosefbconfig45_sums_align_1_q = i_mul78_glfwchoosefbconfig45_sums_align_1_qint[50:0];

    // i_mul78_glfwchoosefbconfig45_im0_cma(CHAINMULTADD,530)@132 + 3
    assign i_mul78_glfwchoosefbconfig45_im0_cma_reset = ~ (resetn);
    assign i_mul78_glfwchoosefbconfig45_im0_cma_ena0 = 1'b1;
    assign i_mul78_glfwchoosefbconfig45_im0_cma_ena1 = i_mul78_glfwchoosefbconfig45_im0_cma_ena0;
    assign i_mul78_glfwchoosefbconfig45_im0_cma_ena2 = i_mul78_glfwchoosefbconfig45_im0_cma_ena0;

    assign i_mul78_glfwchoosefbconfig45_im0_cma_a0 = i_mul78_glfwchoosefbconfig45_bs1_merged_bit_select_b;
    assign i_mul78_glfwchoosefbconfig45_im0_cma_c0 = i_mul78_glfwchoosefbconfig45_bs1_merged_bit_select_b;
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
    ) i_mul78_glfwchoosefbconfig45_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul78_glfwchoosefbconfig45_im0_cma_ena2, i_mul78_glfwchoosefbconfig45_im0_cma_ena1, i_mul78_glfwchoosefbconfig45_im0_cma_ena0 }),
        .aclr({ i_mul78_glfwchoosefbconfig45_im0_cma_reset, i_mul78_glfwchoosefbconfig45_im0_cma_reset }),
        .ay(i_mul78_glfwchoosefbconfig45_im0_cma_a0),
        .ax(i_mul78_glfwchoosefbconfig45_im0_cma_c0),
        .resulta(i_mul78_glfwchoosefbconfig45_im0_cma_s0),
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
    i_mul78_glfwchoosefbconfig45_im0_cma_delay ( .xin(i_mul78_glfwchoosefbconfig45_im0_cma_s0), .xout(i_mul78_glfwchoosefbconfig45_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul78_glfwchoosefbconfig45_im0_cma_q = $unsigned(i_mul78_glfwchoosefbconfig45_im0_cma_qq[27:0]);

    // i_mul78_glfwchoosefbconfig45_im8_cma(CHAINMULTADD,531)@132 + 3
    assign i_mul78_glfwchoosefbconfig45_im8_cma_reset = ~ (resetn);
    assign i_mul78_glfwchoosefbconfig45_im8_cma_ena0 = 1'b1;
    assign i_mul78_glfwchoosefbconfig45_im8_cma_ena1 = i_mul78_glfwchoosefbconfig45_im8_cma_ena0;
    assign i_mul78_glfwchoosefbconfig45_im8_cma_ena2 = i_mul78_glfwchoosefbconfig45_im8_cma_ena0;

    assign i_mul78_glfwchoosefbconfig45_im8_cma_a0 = i_mul78_glfwchoosefbconfig45_bs1_merged_bit_select_c;
    assign i_mul78_glfwchoosefbconfig45_im8_cma_c0 = i_mul78_glfwchoosefbconfig45_bs1_merged_bit_select_c;
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
    ) i_mul78_glfwchoosefbconfig45_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul78_glfwchoosefbconfig45_im8_cma_ena2, i_mul78_glfwchoosefbconfig45_im8_cma_ena1, i_mul78_glfwchoosefbconfig45_im8_cma_ena0 }),
        .aclr({ i_mul78_glfwchoosefbconfig45_im8_cma_reset, i_mul78_glfwchoosefbconfig45_im8_cma_reset }),
        .ay(i_mul78_glfwchoosefbconfig45_im8_cma_a0),
        .ax(i_mul78_glfwchoosefbconfig45_im8_cma_c0),
        .resulta(i_mul78_glfwchoosefbconfig45_im8_cma_s0),
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
    i_mul78_glfwchoosefbconfig45_im8_cma_delay ( .xin(i_mul78_glfwchoosefbconfig45_im8_cma_s0), .xout(i_mul78_glfwchoosefbconfig45_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul78_glfwchoosefbconfig45_im8_cma_q = $unsigned(i_mul78_glfwchoosefbconfig45_im8_cma_qq[35:0]);

    // i_mul78_glfwchoosefbconfig45_sums_join_0(BITJOIN,480)@135
    assign i_mul78_glfwchoosefbconfig45_sums_join_0_q = {i_mul78_glfwchoosefbconfig45_im0_cma_q, i_mul78_glfwchoosefbconfig45_im8_cma_q};

    // i_mul78_glfwchoosefbconfig45_sums_result_add_0_0(ADD,483)@135
    assign i_mul78_glfwchoosefbconfig45_sums_result_add_0_0_a = {1'b0, i_mul78_glfwchoosefbconfig45_sums_join_0_q};
    assign i_mul78_glfwchoosefbconfig45_sums_result_add_0_0_b = {14'b00000000000000, i_mul78_glfwchoosefbconfig45_sums_align_1_q};
    assign i_mul78_glfwchoosefbconfig45_sums_result_add_0_0_o = $unsigned(i_mul78_glfwchoosefbconfig45_sums_result_add_0_0_a) + $unsigned(i_mul78_glfwchoosefbconfig45_sums_result_add_0_0_b);
    assign i_mul78_glfwchoosefbconfig45_sums_result_add_0_0_q = i_mul78_glfwchoosefbconfig45_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul78_glfwchoosefbconfig45_sel_x(BITSELECT,263)@135
    assign bgTrunc_i_mul78_glfwchoosefbconfig45_sel_x_in = i_mul78_glfwchoosefbconfig45_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul78_glfwchoosefbconfig45_sel_x_b = bgTrunc_i_mul78_glfwchoosefbconfig45_sel_x_in[31:0];

    // i_mul78_glfwchoosefbconfig45_vt_select_30(BITSELECT,174)@135
    assign i_mul78_glfwchoosefbconfig45_vt_select_30_b = bgTrunc_i_mul78_glfwchoosefbconfig45_sel_x_b[30:0];

    // i_mul78_glfwchoosefbconfig45_vt_join(BITJOIN,173)@135
    assign i_mul78_glfwchoosefbconfig45_vt_join_q = {GND_q, i_mul78_glfwchoosefbconfig45_vt_select_30_b};

    // redist3_sync_together144_aunroll_x_in_c1_eni50_23_tpl_3(DELAY,561)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together144_aunroll_x_in_c1_eni50_23_tpl_3_delay_0 <= '0;
            redist3_sync_together144_aunroll_x_in_c1_eni50_23_tpl_3_delay_1 <= '0;
            redist3_sync_together144_aunroll_x_in_c1_eni50_23_tpl_3_q <= '0;
        end
        else
        begin
            redist3_sync_together144_aunroll_x_in_c1_eni50_23_tpl_3_delay_0 <= $unsigned(in_c1_eni50_23_tpl);
            redist3_sync_together144_aunroll_x_in_c1_eni50_23_tpl_3_delay_1 <= redist3_sync_together144_aunroll_x_in_c1_eni50_23_tpl_3_delay_0;
            redist3_sync_together144_aunroll_x_in_c1_eni50_23_tpl_3_q <= redist3_sync_together144_aunroll_x_in_c1_eni50_23_tpl_3_delay_1;
        end
    end

    // i_add79_glfwchoosefbconfig46(MUX,101)@135
    assign i_add79_glfwchoosefbconfig46_s = redist3_sync_together144_aunroll_x_in_c1_eni50_23_tpl_3_q;
    always @(i_add79_glfwchoosefbconfig46_s or c_i32_0133_q or i_mul78_glfwchoosefbconfig45_vt_join_q)
    begin
        unique case (i_add79_glfwchoosefbconfig46_s)
            1'b0 : i_add79_glfwchoosefbconfig46_q = c_i32_0133_q;
            1'b1 : i_add79_glfwchoosefbconfig46_q = i_mul78_glfwchoosefbconfig45_vt_join_q;
            default : i_add79_glfwchoosefbconfig46_q = 32'b0;
        endcase
    end

    // i_add79_glfwchoosefbconfig46_vt_select_30(BITSELECT,104)@135
    assign i_add79_glfwchoosefbconfig46_vt_select_30_b = i_add79_glfwchoosefbconfig46_q[30:0];

    // redist24_i_add79_glfwchoosefbconfig46_vt_select_30_b_1(DELAY,582)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_add79_glfwchoosefbconfig46_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist24_i_add79_glfwchoosefbconfig46_vt_select_30_b_1_q <= $unsigned(i_add79_glfwchoosefbconfig46_vt_select_30_b);
        end
    end

    // i_add79_glfwchoosefbconfig46_vt_join(BITJOIN,103)@136
    assign i_add79_glfwchoosefbconfig46_vt_join_q = {GND_q, redist24_i_add79_glfwchoosefbconfig46_vt_select_30_b_1_q};

    // i_sub63_glfwchoosefbconfig40(SUB,225)@132
    assign i_sub63_glfwchoosefbconfig40_a = {1'b0, in_c1_eni50_18_tpl};
    assign i_sub63_glfwchoosefbconfig40_b = {1'b0, in_c1_eni50_19_tpl};
    assign i_sub63_glfwchoosefbconfig40_o = $unsigned(i_sub63_glfwchoosefbconfig40_a) - $unsigned(i_sub63_glfwchoosefbconfig40_b);
    assign i_sub63_glfwchoosefbconfig40_q = i_sub63_glfwchoosefbconfig40_o[32:0];

    // bgTrunc_i_sub63_glfwchoosefbconfig40_sel_x(BITSELECT,283)@132
    assign bgTrunc_i_sub63_glfwchoosefbconfig40_sel_x_b = $unsigned(i_sub63_glfwchoosefbconfig40_q[31:0]);

    // i_mul67_glfwchoosefbconfig41_bs1_merged_bit_select(BITSELECT,554)@132
    assign i_mul67_glfwchoosefbconfig41_bs1_merged_bit_select_b = bgTrunc_i_sub63_glfwchoosefbconfig40_sel_x_b[31:18];
    assign i_mul67_glfwchoosefbconfig41_bs1_merged_bit_select_c = bgTrunc_i_sub63_glfwchoosefbconfig40_sel_x_b[17:0];

    // i_mul67_glfwchoosefbconfig41_ma3_cma(CHAINMULTADD,543)@132 + 3
    assign i_mul67_glfwchoosefbconfig41_ma3_cma_reset = ~ (resetn);
    assign i_mul67_glfwchoosefbconfig41_ma3_cma_ena0 = 1'b1;
    assign i_mul67_glfwchoosefbconfig41_ma3_cma_ena1 = i_mul67_glfwchoosefbconfig41_ma3_cma_ena0;
    assign i_mul67_glfwchoosefbconfig41_ma3_cma_ena2 = i_mul67_glfwchoosefbconfig41_ma3_cma_ena0;

    assign i_mul67_glfwchoosefbconfig41_ma3_cma_a0 = i_mul67_glfwchoosefbconfig41_bs1_merged_bit_select_b;
    assign i_mul67_glfwchoosefbconfig41_ma3_cma_c0 = i_mul67_glfwchoosefbconfig41_bs1_merged_bit_select_c;
    assign i_mul67_glfwchoosefbconfig41_ma3_cma_a1 = i_mul67_glfwchoosefbconfig41_bs1_merged_bit_select_b;
    assign i_mul67_glfwchoosefbconfig41_ma3_cma_c1 = i_mul67_glfwchoosefbconfig41_bs1_merged_bit_select_c;
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
    ) i_mul67_glfwchoosefbconfig41_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul67_glfwchoosefbconfig41_ma3_cma_ena2, i_mul67_glfwchoosefbconfig41_ma3_cma_ena1, i_mul67_glfwchoosefbconfig41_ma3_cma_ena0 }),
        .aclr({ i_mul67_glfwchoosefbconfig41_ma3_cma_reset, i_mul67_glfwchoosefbconfig41_ma3_cma_reset }),
        .ay(i_mul67_glfwchoosefbconfig41_ma3_cma_a1),
        .by(i_mul67_glfwchoosefbconfig41_ma3_cma_a0),
        .ax(i_mul67_glfwchoosefbconfig41_ma3_cma_c1),
        .bx(i_mul67_glfwchoosefbconfig41_ma3_cma_c0),
        .resulta(i_mul67_glfwchoosefbconfig41_ma3_cma_s0),
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
    i_mul67_glfwchoosefbconfig41_ma3_cma_delay ( .xin(i_mul67_glfwchoosefbconfig41_ma3_cma_s0), .xout(i_mul67_glfwchoosefbconfig41_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul67_glfwchoosefbconfig41_ma3_cma_q = $unsigned(i_mul67_glfwchoosefbconfig41_ma3_cma_qq[32:0]);

    // i_mul67_glfwchoosefbconfig41_sums_align_1(BITSHIFT,466)@135
    assign i_mul67_glfwchoosefbconfig41_sums_align_1_qint = { i_mul67_glfwchoosefbconfig41_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul67_glfwchoosefbconfig41_sums_align_1_q = i_mul67_glfwchoosefbconfig41_sums_align_1_qint[50:0];

    // i_mul67_glfwchoosefbconfig41_im0_cma(CHAINMULTADD,528)@132 + 3
    assign i_mul67_glfwchoosefbconfig41_im0_cma_reset = ~ (resetn);
    assign i_mul67_glfwchoosefbconfig41_im0_cma_ena0 = 1'b1;
    assign i_mul67_glfwchoosefbconfig41_im0_cma_ena1 = i_mul67_glfwchoosefbconfig41_im0_cma_ena0;
    assign i_mul67_glfwchoosefbconfig41_im0_cma_ena2 = i_mul67_glfwchoosefbconfig41_im0_cma_ena0;

    assign i_mul67_glfwchoosefbconfig41_im0_cma_a0 = i_mul67_glfwchoosefbconfig41_bs1_merged_bit_select_b;
    assign i_mul67_glfwchoosefbconfig41_im0_cma_c0 = i_mul67_glfwchoosefbconfig41_bs1_merged_bit_select_b;
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
    ) i_mul67_glfwchoosefbconfig41_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul67_glfwchoosefbconfig41_im0_cma_ena2, i_mul67_glfwchoosefbconfig41_im0_cma_ena1, i_mul67_glfwchoosefbconfig41_im0_cma_ena0 }),
        .aclr({ i_mul67_glfwchoosefbconfig41_im0_cma_reset, i_mul67_glfwchoosefbconfig41_im0_cma_reset }),
        .ay(i_mul67_glfwchoosefbconfig41_im0_cma_a0),
        .ax(i_mul67_glfwchoosefbconfig41_im0_cma_c0),
        .resulta(i_mul67_glfwchoosefbconfig41_im0_cma_s0),
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
    i_mul67_glfwchoosefbconfig41_im0_cma_delay ( .xin(i_mul67_glfwchoosefbconfig41_im0_cma_s0), .xout(i_mul67_glfwchoosefbconfig41_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul67_glfwchoosefbconfig41_im0_cma_q = $unsigned(i_mul67_glfwchoosefbconfig41_im0_cma_qq[27:0]);

    // i_mul67_glfwchoosefbconfig41_im8_cma(CHAINMULTADD,529)@132 + 3
    assign i_mul67_glfwchoosefbconfig41_im8_cma_reset = ~ (resetn);
    assign i_mul67_glfwchoosefbconfig41_im8_cma_ena0 = 1'b1;
    assign i_mul67_glfwchoosefbconfig41_im8_cma_ena1 = i_mul67_glfwchoosefbconfig41_im8_cma_ena0;
    assign i_mul67_glfwchoosefbconfig41_im8_cma_ena2 = i_mul67_glfwchoosefbconfig41_im8_cma_ena0;

    assign i_mul67_glfwchoosefbconfig41_im8_cma_a0 = i_mul67_glfwchoosefbconfig41_bs1_merged_bit_select_c;
    assign i_mul67_glfwchoosefbconfig41_im8_cma_c0 = i_mul67_glfwchoosefbconfig41_bs1_merged_bit_select_c;
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
    ) i_mul67_glfwchoosefbconfig41_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul67_glfwchoosefbconfig41_im8_cma_ena2, i_mul67_glfwchoosefbconfig41_im8_cma_ena1, i_mul67_glfwchoosefbconfig41_im8_cma_ena0 }),
        .aclr({ i_mul67_glfwchoosefbconfig41_im8_cma_reset, i_mul67_glfwchoosefbconfig41_im8_cma_reset }),
        .ay(i_mul67_glfwchoosefbconfig41_im8_cma_a0),
        .ax(i_mul67_glfwchoosefbconfig41_im8_cma_c0),
        .resulta(i_mul67_glfwchoosefbconfig41_im8_cma_s0),
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
    i_mul67_glfwchoosefbconfig41_im8_cma_delay ( .xin(i_mul67_glfwchoosefbconfig41_im8_cma_s0), .xout(i_mul67_glfwchoosefbconfig41_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul67_glfwchoosefbconfig41_im8_cma_q = $unsigned(i_mul67_glfwchoosefbconfig41_im8_cma_qq[35:0]);

    // i_mul67_glfwchoosefbconfig41_sums_join_0(BITJOIN,465)@135
    assign i_mul67_glfwchoosefbconfig41_sums_join_0_q = {i_mul67_glfwchoosefbconfig41_im0_cma_q, i_mul67_glfwchoosefbconfig41_im8_cma_q};

    // i_mul67_glfwchoosefbconfig41_sums_result_add_0_0(ADD,468)@135
    assign i_mul67_glfwchoosefbconfig41_sums_result_add_0_0_a = {1'b0, i_mul67_glfwchoosefbconfig41_sums_join_0_q};
    assign i_mul67_glfwchoosefbconfig41_sums_result_add_0_0_b = {14'b00000000000000, i_mul67_glfwchoosefbconfig41_sums_align_1_q};
    assign i_mul67_glfwchoosefbconfig41_sums_result_add_0_0_o = $unsigned(i_mul67_glfwchoosefbconfig41_sums_result_add_0_0_a) + $unsigned(i_mul67_glfwchoosefbconfig41_sums_result_add_0_0_b);
    assign i_mul67_glfwchoosefbconfig41_sums_result_add_0_0_q = i_mul67_glfwchoosefbconfig41_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul67_glfwchoosefbconfig41_sel_x(BITSELECT,262)@135
    assign bgTrunc_i_mul67_glfwchoosefbconfig41_sel_x_in = i_mul67_glfwchoosefbconfig41_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul67_glfwchoosefbconfig41_sel_x_b = bgTrunc_i_mul67_glfwchoosefbconfig41_sel_x_in[31:0];

    // i_mul67_glfwchoosefbconfig41_vt_select_30(BITSELECT,170)@135
    assign i_mul67_glfwchoosefbconfig41_vt_select_30_b = bgTrunc_i_mul67_glfwchoosefbconfig41_sel_x_b[30:0];

    // i_mul67_glfwchoosefbconfig41_vt_join(BITJOIN,169)@135
    assign i_mul67_glfwchoosefbconfig41_vt_join_q = {GND_q, i_mul67_glfwchoosefbconfig41_vt_select_30_b};

    // redist2_sync_together144_aunroll_x_in_c1_eni50_20_tpl_3(DELAY,560)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together144_aunroll_x_in_c1_eni50_20_tpl_3_delay_0 <= '0;
            redist2_sync_together144_aunroll_x_in_c1_eni50_20_tpl_3_delay_1 <= '0;
            redist2_sync_together144_aunroll_x_in_c1_eni50_20_tpl_3_q <= '0;
        end
        else
        begin
            redist2_sync_together144_aunroll_x_in_c1_eni50_20_tpl_3_delay_0 <= $unsigned(in_c1_eni50_20_tpl);
            redist2_sync_together144_aunroll_x_in_c1_eni50_20_tpl_3_delay_1 <= redist2_sync_together144_aunroll_x_in_c1_eni50_20_tpl_3_delay_0;
            redist2_sync_together144_aunroll_x_in_c1_eni50_20_tpl_3_q <= redist2_sync_together144_aunroll_x_in_c1_eni50_20_tpl_3_delay_1;
        end
    end

    // i_add68_glfwchoosefbconfig42(MUX,97)@135
    assign i_add68_glfwchoosefbconfig42_s = redist2_sync_together144_aunroll_x_in_c1_eni50_20_tpl_3_q;
    always @(i_add68_glfwchoosefbconfig42_s or c_i32_0133_q or i_mul67_glfwchoosefbconfig41_vt_join_q)
    begin
        unique case (i_add68_glfwchoosefbconfig42_s)
            1'b0 : i_add68_glfwchoosefbconfig42_q = c_i32_0133_q;
            1'b1 : i_add68_glfwchoosefbconfig42_q = i_mul67_glfwchoosefbconfig41_vt_join_q;
            default : i_add68_glfwchoosefbconfig42_q = 32'b0;
        endcase
    end

    // i_add68_glfwchoosefbconfig42_vt_select_30(BITSELECT,100)@135
    assign i_add68_glfwchoosefbconfig42_vt_select_30_b = i_add68_glfwchoosefbconfig42_q[30:0];

    // redist25_i_add68_glfwchoosefbconfig42_vt_select_30_b_1(DELAY,583)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_add68_glfwchoosefbconfig42_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist25_i_add68_glfwchoosefbconfig42_vt_select_30_b_1_q <= $unsigned(i_add68_glfwchoosefbconfig42_vt_select_30_b);
        end
    end

    // i_add68_glfwchoosefbconfig42_vt_join(BITJOIN,99)@136
    assign i_add68_glfwchoosefbconfig42_vt_join_q = {GND_q, redist25_i_add68_glfwchoosefbconfig42_vt_select_30_b_1_q};

    // i_sub53_glfwchoosefbconfig37(SUB,224)@132
    assign i_sub53_glfwchoosefbconfig37_a = {1'b0, in_c1_eni50_15_tpl};
    assign i_sub53_glfwchoosefbconfig37_b = {1'b0, in_c1_eni50_16_tpl};
    assign i_sub53_glfwchoosefbconfig37_o = $unsigned(i_sub53_glfwchoosefbconfig37_a) - $unsigned(i_sub53_glfwchoosefbconfig37_b);
    assign i_sub53_glfwchoosefbconfig37_q = i_sub53_glfwchoosefbconfig37_o[32:0];

    // bgTrunc_i_sub53_glfwchoosefbconfig37_sel_x(BITSELECT,282)@132
    assign bgTrunc_i_sub53_glfwchoosefbconfig37_sel_x_b = $unsigned(i_sub53_glfwchoosefbconfig37_q[31:0]);

    // i_mul_glfwchoosefbconfig38_bs1_merged_bit_select(BITSELECT,553)@132
    assign i_mul_glfwchoosefbconfig38_bs1_merged_bit_select_b = bgTrunc_i_sub53_glfwchoosefbconfig37_sel_x_b[31:18];
    assign i_mul_glfwchoosefbconfig38_bs1_merged_bit_select_c = bgTrunc_i_sub53_glfwchoosefbconfig37_sel_x_b[17:0];

    // i_mul_glfwchoosefbconfig38_ma3_cma(CHAINMULTADD,546)@132 + 3
    assign i_mul_glfwchoosefbconfig38_ma3_cma_reset = ~ (resetn);
    assign i_mul_glfwchoosefbconfig38_ma3_cma_ena0 = 1'b1;
    assign i_mul_glfwchoosefbconfig38_ma3_cma_ena1 = i_mul_glfwchoosefbconfig38_ma3_cma_ena0;
    assign i_mul_glfwchoosefbconfig38_ma3_cma_ena2 = i_mul_glfwchoosefbconfig38_ma3_cma_ena0;

    assign i_mul_glfwchoosefbconfig38_ma3_cma_a0 = i_mul_glfwchoosefbconfig38_bs1_merged_bit_select_b;
    assign i_mul_glfwchoosefbconfig38_ma3_cma_c0 = i_mul_glfwchoosefbconfig38_bs1_merged_bit_select_c;
    assign i_mul_glfwchoosefbconfig38_ma3_cma_a1 = i_mul_glfwchoosefbconfig38_bs1_merged_bit_select_b;
    assign i_mul_glfwchoosefbconfig38_ma3_cma_c1 = i_mul_glfwchoosefbconfig38_bs1_merged_bit_select_c;
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
    ) i_mul_glfwchoosefbconfig38_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_glfwchoosefbconfig38_ma3_cma_ena2, i_mul_glfwchoosefbconfig38_ma3_cma_ena1, i_mul_glfwchoosefbconfig38_ma3_cma_ena0 }),
        .aclr({ i_mul_glfwchoosefbconfig38_ma3_cma_reset, i_mul_glfwchoosefbconfig38_ma3_cma_reset }),
        .ay(i_mul_glfwchoosefbconfig38_ma3_cma_a1),
        .by(i_mul_glfwchoosefbconfig38_ma3_cma_a0),
        .ax(i_mul_glfwchoosefbconfig38_ma3_cma_c1),
        .bx(i_mul_glfwchoosefbconfig38_ma3_cma_c0),
        .resulta(i_mul_glfwchoosefbconfig38_ma3_cma_s0),
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
    i_mul_glfwchoosefbconfig38_ma3_cma_delay ( .xin(i_mul_glfwchoosefbconfig38_ma3_cma_s0), .xout(i_mul_glfwchoosefbconfig38_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_glfwchoosefbconfig38_ma3_cma_q = $unsigned(i_mul_glfwchoosefbconfig38_ma3_cma_qq[32:0]);

    // i_mul_glfwchoosefbconfig38_sums_align_1(BITSHIFT,511)@135
    assign i_mul_glfwchoosefbconfig38_sums_align_1_qint = { i_mul_glfwchoosefbconfig38_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_glfwchoosefbconfig38_sums_align_1_q = i_mul_glfwchoosefbconfig38_sums_align_1_qint[50:0];

    // i_mul_glfwchoosefbconfig38_im0_cma(CHAINMULTADD,534)@132 + 3
    assign i_mul_glfwchoosefbconfig38_im0_cma_reset = ~ (resetn);
    assign i_mul_glfwchoosefbconfig38_im0_cma_ena0 = 1'b1;
    assign i_mul_glfwchoosefbconfig38_im0_cma_ena1 = i_mul_glfwchoosefbconfig38_im0_cma_ena0;
    assign i_mul_glfwchoosefbconfig38_im0_cma_ena2 = i_mul_glfwchoosefbconfig38_im0_cma_ena0;

    assign i_mul_glfwchoosefbconfig38_im0_cma_a0 = i_mul_glfwchoosefbconfig38_bs1_merged_bit_select_b;
    assign i_mul_glfwchoosefbconfig38_im0_cma_c0 = i_mul_glfwchoosefbconfig38_bs1_merged_bit_select_b;
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
    ) i_mul_glfwchoosefbconfig38_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_glfwchoosefbconfig38_im0_cma_ena2, i_mul_glfwchoosefbconfig38_im0_cma_ena1, i_mul_glfwchoosefbconfig38_im0_cma_ena0 }),
        .aclr({ i_mul_glfwchoosefbconfig38_im0_cma_reset, i_mul_glfwchoosefbconfig38_im0_cma_reset }),
        .ay(i_mul_glfwchoosefbconfig38_im0_cma_a0),
        .ax(i_mul_glfwchoosefbconfig38_im0_cma_c0),
        .resulta(i_mul_glfwchoosefbconfig38_im0_cma_s0),
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
    i_mul_glfwchoosefbconfig38_im0_cma_delay ( .xin(i_mul_glfwchoosefbconfig38_im0_cma_s0), .xout(i_mul_glfwchoosefbconfig38_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_glfwchoosefbconfig38_im0_cma_q = $unsigned(i_mul_glfwchoosefbconfig38_im0_cma_qq[27:0]);

    // i_mul_glfwchoosefbconfig38_im8_cma(CHAINMULTADD,535)@132 + 3
    assign i_mul_glfwchoosefbconfig38_im8_cma_reset = ~ (resetn);
    assign i_mul_glfwchoosefbconfig38_im8_cma_ena0 = 1'b1;
    assign i_mul_glfwchoosefbconfig38_im8_cma_ena1 = i_mul_glfwchoosefbconfig38_im8_cma_ena0;
    assign i_mul_glfwchoosefbconfig38_im8_cma_ena2 = i_mul_glfwchoosefbconfig38_im8_cma_ena0;

    assign i_mul_glfwchoosefbconfig38_im8_cma_a0 = i_mul_glfwchoosefbconfig38_bs1_merged_bit_select_c;
    assign i_mul_glfwchoosefbconfig38_im8_cma_c0 = i_mul_glfwchoosefbconfig38_bs1_merged_bit_select_c;
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
    ) i_mul_glfwchoosefbconfig38_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_glfwchoosefbconfig38_im8_cma_ena2, i_mul_glfwchoosefbconfig38_im8_cma_ena1, i_mul_glfwchoosefbconfig38_im8_cma_ena0 }),
        .aclr({ i_mul_glfwchoosefbconfig38_im8_cma_reset, i_mul_glfwchoosefbconfig38_im8_cma_reset }),
        .ay(i_mul_glfwchoosefbconfig38_im8_cma_a0),
        .ax(i_mul_glfwchoosefbconfig38_im8_cma_c0),
        .resulta(i_mul_glfwchoosefbconfig38_im8_cma_s0),
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
    i_mul_glfwchoosefbconfig38_im8_cma_delay ( .xin(i_mul_glfwchoosefbconfig38_im8_cma_s0), .xout(i_mul_glfwchoosefbconfig38_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_glfwchoosefbconfig38_im8_cma_q = $unsigned(i_mul_glfwchoosefbconfig38_im8_cma_qq[35:0]);

    // i_mul_glfwchoosefbconfig38_sums_join_0(BITJOIN,510)@135
    assign i_mul_glfwchoosefbconfig38_sums_join_0_q = {i_mul_glfwchoosefbconfig38_im0_cma_q, i_mul_glfwchoosefbconfig38_im8_cma_q};

    // i_mul_glfwchoosefbconfig38_sums_result_add_0_0(ADD,513)@135
    assign i_mul_glfwchoosefbconfig38_sums_result_add_0_0_a = {1'b0, i_mul_glfwchoosefbconfig38_sums_join_0_q};
    assign i_mul_glfwchoosefbconfig38_sums_result_add_0_0_b = {14'b00000000000000, i_mul_glfwchoosefbconfig38_sums_align_1_q};
    assign i_mul_glfwchoosefbconfig38_sums_result_add_0_0_o = $unsigned(i_mul_glfwchoosefbconfig38_sums_result_add_0_0_a) + $unsigned(i_mul_glfwchoosefbconfig38_sums_result_add_0_0_b);
    assign i_mul_glfwchoosefbconfig38_sums_result_add_0_0_q = i_mul_glfwchoosefbconfig38_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_glfwchoosefbconfig38_sel_x(BITSELECT,265)@135
    assign bgTrunc_i_mul_glfwchoosefbconfig38_sel_x_in = i_mul_glfwchoosefbconfig38_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_glfwchoosefbconfig38_sel_x_b = bgTrunc_i_mul_glfwchoosefbconfig38_sel_x_in[31:0];

    // i_mul_glfwchoosefbconfig38_vt_select_30(BITSELECT,182)@135
    assign i_mul_glfwchoosefbconfig38_vt_select_30_b = bgTrunc_i_mul_glfwchoosefbconfig38_sel_x_b[30:0];

    // i_mul_glfwchoosefbconfig38_vt_join(BITJOIN,181)@135
    assign i_mul_glfwchoosefbconfig38_vt_join_q = {GND_q, i_mul_glfwchoosefbconfig38_vt_select_30_b};

    // redist1_sync_together144_aunroll_x_in_c1_eni50_17_tpl_3(DELAY,559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together144_aunroll_x_in_c1_eni50_17_tpl_3_delay_0 <= '0;
            redist1_sync_together144_aunroll_x_in_c1_eni50_17_tpl_3_delay_1 <= '0;
            redist1_sync_together144_aunroll_x_in_c1_eni50_17_tpl_3_q <= '0;
        end
        else
        begin
            redist1_sync_together144_aunroll_x_in_c1_eni50_17_tpl_3_delay_0 <= $unsigned(in_c1_eni50_17_tpl);
            redist1_sync_together144_aunroll_x_in_c1_eni50_17_tpl_3_delay_1 <= redist1_sync_together144_aunroll_x_in_c1_eni50_17_tpl_3_delay_0;
            redist1_sync_together144_aunroll_x_in_c1_eni50_17_tpl_3_q <= redist1_sync_together144_aunroll_x_in_c1_eni50_17_tpl_3_delay_1;
        end
    end

    // i_acl_5_glfwchoosefbconfig39(MUX,59)@135
    assign i_acl_5_glfwchoosefbconfig39_s = redist1_sync_together144_aunroll_x_in_c1_eni50_17_tpl_3_q;
    always @(i_acl_5_glfwchoosefbconfig39_s or c_i32_0133_q or i_mul_glfwchoosefbconfig38_vt_join_q)
    begin
        unique case (i_acl_5_glfwchoosefbconfig39_s)
            1'b0 : i_acl_5_glfwchoosefbconfig39_q = c_i32_0133_q;
            1'b1 : i_acl_5_glfwchoosefbconfig39_q = i_mul_glfwchoosefbconfig38_vt_join_q;
            default : i_acl_5_glfwchoosefbconfig39_q = 32'b0;
        endcase
    end

    // i_acl_5_glfwchoosefbconfig39_vt_select_30(BITSELECT,62)@135
    assign i_acl_5_glfwchoosefbconfig39_vt_select_30_b = i_acl_5_glfwchoosefbconfig39_q[30:0];

    // redist34_i_acl_5_glfwchoosefbconfig39_vt_select_30_b_1(DELAY,592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_acl_5_glfwchoosefbconfig39_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist34_i_acl_5_glfwchoosefbconfig39_vt_select_30_b_1_q <= $unsigned(i_acl_5_glfwchoosefbconfig39_vt_select_30_b);
        end
    end

    // i_acl_5_glfwchoosefbconfig39_vt_join(BITJOIN,61)@136
    assign i_acl_5_glfwchoosefbconfig39_vt_join_q = {GND_q, redist34_i_acl_5_glfwchoosefbconfig39_vt_select_30_b_1_q};

    // i_acl_6_glfwchoosefbconfig43(ADD,63)@136
    assign i_acl_6_glfwchoosefbconfig43_a = {1'b0, i_acl_5_glfwchoosefbconfig39_vt_join_q};
    assign i_acl_6_glfwchoosefbconfig43_b = {1'b0, i_add68_glfwchoosefbconfig42_vt_join_q};
    assign i_acl_6_glfwchoosefbconfig43_o = $unsigned(i_acl_6_glfwchoosefbconfig43_a) + $unsigned(i_acl_6_glfwchoosefbconfig43_b);
    assign i_acl_6_glfwchoosefbconfig43_q = i_acl_6_glfwchoosefbconfig43_o[32:0];

    // bgTrunc_i_acl_6_glfwchoosefbconfig43_sel_x(BITSELECT,253)@136
    assign bgTrunc_i_acl_6_glfwchoosefbconfig43_sel_x_b = i_acl_6_glfwchoosefbconfig43_q[31:0];

    // i_acl_7_glfwchoosefbconfig47(ADD,64)@136
    assign i_acl_7_glfwchoosefbconfig47_a = {1'b0, bgTrunc_i_acl_6_glfwchoosefbconfig43_sel_x_b};
    assign i_acl_7_glfwchoosefbconfig47_b = {1'b0, i_add79_glfwchoosefbconfig46_vt_join_q};
    assign i_acl_7_glfwchoosefbconfig47_o = $unsigned(i_acl_7_glfwchoosefbconfig47_a) + $unsigned(i_acl_7_glfwchoosefbconfig47_b);
    assign i_acl_7_glfwchoosefbconfig47_q = i_acl_7_glfwchoosefbconfig47_o[32:0];

    // bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x(BITSELECT,254)@136
    assign bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b = i_acl_7_glfwchoosefbconfig47_q[31:0];

    // redist20_bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b_2(DELAY,578)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b_2_delay_0 <= '0;
            redist20_bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist20_bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b_2_delay_0 <= $unsigned(bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b);
            redist20_bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b_2_q <= redist20_bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b_2_delay_0;
        end
    end

    // i_cmp183_glfwchoosefbconfig87(COMPARE,109)@138
    assign i_cmp183_glfwchoosefbconfig87_a = {2'b00, redist20_bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b_2_q};
    assign i_cmp183_glfwchoosefbconfig87_b = {2'b00, i_leastcolordiff_0138_replace_phi_glfwchoosefbconfig7_q};
    assign i_cmp183_glfwchoosefbconfig87_o = $unsigned(i_cmp183_glfwchoosefbconfig87_a) - $unsigned(i_cmp183_glfwchoosefbconfig87_b);
    assign i_cmp183_glfwchoosefbconfig87_c[0] = i_cmp183_glfwchoosefbconfig87_o[33];

    // i_reduction_glfwchoosefbconfig_19_glfwchoosefbconfig94(LOGICAL,199)@138
    assign i_reduction_glfwchoosefbconfig_19_glfwchoosefbconfig94_q = i_cmp183_glfwchoosefbconfig87_c ^ VCC_q;

    // valid_fanout_reg1(REG,299)@137 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist15_sync_together144_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig29_glfwchoosefbconfig2(BLACKBOX,124)@138
    glfwChooseFBConfig_i_llvm_fpga_ffwd_destA000046Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig29_glfwchoosefbconfig2 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig29_glfwchoosefbconfig2_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,300)@137 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist15_sync_together144_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg10(REG,308)@137 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist15_sync_together144_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig113(MUX,202)@138
    assign i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig113_s = i_selcond_glfwchoosefbconfig_1_glfwchoosefbconfig108_q;
    always @(i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig113_s or i_leastextradiff_0139_replace_phi_glfwchoosefbconfig4_q or redist17_bgTrunc_i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_sel_x_b_1_q)
    begin
        unique case (i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig113_s)
            1'b0 : i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig113_q = i_leastextradiff_0139_replace_phi_glfwchoosefbconfig4_q;
            1'b1 : i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig113_q = redist17_bgTrunc_i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_sel_x_b_1_q;
            default : i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig113_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_leastextradiff_0139_push8_glfwchoosefbconfig114(BLACKBOX,136)@138
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_i32_A000002Z_glfwchoosefbconfig0 thei_llvm_fpga_push_i32_leastextradiff_0139_push8_glfwchoosefbconfig114 (
        .in_c1_ene49(redist13_sync_together144_aunroll_x_in_c1_eni50_49_tpl_6_q),
        .in_data_in(i_reduction_glfwchoosefbconfig_2_glfwchoosefbconfig113_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_leastextradiff_0139_pop8_glfwchoosefbconfig3_out_feedback_stall_out_8),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_leastextradiff_0139_push8_glfwchoosefbconfig114_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_leastextradiff_0139_push8_glfwchoosefbconfig114_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_leastextradiff_0139_pop8_glfwchoosefbconfig3(BLACKBOX,132)@138
    // out out_feedback_stall_out_8@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_i32_lA000001Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_i32_leastextradiff_0139_pop8_glfwchoosefbconfig3 (
        .in_data_in(c_i32_0133_q),
        .in_dir(redist0_sync_together144_aunroll_x_in_c1_eni50_1_tpl_6_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_leastextradiff_0139_push8_glfwchoosefbconfig114_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_leastextradiff_0139_push8_glfwchoosefbconfig114_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_leastextradiff_0139_pop8_glfwchoosefbconfig3_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_leastextradiff_0139_pop8_glfwchoosefbconfig3_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_leastextradiff_0139_replace_phi_glfwchoosefbconfig4(MUX,122)@138
    assign i_leastextradiff_0139_replace_phi_glfwchoosefbconfig4_s = redist0_sync_together144_aunroll_x_in_c1_eni50_1_tpl_6_q;
    always @(i_leastextradiff_0139_replace_phi_glfwchoosefbconfig4_s or i_llvm_fpga_pop_i32_leastextradiff_0139_pop8_glfwchoosefbconfig3_out_data_out or i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig29_glfwchoosefbconfig2_out_dest_data_out_1_0)
    begin
        unique case (i_leastextradiff_0139_replace_phi_glfwchoosefbconfig4_s)
            1'b0 : i_leastextradiff_0139_replace_phi_glfwchoosefbconfig4_q = i_llvm_fpga_pop_i32_leastextradiff_0139_pop8_glfwchoosefbconfig3_out_data_out;
            1'b1 : i_leastextradiff_0139_replace_phi_glfwchoosefbconfig4_q = i_llvm_fpga_ffwd_dest_i32_unnamed_glfwchoosefbconfig29_glfwchoosefbconfig2_out_dest_data_out_1_0;
            default : i_leastextradiff_0139_replace_phi_glfwchoosefbconfig4_q = 32'b0;
        endcase
    end

    // i_sub166_glfwchoosefbconfig69(SUB,223)@132
    assign i_sub166_glfwchoosefbconfig69_a = {1'b0, in_c1_eni50_42_tpl};
    assign i_sub166_glfwchoosefbconfig69_b = {1'b0, in_c1_eni50_11_tpl};
    assign i_sub166_glfwchoosefbconfig69_o = $unsigned(i_sub166_glfwchoosefbconfig69_a) - $unsigned(i_sub166_glfwchoosefbconfig69_b);
    assign i_sub166_glfwchoosefbconfig69_q = i_sub166_glfwchoosefbconfig69_o[32:0];

    // bgTrunc_i_sub166_glfwchoosefbconfig69_sel_x(BITSELECT,281)@132
    assign bgTrunc_i_sub166_glfwchoosefbconfig69_sel_x_b = $unsigned(i_sub166_glfwchoosefbconfig69_q[31:0]);

    // i_mul170_glfwchoosefbconfig70_bs1_merged_bit_select(BITSELECT,552)@132
    assign i_mul170_glfwchoosefbconfig70_bs1_merged_bit_select_b = bgTrunc_i_sub166_glfwchoosefbconfig69_sel_x_b[31:18];
    assign i_mul170_glfwchoosefbconfig70_bs1_merged_bit_select_c = bgTrunc_i_sub166_glfwchoosefbconfig69_sel_x_b[17:0];

    // i_mul170_glfwchoosefbconfig70_ma3_cma(CHAINMULTADD,542)@132 + 3
    assign i_mul170_glfwchoosefbconfig70_ma3_cma_reset = ~ (resetn);
    assign i_mul170_glfwchoosefbconfig70_ma3_cma_ena0 = 1'b1;
    assign i_mul170_glfwchoosefbconfig70_ma3_cma_ena1 = i_mul170_glfwchoosefbconfig70_ma3_cma_ena0;
    assign i_mul170_glfwchoosefbconfig70_ma3_cma_ena2 = i_mul170_glfwchoosefbconfig70_ma3_cma_ena0;

    assign i_mul170_glfwchoosefbconfig70_ma3_cma_a0 = i_mul170_glfwchoosefbconfig70_bs1_merged_bit_select_b;
    assign i_mul170_glfwchoosefbconfig70_ma3_cma_c0 = i_mul170_glfwchoosefbconfig70_bs1_merged_bit_select_c;
    assign i_mul170_glfwchoosefbconfig70_ma3_cma_a1 = i_mul170_glfwchoosefbconfig70_bs1_merged_bit_select_b;
    assign i_mul170_glfwchoosefbconfig70_ma3_cma_c1 = i_mul170_glfwchoosefbconfig70_bs1_merged_bit_select_c;
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
    ) i_mul170_glfwchoosefbconfig70_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul170_glfwchoosefbconfig70_ma3_cma_ena2, i_mul170_glfwchoosefbconfig70_ma3_cma_ena1, i_mul170_glfwchoosefbconfig70_ma3_cma_ena0 }),
        .aclr({ i_mul170_glfwchoosefbconfig70_ma3_cma_reset, i_mul170_glfwchoosefbconfig70_ma3_cma_reset }),
        .ay(i_mul170_glfwchoosefbconfig70_ma3_cma_a1),
        .by(i_mul170_glfwchoosefbconfig70_ma3_cma_a0),
        .ax(i_mul170_glfwchoosefbconfig70_ma3_cma_c1),
        .bx(i_mul170_glfwchoosefbconfig70_ma3_cma_c0),
        .resulta(i_mul170_glfwchoosefbconfig70_ma3_cma_s0),
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
    i_mul170_glfwchoosefbconfig70_ma3_cma_delay ( .xin(i_mul170_glfwchoosefbconfig70_ma3_cma_s0), .xout(i_mul170_glfwchoosefbconfig70_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul170_glfwchoosefbconfig70_ma3_cma_q = $unsigned(i_mul170_glfwchoosefbconfig70_ma3_cma_qq[32:0]);

    // i_mul170_glfwchoosefbconfig70_sums_align_1(BITSHIFT,451)@135
    assign i_mul170_glfwchoosefbconfig70_sums_align_1_qint = { i_mul170_glfwchoosefbconfig70_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul170_glfwchoosefbconfig70_sums_align_1_q = i_mul170_glfwchoosefbconfig70_sums_align_1_qint[50:0];

    // i_mul170_glfwchoosefbconfig70_im0_cma(CHAINMULTADD,526)@132 + 3
    assign i_mul170_glfwchoosefbconfig70_im0_cma_reset = ~ (resetn);
    assign i_mul170_glfwchoosefbconfig70_im0_cma_ena0 = 1'b1;
    assign i_mul170_glfwchoosefbconfig70_im0_cma_ena1 = i_mul170_glfwchoosefbconfig70_im0_cma_ena0;
    assign i_mul170_glfwchoosefbconfig70_im0_cma_ena2 = i_mul170_glfwchoosefbconfig70_im0_cma_ena0;

    assign i_mul170_glfwchoosefbconfig70_im0_cma_a0 = i_mul170_glfwchoosefbconfig70_bs1_merged_bit_select_b;
    assign i_mul170_glfwchoosefbconfig70_im0_cma_c0 = i_mul170_glfwchoosefbconfig70_bs1_merged_bit_select_b;
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
    ) i_mul170_glfwchoosefbconfig70_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul170_glfwchoosefbconfig70_im0_cma_ena2, i_mul170_glfwchoosefbconfig70_im0_cma_ena1, i_mul170_glfwchoosefbconfig70_im0_cma_ena0 }),
        .aclr({ i_mul170_glfwchoosefbconfig70_im0_cma_reset, i_mul170_glfwchoosefbconfig70_im0_cma_reset }),
        .ay(i_mul170_glfwchoosefbconfig70_im0_cma_a0),
        .ax(i_mul170_glfwchoosefbconfig70_im0_cma_c0),
        .resulta(i_mul170_glfwchoosefbconfig70_im0_cma_s0),
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
    i_mul170_glfwchoosefbconfig70_im0_cma_delay ( .xin(i_mul170_glfwchoosefbconfig70_im0_cma_s0), .xout(i_mul170_glfwchoosefbconfig70_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul170_glfwchoosefbconfig70_im0_cma_q = $unsigned(i_mul170_glfwchoosefbconfig70_im0_cma_qq[27:0]);

    // i_mul170_glfwchoosefbconfig70_im8_cma(CHAINMULTADD,527)@132 + 3
    assign i_mul170_glfwchoosefbconfig70_im8_cma_reset = ~ (resetn);
    assign i_mul170_glfwchoosefbconfig70_im8_cma_ena0 = 1'b1;
    assign i_mul170_glfwchoosefbconfig70_im8_cma_ena1 = i_mul170_glfwchoosefbconfig70_im8_cma_ena0;
    assign i_mul170_glfwchoosefbconfig70_im8_cma_ena2 = i_mul170_glfwchoosefbconfig70_im8_cma_ena0;

    assign i_mul170_glfwchoosefbconfig70_im8_cma_a0 = i_mul170_glfwchoosefbconfig70_bs1_merged_bit_select_c;
    assign i_mul170_glfwchoosefbconfig70_im8_cma_c0 = i_mul170_glfwchoosefbconfig70_bs1_merged_bit_select_c;
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
    ) i_mul170_glfwchoosefbconfig70_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul170_glfwchoosefbconfig70_im8_cma_ena2, i_mul170_glfwchoosefbconfig70_im8_cma_ena1, i_mul170_glfwchoosefbconfig70_im8_cma_ena0 }),
        .aclr({ i_mul170_glfwchoosefbconfig70_im8_cma_reset, i_mul170_glfwchoosefbconfig70_im8_cma_reset }),
        .ay(i_mul170_glfwchoosefbconfig70_im8_cma_a0),
        .ax(i_mul170_glfwchoosefbconfig70_im8_cma_c0),
        .resulta(i_mul170_glfwchoosefbconfig70_im8_cma_s0),
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
    i_mul170_glfwchoosefbconfig70_im8_cma_delay ( .xin(i_mul170_glfwchoosefbconfig70_im8_cma_s0), .xout(i_mul170_glfwchoosefbconfig70_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul170_glfwchoosefbconfig70_im8_cma_q = $unsigned(i_mul170_glfwchoosefbconfig70_im8_cma_qq[35:0]);

    // i_mul170_glfwchoosefbconfig70_sums_join_0(BITJOIN,450)@135
    assign i_mul170_glfwchoosefbconfig70_sums_join_0_q = {i_mul170_glfwchoosefbconfig70_im0_cma_q, i_mul170_glfwchoosefbconfig70_im8_cma_q};

    // i_mul170_glfwchoosefbconfig70_sums_result_add_0_0(ADD,453)@135
    assign i_mul170_glfwchoosefbconfig70_sums_result_add_0_0_a = {1'b0, i_mul170_glfwchoosefbconfig70_sums_join_0_q};
    assign i_mul170_glfwchoosefbconfig70_sums_result_add_0_0_b = {14'b00000000000000, i_mul170_glfwchoosefbconfig70_sums_align_1_q};
    assign i_mul170_glfwchoosefbconfig70_sums_result_add_0_0_o = $unsigned(i_mul170_glfwchoosefbconfig70_sums_result_add_0_0_a) + $unsigned(i_mul170_glfwchoosefbconfig70_sums_result_add_0_0_b);
    assign i_mul170_glfwchoosefbconfig70_sums_result_add_0_0_q = i_mul170_glfwchoosefbconfig70_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul170_glfwchoosefbconfig70_sel_x(BITSELECT,261)@135
    assign bgTrunc_i_mul170_glfwchoosefbconfig70_sel_x_in = i_mul170_glfwchoosefbconfig70_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul170_glfwchoosefbconfig70_sel_x_b = bgTrunc_i_mul170_glfwchoosefbconfig70_sel_x_in[31:0];

    // i_mul170_glfwchoosefbconfig70_vt_select_30(BITSELECT,166)@135
    assign i_mul170_glfwchoosefbconfig70_vt_select_30_b = bgTrunc_i_mul170_glfwchoosefbconfig70_sel_x_b[30:0];

    // i_mul170_glfwchoosefbconfig70_vt_join(BITJOIN,165)@135
    assign i_mul170_glfwchoosefbconfig70_vt_join_q = {GND_q, i_mul170_glfwchoosefbconfig70_vt_select_30_b};

    // redist11_sync_together144_aunroll_x_in_c1_eni50_43_tpl_3(DELAY,569)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together144_aunroll_x_in_c1_eni50_43_tpl_3_delay_0 <= '0;
            redist11_sync_together144_aunroll_x_in_c1_eni50_43_tpl_3_delay_1 <= '0;
            redist11_sync_together144_aunroll_x_in_c1_eni50_43_tpl_3_q <= '0;
        end
        else
        begin
            redist11_sync_together144_aunroll_x_in_c1_eni50_43_tpl_3_delay_0 <= $unsigned(in_c1_eni50_43_tpl);
            redist11_sync_together144_aunroll_x_in_c1_eni50_43_tpl_3_delay_1 <= redist11_sync_together144_aunroll_x_in_c1_eni50_43_tpl_3_delay_0;
            redist11_sync_together144_aunroll_x_in_c1_eni50_43_tpl_3_q <= redist11_sync_together144_aunroll_x_in_c1_eni50_43_tpl_3_delay_1;
        end
    end

    // i_add171_glfwchoosefbconfig71(MUX,93)@135
    assign i_add171_glfwchoosefbconfig71_s = redist11_sync_together144_aunroll_x_in_c1_eni50_43_tpl_3_q;
    always @(i_add171_glfwchoosefbconfig71_s or c_i32_0133_q or i_mul170_glfwchoosefbconfig70_vt_join_q)
    begin
        unique case (i_add171_glfwchoosefbconfig71_s)
            1'b0 : i_add171_glfwchoosefbconfig71_q = c_i32_0133_q;
            1'b1 : i_add171_glfwchoosefbconfig71_q = i_mul170_glfwchoosefbconfig70_vt_join_q;
            default : i_add171_glfwchoosefbconfig71_q = 32'b0;
        endcase
    end

    // i_add171_glfwchoosefbconfig71_vt_select_30(BITSELECT,96)@135
    assign i_add171_glfwchoosefbconfig71_vt_select_30_b = i_add171_glfwchoosefbconfig71_q[30:0];

    // redist26_i_add171_glfwchoosefbconfig71_vt_select_30_b_1(DELAY,584)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_add171_glfwchoosefbconfig71_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist26_i_add171_glfwchoosefbconfig71_vt_select_30_b_1_q <= $unsigned(i_add171_glfwchoosefbconfig71_vt_select_30_b);
        end
    end

    // i_add171_glfwchoosefbconfig71_vt_join(BITJOIN,95)@136
    assign i_add171_glfwchoosefbconfig71_vt_join_q = {GND_q, redist26_i_add171_glfwchoosefbconfig71_vt_select_30_b_1_q};

    // i_sub154_glfwchoosefbconfig66(SUB,222)@132
    assign i_sub154_glfwchoosefbconfig66_a = {1'b0, in_c1_eni50_39_tpl};
    assign i_sub154_glfwchoosefbconfig66_b = {1'b0, in_c1_eni50_40_tpl};
    assign i_sub154_glfwchoosefbconfig66_o = $unsigned(i_sub154_glfwchoosefbconfig66_a) - $unsigned(i_sub154_glfwchoosefbconfig66_b);
    assign i_sub154_glfwchoosefbconfig66_q = i_sub154_glfwchoosefbconfig66_o[32:0];

    // bgTrunc_i_sub154_glfwchoosefbconfig66_sel_x(BITSELECT,280)@132
    assign bgTrunc_i_sub154_glfwchoosefbconfig66_sel_x_b = $unsigned(i_sub154_glfwchoosefbconfig66_q[31:0]);

    // i_mul158_glfwchoosefbconfig67_bs1_merged_bit_select(BITSELECT,551)@132
    assign i_mul158_glfwchoosefbconfig67_bs1_merged_bit_select_b = bgTrunc_i_sub154_glfwchoosefbconfig66_sel_x_b[31:18];
    assign i_mul158_glfwchoosefbconfig67_bs1_merged_bit_select_c = bgTrunc_i_sub154_glfwchoosefbconfig66_sel_x_b[17:0];

    // i_mul158_glfwchoosefbconfig67_ma3_cma(CHAINMULTADD,541)@132 + 3
    assign i_mul158_glfwchoosefbconfig67_ma3_cma_reset = ~ (resetn);
    assign i_mul158_glfwchoosefbconfig67_ma3_cma_ena0 = 1'b1;
    assign i_mul158_glfwchoosefbconfig67_ma3_cma_ena1 = i_mul158_glfwchoosefbconfig67_ma3_cma_ena0;
    assign i_mul158_glfwchoosefbconfig67_ma3_cma_ena2 = i_mul158_glfwchoosefbconfig67_ma3_cma_ena0;

    assign i_mul158_glfwchoosefbconfig67_ma3_cma_a0 = i_mul158_glfwchoosefbconfig67_bs1_merged_bit_select_b;
    assign i_mul158_glfwchoosefbconfig67_ma3_cma_c0 = i_mul158_glfwchoosefbconfig67_bs1_merged_bit_select_c;
    assign i_mul158_glfwchoosefbconfig67_ma3_cma_a1 = i_mul158_glfwchoosefbconfig67_bs1_merged_bit_select_b;
    assign i_mul158_glfwchoosefbconfig67_ma3_cma_c1 = i_mul158_glfwchoosefbconfig67_bs1_merged_bit_select_c;
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
    ) i_mul158_glfwchoosefbconfig67_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul158_glfwchoosefbconfig67_ma3_cma_ena2, i_mul158_glfwchoosefbconfig67_ma3_cma_ena1, i_mul158_glfwchoosefbconfig67_ma3_cma_ena0 }),
        .aclr({ i_mul158_glfwchoosefbconfig67_ma3_cma_reset, i_mul158_glfwchoosefbconfig67_ma3_cma_reset }),
        .ay(i_mul158_glfwchoosefbconfig67_ma3_cma_a1),
        .by(i_mul158_glfwchoosefbconfig67_ma3_cma_a0),
        .ax(i_mul158_glfwchoosefbconfig67_ma3_cma_c1),
        .bx(i_mul158_glfwchoosefbconfig67_ma3_cma_c0),
        .resulta(i_mul158_glfwchoosefbconfig67_ma3_cma_s0),
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
    i_mul158_glfwchoosefbconfig67_ma3_cma_delay ( .xin(i_mul158_glfwchoosefbconfig67_ma3_cma_s0), .xout(i_mul158_glfwchoosefbconfig67_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul158_glfwchoosefbconfig67_ma3_cma_q = $unsigned(i_mul158_glfwchoosefbconfig67_ma3_cma_qq[32:0]);

    // i_mul158_glfwchoosefbconfig67_sums_align_1(BITSHIFT,436)@135
    assign i_mul158_glfwchoosefbconfig67_sums_align_1_qint = { i_mul158_glfwchoosefbconfig67_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul158_glfwchoosefbconfig67_sums_align_1_q = i_mul158_glfwchoosefbconfig67_sums_align_1_qint[50:0];

    // i_mul158_glfwchoosefbconfig67_im0_cma(CHAINMULTADD,524)@132 + 3
    assign i_mul158_glfwchoosefbconfig67_im0_cma_reset = ~ (resetn);
    assign i_mul158_glfwchoosefbconfig67_im0_cma_ena0 = 1'b1;
    assign i_mul158_glfwchoosefbconfig67_im0_cma_ena1 = i_mul158_glfwchoosefbconfig67_im0_cma_ena0;
    assign i_mul158_glfwchoosefbconfig67_im0_cma_ena2 = i_mul158_glfwchoosefbconfig67_im0_cma_ena0;

    assign i_mul158_glfwchoosefbconfig67_im0_cma_a0 = i_mul158_glfwchoosefbconfig67_bs1_merged_bit_select_b;
    assign i_mul158_glfwchoosefbconfig67_im0_cma_c0 = i_mul158_glfwchoosefbconfig67_bs1_merged_bit_select_b;
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
    ) i_mul158_glfwchoosefbconfig67_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul158_glfwchoosefbconfig67_im0_cma_ena2, i_mul158_glfwchoosefbconfig67_im0_cma_ena1, i_mul158_glfwchoosefbconfig67_im0_cma_ena0 }),
        .aclr({ i_mul158_glfwchoosefbconfig67_im0_cma_reset, i_mul158_glfwchoosefbconfig67_im0_cma_reset }),
        .ay(i_mul158_glfwchoosefbconfig67_im0_cma_a0),
        .ax(i_mul158_glfwchoosefbconfig67_im0_cma_c0),
        .resulta(i_mul158_glfwchoosefbconfig67_im0_cma_s0),
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
    i_mul158_glfwchoosefbconfig67_im0_cma_delay ( .xin(i_mul158_glfwchoosefbconfig67_im0_cma_s0), .xout(i_mul158_glfwchoosefbconfig67_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul158_glfwchoosefbconfig67_im0_cma_q = $unsigned(i_mul158_glfwchoosefbconfig67_im0_cma_qq[27:0]);

    // i_mul158_glfwchoosefbconfig67_im8_cma(CHAINMULTADD,525)@132 + 3
    assign i_mul158_glfwchoosefbconfig67_im8_cma_reset = ~ (resetn);
    assign i_mul158_glfwchoosefbconfig67_im8_cma_ena0 = 1'b1;
    assign i_mul158_glfwchoosefbconfig67_im8_cma_ena1 = i_mul158_glfwchoosefbconfig67_im8_cma_ena0;
    assign i_mul158_glfwchoosefbconfig67_im8_cma_ena2 = i_mul158_glfwchoosefbconfig67_im8_cma_ena0;

    assign i_mul158_glfwchoosefbconfig67_im8_cma_a0 = i_mul158_glfwchoosefbconfig67_bs1_merged_bit_select_c;
    assign i_mul158_glfwchoosefbconfig67_im8_cma_c0 = i_mul158_glfwchoosefbconfig67_bs1_merged_bit_select_c;
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
    ) i_mul158_glfwchoosefbconfig67_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul158_glfwchoosefbconfig67_im8_cma_ena2, i_mul158_glfwchoosefbconfig67_im8_cma_ena1, i_mul158_glfwchoosefbconfig67_im8_cma_ena0 }),
        .aclr({ i_mul158_glfwchoosefbconfig67_im8_cma_reset, i_mul158_glfwchoosefbconfig67_im8_cma_reset }),
        .ay(i_mul158_glfwchoosefbconfig67_im8_cma_a0),
        .ax(i_mul158_glfwchoosefbconfig67_im8_cma_c0),
        .resulta(i_mul158_glfwchoosefbconfig67_im8_cma_s0),
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
    i_mul158_glfwchoosefbconfig67_im8_cma_delay ( .xin(i_mul158_glfwchoosefbconfig67_im8_cma_s0), .xout(i_mul158_glfwchoosefbconfig67_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul158_glfwchoosefbconfig67_im8_cma_q = $unsigned(i_mul158_glfwchoosefbconfig67_im8_cma_qq[35:0]);

    // i_mul158_glfwchoosefbconfig67_sums_join_0(BITJOIN,435)@135
    assign i_mul158_glfwchoosefbconfig67_sums_join_0_q = {i_mul158_glfwchoosefbconfig67_im0_cma_q, i_mul158_glfwchoosefbconfig67_im8_cma_q};

    // i_mul158_glfwchoosefbconfig67_sums_result_add_0_0(ADD,438)@135
    assign i_mul158_glfwchoosefbconfig67_sums_result_add_0_0_a = {1'b0, i_mul158_glfwchoosefbconfig67_sums_join_0_q};
    assign i_mul158_glfwchoosefbconfig67_sums_result_add_0_0_b = {14'b00000000000000, i_mul158_glfwchoosefbconfig67_sums_align_1_q};
    assign i_mul158_glfwchoosefbconfig67_sums_result_add_0_0_o = $unsigned(i_mul158_glfwchoosefbconfig67_sums_result_add_0_0_a) + $unsigned(i_mul158_glfwchoosefbconfig67_sums_result_add_0_0_b);
    assign i_mul158_glfwchoosefbconfig67_sums_result_add_0_0_q = i_mul158_glfwchoosefbconfig67_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul158_glfwchoosefbconfig67_sel_x(BITSELECT,260)@135
    assign bgTrunc_i_mul158_glfwchoosefbconfig67_sel_x_in = i_mul158_glfwchoosefbconfig67_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul158_glfwchoosefbconfig67_sel_x_b = bgTrunc_i_mul158_glfwchoosefbconfig67_sel_x_in[31:0];

    // i_mul158_glfwchoosefbconfig67_vt_select_30(BITSELECT,162)@135
    assign i_mul158_glfwchoosefbconfig67_vt_select_30_b = bgTrunc_i_mul158_glfwchoosefbconfig67_sel_x_b[30:0];

    // i_mul158_glfwchoosefbconfig67_vt_join(BITJOIN,161)@135
    assign i_mul158_glfwchoosefbconfig67_vt_join_q = {GND_q, i_mul158_glfwchoosefbconfig67_vt_select_30_b};

    // redist10_sync_together144_aunroll_x_in_c1_eni50_41_tpl_3(DELAY,568)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together144_aunroll_x_in_c1_eni50_41_tpl_3_delay_0 <= '0;
            redist10_sync_together144_aunroll_x_in_c1_eni50_41_tpl_3_delay_1 <= '0;
            redist10_sync_together144_aunroll_x_in_c1_eni50_41_tpl_3_q <= '0;
        end
        else
        begin
            redist10_sync_together144_aunroll_x_in_c1_eni50_41_tpl_3_delay_0 <= $unsigned(in_c1_eni50_41_tpl);
            redist10_sync_together144_aunroll_x_in_c1_eni50_41_tpl_3_delay_1 <= redist10_sync_together144_aunroll_x_in_c1_eni50_41_tpl_3_delay_0;
            redist10_sync_together144_aunroll_x_in_c1_eni50_41_tpl_3_q <= redist10_sync_together144_aunroll_x_in_c1_eni50_41_tpl_3_delay_1;
        end
    end

    // i_add159_glfwchoosefbconfig68(MUX,89)@135
    assign i_add159_glfwchoosefbconfig68_s = redist10_sync_together144_aunroll_x_in_c1_eni50_41_tpl_3_q;
    always @(i_add159_glfwchoosefbconfig68_s or c_i32_0133_q or i_mul158_glfwchoosefbconfig67_vt_join_q)
    begin
        unique case (i_add159_glfwchoosefbconfig68_s)
            1'b0 : i_add159_glfwchoosefbconfig68_q = c_i32_0133_q;
            1'b1 : i_add159_glfwchoosefbconfig68_q = i_mul158_glfwchoosefbconfig67_vt_join_q;
            default : i_add159_glfwchoosefbconfig68_q = 32'b0;
        endcase
    end

    // i_add159_glfwchoosefbconfig68_vt_select_30(BITSELECT,92)@135
    assign i_add159_glfwchoosefbconfig68_vt_select_30_b = i_add159_glfwchoosefbconfig68_q[30:0];

    // redist27_i_add159_glfwchoosefbconfig68_vt_select_30_b_1(DELAY,585)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_add159_glfwchoosefbconfig68_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist27_i_add159_glfwchoosefbconfig68_vt_select_30_b_1_q <= $unsigned(i_add159_glfwchoosefbconfig68_vt_select_30_b);
        end
    end

    // i_add159_glfwchoosefbconfig68_vt_join(BITJOIN,91)@136
    assign i_add159_glfwchoosefbconfig68_vt_join_q = {GND_q, redist27_i_add159_glfwchoosefbconfig68_vt_select_30_b_1_q};

    // i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79(ADD,192)@136
    assign i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_a = {1'b0, i_add159_glfwchoosefbconfig68_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_b = {1'b0, i_add171_glfwchoosefbconfig71_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_o = $unsigned(i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_a) + $unsigned(i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_b);
    assign i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_q = i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_sel_x(BITSELECT,268)@136
    assign bgTrunc_i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_sel_x_b = i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_q[31:0];

    // i_sub143_glfwchoosefbconfig63(SUB,221)@132
    assign i_sub143_glfwchoosefbconfig63_a = {1'b0, in_c1_eni50_36_tpl};
    assign i_sub143_glfwchoosefbconfig63_b = {1'b0, in_c1_eni50_37_tpl};
    assign i_sub143_glfwchoosefbconfig63_o = $unsigned(i_sub143_glfwchoosefbconfig63_a) - $unsigned(i_sub143_glfwchoosefbconfig63_b);
    assign i_sub143_glfwchoosefbconfig63_q = i_sub143_glfwchoosefbconfig63_o[32:0];

    // bgTrunc_i_sub143_glfwchoosefbconfig63_sel_x(BITSELECT,279)@132
    assign bgTrunc_i_sub143_glfwchoosefbconfig63_sel_x_b = $unsigned(i_sub143_glfwchoosefbconfig63_q[31:0]);

    // i_mul147_glfwchoosefbconfig64_bs1_merged_bit_select(BITSELECT,550)@132
    assign i_mul147_glfwchoosefbconfig64_bs1_merged_bit_select_b = bgTrunc_i_sub143_glfwchoosefbconfig63_sel_x_b[31:18];
    assign i_mul147_glfwchoosefbconfig64_bs1_merged_bit_select_c = bgTrunc_i_sub143_glfwchoosefbconfig63_sel_x_b[17:0];

    // i_mul147_glfwchoosefbconfig64_ma3_cma(CHAINMULTADD,540)@132 + 3
    assign i_mul147_glfwchoosefbconfig64_ma3_cma_reset = ~ (resetn);
    assign i_mul147_glfwchoosefbconfig64_ma3_cma_ena0 = 1'b1;
    assign i_mul147_glfwchoosefbconfig64_ma3_cma_ena1 = i_mul147_glfwchoosefbconfig64_ma3_cma_ena0;
    assign i_mul147_glfwchoosefbconfig64_ma3_cma_ena2 = i_mul147_glfwchoosefbconfig64_ma3_cma_ena0;

    assign i_mul147_glfwchoosefbconfig64_ma3_cma_a0 = i_mul147_glfwchoosefbconfig64_bs1_merged_bit_select_b;
    assign i_mul147_glfwchoosefbconfig64_ma3_cma_c0 = i_mul147_glfwchoosefbconfig64_bs1_merged_bit_select_c;
    assign i_mul147_glfwchoosefbconfig64_ma3_cma_a1 = i_mul147_glfwchoosefbconfig64_bs1_merged_bit_select_b;
    assign i_mul147_glfwchoosefbconfig64_ma3_cma_c1 = i_mul147_glfwchoosefbconfig64_bs1_merged_bit_select_c;
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
    ) i_mul147_glfwchoosefbconfig64_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul147_glfwchoosefbconfig64_ma3_cma_ena2, i_mul147_glfwchoosefbconfig64_ma3_cma_ena1, i_mul147_glfwchoosefbconfig64_ma3_cma_ena0 }),
        .aclr({ i_mul147_glfwchoosefbconfig64_ma3_cma_reset, i_mul147_glfwchoosefbconfig64_ma3_cma_reset }),
        .ay(i_mul147_glfwchoosefbconfig64_ma3_cma_a1),
        .by(i_mul147_glfwchoosefbconfig64_ma3_cma_a0),
        .ax(i_mul147_glfwchoosefbconfig64_ma3_cma_c1),
        .bx(i_mul147_glfwchoosefbconfig64_ma3_cma_c0),
        .resulta(i_mul147_glfwchoosefbconfig64_ma3_cma_s0),
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
    i_mul147_glfwchoosefbconfig64_ma3_cma_delay ( .xin(i_mul147_glfwchoosefbconfig64_ma3_cma_s0), .xout(i_mul147_glfwchoosefbconfig64_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul147_glfwchoosefbconfig64_ma3_cma_q = $unsigned(i_mul147_glfwchoosefbconfig64_ma3_cma_qq[32:0]);

    // i_mul147_glfwchoosefbconfig64_sums_align_1(BITSHIFT,421)@135
    assign i_mul147_glfwchoosefbconfig64_sums_align_1_qint = { i_mul147_glfwchoosefbconfig64_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul147_glfwchoosefbconfig64_sums_align_1_q = i_mul147_glfwchoosefbconfig64_sums_align_1_qint[50:0];

    // i_mul147_glfwchoosefbconfig64_im0_cma(CHAINMULTADD,522)@132 + 3
    assign i_mul147_glfwchoosefbconfig64_im0_cma_reset = ~ (resetn);
    assign i_mul147_glfwchoosefbconfig64_im0_cma_ena0 = 1'b1;
    assign i_mul147_glfwchoosefbconfig64_im0_cma_ena1 = i_mul147_glfwchoosefbconfig64_im0_cma_ena0;
    assign i_mul147_glfwchoosefbconfig64_im0_cma_ena2 = i_mul147_glfwchoosefbconfig64_im0_cma_ena0;

    assign i_mul147_glfwchoosefbconfig64_im0_cma_a0 = i_mul147_glfwchoosefbconfig64_bs1_merged_bit_select_b;
    assign i_mul147_glfwchoosefbconfig64_im0_cma_c0 = i_mul147_glfwchoosefbconfig64_bs1_merged_bit_select_b;
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
    ) i_mul147_glfwchoosefbconfig64_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul147_glfwchoosefbconfig64_im0_cma_ena2, i_mul147_glfwchoosefbconfig64_im0_cma_ena1, i_mul147_glfwchoosefbconfig64_im0_cma_ena0 }),
        .aclr({ i_mul147_glfwchoosefbconfig64_im0_cma_reset, i_mul147_glfwchoosefbconfig64_im0_cma_reset }),
        .ay(i_mul147_glfwchoosefbconfig64_im0_cma_a0),
        .ax(i_mul147_glfwchoosefbconfig64_im0_cma_c0),
        .resulta(i_mul147_glfwchoosefbconfig64_im0_cma_s0),
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
    i_mul147_glfwchoosefbconfig64_im0_cma_delay ( .xin(i_mul147_glfwchoosefbconfig64_im0_cma_s0), .xout(i_mul147_glfwchoosefbconfig64_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul147_glfwchoosefbconfig64_im0_cma_q = $unsigned(i_mul147_glfwchoosefbconfig64_im0_cma_qq[27:0]);

    // i_mul147_glfwchoosefbconfig64_im8_cma(CHAINMULTADD,523)@132 + 3
    assign i_mul147_glfwchoosefbconfig64_im8_cma_reset = ~ (resetn);
    assign i_mul147_glfwchoosefbconfig64_im8_cma_ena0 = 1'b1;
    assign i_mul147_glfwchoosefbconfig64_im8_cma_ena1 = i_mul147_glfwchoosefbconfig64_im8_cma_ena0;
    assign i_mul147_glfwchoosefbconfig64_im8_cma_ena2 = i_mul147_glfwchoosefbconfig64_im8_cma_ena0;

    assign i_mul147_glfwchoosefbconfig64_im8_cma_a0 = i_mul147_glfwchoosefbconfig64_bs1_merged_bit_select_c;
    assign i_mul147_glfwchoosefbconfig64_im8_cma_c0 = i_mul147_glfwchoosefbconfig64_bs1_merged_bit_select_c;
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
    ) i_mul147_glfwchoosefbconfig64_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul147_glfwchoosefbconfig64_im8_cma_ena2, i_mul147_glfwchoosefbconfig64_im8_cma_ena1, i_mul147_glfwchoosefbconfig64_im8_cma_ena0 }),
        .aclr({ i_mul147_glfwchoosefbconfig64_im8_cma_reset, i_mul147_glfwchoosefbconfig64_im8_cma_reset }),
        .ay(i_mul147_glfwchoosefbconfig64_im8_cma_a0),
        .ax(i_mul147_glfwchoosefbconfig64_im8_cma_c0),
        .resulta(i_mul147_glfwchoosefbconfig64_im8_cma_s0),
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
    i_mul147_glfwchoosefbconfig64_im8_cma_delay ( .xin(i_mul147_glfwchoosefbconfig64_im8_cma_s0), .xout(i_mul147_glfwchoosefbconfig64_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul147_glfwchoosefbconfig64_im8_cma_q = $unsigned(i_mul147_glfwchoosefbconfig64_im8_cma_qq[35:0]);

    // i_mul147_glfwchoosefbconfig64_sums_join_0(BITJOIN,420)@135
    assign i_mul147_glfwchoosefbconfig64_sums_join_0_q = {i_mul147_glfwchoosefbconfig64_im0_cma_q, i_mul147_glfwchoosefbconfig64_im8_cma_q};

    // i_mul147_glfwchoosefbconfig64_sums_result_add_0_0(ADD,423)@135
    assign i_mul147_glfwchoosefbconfig64_sums_result_add_0_0_a = {1'b0, i_mul147_glfwchoosefbconfig64_sums_join_0_q};
    assign i_mul147_glfwchoosefbconfig64_sums_result_add_0_0_b = {14'b00000000000000, i_mul147_glfwchoosefbconfig64_sums_align_1_q};
    assign i_mul147_glfwchoosefbconfig64_sums_result_add_0_0_o = $unsigned(i_mul147_glfwchoosefbconfig64_sums_result_add_0_0_a) + $unsigned(i_mul147_glfwchoosefbconfig64_sums_result_add_0_0_b);
    assign i_mul147_glfwchoosefbconfig64_sums_result_add_0_0_q = i_mul147_glfwchoosefbconfig64_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul147_glfwchoosefbconfig64_sel_x(BITSELECT,259)@135
    assign bgTrunc_i_mul147_glfwchoosefbconfig64_sel_x_in = i_mul147_glfwchoosefbconfig64_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul147_glfwchoosefbconfig64_sel_x_b = bgTrunc_i_mul147_glfwchoosefbconfig64_sel_x_in[31:0];

    // i_mul147_glfwchoosefbconfig64_vt_select_30(BITSELECT,158)@135
    assign i_mul147_glfwchoosefbconfig64_vt_select_30_b = bgTrunc_i_mul147_glfwchoosefbconfig64_sel_x_b[30:0];

    // i_mul147_glfwchoosefbconfig64_vt_join(BITJOIN,157)@135
    assign i_mul147_glfwchoosefbconfig64_vt_join_q = {GND_q, i_mul147_glfwchoosefbconfig64_vt_select_30_b};

    // redist9_sync_together144_aunroll_x_in_c1_eni50_38_tpl_3(DELAY,567)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together144_aunroll_x_in_c1_eni50_38_tpl_3_delay_0 <= '0;
            redist9_sync_together144_aunroll_x_in_c1_eni50_38_tpl_3_delay_1 <= '0;
            redist9_sync_together144_aunroll_x_in_c1_eni50_38_tpl_3_q <= '0;
        end
        else
        begin
            redist9_sync_together144_aunroll_x_in_c1_eni50_38_tpl_3_delay_0 <= $unsigned(in_c1_eni50_38_tpl);
            redist9_sync_together144_aunroll_x_in_c1_eni50_38_tpl_3_delay_1 <= redist9_sync_together144_aunroll_x_in_c1_eni50_38_tpl_3_delay_0;
            redist9_sync_together144_aunroll_x_in_c1_eni50_38_tpl_3_q <= redist9_sync_together144_aunroll_x_in_c1_eni50_38_tpl_3_delay_1;
        end
    end

    // i_add148_glfwchoosefbconfig65(MUX,85)@135
    assign i_add148_glfwchoosefbconfig65_s = redist9_sync_together144_aunroll_x_in_c1_eni50_38_tpl_3_q;
    always @(i_add148_glfwchoosefbconfig65_s or c_i32_0133_q or i_mul147_glfwchoosefbconfig64_vt_join_q)
    begin
        unique case (i_add148_glfwchoosefbconfig65_s)
            1'b0 : i_add148_glfwchoosefbconfig65_q = c_i32_0133_q;
            1'b1 : i_add148_glfwchoosefbconfig65_q = i_mul147_glfwchoosefbconfig64_vt_join_q;
            default : i_add148_glfwchoosefbconfig65_q = 32'b0;
        endcase
    end

    // i_add148_glfwchoosefbconfig65_vt_select_30(BITSELECT,88)@135
    assign i_add148_glfwchoosefbconfig65_vt_select_30_b = i_add148_glfwchoosefbconfig65_q[30:0];

    // redist28_i_add148_glfwchoosefbconfig65_vt_select_30_b_1(DELAY,586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_add148_glfwchoosefbconfig65_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist28_i_add148_glfwchoosefbconfig65_vt_select_30_b_1_q <= $unsigned(i_add148_glfwchoosefbconfig65_vt_select_30_b);
        end
    end

    // i_add148_glfwchoosefbconfig65_vt_join(BITJOIN,87)@136
    assign i_add148_glfwchoosefbconfig65_vt_join_q = {GND_q, redist28_i_add148_glfwchoosefbconfig65_vt_select_30_b_1_q};

    // i_sub132_glfwchoosefbconfig60(SUB,220)@132
    assign i_sub132_glfwchoosefbconfig60_a = {1'b0, in_c1_eni50_33_tpl};
    assign i_sub132_glfwchoosefbconfig60_b = {1'b0, in_c1_eni50_34_tpl};
    assign i_sub132_glfwchoosefbconfig60_o = $unsigned(i_sub132_glfwchoosefbconfig60_a) - $unsigned(i_sub132_glfwchoosefbconfig60_b);
    assign i_sub132_glfwchoosefbconfig60_q = i_sub132_glfwchoosefbconfig60_o[32:0];

    // bgTrunc_i_sub132_glfwchoosefbconfig60_sel_x(BITSELECT,278)@132
    assign bgTrunc_i_sub132_glfwchoosefbconfig60_sel_x_b = $unsigned(i_sub132_glfwchoosefbconfig60_q[31:0]);

    // i_mul136_glfwchoosefbconfig61_bs1_merged_bit_select(BITSELECT,549)@132
    assign i_mul136_glfwchoosefbconfig61_bs1_merged_bit_select_b = bgTrunc_i_sub132_glfwchoosefbconfig60_sel_x_b[31:18];
    assign i_mul136_glfwchoosefbconfig61_bs1_merged_bit_select_c = bgTrunc_i_sub132_glfwchoosefbconfig60_sel_x_b[17:0];

    // i_mul136_glfwchoosefbconfig61_ma3_cma(CHAINMULTADD,539)@132 + 3
    assign i_mul136_glfwchoosefbconfig61_ma3_cma_reset = ~ (resetn);
    assign i_mul136_glfwchoosefbconfig61_ma3_cma_ena0 = 1'b1;
    assign i_mul136_glfwchoosefbconfig61_ma3_cma_ena1 = i_mul136_glfwchoosefbconfig61_ma3_cma_ena0;
    assign i_mul136_glfwchoosefbconfig61_ma3_cma_ena2 = i_mul136_glfwchoosefbconfig61_ma3_cma_ena0;

    assign i_mul136_glfwchoosefbconfig61_ma3_cma_a0 = i_mul136_glfwchoosefbconfig61_bs1_merged_bit_select_b;
    assign i_mul136_glfwchoosefbconfig61_ma3_cma_c0 = i_mul136_glfwchoosefbconfig61_bs1_merged_bit_select_c;
    assign i_mul136_glfwchoosefbconfig61_ma3_cma_a1 = i_mul136_glfwchoosefbconfig61_bs1_merged_bit_select_b;
    assign i_mul136_glfwchoosefbconfig61_ma3_cma_c1 = i_mul136_glfwchoosefbconfig61_bs1_merged_bit_select_c;
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
    ) i_mul136_glfwchoosefbconfig61_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul136_glfwchoosefbconfig61_ma3_cma_ena2, i_mul136_glfwchoosefbconfig61_ma3_cma_ena1, i_mul136_glfwchoosefbconfig61_ma3_cma_ena0 }),
        .aclr({ i_mul136_glfwchoosefbconfig61_ma3_cma_reset, i_mul136_glfwchoosefbconfig61_ma3_cma_reset }),
        .ay(i_mul136_glfwchoosefbconfig61_ma3_cma_a1),
        .by(i_mul136_glfwchoosefbconfig61_ma3_cma_a0),
        .ax(i_mul136_glfwchoosefbconfig61_ma3_cma_c1),
        .bx(i_mul136_glfwchoosefbconfig61_ma3_cma_c0),
        .resulta(i_mul136_glfwchoosefbconfig61_ma3_cma_s0),
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
    i_mul136_glfwchoosefbconfig61_ma3_cma_delay ( .xin(i_mul136_glfwchoosefbconfig61_ma3_cma_s0), .xout(i_mul136_glfwchoosefbconfig61_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul136_glfwchoosefbconfig61_ma3_cma_q = $unsigned(i_mul136_glfwchoosefbconfig61_ma3_cma_qq[32:0]);

    // i_mul136_glfwchoosefbconfig61_sums_align_1(BITSHIFT,406)@135
    assign i_mul136_glfwchoosefbconfig61_sums_align_1_qint = { i_mul136_glfwchoosefbconfig61_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul136_glfwchoosefbconfig61_sums_align_1_q = i_mul136_glfwchoosefbconfig61_sums_align_1_qint[50:0];

    // i_mul136_glfwchoosefbconfig61_im0_cma(CHAINMULTADD,520)@132 + 3
    assign i_mul136_glfwchoosefbconfig61_im0_cma_reset = ~ (resetn);
    assign i_mul136_glfwchoosefbconfig61_im0_cma_ena0 = 1'b1;
    assign i_mul136_glfwchoosefbconfig61_im0_cma_ena1 = i_mul136_glfwchoosefbconfig61_im0_cma_ena0;
    assign i_mul136_glfwchoosefbconfig61_im0_cma_ena2 = i_mul136_glfwchoosefbconfig61_im0_cma_ena0;

    assign i_mul136_glfwchoosefbconfig61_im0_cma_a0 = i_mul136_glfwchoosefbconfig61_bs1_merged_bit_select_b;
    assign i_mul136_glfwchoosefbconfig61_im0_cma_c0 = i_mul136_glfwchoosefbconfig61_bs1_merged_bit_select_b;
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
    ) i_mul136_glfwchoosefbconfig61_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul136_glfwchoosefbconfig61_im0_cma_ena2, i_mul136_glfwchoosefbconfig61_im0_cma_ena1, i_mul136_glfwchoosefbconfig61_im0_cma_ena0 }),
        .aclr({ i_mul136_glfwchoosefbconfig61_im0_cma_reset, i_mul136_glfwchoosefbconfig61_im0_cma_reset }),
        .ay(i_mul136_glfwchoosefbconfig61_im0_cma_a0),
        .ax(i_mul136_glfwchoosefbconfig61_im0_cma_c0),
        .resulta(i_mul136_glfwchoosefbconfig61_im0_cma_s0),
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
    i_mul136_glfwchoosefbconfig61_im0_cma_delay ( .xin(i_mul136_glfwchoosefbconfig61_im0_cma_s0), .xout(i_mul136_glfwchoosefbconfig61_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul136_glfwchoosefbconfig61_im0_cma_q = $unsigned(i_mul136_glfwchoosefbconfig61_im0_cma_qq[27:0]);

    // i_mul136_glfwchoosefbconfig61_im8_cma(CHAINMULTADD,521)@132 + 3
    assign i_mul136_glfwchoosefbconfig61_im8_cma_reset = ~ (resetn);
    assign i_mul136_glfwchoosefbconfig61_im8_cma_ena0 = 1'b1;
    assign i_mul136_glfwchoosefbconfig61_im8_cma_ena1 = i_mul136_glfwchoosefbconfig61_im8_cma_ena0;
    assign i_mul136_glfwchoosefbconfig61_im8_cma_ena2 = i_mul136_glfwchoosefbconfig61_im8_cma_ena0;

    assign i_mul136_glfwchoosefbconfig61_im8_cma_a0 = i_mul136_glfwchoosefbconfig61_bs1_merged_bit_select_c;
    assign i_mul136_glfwchoosefbconfig61_im8_cma_c0 = i_mul136_glfwchoosefbconfig61_bs1_merged_bit_select_c;
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
    ) i_mul136_glfwchoosefbconfig61_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul136_glfwchoosefbconfig61_im8_cma_ena2, i_mul136_glfwchoosefbconfig61_im8_cma_ena1, i_mul136_glfwchoosefbconfig61_im8_cma_ena0 }),
        .aclr({ i_mul136_glfwchoosefbconfig61_im8_cma_reset, i_mul136_glfwchoosefbconfig61_im8_cma_reset }),
        .ay(i_mul136_glfwchoosefbconfig61_im8_cma_a0),
        .ax(i_mul136_glfwchoosefbconfig61_im8_cma_c0),
        .resulta(i_mul136_glfwchoosefbconfig61_im8_cma_s0),
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
    i_mul136_glfwchoosefbconfig61_im8_cma_delay ( .xin(i_mul136_glfwchoosefbconfig61_im8_cma_s0), .xout(i_mul136_glfwchoosefbconfig61_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul136_glfwchoosefbconfig61_im8_cma_q = $unsigned(i_mul136_glfwchoosefbconfig61_im8_cma_qq[35:0]);

    // i_mul136_glfwchoosefbconfig61_sums_join_0(BITJOIN,405)@135
    assign i_mul136_glfwchoosefbconfig61_sums_join_0_q = {i_mul136_glfwchoosefbconfig61_im0_cma_q, i_mul136_glfwchoosefbconfig61_im8_cma_q};

    // i_mul136_glfwchoosefbconfig61_sums_result_add_0_0(ADD,408)@135
    assign i_mul136_glfwchoosefbconfig61_sums_result_add_0_0_a = {1'b0, i_mul136_glfwchoosefbconfig61_sums_join_0_q};
    assign i_mul136_glfwchoosefbconfig61_sums_result_add_0_0_b = {14'b00000000000000, i_mul136_glfwchoosefbconfig61_sums_align_1_q};
    assign i_mul136_glfwchoosefbconfig61_sums_result_add_0_0_o = $unsigned(i_mul136_glfwchoosefbconfig61_sums_result_add_0_0_a) + $unsigned(i_mul136_glfwchoosefbconfig61_sums_result_add_0_0_b);
    assign i_mul136_glfwchoosefbconfig61_sums_result_add_0_0_q = i_mul136_glfwchoosefbconfig61_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul136_glfwchoosefbconfig61_sel_x(BITSELECT,258)@135
    assign bgTrunc_i_mul136_glfwchoosefbconfig61_sel_x_in = i_mul136_glfwchoosefbconfig61_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul136_glfwchoosefbconfig61_sel_x_b = bgTrunc_i_mul136_glfwchoosefbconfig61_sel_x_in[31:0];

    // i_mul136_glfwchoosefbconfig61_vt_select_30(BITSELECT,154)@135
    assign i_mul136_glfwchoosefbconfig61_vt_select_30_b = bgTrunc_i_mul136_glfwchoosefbconfig61_sel_x_b[30:0];

    // i_mul136_glfwchoosefbconfig61_vt_join(BITJOIN,153)@135
    assign i_mul136_glfwchoosefbconfig61_vt_join_q = {GND_q, i_mul136_glfwchoosefbconfig61_vt_select_30_b};

    // redist8_sync_together144_aunroll_x_in_c1_eni50_35_tpl_3(DELAY,566)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together144_aunroll_x_in_c1_eni50_35_tpl_3_delay_0 <= '0;
            redist8_sync_together144_aunroll_x_in_c1_eni50_35_tpl_3_delay_1 <= '0;
            redist8_sync_together144_aunroll_x_in_c1_eni50_35_tpl_3_q <= '0;
        end
        else
        begin
            redist8_sync_together144_aunroll_x_in_c1_eni50_35_tpl_3_delay_0 <= $unsigned(in_c1_eni50_35_tpl);
            redist8_sync_together144_aunroll_x_in_c1_eni50_35_tpl_3_delay_1 <= redist8_sync_together144_aunroll_x_in_c1_eni50_35_tpl_3_delay_0;
            redist8_sync_together144_aunroll_x_in_c1_eni50_35_tpl_3_q <= redist8_sync_together144_aunroll_x_in_c1_eni50_35_tpl_3_delay_1;
        end
    end

    // i_add137_glfwchoosefbconfig62(MUX,81)@135
    assign i_add137_glfwchoosefbconfig62_s = redist8_sync_together144_aunroll_x_in_c1_eni50_35_tpl_3_q;
    always @(i_add137_glfwchoosefbconfig62_s or c_i32_0133_q or i_mul136_glfwchoosefbconfig61_vt_join_q)
    begin
        unique case (i_add137_glfwchoosefbconfig62_s)
            1'b0 : i_add137_glfwchoosefbconfig62_q = c_i32_0133_q;
            1'b1 : i_add137_glfwchoosefbconfig62_q = i_mul136_glfwchoosefbconfig61_vt_join_q;
            default : i_add137_glfwchoosefbconfig62_q = 32'b0;
        endcase
    end

    // i_add137_glfwchoosefbconfig62_vt_select_30(BITSELECT,84)@135
    assign i_add137_glfwchoosefbconfig62_vt_select_30_b = i_add137_glfwchoosefbconfig62_q[30:0];

    // redist29_i_add137_glfwchoosefbconfig62_vt_select_30_b_1(DELAY,587)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_add137_glfwchoosefbconfig62_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist29_i_add137_glfwchoosefbconfig62_vt_select_30_b_1_q <= $unsigned(i_add137_glfwchoosefbconfig62_vt_select_30_b);
        end
    end

    // i_add137_glfwchoosefbconfig62_vt_join(BITJOIN,83)@136
    assign i_add137_glfwchoosefbconfig62_vt_join_q = {GND_q, redist29_i_add137_glfwchoosefbconfig62_vt_select_30_b_1_q};

    // i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78(ADD,191)@136
    assign i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_a = {1'b0, i_add137_glfwchoosefbconfig62_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_b = {1'b0, i_add148_glfwchoosefbconfig65_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_o = $unsigned(i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_a) + $unsigned(i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_b);
    assign i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_q = i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_sel_x(BITSELECT,267)@136
    assign bgTrunc_i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_sel_x_b = i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_q[31:0];

    // i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81(ADD,194)@136
    assign i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_a = {1'b0, bgTrunc_i_reduction_glfwchoosefbconfig_11_glfwchoosefbconfig78_sel_x_b};
    assign i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_b = {1'b0, bgTrunc_i_reduction_glfwchoosefbconfig_12_glfwchoosefbconfig79_sel_x_b};
    assign i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_o = $unsigned(i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_a) + $unsigned(i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_b);
    assign i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_q = i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_sel_x(BITSELECT,270)@136
    assign bgTrunc_i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_sel_x_b = i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_q[31:0];

    // redist18_bgTrunc_i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_sel_x_b_1(DELAY,576)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_bgTrunc_i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist18_bgTrunc_i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_sel_x_b_1_q <= $unsigned(bgTrunc_i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_sel_x_b);
        end
    end

    // i_sub121_glfwchoosefbconfig57(SUB,219)@132
    assign i_sub121_glfwchoosefbconfig57_a = {1'b0, in_c1_eni50_30_tpl};
    assign i_sub121_glfwchoosefbconfig57_b = {1'b0, in_c1_eni50_31_tpl};
    assign i_sub121_glfwchoosefbconfig57_o = $unsigned(i_sub121_glfwchoosefbconfig57_a) - $unsigned(i_sub121_glfwchoosefbconfig57_b);
    assign i_sub121_glfwchoosefbconfig57_q = i_sub121_glfwchoosefbconfig57_o[32:0];

    // bgTrunc_i_sub121_glfwchoosefbconfig57_sel_x(BITSELECT,277)@132
    assign bgTrunc_i_sub121_glfwchoosefbconfig57_sel_x_b = $unsigned(i_sub121_glfwchoosefbconfig57_q[31:0]);

    // i_mul125_glfwchoosefbconfig58_bs1_merged_bit_select(BITSELECT,548)@132
    assign i_mul125_glfwchoosefbconfig58_bs1_merged_bit_select_b = bgTrunc_i_sub121_glfwchoosefbconfig57_sel_x_b[31:18];
    assign i_mul125_glfwchoosefbconfig58_bs1_merged_bit_select_c = bgTrunc_i_sub121_glfwchoosefbconfig57_sel_x_b[17:0];

    // i_mul125_glfwchoosefbconfig58_ma3_cma(CHAINMULTADD,538)@132 + 3
    assign i_mul125_glfwchoosefbconfig58_ma3_cma_reset = ~ (resetn);
    assign i_mul125_glfwchoosefbconfig58_ma3_cma_ena0 = 1'b1;
    assign i_mul125_glfwchoosefbconfig58_ma3_cma_ena1 = i_mul125_glfwchoosefbconfig58_ma3_cma_ena0;
    assign i_mul125_glfwchoosefbconfig58_ma3_cma_ena2 = i_mul125_glfwchoosefbconfig58_ma3_cma_ena0;

    assign i_mul125_glfwchoosefbconfig58_ma3_cma_a0 = i_mul125_glfwchoosefbconfig58_bs1_merged_bit_select_b;
    assign i_mul125_glfwchoosefbconfig58_ma3_cma_c0 = i_mul125_glfwchoosefbconfig58_bs1_merged_bit_select_c;
    assign i_mul125_glfwchoosefbconfig58_ma3_cma_a1 = i_mul125_glfwchoosefbconfig58_bs1_merged_bit_select_b;
    assign i_mul125_glfwchoosefbconfig58_ma3_cma_c1 = i_mul125_glfwchoosefbconfig58_bs1_merged_bit_select_c;
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
    ) i_mul125_glfwchoosefbconfig58_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul125_glfwchoosefbconfig58_ma3_cma_ena2, i_mul125_glfwchoosefbconfig58_ma3_cma_ena1, i_mul125_glfwchoosefbconfig58_ma3_cma_ena0 }),
        .aclr({ i_mul125_glfwchoosefbconfig58_ma3_cma_reset, i_mul125_glfwchoosefbconfig58_ma3_cma_reset }),
        .ay(i_mul125_glfwchoosefbconfig58_ma3_cma_a1),
        .by(i_mul125_glfwchoosefbconfig58_ma3_cma_a0),
        .ax(i_mul125_glfwchoosefbconfig58_ma3_cma_c1),
        .bx(i_mul125_glfwchoosefbconfig58_ma3_cma_c0),
        .resulta(i_mul125_glfwchoosefbconfig58_ma3_cma_s0),
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
    i_mul125_glfwchoosefbconfig58_ma3_cma_delay ( .xin(i_mul125_glfwchoosefbconfig58_ma3_cma_s0), .xout(i_mul125_glfwchoosefbconfig58_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul125_glfwchoosefbconfig58_ma3_cma_q = $unsigned(i_mul125_glfwchoosefbconfig58_ma3_cma_qq[32:0]);

    // i_mul125_glfwchoosefbconfig58_sums_align_1(BITSHIFT,391)@135
    assign i_mul125_glfwchoosefbconfig58_sums_align_1_qint = { i_mul125_glfwchoosefbconfig58_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul125_glfwchoosefbconfig58_sums_align_1_q = i_mul125_glfwchoosefbconfig58_sums_align_1_qint[50:0];

    // i_mul125_glfwchoosefbconfig58_im0_cma(CHAINMULTADD,518)@132 + 3
    assign i_mul125_glfwchoosefbconfig58_im0_cma_reset = ~ (resetn);
    assign i_mul125_glfwchoosefbconfig58_im0_cma_ena0 = 1'b1;
    assign i_mul125_glfwchoosefbconfig58_im0_cma_ena1 = i_mul125_glfwchoosefbconfig58_im0_cma_ena0;
    assign i_mul125_glfwchoosefbconfig58_im0_cma_ena2 = i_mul125_glfwchoosefbconfig58_im0_cma_ena0;

    assign i_mul125_glfwchoosefbconfig58_im0_cma_a0 = i_mul125_glfwchoosefbconfig58_bs1_merged_bit_select_b;
    assign i_mul125_glfwchoosefbconfig58_im0_cma_c0 = i_mul125_glfwchoosefbconfig58_bs1_merged_bit_select_b;
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
    ) i_mul125_glfwchoosefbconfig58_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul125_glfwchoosefbconfig58_im0_cma_ena2, i_mul125_glfwchoosefbconfig58_im0_cma_ena1, i_mul125_glfwchoosefbconfig58_im0_cma_ena0 }),
        .aclr({ i_mul125_glfwchoosefbconfig58_im0_cma_reset, i_mul125_glfwchoosefbconfig58_im0_cma_reset }),
        .ay(i_mul125_glfwchoosefbconfig58_im0_cma_a0),
        .ax(i_mul125_glfwchoosefbconfig58_im0_cma_c0),
        .resulta(i_mul125_glfwchoosefbconfig58_im0_cma_s0),
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
    i_mul125_glfwchoosefbconfig58_im0_cma_delay ( .xin(i_mul125_glfwchoosefbconfig58_im0_cma_s0), .xout(i_mul125_glfwchoosefbconfig58_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul125_glfwchoosefbconfig58_im0_cma_q = $unsigned(i_mul125_glfwchoosefbconfig58_im0_cma_qq[27:0]);

    // i_mul125_glfwchoosefbconfig58_im8_cma(CHAINMULTADD,519)@132 + 3
    assign i_mul125_glfwchoosefbconfig58_im8_cma_reset = ~ (resetn);
    assign i_mul125_glfwchoosefbconfig58_im8_cma_ena0 = 1'b1;
    assign i_mul125_glfwchoosefbconfig58_im8_cma_ena1 = i_mul125_glfwchoosefbconfig58_im8_cma_ena0;
    assign i_mul125_glfwchoosefbconfig58_im8_cma_ena2 = i_mul125_glfwchoosefbconfig58_im8_cma_ena0;

    assign i_mul125_glfwchoosefbconfig58_im8_cma_a0 = i_mul125_glfwchoosefbconfig58_bs1_merged_bit_select_c;
    assign i_mul125_glfwchoosefbconfig58_im8_cma_c0 = i_mul125_glfwchoosefbconfig58_bs1_merged_bit_select_c;
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
    ) i_mul125_glfwchoosefbconfig58_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul125_glfwchoosefbconfig58_im8_cma_ena2, i_mul125_glfwchoosefbconfig58_im8_cma_ena1, i_mul125_glfwchoosefbconfig58_im8_cma_ena0 }),
        .aclr({ i_mul125_glfwchoosefbconfig58_im8_cma_reset, i_mul125_glfwchoosefbconfig58_im8_cma_reset }),
        .ay(i_mul125_glfwchoosefbconfig58_im8_cma_a0),
        .ax(i_mul125_glfwchoosefbconfig58_im8_cma_c0),
        .resulta(i_mul125_glfwchoosefbconfig58_im8_cma_s0),
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
    i_mul125_glfwchoosefbconfig58_im8_cma_delay ( .xin(i_mul125_glfwchoosefbconfig58_im8_cma_s0), .xout(i_mul125_glfwchoosefbconfig58_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul125_glfwchoosefbconfig58_im8_cma_q = $unsigned(i_mul125_glfwchoosefbconfig58_im8_cma_qq[35:0]);

    // i_mul125_glfwchoosefbconfig58_sums_join_0(BITJOIN,390)@135
    assign i_mul125_glfwchoosefbconfig58_sums_join_0_q = {i_mul125_glfwchoosefbconfig58_im0_cma_q, i_mul125_glfwchoosefbconfig58_im8_cma_q};

    // i_mul125_glfwchoosefbconfig58_sums_result_add_0_0(ADD,393)@135
    assign i_mul125_glfwchoosefbconfig58_sums_result_add_0_0_a = {1'b0, i_mul125_glfwchoosefbconfig58_sums_join_0_q};
    assign i_mul125_glfwchoosefbconfig58_sums_result_add_0_0_b = {14'b00000000000000, i_mul125_glfwchoosefbconfig58_sums_align_1_q};
    assign i_mul125_glfwchoosefbconfig58_sums_result_add_0_0_o = $unsigned(i_mul125_glfwchoosefbconfig58_sums_result_add_0_0_a) + $unsigned(i_mul125_glfwchoosefbconfig58_sums_result_add_0_0_b);
    assign i_mul125_glfwchoosefbconfig58_sums_result_add_0_0_q = i_mul125_glfwchoosefbconfig58_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul125_glfwchoosefbconfig58_sel_x(BITSELECT,257)@135
    assign bgTrunc_i_mul125_glfwchoosefbconfig58_sel_x_in = i_mul125_glfwchoosefbconfig58_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul125_glfwchoosefbconfig58_sel_x_b = bgTrunc_i_mul125_glfwchoosefbconfig58_sel_x_in[31:0];

    // i_mul125_glfwchoosefbconfig58_vt_select_30(BITSELECT,150)@135
    assign i_mul125_glfwchoosefbconfig58_vt_select_30_b = bgTrunc_i_mul125_glfwchoosefbconfig58_sel_x_b[30:0];

    // i_mul125_glfwchoosefbconfig58_vt_join(BITJOIN,149)@135
    assign i_mul125_glfwchoosefbconfig58_vt_join_q = {GND_q, i_mul125_glfwchoosefbconfig58_vt_select_30_b};

    // redist7_sync_together144_aunroll_x_in_c1_eni50_32_tpl_3(DELAY,565)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together144_aunroll_x_in_c1_eni50_32_tpl_3_delay_0 <= '0;
            redist7_sync_together144_aunroll_x_in_c1_eni50_32_tpl_3_delay_1 <= '0;
            redist7_sync_together144_aunroll_x_in_c1_eni50_32_tpl_3_q <= '0;
        end
        else
        begin
            redist7_sync_together144_aunroll_x_in_c1_eni50_32_tpl_3_delay_0 <= $unsigned(in_c1_eni50_32_tpl);
            redist7_sync_together144_aunroll_x_in_c1_eni50_32_tpl_3_delay_1 <= redist7_sync_together144_aunroll_x_in_c1_eni50_32_tpl_3_delay_0;
            redist7_sync_together144_aunroll_x_in_c1_eni50_32_tpl_3_q <= redist7_sync_together144_aunroll_x_in_c1_eni50_32_tpl_3_delay_1;
        end
    end

    // i_add126_glfwchoosefbconfig59(MUX,77)@135
    assign i_add126_glfwchoosefbconfig59_s = redist7_sync_together144_aunroll_x_in_c1_eni50_32_tpl_3_q;
    always @(i_add126_glfwchoosefbconfig59_s or c_i32_0133_q or i_mul125_glfwchoosefbconfig58_vt_join_q)
    begin
        unique case (i_add126_glfwchoosefbconfig59_s)
            1'b0 : i_add126_glfwchoosefbconfig59_q = c_i32_0133_q;
            1'b1 : i_add126_glfwchoosefbconfig59_q = i_mul125_glfwchoosefbconfig58_vt_join_q;
            default : i_add126_glfwchoosefbconfig59_q = 32'b0;
        endcase
    end

    // i_add126_glfwchoosefbconfig59_vt_select_30(BITSELECT,80)@135
    assign i_add126_glfwchoosefbconfig59_vt_select_30_b = i_add126_glfwchoosefbconfig59_q[30:0];

    // redist30_i_add126_glfwchoosefbconfig59_vt_select_30_b_1(DELAY,588)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_add126_glfwchoosefbconfig59_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist30_i_add126_glfwchoosefbconfig59_vt_select_30_b_1_q <= $unsigned(i_add126_glfwchoosefbconfig59_vt_select_30_b);
        end
    end

    // i_add126_glfwchoosefbconfig59_vt_join(BITJOIN,79)@136
    assign i_add126_glfwchoosefbconfig59_vt_join_q = {GND_q, redist30_i_add126_glfwchoosefbconfig59_vt_select_30_b_1_q};

    // i_sub110_glfwchoosefbconfig54(SUB,218)@132
    assign i_sub110_glfwchoosefbconfig54_a = {1'b0, in_c1_eni50_28_tpl};
    assign i_sub110_glfwchoosefbconfig54_b = {1'b0, in_c1_eni50_6_tpl};
    assign i_sub110_glfwchoosefbconfig54_o = $unsigned(i_sub110_glfwchoosefbconfig54_a) - $unsigned(i_sub110_glfwchoosefbconfig54_b);
    assign i_sub110_glfwchoosefbconfig54_q = i_sub110_glfwchoosefbconfig54_o[32:0];

    // bgTrunc_i_sub110_glfwchoosefbconfig54_sel_x(BITSELECT,276)@132
    assign bgTrunc_i_sub110_glfwchoosefbconfig54_sel_x_b = $unsigned(i_sub110_glfwchoosefbconfig54_q[31:0]);

    // i_mul114_glfwchoosefbconfig55_bs1_merged_bit_select(BITSELECT,547)@132
    assign i_mul114_glfwchoosefbconfig55_bs1_merged_bit_select_b = bgTrunc_i_sub110_glfwchoosefbconfig54_sel_x_b[31:18];
    assign i_mul114_glfwchoosefbconfig55_bs1_merged_bit_select_c = bgTrunc_i_sub110_glfwchoosefbconfig54_sel_x_b[17:0];

    // i_mul114_glfwchoosefbconfig55_ma3_cma(CHAINMULTADD,537)@132 + 3
    assign i_mul114_glfwchoosefbconfig55_ma3_cma_reset = ~ (resetn);
    assign i_mul114_glfwchoosefbconfig55_ma3_cma_ena0 = 1'b1;
    assign i_mul114_glfwchoosefbconfig55_ma3_cma_ena1 = i_mul114_glfwchoosefbconfig55_ma3_cma_ena0;
    assign i_mul114_glfwchoosefbconfig55_ma3_cma_ena2 = i_mul114_glfwchoosefbconfig55_ma3_cma_ena0;

    assign i_mul114_glfwchoosefbconfig55_ma3_cma_a0 = i_mul114_glfwchoosefbconfig55_bs1_merged_bit_select_b;
    assign i_mul114_glfwchoosefbconfig55_ma3_cma_c0 = i_mul114_glfwchoosefbconfig55_bs1_merged_bit_select_c;
    assign i_mul114_glfwchoosefbconfig55_ma3_cma_a1 = i_mul114_glfwchoosefbconfig55_bs1_merged_bit_select_b;
    assign i_mul114_glfwchoosefbconfig55_ma3_cma_c1 = i_mul114_glfwchoosefbconfig55_bs1_merged_bit_select_c;
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
    ) i_mul114_glfwchoosefbconfig55_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul114_glfwchoosefbconfig55_ma3_cma_ena2, i_mul114_glfwchoosefbconfig55_ma3_cma_ena1, i_mul114_glfwchoosefbconfig55_ma3_cma_ena0 }),
        .aclr({ i_mul114_glfwchoosefbconfig55_ma3_cma_reset, i_mul114_glfwchoosefbconfig55_ma3_cma_reset }),
        .ay(i_mul114_glfwchoosefbconfig55_ma3_cma_a1),
        .by(i_mul114_glfwchoosefbconfig55_ma3_cma_a0),
        .ax(i_mul114_glfwchoosefbconfig55_ma3_cma_c1),
        .bx(i_mul114_glfwchoosefbconfig55_ma3_cma_c0),
        .resulta(i_mul114_glfwchoosefbconfig55_ma3_cma_s0),
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
    i_mul114_glfwchoosefbconfig55_ma3_cma_delay ( .xin(i_mul114_glfwchoosefbconfig55_ma3_cma_s0), .xout(i_mul114_glfwchoosefbconfig55_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul114_glfwchoosefbconfig55_ma3_cma_q = $unsigned(i_mul114_glfwchoosefbconfig55_ma3_cma_qq[32:0]);

    // i_mul114_glfwchoosefbconfig55_sums_align_1(BITSHIFT,376)@135
    assign i_mul114_glfwchoosefbconfig55_sums_align_1_qint = { i_mul114_glfwchoosefbconfig55_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul114_glfwchoosefbconfig55_sums_align_1_q = i_mul114_glfwchoosefbconfig55_sums_align_1_qint[50:0];

    // i_mul114_glfwchoosefbconfig55_im0_cma(CHAINMULTADD,516)@132 + 3
    assign i_mul114_glfwchoosefbconfig55_im0_cma_reset = ~ (resetn);
    assign i_mul114_glfwchoosefbconfig55_im0_cma_ena0 = 1'b1;
    assign i_mul114_glfwchoosefbconfig55_im0_cma_ena1 = i_mul114_glfwchoosefbconfig55_im0_cma_ena0;
    assign i_mul114_glfwchoosefbconfig55_im0_cma_ena2 = i_mul114_glfwchoosefbconfig55_im0_cma_ena0;

    assign i_mul114_glfwchoosefbconfig55_im0_cma_a0 = i_mul114_glfwchoosefbconfig55_bs1_merged_bit_select_b;
    assign i_mul114_glfwchoosefbconfig55_im0_cma_c0 = i_mul114_glfwchoosefbconfig55_bs1_merged_bit_select_b;
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
    ) i_mul114_glfwchoosefbconfig55_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul114_glfwchoosefbconfig55_im0_cma_ena2, i_mul114_glfwchoosefbconfig55_im0_cma_ena1, i_mul114_glfwchoosefbconfig55_im0_cma_ena0 }),
        .aclr({ i_mul114_glfwchoosefbconfig55_im0_cma_reset, i_mul114_glfwchoosefbconfig55_im0_cma_reset }),
        .ay(i_mul114_glfwchoosefbconfig55_im0_cma_a0),
        .ax(i_mul114_glfwchoosefbconfig55_im0_cma_c0),
        .resulta(i_mul114_glfwchoosefbconfig55_im0_cma_s0),
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
    i_mul114_glfwchoosefbconfig55_im0_cma_delay ( .xin(i_mul114_glfwchoosefbconfig55_im0_cma_s0), .xout(i_mul114_glfwchoosefbconfig55_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul114_glfwchoosefbconfig55_im0_cma_q = $unsigned(i_mul114_glfwchoosefbconfig55_im0_cma_qq[27:0]);

    // i_mul114_glfwchoosefbconfig55_im8_cma(CHAINMULTADD,517)@132 + 3
    assign i_mul114_glfwchoosefbconfig55_im8_cma_reset = ~ (resetn);
    assign i_mul114_glfwchoosefbconfig55_im8_cma_ena0 = 1'b1;
    assign i_mul114_glfwchoosefbconfig55_im8_cma_ena1 = i_mul114_glfwchoosefbconfig55_im8_cma_ena0;
    assign i_mul114_glfwchoosefbconfig55_im8_cma_ena2 = i_mul114_glfwchoosefbconfig55_im8_cma_ena0;

    assign i_mul114_glfwchoosefbconfig55_im8_cma_a0 = i_mul114_glfwchoosefbconfig55_bs1_merged_bit_select_c;
    assign i_mul114_glfwchoosefbconfig55_im8_cma_c0 = i_mul114_glfwchoosefbconfig55_bs1_merged_bit_select_c;
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
    ) i_mul114_glfwchoosefbconfig55_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul114_glfwchoosefbconfig55_im8_cma_ena2, i_mul114_glfwchoosefbconfig55_im8_cma_ena1, i_mul114_glfwchoosefbconfig55_im8_cma_ena0 }),
        .aclr({ i_mul114_glfwchoosefbconfig55_im8_cma_reset, i_mul114_glfwchoosefbconfig55_im8_cma_reset }),
        .ay(i_mul114_glfwchoosefbconfig55_im8_cma_a0),
        .ax(i_mul114_glfwchoosefbconfig55_im8_cma_c0),
        .resulta(i_mul114_glfwchoosefbconfig55_im8_cma_s0),
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
    i_mul114_glfwchoosefbconfig55_im8_cma_delay ( .xin(i_mul114_glfwchoosefbconfig55_im8_cma_s0), .xout(i_mul114_glfwchoosefbconfig55_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul114_glfwchoosefbconfig55_im8_cma_q = $unsigned(i_mul114_glfwchoosefbconfig55_im8_cma_qq[35:0]);

    // i_mul114_glfwchoosefbconfig55_sums_join_0(BITJOIN,375)@135
    assign i_mul114_glfwchoosefbconfig55_sums_join_0_q = {i_mul114_glfwchoosefbconfig55_im0_cma_q, i_mul114_glfwchoosefbconfig55_im8_cma_q};

    // i_mul114_glfwchoosefbconfig55_sums_result_add_0_0(ADD,378)@135
    assign i_mul114_glfwchoosefbconfig55_sums_result_add_0_0_a = {1'b0, i_mul114_glfwchoosefbconfig55_sums_join_0_q};
    assign i_mul114_glfwchoosefbconfig55_sums_result_add_0_0_b = {14'b00000000000000, i_mul114_glfwchoosefbconfig55_sums_align_1_q};
    assign i_mul114_glfwchoosefbconfig55_sums_result_add_0_0_o = $unsigned(i_mul114_glfwchoosefbconfig55_sums_result_add_0_0_a) + $unsigned(i_mul114_glfwchoosefbconfig55_sums_result_add_0_0_b);
    assign i_mul114_glfwchoosefbconfig55_sums_result_add_0_0_q = i_mul114_glfwchoosefbconfig55_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul114_glfwchoosefbconfig55_sel_x(BITSELECT,256)@135
    assign bgTrunc_i_mul114_glfwchoosefbconfig55_sel_x_in = i_mul114_glfwchoosefbconfig55_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul114_glfwchoosefbconfig55_sel_x_b = bgTrunc_i_mul114_glfwchoosefbconfig55_sel_x_in[31:0];

    // i_mul114_glfwchoosefbconfig55_vt_select_30(BITSELECT,146)@135
    assign i_mul114_glfwchoosefbconfig55_vt_select_30_b = bgTrunc_i_mul114_glfwchoosefbconfig55_sel_x_b[30:0];

    // i_mul114_glfwchoosefbconfig55_vt_join(BITJOIN,145)@135
    assign i_mul114_glfwchoosefbconfig55_vt_join_q = {GND_q, i_mul114_glfwchoosefbconfig55_vt_select_30_b};

    // redist6_sync_together144_aunroll_x_in_c1_eni50_29_tpl_3(DELAY,564)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together144_aunroll_x_in_c1_eni50_29_tpl_3_delay_0 <= '0;
            redist6_sync_together144_aunroll_x_in_c1_eni50_29_tpl_3_delay_1 <= '0;
            redist6_sync_together144_aunroll_x_in_c1_eni50_29_tpl_3_q <= '0;
        end
        else
        begin
            redist6_sync_together144_aunroll_x_in_c1_eni50_29_tpl_3_delay_0 <= $unsigned(in_c1_eni50_29_tpl);
            redist6_sync_together144_aunroll_x_in_c1_eni50_29_tpl_3_delay_1 <= redist6_sync_together144_aunroll_x_in_c1_eni50_29_tpl_3_delay_0;
            redist6_sync_together144_aunroll_x_in_c1_eni50_29_tpl_3_q <= redist6_sync_together144_aunroll_x_in_c1_eni50_29_tpl_3_delay_1;
        end
    end

    // i_add115_glfwchoosefbconfig56(MUX,73)@135
    assign i_add115_glfwchoosefbconfig56_s = redist6_sync_together144_aunroll_x_in_c1_eni50_29_tpl_3_q;
    always @(i_add115_glfwchoosefbconfig56_s or c_i32_0133_q or i_mul114_glfwchoosefbconfig55_vt_join_q)
    begin
        unique case (i_add115_glfwchoosefbconfig56_s)
            1'b0 : i_add115_glfwchoosefbconfig56_q = c_i32_0133_q;
            1'b1 : i_add115_glfwchoosefbconfig56_q = i_mul114_glfwchoosefbconfig55_vt_join_q;
            default : i_add115_glfwchoosefbconfig56_q = 32'b0;
        endcase
    end

    // i_add115_glfwchoosefbconfig56_vt_select_30(BITSELECT,76)@135
    assign i_add115_glfwchoosefbconfig56_vt_select_30_b = i_add115_glfwchoosefbconfig56_q[30:0];

    // redist31_i_add115_glfwchoosefbconfig56_vt_select_30_b_1(DELAY,589)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_add115_glfwchoosefbconfig56_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist31_i_add115_glfwchoosefbconfig56_vt_select_30_b_1_q <= $unsigned(i_add115_glfwchoosefbconfig56_vt_select_30_b);
        end
    end

    // i_add115_glfwchoosefbconfig56_vt_join(BITJOIN,75)@136
    assign i_add115_glfwchoosefbconfig56_vt_join_q = {GND_q, redist31_i_add115_glfwchoosefbconfig56_vt_select_30_b_1_q};

    // i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77(ADD,190)@136
    assign i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_a = {1'b0, i_add115_glfwchoosefbconfig56_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_b = {1'b0, i_add126_glfwchoosefbconfig59_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_o = $unsigned(i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_a) + $unsigned(i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_b);
    assign i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_q = i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_sel_x(BITSELECT,266)@136
    assign bgTrunc_i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_sel_x_b = i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_q[31:0];

    // i_sub98_glfwchoosefbconfig51(SUB,228)@132
    assign i_sub98_glfwchoosefbconfig51_a = {1'b0, in_c1_eni50_26_tpl};
    assign i_sub98_glfwchoosefbconfig51_b = {1'b0, in_c1_eni50_4_tpl};
    assign i_sub98_glfwchoosefbconfig51_o = $unsigned(i_sub98_glfwchoosefbconfig51_a) - $unsigned(i_sub98_glfwchoosefbconfig51_b);
    assign i_sub98_glfwchoosefbconfig51_q = i_sub98_glfwchoosefbconfig51_o[32:0];

    // bgTrunc_i_sub98_glfwchoosefbconfig51_sel_x(BITSELECT,286)@132
    assign bgTrunc_i_sub98_glfwchoosefbconfig51_sel_x_b = $unsigned(i_sub98_glfwchoosefbconfig51_q[31:0]);

    // i_mul102_glfwchoosefbconfig52_bs1_merged_bit_select(BITSELECT,557)@132
    assign i_mul102_glfwchoosefbconfig52_bs1_merged_bit_select_b = bgTrunc_i_sub98_glfwchoosefbconfig51_sel_x_b[31:18];
    assign i_mul102_glfwchoosefbconfig52_bs1_merged_bit_select_c = bgTrunc_i_sub98_glfwchoosefbconfig51_sel_x_b[17:0];

    // i_mul102_glfwchoosefbconfig52_ma3_cma(CHAINMULTADD,536)@132 + 3
    assign i_mul102_glfwchoosefbconfig52_ma3_cma_reset = ~ (resetn);
    assign i_mul102_glfwchoosefbconfig52_ma3_cma_ena0 = 1'b1;
    assign i_mul102_glfwchoosefbconfig52_ma3_cma_ena1 = i_mul102_glfwchoosefbconfig52_ma3_cma_ena0;
    assign i_mul102_glfwchoosefbconfig52_ma3_cma_ena2 = i_mul102_glfwchoosefbconfig52_ma3_cma_ena0;

    assign i_mul102_glfwchoosefbconfig52_ma3_cma_a0 = i_mul102_glfwchoosefbconfig52_bs1_merged_bit_select_b;
    assign i_mul102_glfwchoosefbconfig52_ma3_cma_c0 = i_mul102_glfwchoosefbconfig52_bs1_merged_bit_select_c;
    assign i_mul102_glfwchoosefbconfig52_ma3_cma_a1 = i_mul102_glfwchoosefbconfig52_bs1_merged_bit_select_b;
    assign i_mul102_glfwchoosefbconfig52_ma3_cma_c1 = i_mul102_glfwchoosefbconfig52_bs1_merged_bit_select_c;
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
    ) i_mul102_glfwchoosefbconfig52_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul102_glfwchoosefbconfig52_ma3_cma_ena2, i_mul102_glfwchoosefbconfig52_ma3_cma_ena1, i_mul102_glfwchoosefbconfig52_ma3_cma_ena0 }),
        .aclr({ i_mul102_glfwchoosefbconfig52_ma3_cma_reset, i_mul102_glfwchoosefbconfig52_ma3_cma_reset }),
        .ay(i_mul102_glfwchoosefbconfig52_ma3_cma_a1),
        .by(i_mul102_glfwchoosefbconfig52_ma3_cma_a0),
        .ax(i_mul102_glfwchoosefbconfig52_ma3_cma_c1),
        .bx(i_mul102_glfwchoosefbconfig52_ma3_cma_c0),
        .resulta(i_mul102_glfwchoosefbconfig52_ma3_cma_s0),
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
    i_mul102_glfwchoosefbconfig52_ma3_cma_delay ( .xin(i_mul102_glfwchoosefbconfig52_ma3_cma_s0), .xout(i_mul102_glfwchoosefbconfig52_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul102_glfwchoosefbconfig52_ma3_cma_q = $unsigned(i_mul102_glfwchoosefbconfig52_ma3_cma_qq[32:0]);

    // i_mul102_glfwchoosefbconfig52_sums_align_1(BITSHIFT,361)@135
    assign i_mul102_glfwchoosefbconfig52_sums_align_1_qint = { i_mul102_glfwchoosefbconfig52_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul102_glfwchoosefbconfig52_sums_align_1_q = i_mul102_glfwchoosefbconfig52_sums_align_1_qint[50:0];

    // i_mul102_glfwchoosefbconfig52_im0_cma(CHAINMULTADD,514)@132 + 3
    assign i_mul102_glfwchoosefbconfig52_im0_cma_reset = ~ (resetn);
    assign i_mul102_glfwchoosefbconfig52_im0_cma_ena0 = 1'b1;
    assign i_mul102_glfwchoosefbconfig52_im0_cma_ena1 = i_mul102_glfwchoosefbconfig52_im0_cma_ena0;
    assign i_mul102_glfwchoosefbconfig52_im0_cma_ena2 = i_mul102_glfwchoosefbconfig52_im0_cma_ena0;

    assign i_mul102_glfwchoosefbconfig52_im0_cma_a0 = i_mul102_glfwchoosefbconfig52_bs1_merged_bit_select_b;
    assign i_mul102_glfwchoosefbconfig52_im0_cma_c0 = i_mul102_glfwchoosefbconfig52_bs1_merged_bit_select_b;
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
    ) i_mul102_glfwchoosefbconfig52_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul102_glfwchoosefbconfig52_im0_cma_ena2, i_mul102_glfwchoosefbconfig52_im0_cma_ena1, i_mul102_glfwchoosefbconfig52_im0_cma_ena0 }),
        .aclr({ i_mul102_glfwchoosefbconfig52_im0_cma_reset, i_mul102_glfwchoosefbconfig52_im0_cma_reset }),
        .ay(i_mul102_glfwchoosefbconfig52_im0_cma_a0),
        .ax(i_mul102_glfwchoosefbconfig52_im0_cma_c0),
        .resulta(i_mul102_glfwchoosefbconfig52_im0_cma_s0),
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
    i_mul102_glfwchoosefbconfig52_im0_cma_delay ( .xin(i_mul102_glfwchoosefbconfig52_im0_cma_s0), .xout(i_mul102_glfwchoosefbconfig52_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul102_glfwchoosefbconfig52_im0_cma_q = $unsigned(i_mul102_glfwchoosefbconfig52_im0_cma_qq[27:0]);

    // i_mul102_glfwchoosefbconfig52_im8_cma(CHAINMULTADD,515)@132 + 3
    assign i_mul102_glfwchoosefbconfig52_im8_cma_reset = ~ (resetn);
    assign i_mul102_glfwchoosefbconfig52_im8_cma_ena0 = 1'b1;
    assign i_mul102_glfwchoosefbconfig52_im8_cma_ena1 = i_mul102_glfwchoosefbconfig52_im8_cma_ena0;
    assign i_mul102_glfwchoosefbconfig52_im8_cma_ena2 = i_mul102_glfwchoosefbconfig52_im8_cma_ena0;

    assign i_mul102_glfwchoosefbconfig52_im8_cma_a0 = i_mul102_glfwchoosefbconfig52_bs1_merged_bit_select_c;
    assign i_mul102_glfwchoosefbconfig52_im8_cma_c0 = i_mul102_glfwchoosefbconfig52_bs1_merged_bit_select_c;
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
    ) i_mul102_glfwchoosefbconfig52_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul102_glfwchoosefbconfig52_im8_cma_ena2, i_mul102_glfwchoosefbconfig52_im8_cma_ena1, i_mul102_glfwchoosefbconfig52_im8_cma_ena0 }),
        .aclr({ i_mul102_glfwchoosefbconfig52_im8_cma_reset, i_mul102_glfwchoosefbconfig52_im8_cma_reset }),
        .ay(i_mul102_glfwchoosefbconfig52_im8_cma_a0),
        .ax(i_mul102_glfwchoosefbconfig52_im8_cma_c0),
        .resulta(i_mul102_glfwchoosefbconfig52_im8_cma_s0),
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
    i_mul102_glfwchoosefbconfig52_im8_cma_delay ( .xin(i_mul102_glfwchoosefbconfig52_im8_cma_s0), .xout(i_mul102_glfwchoosefbconfig52_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul102_glfwchoosefbconfig52_im8_cma_q = $unsigned(i_mul102_glfwchoosefbconfig52_im8_cma_qq[35:0]);

    // i_mul102_glfwchoosefbconfig52_sums_join_0(BITJOIN,360)@135
    assign i_mul102_glfwchoosefbconfig52_sums_join_0_q = {i_mul102_glfwchoosefbconfig52_im0_cma_q, i_mul102_glfwchoosefbconfig52_im8_cma_q};

    // i_mul102_glfwchoosefbconfig52_sums_result_add_0_0(ADD,363)@135
    assign i_mul102_glfwchoosefbconfig52_sums_result_add_0_0_a = {1'b0, i_mul102_glfwchoosefbconfig52_sums_join_0_q};
    assign i_mul102_glfwchoosefbconfig52_sums_result_add_0_0_b = {14'b00000000000000, i_mul102_glfwchoosefbconfig52_sums_align_1_q};
    assign i_mul102_glfwchoosefbconfig52_sums_result_add_0_0_o = $unsigned(i_mul102_glfwchoosefbconfig52_sums_result_add_0_0_a) + $unsigned(i_mul102_glfwchoosefbconfig52_sums_result_add_0_0_b);
    assign i_mul102_glfwchoosefbconfig52_sums_result_add_0_0_q = i_mul102_glfwchoosefbconfig52_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul102_glfwchoosefbconfig52_sel_x(BITSELECT,255)@135
    assign bgTrunc_i_mul102_glfwchoosefbconfig52_sel_x_in = i_mul102_glfwchoosefbconfig52_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul102_glfwchoosefbconfig52_sel_x_b = bgTrunc_i_mul102_glfwchoosefbconfig52_sel_x_in[31:0];

    // i_mul102_glfwchoosefbconfig52_vt_select_30(BITSELECT,142)@135
    assign i_mul102_glfwchoosefbconfig52_vt_select_30_b = bgTrunc_i_mul102_glfwchoosefbconfig52_sel_x_b[30:0];

    // i_mul102_glfwchoosefbconfig52_vt_join(BITJOIN,141)@135
    assign i_mul102_glfwchoosefbconfig52_vt_join_q = {GND_q, i_mul102_glfwchoosefbconfig52_vt_select_30_b};

    // redist5_sync_together144_aunroll_x_in_c1_eni50_27_tpl_3(DELAY,563)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together144_aunroll_x_in_c1_eni50_27_tpl_3_delay_0 <= '0;
            redist5_sync_together144_aunroll_x_in_c1_eni50_27_tpl_3_delay_1 <= '0;
            redist5_sync_together144_aunroll_x_in_c1_eni50_27_tpl_3_q <= '0;
        end
        else
        begin
            redist5_sync_together144_aunroll_x_in_c1_eni50_27_tpl_3_delay_0 <= $unsigned(in_c1_eni50_27_tpl);
            redist5_sync_together144_aunroll_x_in_c1_eni50_27_tpl_3_delay_1 <= redist5_sync_together144_aunroll_x_in_c1_eni50_27_tpl_3_delay_0;
            redist5_sync_together144_aunroll_x_in_c1_eni50_27_tpl_3_q <= redist5_sync_together144_aunroll_x_in_c1_eni50_27_tpl_3_delay_1;
        end
    end

    // i_add103_glfwchoosefbconfig53(MUX,69)@135
    assign i_add103_glfwchoosefbconfig53_s = redist5_sync_together144_aunroll_x_in_c1_eni50_27_tpl_3_q;
    always @(i_add103_glfwchoosefbconfig53_s or c_i32_0133_q or i_mul102_glfwchoosefbconfig52_vt_join_q)
    begin
        unique case (i_add103_glfwchoosefbconfig53_s)
            1'b0 : i_add103_glfwchoosefbconfig53_q = c_i32_0133_q;
            1'b1 : i_add103_glfwchoosefbconfig53_q = i_mul102_glfwchoosefbconfig52_vt_join_q;
            default : i_add103_glfwchoosefbconfig53_q = 32'b0;
        endcase
    end

    // i_add103_glfwchoosefbconfig53_vt_select_30(BITSELECT,72)@135
    assign i_add103_glfwchoosefbconfig53_vt_select_30_b = i_add103_glfwchoosefbconfig53_q[30:0];

    // redist32_i_add103_glfwchoosefbconfig53_vt_select_30_b_1(DELAY,590)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_add103_glfwchoosefbconfig53_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist32_i_add103_glfwchoosefbconfig53_vt_select_30_b_1_q <= $unsigned(i_add103_glfwchoosefbconfig53_vt_select_30_b);
        end
    end

    // i_add103_glfwchoosefbconfig53_vt_join(BITJOIN,71)@136
    assign i_add103_glfwchoosefbconfig53_vt_join_q = {GND_q, redist32_i_add103_glfwchoosefbconfig53_vt_select_30_b_1_q};

    // i_sub86_glfwchoosefbconfig48(SUB,227)@132
    assign i_sub86_glfwchoosefbconfig48_a = {1'b0, in_c1_eni50_24_tpl};
    assign i_sub86_glfwchoosefbconfig48_b = {1'b0, in_c1_eni50_2_tpl};
    assign i_sub86_glfwchoosefbconfig48_o = $unsigned(i_sub86_glfwchoosefbconfig48_a) - $unsigned(i_sub86_glfwchoosefbconfig48_b);
    assign i_sub86_glfwchoosefbconfig48_q = i_sub86_glfwchoosefbconfig48_o[32:0];

    // bgTrunc_i_sub86_glfwchoosefbconfig48_sel_x(BITSELECT,285)@132
    assign bgTrunc_i_sub86_glfwchoosefbconfig48_sel_x_b = $unsigned(i_sub86_glfwchoosefbconfig48_q[31:0]);

    // i_mul90_glfwchoosefbconfig49_bs1_merged_bit_select(BITSELECT,556)@132
    assign i_mul90_glfwchoosefbconfig49_bs1_merged_bit_select_b = bgTrunc_i_sub86_glfwchoosefbconfig48_sel_x_b[31:18];
    assign i_mul90_glfwchoosefbconfig49_bs1_merged_bit_select_c = bgTrunc_i_sub86_glfwchoosefbconfig48_sel_x_b[17:0];

    // i_mul90_glfwchoosefbconfig49_ma3_cma(CHAINMULTADD,545)@132 + 3
    assign i_mul90_glfwchoosefbconfig49_ma3_cma_reset = ~ (resetn);
    assign i_mul90_glfwchoosefbconfig49_ma3_cma_ena0 = 1'b1;
    assign i_mul90_glfwchoosefbconfig49_ma3_cma_ena1 = i_mul90_glfwchoosefbconfig49_ma3_cma_ena0;
    assign i_mul90_glfwchoosefbconfig49_ma3_cma_ena2 = i_mul90_glfwchoosefbconfig49_ma3_cma_ena0;

    assign i_mul90_glfwchoosefbconfig49_ma3_cma_a0 = i_mul90_glfwchoosefbconfig49_bs1_merged_bit_select_b;
    assign i_mul90_glfwchoosefbconfig49_ma3_cma_c0 = i_mul90_glfwchoosefbconfig49_bs1_merged_bit_select_c;
    assign i_mul90_glfwchoosefbconfig49_ma3_cma_a1 = i_mul90_glfwchoosefbconfig49_bs1_merged_bit_select_b;
    assign i_mul90_glfwchoosefbconfig49_ma3_cma_c1 = i_mul90_glfwchoosefbconfig49_bs1_merged_bit_select_c;
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
    ) i_mul90_glfwchoosefbconfig49_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul90_glfwchoosefbconfig49_ma3_cma_ena2, i_mul90_glfwchoosefbconfig49_ma3_cma_ena1, i_mul90_glfwchoosefbconfig49_ma3_cma_ena0 }),
        .aclr({ i_mul90_glfwchoosefbconfig49_ma3_cma_reset, i_mul90_glfwchoosefbconfig49_ma3_cma_reset }),
        .ay(i_mul90_glfwchoosefbconfig49_ma3_cma_a1),
        .by(i_mul90_glfwchoosefbconfig49_ma3_cma_a0),
        .ax(i_mul90_glfwchoosefbconfig49_ma3_cma_c1),
        .bx(i_mul90_glfwchoosefbconfig49_ma3_cma_c0),
        .resulta(i_mul90_glfwchoosefbconfig49_ma3_cma_s0),
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
    i_mul90_glfwchoosefbconfig49_ma3_cma_delay ( .xin(i_mul90_glfwchoosefbconfig49_ma3_cma_s0), .xout(i_mul90_glfwchoosefbconfig49_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul90_glfwchoosefbconfig49_ma3_cma_q = $unsigned(i_mul90_glfwchoosefbconfig49_ma3_cma_qq[32:0]);

    // i_mul90_glfwchoosefbconfig49_sums_align_1(BITSHIFT,496)@135
    assign i_mul90_glfwchoosefbconfig49_sums_align_1_qint = { i_mul90_glfwchoosefbconfig49_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul90_glfwchoosefbconfig49_sums_align_1_q = i_mul90_glfwchoosefbconfig49_sums_align_1_qint[50:0];

    // i_mul90_glfwchoosefbconfig49_im0_cma(CHAINMULTADD,532)@132 + 3
    assign i_mul90_glfwchoosefbconfig49_im0_cma_reset = ~ (resetn);
    assign i_mul90_glfwchoosefbconfig49_im0_cma_ena0 = 1'b1;
    assign i_mul90_glfwchoosefbconfig49_im0_cma_ena1 = i_mul90_glfwchoosefbconfig49_im0_cma_ena0;
    assign i_mul90_glfwchoosefbconfig49_im0_cma_ena2 = i_mul90_glfwchoosefbconfig49_im0_cma_ena0;

    assign i_mul90_glfwchoosefbconfig49_im0_cma_a0 = i_mul90_glfwchoosefbconfig49_bs1_merged_bit_select_b;
    assign i_mul90_glfwchoosefbconfig49_im0_cma_c0 = i_mul90_glfwchoosefbconfig49_bs1_merged_bit_select_b;
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
    ) i_mul90_glfwchoosefbconfig49_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul90_glfwchoosefbconfig49_im0_cma_ena2, i_mul90_glfwchoosefbconfig49_im0_cma_ena1, i_mul90_glfwchoosefbconfig49_im0_cma_ena0 }),
        .aclr({ i_mul90_glfwchoosefbconfig49_im0_cma_reset, i_mul90_glfwchoosefbconfig49_im0_cma_reset }),
        .ay(i_mul90_glfwchoosefbconfig49_im0_cma_a0),
        .ax(i_mul90_glfwchoosefbconfig49_im0_cma_c0),
        .resulta(i_mul90_glfwchoosefbconfig49_im0_cma_s0),
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
    i_mul90_glfwchoosefbconfig49_im0_cma_delay ( .xin(i_mul90_glfwchoosefbconfig49_im0_cma_s0), .xout(i_mul90_glfwchoosefbconfig49_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul90_glfwchoosefbconfig49_im0_cma_q = $unsigned(i_mul90_glfwchoosefbconfig49_im0_cma_qq[27:0]);

    // i_mul90_glfwchoosefbconfig49_im8_cma(CHAINMULTADD,533)@132 + 3
    assign i_mul90_glfwchoosefbconfig49_im8_cma_reset = ~ (resetn);
    assign i_mul90_glfwchoosefbconfig49_im8_cma_ena0 = 1'b1;
    assign i_mul90_glfwchoosefbconfig49_im8_cma_ena1 = i_mul90_glfwchoosefbconfig49_im8_cma_ena0;
    assign i_mul90_glfwchoosefbconfig49_im8_cma_ena2 = i_mul90_glfwchoosefbconfig49_im8_cma_ena0;

    assign i_mul90_glfwchoosefbconfig49_im8_cma_a0 = i_mul90_glfwchoosefbconfig49_bs1_merged_bit_select_c;
    assign i_mul90_glfwchoosefbconfig49_im8_cma_c0 = i_mul90_glfwchoosefbconfig49_bs1_merged_bit_select_c;
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
    ) i_mul90_glfwchoosefbconfig49_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul90_glfwchoosefbconfig49_im8_cma_ena2, i_mul90_glfwchoosefbconfig49_im8_cma_ena1, i_mul90_glfwchoosefbconfig49_im8_cma_ena0 }),
        .aclr({ i_mul90_glfwchoosefbconfig49_im8_cma_reset, i_mul90_glfwchoosefbconfig49_im8_cma_reset }),
        .ay(i_mul90_glfwchoosefbconfig49_im8_cma_a0),
        .ax(i_mul90_glfwchoosefbconfig49_im8_cma_c0),
        .resulta(i_mul90_glfwchoosefbconfig49_im8_cma_s0),
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
    i_mul90_glfwchoosefbconfig49_im8_cma_delay ( .xin(i_mul90_glfwchoosefbconfig49_im8_cma_s0), .xout(i_mul90_glfwchoosefbconfig49_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul90_glfwchoosefbconfig49_im8_cma_q = $unsigned(i_mul90_glfwchoosefbconfig49_im8_cma_qq[35:0]);

    // i_mul90_glfwchoosefbconfig49_sums_join_0(BITJOIN,495)@135
    assign i_mul90_glfwchoosefbconfig49_sums_join_0_q = {i_mul90_glfwchoosefbconfig49_im0_cma_q, i_mul90_glfwchoosefbconfig49_im8_cma_q};

    // i_mul90_glfwchoosefbconfig49_sums_result_add_0_0(ADD,498)@135
    assign i_mul90_glfwchoosefbconfig49_sums_result_add_0_0_a = {1'b0, i_mul90_glfwchoosefbconfig49_sums_join_0_q};
    assign i_mul90_glfwchoosefbconfig49_sums_result_add_0_0_b = {14'b00000000000000, i_mul90_glfwchoosefbconfig49_sums_align_1_q};
    assign i_mul90_glfwchoosefbconfig49_sums_result_add_0_0_o = $unsigned(i_mul90_glfwchoosefbconfig49_sums_result_add_0_0_a) + $unsigned(i_mul90_glfwchoosefbconfig49_sums_result_add_0_0_b);
    assign i_mul90_glfwchoosefbconfig49_sums_result_add_0_0_q = i_mul90_glfwchoosefbconfig49_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul90_glfwchoosefbconfig49_sel_x(BITSELECT,264)@135
    assign bgTrunc_i_mul90_glfwchoosefbconfig49_sel_x_in = i_mul90_glfwchoosefbconfig49_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul90_glfwchoosefbconfig49_sel_x_b = bgTrunc_i_mul90_glfwchoosefbconfig49_sel_x_in[31:0];

    // i_mul90_glfwchoosefbconfig49_vt_select_30(BITSELECT,178)@135
    assign i_mul90_glfwchoosefbconfig49_vt_select_30_b = bgTrunc_i_mul90_glfwchoosefbconfig49_sel_x_b[30:0];

    // i_mul90_glfwchoosefbconfig49_vt_join(BITJOIN,177)@135
    assign i_mul90_glfwchoosefbconfig49_vt_join_q = {GND_q, i_mul90_glfwchoosefbconfig49_vt_select_30_b};

    // redist4_sync_together144_aunroll_x_in_c1_eni50_25_tpl_3(DELAY,562)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together144_aunroll_x_in_c1_eni50_25_tpl_3_delay_0 <= '0;
            redist4_sync_together144_aunroll_x_in_c1_eni50_25_tpl_3_delay_1 <= '0;
            redist4_sync_together144_aunroll_x_in_c1_eni50_25_tpl_3_q <= '0;
        end
        else
        begin
            redist4_sync_together144_aunroll_x_in_c1_eni50_25_tpl_3_delay_0 <= $unsigned(in_c1_eni50_25_tpl);
            redist4_sync_together144_aunroll_x_in_c1_eni50_25_tpl_3_delay_1 <= redist4_sync_together144_aunroll_x_in_c1_eni50_25_tpl_3_delay_0;
            redist4_sync_together144_aunroll_x_in_c1_eni50_25_tpl_3_q <= redist4_sync_together144_aunroll_x_in_c1_eni50_25_tpl_3_delay_1;
        end
    end

    // i_acl_8_glfwchoosefbconfig50(MUX,65)@135
    assign i_acl_8_glfwchoosefbconfig50_s = redist4_sync_together144_aunroll_x_in_c1_eni50_25_tpl_3_q;
    always @(i_acl_8_glfwchoosefbconfig50_s or c_i32_0133_q or i_mul90_glfwchoosefbconfig49_vt_join_q)
    begin
        unique case (i_acl_8_glfwchoosefbconfig50_s)
            1'b0 : i_acl_8_glfwchoosefbconfig50_q = c_i32_0133_q;
            1'b1 : i_acl_8_glfwchoosefbconfig50_q = i_mul90_glfwchoosefbconfig49_vt_join_q;
            default : i_acl_8_glfwchoosefbconfig50_q = 32'b0;
        endcase
    end

    // i_acl_8_glfwchoosefbconfig50_vt_select_30(BITSELECT,68)@135
    assign i_acl_8_glfwchoosefbconfig50_vt_select_30_b = i_acl_8_glfwchoosefbconfig50_q[30:0];

    // redist33_i_acl_8_glfwchoosefbconfig50_vt_select_30_b_1(DELAY,591)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_acl_8_glfwchoosefbconfig50_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist33_i_acl_8_glfwchoosefbconfig50_vt_select_30_b_1_q <= $unsigned(i_acl_8_glfwchoosefbconfig50_vt_select_30_b);
        end
    end

    // i_acl_8_glfwchoosefbconfig50_vt_join(BITJOIN,67)@136
    assign i_acl_8_glfwchoosefbconfig50_vt_join_q = {GND_q, redist33_i_acl_8_glfwchoosefbconfig50_vt_select_30_b_1_q};

    // i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76(ADD,210)@136
    assign i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_a = {1'b0, i_acl_8_glfwchoosefbconfig50_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_b = {1'b0, i_add103_glfwchoosefbconfig53_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_o = $unsigned(i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_a) + $unsigned(i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_b);
    assign i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_q = i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_sel_x(BITSELECT,275)@136
    assign bgTrunc_i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_sel_x_b = i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_q[31:0];

    // i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80(ADD,193)@136
    assign i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_a = {1'b0, bgTrunc_i_reduction_glfwchoosefbconfig_9_glfwchoosefbconfig76_sel_x_b};
    assign i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_b = {1'b0, bgTrunc_i_reduction_glfwchoosefbconfig_10_glfwchoosefbconfig77_sel_x_b};
    assign i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_o = $unsigned(i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_a) + $unsigned(i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_b);
    assign i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_q = i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_sel_x(BITSELECT,269)@136
    assign bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_sel_x_b = i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_q[31:0];

    // redist19_bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_sel_x_b_1(DELAY,577)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist19_bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_sel_x_b_1_q <= $unsigned(bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_sel_x_b);
        end
    end

    // i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82(ADD,195)@137
    assign i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_a = {1'b0, redist19_bgTrunc_i_reduction_glfwchoosefbconfig_13_glfwchoosefbconfig80_sel_x_b_1_q};
    assign i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_b = {1'b0, redist18_bgTrunc_i_reduction_glfwchoosefbconfig_14_glfwchoosefbconfig81_sel_x_b_1_q};
    assign i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_o = $unsigned(i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_a) + $unsigned(i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_b);
    assign i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_q = i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_sel_x(BITSELECT,271)@137
    assign bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_sel_x_b = i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_q[31:0];

    // i_tobool175_glfwchoosefbconfig72(LOGICAL,230)@132
    assign i_tobool175_glfwchoosefbconfig72_q = $unsigned(in_c1_eni50_44_tpl == c_i32_0133_q ? 1'b1 : 1'b0);

    // i_narrow165_glfwchoosefbconfig74(LOGICAL,186)@132
    assign i_narrow165_glfwchoosefbconfig74_q = i_tobool175_glfwchoosefbconfig72_q & in_c1_eni50_45_tpl;

    // i_spec_select131_glfwchoosefbconfig75_sel_x(BITSELECT,295)@132
    assign i_spec_select131_glfwchoosefbconfig75_sel_x_b = {31'b0000000000000000000000000000000, i_narrow165_glfwchoosefbconfig74_q[0:0]};

    // i_spec_select131_glfwchoosefbconfig75_vt_select_0(BITSELECT,217)@132
    assign i_spec_select131_glfwchoosefbconfig75_vt_select_0_b = i_spec_select131_glfwchoosefbconfig75_sel_x_b[0:0];

    // redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5(DELAY,579)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_0 <= '0;
            redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_1 <= '0;
            redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_2 <= '0;
            redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_3 <= '0;
            redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_q <= '0;
        end
        else
        begin
            redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_0 <= $unsigned(i_spec_select131_glfwchoosefbconfig75_vt_select_0_b);
            redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_1 <= redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_0;
            redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_2 <= redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_1;
            redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_3 <= redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_2;
            redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_q <= redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_delay_3;
        end
    end

    // i_spec_select131_glfwchoosefbconfig75_vt_join(BITJOIN,216)@137
    assign i_spec_select131_glfwchoosefbconfig75_vt_join_q = {i_inc47_glfwchoosefbconfig30_vt_const_31_q, redist21_i_spec_select131_glfwchoosefbconfig75_vt_select_0_b_5_q};

    // i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83(ADD,196)@137
    assign i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_a = {1'b0, i_spec_select131_glfwchoosefbconfig75_vt_join_q};
    assign i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_b = {1'b0, bgTrunc_i_reduction_glfwchoosefbconfig_15_glfwchoosefbconfig82_sel_x_b};
    assign i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_o = $unsigned(i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_a) + $unsigned(i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_b);
    assign i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_q = i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_o[32:0];

    // bgTrunc_i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_sel_x(BITSELECT,272)@137
    assign bgTrunc_i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_sel_x_b = i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_q[31:0];

    // redist17_bgTrunc_i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_sel_x_b_1(DELAY,575)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_bgTrunc_i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_bgTrunc_i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_sel_x_b_1_q <= $unsigned(bgTrunc_i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_sel_x_b);
        end
    end

    // i_cmp186_glfwchoosefbconfig90(COMPARE,111)@138
    assign i_cmp186_glfwchoosefbconfig90_a = {2'b00, redist17_bgTrunc_i_reduction_glfwchoosefbconfig_16_glfwchoosefbconfig83_sel_x_b_1_q};
    assign i_cmp186_glfwchoosefbconfig90_b = {2'b00, i_leastextradiff_0139_replace_phi_glfwchoosefbconfig4_q};
    assign i_cmp186_glfwchoosefbconfig90_o = $unsigned(i_cmp186_glfwchoosefbconfig90_a) - $unsigned(i_cmp186_glfwchoosefbconfig90_b);
    assign i_cmp186_glfwchoosefbconfig90_c[0] = i_cmp186_glfwchoosefbconfig90_o[33];

    // i_cmp184_glfwchoosefbconfig88(LOGICAL,110)@138
    assign i_cmp184_glfwchoosefbconfig88_q = $unsigned(redist20_bgTrunc_i_acl_7_glfwchoosefbconfig47_sel_x_b_2_q == i_leastcolordiff_0138_replace_phi_glfwchoosefbconfig7_q ? 1'b1 : 1'b0);

    // i_or_cond_glfwchoosefbconfig91(LOGICAL,188)@138
    assign i_or_cond_glfwchoosefbconfig91_q = i_cmp184_glfwchoosefbconfig88_q & i_cmp186_glfwchoosefbconfig90_c;

    // i_reduction_glfwchoosefbconfig_20_glfwchoosefbconfig95(LOGICAL,201)@138
    assign i_reduction_glfwchoosefbconfig_20_glfwchoosefbconfig95_q = i_or_cond_glfwchoosefbconfig91_q ^ i_reduction_glfwchoosefbconfig_19_glfwchoosefbconfig94_q;

    // i_acl_20_glfwchoosefbconfig96(LOGICAL,53)@138
    assign i_acl_20_glfwchoosefbconfig96_q = i_cmp181_glfwchoosefbconfig85_q & i_reduction_glfwchoosefbconfig_20_glfwchoosefbconfig95_q;

    // i_unnamed_glfwchoosefbconfig97(LOGICAL,234)@138
    assign i_unnamed_glfwchoosefbconfig97_q = i_acl_20_glfwchoosefbconfig96_q | i_reduction_glfwchoosefbconfig_18_glfwchoosefbconfig93_q;

    // i_acl_22_glfwchoosefbconfig99(MUX,54)@138
    assign i_acl_22_glfwchoosefbconfig99_s = i_unnamed_glfwchoosefbconfig97_q;
    always @(i_acl_22_glfwchoosefbconfig99_s or redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_outputreg0_q or i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0140_pop7_glfwchoosefbconfig98_out_data_out)
    begin
        unique case (i_acl_22_glfwchoosefbconfig99_s)
            1'b0 : i_acl_22_glfwchoosefbconfig99_q = redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_outputreg0_q;
            1'b1 : i_acl_22_glfwchoosefbconfig99_q = i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0140_pop7_glfwchoosefbconfig98_out_data_out;
            default : i_acl_22_glfwchoosefbconfig99_q = 64'b0;
        endcase
    end

    // i_acl_23_glfwchoosefbconfig100(LOGICAL,55)@138
    assign i_acl_23_glfwchoosefbconfig100_q = i_cmp183_glfwchoosefbconfig87_c | i_or_cond_glfwchoosefbconfig91_q;

    // i_acl_24_glfwchoosefbconfig101(LOGICAL,56)@138
    assign i_acl_24_glfwchoosefbconfig101_q = i_cmp181_glfwchoosefbconfig85_q & i_acl_23_glfwchoosefbconfig100_q;

    // i_acl_26_glfwchoosefbconfig102(MUX,57)@138
    assign i_acl_26_glfwchoosefbconfig102_s = i_acl_24_glfwchoosefbconfig101_q;
    always @(i_acl_26_glfwchoosefbconfig102_s or i_acl_22_glfwchoosefbconfig99_q or redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_outputreg0_q)
    begin
        unique case (i_acl_26_glfwchoosefbconfig102_s)
            1'b0 : i_acl_26_glfwchoosefbconfig102_q = i_acl_22_glfwchoosefbconfig99_q;
            1'b1 : i_acl_26_glfwchoosefbconfig102_q = redist12_sync_together144_aunroll_x_in_c1_eni50_46_tpl_6_outputreg0_q;
            default : i_acl_26_glfwchoosefbconfig102_q = 64'b0;
        endcase
    end

    // valid_fanout_reg7(REG,305)@137 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist15_sync_together144_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg11(REG,309)@137 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist15_sync_together144_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_llvm_fpga_push_p1024s_struct_type_5_s_closest_0140_push7_glfwchoosefbconfig117(BLACKBOX,138)@138
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    glfwChooseFBConfig_i_llvm_fpga_push_p102A000000Z_glfwchoosefbconfig0 thei_llvm_fpga_push_p1024s_struct_type_5_s_closest_0140_push7_glfwchoosefbconfig117 (
        .in_c1_ene49(redist13_sync_together144_aunroll_x_in_c1_eni50_49_tpl_6_q),
        .in_data_in(i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig116_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0140_pop7_glfwchoosefbconfig98_out_feedback_stall_out_7),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_p1024s_struct_type_5_s_closest_0140_push7_glfwchoosefbconfig117_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_p1024s_struct_type_5_s_closest_0140_push7_glfwchoosefbconfig117_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // cpn_struct_TYPE_5gr(CONSTANT,52)
    assign cpn_struct_TYPE_5gr_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0140_pop7_glfwchoosefbconfig98(BLACKBOX,134)@138
    // out out_feedback_stall_out_7@20000000
    glfwChooseFBConfig_i_llvm_fpga_pop_p1024A000000Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0140_pop7_glfwchoosefbconfig98 (
        .in_data_in(cpn_struct_TYPE_5gr_q),
        .in_dir(redist0_sync_together144_aunroll_x_in_c1_eni50_1_tpl_6_q),
        .in_feedback_in_7(i_llvm_fpga_push_p1024s_struct_type_5_s_closest_0140_push7_glfwchoosefbconfig117_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_p1024s_struct_type_5_s_closest_0140_push7_glfwchoosefbconfig117_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0140_pop7_glfwchoosefbconfig98_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0140_pop7_glfwchoosefbconfig98_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_selcond_glfwchoosefbconfig_7_glfwchoosefbconfig115(LOGICAL,213)@138
    assign i_selcond_glfwchoosefbconfig_7_glfwchoosefbconfig115_q = redist22_i_selcond_glfwchoosefbconfig_0_glfwchoosefbconfig107_q_6_q & redist35_i_acl_28_demorgan_glfwchoosefbconfig105_q_6_q;

    // i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig116(MUX,203)@138
    assign i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig116_s = i_selcond_glfwchoosefbconfig_7_glfwchoosefbconfig115_q;
    always @(i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig116_s or i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0140_pop7_glfwchoosefbconfig98_out_data_out or i_acl_26_glfwchoosefbconfig102_q)
    begin
        unique case (i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig116_s)
            1'b0 : i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig116_q = i_llvm_fpga_pop_p1024s_struct_type_5_s_closest_0140_pop7_glfwchoosefbconfig98_out_data_out;
            1'b1 : i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig116_q = i_acl_26_glfwchoosefbconfig102_q;
            default : i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig116_q = 64'b0;
        endcase
    end

    // redist14_sync_together144_aunroll_x_in_c1_eni50_50_tpl_6(DELAY,572)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_sync_together144_aunroll_x_in_c1_eni50_50_tpl_6 ( .xin(in_c1_eni50_50_tpl), .xout(redist14_sync_together144_aunroll_x_in_c1_eni50_50_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_p1024s_struct_type_5_s_unnamed_glfwchoosefbconfig32_glfwchoosefbconfig118(BLACKBOX,127)@138
    // out out_intel_reserved_ffwd_21_0@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000021Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024s_struct_type_5_s_unnamed_glfwchoosefbconfig32_glfwchoosefbconfig118 (
        .in_predicate_in(redist14_sync_together144_aunroll_x_in_c1_eni50_50_tpl_6_q),
        .in_src_data_in_21_0(i_reduction_glfwchoosefbconfig_3_glfwchoosefbconfig116_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_intel_reserved_ffwd_21_0(i_llvm_fpga_ffwd_source_p1024s_struct_type_5_s_unnamed_glfwchoosefbconfig32_glfwchoosefbconfig118_out_intel_reserved_ffwd_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,246)
    assign out_intel_reserved_ffwd_21_0 = i_llvm_fpga_ffwd_source_p1024s_struct_type_5_s_unnamed_glfwchoosefbconfig32_glfwchoosefbconfig118_out_intel_reserved_ffwd_21_0;

    // valid_fanout_reg0(REG,298)@137 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist15_sync_together144_aunroll_x_in_i_valid_5_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,296)@138
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_glfwChooseFBConfig1 = GND_q;
    assign out_unnamed_glfwChooseFBConfig33_0_tpl = GND_q;

endmodule
