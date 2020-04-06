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

// SystemVerilog created from dijkstra_bb_B4_stall_region
// SystemVerilog created on Mon Apr  6 11:16:51 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_bb_B4_stall_region (
    input wire [31:0] in_intel_reserved_ffwd_54_0,
    input wire [31:0] in_intel_reserved_ffwd_55_0,
    input wire [31:0] in_intel_reserved_ffwd_56_0,
    input wire [31:0] in_intel_reserved_ffwd_57_0,
    input wire [31:0] in_intel_reserved_ffwd_58_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_60_0,
    input wire [31:0] in_intel_reserved_ffwd_61_0,
    input wire [31:0] in_intel_reserved_ffwd_62_0,
    input wire [31:0] in_intel_reserved_ffwd_63_0,
    input wire [31:0] in_intel_reserved_ffwd_64_0,
    input wire [31:0] in_intel_reserved_ffwd_65_0,
    input wire [31:0] in_intel_reserved_ffwd_66_0,
    input wire [31:0] in_intel_reserved_ffwd_67_0,
    input wire [31:0] in_intel_reserved_ffwd_68_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_22_0,
    input wire [31:0] in_intel_reserved_ffwd_23_0,
    input wire [31:0] in_intel_reserved_ffwd_24_0,
    input wire [31:0] in_intel_reserved_ffwd_25_0,
    input wire [31:0] in_intel_reserved_ffwd_26_0,
    input wire [31:0] in_intel_reserved_ffwd_27_0,
    input wire [31:0] in_intel_reserved_ffwd_28_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_50_0,
    input wire [31:0] in_intel_reserved_ffwd_51_0,
    input wire [31:0] in_intel_reserved_ffwd_52_0,
    input wire [31:0] in_intel_reserved_ffwd_53_0,
    output wire [31:0] out_intel_reserved_ffwd_29_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_count_034,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_intel_reserved_ffwd_30_0,
    output wire [31:0] out_inc50,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_31_0,
    output wire [31:0] out_intel_reserved_ffwd_32_0,
    output wire [31:0] out_intel_reserved_ffwd_33_0,
    output wire [31:0] out_intel_reserved_ffwd_34_0,
    output wire [31:0] out_intel_reserved_ffwd_35_0,
    output wire [31:0] out_intel_reserved_ffwd_36_0,
    output wire [31:0] out_intel_reserved_ffwd_37_0,
    output wire [31:0] out_intel_reserved_ffwd_38_0,
    output wire [31:0] out_intel_reserved_ffwd_39_0,
    output wire [31:0] out_intel_reserved_ffwd_40_0,
    output wire [31:0] out_intel_reserved_ffwd_41_0,
    output wire [31:0] out_intel_reserved_ffwd_42_0,
    output wire [31:0] out_intel_reserved_ffwd_43_0,
    output wire [31:0] out_intel_reserved_ffwd_44_0,
    output wire [31:0] out_intel_reserved_ffwd_45_0,
    output wire [31:0] out_intel_reserved_ffwd_46_0,
    output wire [0:0] out_intel_reserved_ffwd_48_0,
    output wire [31:0] out_intel_reserved_ffwd_47_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_47_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_47_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_47_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_47_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_47_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_47_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_47_0_7_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_179_q;
    wire [31:0] c_i32_880_q;
    wire [33:0] i_cmp6_dijkstra56_a;
    wire [33:0] i_cmp6_dijkstra56_b;
    logic [33:0] i_cmp6_dijkstra56_o;
    wire [0:0] i_cmp6_dijkstra56_c;
    wire [0:0] i_dist_sroa_0_3_replace_phi_dijkstra53_s;
    reg [31:0] i_dist_sroa_0_3_replace_phi_dijkstra53_q;
    wire [0:0] i_dist_sroa_14_3_replace_phi_dijkstra49_s;
    reg [31:0] i_dist_sroa_14_3_replace_phi_dijkstra49_q;
    wire [0:0] i_dist_sroa_20_3_replace_phi_dijkstra47_s;
    reg [31:0] i_dist_sroa_20_3_replace_phi_dijkstra47_q;
    wire [0:0] i_dist_sroa_26_3_replace_phi_dijkstra45_s;
    reg [31:0] i_dist_sroa_26_3_replace_phi_dijkstra45_q;
    wire [0:0] i_dist_sroa_32_3_replace_phi_dijkstra43_s;
    reg [31:0] i_dist_sroa_32_3_replace_phi_dijkstra43_q;
    wire [0:0] i_dist_sroa_38_3_replace_phi_dijkstra41_s;
    reg [31:0] i_dist_sroa_38_3_replace_phi_dijkstra41_q;
    wire [0:0] i_dist_sroa_44_3_replace_phi_dijkstra39_s;
    reg [31:0] i_dist_sroa_44_3_replace_phi_dijkstra39_q;
    wire [0:0] i_dist_sroa_50_3_replace_phi_dijkstra37_s;
    reg [31:0] i_dist_sroa_50_3_replace_phi_dijkstra37_q;
    wire [0:0] i_dist_sroa_8_3_replace_phi_dijkstra51_s;
    reg [31:0] i_dist_sroa_8_3_replace_phi_dijkstra51_q;
    wire [32:0] i_inc50_dijkstra55_a;
    wire [32:0] i_inc50_dijkstra55_b;
    logic [32:0] i_inc50_dijkstra55_o;
    wire [32:0] i_inc50_dijkstra55_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_out_dest_data_out_60_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_out_dest_data_out_61_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_out_dest_data_out_62_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_out_dest_data_out_63_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_out_dest_data_out_64_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_out_dest_data_out_65_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_out_dest_data_out_66_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_out_dest_data_out_67_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_out_dest_data_out_68_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_out_dest_data_out_7_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_out_dest_data_out_9_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_out_dest_data_out_10_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_out_dest_data_out_20_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_out_dest_data_out_22_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_out_dest_data_out_23_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_out_dest_data_out_24_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_out_dest_data_out_25_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_out_dest_data_out_26_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_out_dest_data_out_27_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_out_dest_data_out_28_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_out_dest_data_out_50_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_out_dest_data_out_52_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_out_dest_data_out_53_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_out_dest_data_out_54_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_out_dest_data_out_55_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_out_dest_data_out_56_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_out_dest_data_out_57_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_out_dest_data_out_58_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_out_dest_data_out_51_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_out_dest_data_out_21_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_dijkstra56_dijkstra76_out_intel_reserved_ffwd_48_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_dijkstra56_dijkstra76_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_dijkstra56_dijkstra76_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra37_dijkstra57_out_intel_reserved_ffwd_29_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra37_dijkstra57_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra37_dijkstra57_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra38_dijkstra58_out_intel_reserved_ffwd_30_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra38_dijkstra58_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra38_dijkstra58_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra39_dijkstra59_out_intel_reserved_ffwd_31_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra39_dijkstra59_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra39_dijkstra59_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra40_dijkstra60_out_intel_reserved_ffwd_32_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra40_dijkstra60_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra40_dijkstra60_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra41_dijkstra61_out_intel_reserved_ffwd_33_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra41_dijkstra61_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra41_dijkstra61_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra42_dijkstra62_out_intel_reserved_ffwd_34_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra42_dijkstra62_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra42_dijkstra62_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra43_dijkstra63_out_intel_reserved_ffwd_35_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra43_dijkstra63_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra43_dijkstra63_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra44_dijkstra64_out_intel_reserved_ffwd_36_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra44_dijkstra64_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra44_dijkstra64_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra45_dijkstra65_out_intel_reserved_ffwd_37_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra45_dijkstra65_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra45_dijkstra65_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra46_dijkstra66_out_intel_reserved_ffwd_38_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra46_dijkstra66_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra46_dijkstra66_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra47_dijkstra67_out_intel_reserved_ffwd_39_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra47_dijkstra67_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra47_dijkstra67_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra48_dijkstra68_out_intel_reserved_ffwd_40_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra48_dijkstra68_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra48_dijkstra68_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra49_dijkstra69_out_intel_reserved_ffwd_41_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra49_dijkstra69_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra49_dijkstra69_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra50_dijkstra70_out_intel_reserved_ffwd_42_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra50_dijkstra70_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra50_dijkstra70_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra51_dijkstra71_out_intel_reserved_ffwd_43_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra51_dijkstra71_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra51_dijkstra71_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra52_dijkstra72_out_intel_reserved_ffwd_44_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra52_dijkstra72_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra52_dijkstra72_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra53_dijkstra73_out_intel_reserved_ffwd_45_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra53_dijkstra73_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra53_dijkstra73_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra54_dijkstra74_out_intel_reserved_ffwd_46_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra54_dijkstra74_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra54_dijkstra74_out_valid_out;
    wire [0:0] i_sptset_sroa_0_2_replace_phi_dijkstra35_s;
    reg [31:0] i_sptset_sroa_0_2_replace_phi_dijkstra35_q;
    wire [0:0] i_sptset_sroa_10_2_replace_phi_dijkstra31_s;
    reg [31:0] i_sptset_sroa_10_2_replace_phi_dijkstra31_q;
    wire [0:0] i_sptset_sroa_14_2_replace_phi_dijkstra29_s;
    reg [31:0] i_sptset_sroa_14_2_replace_phi_dijkstra29_q;
    wire [0:0] i_sptset_sroa_18_2_replace_phi_dijkstra27_s;
    reg [31:0] i_sptset_sroa_18_2_replace_phi_dijkstra27_q;
    wire [0:0] i_sptset_sroa_22_2_replace_phi_dijkstra25_s;
    reg [31:0] i_sptset_sroa_22_2_replace_phi_dijkstra25_q;
    wire [0:0] i_sptset_sroa_26_2_replace_phi_dijkstra23_s;
    reg [31:0] i_sptset_sroa_26_2_replace_phi_dijkstra23_q;
    wire [0:0] i_sptset_sroa_30_2_replace_phi_dijkstra21_s;
    reg [31:0] i_sptset_sroa_30_2_replace_phi_dijkstra21_q;
    wire [0:0] i_sptset_sroa_34_2_replace_phi_dijkstra19_s;
    reg [31:0] i_sptset_sroa_34_2_replace_phi_dijkstra19_q;
    wire [0:0] i_sptset_sroa_6_2_replace_phi_dijkstra33_s;
    reg [31:0] i_sptset_sroa_6_2_replace_phi_dijkstra33_q;
    wire [31:0] bgTrunc_i_inc50_dijkstra55_sel_x_b;
    wire [0:0] dijkstra_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] dijkstra_B4_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] dijkstra_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] dijkstra_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_7_tpl;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_b;
    wire [32:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [32:0] bubble_join_dijkstra_B4_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_dijkstra_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg9;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg9;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed9;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg10;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg10;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed10;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg11;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg11;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed11;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg12;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg12;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed12;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg13;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg13;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed13;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg14;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg14;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed14;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg15;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg15;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed15;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg16;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg16;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed16;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg17;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg17;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed17;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg18;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg18;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed18;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg19;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg19;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed19;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg20;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg20;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed20;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg21;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg21;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed21;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg22;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg22;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed22;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg23;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg23;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed23;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg24;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg24;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed24;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg25;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg25;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed25;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg26;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg26;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed26;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg27;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg27;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed27;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg28;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg28;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed28;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg29;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg29;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed29;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg30;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg30;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed30;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg31;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg31;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed31;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg32;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg32;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed32;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg33;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg33;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed33;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg34;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg34;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed34;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg35;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg35;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed35;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg36;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg36;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed36;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg37;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg37;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed37;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg38;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg38;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed38;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg39;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg39;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed39;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg40;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg40;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed40;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg41;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg41;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed41;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg42;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg42;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed42;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg43;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg43;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed43;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg44;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg44;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed44;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg45;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg45;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed45;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg46;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg46;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed46;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg47;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg47;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed47;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg48;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg48;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed48;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg49;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg49;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed49;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg50;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg50;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed50;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg51;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg51;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed51;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg52;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg52;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed52;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg53;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg53;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed53;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg54;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg54;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed54;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg55;
    reg [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg55;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed55;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or8;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or9;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or10;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or11;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or12;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or13;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or14;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or15;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or16;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or17;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or18;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or19;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or20;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or21;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or22;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or23;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or24;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or25;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or26;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or27;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or28;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or29;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or30;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or31;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or32;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or33;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or34;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or35;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or36;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or37;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or38;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or39;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or40;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or41;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or42;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or43;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or44;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or45;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or46;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or47;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or48;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or49;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or50;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or51;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or52;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or53;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_or54;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V9;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V10;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V11;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V12;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V13;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V14;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V15;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V16;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V17;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V18;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V19;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V20;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V21;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V22;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V23;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V24;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V25;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V26;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V27;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V28;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V29;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V30;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V31;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V32;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V33;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V34;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V35;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V36;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V37;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V38;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V39;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V40;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V41;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V42;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V43;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V44;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V45;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V46;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V47;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V48;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V49;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V50;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V51;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V52;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V53;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V54;
    wire [0:0] SE_out_dijkstra_B4_merge_reg_aunroll_x_V55;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and0;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and1;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and2;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and3;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and4;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and5;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and6;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and7;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and8;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and9;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and10;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and11;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and12;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and13;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and14;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and15;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and16;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and17;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and18;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and19;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_V0;


    // c_i32_880(CONSTANT,5)
    assign c_i32_880_q = $unsigned(32'b00000000000000000000000000001000);

    // c_i32_179(CONSTANT,4)
    assign c_i32_179_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_dijkstra_B4_merge_reg_aunroll_x(BITJOIN,395)
    assign bubble_join_dijkstra_B4_merge_reg_aunroll_x_q = {dijkstra_B4_merge_reg_aunroll_x_out_data_out_1_tpl, dijkstra_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_dijkstra_B4_merge_reg_aunroll_x(BITSELECT,396)
    assign bubble_select_dijkstra_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_dijkstra_B4_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_dijkstra_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_dijkstra_B4_merge_reg_aunroll_x_q[32:32]);

    // i_inc50_dijkstra55(ADD,18)@1
    assign i_inc50_dijkstra55_a = {1'b0, bubble_select_dijkstra_B4_merge_reg_aunroll_x_b};
    assign i_inc50_dijkstra55_b = {1'b0, c_i32_179_q};
    assign i_inc50_dijkstra55_o = $unsigned(i_inc50_dijkstra55_a) + $unsigned(i_inc50_dijkstra55_b);
    assign i_inc50_dijkstra55_q = i_inc50_dijkstra55_o[32:0];

    // bgTrunc_i_inc50_dijkstra55_sel_x(BITSELECT,239)@1
    assign bgTrunc_i_inc50_dijkstra55_sel_x_b = i_inc50_dijkstra55_q[31:0];

    // i_cmp6_dijkstra56(COMPARE,8)@1
    assign i_cmp6_dijkstra56_a = {2'b00, bgTrunc_i_inc50_dijkstra55_sel_x_b};
    assign i_cmp6_dijkstra56_b = {2'b00, c_i32_880_q};
    assign i_cmp6_dijkstra56_o = $unsigned(i_cmp6_dijkstra56_a) - $unsigned(i_cmp6_dijkstra56_b);
    assign i_cmp6_dijkstra56_c[0] = i_cmp6_dijkstra56_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_dijkstra56_dijkstra76(BLACKBOX,55)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_48_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i1_unnamed_56_dijkstra0 thei_llvm_fpga_ffwd_source_i1_unnamed_dijkstra56_dijkstra76 (
        .in_predicate_in(GND_q),
        .in_src_data_in_48_0(i_cmp6_dijkstra56_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V55),
        .out_intel_reserved_ffwd_48_0(i_llvm_fpga_ffwd_source_i1_unnamed_dijkstra56_dijkstra76_out_intel_reserved_ffwd_48_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_dijkstra56_dijkstra76_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_dijkstra56_dijkstra76_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32(BITJOIN,366)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_q = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_out_dest_data_out_21_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32(BITSELECT,367)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16(BITJOIN,363)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_q = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_out_dest_data_out_51_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16(BITSELECT,364)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_q[31:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_sptset_sroa_6_2_replace_phi_dijkstra33(MUX,82)@1
    assign i_sptset_sroa_6_2_replace_phi_dijkstra33_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_sptset_sroa_6_2_replace_phi_dijkstra33_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_b)
    begin
        unique case (i_sptset_sroa_6_2_replace_phi_dijkstra33_s)
            1'b0 : i_sptset_sroa_6_2_replace_phi_dijkstra33_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_b;
            1'b1 : i_sptset_sroa_6_2_replace_phi_dijkstra33_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_b;
            default : i_sptset_sroa_6_2_replace_phi_dijkstra33_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra44_dijkstra64(BLACKBOX,63)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_36_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_44_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra44_dijkstra64 (
        .in_predicate_in(GND_q),
        .in_src_data_in_36_0(i_sptset_sroa_6_2_replace_phi_dijkstra33_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_V0),
        .out_intel_reserved_ffwd_36_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra44_dijkstra64_out_intel_reserved_ffwd_36_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra44_dijkstra64_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra44_dijkstra64_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32(STALLENABLE,514)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra44_dijkstra64_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_and0 = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_and1 = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V53 & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_and1;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20(BITJOIN,333)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_q = i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_out_dest_data_out_27_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20(BITSELECT,334)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10(BITJOIN,357)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_q = i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_out_dest_data_out_57_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10(BITSELECT,358)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_q[31:0]);

    // i_sptset_sroa_30_2_replace_phi_dijkstra21(MUX,80)@1
    assign i_sptset_sroa_30_2_replace_phi_dijkstra21_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_sptset_sroa_30_2_replace_phi_dijkstra21_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_b)
    begin
        unique case (i_sptset_sroa_30_2_replace_phi_dijkstra21_s)
            1'b0 : i_sptset_sroa_30_2_replace_phi_dijkstra21_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_b;
            1'b1 : i_sptset_sroa_30_2_replace_phi_dijkstra21_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_b;
            default : i_sptset_sroa_30_2_replace_phi_dijkstra21_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra38_dijkstra58(BLACKBOX,57)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_30_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_38_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra38_dijkstra58 (
        .in_predicate_in(GND_q),
        .in_src_data_in_30_0(i_sptset_sroa_30_2_replace_phi_dijkstra21_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_V0),
        .out_intel_reserved_ffwd_30_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra38_dijkstra58_out_intel_reserved_ffwd_30_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra38_dijkstra58_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra38_dijkstra58_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10(STALLENABLE,508)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra38_dijkstra58_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_and1 = i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V51 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_and1;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22(BITJOIN,330)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_q = i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_out_dest_data_out_26_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22(BITSELECT,331)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11(BITJOIN,354)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_q = i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_out_dest_data_out_56_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11(BITSELECT,355)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_q[31:0]);

    // i_sptset_sroa_26_2_replace_phi_dijkstra23(MUX,79)@1
    assign i_sptset_sroa_26_2_replace_phi_dijkstra23_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_sptset_sroa_26_2_replace_phi_dijkstra23_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_b)
    begin
        unique case (i_sptset_sroa_26_2_replace_phi_dijkstra23_s)
            1'b0 : i_sptset_sroa_26_2_replace_phi_dijkstra23_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_b;
            1'b1 : i_sptset_sroa_26_2_replace_phi_dijkstra23_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_b;
            default : i_sptset_sroa_26_2_replace_phi_dijkstra23_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra39_dijkstra59(BLACKBOX,58)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_31_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_39_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra39_dijkstra59 (
        .in_predicate_in(GND_q),
        .in_src_data_in_31_0(i_sptset_sroa_26_2_replace_phi_dijkstra23_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_V0),
        .out_intel_reserved_ffwd_31_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra39_dijkstra59_out_intel_reserved_ffwd_31_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra39_dijkstra59_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra39_dijkstra59_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11(STALLENABLE,506)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra39_dijkstra59_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_and1 = i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V50 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_and1;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24(BITJOIN,327)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_q = i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_out_dest_data_out_25_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24(BITSELECT,328)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12(BITJOIN,351)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_q = i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_out_dest_data_out_55_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12(BITSELECT,352)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_q[31:0]);

    // i_sptset_sroa_22_2_replace_phi_dijkstra25(MUX,78)@1
    assign i_sptset_sroa_22_2_replace_phi_dijkstra25_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_sptset_sroa_22_2_replace_phi_dijkstra25_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_b)
    begin
        unique case (i_sptset_sroa_22_2_replace_phi_dijkstra25_s)
            1'b0 : i_sptset_sroa_22_2_replace_phi_dijkstra25_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_b;
            1'b1 : i_sptset_sroa_22_2_replace_phi_dijkstra25_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_b;
            default : i_sptset_sroa_22_2_replace_phi_dijkstra25_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra40_dijkstra60(BLACKBOX,59)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_32_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_40_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra40_dijkstra60 (
        .in_predicate_in(GND_q),
        .in_src_data_in_32_0(i_sptset_sroa_22_2_replace_phi_dijkstra25_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_V0),
        .out_intel_reserved_ffwd_32_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra40_dijkstra60_out_intel_reserved_ffwd_32_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra40_dijkstra60_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra40_dijkstra60_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12(STALLENABLE,504)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra40_dijkstra60_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_and1 = i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V49 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_and1;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26(BITJOIN,324)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_q = i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_out_dest_data_out_24_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26(BITSELECT,325)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13(BITJOIN,348)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_q = i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_out_dest_data_out_54_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13(BITSELECT,349)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_q[31:0]);

    // i_sptset_sroa_18_2_replace_phi_dijkstra27(MUX,77)@1
    assign i_sptset_sroa_18_2_replace_phi_dijkstra27_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_sptset_sroa_18_2_replace_phi_dijkstra27_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_b)
    begin
        unique case (i_sptset_sroa_18_2_replace_phi_dijkstra27_s)
            1'b0 : i_sptset_sroa_18_2_replace_phi_dijkstra27_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_b;
            1'b1 : i_sptset_sroa_18_2_replace_phi_dijkstra27_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_b;
            default : i_sptset_sroa_18_2_replace_phi_dijkstra27_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra41_dijkstra61(BLACKBOX,60)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_33_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_41_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra41_dijkstra61 (
        .in_predicate_in(GND_q),
        .in_src_data_in_33_0(i_sptset_sroa_18_2_replace_phi_dijkstra27_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_V0),
        .out_intel_reserved_ffwd_33_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra41_dijkstra61_out_intel_reserved_ffwd_33_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra41_dijkstra61_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra41_dijkstra61_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13(STALLENABLE,502)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra41_dijkstra61_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_and1 = i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V48 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_and1;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28(BITJOIN,321)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_q = i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_out_dest_data_out_23_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28(BITSELECT,322)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14(BITJOIN,345)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_q = i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_out_dest_data_out_53_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14(BITSELECT,346)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_q[31:0]);

    // i_sptset_sroa_14_2_replace_phi_dijkstra29(MUX,76)@1
    assign i_sptset_sroa_14_2_replace_phi_dijkstra29_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_sptset_sroa_14_2_replace_phi_dijkstra29_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_b)
    begin
        unique case (i_sptset_sroa_14_2_replace_phi_dijkstra29_s)
            1'b0 : i_sptset_sroa_14_2_replace_phi_dijkstra29_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_b;
            1'b1 : i_sptset_sroa_14_2_replace_phi_dijkstra29_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_b;
            default : i_sptset_sroa_14_2_replace_phi_dijkstra29_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra42_dijkstra62(BLACKBOX,61)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_34_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_42_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra42_dijkstra62 (
        .in_predicate_in(GND_q),
        .in_src_data_in_34_0(i_sptset_sroa_14_2_replace_phi_dijkstra29_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_V0),
        .out_intel_reserved_ffwd_34_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra42_dijkstra62_out_intel_reserved_ffwd_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra42_dijkstra62_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra42_dijkstra62_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14(STALLENABLE,500)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra42_dijkstra62_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_and1 = i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V47 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_and1;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30(BITJOIN,318)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_q = i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_out_dest_data_out_22_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30(BITSELECT,319)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15(BITJOIN,342)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_q = i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_out_dest_data_out_52_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15(BITSELECT,343)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_q[31:0]);

    // i_sptset_sroa_10_2_replace_phi_dijkstra31(MUX,75)@1
    assign i_sptset_sroa_10_2_replace_phi_dijkstra31_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_sptset_sroa_10_2_replace_phi_dijkstra31_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_b)
    begin
        unique case (i_sptset_sroa_10_2_replace_phi_dijkstra31_s)
            1'b0 : i_sptset_sroa_10_2_replace_phi_dijkstra31_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_b;
            1'b1 : i_sptset_sroa_10_2_replace_phi_dijkstra31_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_b;
            default : i_sptset_sroa_10_2_replace_phi_dijkstra31_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra43_dijkstra63(BLACKBOX,62)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_35_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_43_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra43_dijkstra63 (
        .in_predicate_in(GND_q),
        .in_src_data_in_35_0(i_sptset_sroa_10_2_replace_phi_dijkstra31_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_V0),
        .out_intel_reserved_ffwd_35_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra43_dijkstra63_out_intel_reserved_ffwd_35_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra43_dijkstra63_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra43_dijkstra63_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15(STALLENABLE,498)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra43_dijkstra63_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_and1 = i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V46 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_and1;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34(BITJOIN,315)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_q = i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_out_dest_data_out_20_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34(BITSELECT,316)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17(BITJOIN,339)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_q = i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_out_dest_data_out_50_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17(BITSELECT,340)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_q[31:0]);

    // i_sptset_sroa_0_2_replace_phi_dijkstra35(MUX,74)@1
    assign i_sptset_sroa_0_2_replace_phi_dijkstra35_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_sptset_sroa_0_2_replace_phi_dijkstra35_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_b)
    begin
        unique case (i_sptset_sroa_0_2_replace_phi_dijkstra35_s)
            1'b0 : i_sptset_sroa_0_2_replace_phi_dijkstra35_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_b;
            1'b1 : i_sptset_sroa_0_2_replace_phi_dijkstra35_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_b;
            default : i_sptset_sroa_0_2_replace_phi_dijkstra35_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra45_dijkstra65(BLACKBOX,64)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_37_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_45_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra45_dijkstra65 (
        .in_predicate_in(GND_q),
        .in_src_data_in_37_0(i_sptset_sroa_0_2_replace_phi_dijkstra35_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_V0),
        .out_intel_reserved_ffwd_37_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra45_dijkstra65_out_intel_reserved_ffwd_37_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra45_dijkstra65_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra45_dijkstra65_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17(STALLENABLE,496)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra45_dijkstra65_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_and1 = i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V45 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_and1;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50(BITJOIN,369)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_q = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50(BITSELECT,370)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1(BITJOIN,285)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_q = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_out_dest_data_out_67_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1(BITSELECT,286)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_q[31:0]);

    // i_dist_sroa_8_3_replace_phi_dijkstra51(MUX,17)@1
    assign i_dist_sroa_8_3_replace_phi_dijkstra51_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_dist_sroa_8_3_replace_phi_dijkstra51_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_b)
    begin
        unique case (i_dist_sroa_8_3_replace_phi_dijkstra51_s)
            1'b0 : i_dist_sroa_8_3_replace_phi_dijkstra51_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_b;
            1'b1 : i_dist_sroa_8_3_replace_phi_dijkstra51_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_b;
            default : i_dist_sroa_8_3_replace_phi_dijkstra51_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra53_dijkstra73(BLACKBOX,72)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_45_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_53_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra53_dijkstra73 (
        .in_predicate_in(GND_q),
        .in_src_data_in_45_0(i_dist_sroa_8_3_replace_phi_dijkstra51_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_V1),
        .out_intel_reserved_ffwd_45_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra53_dijkstra73_out_intel_reserved_ffwd_45_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra53_dijkstra73_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra53_dijkstra73_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36(BITJOIN,312)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_q = i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_out_dest_data_out_10_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36(BITSELECT,313)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8(BITJOIN,264)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_q = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_out_dest_data_out_60_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8(BITSELECT,265)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_q[31:0]);

    // i_dist_sroa_50_3_replace_phi_dijkstra37(MUX,16)@1
    assign i_dist_sroa_50_3_replace_phi_dijkstra37_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_dist_sroa_50_3_replace_phi_dijkstra37_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_b)
    begin
        unique case (i_dist_sroa_50_3_replace_phi_dijkstra37_s)
            1'b0 : i_dist_sroa_50_3_replace_phi_dijkstra37_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_b;
            1'b1 : i_dist_sroa_50_3_replace_phi_dijkstra37_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_b;
            default : i_dist_sroa_50_3_replace_phi_dijkstra37_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38(BITJOIN,309)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_q = i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_out_dest_data_out_9_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38(BITSELECT,310)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7(BITJOIN,267)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_q = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_out_dest_data_out_61_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7(BITSELECT,268)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_q[31:0]);

    // i_dist_sroa_44_3_replace_phi_dijkstra39(MUX,15)@1
    assign i_dist_sroa_44_3_replace_phi_dijkstra39_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_dist_sroa_44_3_replace_phi_dijkstra39_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_b)
    begin
        unique case (i_dist_sroa_44_3_replace_phi_dijkstra39_s)
            1'b0 : i_dist_sroa_44_3_replace_phi_dijkstra39_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_b;
            1'b1 : i_dist_sroa_44_3_replace_phi_dijkstra39_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_b;
            default : i_dist_sroa_44_3_replace_phi_dijkstra39_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40(BITJOIN,306)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_q = i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40(BITSELECT,307)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6(BITJOIN,270)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_q = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_out_dest_data_out_62_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6(BITSELECT,271)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_q[31:0]);

    // i_dist_sroa_38_3_replace_phi_dijkstra41(MUX,14)@1
    assign i_dist_sroa_38_3_replace_phi_dijkstra41_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_dist_sroa_38_3_replace_phi_dijkstra41_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_b)
    begin
        unique case (i_dist_sroa_38_3_replace_phi_dijkstra41_s)
            1'b0 : i_dist_sroa_38_3_replace_phi_dijkstra41_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_b;
            1'b1 : i_dist_sroa_38_3_replace_phi_dijkstra41_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_b;
            default : i_dist_sroa_38_3_replace_phi_dijkstra41_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42(BITJOIN,303)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_q = i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_out_dest_data_out_7_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42(BITSELECT,304)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5(BITJOIN,273)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_q = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_out_dest_data_out_63_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5(BITSELECT,274)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_q[31:0]);

    // i_dist_sroa_32_3_replace_phi_dijkstra43(MUX,13)@1
    assign i_dist_sroa_32_3_replace_phi_dijkstra43_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_dist_sroa_32_3_replace_phi_dijkstra43_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_b)
    begin
        unique case (i_dist_sroa_32_3_replace_phi_dijkstra43_s)
            1'b0 : i_dist_sroa_32_3_replace_phi_dijkstra43_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_b;
            1'b1 : i_dist_sroa_32_3_replace_phi_dijkstra43_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_b;
            default : i_dist_sroa_32_3_replace_phi_dijkstra43_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44(BITJOIN,300)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_q = i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_out_dest_data_out_6_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44(BITSELECT,301)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4(BITJOIN,276)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_q = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_out_dest_data_out_64_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4(BITSELECT,277)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_q[31:0]);

    // i_dist_sroa_26_3_replace_phi_dijkstra45(MUX,12)@1
    assign i_dist_sroa_26_3_replace_phi_dijkstra45_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_dist_sroa_26_3_replace_phi_dijkstra45_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_b)
    begin
        unique case (i_dist_sroa_26_3_replace_phi_dijkstra45_s)
            1'b0 : i_dist_sroa_26_3_replace_phi_dijkstra45_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_b;
            1'b1 : i_dist_sroa_26_3_replace_phi_dijkstra45_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_b;
            default : i_dist_sroa_26_3_replace_phi_dijkstra45_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46(BITJOIN,297)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_q = i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_out_dest_data_out_5_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46(BITSELECT,298)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3(BITJOIN,279)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_q = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_out_dest_data_out_65_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3(BITSELECT,280)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_q[31:0]);

    // i_dist_sroa_20_3_replace_phi_dijkstra47(MUX,11)@1
    assign i_dist_sroa_20_3_replace_phi_dijkstra47_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_dist_sroa_20_3_replace_phi_dijkstra47_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_b)
    begin
        unique case (i_dist_sroa_20_3_replace_phi_dijkstra47_s)
            1'b0 : i_dist_sroa_20_3_replace_phi_dijkstra47_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_b;
            1'b1 : i_dist_sroa_20_3_replace_phi_dijkstra47_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_b;
            default : i_dist_sroa_20_3_replace_phi_dijkstra47_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48(BITJOIN,294)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_q = i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48(BITSELECT,295)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2(BITJOIN,282)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_q = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_out_dest_data_out_66_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2(BITSELECT,283)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_q[31:0]);

    // i_dist_sroa_14_3_replace_phi_dijkstra49(MUX,10)@1
    assign i_dist_sroa_14_3_replace_phi_dijkstra49_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_dist_sroa_14_3_replace_phi_dijkstra49_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_b)
    begin
        unique case (i_dist_sroa_14_3_replace_phi_dijkstra49_s)
            1'b0 : i_dist_sroa_14_3_replace_phi_dijkstra49_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_b;
            1'b1 : i_dist_sroa_14_3_replace_phi_dijkstra49_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_b;
            default : i_dist_sroa_14_3_replace_phi_dijkstra49_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x(BLACKBOX,260)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_intel_reserved_ffwd_47_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_47_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_47_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_47_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_47_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_47_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_47_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_47_0_7_tpl@20000000
    dijkstra_i_llvm_fpga_ffwd_source_s_case_A000000Zdijkstra55_dijkstra0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x (
        .in_predicate_in(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_V0),
        .in_src_data_in_47_0_0_tpl(i_dist_sroa_8_3_replace_phi_dijkstra51_q),
        .in_src_data_in_47_0_1_tpl(i_dist_sroa_14_3_replace_phi_dijkstra49_q),
        .in_src_data_in_47_0_2_tpl(i_dist_sroa_20_3_replace_phi_dijkstra47_q),
        .in_src_data_in_47_0_3_tpl(i_dist_sroa_26_3_replace_phi_dijkstra45_q),
        .in_src_data_in_47_0_4_tpl(i_dist_sroa_32_3_replace_phi_dijkstra43_q),
        .in_src_data_in_47_0_5_tpl(i_dist_sroa_38_3_replace_phi_dijkstra41_q),
        .in_src_data_in_47_0_6_tpl(i_dist_sroa_44_3_replace_phi_dijkstra39_q),
        .in_src_data_in_47_0_7_tpl(i_dist_sroa_50_3_replace_phi_dijkstra37_q),
        .out_stall_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_valid_out),
        .out_intel_reserved_ffwd_47_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_0_tpl),
        .out_intel_reserved_ffwd_47_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_1_tpl),
        .out_intel_reserved_ffwd_47_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_2_tpl),
        .out_intel_reserved_ffwd_47_0_3_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_3_tpl),
        .out_intel_reserved_ffwd_47_0_4_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_4_tpl),
        .out_intel_reserved_ffwd_47_0_5_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_5_tpl),
        .out_intel_reserved_ffwd_47_0_6_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_6_tpl),
        .out_intel_reserved_ffwd_47_0_7_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x(STALLENABLE,569)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_V0 = SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_stall_out | ~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_V0;
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_V0 & SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and0;
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and2 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_V0 & SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and1;
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and3 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_V0 & SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and2;
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and4 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_V0 & SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and3;
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and5 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_V0 & SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and4;
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and6 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_V0 & SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and5;
    assign SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_V0 & SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and6;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50(STALLENABLE,516)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra53_dijkstra73_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_and0 = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_and1 = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V44 & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_and1;

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra46_dijkstra66(BLACKBOX,65)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_38_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_46_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra46_dijkstra66 (
        .in_predicate_in(GND_q),
        .in_src_data_in_38_0(i_dist_sroa_50_3_replace_phi_dijkstra37_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_V1),
        .out_intel_reserved_ffwd_38_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra46_dijkstra66_out_intel_reserved_ffwd_38_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra46_dijkstra66_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra46_dijkstra66_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36(STALLENABLE,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra46_dijkstra66_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_and1 = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V43 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_and1;

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra47_dijkstra67(BLACKBOX,66)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_39_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_47_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra47_dijkstra67 (
        .in_predicate_in(GND_q),
        .in_src_data_in_39_0(i_dist_sroa_44_3_replace_phi_dijkstra39_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_V1),
        .out_intel_reserved_ffwd_39_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra47_dijkstra67_out_intel_reserved_ffwd_39_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra47_dijkstra67_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra47_dijkstra67_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38(STALLENABLE,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra47_dijkstra67_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_and1 = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V42 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_and1;

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra48_dijkstra68(BLACKBOX,67)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_40_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_48_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra48_dijkstra68 (
        .in_predicate_in(GND_q),
        .in_src_data_in_40_0(i_dist_sroa_38_3_replace_phi_dijkstra41_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_V1),
        .out_intel_reserved_ffwd_40_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra48_dijkstra68_out_intel_reserved_ffwd_40_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra48_dijkstra68_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra48_dijkstra68_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40(STALLENABLE,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra48_dijkstra68_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_and1 = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V41 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_and1;

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra49_dijkstra69(BLACKBOX,68)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_41_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_49_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra49_dijkstra69 (
        .in_predicate_in(GND_q),
        .in_src_data_in_41_0(i_dist_sroa_32_3_replace_phi_dijkstra43_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_V1),
        .out_intel_reserved_ffwd_41_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra49_dijkstra69_out_intel_reserved_ffwd_41_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra49_dijkstra69_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra49_dijkstra69_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42(STALLENABLE,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra49_dijkstra69_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_and1 = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V40 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_and1;

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra50_dijkstra70(BLACKBOX,69)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_42_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_50_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra50_dijkstra70 (
        .in_predicate_in(GND_q),
        .in_src_data_in_42_0(i_dist_sroa_26_3_replace_phi_dijkstra45_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_V1),
        .out_intel_reserved_ffwd_42_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra50_dijkstra70_out_intel_reserved_ffwd_42_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra50_dijkstra70_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra50_dijkstra70_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44(STALLENABLE,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra50_dijkstra70_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_and1 = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V39 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_and1;

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra51_dijkstra71(BLACKBOX,70)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_43_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_51_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra51_dijkstra71 (
        .in_predicate_in(GND_q),
        .in_src_data_in_43_0(i_dist_sroa_20_3_replace_phi_dijkstra47_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_V1),
        .out_intel_reserved_ffwd_43_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra51_dijkstra71_out_intel_reserved_ffwd_43_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra51_dijkstra71_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra51_dijkstra71_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46(STALLENABLE,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra51_dijkstra71_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_and1 = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V38 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_and1;

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra52_dijkstra72(BLACKBOX,71)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_44_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_52_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra52_dijkstra72 (
        .in_predicate_in(GND_q),
        .in_src_data_in_44_0(i_dist_sroa_14_3_replace_phi_dijkstra49_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_V1),
        .out_intel_reserved_ffwd_44_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra52_dijkstra72_out_intel_reserved_ffwd_44_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra52_dijkstra72_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra52_dijkstra72_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48(STALLENABLE,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_consumed0 = (~ (SE_in_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra52_dijkstra72_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_and1 = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V37 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_and1;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52(BITJOIN,291)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_q = i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52(BITSELECT,292)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0(BITJOIN,288)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_q = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_out_dest_data_out_68_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0(BITSELECT,289)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_q[31:0]);

    // i_dist_sroa_0_3_replace_phi_dijkstra53(MUX,9)@1
    assign i_dist_sroa_0_3_replace_phi_dijkstra53_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_dist_sroa_0_3_replace_phi_dijkstra53_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_b)
    begin
        unique case (i_dist_sroa_0_3_replace_phi_dijkstra53_s)
            1'b0 : i_dist_sroa_0_3_replace_phi_dijkstra53_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_b;
            1'b1 : i_dist_sroa_0_3_replace_phi_dijkstra53_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_b;
            default : i_dist_sroa_0_3_replace_phi_dijkstra53_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra54_dijkstra74(BLACKBOX,73)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_46_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_54_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra54_dijkstra74 (
        .in_predicate_in(GND_q),
        .in_src_data_in_46_0(i_dist_sroa_0_3_replace_phi_dijkstra53_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_V0),
        .out_intel_reserved_ffwd_46_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra54_dijkstra74_out_intel_reserved_ffwd_46_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra54_dijkstra74_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra54_dijkstra74_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52(STALLENABLE,464)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra54_dijkstra74_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_and1 = i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V36 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_and1;

    // i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50(BLACKBOX,54)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_unnamed_36_dijkstra0 thei_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V35),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32(BLACKBOX,53)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_unnamed_35_dijkstra0 thei_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V34),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_out_dest_data_out_21_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16(BLACKBOX,52)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_unnamed_34_dijkstra0 thei_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16 (
        .in_intel_reserved_ffwd_51_0(in_intel_reserved_ffwd_51_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V33),
        .out_dest_data_out_51_0(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_out_dest_data_out_51_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10(BLACKBOX,50)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select25391_0 thei_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10 (
        .in_intel_reserved_ffwd_57_0(in_intel_reserved_ffwd_57_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V31),
        .out_dest_data_out_57_0(i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_out_dest_data_out_57_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11(BLACKBOX,49)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select25289_0 thei_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11 (
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V30),
        .out_dest_data_out_56_0(i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_out_dest_data_out_56_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12(BLACKBOX,48)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select25187_0 thei_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12 (
        .in_intel_reserved_ffwd_55_0(in_intel_reserved_ffwd_55_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V29),
        .out_dest_data_out_55_0(i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_out_dest_data_out_55_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13(BLACKBOX,47)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select25085_0 thei_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13 (
        .in_intel_reserved_ffwd_54_0(in_intel_reserved_ffwd_54_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V28),
        .out_dest_data_out_54_0(i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_out_dest_data_out_54_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14(BLACKBOX,46)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select24983_0 thei_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14 (
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V27),
        .out_dest_data_out_53_0(i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_out_dest_data_out_53_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15(BLACKBOX,45)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select24881_0 thei_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15 (
        .in_intel_reserved_ffwd_52_0(in_intel_reserved_ffwd_52_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V26),
        .out_dest_data_out_52_0(i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_out_dest_data_out_52_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17(BLACKBOX,44)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select24778_0 thei_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17 (
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V25),
        .out_dest_data_out_50_0(i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_out_dest_data_out_50_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20(BLACKBOX,42)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select24532_0 thei_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20 (
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V23),
        .out_dest_data_out_27_0(i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_out_dest_data_out_27_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22(BLACKBOX,41)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select24431_0 thei_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22 (
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V22),
        .out_dest_data_out_26_0(i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_out_dest_data_out_26_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24(BLACKBOX,40)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select24330_0 thei_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24 (
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V21),
        .out_dest_data_out_25_0(i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_out_dest_data_out_25_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26(BLACKBOX,39)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select24229_0 thei_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26 (
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V20),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_out_dest_data_out_24_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28(BLACKBOX,38)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select24128_0 thei_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V19),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_out_dest_data_out_23_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30(BLACKBOX,37)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select24027_0 thei_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30 (
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V18),
        .out_dest_data_out_22_0(i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_out_dest_data_out_22_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34(BLACKBOX,36)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select23926_0 thei_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V17),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_out_dest_data_out_20_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36(BLACKBOX,35)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select23017_0 thei_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V16),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_out_dest_data_out_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38(BLACKBOX,34)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select22916_0 thei_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V15),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_out_dest_data_out_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40(BLACKBOX,33)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select22815_0 thei_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V14),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42(BLACKBOX,32)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select22714_0 thei_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V13),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_out_dest_data_out_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44(BLACKBOX,31)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select22613_0 thei_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V12),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_out_dest_data_out_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46(BLACKBOX,30)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select22512_0 thei_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V11),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_out_dest_data_out_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48(BLACKBOX,29)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select22411_0 thei_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V10),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52(BLACKBOX,28)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select22310_0 thei_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V9),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0(BLACKBOX,27)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_reduction_8112_dijkstra0 thei_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0 (
        .in_intel_reserved_ffwd_68_0(in_intel_reserved_ffwd_68_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V8),
        .out_dest_data_out_68_0(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_out_dest_data_out_68_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1(BLACKBOX,26)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_reduction_7110_dijkstra0 thei_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1 (
        .in_intel_reserved_ffwd_67_0(in_intel_reserved_ffwd_67_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V7),
        .out_dest_data_out_67_0(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_out_dest_data_out_67_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2(BLACKBOX,25)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_reduction_6108_dijkstra0 thei_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2 (
        .in_intel_reserved_ffwd_66_0(in_intel_reserved_ffwd_66_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V6),
        .out_dest_data_out_66_0(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_out_dest_data_out_66_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3(BLACKBOX,24)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_reduction_5106_dijkstra0 thei_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3 (
        .in_intel_reserved_ffwd_65_0(in_intel_reserved_ffwd_65_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V5),
        .out_dest_data_out_65_0(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_out_dest_data_out_65_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4(BLACKBOX,23)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_reduction_4104_dijkstra0 thei_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4 (
        .in_intel_reserved_ffwd_64_0(in_intel_reserved_ffwd_64_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V4),
        .out_dest_data_out_64_0(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_out_dest_data_out_64_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5(BLACKBOX,22)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_reduction_3102_dijkstra0 thei_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5 (
        .in_intel_reserved_ffwd_63_0(in_intel_reserved_ffwd_63_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V3),
        .out_dest_data_out_63_0(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_out_dest_data_out_63_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6(BLACKBOX,21)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_reduction_2100_dijkstra0 thei_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6 (
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V2),
        .out_dest_data_out_62_0(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_out_dest_data_out_62_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7(BLACKBOX,20)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_reduction_198_dijkstra0 thei_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7 (
        .in_intel_reserved_ffwd_61_0(in_intel_reserved_ffwd_61_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V1),
        .out_dest_data_out_61_0(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_out_dest_data_out_61_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8(BLACKBOX,19)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_reduction_096_dijkstra0 thei_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8 (
        .in_intel_reserved_ffwd_60_0(in_intel_reserved_ffwd_60_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V0),
        .out_dest_data_out_60_0(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_out_dest_data_out_60_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,391)
    assign bubble_join_stall_entry_q = {in_forked, in_count_034};

    // bubble_select_stall_entry(BITSELECT,392)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);

    // SE_stall_entry(STALLENABLE,564)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = dijkstra_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // dijkstra_B4_merge_reg_aunroll_x(BLACKBOX,240)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    dijkstra_B4_merge_reg thedijkstra_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .out_stall_out(dijkstra_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(dijkstra_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(dijkstra_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(dijkstra_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_dijkstra_B4_merge_reg_aunroll_x(STALLENABLE,568)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg8 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg9 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg10 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg11 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg12 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg13 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg14 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg15 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg16 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg17 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg18 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg19 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg20 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg21 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg22 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg23 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg24 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg25 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg26 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg27 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg28 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg29 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg30 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg31 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg32 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg33 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg34 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg35 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg36 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg37 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg38 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg39 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg40 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg41 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg42 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg43 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg44 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg45 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg46 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg47 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg48 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg49 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg50 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg51 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg52 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg53 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg54 <= '0;
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg55 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg4 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg5 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg6 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg7 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg8 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg8;
            // Successor 9
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg9 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg9;
            // Successor 10
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg10 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg10;
            // Successor 11
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg11 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg11;
            // Successor 12
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg12 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg12;
            // Successor 13
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg13 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg13;
            // Successor 14
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg14 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg14;
            // Successor 15
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg15 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg15;
            // Successor 16
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg16 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg16;
            // Successor 17
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg17 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg17;
            // Successor 18
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg18 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg18;
            // Successor 19
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg19 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg19;
            // Successor 20
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg20 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg20;
            // Successor 21
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg21 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg21;
            // Successor 22
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg22 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg22;
            // Successor 23
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg23 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg23;
            // Successor 24
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg24 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg24;
            // Successor 25
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg25 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg25;
            // Successor 26
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg26 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg26;
            // Successor 27
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg27 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg27;
            // Successor 28
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg28 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg28;
            // Successor 29
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg29 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg29;
            // Successor 30
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg30 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg30;
            // Successor 31
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg31 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg31;
            // Successor 32
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg32 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg32;
            // Successor 33
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg33 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg33;
            // Successor 34
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg34 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg34;
            // Successor 35
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg35 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg35;
            // Successor 36
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg36 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg36;
            // Successor 37
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg37 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg37;
            // Successor 38
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg38 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg38;
            // Successor 39
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg39 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg39;
            // Successor 40
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg40 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg40;
            // Successor 41
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg41 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg41;
            // Successor 42
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg42 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg42;
            // Successor 43
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg43 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg43;
            // Successor 44
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg44 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg44;
            // Successor 45
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg45 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg45;
            // Successor 46
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg46 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg46;
            // Successor 47
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg47 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg47;
            // Successor 48
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg48 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg48;
            // Successor 49
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg49 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg49;
            // Successor 50
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg50 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg50;
            // Successor 51
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg51 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg51;
            // Successor 52
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg52 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg52;
            // Successor 53
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg53 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg53;
            // Successor 54
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg54 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg54;
            // Successor 55
            SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg55 <= SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg55;
        end
    end
    // Input Stall processing
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_096_dijkstra8_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_198_dijkstra7_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_2100_dijkstra6_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_3102_dijkstra5_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg3;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_4104_dijkstra4_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg4;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_5106_dijkstra3_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg5;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed6 = (~ (i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_6108_dijkstra2_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg6;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed7 = (~ (i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_7110_dijkstra1_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg7;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed8 = (~ (i_llvm_fpga_ffwd_dest_i32_reduction_dijkstra_8112_dijkstra0_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg8;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed9 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg9;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed10 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg10;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed11 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg11;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed12 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg12;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed13 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg13;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed14 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg14;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed15 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg15;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed16 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg16;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed17 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select23926_dijkstra34_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg17;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed18 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select24027_dijkstra30_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg18;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed19 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select24128_dijkstra28_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg19;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed20 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select24229_dijkstra26_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg20;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed21 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select24330_dijkstra24_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg21;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed22 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select24431_dijkstra22_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg22;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed23 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select24532_dijkstra20_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg23;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed24 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg24;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed25 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg25;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed26 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg26;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed27 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg27;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed28 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg28;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed29 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg29;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed30 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg30;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed31 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg31;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed32 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg32;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed33 = (~ (i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra34_dijkstra16_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg33;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed34 = (~ (i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg34;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed35 = (~ (i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg35;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed36 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22310_dijkstra52_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg36;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed37 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22411_dijkstra48_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg37;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed38 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22512_dijkstra46_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg38;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed39 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22613_dijkstra44_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg39;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed40 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22714_dijkstra42_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg40;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed41 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22815_dijkstra40_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg41;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed42 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select22916_dijkstra38_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg42;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed43 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23017_dijkstra36_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg43;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed44 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra36_dijkstra50_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg44;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed45 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24778_dijkstra17_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg45;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed46 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24881_dijkstra15_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg46;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed47 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select24983_dijkstra14_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg47;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed48 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25085_dijkstra13_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg48;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed49 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25187_dijkstra12_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg49;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed50 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25289_dijkstra11_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg50;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed51 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25391_dijkstra10_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg51;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed52 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg52;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed53 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra35_dijkstra32_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg53;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed54 = (~ (SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg54;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed55 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_dijkstra56_dijkstra76_out_stall_out) & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid) | SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg55;
    // Consuming
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_backStall & SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg0 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg1 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg2 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg3 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed3;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg4 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed4;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg5 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed5;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg6 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed6;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg7 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed7;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg8 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed8;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg9 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed9;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg10 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed10;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg11 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed11;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg12 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed12;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg13 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed13;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg14 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed14;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg15 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed15;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg16 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed16;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg17 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed17;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg18 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed18;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg19 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed19;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg20 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed20;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg21 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed21;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg22 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed22;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg23 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed23;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg24 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed24;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg25 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed25;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg26 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed26;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg27 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed27;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg28 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed28;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg29 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed29;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg30 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed30;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg31 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed31;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg32 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed32;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg33 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed33;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg34 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed34;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg35 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed35;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg36 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed36;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg37 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed37;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg38 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed38;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg39 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed39;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg40 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed40;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg41 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed41;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg42 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed42;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg43 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed43;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg44 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed44;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg45 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed45;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg46 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed46;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg47 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed47;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg48 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed48;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg49 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed49;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg50 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed50;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg51 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed51;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg52 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed52;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg53 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed53;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg54 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed54;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_toReg55 = SE_out_dijkstra_B4_merge_reg_aunroll_x_StallValid & SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed55;
    // Backward Stall generation
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or0 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or1 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed1 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or0;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or2 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed2 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or1;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or3 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed3 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or2;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or4 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed4 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or3;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or5 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed5 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or4;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or6 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed6 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or5;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or7 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed7 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or6;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or8 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed8 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or7;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or9 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed9 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or8;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or10 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed10 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or9;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or11 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed11 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or10;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or12 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed12 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or11;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or13 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed13 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or12;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or14 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed14 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or13;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or15 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed15 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or14;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or16 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed16 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or15;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or17 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed17 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or16;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or18 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed18 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or17;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or19 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed19 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or18;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or20 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed20 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or19;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or21 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed21 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or20;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or22 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed22 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or21;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or23 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed23 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or22;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or24 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed24 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or23;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or25 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed25 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or24;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or26 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed26 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or25;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or27 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed27 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or26;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or28 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed28 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or27;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or29 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed29 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or28;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or30 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed30 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or29;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or31 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed31 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or30;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or32 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed32 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or31;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or33 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed33 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or32;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or34 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed34 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or33;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or35 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed35 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or34;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or36 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed36 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or35;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or37 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed37 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or36;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or38 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed38 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or37;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or39 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed39 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or38;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or40 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed40 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or39;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or41 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed41 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or40;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or42 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed42 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or41;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or43 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed43 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or42;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or44 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed44 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or43;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or45 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed45 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or44;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or46 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed46 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or45;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or47 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed47 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or46;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or48 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed48 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or47;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or49 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed49 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or48;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or50 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed50 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or49;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or51 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed51 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or50;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or52 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed52 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or51;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or53 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed53 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or52;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_or54 = SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed54 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or53;
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_consumed55 & SE_out_dijkstra_B4_merge_reg_aunroll_x_or54);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_backStall = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V0 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V1 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V2 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V3 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg3);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V4 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg4);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V5 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg5);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V6 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg6);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V7 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg7);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V8 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg8);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V9 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg9);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V10 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg10);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V11 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg11);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V12 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg12);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V13 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg13);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V14 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg14);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V15 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg15);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V16 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg16);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V17 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg17);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V18 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg18);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V19 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg19);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V20 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg20);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V21 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg21);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V22 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg22);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V23 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg23);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V24 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg24);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V25 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg25);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V26 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg26);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V27 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg27);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V28 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg28);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V29 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg29);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V30 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg30);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V31 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg31);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V32 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg32);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V33 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg33);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V34 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg34);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V35 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg35);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V36 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg36);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V37 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg37);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V38 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg38);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V39 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg39);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V40 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg40);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V41 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg41);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V42 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg42);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V43 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg43);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V44 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg44);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V45 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg45);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V46 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg46);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V47 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg47);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V48 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg48);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V49 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg49);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V50 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg50);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V51 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg51);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V52 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg52);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V53 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg53);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V54 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg54);
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_V55 = SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_dijkstra_B4_merge_reg_aunroll_x_fromReg55);
    // Computing multiple Valid(s)
    assign SE_out_dijkstra_B4_merge_reg_aunroll_x_wireValid = dijkstra_B4_merge_reg_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18(BLACKBOX,43)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select24633_0 thei_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18 (
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V24),
        .out_dest_data_out_28_0(i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_out_dest_data_out_28_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9(BLACKBOX,51)@1
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select25493_0 thei_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9 (
        .in_intel_reserved_ffwd_58_0(in_intel_reserved_ffwd_58_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_backStall),
        .in_valid_in(SE_out_dijkstra_B4_merge_reg_aunroll_x_V32),
        .out_dest_data_out_58_0(i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_out_dest_data_out_58_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9(STALLENABLE,510)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra37_dijkstra57_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_and1 = i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V52 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_and1;

    // SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x(STALLENABLE,570)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and0 = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and1 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra54_dijkstra74_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and2 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra53_dijkstra73_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and1;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and3 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra52_dijkstra72_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and2;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and4 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra51_dijkstra71_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and3;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and5 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra50_dijkstra70_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and4;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and6 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra49_dijkstra69_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and5;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and7 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra48_dijkstra68_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and6;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and8 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra47_dijkstra67_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and7;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and9 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra46_dijkstra66_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and8;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and10 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra45_dijkstra65_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and9;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and11 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra44_dijkstra64_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and10;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and12 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra43_dijkstra63_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and11;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and13 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra42_dijkstra62_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and12;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and14 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra41_dijkstra61_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and13;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and15 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra40_dijkstra60_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and14;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and16 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra39_dijkstra59_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and15;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and17 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra38_dijkstra58_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and16;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and18 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra37_dijkstra57_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and17;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and19 = i_llvm_fpga_ffwd_source_i1_unnamed_dijkstra56_dijkstra76_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and18;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_wireValid = SE_out_dijkstra_B4_merge_reg_aunroll_x_V54 & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_and19;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18(BITJOIN,336)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_q = i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_out_dest_data_out_28_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18(BITSELECT,337)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9(BITJOIN,360)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_q = i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_out_dest_data_out_58_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9(BITSELECT,361)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_q[31:0]);

    // i_sptset_sroa_34_2_replace_phi_dijkstra19(MUX,81)@1
    assign i_sptset_sroa_34_2_replace_phi_dijkstra19_s = bubble_select_dijkstra_B4_merge_reg_aunroll_x_c;
    always @(i_sptset_sroa_34_2_replace_phi_dijkstra19_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_b)
    begin
        unique case (i_sptset_sroa_34_2_replace_phi_dijkstra19_s)
            1'b0 : i_sptset_sroa_34_2_replace_phi_dijkstra19_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_b;
            1'b1 : i_sptset_sroa_34_2_replace_phi_dijkstra19_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select24633_dijkstra18_b;
            default : i_sptset_sroa_34_2_replace_phi_dijkstra19_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra37_dijkstra57(BLACKBOX,56)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_29_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_37_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra37_dijkstra57 (
        .in_predicate_in(GND_q),
        .in_src_data_in_29_0(i_sptset_sroa_34_2_replace_phi_dijkstra19_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select25493_dijkstra9_V0),
        .out_intel_reserved_ffwd_29_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra37_dijkstra57_out_intel_reserved_ffwd_29_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra37_dijkstra57_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra37_dijkstra57_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,233)
    assign out_intel_reserved_ffwd_29_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra37_dijkstra57_out_intel_reserved_ffwd_29_0;

    // sync_out(GPOUT,237)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,241)
    assign out_intel_reserved_ffwd_30_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra38_dijkstra58_out_intel_reserved_ffwd_30_0;

    // dupName_0_sync_out_x(GPOUT,242)@1
    assign out_inc50 = bgTrunc_i_inc50_dijkstra55_sel_x_b;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,243)
    assign out_intel_reserved_ffwd_31_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra39_dijkstra59_out_intel_reserved_ffwd_31_0;

    // dupName_2_regfree_osync_x(GPOUT,244)
    assign out_intel_reserved_ffwd_32_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra40_dijkstra60_out_intel_reserved_ffwd_32_0;

    // dupName_3_regfree_osync_x(GPOUT,245)
    assign out_intel_reserved_ffwd_33_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra41_dijkstra61_out_intel_reserved_ffwd_33_0;

    // dupName_4_regfree_osync_x(GPOUT,246)
    assign out_intel_reserved_ffwd_34_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra42_dijkstra62_out_intel_reserved_ffwd_34_0;

    // dupName_5_regfree_osync_x(GPOUT,247)
    assign out_intel_reserved_ffwd_35_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra43_dijkstra63_out_intel_reserved_ffwd_35_0;

    // dupName_6_regfree_osync_x(GPOUT,248)
    assign out_intel_reserved_ffwd_36_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra44_dijkstra64_out_intel_reserved_ffwd_36_0;

    // dupName_7_regfree_osync_x(GPOUT,249)
    assign out_intel_reserved_ffwd_37_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra45_dijkstra65_out_intel_reserved_ffwd_37_0;

    // dupName_8_regfree_osync_x(GPOUT,250)
    assign out_intel_reserved_ffwd_38_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra46_dijkstra66_out_intel_reserved_ffwd_38_0;

    // dupName_9_regfree_osync_x(GPOUT,251)
    assign out_intel_reserved_ffwd_39_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra47_dijkstra67_out_intel_reserved_ffwd_39_0;

    // dupName_10_regfree_osync_x(GPOUT,252)
    assign out_intel_reserved_ffwd_40_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra48_dijkstra68_out_intel_reserved_ffwd_40_0;

    // dupName_11_regfree_osync_x(GPOUT,253)
    assign out_intel_reserved_ffwd_41_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra49_dijkstra69_out_intel_reserved_ffwd_41_0;

    // dupName_12_regfree_osync_x(GPOUT,254)
    assign out_intel_reserved_ffwd_42_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra50_dijkstra70_out_intel_reserved_ffwd_42_0;

    // dupName_13_regfree_osync_x(GPOUT,255)
    assign out_intel_reserved_ffwd_43_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra51_dijkstra71_out_intel_reserved_ffwd_43_0;

    // dupName_14_regfree_osync_x(GPOUT,256)
    assign out_intel_reserved_ffwd_44_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra52_dijkstra72_out_intel_reserved_ffwd_44_0;

    // dupName_15_regfree_osync_x(GPOUT,257)
    assign out_intel_reserved_ffwd_45_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra53_dijkstra73_out_intel_reserved_ffwd_45_0;

    // dupName_16_regfree_osync_x(GPOUT,258)
    assign out_intel_reserved_ffwd_46_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra54_dijkstra74_out_intel_reserved_ffwd_46_0;

    // dupName_18_regfree_osync_x(GPOUT,259)
    assign out_intel_reserved_ffwd_48_0 = i_llvm_fpga_ffwd_source_i1_unnamed_dijkstra56_dijkstra76_out_intel_reserved_ffwd_48_0;

    // dupName_17_regfree_osync_aunroll_x(GPOUT,261)
    assign out_intel_reserved_ffwd_47_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_0_tpl;
    assign out_intel_reserved_ffwd_47_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_1_tpl;
    assign out_intel_reserved_ffwd_47_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_2_tpl;
    assign out_intel_reserved_ffwd_47_0_3_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_3_tpl;
    assign out_intel_reserved_ffwd_47_0_4_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_4_tpl;
    assign out_intel_reserved_ffwd_47_0_5_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_5_tpl;
    assign out_intel_reserved_ffwd_47_0_6_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_6_tpl;
    assign out_intel_reserved_ffwd_47_0_7_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_dijkstra_fpgaunique_1s_unnamed_dijkstra55_dijkstra75_aunroll_x_out_intel_reserved_ffwd_47_0_7_tpl;

endmodule
