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

// SystemVerilog created from loopback_bb_B3_stall_region
// SystemVerilog created on Sun Apr 19 21:41:33 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loopback_bb_B3_stall_region (
    input wire [15:0] in_intel_reserved_ffwd_10_0,
    input wire [15:0] in_intel_reserved_ffwd_11_0,
    input wire [15:0] in_intel_reserved_ffwd_12_0,
    input wire [15:0] in_intel_reserved_ffwd_13_0,
    input wire [15:0] in_intel_reserved_ffwd_14_0,
    input wire [15:0] in_intel_reserved_ffwd_15_0,
    input wire [15:0] in_intel_reserved_ffwd_16_0,
    input wire [15:0] in_intel_reserved_ffwd_17_0,
    input wire [15:0] in_intel_reserved_ffwd_18_0,
    input wire [15:0] in_intel_reserved_ffwd_19_0,
    input wire [15:0] in_intel_reserved_ffwd_20_0,
    input wire [15:0] in_intel_reserved_ffwd_21_0,
    input wire [15:0] in_intel_reserved_ffwd_22_0,
    input wire [15:0] in_intel_reserved_ffwd_23_0,
    input wire [15:0] in_intel_reserved_ffwd_24_0,
    input wire [15:0] in_intel_reserved_ffwd_25_0,
    input wire [15:0] in_intel_reserved_ffwd_26_0,
    input wire [15:0] in_intel_reserved_ffwd_27_0,
    input wire [15:0] in_intel_reserved_ffwd_28_0,
    input wire [15:0] in_intel_reserved_ffwd_29_0,
    input wire [15:0] in_intel_reserved_ffwd_2_0,
    input wire [15:0] in_intel_reserved_ffwd_30_0,
    input wire [15:0] in_intel_reserved_ffwd_31_0,
    input wire [15:0] in_intel_reserved_ffwd_32_0,
    input wire [15:0] in_intel_reserved_ffwd_3_0,
    input wire [15:0] in_intel_reserved_ffwd_4_0,
    input wire [15:0] in_intel_reserved_ffwd_5_0,
    input wire [15:0] in_intel_reserved_ffwd_6_0,
    input wire [15:0] in_intel_reserved_ffwd_7_0,
    input wire [15:0] in_intel_reserved_ffwd_8_0,
    input wire [15:0] in_intel_reserved_ffwd_9_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    output wire [15:0] out_intel_reserved_ffwd_65_0_0_tpl,
    output wire [15:0] out_intel_reserved_ffwd_65_0_1_tpl,
    output wire [15:0] out_intel_reserved_ffwd_65_0_2_tpl,
    output wire [15:0] out_intel_reserved_ffwd_65_0_3_tpl,
    output wire [15:0] out_intel_reserved_ffwd_65_0_4_tpl,
    output wire [15:0] out_intel_reserved_ffwd_65_0_5_tpl,
    output wire [15:0] out_intel_reserved_ffwd_65_0_6_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_0_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_1_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_2_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_3_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_4_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_5_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_6_tpl,
    output wire [15:0] out_intel_reserved_ffwd_66_0_7_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_0_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_1_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_2_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_3_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_4_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_5_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_6_tpl,
    output wire [15:0] out_intel_reserved_ffwd_67_0_7_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_0_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_1_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_2_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_3_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_4_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_5_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_6_tpl,
    output wire [15:0] out_intel_reserved_ffwd_68_0_7_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_out_dest_data_out_7_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_out_dest_data_out_9_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_out_dest_data_out_10_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_out_dest_data_out_12_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_out_dest_data_out_13_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_out_dest_data_out_15_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_out_dest_data_out_16_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_out_dest_data_out_19_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_out_dest_data_out_20_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_out_dest_data_out_21_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_out_dest_data_out_22_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_out_dest_data_out_23_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_out_dest_data_out_24_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_out_dest_data_out_25_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_out_dest_data_out_26_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_out_dest_data_out_27_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_out_dest_data_out_28_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_out_dest_data_out_29_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_out_dest_data_out_30_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_out_dest_data_out_31_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_out_dest_data_out_32_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_3_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_4_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_5_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_6_tpl;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_3_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_4_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_5_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_6_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_7_tpl;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_3_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_4_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_5_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_6_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_7_tpl;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_valid_out;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_3_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_4_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_5_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_6_tpl;
    wire [15:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_7_tpl;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_b;
    wire [15:0] bubble_join_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_q;
    wire [15:0] bubble_select_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_V0;
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
    wire [0:0] SE_stall_entry_toReg12;
    reg [0:0] SE_stall_entry_fromReg12;
    wire [0:0] SE_stall_entry_consumed12;
    wire [0:0] SE_stall_entry_toReg13;
    reg [0:0] SE_stall_entry_fromReg13;
    wire [0:0] SE_stall_entry_consumed13;
    wire [0:0] SE_stall_entry_toReg14;
    reg [0:0] SE_stall_entry_fromReg14;
    wire [0:0] SE_stall_entry_consumed14;
    wire [0:0] SE_stall_entry_toReg15;
    reg [0:0] SE_stall_entry_fromReg15;
    wire [0:0] SE_stall_entry_consumed15;
    wire [0:0] SE_stall_entry_toReg16;
    reg [0:0] SE_stall_entry_fromReg16;
    wire [0:0] SE_stall_entry_consumed16;
    wire [0:0] SE_stall_entry_toReg17;
    reg [0:0] SE_stall_entry_fromReg17;
    wire [0:0] SE_stall_entry_consumed17;
    wire [0:0] SE_stall_entry_toReg18;
    reg [0:0] SE_stall_entry_fromReg18;
    wire [0:0] SE_stall_entry_consumed18;
    wire [0:0] SE_stall_entry_toReg19;
    reg [0:0] SE_stall_entry_fromReg19;
    wire [0:0] SE_stall_entry_consumed19;
    wire [0:0] SE_stall_entry_toReg20;
    reg [0:0] SE_stall_entry_fromReg20;
    wire [0:0] SE_stall_entry_consumed20;
    wire [0:0] SE_stall_entry_toReg21;
    reg [0:0] SE_stall_entry_fromReg21;
    wire [0:0] SE_stall_entry_consumed21;
    wire [0:0] SE_stall_entry_toReg22;
    reg [0:0] SE_stall_entry_fromReg22;
    wire [0:0] SE_stall_entry_consumed22;
    wire [0:0] SE_stall_entry_toReg23;
    reg [0:0] SE_stall_entry_fromReg23;
    wire [0:0] SE_stall_entry_consumed23;
    wire [0:0] SE_stall_entry_toReg24;
    reg [0:0] SE_stall_entry_fromReg24;
    wire [0:0] SE_stall_entry_consumed24;
    wire [0:0] SE_stall_entry_toReg25;
    reg [0:0] SE_stall_entry_fromReg25;
    wire [0:0] SE_stall_entry_consumed25;
    wire [0:0] SE_stall_entry_toReg26;
    reg [0:0] SE_stall_entry_fromReg26;
    wire [0:0] SE_stall_entry_consumed26;
    wire [0:0] SE_stall_entry_toReg27;
    reg [0:0] SE_stall_entry_fromReg27;
    wire [0:0] SE_stall_entry_consumed27;
    wire [0:0] SE_stall_entry_toReg28;
    reg [0:0] SE_stall_entry_fromReg28;
    wire [0:0] SE_stall_entry_consumed28;
    wire [0:0] SE_stall_entry_toReg29;
    reg [0:0] SE_stall_entry_fromReg29;
    wire [0:0] SE_stall_entry_consumed29;
    wire [0:0] SE_stall_entry_toReg30;
    reg [0:0] SE_stall_entry_fromReg30;
    wire [0:0] SE_stall_entry_consumed30;
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
    wire [0:0] SE_stall_entry_or11;
    wire [0:0] SE_stall_entry_or12;
    wire [0:0] SE_stall_entry_or13;
    wire [0:0] SE_stall_entry_or14;
    wire [0:0] SE_stall_entry_or15;
    wire [0:0] SE_stall_entry_or16;
    wire [0:0] SE_stall_entry_or17;
    wire [0:0] SE_stall_entry_or18;
    wire [0:0] SE_stall_entry_or19;
    wire [0:0] SE_stall_entry_or20;
    wire [0:0] SE_stall_entry_or21;
    wire [0:0] SE_stall_entry_or22;
    wire [0:0] SE_stall_entry_or23;
    wire [0:0] SE_stall_entry_or24;
    wire [0:0] SE_stall_entry_or25;
    wire [0:0] SE_stall_entry_or26;
    wire [0:0] SE_stall_entry_or27;
    wire [0:0] SE_stall_entry_or28;
    wire [0:0] SE_stall_entry_or29;
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
    wire [0:0] SE_stall_entry_V12;
    wire [0:0] SE_stall_entry_V13;
    wire [0:0] SE_stall_entry_V14;
    wire [0:0] SE_stall_entry_V15;
    wire [0:0] SE_stall_entry_V16;
    wire [0:0] SE_stall_entry_V17;
    wire [0:0] SE_stall_entry_V18;
    wire [0:0] SE_stall_entry_V19;
    wire [0:0] SE_stall_entry_V20;
    wire [0:0] SE_stall_entry_V21;
    wire [0:0] SE_stall_entry_V22;
    wire [0:0] SE_stall_entry_V23;
    wire [0:0] SE_stall_entry_V24;
    wire [0:0] SE_stall_entry_V25;
    wire [0:0] SE_stall_entry_V26;
    wire [0:0] SE_stall_entry_V27;
    wire [0:0] SE_stall_entry_V28;
    wire [0:0] SE_stall_entry_V29;
    wire [0:0] SE_stall_entry_V30;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_V0;


    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7(BITJOIN,167)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_q = i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7(BITSELECT,168)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6(BITJOIN,164)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_q = i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_out_dest_data_out_7_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6(BITSELECT,165)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5(BITJOIN,161)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_q = i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_out_dest_data_out_6_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5(BITSELECT,162)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4(BITJOIN,158)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_q = i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_out_dest_data_out_5_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4(BITSELECT,159)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3(BITJOIN,155)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_q = i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3(BITSELECT,156)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2(BITJOIN,152)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_q = i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2(BITSELECT,153)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0(BITJOIN,242)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_q = i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0(BITSELECT,243)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16(BITJOIN,191)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_q = i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_out_dest_data_out_16_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16(BITSELECT,192)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15(BITJOIN,188)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_q = i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_out_dest_data_out_15_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15(BITSELECT,189)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14(BITJOIN,185)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_q = i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_out_dest_data_out_14_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14(BITSELECT,186)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13(BITJOIN,182)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_q = i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_out_dest_data_out_13_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13(BITSELECT,183)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12(BITJOIN,179)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_q = i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_out_dest_data_out_12_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12(BITSELECT,180)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11(BITJOIN,176)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_q = i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_out_dest_data_out_11_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11(BITSELECT,177)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10(BITJOIN,173)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_q = i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_out_dest_data_out_10_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10(BITSELECT,174)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8(BITJOIN,170)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_q = i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_out_dest_data_out_9_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8(BITSELECT,171)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_q[15:0]);

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16(STALLENABLE,306)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_backStall = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and0 = i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and1 = i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and2 = i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and3 = i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and4 = i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and3;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and5 = i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and4;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and6 = i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and5;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_and6;

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x(BLACKBOX,144)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_intel_reserved_ffwd_66_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_66_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_66_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_66_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_66_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_66_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_66_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_66_0_7_tpl@20000000
    loopback_i_llvm_fpga_ffwd_source_s_case_A000000Zloopback70_loopback0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x (
        .in_predicate_in(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_V0),
        .in_src_data_in_66_0_0_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_b),
        .in_src_data_in_66_0_1_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_b),
        .in_src_data_in_66_0_2_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_b),
        .in_src_data_in_66_0_3_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_b),
        .in_src_data_in_66_0_4_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_b),
        .in_src_data_in_66_0_5_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_b),
        .in_src_data_in_66_0_6_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_b),
        .in_src_data_in_66_0_7_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_b),
        .out_stall_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_valid_out),
        .out_intel_reserved_ffwd_66_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl),
        .out_intel_reserved_ffwd_66_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl),
        .out_intel_reserved_ffwd_66_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl),
        .out_intel_reserved_ffwd_66_0_3_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_3_tpl),
        .out_intel_reserved_ffwd_66_0_4_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_4_tpl),
        .out_intel_reserved_ffwd_66_0_5_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_5_tpl),
        .out_intel_reserved_ffwd_66_0_6_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_6_tpl),
        .out_intel_reserved_ffwd_66_0_7_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25(BITJOIN,215)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_q = i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_out_dest_data_out_24_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25(BITSELECT,216)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24(BITJOIN,212)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_q = i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_out_dest_data_out_23_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24(BITSELECT,213)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23(BITJOIN,209)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_q = i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_out_dest_data_out_22_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23(BITSELECT,210)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22(BITJOIN,206)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_q = i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_out_dest_data_out_21_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22(BITSELECT,207)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21(BITJOIN,203)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_q = i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_out_dest_data_out_20_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21(BITSELECT,204)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20(BITJOIN,200)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_q = i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_out_dest_data_out_19_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20(BITSELECT,201)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19(BITJOIN,197)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_q = i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_out_dest_data_out_18_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19(BITSELECT,198)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17(BITJOIN,194)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_q = i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_out_dest_data_out_17_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17(BITSELECT,195)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_q[15:0]);

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25(STALLENABLE,322)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_backStall = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and0 = i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and1 = i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and2 = i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and3 = i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and4 = i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and3;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and5 = i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and4;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and6 = i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and5;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_and6;

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x(BLACKBOX,145)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_intel_reserved_ffwd_67_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_67_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_67_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_67_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_67_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_67_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_67_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_67_0_7_tpl@20000000
    loopback_i_llvm_fpga_ffwd_source_s_case_A000000Zloopback71_loopback0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x (
        .in_predicate_in(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_V0),
        .in_src_data_in_67_0_0_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_b),
        .in_src_data_in_67_0_1_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_b),
        .in_src_data_in_67_0_2_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_b),
        .in_src_data_in_67_0_3_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_b),
        .in_src_data_in_67_0_4_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_b),
        .in_src_data_in_67_0_5_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_b),
        .in_src_data_in_67_0_6_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_b),
        .in_src_data_in_67_0_7_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_b),
        .out_stall_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_valid_out),
        .out_intel_reserved_ffwd_67_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl),
        .out_intel_reserved_ffwd_67_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl),
        .out_intel_reserved_ffwd_67_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl),
        .out_intel_reserved_ffwd_67_0_3_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_3_tpl),
        .out_intel_reserved_ffwd_67_0_4_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_4_tpl),
        .out_intel_reserved_ffwd_67_0_5_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_5_tpl),
        .out_intel_reserved_ffwd_67_0_6_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_6_tpl),
        .out_intel_reserved_ffwd_67_0_7_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34(BITJOIN,239)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_q = i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_out_dest_data_out_32_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34(BITSELECT,240)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33(BITJOIN,236)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_q = i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_out_dest_data_out_31_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33(BITSELECT,237)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32(BITJOIN,233)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_q = i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_out_dest_data_out_30_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32(BITSELECT,234)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31(BITJOIN,230)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_q = i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_out_dest_data_out_29_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31(BITSELECT,231)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30(BITJOIN,227)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_q = i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_out_dest_data_out_28_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30(BITSELECT,228)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29(BITJOIN,224)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_q = i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_out_dest_data_out_27_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29(BITSELECT,225)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28(BITJOIN,221)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_q = i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_out_dest_data_out_26_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28(BITSELECT,222)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_q[15:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26(BITJOIN,218)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_q = i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_out_dest_data_out_25_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26(BITSELECT,219)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_q[15:0]);

    // SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34(STALLENABLE,338)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_backStall = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and0 = i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and1 = i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and2 = i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and3 = i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and4 = i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and3;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and5 = i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and4;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and6 = i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and5;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_and6;

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x(BLACKBOX,146)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_intel_reserved_ffwd_68_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_68_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_68_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_68_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_68_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_68_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_68_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_68_0_7_tpl@20000000
    loopback_i_llvm_fpga_ffwd_source_s_case_A000000Zloopback72_loopback0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x (
        .in_predicate_in(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_V0),
        .in_src_data_in_68_0_0_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_b),
        .in_src_data_in_68_0_1_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_b),
        .in_src_data_in_68_0_2_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_b),
        .in_src_data_in_68_0_3_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_b),
        .in_src_data_in_68_0_4_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_b),
        .in_src_data_in_68_0_5_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_b),
        .in_src_data_in_68_0_6_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_b),
        .in_src_data_in_68_0_7_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_b),
        .out_stall_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_valid_out),
        .out_intel_reserved_ffwd_68_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl),
        .out_intel_reserved_ffwd_68_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl),
        .out_intel_reserved_ffwd_68_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl),
        .out_intel_reserved_ffwd_68_0_3_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_3_tpl),
        .out_intel_reserved_ffwd_68_0_4_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_4_tpl),
        .out_intel_reserved_ffwd_68_0_5_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_5_tpl),
        .out_intel_reserved_ffwd_68_0_6_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_6_tpl),
        .out_intel_reserved_ffwd_68_0_7_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x(STALLENABLE,350)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_and0 = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_and1 = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_and2 = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_and1;
    assign SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_wireValid = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_and2;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x(BLACKBOX,143)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_intel_reserved_ffwd_65_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_65_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_65_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_65_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_65_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_65_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_65_0_6_tpl@20000000
    loopback_i_llvm_fpga_ffwd_source_s_case_A000000Zloopback69_loopback0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x (
        .in_predicate_in(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_V0),
        .in_src_data_in_65_0_0_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_b),
        .in_src_data_in_65_0_1_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_b),
        .in_src_data_in_65_0_2_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_b),
        .in_src_data_in_65_0_3_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_b),
        .in_src_data_in_65_0_4_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_b),
        .in_src_data_in_65_0_5_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_b),
        .in_src_data_in_65_0_6_tpl(bubble_select_i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_b),
        .out_stall_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_valid_out),
        .out_intel_reserved_ffwd_65_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl),
        .out_intel_reserved_ffwd_65_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl),
        .out_intel_reserved_ffwd_65_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl),
        .out_intel_reserved_ffwd_65_0_3_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_3_tpl),
        .out_intel_reserved_ffwd_65_0_4_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_4_tpl),
        .out_intel_reserved_ffwd_65_0_5_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_5_tpl),
        .out_intel_reserved_ffwd_65_0_6_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0(STALLENABLE,340)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_backStall = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and0 = i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and1 = i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and2 = i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and3 = i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and4 = i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and3;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and5 = i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and4;
    assign SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_wireValid = i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_and5;

    // i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0(BLACKBOX,35)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_unnamed_68_loopback0 thei_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_backStall),
        .in_valid_in(SE_stall_entry_V30),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34(BLACKBOX,34)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select411611_0 thei_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34 (
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_backStall),
        .in_valid_in(SE_stall_entry_V29),
        .out_dest_data_out_32_0(i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_out_dest_data_out_32_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33(BLACKBOX,33)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select410610_0 thei_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33 (
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_backStall),
        .in_valid_in(SE_stall_entry_V28),
        .out_dest_data_out_31_0(i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_out_dest_data_out_31_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32(BLACKBOX,32)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select409609_0 thei_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32 (
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_backStall),
        .in_valid_in(SE_stall_entry_V27),
        .out_dest_data_out_30_0(i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_out_dest_data_out_30_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31(BLACKBOX,31)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select408608_0 thei_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31 (
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_backStall),
        .in_valid_in(SE_stall_entry_V26),
        .out_dest_data_out_29_0(i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_out_dest_data_out_29_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30(BLACKBOX,30)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select407607_0 thei_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30 (
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_backStall),
        .in_valid_in(SE_stall_entry_V25),
        .out_dest_data_out_28_0(i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_out_dest_data_out_28_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29(BLACKBOX,29)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select406606_0 thei_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29 (
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_backStall),
        .in_valid_in(SE_stall_entry_V24),
        .out_dest_data_out_27_0(i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_out_dest_data_out_27_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28(BLACKBOX,28)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select405605_0 thei_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28 (
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_backStall),
        .in_valid_in(SE_stall_entry_V23),
        .out_dest_data_out_26_0(i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_out_dest_data_out_26_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26(BLACKBOX,27)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select404604_0 thei_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26 (
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_backStall),
        .in_valid_in(SE_stall_entry_V22),
        .out_dest_data_out_25_0(i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_out_dest_data_out_25_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25(BLACKBOX,26)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select403603_0 thei_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25 (
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_backStall),
        .in_valid_in(SE_stall_entry_V21),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_out_dest_data_out_24_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24(BLACKBOX,25)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select402602_0 thei_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_backStall),
        .in_valid_in(SE_stall_entry_V20),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_out_dest_data_out_23_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23(BLACKBOX,24)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select401601_0 thei_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23 (
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_backStall),
        .in_valid_in(SE_stall_entry_V19),
        .out_dest_data_out_22_0(i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_out_dest_data_out_22_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22(BLACKBOX,23)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select400600_0 thei_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_backStall),
        .in_valid_in(SE_stall_entry_V18),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_out_dest_data_out_21_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21(BLACKBOX,22)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select399599_0 thei_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_backStall),
        .in_valid_in(SE_stall_entry_V17),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_out_dest_data_out_20_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20(BLACKBOX,21)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select398598_0 thei_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_backStall),
        .in_valid_in(SE_stall_entry_V16),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_out_dest_data_out_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19(BLACKBOX,20)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select397597_0 thei_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_backStall),
        .in_valid_in(SE_stall_entry_V15),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_out_dest_data_out_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select396596_0 thei_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_backStall),
        .in_valid_in(SE_stall_entry_V14),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_out_dest_data_out_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16(BLACKBOX,18)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select395595_0 thei_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_backStall),
        .in_valid_in(SE_stall_entry_V13),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_out_dest_data_out_16_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select394594_0 thei_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_backStall),
        .in_valid_in(SE_stall_entry_V12),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_out_dest_data_out_15_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14(BLACKBOX,16)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select393593_0 thei_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_backStall),
        .in_valid_in(SE_stall_entry_V11),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_out_dest_data_out_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13(BLACKBOX,15)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select392592_0 thei_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_backStall),
        .in_valid_in(SE_stall_entry_V10),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_out_dest_data_out_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12(BLACKBOX,14)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select391591_0 thei_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_backStall),
        .in_valid_in(SE_stall_entry_V9),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_out_dest_data_out_12_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select390590_0 thei_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_backStall),
        .in_valid_in(SE_stall_entry_V8),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_out_dest_data_out_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select389589_0 thei_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_backStall),
        .in_valid_in(SE_stall_entry_V7),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_out_dest_data_out_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select388588_0 thei_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_backStall),
        .in_valid_in(SE_stall_entry_V6),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_out_dest_data_out_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select387587_0 thei_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_backStall),
        .in_valid_in(SE_stall_entry_V5),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select386586_0 thei_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_backStall),
        .in_valid_in(SE_stall_entry_V4),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_out_dest_data_out_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select385585_0 thei_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_out_dest_data_out_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4(BLACKBOX,7)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select384584_0 thei_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_out_dest_data_out_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3(BLACKBOX,6)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select383583_0 thei_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2(BLACKBOX,5)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select382582_0 thei_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,341)
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
            SE_stall_entry_fromReg12 <= '0;
            SE_stall_entry_fromReg13 <= '0;
            SE_stall_entry_fromReg14 <= '0;
            SE_stall_entry_fromReg15 <= '0;
            SE_stall_entry_fromReg16 <= '0;
            SE_stall_entry_fromReg17 <= '0;
            SE_stall_entry_fromReg18 <= '0;
            SE_stall_entry_fromReg19 <= '0;
            SE_stall_entry_fromReg20 <= '0;
            SE_stall_entry_fromReg21 <= '0;
            SE_stall_entry_fromReg22 <= '0;
            SE_stall_entry_fromReg23 <= '0;
            SE_stall_entry_fromReg24 <= '0;
            SE_stall_entry_fromReg25 <= '0;
            SE_stall_entry_fromReg26 <= '0;
            SE_stall_entry_fromReg27 <= '0;
            SE_stall_entry_fromReg28 <= '0;
            SE_stall_entry_fromReg29 <= '0;
            SE_stall_entry_fromReg30 <= '0;
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
            // Successor 12
            SE_stall_entry_fromReg12 <= SE_stall_entry_toReg12;
            // Successor 13
            SE_stall_entry_fromReg13 <= SE_stall_entry_toReg13;
            // Successor 14
            SE_stall_entry_fromReg14 <= SE_stall_entry_toReg14;
            // Successor 15
            SE_stall_entry_fromReg15 <= SE_stall_entry_toReg15;
            // Successor 16
            SE_stall_entry_fromReg16 <= SE_stall_entry_toReg16;
            // Successor 17
            SE_stall_entry_fromReg17 <= SE_stall_entry_toReg17;
            // Successor 18
            SE_stall_entry_fromReg18 <= SE_stall_entry_toReg18;
            // Successor 19
            SE_stall_entry_fromReg19 <= SE_stall_entry_toReg19;
            // Successor 20
            SE_stall_entry_fromReg20 <= SE_stall_entry_toReg20;
            // Successor 21
            SE_stall_entry_fromReg21 <= SE_stall_entry_toReg21;
            // Successor 22
            SE_stall_entry_fromReg22 <= SE_stall_entry_toReg22;
            // Successor 23
            SE_stall_entry_fromReg23 <= SE_stall_entry_toReg23;
            // Successor 24
            SE_stall_entry_fromReg24 <= SE_stall_entry_toReg24;
            // Successor 25
            SE_stall_entry_fromReg25 <= SE_stall_entry_toReg25;
            // Successor 26
            SE_stall_entry_fromReg26 <= SE_stall_entry_toReg26;
            // Successor 27
            SE_stall_entry_fromReg27 <= SE_stall_entry_toReg27;
            // Successor 28
            SE_stall_entry_fromReg28 <= SE_stall_entry_toReg28;
            // Successor 29
            SE_stall_entry_fromReg29 <= SE_stall_entry_toReg29;
            // Successor 30
            SE_stall_entry_fromReg30 <= SE_stall_entry_toReg30;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select382582_loopback2_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select383583_loopback3_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select384584_loopback4_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select385585_loopback5_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select386586_loopback6_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select387587_loopback7_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    assign SE_stall_entry_consumed6 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select388588_loopback8_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg6;
    assign SE_stall_entry_consumed7 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select389589_loopback10_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg7;
    assign SE_stall_entry_consumed8 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select390590_loopback11_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg8;
    assign SE_stall_entry_consumed9 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select391591_loopback12_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg9;
    assign SE_stall_entry_consumed10 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select392592_loopback13_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg10;
    assign SE_stall_entry_consumed11 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select393593_loopback14_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg11;
    assign SE_stall_entry_consumed12 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select394594_loopback15_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg12;
    assign SE_stall_entry_consumed13 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select395595_loopback16_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg13;
    assign SE_stall_entry_consumed14 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select396596_loopback17_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg14;
    assign SE_stall_entry_consumed15 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select397597_loopback19_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg15;
    assign SE_stall_entry_consumed16 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select398598_loopback20_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg16;
    assign SE_stall_entry_consumed17 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select399599_loopback21_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg17;
    assign SE_stall_entry_consumed18 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select400600_loopback22_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg18;
    assign SE_stall_entry_consumed19 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select401601_loopback23_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg19;
    assign SE_stall_entry_consumed20 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select402602_loopback24_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg20;
    assign SE_stall_entry_consumed21 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select403603_loopback25_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg21;
    assign SE_stall_entry_consumed22 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select404604_loopback26_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg22;
    assign SE_stall_entry_consumed23 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select405605_loopback28_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg23;
    assign SE_stall_entry_consumed24 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select406606_loopback29_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg24;
    assign SE_stall_entry_consumed25 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select407607_loopback30_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg25;
    assign SE_stall_entry_consumed26 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select408608_loopback31_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg26;
    assign SE_stall_entry_consumed27 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select409609_loopback32_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg27;
    assign SE_stall_entry_consumed28 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select410610_loopback33_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg28;
    assign SE_stall_entry_consumed29 = (~ (i_llvm_fpga_ffwd_dest_i16_spec_select411611_loopback34_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg29;
    assign SE_stall_entry_consumed30 = (~ (i_llvm_fpga_ffwd_dest_i16_unnamed_loopback68_loopback0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg30;
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
    assign SE_stall_entry_toReg12 = SE_stall_entry_StallValid & SE_stall_entry_consumed12;
    assign SE_stall_entry_toReg13 = SE_stall_entry_StallValid & SE_stall_entry_consumed13;
    assign SE_stall_entry_toReg14 = SE_stall_entry_StallValid & SE_stall_entry_consumed14;
    assign SE_stall_entry_toReg15 = SE_stall_entry_StallValid & SE_stall_entry_consumed15;
    assign SE_stall_entry_toReg16 = SE_stall_entry_StallValid & SE_stall_entry_consumed16;
    assign SE_stall_entry_toReg17 = SE_stall_entry_StallValid & SE_stall_entry_consumed17;
    assign SE_stall_entry_toReg18 = SE_stall_entry_StallValid & SE_stall_entry_consumed18;
    assign SE_stall_entry_toReg19 = SE_stall_entry_StallValid & SE_stall_entry_consumed19;
    assign SE_stall_entry_toReg20 = SE_stall_entry_StallValid & SE_stall_entry_consumed20;
    assign SE_stall_entry_toReg21 = SE_stall_entry_StallValid & SE_stall_entry_consumed21;
    assign SE_stall_entry_toReg22 = SE_stall_entry_StallValid & SE_stall_entry_consumed22;
    assign SE_stall_entry_toReg23 = SE_stall_entry_StallValid & SE_stall_entry_consumed23;
    assign SE_stall_entry_toReg24 = SE_stall_entry_StallValid & SE_stall_entry_consumed24;
    assign SE_stall_entry_toReg25 = SE_stall_entry_StallValid & SE_stall_entry_consumed25;
    assign SE_stall_entry_toReg26 = SE_stall_entry_StallValid & SE_stall_entry_consumed26;
    assign SE_stall_entry_toReg27 = SE_stall_entry_StallValid & SE_stall_entry_consumed27;
    assign SE_stall_entry_toReg28 = SE_stall_entry_StallValid & SE_stall_entry_consumed28;
    assign SE_stall_entry_toReg29 = SE_stall_entry_StallValid & SE_stall_entry_consumed29;
    assign SE_stall_entry_toReg30 = SE_stall_entry_StallValid & SE_stall_entry_consumed30;
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
    assign SE_stall_entry_or11 = SE_stall_entry_consumed11 & SE_stall_entry_or10;
    assign SE_stall_entry_or12 = SE_stall_entry_consumed12 & SE_stall_entry_or11;
    assign SE_stall_entry_or13 = SE_stall_entry_consumed13 & SE_stall_entry_or12;
    assign SE_stall_entry_or14 = SE_stall_entry_consumed14 & SE_stall_entry_or13;
    assign SE_stall_entry_or15 = SE_stall_entry_consumed15 & SE_stall_entry_or14;
    assign SE_stall_entry_or16 = SE_stall_entry_consumed16 & SE_stall_entry_or15;
    assign SE_stall_entry_or17 = SE_stall_entry_consumed17 & SE_stall_entry_or16;
    assign SE_stall_entry_or18 = SE_stall_entry_consumed18 & SE_stall_entry_or17;
    assign SE_stall_entry_or19 = SE_stall_entry_consumed19 & SE_stall_entry_or18;
    assign SE_stall_entry_or20 = SE_stall_entry_consumed20 & SE_stall_entry_or19;
    assign SE_stall_entry_or21 = SE_stall_entry_consumed21 & SE_stall_entry_or20;
    assign SE_stall_entry_or22 = SE_stall_entry_consumed22 & SE_stall_entry_or21;
    assign SE_stall_entry_or23 = SE_stall_entry_consumed23 & SE_stall_entry_or22;
    assign SE_stall_entry_or24 = SE_stall_entry_consumed24 & SE_stall_entry_or23;
    assign SE_stall_entry_or25 = SE_stall_entry_consumed25 & SE_stall_entry_or24;
    assign SE_stall_entry_or26 = SE_stall_entry_consumed26 & SE_stall_entry_or25;
    assign SE_stall_entry_or27 = SE_stall_entry_consumed27 & SE_stall_entry_or26;
    assign SE_stall_entry_or28 = SE_stall_entry_consumed28 & SE_stall_entry_or27;
    assign SE_stall_entry_or29 = SE_stall_entry_consumed29 & SE_stall_entry_or28;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed30 & SE_stall_entry_or29);
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
    assign SE_stall_entry_V12 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg12);
    assign SE_stall_entry_V13 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg13);
    assign SE_stall_entry_V14 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg14);
    assign SE_stall_entry_V15 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg15);
    assign SE_stall_entry_V16 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg16);
    assign SE_stall_entry_V17 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg17);
    assign SE_stall_entry_V18 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg18);
    assign SE_stall_entry_V19 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg19);
    assign SE_stall_entry_V20 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg20);
    assign SE_stall_entry_V21 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg21);
    assign SE_stall_entry_V22 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg22);
    assign SE_stall_entry_V23 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg23);
    assign SE_stall_entry_V24 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg24);
    assign SE_stall_entry_V25 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg25);
    assign SE_stall_entry_V26 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg26);
    assign SE_stall_entry_V27 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg27);
    assign SE_stall_entry_V28 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg28);
    assign SE_stall_entry_V29 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg29);
    assign SE_stall_entry_V30 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg30);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,140)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_sync_out_x(GPOUT,142)@0
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_V0;

    // regfree_osync_aunroll_x(GPOUT,147)
    assign out_intel_reserved_ffwd_65_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl;
    assign out_intel_reserved_ffwd_65_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl;
    assign out_intel_reserved_ffwd_65_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl;
    assign out_intel_reserved_ffwd_65_0_3_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_3_tpl;
    assign out_intel_reserved_ffwd_65_0_4_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_4_tpl;
    assign out_intel_reserved_ffwd_65_0_5_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_5_tpl;
    assign out_intel_reserved_ffwd_65_0_6_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_5s_unnamed_loopback69_loopback35_aunroll_x_out_intel_reserved_ffwd_65_0_6_tpl;

    // dupName_0_regfree_osync_aunroll_x(GPOUT,148)
    assign out_intel_reserved_ffwd_66_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl;
    assign out_intel_reserved_ffwd_66_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl;
    assign out_intel_reserved_ffwd_66_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl;
    assign out_intel_reserved_ffwd_66_0_3_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_3_tpl;
    assign out_intel_reserved_ffwd_66_0_4_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_4_tpl;
    assign out_intel_reserved_ffwd_66_0_5_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_5_tpl;
    assign out_intel_reserved_ffwd_66_0_6_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_6_tpl;
    assign out_intel_reserved_ffwd_66_0_7_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback70_loopback36_aunroll_x_out_intel_reserved_ffwd_66_0_7_tpl;

    // dupName_1_regfree_osync_aunroll_x(GPOUT,149)
    assign out_intel_reserved_ffwd_67_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl;
    assign out_intel_reserved_ffwd_67_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl;
    assign out_intel_reserved_ffwd_67_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl;
    assign out_intel_reserved_ffwd_67_0_3_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_3_tpl;
    assign out_intel_reserved_ffwd_67_0_4_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_4_tpl;
    assign out_intel_reserved_ffwd_67_0_5_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_5_tpl;
    assign out_intel_reserved_ffwd_67_0_6_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_6_tpl;
    assign out_intel_reserved_ffwd_67_0_7_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback71_loopback37_aunroll_x_out_intel_reserved_ffwd_67_0_7_tpl;

    // dupName_2_regfree_osync_aunroll_x(GPOUT,150)
    assign out_intel_reserved_ffwd_68_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl;
    assign out_intel_reserved_ffwd_68_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl;
    assign out_intel_reserved_ffwd_68_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl;
    assign out_intel_reserved_ffwd_68_0_3_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_3_tpl;
    assign out_intel_reserved_ffwd_68_0_4_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_4_tpl;
    assign out_intel_reserved_ffwd_68_0_5_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_5_tpl;
    assign out_intel_reserved_ffwd_68_0_6_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_6_tpl;
    assign out_intel_reserved_ffwd_68_0_7_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_loopback_fpgaunique_6s_unnamed_loopback72_loopback38_aunroll_x_out_intel_reserved_ffwd_68_0_7_tpl;

endmodule
