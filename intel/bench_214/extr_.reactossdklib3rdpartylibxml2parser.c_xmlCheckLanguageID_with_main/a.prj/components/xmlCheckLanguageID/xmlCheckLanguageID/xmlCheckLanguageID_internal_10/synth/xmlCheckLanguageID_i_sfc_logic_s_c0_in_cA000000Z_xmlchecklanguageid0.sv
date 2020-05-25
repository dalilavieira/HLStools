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

// SystemVerilog created from xmlCheckLanguageID_i_sfc_logic_s_c0_in_cA000000Z_xmlchecklanguageid0
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_i_sfc_logic_s_c0_in_cA000000Z_xmlchecklanguageid0 (
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [0:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_intel_reserved_ffwd_16_0,
    input wire [0:0] in_intel_reserved_ffwd_17_0,
    input wire [0:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_33_0,
    input wire [0:0] in_intel_reserved_ffwd_35_0,
    input wire [0:0] in_intel_reserved_ffwd_50_0,
    input wire [0:0] in_intel_reserved_ffwd_51_0,
    input wire [0:0] in_intel_reserved_ffwd_52_0,
    input wire [0:0] in_intel_reserved_ffwd_59_0,
    input wire [0:0] in_intel_reserved_ffwd_62_0,
    input wire [0:0] in_intel_reserved_ffwd_69_0,
    input wire [0:0] in_intel_reserved_ffwd_70_0,
    input wire [0:0] in_intel_reserved_ffwd_73_0,
    input wire [0:0] in_intel_reserved_ffwd_74_0,
    input wire [0:0] in_intel_reserved_ffwd_79_0,
    input wire [0:0] in_intel_reserved_ffwd_80_0,
    input wire [0:0] in_intel_reserved_ffwd_9_0,
    output wire [0:0] out_c0_exi1258_0_tpl,
    output wire [31:0] out_c0_exi1258_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_xmlCheckLanguageID7,
    input wire [0:0] in_c0_eni7_0_tpl,
    input wire [0:0] in_c0_eni7_1_tpl,
    input wire [0:0] in_c0_eni7_2_tpl,
    input wire [0:0] in_c0_eni7_3_tpl,
    input wire [0:0] in_c0_eni7_4_tpl,
    input wire [0:0] in_c0_eni7_5_tpl,
    input wire [0:0] in_c0_eni7_6_tpl,
    input wire [0:0] in_c0_eni7_7_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_cmp68_phi_decision1526_replace_phi_xmlchecklanguageid26_s;
    reg [0:0] i_cmp68_phi_decision1526_replace_phi_xmlchecklanguageid26_q;
    wire [0:0] i_cmp84_phi_decision63_replace_phi_xmlchecklanguageid22_s;
    reg [0:0] i_cmp84_phi_decision63_replace_phi_xmlchecklanguageid22_q;
    wire [0:0] i_cmp84_phi_decision63_select1030_xmlchecklanguageid47_s;
    reg [0:0] i_cmp84_phi_decision63_select1030_xmlchecklanguageid47_q;
    wire [0:0] i_cmp84_phi_decision63_select1117_xmlchecklanguageid43_s;
    reg [0:0] i_cmp84_phi_decision63_select1117_xmlchecklanguageid43_q;
    wire [0:0] i_cmp84_phi_decision63_select1558_xmlchecklanguageid34_q;
    wire [0:0] i_cmp84_phi_decision63_select301_xmlchecklanguageid100_s;
    reg [0:0] i_cmp84_phi_decision63_select301_xmlchecklanguageid100_q;
    wire [0:0] i_cmp84_phi_decision63_select321_xmlchecklanguageid95_s;
    reg [0:0] i_cmp84_phi_decision63_select321_xmlchecklanguageid95_q;
    wire [0:0] i_cmp84_phi_decision63_select653_xmlchecklanguageid78_s;
    reg [0:0] i_cmp84_phi_decision63_select653_xmlchecklanguageid78_q;
    wire [0:0] i_cmp84_phi_decision63_select694_xmlchecklanguageid73_s;
    reg [0:0] i_cmp84_phi_decision63_select694_xmlchecklanguageid73_q;
    wire [0:0] i_cmp84_phi_decision63_select82_xmlchecklanguageid106_s;
    reg [0:0] i_cmp84_phi_decision63_select82_xmlchecklanguageid106_q;
    wire [0:0] i_cmp84_phi_decision63_select868_xmlchecklanguageid58_s;
    reg [0:0] i_cmp84_phi_decision63_select868_xmlchecklanguageid58_q;
    wire [0:0] i_cmp84_phi_decision63_select936_xmlchecklanguageid54_s;
    reg [0:0] i_cmp84_phi_decision63_select936_xmlchecklanguageid54_q;
    wire [0:0] i_cmp84_phi_decision63_select_xmlchecklanguageid120_s;
    reg [0:0] i_cmp84_phi_decision63_select_xmlchecklanguageid120_q;
    wire [0:0] i_cmp_phi_decision11_replace_phi_xmlchecklanguageid30_s;
    reg [0:0] i_cmp_phi_decision11_replace_phi_xmlchecklanguageid30_q;
    wire [0:0] i_cmp_phi_decision11_select68_not_xmlchecklanguageid125_q;
    wire [0:0] i_cmp_phi_decision11_select78_not_xmlchecklanguageid124_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp35_xmlchecklanguageid29_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp4442_xmlchecklanguageid27_out_dest_data_out_9_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp6855_xmlchecklanguageid25_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8459_xmlchecklanguageid21_out_dest_data_out_16_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_narrow113_xmlchecklanguageid2_out_dest_data_out_80_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_narrow13357_xmlchecklanguageid24_out_dest_data_out_15_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision1222_select103_xmlchecklanguageid8_out_dest_data_out_69_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision314_select92_xmlchecklanguageid11_out_dest_data_out_59_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision811_select104_xmlchecklanguageid7_out_dest_data_out_70_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1686_xmlchecklanguageid14_out_dest_data_out_50_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid149_xmlchecklanguageid3_out_dest_data_out_79_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid150_xmlchecklanguageid5_out_dest_data_out_74_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid151_xmlchecklanguageid6_out_dest_data_out_73_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid152_xmlchecklanguageid10_out_dest_data_out_62_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid153_xmlchecklanguageid12_out_dest_data_out_52_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid154_xmlchecklanguageid13_out_dest_data_out_51_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid155_xmlchecklanguageid15_out_dest_data_out_35_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid156_xmlchecklanguageid16_out_dest_data_out_33_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid157_xmlchecklanguageid17_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid158_xmlchecklanguageid18_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0;
    wire [0:0] i_not_cmp68_phi_decision1526_xmlchecklanguageid32_q;
    wire [0:0] i_not_cmp84_phi_decision63_select1804_xmlchecklanguageid122_q;
    wire [0:0] i_not_phi_decision1025_select_xmlchecklanguageid44_q;
    wire [0:0] i_not_phi_decision296_select_xmlchecklanguageid101_q;
    wire [0:0] i_not_phi_decision620_select_xmlchecklanguageid81_q;
    wire [0:0] i_not_phi_decision648_select_xmlchecklanguageid79_q;
    wire [0:0] i_not_phi_decision812_select_xmlchecklanguageid61_q;
    wire [0:0] i_not_phi_decision863_select_xmlchecklanguageid59_q;
    wire [0:0] i_not_phi_decision929_select6_xmlchecklanguageid49_q;
    wire [0:0] i_phi_decision1025_replace_phi_xmlchecklanguageid4_s;
    reg [0:0] i_phi_decision1025_replace_phi_xmlchecklanguageid4_q;
    wire [0:0] i_phi_decision1112_select_xmlchecklanguageid36_q;
    wire [0:0] i_phi_decision1226_replace_phi_xmlchecklanguageid9_s;
    reg [0:0] i_phi_decision1226_replace_phi_xmlchecklanguageid9_q;
    wire [0:0] i_phi_decision1226_select_xmlchecklanguageid31_q;
    wire [0:0] i_phi_decision285_select636_xmlchecklanguageid86_q;
    wire [0:0] i_phi_decision285_select_xmlchecklanguageid97_qi;
    reg [0:0] i_phi_decision285_select_xmlchecklanguageid97_q;
    wire [0:0] i_phi_decision296_select641_xmlchecklanguageid84_q;
    wire [0:0] i_phi_decision296_select_xmlchecklanguageid85_qi;
    reg [0:0] i_phi_decision296_select_xmlchecklanguageid85_q;
    wire [0:0] i_phi_decision315_select671_not_xmlchecklanguageid83_q;
    wire [0:0] i_phi_decision315_select671_xmlchecklanguageid76_q;
    wire [0:0] i_phi_decision620_select847_xmlchecklanguageid66_q;
    wire [0:0] i_phi_decision620_select_xmlchecklanguageid75_q;
    wire [0:0] i_phi_decision648_select854_xmlchecklanguageid64_q;
    wire [0:0] i_phi_decision648_select_xmlchecklanguageid65_q;
    wire [0:0] i_phi_decision66_replace_phi_xmlchecklanguageid19_s;
    reg [0:0] i_phi_decision66_replace_phi_xmlchecklanguageid19_q;
    wire [0:0] i_phi_decision66_select1033_xmlchecklanguageid46_s;
    reg [0:0] i_phi_decision66_select1033_xmlchecklanguageid46_q;
    wire [0:0] i_phi_decision66_select1120_xmlchecklanguageid42_s;
    reg [0:0] i_phi_decision66_select1120_xmlchecklanguageid42_q;
    wire [0:0] i_phi_decision66_select1559_xmlchecklanguageid33_q;
    wire [0:0] i_phi_decision66_select304_xmlchecklanguageid99_s;
    reg [0:0] i_phi_decision66_select304_xmlchecklanguageid99_q;
    wire [0:0] i_phi_decision66_select325_xmlchecklanguageid94_s;
    reg [0:0] i_phi_decision66_select325_xmlchecklanguageid94_q;
    wire [0:0] i_phi_decision66_select656_xmlchecklanguageid77_s;
    reg [0:0] i_phi_decision66_select656_xmlchecklanguageid77_q;
    wire [0:0] i_phi_decision66_select698_xmlchecklanguageid72_s;
    reg [0:0] i_phi_decision66_select698_xmlchecklanguageid72_q;
    wire [0:0] i_phi_decision66_select871_xmlchecklanguageid57_s;
    reg [0:0] i_phi_decision66_select871_xmlchecklanguageid57_q;
    wire [0:0] i_phi_decision66_select941_xmlchecklanguageid53_s;
    reg [0:0] i_phi_decision66_select941_xmlchecklanguageid53_q;
    wire [0:0] i_phi_decision66_select_xmlchecklanguageid105_s;
    reg [0:0] i_phi_decision66_select_xmlchecklanguageid105_q;
    wire [0:0] i_phi_decision688_select1173_xmlchecklanguageid41_qi;
    reg [0:0] i_phi_decision688_select1173_xmlchecklanguageid41_q;
    wire [0:0] i_phi_decision688_select909_not_xmlchecklanguageid63_q;
    wire [0:0] i_phi_decision688_select909_xmlchecklanguageid56_q;
    wire [0:0] i_phi_decision688_select979_xmlchecklanguageid52_q;
    wire [0:0] i_phi_decision76_select306_xmlchecklanguageid98_q;
    wire [0:0] i_phi_decision812_select_xmlchecklanguageid55_q;
    wire [0:0] i_phi_decision863_select1091_xmlchecklanguageid50_qi;
    reg [0:0] i_phi_decision863_select1091_xmlchecklanguageid50_q;
    wire [0:0] i_phi_decision863_select_xmlchecklanguageid51_q;
    wire [0:0] i_phi_decision929_select_xmlchecklanguageid45_q;
    wire [0:0] i_reduction_xmlchecklanguageid_47_xmlchecklanguageid38_q;
    wire [0:0] i_reduction_xmlchecklanguageid_48_xmlchecklanguageid39_q;
    wire [0:0] i_reduction_xmlchecklanguageid_49_xmlchecklanguageid40_q;
    wire [0:0] i_reduction_xmlchecklanguageid_50_xmlchecklanguageid67_q;
    wire [0:0] i_reduction_xmlchecklanguageid_51_xmlchecklanguageid68_q;
    wire [0:0] i_reduction_xmlchecklanguageid_52_xmlchecklanguageid69_q;
    wire [0:0] i_reduction_xmlchecklanguageid_53_xmlchecklanguageid70_q;
    wire [0:0] i_reduction_xmlchecklanguageid_54_xmlchecklanguageid71_q;
    wire [0:0] i_reduction_xmlchecklanguageid_55_xmlchecklanguageid87_q;
    wire [0:0] i_reduction_xmlchecklanguageid_57_xmlchecklanguageid88_q;
    wire [0:0] i_reduction_xmlchecklanguageid_58_xmlchecklanguageid89_q;
    wire [0:0] i_reduction_xmlchecklanguageid_59_xmlchecklanguageid90_q;
    wire [0:0] i_reduction_xmlchecklanguageid_60_xmlchecklanguageid91_qi;
    reg [0:0] i_reduction_xmlchecklanguageid_60_xmlchecklanguageid91_q;
    wire [0:0] i_reduction_xmlchecklanguageid_61_xmlchecklanguageid92_qi;
    reg [0:0] i_reduction_xmlchecklanguageid_61_xmlchecklanguageid92_q;
    wire [0:0] i_reduction_xmlchecklanguageid_62_xmlchecklanguageid93_q;
    wire [0:0] i_reduction_xmlchecklanguageid_63_xmlchecklanguageid107_q;
    wire [0:0] i_reduction_xmlchecklanguageid_64_xmlchecklanguageid108_q;
    wire [0:0] i_reduction_xmlchecklanguageid_65_xmlchecklanguageid109_q;
    wire [0:0] i_reduction_xmlchecklanguageid_66_xmlchecklanguageid110_q;
    wire [0:0] i_reduction_xmlchecklanguageid_67_xmlchecklanguageid111_qi;
    reg [0:0] i_reduction_xmlchecklanguageid_67_xmlchecklanguageid111_q;
    wire [0:0] i_reduction_xmlchecklanguageid_68_xmlchecklanguageid112_qi;
    reg [0:0] i_reduction_xmlchecklanguageid_68_xmlchecklanguageid112_q;
    wire [0:0] i_reduction_xmlchecklanguageid_69_xmlchecklanguageid113_q;
    wire [0:0] i_reduction_xmlchecklanguageid_70_xmlchecklanguageid114_qi;
    reg [0:0] i_reduction_xmlchecklanguageid_70_xmlchecklanguageid114_q;
    wire [0:0] i_reduction_xmlchecklanguageid_71_xmlchecklanguageid115_q;
    wire [0:0] i_reduction_xmlchecklanguageid_72_xmlchecklanguageid116_qi;
    reg [0:0] i_reduction_xmlchecklanguageid_72_xmlchecklanguageid116_q;
    wire [0:0] i_reduction_xmlchecklanguageid_73_xmlchecklanguageid117_q;
    wire [0:0] i_reduction_xmlchecklanguageid_74_xmlchecklanguageid118_q;
    wire [0:0] i_retval_0_shrunk_replace_phi_xmlchecklanguageid28_s;
    reg [0:0] i_retval_0_shrunk_replace_phi_xmlchecklanguageid28_q;
    wire [0:0] i_retval_0_shrunk_select1026_xmlchecklanguageid48_q;
    wire [0:0] i_retval_0_shrunk_select1227_xmlchecklanguageid37_qi;
    reg [0:0] i_retval_0_shrunk_select1227_xmlchecklanguageid37_q;
    wire [0:0] i_retval_0_shrunk_select1556_xmlchecklanguageid35_s;
    reg [0:0] i_retval_0_shrunk_select1556_xmlchecklanguageid35_q;
    wire [0:0] i_retval_0_shrunk_select286_xmlchecklanguageid103_q;
    wire [0:0] i_retval_0_shrunk_select297_xmlchecklanguageid102_q;
    wire [0:0] i_retval_0_shrunk_select316_xmlchecklanguageid96_qi;
    reg [0:0] i_retval_0_shrunk_select316_xmlchecklanguageid96_q;
    wire [0:0] i_retval_0_shrunk_select621_xmlchecklanguageid82_q;
    wire [0:0] i_retval_0_shrunk_select649_xmlchecklanguageid80_q;
    wire [0:0] i_retval_0_shrunk_select64_xmlchecklanguageid123_q;
    wire [0:0] i_retval_0_shrunk_select67_xmlchecklanguageid121_q;
    wire [0:0] i_retval_0_shrunk_select689_xmlchecklanguageid74_q;
    wire [0:0] i_retval_0_shrunk_select77_xmlchecklanguageid119_q;
    wire [0:0] i_retval_0_shrunk_select813_xmlchecklanguageid62_q;
    wire [0:0] i_retval_0_shrunk_select864_xmlchecklanguageid60_q;
    wire [0:0] i_retval_0_shrunk_select_xmlchecklanguageid126_q;
    wire [30:0] i_retval_0_xmlchecklanguageid127_vt_const_31_q;
    wire [31:0] i_retval_0_xmlchecklanguageid127_vt_join_q;
    wire [0:0] i_retval_0_xmlchecklanguageid127_vt_select_0_b;
    wire [0:0] i_unnamed_xmlchecklanguageid104_q;
    wire [31:0] i_retval_0_xmlchecklanguageid127_sel_x_b;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [0:0] redist1_sync_together174_aunroll_x_in_c0_eni7_1_tpl_1_q;
    reg [0:0] redist2_sync_together174_aunroll_x_in_c0_eni7_2_tpl_1_q;
    reg [0:0] redist3_sync_together174_aunroll_x_in_c0_eni7_3_tpl_1_q;
    reg [0:0] redist4_sync_together174_aunroll_x_in_c0_eni7_4_tpl_1_q;
    reg [0:0] redist5_sync_together174_aunroll_x_in_c0_eni7_5_tpl_1_q;
    reg [0:0] redist6_sync_together174_aunroll_x_in_c0_eni7_6_tpl_1_q;
    reg [0:0] redist7_sync_together174_aunroll_x_in_c0_eni7_7_tpl_1_q;
    reg [0:0] redist8_sync_together174_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist9_i_phi_decision1226_select_xmlchecklanguageid31_q_1_q;
    reg [0:0] redist10_i_phi_decision1112_select_xmlchecklanguageid36_q_1_q;
    reg [0:0] redist11_i_not_phi_decision929_select6_xmlchecklanguageid49_q_1_q;
    reg [0:0] redist12_i_not_phi_decision1025_select_xmlchecklanguageid44_q_1_q;
    reg [0:0] redist13_i_not_cmp68_phi_decision1526_xmlchecklanguageid32_q_1_q;
    reg [0:0] redist14_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_1_q;
    reg [0:0] redist15_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_2_q;
    reg [0:0] redist16_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_1_q;
    reg [0:0] redist17_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_2_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist8_sync_together174_aunroll_x_in_i_valid_1(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together174_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist8_sync_together174_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,178)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist8_sync_together174_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // i_retval_0_xmlchecklanguageid127_vt_const_31(CONSTANT,150)
    assign i_retval_0_xmlchecklanguageid127_vt_const_31_q = $unsigned(31'b0000000000000000000000000000000);

    // valid_fanout_reg7(REG,185)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid152_xmlchecklanguageid10(BLACKBOX,55)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000137Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid152_xmlchecklanguageid10 (
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_62_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid152_xmlchecklanguageid10_out_dest_data_out_62_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,184)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_phi_decision1222_select103_xmlchecklanguageid8(BLACKBOX,48)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000130Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_phi_decision1222_select103_xmlchecklanguageid8 (
        .in_intel_reserved_ffwd_69_0(in_intel_reserved_ffwd_69_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_69_0(i_llvm_fpga_ffwd_dest_i1_phi_decision1222_select103_xmlchecklanguageid8_out_dest_data_out_69_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together174_aunroll_x_in_c0_eni7_2_tpl_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together174_aunroll_x_in_c0_eni7_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together174_aunroll_x_in_c0_eni7_2_tpl_1_q <= $unsigned(in_c0_eni7_2_tpl);
        end
    end

    // i_phi_decision1226_replace_phi_xmlchecklanguageid9(MUX,74)@2
    assign i_phi_decision1226_replace_phi_xmlchecklanguageid9_s = redist2_sync_together174_aunroll_x_in_c0_eni7_2_tpl_1_q;
    always @(i_phi_decision1226_replace_phi_xmlchecklanguageid9_s or VCC_q or i_llvm_fpga_ffwd_dest_i1_phi_decision1222_select103_xmlchecklanguageid8_out_dest_data_out_69_0)
    begin
        unique case (i_phi_decision1226_replace_phi_xmlchecklanguageid9_s)
            1'b0 : i_phi_decision1226_replace_phi_xmlchecklanguageid9_q = VCC_q;
            1'b1 : i_phi_decision1226_replace_phi_xmlchecklanguageid9_q = i_llvm_fpga_ffwd_dest_i1_phi_decision1222_select103_xmlchecklanguageid8_out_dest_data_out_69_0;
            default : i_phi_decision1226_replace_phi_xmlchecklanguageid9_q = 1'b0;
        endcase
    end

    // valid_fanout_reg20(REG,198)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp6855_xmlchecklanguageid25(BLACKBOX,43)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000125Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_cmp6855_xmlchecklanguageid25 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i1_cmp6855_xmlchecklanguageid25_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together174_aunroll_x_in_c0_eni7_5_tpl_1(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together174_aunroll_x_in_c0_eni7_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together174_aunroll_x_in_c0_eni7_5_tpl_1_q <= $unsigned(in_c0_eni7_5_tpl);
        end
    end

    // i_cmp68_phi_decision1526_replace_phi_xmlchecklanguageid26(MUX,25)@2
    assign i_cmp68_phi_decision1526_replace_phi_xmlchecklanguageid26_s = redist5_sync_together174_aunroll_x_in_c0_eni7_5_tpl_1_q;
    always @(i_cmp68_phi_decision1526_replace_phi_xmlchecklanguageid26_s or GND_q or i_llvm_fpga_ffwd_dest_i1_cmp6855_xmlchecklanguageid25_out_dest_data_out_14_0)
    begin
        unique case (i_cmp68_phi_decision1526_replace_phi_xmlchecklanguageid26_s)
            1'b0 : i_cmp68_phi_decision1526_replace_phi_xmlchecklanguageid26_q = GND_q;
            1'b1 : i_cmp68_phi_decision1526_replace_phi_xmlchecklanguageid26_q = i_llvm_fpga_ffwd_dest_i1_cmp6855_xmlchecklanguageid25_out_dest_data_out_14_0;
            default : i_cmp68_phi_decision1526_replace_phi_xmlchecklanguageid26_q = 1'b0;
        endcase
    end

    // i_phi_decision1226_select_xmlchecklanguageid31(LOGICAL,75)@2
    assign i_phi_decision1226_select_xmlchecklanguageid31_q = i_cmp68_phi_decision1526_replace_phi_xmlchecklanguageid26_q | i_phi_decision1226_replace_phi_xmlchecklanguageid9_q;

    // i_phi_decision1112_select_xmlchecklanguageid36(LOGICAL,73)@2
    assign i_phi_decision1112_select_xmlchecklanguageid36_q = i_phi_decision1226_select_xmlchecklanguageid31_q | i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid152_xmlchecklanguageid10_out_dest_data_out_62_0;

    // redist10_i_phi_decision1112_select_xmlchecklanguageid36_q_1(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_phi_decision1112_select_xmlchecklanguageid36_q_1_q <= '0;
        end
        else
        begin
            redist10_i_phi_decision1112_select_xmlchecklanguageid36_q_1_q <= $unsigned(i_phi_decision1112_select_xmlchecklanguageid36_q);
        end
    end

    // valid_fanout_reg9(REG,187)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid153_xmlchecklanguageid12(BLACKBOX,56)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000138Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid153_xmlchecklanguageid12 (
        .in_intel_reserved_ffwd_52_0(in_intel_reserved_ffwd_52_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_52_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid153_xmlchecklanguageid12_out_dest_data_out_52_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision688_select1173_xmlchecklanguageid41(LOGICAL,97)@2 + 1
    assign i_phi_decision688_select1173_xmlchecklanguageid41_qi = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid153_xmlchecklanguageid12_out_dest_data_out_52_0 | i_phi_decision1226_select_xmlchecklanguageid31_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_phi_decision688_select1173_xmlchecklanguageid41_delay ( .xin(i_phi_decision688_select1173_xmlchecklanguageid41_qi), .xout(i_phi_decision688_select1173_xmlchecklanguageid41_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_xmlchecklanguageid_68_xmlchecklanguageid112(LOGICAL,126)@3 + 1
    assign i_reduction_xmlchecklanguageid_68_xmlchecklanguageid112_qi = i_phi_decision688_select1173_xmlchecklanguageid41_q & redist10_i_phi_decision1112_select_xmlchecklanguageid36_q_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_xmlchecklanguageid_68_xmlchecklanguageid112_delay ( .xin(i_reduction_xmlchecklanguageid_68_xmlchecklanguageid112_qi), .xout(i_reduction_xmlchecklanguageid_68_xmlchecklanguageid112_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_not_cmp68_phi_decision1526_xmlchecklanguageid32(LOGICAL,63)@2
    assign i_not_cmp68_phi_decision1526_xmlchecklanguageid32_q = i_cmp68_phi_decision1526_replace_phi_xmlchecklanguageid26_q ^ VCC_q;

    // i_reduction_xmlchecklanguageid_48_xmlchecklanguageid39(LOGICAL,107)@2
    assign i_reduction_xmlchecklanguageid_48_xmlchecklanguageid39_q = i_phi_decision1112_select_xmlchecklanguageid36_q & i_not_cmp68_phi_decision1526_xmlchecklanguageid32_q;

    // valid_fanout_reg2(REG,180)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid149_xmlchecklanguageid3(BLACKBOX,52)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000134Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid149_xmlchecklanguageid3 (
        .in_intel_reserved_ffwd_79_0(in_intel_reserved_ffwd_79_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_79_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid149_xmlchecklanguageid3_out_dest_data_out_79_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together174_aunroll_x_in_c0_eni7_1_tpl_1(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together174_aunroll_x_in_c0_eni7_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together174_aunroll_x_in_c0_eni7_1_tpl_1_q <= $unsigned(in_c0_eni7_1_tpl);
        end
    end

    // i_phi_decision1025_replace_phi_xmlchecklanguageid4(MUX,72)@2
    assign i_phi_decision1025_replace_phi_xmlchecklanguageid4_s = redist1_sync_together174_aunroll_x_in_c0_eni7_1_tpl_1_q;
    always @(i_phi_decision1025_replace_phi_xmlchecklanguageid4_s or GND_q or i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid149_xmlchecklanguageid3_out_dest_data_out_79_0)
    begin
        unique case (i_phi_decision1025_replace_phi_xmlchecklanguageid4_s)
            1'b0 : i_phi_decision1025_replace_phi_xmlchecklanguageid4_q = GND_q;
            1'b1 : i_phi_decision1025_replace_phi_xmlchecklanguageid4_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid149_xmlchecklanguageid3_out_dest_data_out_79_0;
            default : i_phi_decision1025_replace_phi_xmlchecklanguageid4_q = 1'b0;
        endcase
    end

    // i_reduction_xmlchecklanguageid_47_xmlchecklanguageid38(LOGICAL,106)@2
    assign i_reduction_xmlchecklanguageid_47_xmlchecklanguageid38_q = i_phi_decision1226_replace_phi_xmlchecklanguageid9_q & i_phi_decision1025_replace_phi_xmlchecklanguageid4_q;

    // i_reduction_xmlchecklanguageid_49_xmlchecklanguageid40(LOGICAL,108)@2
    assign i_reduction_xmlchecklanguageid_49_xmlchecklanguageid40_q = i_reduction_xmlchecklanguageid_47_xmlchecklanguageid38_q & i_reduction_xmlchecklanguageid_48_xmlchecklanguageid39_q;

    // i_not_phi_decision1025_select_xmlchecklanguageid44(LOGICAL,65)@2
    assign i_not_phi_decision1025_select_xmlchecklanguageid44_q = i_reduction_xmlchecklanguageid_49_xmlchecklanguageid40_q ^ VCC_q;

    // redist12_i_not_phi_decision1025_select_xmlchecklanguageid44_q_1(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_not_phi_decision1025_select_xmlchecklanguageid44_q_1_q <= '0;
        end
        else
        begin
            redist12_i_not_phi_decision1025_select_xmlchecklanguageid44_q_1_q <= $unsigned(i_not_phi_decision1025_select_xmlchecklanguageid44_q);
        end
    end

    // valid_fanout_reg5(REG,183)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist8_sync_together174_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_phi_decision811_select104_xmlchecklanguageid7(BLACKBOX,50)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000132Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_phi_decision811_select104_xmlchecklanguageid7 (
        .in_intel_reserved_ffwd_70_0(in_intel_reserved_ffwd_70_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_70_0(i_llvm_fpga_ffwd_dest_i1_phi_decision811_select104_xmlchecklanguageid7_out_dest_data_out_70_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision812_select_xmlchecklanguageid55(LOGICAL,102)@3
    assign i_phi_decision812_select_xmlchecklanguageid55_q = i_llvm_fpga_ffwd_dest_i1_phi_decision811_select104_xmlchecklanguageid7_out_dest_data_out_70_0 | redist12_i_not_phi_decision1025_select_xmlchecklanguageid44_q_1_q;

    // valid_fanout_reg3(REG,181)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid150_xmlchecklanguageid5(BLACKBOX,53)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000135Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid150_xmlchecklanguageid5 (
        .in_intel_reserved_ffwd_74_0(in_intel_reserved_ffwd_74_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_74_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid150_xmlchecklanguageid5_out_dest_data_out_74_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision929_select_xmlchecklanguageid45(LOGICAL,105)@2
    assign i_phi_decision929_select_xmlchecklanguageid45_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid150_xmlchecklanguageid5_out_dest_data_out_74_0 | i_not_phi_decision1025_select_xmlchecklanguageid44_q;

    // i_not_phi_decision929_select6_xmlchecklanguageid49(LOGICAL,71)@2
    assign i_not_phi_decision929_select6_xmlchecklanguageid49_q = i_phi_decision929_select_xmlchecklanguageid45_q ^ VCC_q;

    // redist11_i_not_phi_decision929_select6_xmlchecklanguageid49_q_1(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_not_phi_decision929_select6_xmlchecklanguageid49_q_1_q <= '0;
        end
        else
        begin
            redist11_i_not_phi_decision929_select6_xmlchecklanguageid49_q_1_q <= $unsigned(i_not_phi_decision929_select6_xmlchecklanguageid49_q);
        end
    end

    // i_phi_decision688_select979_xmlchecklanguageid52(LOGICAL,100)@3
    assign i_phi_decision688_select979_xmlchecklanguageid52_q = i_phi_decision688_select1173_xmlchecklanguageid41_q | redist11_i_not_phi_decision929_select6_xmlchecklanguageid49_q_1_q;

    // i_phi_decision863_select1091_xmlchecklanguageid50(LOGICAL,103)@2 + 1
    assign i_phi_decision863_select1091_xmlchecklanguageid50_qi = i_reduction_xmlchecklanguageid_49_xmlchecklanguageid40_q | i_not_phi_decision929_select6_xmlchecklanguageid49_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_phi_decision863_select1091_xmlchecklanguageid50_delay ( .xin(i_phi_decision863_select1091_xmlchecklanguageid50_qi), .xout(i_phi_decision863_select1091_xmlchecklanguageid50_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg4(REG,182)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist8_sync_together174_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid151_xmlchecklanguageid6(BLACKBOX,54)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000136Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid151_xmlchecklanguageid6 (
        .in_intel_reserved_ffwd_73_0(in_intel_reserved_ffwd_73_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_73_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid151_xmlchecklanguageid6_out_dest_data_out_73_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision863_select_xmlchecklanguageid51(LOGICAL,104)@3
    assign i_phi_decision863_select_xmlchecklanguageid51_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid151_xmlchecklanguageid6_out_dest_data_out_73_0 & i_phi_decision863_select1091_xmlchecklanguageid50_q;

    // i_phi_decision688_select909_xmlchecklanguageid56(LOGICAL,99)@3
    assign i_phi_decision688_select909_xmlchecklanguageid56_q = i_phi_decision863_select_xmlchecklanguageid51_q | i_phi_decision688_select979_xmlchecklanguageid52_q;

    // i_phi_decision620_select847_xmlchecklanguageid66(LOGICAL,82)@3
    assign i_phi_decision620_select847_xmlchecklanguageid66_q = i_phi_decision688_select909_xmlchecklanguageid56_q & i_phi_decision812_select_xmlchecklanguageid55_q;

    // valid_fanout_reg11(REG,189)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist8_sync_together174_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1686_xmlchecklanguageid14(BLACKBOX,51)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000133Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1686_xmlchecklanguageid14 (
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_50_0(i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1686_xmlchecklanguageid14_out_dest_data_out_50_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision620_select_xmlchecklanguageid75(LOGICAL,83)@3
    assign i_phi_decision620_select_xmlchecklanguageid75_q = i_llvm_fpga_ffwd_dest_i1_reduction_xmlchecklanguageid_1686_xmlchecklanguageid14_out_dest_data_out_50_0 | i_phi_decision620_select847_xmlchecklanguageid66_q;

    // i_not_phi_decision620_select_xmlchecklanguageid81(LOGICAL,67)@3
    assign i_not_phi_decision620_select_xmlchecklanguageid81_q = i_phi_decision620_select_xmlchecklanguageid75_q ^ VCC_q;

    // valid_fanout_reg8(REG,186)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist8_sync_together174_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_phi_decision314_select92_xmlchecklanguageid11(BLACKBOX,49)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000131Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_phi_decision314_select92_xmlchecklanguageid11 (
        .in_intel_reserved_ffwd_59_0(in_intel_reserved_ffwd_59_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_59_0(i_llvm_fpga_ffwd_dest_i1_phi_decision314_select92_xmlchecklanguageid11_out_dest_data_out_59_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_xmlchecklanguageid_51_xmlchecklanguageid68(LOGICAL,110)@3
    assign i_reduction_xmlchecklanguageid_51_xmlchecklanguageid68_q = i_phi_decision863_select_xmlchecklanguageid51_q | i_llvm_fpga_ffwd_dest_i1_phi_decision314_select92_xmlchecklanguageid11_out_dest_data_out_59_0;

    // i_not_phi_decision812_select_xmlchecklanguageid61(LOGICAL,69)@3
    assign i_not_phi_decision812_select_xmlchecklanguageid61_q = i_phi_decision812_select_xmlchecklanguageid55_q ^ VCC_q;

    // i_reduction_xmlchecklanguageid_50_xmlchecklanguageid67(LOGICAL,109)@3
    assign i_reduction_xmlchecklanguageid_50_xmlchecklanguageid67_q = redist11_i_not_phi_decision929_select6_xmlchecklanguageid49_q_1_q | i_not_phi_decision812_select_xmlchecklanguageid61_q;

    // i_reduction_xmlchecklanguageid_53_xmlchecklanguageid70(LOGICAL,112)@3
    assign i_reduction_xmlchecklanguageid_53_xmlchecklanguageid70_q = i_reduction_xmlchecklanguageid_50_xmlchecklanguageid67_q | i_reduction_xmlchecklanguageid_51_xmlchecklanguageid68_q;

    // i_phi_decision688_select909_not_xmlchecklanguageid63(LOGICAL,98)@3
    assign i_phi_decision688_select909_not_xmlchecklanguageid63_q = i_phi_decision688_select909_xmlchecklanguageid56_q ^ VCC_q;

    // redist9_i_phi_decision1226_select_xmlchecklanguageid31_q_1(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_phi_decision1226_select_xmlchecklanguageid31_q_1_q <= '0;
        end
        else
        begin
            redist9_i_phi_decision1226_select_xmlchecklanguageid31_q_1_q <= $unsigned(i_phi_decision1226_select_xmlchecklanguageid31_q);
        end
    end

    // i_reduction_xmlchecklanguageid_52_xmlchecklanguageid69(LOGICAL,111)@3
    assign i_reduction_xmlchecklanguageid_52_xmlchecklanguageid69_q = redist9_i_phi_decision1226_select_xmlchecklanguageid31_q_1_q | i_phi_decision688_select909_not_xmlchecklanguageid63_q;

    // i_reduction_xmlchecklanguageid_54_xmlchecklanguageid71(LOGICAL,113)@3
    assign i_reduction_xmlchecklanguageid_54_xmlchecklanguageid71_q = i_reduction_xmlchecklanguageid_52_xmlchecklanguageid69_q | i_reduction_xmlchecklanguageid_53_xmlchecklanguageid70_q;

    // i_phi_decision648_select854_xmlchecklanguageid64(LOGICAL,84)@3
    assign i_phi_decision648_select854_xmlchecklanguageid64_q = i_phi_decision688_select909_not_xmlchecklanguageid63_q | i_not_phi_decision812_select_xmlchecklanguageid61_q;

    // valid_fanout_reg10(REG,188)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist8_sync_together174_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid154_xmlchecklanguageid13(BLACKBOX,57)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000139Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid154_xmlchecklanguageid13 (
        .in_intel_reserved_ffwd_51_0(in_intel_reserved_ffwd_51_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_51_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid154_xmlchecklanguageid13_out_dest_data_out_51_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision648_select_xmlchecklanguageid65(LOGICAL,85)@3
    assign i_phi_decision648_select_xmlchecklanguageid65_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid154_xmlchecklanguageid13_out_dest_data_out_51_0 & i_phi_decision648_select854_xmlchecklanguageid64_q;

    // i_phi_decision315_select671_xmlchecklanguageid76(LOGICAL,81)@3
    assign i_phi_decision315_select671_xmlchecklanguageid76_q = i_phi_decision648_select_xmlchecklanguageid65_q | i_reduction_xmlchecklanguageid_54_xmlchecklanguageid71_q;

    // i_phi_decision315_select671_not_xmlchecklanguageid83(LOGICAL,80)@3
    assign i_phi_decision315_select671_not_xmlchecklanguageid83_q = i_phi_decision315_select671_xmlchecklanguageid76_q ^ VCC_q;

    // i_phi_decision296_select641_xmlchecklanguageid84(LOGICAL,78)@3
    assign i_phi_decision296_select641_xmlchecklanguageid84_q = i_phi_decision315_select671_not_xmlchecklanguageid83_q | i_not_phi_decision620_select_xmlchecklanguageid81_q;

    // valid_fanout_reg12(REG,190)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist8_sync_together174_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid155_xmlchecklanguageid15(BLACKBOX,58)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000140Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid155_xmlchecklanguageid15 (
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_35_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid155_xmlchecklanguageid15_out_dest_data_out_35_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision296_select_xmlchecklanguageid85(LOGICAL,79)@3 + 1
    assign i_phi_decision296_select_xmlchecklanguageid85_qi = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid155_xmlchecklanguageid15_out_dest_data_out_35_0 & i_phi_decision296_select641_xmlchecklanguageid84_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_phi_decision296_select_xmlchecklanguageid85_delay ( .xin(i_phi_decision296_select_xmlchecklanguageid85_qi), .xout(i_phi_decision296_select_xmlchecklanguageid85_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_not_phi_decision296_select_xmlchecklanguageid101(LOGICAL,66)@4
    assign i_not_phi_decision296_select_xmlchecklanguageid101_q = i_phi_decision296_select_xmlchecklanguageid85_q ^ VCC_q;

    // i_reduction_xmlchecklanguageid_71_xmlchecklanguageid115(LOGICAL,129)@4
    assign i_reduction_xmlchecklanguageid_71_xmlchecklanguageid115_q = i_not_phi_decision296_select_xmlchecklanguageid101_q & i_reduction_xmlchecklanguageid_68_xmlchecklanguageid112_q;

    // i_reduction_xmlchecklanguageid_67_xmlchecklanguageid111(LOGICAL,125)@3 + 1
    assign i_reduction_xmlchecklanguageid_67_xmlchecklanguageid111_qi = i_reduction_xmlchecklanguageid_54_xmlchecklanguageid71_q & i_phi_decision620_select_xmlchecklanguageid75_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_xmlchecklanguageid_67_xmlchecklanguageid111_delay ( .xin(i_reduction_xmlchecklanguageid_67_xmlchecklanguageid111_qi), .xout(i_reduction_xmlchecklanguageid_67_xmlchecklanguageid111_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_phi_decision285_select636_xmlchecklanguageid86(LOGICAL,76)@3
    assign i_phi_decision285_select636_xmlchecklanguageid86_q = i_phi_decision315_select671_xmlchecklanguageid76_q & i_phi_decision620_select_xmlchecklanguageid75_q;

    // valid_fanout_reg13(REG,191)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist8_sync_together174_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid156_xmlchecklanguageid16(BLACKBOX,59)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000141Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid156_xmlchecklanguageid16 (
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_dest_data_out_33_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid156_xmlchecklanguageid16_out_dest_data_out_33_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision285_select_xmlchecklanguageid97(LOGICAL,77)@3 + 1
    assign i_phi_decision285_select_xmlchecklanguageid97_qi = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid156_xmlchecklanguageid16_out_dest_data_out_33_0 | i_phi_decision285_select636_xmlchecklanguageid86_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_phi_decision285_select_xmlchecklanguageid97_delay ( .xin(i_phi_decision285_select_xmlchecklanguageid97_qi), .xout(i_phi_decision285_select_xmlchecklanguageid97_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg14(REG,192)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist8_sync_together174_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid157_xmlchecklanguageid17(BLACKBOX,60)@3
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000142Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid157_xmlchecklanguageid17 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid157_xmlchecklanguageid17_out_dest_data_out_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_xmlchecklanguageid_59_xmlchecklanguageid90(LOGICAL,117)@3
    assign i_reduction_xmlchecklanguageid_59_xmlchecklanguageid90_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid157_xmlchecklanguageid17_out_dest_data_out_18_0 | redist9_i_phi_decision1226_select_xmlchecklanguageid31_q_1_q;

    // i_reduction_xmlchecklanguageid_57_xmlchecklanguageid88(LOGICAL,115)@3
    assign i_reduction_xmlchecklanguageid_57_xmlchecklanguageid88_q = i_phi_decision688_select909_not_xmlchecklanguageid63_q | i_not_phi_decision620_select_xmlchecklanguageid81_q;

    // i_reduction_xmlchecklanguageid_58_xmlchecklanguageid89(LOGICAL,116)@3
    assign i_reduction_xmlchecklanguageid_58_xmlchecklanguageid89_q = i_reduction_xmlchecklanguageid_50_xmlchecklanguageid67_q | i_reduction_xmlchecklanguageid_57_xmlchecklanguageid88_q;

    // i_reduction_xmlchecklanguageid_61_xmlchecklanguageid92(LOGICAL,119)@3 + 1
    assign i_reduction_xmlchecklanguageid_61_xmlchecklanguageid92_qi = i_reduction_xmlchecklanguageid_58_xmlchecklanguageid89_q | i_reduction_xmlchecklanguageid_59_xmlchecklanguageid90_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_xmlchecklanguageid_61_xmlchecklanguageid92_delay ( .xin(i_reduction_xmlchecklanguageid_61_xmlchecklanguageid92_qi), .xout(i_reduction_xmlchecklanguageid_61_xmlchecklanguageid92_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_xmlchecklanguageid_55_xmlchecklanguageid87(LOGICAL,114)@3
    assign i_reduction_xmlchecklanguageid_55_xmlchecklanguageid87_q = i_phi_decision648_select_xmlchecklanguageid65_q | i_phi_decision863_select_xmlchecklanguageid51_q;

    // i_reduction_xmlchecklanguageid_60_xmlchecklanguageid91(LOGICAL,118)@3 + 1
    assign i_reduction_xmlchecklanguageid_60_xmlchecklanguageid91_qi = i_phi_decision315_select671_not_xmlchecklanguageid83_q | i_reduction_xmlchecklanguageid_55_xmlchecklanguageid87_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_xmlchecklanguageid_60_xmlchecklanguageid91_delay ( .xin(i_reduction_xmlchecklanguageid_60_xmlchecklanguageid91_qi), .xout(i_reduction_xmlchecklanguageid_60_xmlchecklanguageid91_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_xmlchecklanguageid_62_xmlchecklanguageid93(LOGICAL,120)@4
    assign i_reduction_xmlchecklanguageid_62_xmlchecklanguageid93_q = i_reduction_xmlchecklanguageid_60_xmlchecklanguageid91_q | i_reduction_xmlchecklanguageid_61_xmlchecklanguageid92_q;

    // i_reduction_xmlchecklanguageid_66_xmlchecklanguageid110(LOGICAL,124)@4
    assign i_reduction_xmlchecklanguageid_66_xmlchecklanguageid110_q = i_reduction_xmlchecklanguageid_62_xmlchecklanguageid93_q & i_phi_decision285_select_xmlchecklanguageid97_q;

    // i_reduction_xmlchecklanguageid_69_xmlchecklanguageid113(LOGICAL,127)@4
    assign i_reduction_xmlchecklanguageid_69_xmlchecklanguageid113_q = i_reduction_xmlchecklanguageid_66_xmlchecklanguageid110_q & i_reduction_xmlchecklanguageid_67_xmlchecklanguageid111_q;

    // i_reduction_xmlchecklanguageid_73_xmlchecklanguageid117(LOGICAL,131)@4
    assign i_reduction_xmlchecklanguageid_73_xmlchecklanguageid117_q = i_reduction_xmlchecklanguageid_69_xmlchecklanguageid113_q & i_reduction_xmlchecklanguageid_71_xmlchecklanguageid115_q;

    // valid_fanout_reg22(REG,200)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp35_xmlchecklanguageid29(BLACKBOX,41)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000123Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_cmp35_xmlchecklanguageid29 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i1_cmp35_xmlchecklanguageid29_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together174_aunroll_x_in_c0_eni7_7_tpl_1(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together174_aunroll_x_in_c0_eni7_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together174_aunroll_x_in_c0_eni7_7_tpl_1_q <= $unsigned(in_c0_eni7_7_tpl);
        end
    end

    // i_cmp_phi_decision11_replace_phi_xmlchecklanguageid30(MUX,38)@2
    assign i_cmp_phi_decision11_replace_phi_xmlchecklanguageid30_s = redist7_sync_together174_aunroll_x_in_c0_eni7_7_tpl_1_q;
    always @(i_cmp_phi_decision11_replace_phi_xmlchecklanguageid30_s or GND_q or i_llvm_fpga_ffwd_dest_i1_cmp35_xmlchecklanguageid29_out_dest_data_out_1_0)
    begin
        unique case (i_cmp_phi_decision11_replace_phi_xmlchecklanguageid30_s)
            1'b0 : i_cmp_phi_decision11_replace_phi_xmlchecklanguageid30_q = GND_q;
            1'b1 : i_cmp_phi_decision11_replace_phi_xmlchecklanguageid30_q = i_llvm_fpga_ffwd_dest_i1_cmp35_xmlchecklanguageid29_out_dest_data_out_1_0;
            default : i_cmp_phi_decision11_replace_phi_xmlchecklanguageid30_q = 1'b0;
        endcase
    end

    // i_reduction_xmlchecklanguageid_70_xmlchecklanguageid114(LOGICAL,128)@2 + 1
    assign i_reduction_xmlchecklanguageid_70_xmlchecklanguageid114_qi = i_phi_decision1226_replace_phi_xmlchecklanguageid9_q & i_cmp_phi_decision11_replace_phi_xmlchecklanguageid30_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_xmlchecklanguageid_70_xmlchecklanguageid114_delay ( .xin(i_reduction_xmlchecklanguageid_70_xmlchecklanguageid114_qi), .xout(i_reduction_xmlchecklanguageid_70_xmlchecklanguageid114_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_not_phi_decision648_select_xmlchecklanguageid79(LOGICAL,68)@3
    assign i_not_phi_decision648_select_xmlchecklanguageid79_q = i_phi_decision648_select_xmlchecklanguageid65_q ^ VCC_q;

    // i_not_phi_decision863_select_xmlchecklanguageid59(LOGICAL,70)@3
    assign i_not_phi_decision863_select_xmlchecklanguageid59_q = i_phi_decision863_select_xmlchecklanguageid51_q ^ VCC_q;

    // i_reduction_xmlchecklanguageid_64_xmlchecklanguageid108(LOGICAL,122)@3
    assign i_reduction_xmlchecklanguageid_64_xmlchecklanguageid108_q = i_not_phi_decision863_select_xmlchecklanguageid59_q & i_not_phi_decision648_select_xmlchecklanguageid79_q;

    // redist13_i_not_cmp68_phi_decision1526_xmlchecklanguageid32_q_1(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_not_cmp68_phi_decision1526_xmlchecklanguageid32_q_1_q <= '0;
        end
        else
        begin
            redist13_i_not_cmp68_phi_decision1526_xmlchecklanguageid32_q_1_q <= $unsigned(i_not_cmp68_phi_decision1526_xmlchecklanguageid32_q);
        end
    end

    // i_reduction_xmlchecklanguageid_63_xmlchecklanguageid107(LOGICAL,121)@3
    assign i_reduction_xmlchecklanguageid_63_xmlchecklanguageid107_q = redist13_i_not_cmp68_phi_decision1526_xmlchecklanguageid32_q_1_q & redist12_i_not_phi_decision1025_select_xmlchecklanguageid44_q_1_q;

    // i_reduction_xmlchecklanguageid_65_xmlchecklanguageid109(LOGICAL,123)@3
    assign i_reduction_xmlchecklanguageid_65_xmlchecklanguageid109_q = i_reduction_xmlchecklanguageid_63_xmlchecklanguageid107_q & i_reduction_xmlchecklanguageid_64_xmlchecklanguageid108_q;

    // i_reduction_xmlchecklanguageid_72_xmlchecklanguageid116(LOGICAL,130)@3 + 1
    assign i_reduction_xmlchecklanguageid_72_xmlchecklanguageid116_qi = i_reduction_xmlchecklanguageid_65_xmlchecklanguageid109_q & i_reduction_xmlchecklanguageid_70_xmlchecklanguageid114_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_xmlchecklanguageid_72_xmlchecklanguageid116_delay ( .xin(i_reduction_xmlchecklanguageid_72_xmlchecklanguageid116_qi), .xout(i_reduction_xmlchecklanguageid_72_xmlchecklanguageid116_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_xmlchecklanguageid_74_xmlchecklanguageid118(LOGICAL,132)@4
    assign i_reduction_xmlchecklanguageid_74_xmlchecklanguageid118_q = i_reduction_xmlchecklanguageid_72_xmlchecklanguageid116_q & i_reduction_xmlchecklanguageid_73_xmlchecklanguageid117_q;

    // i_cmp_phi_decision11_select78_not_xmlchecklanguageid124(LOGICAL,40)@4
    assign i_cmp_phi_decision11_select78_not_xmlchecklanguageid124_q = i_reduction_xmlchecklanguageid_74_xmlchecklanguageid118_q ^ VCC_q;

    // valid_fanout_reg15(REG,193)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid158_xmlchecklanguageid18(BLACKBOX,61)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000143Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid158_xmlchecklanguageid18 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid158_xmlchecklanguageid18_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together174_aunroll_x_in_c0_eni7_3_tpl_1(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together174_aunroll_x_in_c0_eni7_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together174_aunroll_x_in_c0_eni7_3_tpl_1_q <= $unsigned(in_c0_eni7_3_tpl);
        end
    end

    // i_phi_decision66_replace_phi_xmlchecklanguageid19(MUX,86)@2
    assign i_phi_decision66_replace_phi_xmlchecklanguageid19_s = redist3_sync_together174_aunroll_x_in_c0_eni7_3_tpl_1_q;
    always @(i_phi_decision66_replace_phi_xmlchecklanguageid19_s or GND_q or i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid158_xmlchecklanguageid18_out_dest_data_out_17_0)
    begin
        unique case (i_phi_decision66_replace_phi_xmlchecklanguageid19_s)
            1'b0 : i_phi_decision66_replace_phi_xmlchecklanguageid19_q = GND_q;
            1'b1 : i_phi_decision66_replace_phi_xmlchecklanguageid19_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid158_xmlchecklanguageid18_out_dest_data_out_17_0;
            default : i_phi_decision66_replace_phi_xmlchecklanguageid19_q = 1'b0;
        endcase
    end

    // i_phi_decision66_select1559_xmlchecklanguageid33(LOGICAL,89)@2
    assign i_phi_decision66_select1559_xmlchecklanguageid33_q = i_phi_decision66_replace_phi_xmlchecklanguageid19_q & i_not_cmp68_phi_decision1526_xmlchecklanguageid32_q;

    // i_phi_decision66_select1120_xmlchecklanguageid42(MUX,88)@2
    assign i_phi_decision66_select1120_xmlchecklanguageid42_s = i_phi_decision1226_select_xmlchecklanguageid31_q;
    always @(i_phi_decision66_select1120_xmlchecklanguageid42_s or i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0 or i_phi_decision66_select1559_xmlchecklanguageid33_q)
    begin
        unique case (i_phi_decision66_select1120_xmlchecklanguageid42_s)
            1'b0 : i_phi_decision66_select1120_xmlchecklanguageid42_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0;
            1'b1 : i_phi_decision66_select1120_xmlchecklanguageid42_q = i_phi_decision66_select1559_xmlchecklanguageid33_q;
            default : i_phi_decision66_select1120_xmlchecklanguageid42_q = 1'b0;
        endcase
    end

    // i_phi_decision66_select1033_xmlchecklanguageid46(MUX,87)@2
    assign i_phi_decision66_select1033_xmlchecklanguageid46_s = i_reduction_xmlchecklanguageid_49_xmlchecklanguageid40_q;
    always @(i_phi_decision66_select1033_xmlchecklanguageid46_s or i_phi_decision66_select1120_xmlchecklanguageid42_q or i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0)
    begin
        unique case (i_phi_decision66_select1033_xmlchecklanguageid46_s)
            1'b0 : i_phi_decision66_select1033_xmlchecklanguageid46_q = i_phi_decision66_select1120_xmlchecklanguageid42_q;
            1'b1 : i_phi_decision66_select1033_xmlchecklanguageid46_q = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0;
            default : i_phi_decision66_select1033_xmlchecklanguageid46_q = 1'b0;
        endcase
    end

    // valid_fanout_reg16(REG,194)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20(BLACKBOX,62)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000144Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision66_select941_xmlchecklanguageid53(MUX,95)@2 + 1
    assign i_phi_decision66_select941_xmlchecklanguageid53_s = i_phi_decision929_select_xmlchecklanguageid45_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_phi_decision66_select941_xmlchecklanguageid53_q <= 1'b0;
        end
        else
        begin
            unique case (i_phi_decision66_select941_xmlchecklanguageid53_s)
                1'b0 : i_phi_decision66_select941_xmlchecklanguageid53_q <= i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0;
                1'b1 : i_phi_decision66_select941_xmlchecklanguageid53_q <= i_phi_decision66_select1033_xmlchecklanguageid46_q;
                default : i_phi_decision66_select941_xmlchecklanguageid53_q <= 1'b0;
            endcase
        end
    end

    // i_phi_decision66_select871_xmlchecklanguageid57(MUX,94)@3
    assign i_phi_decision66_select871_xmlchecklanguageid57_s = i_phi_decision863_select_xmlchecklanguageid51_q;
    always @(i_phi_decision66_select871_xmlchecklanguageid57_s or i_phi_decision66_select941_xmlchecklanguageid53_q or redist14_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_1_q)
    begin
        unique case (i_phi_decision66_select871_xmlchecklanguageid57_s)
            1'b0 : i_phi_decision66_select871_xmlchecklanguageid57_q = i_phi_decision66_select941_xmlchecklanguageid53_q;
            1'b1 : i_phi_decision66_select871_xmlchecklanguageid57_q = redist14_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_1_q;
            default : i_phi_decision66_select871_xmlchecklanguageid57_q = 1'b0;
        endcase
    end

    // i_phi_decision66_select698_xmlchecklanguageid72(MUX,93)@3
    assign i_phi_decision66_select698_xmlchecklanguageid72_s = i_phi_decision620_select847_xmlchecklanguageid66_q;
    always @(i_phi_decision66_select698_xmlchecklanguageid72_s or redist14_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_1_q or i_phi_decision66_select871_xmlchecklanguageid57_q)
    begin
        unique case (i_phi_decision66_select698_xmlchecklanguageid72_s)
            1'b0 : i_phi_decision66_select698_xmlchecklanguageid72_q = redist14_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_1_q;
            1'b1 : i_phi_decision66_select698_xmlchecklanguageid72_q = i_phi_decision66_select871_xmlchecklanguageid57_q;
            default : i_phi_decision66_select698_xmlchecklanguageid72_q = 1'b0;
        endcase
    end

    // i_phi_decision66_select656_xmlchecklanguageid77(MUX,92)@3
    assign i_phi_decision66_select656_xmlchecklanguageid77_s = i_phi_decision648_select_xmlchecklanguageid65_q;
    always @(i_phi_decision66_select656_xmlchecklanguageid77_s or i_phi_decision66_select698_xmlchecklanguageid72_q or redist14_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_1_q)
    begin
        unique case (i_phi_decision66_select656_xmlchecklanguageid77_s)
            1'b0 : i_phi_decision66_select656_xmlchecklanguageid77_q = i_phi_decision66_select698_xmlchecklanguageid72_q;
            1'b1 : i_phi_decision66_select656_xmlchecklanguageid77_q = redist14_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_1_q;
            default : i_phi_decision66_select656_xmlchecklanguageid77_q = 1'b0;
        endcase
    end

    // redist14_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_1(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_1_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_1_q <= $unsigned(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0);
        end
    end

    // i_phi_decision66_select325_xmlchecklanguageid94(MUX,91)@3 + 1
    assign i_phi_decision66_select325_xmlchecklanguageid94_s = i_phi_decision285_select636_xmlchecklanguageid86_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_phi_decision66_select325_xmlchecklanguageid94_q <= 1'b0;
        end
        else
        begin
            unique case (i_phi_decision66_select325_xmlchecklanguageid94_s)
                1'b0 : i_phi_decision66_select325_xmlchecklanguageid94_q <= redist14_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_1_q;
                1'b1 : i_phi_decision66_select325_xmlchecklanguageid94_q <= i_phi_decision66_select656_xmlchecklanguageid77_q;
                default : i_phi_decision66_select325_xmlchecklanguageid94_q <= 1'b0;
            endcase
        end
    end

    // i_phi_decision66_select304_xmlchecklanguageid99(MUX,90)@4
    assign i_phi_decision66_select304_xmlchecklanguageid99_s = i_phi_decision296_select_xmlchecklanguageid85_q;
    always @(i_phi_decision66_select304_xmlchecklanguageid99_s or i_phi_decision66_select325_xmlchecklanguageid94_q or redist15_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_2_q)
    begin
        unique case (i_phi_decision66_select304_xmlchecklanguageid99_s)
            1'b0 : i_phi_decision66_select304_xmlchecklanguageid99_q = i_phi_decision66_select325_xmlchecklanguageid94_q;
            1'b1 : i_phi_decision66_select304_xmlchecklanguageid99_q = redist15_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_2_q;
            default : i_phi_decision66_select304_xmlchecklanguageid99_q = 1'b0;
        endcase
    end

    // redist15_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_2(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_2_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_2_q <= $unsigned(redist14_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_1_q);
        end
    end

    // i_phi_decision76_select306_xmlchecklanguageid98(LOGICAL,101)@4
    assign i_phi_decision76_select306_xmlchecklanguageid98_q = i_phi_decision296_select_xmlchecklanguageid85_q | i_reduction_xmlchecklanguageid_62_xmlchecklanguageid93_q;

    // i_unnamed_xmlchecklanguageid104(LOGICAL,153)@4
    assign i_unnamed_xmlchecklanguageid104_q = i_phi_decision76_select306_xmlchecklanguageid98_q & i_phi_decision285_select_xmlchecklanguageid97_q;

    // i_phi_decision66_select_xmlchecklanguageid105(MUX,96)@4
    assign i_phi_decision66_select_xmlchecklanguageid105_s = i_unnamed_xmlchecklanguageid104_q;
    always @(i_phi_decision66_select_xmlchecklanguageid105_s or redist15_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_2_q or i_phi_decision66_select304_xmlchecklanguageid99_q)
    begin
        unique case (i_phi_decision66_select_xmlchecklanguageid105_s)
            1'b0 : i_phi_decision66_select_xmlchecklanguageid105_q = redist15_i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid159_xmlchecklanguageid20_out_dest_data_out_17_0_2_q;
            1'b1 : i_phi_decision66_select_xmlchecklanguageid105_q = i_phi_decision66_select304_xmlchecklanguageid99_q;
            default : i_phi_decision66_select_xmlchecklanguageid105_q = 1'b0;
        endcase
    end

    // i_cmp_phi_decision11_select68_not_xmlchecklanguageid125(LOGICAL,39)@4
    assign i_cmp_phi_decision11_select68_not_xmlchecklanguageid125_q = i_phi_decision66_select_xmlchecklanguageid105_q | i_cmp_phi_decision11_select78_not_xmlchecklanguageid124_q;

    // valid_fanout_reg18(REG,196)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23(BLACKBOX,44)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000126Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_1(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_1_q <= $unsigned(i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0);
        end
    end

    // redist17_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_2(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_2_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_2_q <= $unsigned(redist16_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_1_q);
        end
    end

    // valid_fanout_reg17(REG,195)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp8459_xmlchecklanguageid21(BLACKBOX,45)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000127Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_cmp8459_xmlchecklanguageid21 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_i1_cmp8459_xmlchecklanguageid21_out_dest_data_out_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together174_aunroll_x_in_c0_eni7_4_tpl_1(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together174_aunroll_x_in_c0_eni7_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together174_aunroll_x_in_c0_eni7_4_tpl_1_q <= $unsigned(in_c0_eni7_4_tpl);
        end
    end

    // i_cmp84_phi_decision63_replace_phi_xmlchecklanguageid22(MUX,26)@2
    assign i_cmp84_phi_decision63_replace_phi_xmlchecklanguageid22_s = redist4_sync_together174_aunroll_x_in_c0_eni7_4_tpl_1_q;
    always @(i_cmp84_phi_decision63_replace_phi_xmlchecklanguageid22_s or GND_q or i_llvm_fpga_ffwd_dest_i1_cmp8459_xmlchecklanguageid21_out_dest_data_out_16_0)
    begin
        unique case (i_cmp84_phi_decision63_replace_phi_xmlchecklanguageid22_s)
            1'b0 : i_cmp84_phi_decision63_replace_phi_xmlchecklanguageid22_q = GND_q;
            1'b1 : i_cmp84_phi_decision63_replace_phi_xmlchecklanguageid22_q = i_llvm_fpga_ffwd_dest_i1_cmp8459_xmlchecklanguageid21_out_dest_data_out_16_0;
            default : i_cmp84_phi_decision63_replace_phi_xmlchecklanguageid22_q = 1'b0;
        endcase
    end

    // i_cmp84_phi_decision63_select1558_xmlchecklanguageid34(LOGICAL,29)@2
    assign i_cmp84_phi_decision63_select1558_xmlchecklanguageid34_q = i_cmp84_phi_decision63_replace_phi_xmlchecklanguageid22_q & i_not_cmp68_phi_decision1526_xmlchecklanguageid32_q;

    // i_cmp84_phi_decision63_select1117_xmlchecklanguageid43(MUX,28)@2
    assign i_cmp84_phi_decision63_select1117_xmlchecklanguageid43_s = i_phi_decision1226_select_xmlchecklanguageid31_q;
    always @(i_cmp84_phi_decision63_select1117_xmlchecklanguageid43_s or i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0 or i_cmp84_phi_decision63_select1558_xmlchecklanguageid34_q)
    begin
        unique case (i_cmp84_phi_decision63_select1117_xmlchecklanguageid43_s)
            1'b0 : i_cmp84_phi_decision63_select1117_xmlchecklanguageid43_q = i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0;
            1'b1 : i_cmp84_phi_decision63_select1117_xmlchecklanguageid43_q = i_cmp84_phi_decision63_select1558_xmlchecklanguageid34_q;
            default : i_cmp84_phi_decision63_select1117_xmlchecklanguageid43_q = 1'b0;
        endcase
    end

    // i_cmp84_phi_decision63_select1030_xmlchecklanguageid47(MUX,27)@2
    assign i_cmp84_phi_decision63_select1030_xmlchecklanguageid47_s = i_reduction_xmlchecklanguageid_49_xmlchecklanguageid40_q;
    always @(i_cmp84_phi_decision63_select1030_xmlchecklanguageid47_s or i_cmp84_phi_decision63_select1117_xmlchecklanguageid43_q or i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0)
    begin
        unique case (i_cmp84_phi_decision63_select1030_xmlchecklanguageid47_s)
            1'b0 : i_cmp84_phi_decision63_select1030_xmlchecklanguageid47_q = i_cmp84_phi_decision63_select1117_xmlchecklanguageid43_q;
            1'b1 : i_cmp84_phi_decision63_select1030_xmlchecklanguageid47_q = i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0;
            default : i_cmp84_phi_decision63_select1030_xmlchecklanguageid47_q = 1'b0;
        endcase
    end

    // i_cmp84_phi_decision63_select936_xmlchecklanguageid54(MUX,36)@2 + 1
    assign i_cmp84_phi_decision63_select936_xmlchecklanguageid54_s = i_phi_decision929_select_xmlchecklanguageid45_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp84_phi_decision63_select936_xmlchecklanguageid54_q <= 1'b0;
        end
        else
        begin
            unique case (i_cmp84_phi_decision63_select936_xmlchecklanguageid54_s)
                1'b0 : i_cmp84_phi_decision63_select936_xmlchecklanguageid54_q <= i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0;
                1'b1 : i_cmp84_phi_decision63_select936_xmlchecklanguageid54_q <= i_cmp84_phi_decision63_select1030_xmlchecklanguageid47_q;
                default : i_cmp84_phi_decision63_select936_xmlchecklanguageid54_q <= 1'b0;
            endcase
        end
    end

    // i_cmp84_phi_decision63_select868_xmlchecklanguageid58(MUX,35)@3
    assign i_cmp84_phi_decision63_select868_xmlchecklanguageid58_s = i_phi_decision863_select_xmlchecklanguageid51_q;
    always @(i_cmp84_phi_decision63_select868_xmlchecklanguageid58_s or i_cmp84_phi_decision63_select936_xmlchecklanguageid54_q or redist16_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_1_q)
    begin
        unique case (i_cmp84_phi_decision63_select868_xmlchecklanguageid58_s)
            1'b0 : i_cmp84_phi_decision63_select868_xmlchecklanguageid58_q = i_cmp84_phi_decision63_select936_xmlchecklanguageid54_q;
            1'b1 : i_cmp84_phi_decision63_select868_xmlchecklanguageid58_q = redist16_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_1_q;
            default : i_cmp84_phi_decision63_select868_xmlchecklanguageid58_q = 1'b0;
        endcase
    end

    // i_cmp84_phi_decision63_select694_xmlchecklanguageid73(MUX,33)@3
    assign i_cmp84_phi_decision63_select694_xmlchecklanguageid73_s = i_phi_decision620_select847_xmlchecklanguageid66_q;
    always @(i_cmp84_phi_decision63_select694_xmlchecklanguageid73_s or redist16_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_1_q or i_cmp84_phi_decision63_select868_xmlchecklanguageid58_q)
    begin
        unique case (i_cmp84_phi_decision63_select694_xmlchecklanguageid73_s)
            1'b0 : i_cmp84_phi_decision63_select694_xmlchecklanguageid73_q = redist16_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_1_q;
            1'b1 : i_cmp84_phi_decision63_select694_xmlchecklanguageid73_q = i_cmp84_phi_decision63_select868_xmlchecklanguageid58_q;
            default : i_cmp84_phi_decision63_select694_xmlchecklanguageid73_q = 1'b0;
        endcase
    end

    // i_cmp84_phi_decision63_select653_xmlchecklanguageid78(MUX,32)@3
    assign i_cmp84_phi_decision63_select653_xmlchecklanguageid78_s = i_phi_decision648_select_xmlchecklanguageid65_q;
    always @(i_cmp84_phi_decision63_select653_xmlchecklanguageid78_s or i_cmp84_phi_decision63_select694_xmlchecklanguageid73_q or redist16_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_1_q)
    begin
        unique case (i_cmp84_phi_decision63_select653_xmlchecklanguageid78_s)
            1'b0 : i_cmp84_phi_decision63_select653_xmlchecklanguageid78_q = i_cmp84_phi_decision63_select694_xmlchecklanguageid73_q;
            1'b1 : i_cmp84_phi_decision63_select653_xmlchecklanguageid78_q = redist16_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_1_q;
            default : i_cmp84_phi_decision63_select653_xmlchecklanguageid78_q = 1'b0;
        endcase
    end

    // i_cmp84_phi_decision63_select321_xmlchecklanguageid95(MUX,31)@3 + 1
    assign i_cmp84_phi_decision63_select321_xmlchecklanguageid95_s = i_phi_decision285_select636_xmlchecklanguageid86_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp84_phi_decision63_select321_xmlchecklanguageid95_q <= 1'b0;
        end
        else
        begin
            unique case (i_cmp84_phi_decision63_select321_xmlchecklanguageid95_s)
                1'b0 : i_cmp84_phi_decision63_select321_xmlchecklanguageid95_q <= redist16_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_1_q;
                1'b1 : i_cmp84_phi_decision63_select321_xmlchecklanguageid95_q <= i_cmp84_phi_decision63_select653_xmlchecklanguageid78_q;
                default : i_cmp84_phi_decision63_select321_xmlchecklanguageid95_q <= 1'b0;
            endcase
        end
    end

    // i_cmp84_phi_decision63_select301_xmlchecklanguageid100(MUX,30)@4
    assign i_cmp84_phi_decision63_select301_xmlchecklanguageid100_s = i_phi_decision296_select_xmlchecklanguageid85_q;
    always @(i_cmp84_phi_decision63_select301_xmlchecklanguageid100_s or i_cmp84_phi_decision63_select321_xmlchecklanguageid95_q or redist17_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_2_q)
    begin
        unique case (i_cmp84_phi_decision63_select301_xmlchecklanguageid100_s)
            1'b0 : i_cmp84_phi_decision63_select301_xmlchecklanguageid100_q = i_cmp84_phi_decision63_select321_xmlchecklanguageid95_q;
            1'b1 : i_cmp84_phi_decision63_select301_xmlchecklanguageid100_q = redist17_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_2_q;
            default : i_cmp84_phi_decision63_select301_xmlchecklanguageid100_q = 1'b0;
        endcase
    end

    // i_cmp84_phi_decision63_select82_xmlchecklanguageid106(MUX,34)@4
    assign i_cmp84_phi_decision63_select82_xmlchecklanguageid106_s = i_unnamed_xmlchecklanguageid104_q;
    always @(i_cmp84_phi_decision63_select82_xmlchecklanguageid106_s or redist17_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_2_q or i_cmp84_phi_decision63_select301_xmlchecklanguageid100_q)
    begin
        unique case (i_cmp84_phi_decision63_select82_xmlchecklanguageid106_s)
            1'b0 : i_cmp84_phi_decision63_select82_xmlchecklanguageid106_q = redist17_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_2_q;
            1'b1 : i_cmp84_phi_decision63_select82_xmlchecklanguageid106_q = i_cmp84_phi_decision63_select301_xmlchecklanguageid100_q;
            default : i_cmp84_phi_decision63_select82_xmlchecklanguageid106_q = 1'b0;
        endcase
    end

    // i_cmp84_phi_decision63_select_xmlchecklanguageid120(MUX,37)@4
    assign i_cmp84_phi_decision63_select_xmlchecklanguageid120_s = i_phi_decision66_select_xmlchecklanguageid105_q;
    always @(i_cmp84_phi_decision63_select_xmlchecklanguageid120_s or i_cmp84_phi_decision63_select82_xmlchecklanguageid106_q or redist17_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_2_q)
    begin
        unique case (i_cmp84_phi_decision63_select_xmlchecklanguageid120_s)
            1'b0 : i_cmp84_phi_decision63_select_xmlchecklanguageid120_q = i_cmp84_phi_decision63_select82_xmlchecklanguageid106_q;
            1'b1 : i_cmp84_phi_decision63_select_xmlchecklanguageid120_q = redist17_i_llvm_fpga_ffwd_dest_i1_cmp8458_xmlchecklanguageid23_out_dest_data_out_16_0_2_q;
            default : i_cmp84_phi_decision63_select_xmlchecklanguageid120_q = 1'b0;
        endcase
    end

    // i_not_cmp84_phi_decision63_select1804_xmlchecklanguageid122(LOGICAL,64)@4
    assign i_not_cmp84_phi_decision63_select1804_xmlchecklanguageid122_q = i_cmp84_phi_decision63_select_xmlchecklanguageid120_q ^ VCC_q;

    // valid_fanout_reg19(REG,197)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_narrow13357_xmlchecklanguageid24(BLACKBOX,47)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000129Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_narrow13357_xmlchecklanguageid24 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i1_narrow13357_xmlchecklanguageid24_out_dest_data_out_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg21(REG,199)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp4442_xmlchecklanguageid27(BLACKBOX,42)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000124Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_cmp4442_xmlchecklanguageid27 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i1_cmp4442_xmlchecklanguageid27_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,179)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_narrow113_xmlchecklanguageid2(BLACKBOX,46)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000128Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_narrow113_xmlchecklanguageid2 (
        .in_intel_reserved_ffwd_80_0(in_intel_reserved_ffwd_80_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_80_0(i_llvm_fpga_ffwd_dest_i1_narrow113_xmlchecklanguageid2_out_dest_data_out_80_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together174_aunroll_x_in_c0_eni7_6_tpl_1(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together174_aunroll_x_in_c0_eni7_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together174_aunroll_x_in_c0_eni7_6_tpl_1_q <= $unsigned(in_c0_eni7_6_tpl);
        end
    end

    // i_retval_0_shrunk_replace_phi_xmlchecklanguageid28(MUX,133)@2
    assign i_retval_0_shrunk_replace_phi_xmlchecklanguageid28_s = redist6_sync_together174_aunroll_x_in_c0_eni7_6_tpl_1_q;
    always @(i_retval_0_shrunk_replace_phi_xmlchecklanguageid28_s or i_llvm_fpga_ffwd_dest_i1_narrow113_xmlchecklanguageid2_out_dest_data_out_80_0 or i_llvm_fpga_ffwd_dest_i1_cmp4442_xmlchecklanguageid27_out_dest_data_out_9_0)
    begin
        unique case (i_retval_0_shrunk_replace_phi_xmlchecklanguageid28_s)
            1'b0 : i_retval_0_shrunk_replace_phi_xmlchecklanguageid28_q = i_llvm_fpga_ffwd_dest_i1_narrow113_xmlchecklanguageid2_out_dest_data_out_80_0;
            1'b1 : i_retval_0_shrunk_replace_phi_xmlchecklanguageid28_q = i_llvm_fpga_ffwd_dest_i1_cmp4442_xmlchecklanguageid27_out_dest_data_out_9_0;
            default : i_retval_0_shrunk_replace_phi_xmlchecklanguageid28_q = 1'b0;
        endcase
    end

    // i_retval_0_shrunk_select1556_xmlchecklanguageid35(MUX,136)@2
    assign i_retval_0_shrunk_select1556_xmlchecklanguageid35_s = i_cmp68_phi_decision1526_replace_phi_xmlchecklanguageid26_q;
    always @(i_retval_0_shrunk_select1556_xmlchecklanguageid35_s or i_retval_0_shrunk_replace_phi_xmlchecklanguageid28_q or i_llvm_fpga_ffwd_dest_i1_narrow13357_xmlchecklanguageid24_out_dest_data_out_15_0)
    begin
        unique case (i_retval_0_shrunk_select1556_xmlchecklanguageid35_s)
            1'b0 : i_retval_0_shrunk_select1556_xmlchecklanguageid35_q = i_retval_0_shrunk_replace_phi_xmlchecklanguageid28_q;
            1'b1 : i_retval_0_shrunk_select1556_xmlchecklanguageid35_q = i_llvm_fpga_ffwd_dest_i1_narrow13357_xmlchecklanguageid24_out_dest_data_out_15_0;
            default : i_retval_0_shrunk_select1556_xmlchecklanguageid35_q = 1'b0;
        endcase
    end

    // i_retval_0_shrunk_select1227_xmlchecklanguageid37(LOGICAL,135)@2 + 1
    assign i_retval_0_shrunk_select1227_xmlchecklanguageid37_qi = i_phi_decision1226_select_xmlchecklanguageid31_q & i_retval_0_shrunk_select1556_xmlchecklanguageid35_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_retval_0_shrunk_select1227_xmlchecklanguageid37_delay ( .xin(i_retval_0_shrunk_select1227_xmlchecklanguageid37_qi), .xout(i_retval_0_shrunk_select1227_xmlchecklanguageid37_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_retval_0_shrunk_select1026_xmlchecklanguageid48(LOGICAL,134)@3
    assign i_retval_0_shrunk_select1026_xmlchecklanguageid48_q = i_retval_0_shrunk_select1227_xmlchecklanguageid37_q & redist12_i_not_phi_decision1025_select_xmlchecklanguageid44_q_1_q;

    // i_retval_0_shrunk_select864_xmlchecklanguageid60(LOGICAL,147)@3
    assign i_retval_0_shrunk_select864_xmlchecklanguageid60_q = i_phi_decision863_select_xmlchecklanguageid51_q | i_retval_0_shrunk_select1026_xmlchecklanguageid48_q;

    // i_retval_0_shrunk_select813_xmlchecklanguageid62(LOGICAL,146)@3
    assign i_retval_0_shrunk_select813_xmlchecklanguageid62_q = i_phi_decision812_select_xmlchecklanguageid55_q & i_retval_0_shrunk_select864_xmlchecklanguageid60_q;

    // i_retval_0_shrunk_select689_xmlchecklanguageid74(LOGICAL,144)@3
    assign i_retval_0_shrunk_select689_xmlchecklanguageid74_q = i_phi_decision688_select909_xmlchecklanguageid56_q & i_retval_0_shrunk_select813_xmlchecklanguageid62_q;

    // i_retval_0_shrunk_select649_xmlchecklanguageid80(LOGICAL,141)@3
    assign i_retval_0_shrunk_select649_xmlchecklanguageid80_q = i_phi_decision648_select_xmlchecklanguageid65_q | i_retval_0_shrunk_select689_xmlchecklanguageid74_q;

    // i_retval_0_shrunk_select621_xmlchecklanguageid82(LOGICAL,140)@3
    assign i_retval_0_shrunk_select621_xmlchecklanguageid82_q = i_phi_decision620_select_xmlchecklanguageid75_q & i_retval_0_shrunk_select649_xmlchecklanguageid80_q;

    // i_retval_0_shrunk_select316_xmlchecklanguageid96(LOGICAL,139)@3 + 1
    assign i_retval_0_shrunk_select316_xmlchecklanguageid96_qi = i_phi_decision315_select671_xmlchecklanguageid76_q & i_retval_0_shrunk_select621_xmlchecklanguageid82_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_retval_0_shrunk_select316_xmlchecklanguageid96_delay ( .xin(i_retval_0_shrunk_select316_xmlchecklanguageid96_qi), .xout(i_retval_0_shrunk_select316_xmlchecklanguageid96_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_retval_0_shrunk_select297_xmlchecklanguageid102(LOGICAL,138)@4
    assign i_retval_0_shrunk_select297_xmlchecklanguageid102_q = i_phi_decision296_select_xmlchecklanguageid85_q | i_retval_0_shrunk_select316_xmlchecklanguageid96_q;

    // i_retval_0_shrunk_select286_xmlchecklanguageid103(LOGICAL,137)@4
    assign i_retval_0_shrunk_select286_xmlchecklanguageid103_q = i_phi_decision285_select_xmlchecklanguageid97_q & i_retval_0_shrunk_select297_xmlchecklanguageid102_q;

    // i_retval_0_shrunk_select77_xmlchecklanguageid119(LOGICAL,145)@4
    assign i_retval_0_shrunk_select77_xmlchecklanguageid119_q = i_phi_decision76_select306_xmlchecklanguageid98_q & i_retval_0_shrunk_select286_xmlchecklanguageid103_q;

    // i_retval_0_shrunk_select67_xmlchecklanguageid121(LOGICAL,143)@4
    assign i_retval_0_shrunk_select67_xmlchecklanguageid121_q = i_phi_decision66_select_xmlchecklanguageid105_q | i_retval_0_shrunk_select77_xmlchecklanguageid119_q;

    // i_retval_0_shrunk_select64_xmlchecklanguageid123(LOGICAL,142)@4
    assign i_retval_0_shrunk_select64_xmlchecklanguageid123_q = i_retval_0_shrunk_select67_xmlchecklanguageid121_q & i_not_cmp84_phi_decision63_select1804_xmlchecklanguageid122_q;

    // i_retval_0_shrunk_select_xmlchecklanguageid126(LOGICAL,148)@4
    assign i_retval_0_shrunk_select_xmlchecklanguageid126_q = i_retval_0_shrunk_select64_xmlchecklanguageid123_q & i_cmp_phi_decision11_select68_not_xmlchecklanguageid125_q;

    // i_retval_0_xmlchecklanguageid127_sel_x(BITSELECT,175)@4
    assign i_retval_0_xmlchecklanguageid127_sel_x_b = {31'b0000000000000000000000000000000, i_retval_0_shrunk_select_xmlchecklanguageid126_q[0:0]};

    // i_retval_0_xmlchecklanguageid127_vt_select_0(BITSELECT,152)@4
    assign i_retval_0_xmlchecklanguageid127_vt_select_0_b = i_retval_0_xmlchecklanguageid127_sel_x_b[0:0];

    // i_retval_0_xmlchecklanguageid127_vt_join(BITJOIN,151)@4
    assign i_retval_0_xmlchecklanguageid127_vt_join_q = {i_retval_0_xmlchecklanguageid127_vt_const_31_q, i_retval_0_xmlchecklanguageid127_vt_select_0_b};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,176)@4
    assign out_c0_exi1258_0_tpl = GND_q;
    assign out_c0_exi1258_1_tpl = i_retval_0_xmlchecklanguageid127_vt_join_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;
    assign out_unnamed_xmlCheckLanguageID7 = GND_q;

endmodule
