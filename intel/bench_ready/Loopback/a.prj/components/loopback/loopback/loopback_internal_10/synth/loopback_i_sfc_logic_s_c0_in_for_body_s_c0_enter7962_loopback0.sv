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

// SystemVerilog created from loopback_i_sfc_logic_s_c0_in_for_body_s_c0_enter7962_loopback0
// SystemVerilog created on Sun Apr 19 22:13:59 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loopback_i_sfc_logic_s_c0_in_for_body_s_c0_enter7962_loopback0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [15:0] out_intel_reserved_ffwd_10_0,
    output wire [15:0] out_intel_reserved_ffwd_11_0,
    output wire [15:0] out_intel_reserved_ffwd_12_0,
    output wire [15:0] out_intel_reserved_ffwd_13_0,
    output wire [15:0] out_intel_reserved_ffwd_14_0,
    output wire [15:0] out_intel_reserved_ffwd_15_0,
    output wire [15:0] out_intel_reserved_ffwd_16_0,
    output wire [15:0] out_intel_reserved_ffwd_17_0,
    output wire [15:0] out_intel_reserved_ffwd_18_0,
    output wire [15:0] out_intel_reserved_ffwd_19_0,
    output wire [15:0] out_intel_reserved_ffwd_1_0,
    output wire [15:0] out_intel_reserved_ffwd_20_0,
    output wire [15:0] out_intel_reserved_ffwd_21_0,
    output wire [15:0] out_intel_reserved_ffwd_22_0,
    output wire [15:0] out_intel_reserved_ffwd_23_0,
    output wire [15:0] out_intel_reserved_ffwd_24_0,
    output wire [15:0] out_intel_reserved_ffwd_25_0,
    output wire [15:0] out_intel_reserved_ffwd_26_0,
    output wire [15:0] out_intel_reserved_ffwd_27_0,
    output wire [15:0] out_intel_reserved_ffwd_28_0,
    output wire [15:0] out_intel_reserved_ffwd_29_0,
    output wire [15:0] out_intel_reserved_ffwd_2_0,
    output wire [15:0] out_intel_reserved_ffwd_30_0,
    output wire [15:0] out_intel_reserved_ffwd_31_0,
    output wire [15:0] out_intel_reserved_ffwd_32_0,
    output wire [15:0] out_intel_reserved_ffwd_33_0,
    output wire [15:0] out_intel_reserved_ffwd_34_0,
    output wire [15:0] out_intel_reserved_ffwd_35_0,
    output wire [15:0] out_intel_reserved_ffwd_36_0,
    output wire [15:0] out_intel_reserved_ffwd_37_0,
    output wire [15:0] out_intel_reserved_ffwd_38_0,
    output wire [15:0] out_intel_reserved_ffwd_39_0,
    output wire [15:0] out_intel_reserved_ffwd_3_0,
    output wire [15:0] out_intel_reserved_ffwd_40_0,
    output wire [15:0] out_intel_reserved_ffwd_41_0,
    output wire [15:0] out_intel_reserved_ffwd_42_0,
    output wire [15:0] out_intel_reserved_ffwd_43_0,
    output wire [15:0] out_intel_reserved_ffwd_44_0,
    output wire [15:0] out_intel_reserved_ffwd_45_0,
    output wire [15:0] out_intel_reserved_ffwd_46_0,
    output wire [15:0] out_intel_reserved_ffwd_47_0,
    output wire [15:0] out_intel_reserved_ffwd_48_0,
    output wire [15:0] out_intel_reserved_ffwd_49_0,
    output wire [15:0] out_intel_reserved_ffwd_4_0,
    output wire [15:0] out_intel_reserved_ffwd_50_0,
    output wire [15:0] out_intel_reserved_ffwd_51_0,
    output wire [15:0] out_intel_reserved_ffwd_52_0,
    output wire [15:0] out_intel_reserved_ffwd_53_0,
    output wire [15:0] out_intel_reserved_ffwd_54_0,
    output wire [15:0] out_intel_reserved_ffwd_55_0,
    output wire [15:0] out_intel_reserved_ffwd_56_0,
    output wire [15:0] out_intel_reserved_ffwd_57_0,
    output wire [15:0] out_intel_reserved_ffwd_58_0,
    output wire [15:0] out_intel_reserved_ffwd_59_0,
    output wire [15:0] out_intel_reserved_ffwd_5_0,
    output wire [15:0] out_intel_reserved_ffwd_60_0,
    output wire [15:0] out_intel_reserved_ffwd_61_0,
    output wire [15:0] out_intel_reserved_ffwd_62_0,
    output wire [15:0] out_intel_reserved_ffwd_63_0,
    output wire [15:0] out_intel_reserved_ffwd_64_0,
    output wire [15:0] out_intel_reserved_ffwd_6_0,
    output wire [15:0] out_intel_reserved_ffwd_7_0,
    output wire [15:0] out_intel_reserved_ffwd_8_0,
    output wire [15:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_loopback1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [15:0] c_i16_0589_q;
    wire [15:0] c_i16_1023556_q;
    wire [31:0] c_i32_0555_q;
    wire [31:0] c_i32_1587_q;
    wire [3:0] c_i4_7552_q;
    wire [5:0] c_i6_1592_q;
    wire [5:0] c_i6_30590_q;
    wire [3:0] i_cleanups_shl721_loopback5_vt_join_q;
    wire [2:0] i_cleanups_shl721_loopback5_vt_select_3_b;
    wire [15:0] i_conv_loopback14_q;
    wire [5:0] i_conv_loopback14_vt_const_15_q;
    wire [15:0] i_conv_loopback14_vt_join_q;
    wire [9:0] i_conv_loopback14_vt_select_9_b;
    wire [6:0] i_fpga_indvars_iv_next_loopback281_a;
    wire [6:0] i_fpga_indvars_iv_next_loopback281_b;
    logic [6:0] i_fpga_indvars_iv_next_loopback281_o;
    wire [6:0] i_fpga_indvars_iv_next_loopback281_q;
    wire [32:0] i_inc_loopback271_a;
    wire [32:0] i_inc_loopback271_b;
    logic [32:0] i_inc_loopback271_o;
    wire [32:0] i_inc_loopback271_q;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback10_loopback289_out_intel_reserved_ffwd_7_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback11_loopback290_out_intel_reserved_ffwd_8_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback12_loopback291_out_intel_reserved_ffwd_9_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback13_loopback292_out_intel_reserved_ffwd_10_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback14_loopback293_out_intel_reserved_ffwd_11_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback15_loopback294_out_intel_reserved_ffwd_12_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback16_loopback295_out_intel_reserved_ffwd_13_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback17_loopback296_out_intel_reserved_ffwd_14_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback18_loopback297_out_intel_reserved_ffwd_15_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback19_loopback298_out_intel_reserved_ffwd_16_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback20_loopback299_out_intel_reserved_ffwd_17_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback21_loopback300_out_intel_reserved_ffwd_18_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback22_loopback301_out_intel_reserved_ffwd_19_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback23_loopback302_out_intel_reserved_ffwd_20_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback24_loopback303_out_intel_reserved_ffwd_21_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback25_loopback304_out_intel_reserved_ffwd_22_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback26_loopback305_out_intel_reserved_ffwd_23_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback27_loopback306_out_intel_reserved_ffwd_24_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback28_loopback307_out_intel_reserved_ffwd_25_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback29_loopback308_out_intel_reserved_ffwd_26_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback30_loopback309_out_intel_reserved_ffwd_27_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback31_loopback310_out_intel_reserved_ffwd_28_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback32_loopback311_out_intel_reserved_ffwd_29_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback33_loopback312_out_intel_reserved_ffwd_30_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback34_loopback313_out_intel_reserved_ffwd_31_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback35_loopback314_out_intel_reserved_ffwd_32_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback36_loopback315_out_intel_reserved_ffwd_33_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback37_loopback316_out_intel_reserved_ffwd_34_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback38_loopback317_out_intel_reserved_ffwd_35_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback39_loopback318_out_intel_reserved_ffwd_36_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback40_loopback319_out_intel_reserved_ffwd_37_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback41_loopback320_out_intel_reserved_ffwd_38_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback42_loopback321_out_intel_reserved_ffwd_39_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback43_loopback322_out_intel_reserved_ffwd_40_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback44_loopback323_out_intel_reserved_ffwd_41_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback45_loopback324_out_intel_reserved_ffwd_42_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback46_loopback325_out_intel_reserved_ffwd_43_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback47_loopback326_out_intel_reserved_ffwd_44_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback48_loopback327_out_intel_reserved_ffwd_45_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback49_loopback328_out_intel_reserved_ffwd_46_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback4_loopback283_out_intel_reserved_ffwd_1_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback50_loopback329_out_intel_reserved_ffwd_47_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback51_loopback330_out_intel_reserved_ffwd_48_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback52_loopback331_out_intel_reserved_ffwd_49_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback53_loopback332_out_intel_reserved_ffwd_50_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback54_loopback333_out_intel_reserved_ffwd_51_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback55_loopback334_out_intel_reserved_ffwd_52_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback56_loopback335_out_intel_reserved_ffwd_53_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback57_loopback336_out_intel_reserved_ffwd_54_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback58_loopback337_out_intel_reserved_ffwd_55_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback59_loopback338_out_intel_reserved_ffwd_56_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback5_loopback284_out_intel_reserved_ffwd_2_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback60_loopback339_out_intel_reserved_ffwd_57_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback61_loopback340_out_intel_reserved_ffwd_58_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback62_loopback341_out_intel_reserved_ffwd_59_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback63_loopback342_out_intel_reserved_ffwd_60_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback64_loopback343_out_intel_reserved_ffwd_61_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback65_loopback344_out_intel_reserved_ffwd_62_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback66_loopback345_out_intel_reserved_ffwd_63_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback67_loopback346_out_intel_reserved_ffwd_64_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback6_loopback285_out_intel_reserved_ffwd_3_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback7_loopback286_out_intel_reserved_ffwd_4_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback8_loopback287_out_intel_reserved_ffwd_5_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback9_loopback288_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going717_loopback6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going717_loopback6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going717_loopback6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going717_loopback6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going717_loopback6_out_pipeline_valid_out;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_0_0_pop40_loopback79_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_0_0_pop40_loopback79_out_feedback_stall_out_40;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_10_0_pop36_loopback91_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_10_0_pop36_loopback91_out_feedback_stall_out_36;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_12_0_pop35_loopback94_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_12_0_pop35_loopback94_out_feedback_stall_out_35;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_14_0_pop34_loopback97_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_14_0_pop34_loopback97_out_feedback_stall_out_34;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_16_0_pop33_loopback100_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_16_0_pop33_loopback100_out_feedback_stall_out_33;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_18_0_pop32_loopback103_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_18_0_pop32_loopback103_out_feedback_stall_out_32;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_20_0_pop31_loopback106_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_20_0_pop31_loopback106_out_feedback_stall_out_31;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_22_0_pop30_loopback109_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_22_0_pop30_loopback109_out_feedback_stall_out_30;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_24_0_pop29_loopback112_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_24_0_pop29_loopback112_out_feedback_stall_out_29;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_26_0_pop28_loopback115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_26_0_pop28_loopback115_out_feedback_stall_out_28;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_28_0_pop27_loopback118_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_28_0_pop27_loopback118_out_feedback_stall_out_27;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_30_0_pop26_loopback121_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_30_0_pop26_loopback121_out_feedback_stall_out_26;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_32_0_pop25_loopback124_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_32_0_pop25_loopback124_out_feedback_stall_out_25;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_34_0_pop24_loopback127_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_34_0_pop24_loopback127_out_feedback_stall_out_24;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_36_0_pop23_loopback130_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_36_0_pop23_loopback130_out_feedback_stall_out_23;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_38_0_pop22_loopback133_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_38_0_pop22_loopback133_out_feedback_stall_out_22;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_40_0_pop21_loopback136_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_40_0_pop21_loopback136_out_feedback_stall_out_21;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_42_0_pop20_loopback139_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_42_0_pop20_loopback139_out_feedback_stall_out_20;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_44_0_pop19_loopback142_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_44_0_pop19_loopback142_out_feedback_stall_out_19;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_46_0_pop18_loopback145_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_46_0_pop18_loopback145_out_feedback_stall_out_18;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_48_0_pop17_loopback148_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_48_0_pop17_loopback148_out_feedback_stall_out_17;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_4_0_pop39_loopback82_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_4_0_pop39_loopback82_out_feedback_stall_out_39;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_50_0_pop16_loopback151_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_50_0_pop16_loopback151_out_feedback_stall_out_16;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_52_0_pop15_loopback154_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_52_0_pop15_loopback154_out_feedback_stall_out_15;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_54_0_pop14_loopback157_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_54_0_pop14_loopback157_out_feedback_stall_out_14;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_56_0_pop13_loopback160_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_56_0_pop13_loopback160_out_feedback_stall_out_13;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_58_0_pop12_loopback163_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_58_0_pop12_loopback163_out_feedback_stall_out_12;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_60_0_pop11_loopback166_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_60_0_pop11_loopback166_out_feedback_stall_out_11;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_62_0_pop10_loopback169_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_62_0_pop10_loopback169_out_feedback_stall_out_10;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_64_0_pop9_loopback172_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_64_0_pop9_loopback172_out_feedback_stall_out_9;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_6_0_pop38_loopback85_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_6_0_pop38_loopback85_out_feedback_stall_out_38;
    wire [15:0] i_llvm_fpga_pop_i16_a_sroa_8_0_pop37_loopback88_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_a_sroa_8_0_pop37_loopback88_out_feedback_stall_out_37;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_0_0_pop72_loopback175_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_0_0_pop72_loopback175_out_feedback_stall_out_72;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_11_0_pop69_loopback184_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_11_0_pop69_loopback184_out_feedback_stall_out_69;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_14_0_pop68_loopback187_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_14_0_pop68_loopback187_out_feedback_stall_out_68;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_17_0_pop67_loopback190_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_17_0_pop67_loopback190_out_feedback_stall_out_67;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_20_0_pop66_loopback193_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_20_0_pop66_loopback193_out_feedback_stall_out_66;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_23_0_pop65_loopback196_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_23_0_pop65_loopback196_out_feedback_stall_out_65;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_26_0_pop64_loopback199_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_26_0_pop64_loopback199_out_feedback_stall_out_64;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_29_0_pop63_loopback202_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_29_0_pop63_loopback202_out_feedback_stall_out_63;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_32_0_pop62_loopback205_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_32_0_pop62_loopback205_out_feedback_stall_out_62;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_35_0_pop61_loopback208_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_35_0_pop61_loopback208_out_feedback_stall_out_61;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_38_0_pop60_loopback211_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_38_0_pop60_loopback211_out_feedback_stall_out_60;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_41_0_pop59_loopback214_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_41_0_pop59_loopback214_out_feedback_stall_out_59;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_44_0_pop58_loopback217_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_44_0_pop58_loopback217_out_feedback_stall_out_58;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_47_0_pop57_loopback220_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_47_0_pop57_loopback220_out_feedback_stall_out_57;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_50_0_pop56_loopback223_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_50_0_pop56_loopback223_out_feedback_stall_out_56;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_53_0_pop55_loopback226_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_53_0_pop55_loopback226_out_feedback_stall_out_55;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_56_0_pop54_loopback229_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_56_0_pop54_loopback229_out_feedback_stall_out_54;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_59_0_pop53_loopback232_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_59_0_pop53_loopback232_out_feedback_stall_out_53;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_5_0_pop71_loopback178_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_5_0_pop71_loopback178_out_feedback_stall_out_71;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_62_0_pop52_loopback235_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_62_0_pop52_loopback235_out_feedback_stall_out_52;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_65_0_pop51_loopback238_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_65_0_pop51_loopback238_out_feedback_stall_out_51;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_68_0_pop50_loopback241_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_68_0_pop50_loopback241_out_feedback_stall_out_50;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_71_0_pop49_loopback244_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_71_0_pop49_loopback244_out_feedback_stall_out_49;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_74_0_pop48_loopback247_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_74_0_pop48_loopback247_out_feedback_stall_out_48;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_77_0_pop47_loopback250_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_77_0_pop47_loopback250_out_feedback_stall_out_47;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_80_0_pop46_loopback253_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_80_0_pop46_loopback253_out_feedback_stall_out_46;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_83_0_pop45_loopback256_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_83_0_pop45_loopback256_out_feedback_stall_out_45;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_86_0_pop44_loopback259_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_86_0_pop44_loopback259_out_feedback_stall_out_44;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_89_0_pop43_loopback262_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_89_0_pop43_loopback262_out_feedback_stall_out_43;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_8_0_pop70_loopback181_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_8_0_pop70_loopback181_out_feedback_stall_out_70;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_92_0_pop42_loopback265_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_92_0_pop42_loopback265_out_feedback_stall_out_42;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_95_0_pop41_loopback268_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_95_0_pop41_loopback268_out_feedback_stall_out_41;
    wire [31:0] i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_feedback_stall_out_73;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups720_pop75_loopback2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups720_pop75_loopback2_out_feedback_stall_out_75;
    wire [3:0] i_llvm_fpga_pop_i4_initerations715_pop74_loopback7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations715_pop74_loopback7_out_feedback_stall_out_74;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop8_loopback273_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop8_loopback273_out_feedback_stall_out_8;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_0_0_push40_loopback81_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_0_0_push40_loopback81_out_feedback_valid_out_40;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_10_0_push36_loopback93_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_10_0_push36_loopback93_out_feedback_valid_out_36;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_12_0_push35_loopback96_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_12_0_push35_loopback96_out_feedback_valid_out_35;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_14_0_push34_loopback99_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_14_0_push34_loopback99_out_feedback_valid_out_34;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_16_0_push33_loopback102_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_16_0_push33_loopback102_out_feedback_valid_out_33;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_18_0_push32_loopback105_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_18_0_push32_loopback105_out_feedback_valid_out_32;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_20_0_push31_loopback108_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_20_0_push31_loopback108_out_feedback_valid_out_31;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_22_0_push30_loopback111_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_22_0_push30_loopback111_out_feedback_valid_out_30;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_24_0_push29_loopback114_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_24_0_push29_loopback114_out_feedback_valid_out_29;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_26_0_push28_loopback117_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_26_0_push28_loopback117_out_feedback_valid_out_28;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_28_0_push27_loopback120_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_28_0_push27_loopback120_out_feedback_valid_out_27;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_30_0_push26_loopback123_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_30_0_push26_loopback123_out_feedback_valid_out_26;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_32_0_push25_loopback126_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_32_0_push25_loopback126_out_feedback_valid_out_25;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_34_0_push24_loopback129_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_34_0_push24_loopback129_out_feedback_valid_out_24;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_36_0_push23_loopback132_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_36_0_push23_loopback132_out_feedback_valid_out_23;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_38_0_push22_loopback135_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_38_0_push22_loopback135_out_feedback_valid_out_22;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_40_0_push21_loopback138_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_40_0_push21_loopback138_out_feedback_valid_out_21;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_42_0_push20_loopback141_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_42_0_push20_loopback141_out_feedback_valid_out_20;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_44_0_push19_loopback144_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_44_0_push19_loopback144_out_feedback_valid_out_19;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_46_0_push18_loopback147_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_46_0_push18_loopback147_out_feedback_valid_out_18;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_48_0_push17_loopback150_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_48_0_push17_loopback150_out_feedback_valid_out_17;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_4_0_push39_loopback84_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_4_0_push39_loopback84_out_feedback_valid_out_39;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_50_0_push16_loopback153_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_50_0_push16_loopback153_out_feedback_valid_out_16;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_52_0_push15_loopback156_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_52_0_push15_loopback156_out_feedback_valid_out_15;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_54_0_push14_loopback159_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_54_0_push14_loopback159_out_feedback_valid_out_14;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_56_0_push13_loopback162_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_56_0_push13_loopback162_out_feedback_valid_out_13;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_58_0_push12_loopback165_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_58_0_push12_loopback165_out_feedback_valid_out_12;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_60_0_push11_loopback168_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_60_0_push11_loopback168_out_feedback_valid_out_11;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_62_0_push10_loopback171_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_62_0_push10_loopback171_out_feedback_valid_out_10;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_64_0_push9_loopback174_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_64_0_push9_loopback174_out_feedback_valid_out_9;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_6_0_push38_loopback87_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_6_0_push38_loopback87_out_feedback_valid_out_38;
    wire [15:0] i_llvm_fpga_push_i16_a_sroa_8_0_push37_loopback90_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i16_a_sroa_8_0_push37_loopback90_out_feedback_valid_out_37;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_0_0_push72_loopback177_out_feedback_out_72;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_0_0_push72_loopback177_out_feedback_valid_out_72;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_11_0_push69_loopback186_out_feedback_out_69;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_11_0_push69_loopback186_out_feedback_valid_out_69;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_14_0_push68_loopback189_out_feedback_out_68;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_14_0_push68_loopback189_out_feedback_valid_out_68;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_17_0_push67_loopback192_out_feedback_out_67;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_17_0_push67_loopback192_out_feedback_valid_out_67;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_20_0_push66_loopback195_out_feedback_out_66;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_20_0_push66_loopback195_out_feedback_valid_out_66;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_23_0_push65_loopback198_out_feedback_out_65;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_23_0_push65_loopback198_out_feedback_valid_out_65;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_26_0_push64_loopback201_out_feedback_out_64;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_26_0_push64_loopback201_out_feedback_valid_out_64;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_29_0_push63_loopback204_out_feedback_out_63;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_29_0_push63_loopback204_out_feedback_valid_out_63;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_32_0_push62_loopback207_out_feedback_out_62;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_32_0_push62_loopback207_out_feedback_valid_out_62;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_35_0_push61_loopback210_out_feedback_out_61;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_35_0_push61_loopback210_out_feedback_valid_out_61;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_38_0_push60_loopback213_out_feedback_out_60;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_38_0_push60_loopback213_out_feedback_valid_out_60;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_41_0_push59_loopback216_out_feedback_out_59;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_41_0_push59_loopback216_out_feedback_valid_out_59;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_44_0_push58_loopback219_out_feedback_out_58;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_44_0_push58_loopback219_out_feedback_valid_out_58;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_47_0_push57_loopback222_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_47_0_push57_loopback222_out_feedback_valid_out_57;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_50_0_push56_loopback225_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_50_0_push56_loopback225_out_feedback_valid_out_56;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_53_0_push55_loopback228_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_53_0_push55_loopback228_out_feedback_valid_out_55;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_56_0_push54_loopback231_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_56_0_push54_loopback231_out_feedback_valid_out_54;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_59_0_push53_loopback234_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_59_0_push53_loopback234_out_feedback_valid_out_53;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_5_0_push71_loopback180_out_feedback_out_71;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_5_0_push71_loopback180_out_feedback_valid_out_71;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_62_0_push52_loopback237_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_62_0_push52_loopback237_out_feedback_valid_out_52;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_65_0_push51_loopback240_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_65_0_push51_loopback240_out_feedback_valid_out_51;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_68_0_push50_loopback243_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_68_0_push50_loopback243_out_feedback_valid_out_50;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_71_0_push49_loopback246_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_71_0_push49_loopback246_out_feedback_valid_out_49;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_74_0_push48_loopback249_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_74_0_push48_loopback249_out_feedback_valid_out_48;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_77_0_push47_loopback252_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_77_0_push47_loopback252_out_feedback_valid_out_47;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_80_0_push46_loopback255_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_80_0_push46_loopback255_out_feedback_valid_out_46;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_83_0_push45_loopback258_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_83_0_push45_loopback258_out_feedback_valid_out_45;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_86_0_push44_loopback261_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_86_0_push44_loopback261_out_feedback_valid_out_44;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_89_0_push43_loopback264_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_89_0_push43_loopback264_out_feedback_valid_out_43;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_8_0_push70_loopback183_out_feedback_out_70;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_8_0_push70_loopback183_out_feedback_valid_out_70;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_92_0_push42_loopback267_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_92_0_push42_loopback267_out_feedback_valid_out_42;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_95_0_push41_loopback270_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_95_0_push41_loopback270_out_feedback_valid_out_41;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration719_loopback11_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration719_loopback11_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond727_loopback277_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond727_loopback277_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_k_015_push73_loopback272_out_feedback_out_73;
    wire [0:0] i_llvm_fpga_push_i32_k_015_push73_loopback272_out_feedback_valid_out_73;
    wire [7:0] i_llvm_fpga_push_i4_cleanups720_push75_loopback280_out_feedback_out_75;
    wire [0:0] i_llvm_fpga_push_i4_cleanups720_push75_loopback280_out_feedback_valid_out_75;
    wire [7:0] i_llvm_fpga_push_i4_initerations715_push74_loopback9_out_feedback_out_74;
    wire [0:0] i_llvm_fpga_push_i4_initerations715_push74_loopback9_out_feedback_valid_out_74;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push8_loopback282_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push8_loopback282_out_feedback_valid_out_8;
    wire [0:0] i_masked726_loopback347_q;
    wire [0:0] i_next_cleanups725_loopback279_s;
    reg [3:0] i_next_cleanups725_loopback279_q;
    wire [3:0] i_next_initerations716_loopback8_vt_join_q;
    wire [2:0] i_next_initerations716_loopback8_vt_select_2_b;
    wire [0:0] i_notcmp713_loopback276_q;
    wire [0:0] i_or724_loopback278_q;
    wire [0:0] i_spec_select382_loopback86_s;
    reg [15:0] i_spec_select382_loopback86_q;
    wire [0:0] i_spec_select383_loopback89_s;
    reg [15:0] i_spec_select383_loopback89_q;
    wire [0:0] i_spec_select384_loopback92_s;
    reg [15:0] i_spec_select384_loopback92_q;
    wire [0:0] i_spec_select385_loopback95_s;
    reg [15:0] i_spec_select385_loopback95_q;
    wire [0:0] i_spec_select386_loopback98_s;
    reg [15:0] i_spec_select386_loopback98_q;
    wire [0:0] i_spec_select387_loopback101_s;
    reg [15:0] i_spec_select387_loopback101_q;
    wire [0:0] i_spec_select388_loopback104_s;
    reg [15:0] i_spec_select388_loopback104_q;
    wire [0:0] i_spec_select389_loopback107_s;
    reg [15:0] i_spec_select389_loopback107_q;
    wire [0:0] i_spec_select390_loopback110_s;
    reg [15:0] i_spec_select390_loopback110_q;
    wire [0:0] i_spec_select391_loopback113_s;
    reg [15:0] i_spec_select391_loopback113_q;
    wire [0:0] i_spec_select392_loopback116_s;
    reg [15:0] i_spec_select392_loopback116_q;
    wire [0:0] i_spec_select393_loopback119_s;
    reg [15:0] i_spec_select393_loopback119_q;
    wire [0:0] i_spec_select394_loopback122_s;
    reg [15:0] i_spec_select394_loopback122_q;
    wire [0:0] i_spec_select395_loopback125_s;
    reg [15:0] i_spec_select395_loopback125_q;
    wire [0:0] i_spec_select396_loopback128_s;
    reg [15:0] i_spec_select396_loopback128_q;
    wire [0:0] i_spec_select397_loopback131_s;
    reg [15:0] i_spec_select397_loopback131_q;
    wire [0:0] i_spec_select398_loopback134_s;
    reg [15:0] i_spec_select398_loopback134_q;
    wire [0:0] i_spec_select399_loopback137_s;
    reg [15:0] i_spec_select399_loopback137_q;
    wire [0:0] i_spec_select400_loopback140_s;
    reg [15:0] i_spec_select400_loopback140_q;
    wire [0:0] i_spec_select401_loopback143_s;
    reg [15:0] i_spec_select401_loopback143_q;
    wire [0:0] i_spec_select402_loopback146_s;
    reg [15:0] i_spec_select402_loopback146_q;
    wire [0:0] i_spec_select403_loopback149_s;
    reg [15:0] i_spec_select403_loopback149_q;
    wire [0:0] i_spec_select404_loopback152_s;
    reg [15:0] i_spec_select404_loopback152_q;
    wire [0:0] i_spec_select405_loopback155_s;
    reg [15:0] i_spec_select405_loopback155_q;
    wire [0:0] i_spec_select406_loopback158_s;
    reg [15:0] i_spec_select406_loopback158_q;
    wire [0:0] i_spec_select407_loopback161_s;
    reg [15:0] i_spec_select407_loopback161_q;
    wire [0:0] i_spec_select408_loopback164_s;
    reg [15:0] i_spec_select408_loopback164_q;
    wire [0:0] i_spec_select409_loopback167_s;
    reg [15:0] i_spec_select409_loopback167_q;
    wire [0:0] i_spec_select410_loopback170_s;
    reg [15:0] i_spec_select410_loopback170_q;
    wire [0:0] i_spec_select411_loopback173_s;
    reg [15:0] i_spec_select411_loopback173_q;
    wire [0:0] i_spec_select412_loopback176_s;
    reg [15:0] i_spec_select412_loopback176_q;
    wire [0:0] i_spec_select413_loopback182_s;
    reg [15:0] i_spec_select413_loopback182_q;
    wire [0:0] i_spec_select414_loopback185_s;
    reg [15:0] i_spec_select414_loopback185_q;
    wire [0:0] i_spec_select415_loopback188_s;
    reg [15:0] i_spec_select415_loopback188_q;
    wire [0:0] i_spec_select416_loopback191_s;
    reg [15:0] i_spec_select416_loopback191_q;
    wire [0:0] i_spec_select417_loopback194_s;
    reg [15:0] i_spec_select417_loopback194_q;
    wire [0:0] i_spec_select418_loopback197_s;
    reg [15:0] i_spec_select418_loopback197_q;
    wire [0:0] i_spec_select419_loopback200_s;
    reg [15:0] i_spec_select419_loopback200_q;
    wire [0:0] i_spec_select420_loopback203_s;
    reg [15:0] i_spec_select420_loopback203_q;
    wire [0:0] i_spec_select421_loopback206_s;
    reg [15:0] i_spec_select421_loopback206_q;
    wire [0:0] i_spec_select422_loopback209_s;
    reg [15:0] i_spec_select422_loopback209_q;
    wire [0:0] i_spec_select423_loopback212_s;
    reg [15:0] i_spec_select423_loopback212_q;
    wire [0:0] i_spec_select424_loopback215_s;
    reg [15:0] i_spec_select424_loopback215_q;
    wire [0:0] i_spec_select425_loopback218_s;
    reg [15:0] i_spec_select425_loopback218_q;
    wire [0:0] i_spec_select426_loopback221_s;
    reg [15:0] i_spec_select426_loopback221_q;
    wire [0:0] i_spec_select427_loopback224_s;
    reg [15:0] i_spec_select427_loopback224_q;
    wire [0:0] i_spec_select428_loopback227_s;
    reg [15:0] i_spec_select428_loopback227_q;
    wire [0:0] i_spec_select429_loopback230_s;
    reg [15:0] i_spec_select429_loopback230_q;
    wire [0:0] i_spec_select430_loopback233_s;
    reg [15:0] i_spec_select430_loopback233_q;
    wire [0:0] i_spec_select431_loopback236_s;
    reg [15:0] i_spec_select431_loopback236_q;
    wire [0:0] i_spec_select432_loopback239_s;
    reg [15:0] i_spec_select432_loopback239_q;
    wire [0:0] i_spec_select433_loopback242_s;
    reg [15:0] i_spec_select433_loopback242_q;
    wire [0:0] i_spec_select434_loopback245_s;
    reg [15:0] i_spec_select434_loopback245_q;
    wire [0:0] i_spec_select435_loopback248_s;
    reg [15:0] i_spec_select435_loopback248_q;
    wire [0:0] i_spec_select436_loopback251_s;
    reg [15:0] i_spec_select436_loopback251_q;
    wire [0:0] i_spec_select437_loopback254_s;
    reg [15:0] i_spec_select437_loopback254_q;
    wire [0:0] i_spec_select438_loopback257_s;
    reg [15:0] i_spec_select438_loopback257_q;
    wire [0:0] i_spec_select439_loopback260_s;
    reg [15:0] i_spec_select439_loopback260_q;
    wire [0:0] i_spec_select440_loopback263_s;
    reg [15:0] i_spec_select440_loopback263_q;
    wire [0:0] i_spec_select441_loopback266_s;
    reg [15:0] i_spec_select441_loopback266_q;
    wire [0:0] i_spec_select442_loopback269_s;
    reg [15:0] i_spec_select442_loopback269_q;
    wire [0:0] i_spec_select_loopback80_s;
    reg [15:0] i_spec_select_loopback80_q;
    wire [0:0] i_unnamed_loopback15_q;
    wire [0:0] i_unnamed_loopback17_q;
    wire [0:0] i_unnamed_loopback179_s;
    reg [15:0] i_unnamed_loopback179_q;
    wire [0:0] i_unnamed_loopback19_q;
    wire [0:0] i_unnamed_loopback21_q;
    wire [0:0] i_unnamed_loopback23_q;
    wire [0:0] i_unnamed_loopback25_q;
    wire [0:0] i_unnamed_loopback27_q;
    wire [0:0] i_unnamed_loopback29_q;
    wire [0:0] i_unnamed_loopback31_q;
    wire [0:0] i_unnamed_loopback33_q;
    wire [0:0] i_unnamed_loopback35_q;
    wire [0:0] i_unnamed_loopback37_q;
    wire [0:0] i_unnamed_loopback39_q;
    wire [0:0] i_unnamed_loopback41_q;
    wire [0:0] i_unnamed_loopback43_q;
    wire [0:0] i_unnamed_loopback45_q;
    wire [0:0] i_unnamed_loopback47_q;
    wire [0:0] i_unnamed_loopback49_q;
    wire [0:0] i_unnamed_loopback51_q;
    wire [0:0] i_unnamed_loopback53_q;
    wire [0:0] i_unnamed_loopback55_q;
    wire [0:0] i_unnamed_loopback57_q;
    wire [0:0] i_unnamed_loopback59_q;
    wire [0:0] i_unnamed_loopback61_q;
    wire [0:0] i_unnamed_loopback63_q;
    wire [0:0] i_unnamed_loopback65_q;
    wire [0:0] i_unnamed_loopback67_q;
    wire [0:0] i_unnamed_loopback69_q;
    wire [0:0] i_unnamed_loopback71_q;
    wire [0:0] i_unnamed_loopback73_q;
    wire [0:0] i_unnamed_loopback75_q;
    wire [0:0] i_unnamed_loopback77_q;
    wire [0:0] i_unnamed_loopback83_s;
    reg [15:0] i_unnamed_loopback83_q;
    wire [0:0] i_xor723_loopback4_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_loopback281_sel_x_b;
    wire [31:0] bgTrunc_i_inc_loopback271_sel_x_b;
    wire [31:0] c_i32_10578_recast_x_q;
    wire [31:0] c_i32_11577_recast_x_q;
    wire [31:0] c_i32_12576_recast_x_q;
    wire [31:0] c_i32_13575_recast_x_q;
    wire [31:0] c_i32_14574_recast_x_q;
    wire [31:0] c_i32_15573_recast_x_q;
    wire [31:0] c_i32_16572_recast_x_q;
    wire [31:0] c_i32_17571_recast_x_q;
    wire [31:0] c_i32_18570_recast_x_q;
    wire [31:0] c_i32_19569_recast_x_q;
    wire [31:0] c_i32_20568_recast_x_q;
    wire [31:0] c_i32_21567_recast_x_q;
    wire [31:0] c_i32_22566_recast_x_q;
    wire [31:0] c_i32_23565_recast_x_q;
    wire [31:0] c_i32_24564_recast_x_q;
    wire [31:0] c_i32_25563_recast_x_q;
    wire [31:0] c_i32_2586_recast_x_q;
    wire [31:0] c_i32_26562_recast_x_q;
    wire [31:0] c_i32_27561_recast_x_q;
    wire [31:0] c_i32_28560_recast_x_q;
    wire [31:0] c_i32_29559_recast_x_q;
    wire [31:0] c_i32_30558_recast_x_q;
    wire [31:0] c_i32_31557_recast_x_q;
    wire [31:0] c_i32_3585_recast_x_q;
    wire [31:0] c_i32_4584_recast_x_q;
    wire [31:0] c_i32_5583_recast_x_q;
    wire [31:0] c_i32_6582_recast_x_q;
    wire [31:0] c_i32_7581_recast_x_q;
    wire [31:0] c_i32_8580_recast_x_q;
    wire [31:0] c_i32_9579_recast_x_q;
    wire [0:0] i_first_cleanup722_loopback3_sel_x_b;
    wire [0:0] i_last_initeration718_loopback10_sel_x_b;
    wire [15:0] i_unnamed_loopback13_sel_x_b;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg32_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg33_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg34_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg35_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg36_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg37_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg38_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg39_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg40_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg41_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg42_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg43_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg44_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg45_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg46_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg47_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg48_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg49_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg50_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg51_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg52_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg53_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg54_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg55_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg56_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg57_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg58_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg59_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg60_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg61_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg62_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg63_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg64_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg65_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg66_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg67_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg68_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg69_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg70_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg71_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg72_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg73_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg74_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg75_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg76_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg77_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg78_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg79_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg80_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg81_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg82_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg83_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg84_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg85_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg86_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg87_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg88_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg89_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg90_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg91_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg92_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg93_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg94_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg95_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg96_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg97_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg98_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg99_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg100_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg101_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg102_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg103_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg104_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg105_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg106_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg107_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg108_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg109_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg110_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg111_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg112_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg113_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg114_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg115_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg116_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg117_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg118_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg119_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg120_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg121_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg122_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg123_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg124_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg125_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg126_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg127_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg128_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg129_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg130_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg131_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg132_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg133_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg134_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg135_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg136_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg137_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg138_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg139_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg140_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg141_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg142_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg143_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg144_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg145_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg146_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg147_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg148_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg149_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg150_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg151_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg152_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg153_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg154_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg155_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg156_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg157_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg158_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg159_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg160_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg161_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg162_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg163_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg164_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg165_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg166_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg167_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg168_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg169_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg170_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg171_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg172_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg173_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg174_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg175_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg176_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg177_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg178_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg179_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg180_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg181_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg182_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg183_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg184_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg185_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg186_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg187_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg188_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg189_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg190_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg191_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg192_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg193_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg194_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg195_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg196_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg197_q;
    wire [0:0] i_exitcond_loopback274_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid897_i_cleanups_shl721_loopback0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid897_i_cleanups_shl721_loopback0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid898_i_cleanups_shl721_loopback0_shift_x_q;
    wire [0:0] leftShiftStage0_uid900_i_cleanups_shl721_loopback0_shift_x_s;
    reg [3:0] leftShiftStage0_uid900_i_cleanups_shl721_loopback0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid904_i_next_initerations716_loopback0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid906_i_next_initerations716_loopback0_shift_x_q;
    wire [0:0] rightShiftStage0_uid908_i_next_initerations716_loopback0_shift_x_s;
    reg [3:0] rightShiftStage0_uid908_i_next_initerations716_loopback0_shift_x_q;
    reg [0:0] redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together734_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together734_aunroll_x_in_i_valid_1(DELAY,910)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together734_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together734_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1(DELAY,911)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid897_i_cleanups_shl721_loopback0_shift_x(BITSELECT,896)@2
    assign leftShiftStage0Idx1Rng1_uid897_i_cleanups_shl721_loopback0_shift_x_in = i_llvm_fpga_pop_i4_cleanups720_pop75_loopback2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid897_i_cleanups_shl721_loopback0_shift_x_b = leftShiftStage0Idx1Rng1_uid897_i_cleanups_shl721_loopback0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid898_i_cleanups_shl721_loopback0_shift_x(BITJOIN,897)@2
    assign leftShiftStage0Idx1_uid898_i_cleanups_shl721_loopback0_shift_x_q = {leftShiftStage0Idx1Rng1_uid897_i_cleanups_shl721_loopback0_shift_x_b, GND_q};

    // leftShiftStage0_uid900_i_cleanups_shl721_loopback0_shift_x(MUX,899)@2
    assign leftShiftStage0_uid900_i_cleanups_shl721_loopback0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid900_i_cleanups_shl721_loopback0_shift_x_s or i_llvm_fpga_pop_i4_cleanups720_pop75_loopback2_out_data_out or leftShiftStage0Idx1_uid898_i_cleanups_shl721_loopback0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid900_i_cleanups_shl721_loopback0_shift_x_s)
            1'b0 : leftShiftStage0_uid900_i_cleanups_shl721_loopback0_shift_x_q = i_llvm_fpga_pop_i4_cleanups720_pop75_loopback2_out_data_out;
            1'b1 : leftShiftStage0_uid900_i_cleanups_shl721_loopback0_shift_x_q = leftShiftStage0Idx1_uid898_i_cleanups_shl721_loopback0_shift_x_q;
            default : leftShiftStage0_uid900_i_cleanups_shl721_loopback0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl721_loopback5_vt_select_3(BITSELECT,220)@2
    assign i_cleanups_shl721_loopback5_vt_select_3_b = leftShiftStage0_uid900_i_cleanups_shl721_loopback0_shift_x_q[3:1];

    // i_cleanups_shl721_loopback5_vt_join(BITJOIN,219)@2
    assign i_cleanups_shl721_loopback5_vt_join_q = {i_cleanups_shl721_loopback5_vt_select_3_b, GND_q};

    // i_xor723_loopback4(LOGICAL,537)@2
    assign i_xor723_loopback4_q = i_first_cleanup722_loopback3_sel_x_b ^ VCC_q;

    // i_notcmp713_loopback276(LOGICAL,438)@2
    assign i_notcmp713_loopback276_q = i_exitcond_loopback274_cmp_nsign_q ^ VCC_q;

    // i_or724_loopback278(LOGICAL,439)@2
    assign i_or724_loopback278_q = i_notcmp713_loopback276_q | i_xor723_loopback4_q;

    // i_next_cleanups725_loopback279(MUX,434)@2
    assign i_next_cleanups725_loopback279_s = i_or724_loopback278_q;
    always @(i_next_cleanups725_loopback279_s or i_llvm_fpga_pop_i4_cleanups720_pop75_loopback2_out_data_out or i_cleanups_shl721_loopback5_vt_join_q)
    begin
        unique case (i_next_cleanups725_loopback279_s)
            1'b0 : i_next_cleanups725_loopback279_q = i_llvm_fpga_pop_i4_cleanups720_pop75_loopback2_out_data_out;
            1'b1 : i_next_cleanups725_loopback279_q = i_cleanups_shl721_loopback5_vt_join_q;
            default : i_next_cleanups725_loopback279_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups720_push75_loopback280(BLACKBOX,430)@2
    // out out_feedback_out_75@20000000
    // out out_feedback_valid_out_75@20000000
    loopback_i_llvm_fpga_push_i4_cleanups720_push75_0 thei_llvm_fpga_push_i4_cleanups720_push75_loopback280 (
        .in_data_in(i_next_cleanups725_loopback279_q),
        .in_feedback_stall_in_75(i_llvm_fpga_pop_i4_cleanups720_pop75_loopback2_out_feedback_stall_out_75),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together734_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_75(i_llvm_fpga_push_i4_cleanups720_push75_loopback280_out_feedback_out_75),
        .out_feedback_valid_out_75(i_llvm_fpga_push_i4_cleanups720_push75_loopback280_out_feedback_valid_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,909)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // c_i4_7552(CONSTANT,214)
    assign c_i4_7552_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups720_pop75_loopback2(BLACKBOX,360)@2
    // out out_feedback_stall_out_75@20000000
    loopback_i_llvm_fpga_pop_i4_cleanups720_pop75_0 thei_llvm_fpga_pop_i4_cleanups720_pop75_loopback2 (
        .in_data_in(c_i4_7552_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_75(i_llvm_fpga_push_i4_cleanups720_push75_loopback280_out_feedback_out_75),
        .in_feedback_valid_in_75(i_llvm_fpga_push_i4_cleanups720_push75_loopback280_out_feedback_valid_out_75),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together734_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups720_pop75_loopback2_out_data_out),
        .out_feedback_stall_out_75(i_llvm_fpga_pop_i4_cleanups720_pop75_loopback2_out_feedback_stall_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup722_loopback3_sel_x(BITSELECT,677)@2
    assign i_first_cleanup722_loopback3_sel_x_b = i_llvm_fpga_pop_i4_cleanups720_pop75_loopback2_out_data_out[0:0];

    // c_i6_1592(CONSTANT,215)
    assign c_i6_1592_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_loopback281(ADD,227)@2
    assign i_fpga_indvars_iv_next_loopback281_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop8_loopback273_out_data_out};
    assign i_fpga_indvars_iv_next_loopback281_b = {1'b0, c_i6_1592_q};
    assign i_fpga_indvars_iv_next_loopback281_o = $unsigned(i_fpga_indvars_iv_next_loopback281_a) + $unsigned(i_fpga_indvars_iv_next_loopback281_b);
    assign i_fpga_indvars_iv_next_loopback281_q = i_fpga_indvars_iv_next_loopback281_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_loopback281_sel_x(BITSELECT,575)@2
    assign bgTrunc_i_fpga_indvars_iv_next_loopback281_sel_x_b = i_fpga_indvars_iv_next_loopback281_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push8_loopback282(BLACKBOX,432)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    loopback_i_llvm_fpga_push_i6_fpga_indvars_iv_push8_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push8_loopback282 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_loopback281_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop8_loopback273_out_feedback_stall_out_8),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together734_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i6_fpga_indvars_iv_push8_loopback282_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i6_fpga_indvars_iv_push8_loopback282_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_30590(CONSTANT,216)
    assign c_i6_30590_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop8_loopback273(BLACKBOX,362)@2
    // out out_feedback_stall_out_8@20000000
    loopback_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop8_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop8_loopback273 (
        .in_data_in(c_i6_30590_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_8(i_llvm_fpga_push_i6_fpga_indvars_iv_push8_loopback282_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i6_fpga_indvars_iv_push8_loopback282_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together734_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop8_loopback273_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop8_loopback273_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_loopback274_cmp_nsign(LOGICAL,892)@2
    assign i_exitcond_loopback274_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop8_loopback273_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond727_loopback277(BLACKBOX,428)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    loopback_i_llvm_fpga_push_i1_notexitcond727_0 thei_llvm_fpga_push_i1_notexitcond727_loopback277 (
        .in_data_in(i_exitcond_loopback274_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going717_loopback6_out_not_exitcond_stall_out),
        .in_first_cleanup722(i_first_cleanup722_loopback3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together734_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond727_loopback277_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond727_loopback277_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,689)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid904_i_next_initerations716_loopback0_shift_x(BITSELECT,903)@2
    assign rightShiftStage0Idx1Rng1_uid904_i_next_initerations716_loopback0_shift_x_b = i_llvm_fpga_pop_i4_initerations715_pop74_loopback7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid906_i_next_initerations716_loopback0_shift_x(BITJOIN,905)@2
    assign rightShiftStage0Idx1_uid906_i_next_initerations716_loopback0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid904_i_next_initerations716_loopback0_shift_x_b};

    // valid_fanout_reg1(REG,687)@1 + 1
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

    // valid_fanout_reg2(REG,688)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations715_push74_loopback9(BLACKBOX,431)@2
    // out out_feedback_out_74@20000000
    // out out_feedback_valid_out_74@20000000
    loopback_i_llvm_fpga_push_i4_initerations715_push74_0 thei_llvm_fpga_push_i4_initerations715_push74_loopback9 (
        .in_data_in(i_next_initerations716_loopback8_vt_join_q),
        .in_feedback_stall_in_74(i_llvm_fpga_pop_i4_initerations715_pop74_loopback7_out_feedback_stall_out_74),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_74(i_llvm_fpga_push_i4_initerations715_push74_loopback9_out_feedback_out_74),
        .out_feedback_valid_out_74(i_llvm_fpga_push_i4_initerations715_push74_loopback9_out_feedback_valid_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations715_pop74_loopback7(BLACKBOX,361)@2
    // out out_feedback_stall_out_74@20000000
    loopback_i_llvm_fpga_pop_i4_initerations715_pop74_0 thei_llvm_fpga_pop_i4_initerations715_pop74_loopback7 (
        .in_data_in(c_i4_7552_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_74(i_llvm_fpga_push_i4_initerations715_push74_loopback9_out_feedback_out_74),
        .in_feedback_valid_in_74(i_llvm_fpga_push_i4_initerations715_push74_loopback9_out_feedback_valid_out_74),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations715_pop74_loopback7_out_data_out),
        .out_feedback_stall_out_74(i_llvm_fpga_pop_i4_initerations715_pop74_loopback7_out_feedback_stall_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid908_i_next_initerations716_loopback0_shift_x(MUX,907)@2
    assign rightShiftStage0_uid908_i_next_initerations716_loopback0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid908_i_next_initerations716_loopback0_shift_x_s or i_llvm_fpga_pop_i4_initerations715_pop74_loopback7_out_data_out or rightShiftStage0Idx1_uid906_i_next_initerations716_loopback0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid908_i_next_initerations716_loopback0_shift_x_s)
            1'b0 : rightShiftStage0_uid908_i_next_initerations716_loopback0_shift_x_q = i_llvm_fpga_pop_i4_initerations715_pop74_loopback7_out_data_out;
            1'b1 : rightShiftStage0_uid908_i_next_initerations716_loopback0_shift_x_q = rightShiftStage0Idx1_uid906_i_next_initerations716_loopback0_shift_x_q;
            default : rightShiftStage0_uid908_i_next_initerations716_loopback0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations716_loopback8_vt_select_2(BITSELECT,437)@2
    assign i_next_initerations716_loopback8_vt_select_2_b = rightShiftStage0_uid908_i_next_initerations716_loopback0_shift_x_q[2:0];

    // i_next_initerations716_loopback8_vt_join(BITJOIN,436)@2
    assign i_next_initerations716_loopback8_vt_join_q = {GND_q, i_next_initerations716_loopback8_vt_select_2_b};

    // i_last_initeration718_loopback10_sel_x(BITSELECT,678)@2
    assign i_last_initeration718_loopback10_sel_x_b = i_next_initerations716_loopback8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration719_loopback11(BLACKBOX,427)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    loopback_i_llvm_fpga_push_i1_lastiniteration719_0 thei_llvm_fpga_push_i1_lastiniteration719_loopback11 (
        .in_data_in(i_last_initeration718_loopback10_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going717_loopback6_out_initeration_stall_out),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration719_loopback11_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration719_loopback11_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going717_loopback6(BLACKBOX,294)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    loopback_i_llvm_fpga_pipeline_keep_going717_0 thei_llvm_fpga_pipeline_keep_going717_loopback6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration719_loopback11_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration719_loopback11_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond727_loopback277_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond727_loopback277_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going717_loopback6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going717_loopback6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going717_loopback6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going717_loopback6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going717_loopback6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,217)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going717_loopback6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going717_loopback6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going717_loopback6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,572)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going717_loopback6_out_pipeline_valid_out;

    // valid_fanout_reg143(REG,829)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg143_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg143_q <= $unsigned(in_i_valid);
        end
    end

    // i_conv_loopback14_vt_const_15(CONSTANT,222)
    assign i_conv_loopback14_vt_const_15_q = $unsigned(6'b000000);

    // c_i16_1023556(CONSTANT,5)
    assign c_i16_1023556_q = $unsigned(16'b0000001111111111);

    // valid_fanout_reg4(REG,690)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg133(REG,819)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg133_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg133_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_1587(CONSTANT,212)
    assign c_i32_1587_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_loopback271(ADD,228)@2
    assign i_inc_loopback271_a = {1'b0, i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out};
    assign i_inc_loopback271_b = {1'b0, c_i32_1587_q};
    assign i_inc_loopback271_o = $unsigned(i_inc_loopback271_a) + $unsigned(i_inc_loopback271_b);
    assign i_inc_loopback271_q = i_inc_loopback271_o[32:0];

    // bgTrunc_i_inc_loopback271_sel_x(BITSELECT,576)@2
    assign bgTrunc_i_inc_loopback271_sel_x_b = i_inc_loopback271_q[31:0];

    // i_llvm_fpga_push_i32_k_015_push73_loopback272(BLACKBOX,429)@2
    // out out_feedback_out_73@20000000
    // out out_feedback_valid_out_73@20000000
    loopback_i_llvm_fpga_push_i32_k_015_push73_0 thei_llvm_fpga_push_i32_k_015_push73_loopback272 (
        .in_data_in(bgTrunc_i_inc_loopback271_sel_x_b),
        .in_feedback_stall_in_73(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_feedback_stall_out_73),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg133_q),
        .out_data_out(),
        .out_feedback_out_73(i_llvm_fpga_push_i32_k_015_push73_loopback272_out_feedback_out_73),
        .out_feedback_valid_out_73(i_llvm_fpga_push_i32_k_015_push73_loopback272_out_feedback_valid_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0555(CONSTANT,211)
    assign c_i32_0555_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k_015_pop73_loopback12(BLACKBOX,359)@2
    // out out_feedback_stall_out_73@20000000
    loopback_i_llvm_fpga_pop_i32_k_015_pop73_0 thei_llvm_fpga_pop_i32_k_015_pop73_loopback12 (
        .in_data_in(c_i32_0555_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_73(i_llvm_fpga_push_i32_k_015_push73_loopback272_out_feedback_out_73),
        .in_feedback_valid_in_73(i_llvm_fpga_push_i32_k_015_push73_loopback272_out_feedback_valid_out_73),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out),
        .out_feedback_stall_out_73(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_feedback_stall_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_loopback13_sel_x(BITSELECT,683)@2
    assign i_unnamed_loopback13_sel_x_b = i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out[15:0];

    // i_conv_loopback14(LOGICAL,221)@2
    assign i_conv_loopback14_q = i_unnamed_loopback13_sel_x_b & c_i16_1023556_q;

    // i_conv_loopback14_vt_select_9(BITSELECT,224)@2
    assign i_conv_loopback14_vt_select_9_b = i_conv_loopback14_q[9:0];

    // i_conv_loopback14_vt_join(BITJOIN,223)@2
    assign i_conv_loopback14_vt_join_q = {i_conv_loopback14_vt_const_15_q, i_conv_loopback14_vt_select_9_b};

    // valid_fanout_reg23(REG,709)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg24(REG,710)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_20_0_push31_loopback108(BLACKBOX,369)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_20_0_push31_0 thei_llvm_fpga_push_i16_a_sroa_20_0_push31_loopback108 (
        .in_data_in(i_spec_select389_loopback107_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i16_a_sroa_20_0_pop31_loopback106_out_feedback_stall_out_31),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i16_a_sroa_20_0_push31_loopback108_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i16_a_sroa_20_0_push31_loopback108_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i16_0589(CONSTANT,4)
    assign c_i16_0589_q = $unsigned(16'b0000000000000000);

    // i_llvm_fpga_pop_i16_a_sroa_20_0_pop31_loopback106(BLACKBOX,301)@2
    // out out_feedback_stall_out_31@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_20_0_pop31_0 thei_llvm_fpga_pop_i16_a_sroa_20_0_pop31_loopback106 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i16_a_sroa_20_0_push31_loopback108_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i16_a_sroa_20_0_push31_loopback108_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_20_0_pop31_loopback106_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i16_a_sroa_20_0_pop31_loopback106_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9579_recast_x(CONSTANT,608)
    assign c_i32_9579_recast_x_q = $unsigned(32'b00000000000000000000000000001001);

    // i_unnamed_loopback59(LOGICAL,526)@2
    assign i_unnamed_loopback59_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_9579_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select389_loopback107(MUX,447)@2
    assign i_spec_select389_loopback107_s = i_unnamed_loopback59_q;
    always @(i_spec_select389_loopback107_s or i_llvm_fpga_pop_i16_a_sroa_20_0_pop31_loopback106_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select389_loopback107_s)
            1'b0 : i_spec_select389_loopback107_q = i_llvm_fpga_pop_i16_a_sroa_20_0_pop31_loopback106_out_data_out;
            1'b1 : i_spec_select389_loopback107_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select389_loopback107_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback13_loopback292(BLACKBOX,233)@2
    // out out_intel_reserved_ffwd_10_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_13_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback13_loopback292 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_10_0(i_spec_select389_loopback107_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg143_q),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback13_loopback292_out_intel_reserved_ffwd_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,573)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback13_loopback292_out_intel_reserved_ffwd_10_0;

    // valid_fanout_reg144(REG,830)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg144_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg144_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg25(REG,711)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg26(REG,712)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_22_0_push30_loopback111(BLACKBOX,370)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_22_0_push30_0 thei_llvm_fpga_push_i16_a_sroa_22_0_push30_loopback111 (
        .in_data_in(i_spec_select390_loopback110_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i16_a_sroa_22_0_pop30_loopback109_out_feedback_stall_out_30),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i16_a_sroa_22_0_push30_loopback111_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i16_a_sroa_22_0_push30_loopback111_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_22_0_pop30_loopback109(BLACKBOX,302)@2
    // out out_feedback_stall_out_30@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_22_0_pop30_0 thei_llvm_fpga_pop_i16_a_sroa_22_0_pop30_loopback109 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i16_a_sroa_22_0_push30_loopback111_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i16_a_sroa_22_0_push30_loopback111_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_22_0_pop30_loopback109_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i16_a_sroa_22_0_pop30_loopback109_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_10578_recast_x(CONSTANT,578)
    assign c_i32_10578_recast_x_q = $unsigned(32'b00000000000000000000000000001010);

    // i_unnamed_loopback57(LOGICAL,525)@2
    assign i_unnamed_loopback57_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_10578_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select390_loopback110(MUX,448)@2
    assign i_spec_select390_loopback110_s = i_unnamed_loopback57_q;
    always @(i_spec_select390_loopback110_s or i_llvm_fpga_pop_i16_a_sroa_22_0_pop30_loopback109_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select390_loopback110_s)
            1'b0 : i_spec_select390_loopback110_q = i_llvm_fpga_pop_i16_a_sroa_22_0_pop30_loopback109_out_data_out;
            1'b1 : i_spec_select390_loopback110_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select390_loopback110_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback14_loopback293(BLACKBOX,234)@2
    // out out_intel_reserved_ffwd_11_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_14_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback14_loopback293 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_11_0(i_spec_select390_loopback110_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg144_q),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback14_loopback293_out_intel_reserved_ffwd_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,610)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback14_loopback293_out_intel_reserved_ffwd_11_0;

    // valid_fanout_reg145(REG,831)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg145_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg145_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg27(REG,713)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg28(REG,714)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_24_0_push29_loopback114(BLACKBOX,371)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_24_0_push29_0 thei_llvm_fpga_push_i16_a_sroa_24_0_push29_loopback114 (
        .in_data_in(i_spec_select391_loopback113_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i16_a_sroa_24_0_pop29_loopback112_out_feedback_stall_out_29),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i16_a_sroa_24_0_push29_loopback114_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i16_a_sroa_24_0_push29_loopback114_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_24_0_pop29_loopback112(BLACKBOX,303)@2
    // out out_feedback_stall_out_29@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_24_0_pop29_0 thei_llvm_fpga_pop_i16_a_sroa_24_0_pop29_loopback112 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i16_a_sroa_24_0_push29_loopback114_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i16_a_sroa_24_0_push29_loopback114_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_24_0_pop29_loopback112_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i16_a_sroa_24_0_pop29_loopback112_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_11577_recast_x(CONSTANT,579)
    assign c_i32_11577_recast_x_q = $unsigned(32'b00000000000000000000000000001011);

    // i_unnamed_loopback55(LOGICAL,524)@2
    assign i_unnamed_loopback55_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_11577_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select391_loopback113(MUX,449)@2
    assign i_spec_select391_loopback113_s = i_unnamed_loopback55_q;
    always @(i_spec_select391_loopback113_s or i_llvm_fpga_pop_i16_a_sroa_24_0_pop29_loopback112_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select391_loopback113_s)
            1'b0 : i_spec_select391_loopback113_q = i_llvm_fpga_pop_i16_a_sroa_24_0_pop29_loopback112_out_data_out;
            1'b1 : i_spec_select391_loopback113_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select391_loopback113_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback15_loopback294(BLACKBOX,235)@2
    // out out_intel_reserved_ffwd_12_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_15_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback15_loopback294 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_12_0(i_spec_select391_loopback113_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg145_q),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback15_loopback294_out_intel_reserved_ffwd_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,611)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback15_loopback294_out_intel_reserved_ffwd_12_0;

    // valid_fanout_reg146(REG,832)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg146_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg146_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg29(REG,715)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg30(REG,716)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_26_0_push28_loopback117(BLACKBOX,372)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_26_0_push28_0 thei_llvm_fpga_push_i16_a_sroa_26_0_push28_loopback117 (
        .in_data_in(i_spec_select392_loopback116_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i16_a_sroa_26_0_pop28_loopback115_out_feedback_stall_out_28),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i16_a_sroa_26_0_push28_loopback117_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i16_a_sroa_26_0_push28_loopback117_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_26_0_pop28_loopback115(BLACKBOX,304)@2
    // out out_feedback_stall_out_28@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_26_0_pop28_0 thei_llvm_fpga_pop_i16_a_sroa_26_0_pop28_loopback115 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i16_a_sroa_26_0_push28_loopback117_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i16_a_sroa_26_0_push28_loopback117_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_26_0_pop28_loopback115_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i16_a_sroa_26_0_pop28_loopback115_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_12576_recast_x(CONSTANT,580)
    assign c_i32_12576_recast_x_q = $unsigned(32'b00000000000000000000000000001100);

    // i_unnamed_loopback53(LOGICAL,523)@2
    assign i_unnamed_loopback53_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_12576_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select392_loopback116(MUX,450)@2
    assign i_spec_select392_loopback116_s = i_unnamed_loopback53_q;
    always @(i_spec_select392_loopback116_s or i_llvm_fpga_pop_i16_a_sroa_26_0_pop28_loopback115_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select392_loopback116_s)
            1'b0 : i_spec_select392_loopback116_q = i_llvm_fpga_pop_i16_a_sroa_26_0_pop28_loopback115_out_data_out;
            1'b1 : i_spec_select392_loopback116_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select392_loopback116_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback16_loopback295(BLACKBOX,236)@2
    // out out_intel_reserved_ffwd_13_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_16_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback16_loopback295 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_13_0(i_spec_select392_loopback116_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg146_q),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback16_loopback295_out_intel_reserved_ffwd_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,612)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback16_loopback295_out_intel_reserved_ffwd_13_0;

    // valid_fanout_reg147(REG,833)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg147_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg147_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg31(REG,717)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg32(REG,718)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_28_0_push27_loopback120(BLACKBOX,373)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_28_0_push27_0 thei_llvm_fpga_push_i16_a_sroa_28_0_push27_loopback120 (
        .in_data_in(i_spec_select393_loopback119_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i16_a_sroa_28_0_pop27_loopback118_out_feedback_stall_out_27),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i16_a_sroa_28_0_push27_loopback120_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i16_a_sroa_28_0_push27_loopback120_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_28_0_pop27_loopback118(BLACKBOX,305)@2
    // out out_feedback_stall_out_27@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_28_0_pop27_0 thei_llvm_fpga_pop_i16_a_sroa_28_0_pop27_loopback118 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i16_a_sroa_28_0_push27_loopback120_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i16_a_sroa_28_0_push27_loopback120_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_28_0_pop27_loopback118_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i16_a_sroa_28_0_pop27_loopback118_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_13575_recast_x(CONSTANT,581)
    assign c_i32_13575_recast_x_q = $unsigned(32'b00000000000000000000000000001101);

    // i_unnamed_loopback51(LOGICAL,522)@2
    assign i_unnamed_loopback51_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_13575_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select393_loopback119(MUX,451)@2
    assign i_spec_select393_loopback119_s = i_unnamed_loopback51_q;
    always @(i_spec_select393_loopback119_s or i_llvm_fpga_pop_i16_a_sroa_28_0_pop27_loopback118_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select393_loopback119_s)
            1'b0 : i_spec_select393_loopback119_q = i_llvm_fpga_pop_i16_a_sroa_28_0_pop27_loopback118_out_data_out;
            1'b1 : i_spec_select393_loopback119_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select393_loopback119_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback17_loopback296(BLACKBOX,237)@2
    // out out_intel_reserved_ffwd_14_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_17_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback17_loopback296 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_14_0(i_spec_select393_loopback119_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg147_q),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback17_loopback296_out_intel_reserved_ffwd_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,613)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback17_loopback296_out_intel_reserved_ffwd_14_0;

    // valid_fanout_reg148(REG,834)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg148_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg148_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg33(REG,719)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg34(REG,720)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_30_0_push26_loopback123(BLACKBOX,374)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_30_0_push26_0 thei_llvm_fpga_push_i16_a_sroa_30_0_push26_loopback123 (
        .in_data_in(i_spec_select394_loopback122_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i16_a_sroa_30_0_pop26_loopback121_out_feedback_stall_out_26),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i16_a_sroa_30_0_push26_loopback123_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i16_a_sroa_30_0_push26_loopback123_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_30_0_pop26_loopback121(BLACKBOX,306)@2
    // out out_feedback_stall_out_26@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_30_0_pop26_0 thei_llvm_fpga_pop_i16_a_sroa_30_0_pop26_loopback121 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i16_a_sroa_30_0_push26_loopback123_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i16_a_sroa_30_0_push26_loopback123_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_30_0_pop26_loopback121_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i16_a_sroa_30_0_pop26_loopback121_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_14574_recast_x(CONSTANT,582)
    assign c_i32_14574_recast_x_q = $unsigned(32'b00000000000000000000000000001110);

    // i_unnamed_loopback49(LOGICAL,521)@2
    assign i_unnamed_loopback49_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_14574_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select394_loopback122(MUX,452)@2
    assign i_spec_select394_loopback122_s = i_unnamed_loopback49_q;
    always @(i_spec_select394_loopback122_s or i_llvm_fpga_pop_i16_a_sroa_30_0_pop26_loopback121_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select394_loopback122_s)
            1'b0 : i_spec_select394_loopback122_q = i_llvm_fpga_pop_i16_a_sroa_30_0_pop26_loopback121_out_data_out;
            1'b1 : i_spec_select394_loopback122_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select394_loopback122_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback18_loopback297(BLACKBOX,238)@2
    // out out_intel_reserved_ffwd_15_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_18_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback18_loopback297 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_15_0(i_spec_select394_loopback122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg148_q),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback18_loopback297_out_intel_reserved_ffwd_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,614)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback18_loopback297_out_intel_reserved_ffwd_15_0;

    // valid_fanout_reg149(REG,835)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg149_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg149_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg35(REG,721)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg36(REG,722)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_32_0_push25_loopback126(BLACKBOX,375)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_32_0_push25_0 thei_llvm_fpga_push_i16_a_sroa_32_0_push25_loopback126 (
        .in_data_in(i_spec_select395_loopback125_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i16_a_sroa_32_0_pop25_loopback124_out_feedback_stall_out_25),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i16_a_sroa_32_0_push25_loopback126_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i16_a_sroa_32_0_push25_loopback126_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_32_0_pop25_loopback124(BLACKBOX,307)@2
    // out out_feedback_stall_out_25@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_32_0_pop25_0 thei_llvm_fpga_pop_i16_a_sroa_32_0_pop25_loopback124 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i16_a_sroa_32_0_push25_loopback126_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i16_a_sroa_32_0_push25_loopback126_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_32_0_pop25_loopback124_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i16_a_sroa_32_0_pop25_loopback124_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_15573_recast_x(CONSTANT,583)
    assign c_i32_15573_recast_x_q = $unsigned(32'b00000000000000000000000000001111);

    // i_unnamed_loopback47(LOGICAL,520)@2
    assign i_unnamed_loopback47_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_15573_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select395_loopback125(MUX,453)@2
    assign i_spec_select395_loopback125_s = i_unnamed_loopback47_q;
    always @(i_spec_select395_loopback125_s or i_llvm_fpga_pop_i16_a_sroa_32_0_pop25_loopback124_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select395_loopback125_s)
            1'b0 : i_spec_select395_loopback125_q = i_llvm_fpga_pop_i16_a_sroa_32_0_pop25_loopback124_out_data_out;
            1'b1 : i_spec_select395_loopback125_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select395_loopback125_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback19_loopback298(BLACKBOX,239)@2
    // out out_intel_reserved_ffwd_16_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_19_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback19_loopback298 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_16_0(i_spec_select395_loopback125_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg149_q),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback19_loopback298_out_intel_reserved_ffwd_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,615)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback19_loopback298_out_intel_reserved_ffwd_16_0;

    // valid_fanout_reg150(REG,836)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg150_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg150_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg37(REG,723)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg38(REG,724)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_34_0_push24_loopback129(BLACKBOX,376)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_34_0_push24_0 thei_llvm_fpga_push_i16_a_sroa_34_0_push24_loopback129 (
        .in_data_in(i_spec_select396_loopback128_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i16_a_sroa_34_0_pop24_loopback127_out_feedback_stall_out_24),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i16_a_sroa_34_0_push24_loopback129_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i16_a_sroa_34_0_push24_loopback129_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_34_0_pop24_loopback127(BLACKBOX,308)@2
    // out out_feedback_stall_out_24@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_34_0_pop24_0 thei_llvm_fpga_pop_i16_a_sroa_34_0_pop24_loopback127 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i16_a_sroa_34_0_push24_loopback129_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i16_a_sroa_34_0_push24_loopback129_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_34_0_pop24_loopback127_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i16_a_sroa_34_0_pop24_loopback127_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_16572_recast_x(CONSTANT,585)
    assign c_i32_16572_recast_x_q = $unsigned(32'b00000000000000000000000000010000);

    // i_unnamed_loopback45(LOGICAL,519)@2
    assign i_unnamed_loopback45_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_16572_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select396_loopback128(MUX,454)@2
    assign i_spec_select396_loopback128_s = i_unnamed_loopback45_q;
    always @(i_spec_select396_loopback128_s or i_llvm_fpga_pop_i16_a_sroa_34_0_pop24_loopback127_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select396_loopback128_s)
            1'b0 : i_spec_select396_loopback128_q = i_llvm_fpga_pop_i16_a_sroa_34_0_pop24_loopback127_out_data_out;
            1'b1 : i_spec_select396_loopback128_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select396_loopback128_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback20_loopback299(BLACKBOX,240)@2
    // out out_intel_reserved_ffwd_17_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_20_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback20_loopback299 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_17_0(i_spec_select396_loopback128_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg150_q),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback20_loopback299_out_intel_reserved_ffwd_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,616)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback20_loopback299_out_intel_reserved_ffwd_17_0;

    // valid_fanout_reg151(REG,837)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg151_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg151_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg39(REG,725)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg40(REG,726)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_36_0_push23_loopback132(BLACKBOX,377)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_36_0_push23_0 thei_llvm_fpga_push_i16_a_sroa_36_0_push23_loopback132 (
        .in_data_in(i_spec_select397_loopback131_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i16_a_sroa_36_0_pop23_loopback130_out_feedback_stall_out_23),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i16_a_sroa_36_0_push23_loopback132_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i16_a_sroa_36_0_push23_loopback132_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_36_0_pop23_loopback130(BLACKBOX,309)@2
    // out out_feedback_stall_out_23@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_36_0_pop23_0 thei_llvm_fpga_pop_i16_a_sroa_36_0_pop23_loopback130 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i16_a_sroa_36_0_push23_loopback132_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i16_a_sroa_36_0_push23_loopback132_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_36_0_pop23_loopback130_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i16_a_sroa_36_0_pop23_loopback130_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_17571_recast_x(CONSTANT,586)
    assign c_i32_17571_recast_x_q = $unsigned(32'b00000000000000000000000000010001);

    // i_unnamed_loopback43(LOGICAL,518)@2
    assign i_unnamed_loopback43_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_17571_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select397_loopback131(MUX,455)@2
    assign i_spec_select397_loopback131_s = i_unnamed_loopback43_q;
    always @(i_spec_select397_loopback131_s or i_llvm_fpga_pop_i16_a_sroa_36_0_pop23_loopback130_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select397_loopback131_s)
            1'b0 : i_spec_select397_loopback131_q = i_llvm_fpga_pop_i16_a_sroa_36_0_pop23_loopback130_out_data_out;
            1'b1 : i_spec_select397_loopback131_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select397_loopback131_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback21_loopback300(BLACKBOX,241)@2
    // out out_intel_reserved_ffwd_18_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_21_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback21_loopback300 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_18_0(i_spec_select397_loopback131_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg151_q),
        .out_intel_reserved_ffwd_18_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback21_loopback300_out_intel_reserved_ffwd_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,617)
    assign out_intel_reserved_ffwd_18_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback21_loopback300_out_intel_reserved_ffwd_18_0;

    // valid_fanout_reg152(REG,838)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg152_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg152_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg41(REG,727)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg42(REG,728)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_38_0_push22_loopback135(BLACKBOX,378)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_38_0_push22_0 thei_llvm_fpga_push_i16_a_sroa_38_0_push22_loopback135 (
        .in_data_in(i_spec_select398_loopback134_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i16_a_sroa_38_0_pop22_loopback133_out_feedback_stall_out_22),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i16_a_sroa_38_0_push22_loopback135_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i16_a_sroa_38_0_push22_loopback135_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_38_0_pop22_loopback133(BLACKBOX,310)@2
    // out out_feedback_stall_out_22@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_38_0_pop22_0 thei_llvm_fpga_pop_i16_a_sroa_38_0_pop22_loopback133 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i16_a_sroa_38_0_push22_loopback135_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i16_a_sroa_38_0_push22_loopback135_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_38_0_pop22_loopback133_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i16_a_sroa_38_0_pop22_loopback133_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_18570_recast_x(CONSTANT,587)
    assign c_i32_18570_recast_x_q = $unsigned(32'b00000000000000000000000000010010);

    // i_unnamed_loopback41(LOGICAL,517)@2
    assign i_unnamed_loopback41_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_18570_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select398_loopback134(MUX,456)@2
    assign i_spec_select398_loopback134_s = i_unnamed_loopback41_q;
    always @(i_spec_select398_loopback134_s or i_llvm_fpga_pop_i16_a_sroa_38_0_pop22_loopback133_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select398_loopback134_s)
            1'b0 : i_spec_select398_loopback134_q = i_llvm_fpga_pop_i16_a_sroa_38_0_pop22_loopback133_out_data_out;
            1'b1 : i_spec_select398_loopback134_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select398_loopback134_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback22_loopback301(BLACKBOX,242)@2
    // out out_intel_reserved_ffwd_19_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_22_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback22_loopback301 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_19_0(i_spec_select398_loopback134_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg152_q),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback22_loopback301_out_intel_reserved_ffwd_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,618)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback22_loopback301_out_intel_reserved_ffwd_19_0;

    // valid_fanout_reg134(REG,820)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg134_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg134_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,691)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,692)@1 + 1
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

    // i_llvm_fpga_push_i16_a_sroa_0_0_push40_loopback81(BLACKBOX,363)@2
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_0_0_push40_0 thei_llvm_fpga_push_i16_a_sroa_0_0_push40_loopback81 (
        .in_data_in(i_spec_select_loopback80_q),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i16_a_sroa_0_0_pop40_loopback79_out_feedback_stall_out_40),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i16_a_sroa_0_0_push40_loopback81_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i16_a_sroa_0_0_push40_loopback81_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_0_0_pop40_loopback79(BLACKBOX,295)@2
    // out out_feedback_stall_out_40@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_0_0_pop40_0 thei_llvm_fpga_pop_i16_a_sroa_0_0_pop40_loopback79 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i16_a_sroa_0_0_push40_loopback81_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i16_a_sroa_0_0_push40_loopback81_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_0_0_pop40_loopback79_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i16_a_sroa_0_0_pop40_loopback79_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_loopback77(LOGICAL,535)@2
    assign i_unnamed_loopback77_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_0555_q ? 1'b1 : 1'b0);

    // i_spec_select_loopback80(MUX,501)@2
    assign i_spec_select_loopback80_s = i_unnamed_loopback77_q;
    always @(i_spec_select_loopback80_s or i_llvm_fpga_pop_i16_a_sroa_0_0_pop40_loopback79_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select_loopback80_s)
            1'b0 : i_spec_select_loopback80_q = i_llvm_fpga_pop_i16_a_sroa_0_0_pop40_loopback79_out_data_out;
            1'b1 : i_spec_select_loopback80_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select_loopback80_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback4_loopback283(BLACKBOX,270)@2
    // out out_intel_reserved_ffwd_1_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_4_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback4_loopback283 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_1_0(i_spec_select_loopback80_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg134_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback4_loopback283_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,619)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback4_loopback283_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg153(REG,839)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg153_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg153_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg43(REG,729)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg44(REG,730)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_40_0_push21_loopback138(BLACKBOX,379)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_40_0_push21_0 thei_llvm_fpga_push_i16_a_sroa_40_0_push21_loopback138 (
        .in_data_in(i_spec_select399_loopback137_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i16_a_sroa_40_0_pop21_loopback136_out_feedback_stall_out_21),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i16_a_sroa_40_0_push21_loopback138_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i16_a_sroa_40_0_push21_loopback138_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_40_0_pop21_loopback136(BLACKBOX,311)@2
    // out out_feedback_stall_out_21@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_40_0_pop21_0 thei_llvm_fpga_pop_i16_a_sroa_40_0_pop21_loopback136 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i16_a_sroa_40_0_push21_loopback138_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i16_a_sroa_40_0_push21_loopback138_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_40_0_pop21_loopback136_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i16_a_sroa_40_0_pop21_loopback136_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_19569_recast_x(CONSTANT,588)
    assign c_i32_19569_recast_x_q = $unsigned(32'b00000000000000000000000000010011);

    // i_unnamed_loopback39(LOGICAL,516)@2
    assign i_unnamed_loopback39_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_19569_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select399_loopback137(MUX,457)@2
    assign i_spec_select399_loopback137_s = i_unnamed_loopback39_q;
    always @(i_spec_select399_loopback137_s or i_llvm_fpga_pop_i16_a_sroa_40_0_pop21_loopback136_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select399_loopback137_s)
            1'b0 : i_spec_select399_loopback137_q = i_llvm_fpga_pop_i16_a_sroa_40_0_pop21_loopback136_out_data_out;
            1'b1 : i_spec_select399_loopback137_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select399_loopback137_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback23_loopback302(BLACKBOX,243)@2
    // out out_intel_reserved_ffwd_20_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_23_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback23_loopback302 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_20_0(i_spec_select399_loopback137_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg153_q),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback23_loopback302_out_intel_reserved_ffwd_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,620)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback23_loopback302_out_intel_reserved_ffwd_20_0;

    // valid_fanout_reg154(REG,840)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg154_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg154_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg45(REG,731)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg46(REG,732)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_42_0_push20_loopback141(BLACKBOX,380)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_42_0_push20_0 thei_llvm_fpga_push_i16_a_sroa_42_0_push20_loopback141 (
        .in_data_in(i_spec_select400_loopback140_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i16_a_sroa_42_0_pop20_loopback139_out_feedback_stall_out_20),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i16_a_sroa_42_0_push20_loopback141_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i16_a_sroa_42_0_push20_loopback141_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_42_0_pop20_loopback139(BLACKBOX,312)@2
    // out out_feedback_stall_out_20@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_42_0_pop20_0 thei_llvm_fpga_pop_i16_a_sroa_42_0_pop20_loopback139 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i16_a_sroa_42_0_push20_loopback141_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i16_a_sroa_42_0_push20_loopback141_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_42_0_pop20_loopback139_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i16_a_sroa_42_0_pop20_loopback139_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_20568_recast_x(CONSTANT,589)
    assign c_i32_20568_recast_x_q = $unsigned(32'b00000000000000000000000000010100);

    // i_unnamed_loopback37(LOGICAL,515)@2
    assign i_unnamed_loopback37_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_20568_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select400_loopback140(MUX,458)@2
    assign i_spec_select400_loopback140_s = i_unnamed_loopback37_q;
    always @(i_spec_select400_loopback140_s or i_llvm_fpga_pop_i16_a_sroa_42_0_pop20_loopback139_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select400_loopback140_s)
            1'b0 : i_spec_select400_loopback140_q = i_llvm_fpga_pop_i16_a_sroa_42_0_pop20_loopback139_out_data_out;
            1'b1 : i_spec_select400_loopback140_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select400_loopback140_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback24_loopback303(BLACKBOX,244)@2
    // out out_intel_reserved_ffwd_21_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_24_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback24_loopback303 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_21_0(i_spec_select400_loopback140_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg154_q),
        .out_intel_reserved_ffwd_21_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback24_loopback303_out_intel_reserved_ffwd_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,621)
    assign out_intel_reserved_ffwd_21_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback24_loopback303_out_intel_reserved_ffwd_21_0;

    // valid_fanout_reg155(REG,841)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg155_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg155_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg47(REG,733)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg48(REG,734)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_44_0_push19_loopback144(BLACKBOX,381)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_44_0_push19_0 thei_llvm_fpga_push_i16_a_sroa_44_0_push19_loopback144 (
        .in_data_in(i_spec_select401_loopback143_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i16_a_sroa_44_0_pop19_loopback142_out_feedback_stall_out_19),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i16_a_sroa_44_0_push19_loopback144_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i16_a_sroa_44_0_push19_loopback144_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_44_0_pop19_loopback142(BLACKBOX,313)@2
    // out out_feedback_stall_out_19@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_44_0_pop19_0 thei_llvm_fpga_pop_i16_a_sroa_44_0_pop19_loopback142 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i16_a_sroa_44_0_push19_loopback144_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i16_a_sroa_44_0_push19_loopback144_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_44_0_pop19_loopback142_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i16_a_sroa_44_0_pop19_loopback142_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_21567_recast_x(CONSTANT,590)
    assign c_i32_21567_recast_x_q = $unsigned(32'b00000000000000000000000000010101);

    // i_unnamed_loopback35(LOGICAL,514)@2
    assign i_unnamed_loopback35_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_21567_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select401_loopback143(MUX,459)@2
    assign i_spec_select401_loopback143_s = i_unnamed_loopback35_q;
    always @(i_spec_select401_loopback143_s or i_llvm_fpga_pop_i16_a_sroa_44_0_pop19_loopback142_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select401_loopback143_s)
            1'b0 : i_spec_select401_loopback143_q = i_llvm_fpga_pop_i16_a_sroa_44_0_pop19_loopback142_out_data_out;
            1'b1 : i_spec_select401_loopback143_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select401_loopback143_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback25_loopback304(BLACKBOX,245)@2
    // out out_intel_reserved_ffwd_22_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_25_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback25_loopback304 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_22_0(i_spec_select401_loopback143_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg155_q),
        .out_intel_reserved_ffwd_22_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback25_loopback304_out_intel_reserved_ffwd_22_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,622)
    assign out_intel_reserved_ffwd_22_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback25_loopback304_out_intel_reserved_ffwd_22_0;

    // valid_fanout_reg156(REG,842)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg156_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg156_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg49(REG,735)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg50(REG,736)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_46_0_push18_loopback147(BLACKBOX,382)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_46_0_push18_0 thei_llvm_fpga_push_i16_a_sroa_46_0_push18_loopback147 (
        .in_data_in(i_spec_select402_loopback146_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i16_a_sroa_46_0_pop18_loopback145_out_feedback_stall_out_18),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i16_a_sroa_46_0_push18_loopback147_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i16_a_sroa_46_0_push18_loopback147_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_46_0_pop18_loopback145(BLACKBOX,314)@2
    // out out_feedback_stall_out_18@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_46_0_pop18_0 thei_llvm_fpga_pop_i16_a_sroa_46_0_pop18_loopback145 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i16_a_sroa_46_0_push18_loopback147_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i16_a_sroa_46_0_push18_loopback147_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_46_0_pop18_loopback145_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i16_a_sroa_46_0_pop18_loopback145_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_22566_recast_x(CONSTANT,591)
    assign c_i32_22566_recast_x_q = $unsigned(32'b00000000000000000000000000010110);

    // i_unnamed_loopback33(LOGICAL,513)@2
    assign i_unnamed_loopback33_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_22566_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select402_loopback146(MUX,460)@2
    assign i_spec_select402_loopback146_s = i_unnamed_loopback33_q;
    always @(i_spec_select402_loopback146_s or i_llvm_fpga_pop_i16_a_sroa_46_0_pop18_loopback145_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select402_loopback146_s)
            1'b0 : i_spec_select402_loopback146_q = i_llvm_fpga_pop_i16_a_sroa_46_0_pop18_loopback145_out_data_out;
            1'b1 : i_spec_select402_loopback146_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select402_loopback146_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback26_loopback305(BLACKBOX,246)@2
    // out out_intel_reserved_ffwd_23_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_26_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback26_loopback305 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_23_0(i_spec_select402_loopback146_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg156_q),
        .out_intel_reserved_ffwd_23_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback26_loopback305_out_intel_reserved_ffwd_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,623)
    assign out_intel_reserved_ffwd_23_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback26_loopback305_out_intel_reserved_ffwd_23_0;

    // valid_fanout_reg157(REG,843)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg157_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg157_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg51(REG,737)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg52(REG,738)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_48_0_push17_loopback150(BLACKBOX,383)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_48_0_push17_0 thei_llvm_fpga_push_i16_a_sroa_48_0_push17_loopback150 (
        .in_data_in(i_spec_select403_loopback149_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i16_a_sroa_48_0_pop17_loopback148_out_feedback_stall_out_17),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i16_a_sroa_48_0_push17_loopback150_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i16_a_sroa_48_0_push17_loopback150_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_48_0_pop17_loopback148(BLACKBOX,315)@2
    // out out_feedback_stall_out_17@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_48_0_pop17_0 thei_llvm_fpga_pop_i16_a_sroa_48_0_pop17_loopback148 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i16_a_sroa_48_0_push17_loopback150_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i16_a_sroa_48_0_push17_loopback150_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_48_0_pop17_loopback148_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i16_a_sroa_48_0_pop17_loopback148_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_23565_recast_x(CONSTANT,592)
    assign c_i32_23565_recast_x_q = $unsigned(32'b00000000000000000000000000010111);

    // i_unnamed_loopback31(LOGICAL,512)@2
    assign i_unnamed_loopback31_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_23565_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select403_loopback149(MUX,461)@2
    assign i_spec_select403_loopback149_s = i_unnamed_loopback31_q;
    always @(i_spec_select403_loopback149_s or i_llvm_fpga_pop_i16_a_sroa_48_0_pop17_loopback148_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select403_loopback149_s)
            1'b0 : i_spec_select403_loopback149_q = i_llvm_fpga_pop_i16_a_sroa_48_0_pop17_loopback148_out_data_out;
            1'b1 : i_spec_select403_loopback149_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select403_loopback149_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback27_loopback306(BLACKBOX,247)@2
    // out out_intel_reserved_ffwd_24_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_27_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback27_loopback306 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_24_0(i_spec_select403_loopback149_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg157_q),
        .out_intel_reserved_ffwd_24_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback27_loopback306_out_intel_reserved_ffwd_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,624)
    assign out_intel_reserved_ffwd_24_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback27_loopback306_out_intel_reserved_ffwd_24_0;

    // valid_fanout_reg158(REG,844)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg158_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg158_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg53(REG,739)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg53_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg53_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg54(REG,740)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg54_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg54_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_50_0_push16_loopback153(BLACKBOX,385)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_50_0_push16_0 thei_llvm_fpga_push_i16_a_sroa_50_0_push16_loopback153 (
        .in_data_in(i_spec_select404_loopback152_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i16_a_sroa_50_0_pop16_loopback151_out_feedback_stall_out_16),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i16_a_sroa_50_0_push16_loopback153_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i16_a_sroa_50_0_push16_loopback153_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_50_0_pop16_loopback151(BLACKBOX,317)@2
    // out out_feedback_stall_out_16@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_50_0_pop16_0 thei_llvm_fpga_pop_i16_a_sroa_50_0_pop16_loopback151 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i16_a_sroa_50_0_push16_loopback153_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i16_a_sroa_50_0_push16_loopback153_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_50_0_pop16_loopback151_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i16_a_sroa_50_0_pop16_loopback151_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_24564_recast_x(CONSTANT,593)
    assign c_i32_24564_recast_x_q = $unsigned(32'b00000000000000000000000000011000);

    // i_unnamed_loopback29(LOGICAL,511)@2
    assign i_unnamed_loopback29_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_24564_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select404_loopback152(MUX,462)@2
    assign i_spec_select404_loopback152_s = i_unnamed_loopback29_q;
    always @(i_spec_select404_loopback152_s or i_llvm_fpga_pop_i16_a_sroa_50_0_pop16_loopback151_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select404_loopback152_s)
            1'b0 : i_spec_select404_loopback152_q = i_llvm_fpga_pop_i16_a_sroa_50_0_pop16_loopback151_out_data_out;
            1'b1 : i_spec_select404_loopback152_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select404_loopback152_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback28_loopback307(BLACKBOX,248)@2
    // out out_intel_reserved_ffwd_25_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_28_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback28_loopback307 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_25_0(i_spec_select404_loopback152_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg158_q),
        .out_intel_reserved_ffwd_25_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback28_loopback307_out_intel_reserved_ffwd_25_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_15_regfree_osync_x(GPOUT,625)
    assign out_intel_reserved_ffwd_25_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback28_loopback307_out_intel_reserved_ffwd_25_0;

    // valid_fanout_reg159(REG,845)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg159_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg159_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg55(REG,741)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg55_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg55_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg56(REG,742)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg56_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg56_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_52_0_push15_loopback156(BLACKBOX,386)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_52_0_push15_0 thei_llvm_fpga_push_i16_a_sroa_52_0_push15_loopback156 (
        .in_data_in(i_spec_select405_loopback155_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i16_a_sroa_52_0_pop15_loopback154_out_feedback_stall_out_15),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg56_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i16_a_sroa_52_0_push15_loopback156_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i16_a_sroa_52_0_push15_loopback156_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_52_0_pop15_loopback154(BLACKBOX,318)@2
    // out out_feedback_stall_out_15@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_52_0_pop15_0 thei_llvm_fpga_pop_i16_a_sroa_52_0_pop15_loopback154 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i16_a_sroa_52_0_push15_loopback156_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i16_a_sroa_52_0_push15_loopback156_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_52_0_pop15_loopback154_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i16_a_sroa_52_0_pop15_loopback154_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_25563_recast_x(CONSTANT,594)
    assign c_i32_25563_recast_x_q = $unsigned(32'b00000000000000000000000000011001);

    // i_unnamed_loopback27(LOGICAL,510)@2
    assign i_unnamed_loopback27_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_25563_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select405_loopback155(MUX,463)@2
    assign i_spec_select405_loopback155_s = i_unnamed_loopback27_q;
    always @(i_spec_select405_loopback155_s or i_llvm_fpga_pop_i16_a_sroa_52_0_pop15_loopback154_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select405_loopback155_s)
            1'b0 : i_spec_select405_loopback155_q = i_llvm_fpga_pop_i16_a_sroa_52_0_pop15_loopback154_out_data_out;
            1'b1 : i_spec_select405_loopback155_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select405_loopback155_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback29_loopback308(BLACKBOX,249)@2
    // out out_intel_reserved_ffwd_26_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_29_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback29_loopback308 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_26_0(i_spec_select405_loopback155_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg159_q),
        .out_intel_reserved_ffwd_26_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback29_loopback308_out_intel_reserved_ffwd_26_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_16_regfree_osync_x(GPOUT,626)
    assign out_intel_reserved_ffwd_26_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback29_loopback308_out_intel_reserved_ffwd_26_0;

    // valid_fanout_reg160(REG,846)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg160_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg160_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg57(REG,743)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg57_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg57_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg58(REG,744)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg58_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg58_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_54_0_push14_loopback159(BLACKBOX,387)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_54_0_push14_0 thei_llvm_fpga_push_i16_a_sroa_54_0_push14_loopback159 (
        .in_data_in(i_spec_select406_loopback158_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i16_a_sroa_54_0_pop14_loopback157_out_feedback_stall_out_14),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg58_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i16_a_sroa_54_0_push14_loopback159_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i16_a_sroa_54_0_push14_loopback159_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_54_0_pop14_loopback157(BLACKBOX,319)@2
    // out out_feedback_stall_out_14@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_54_0_pop14_0 thei_llvm_fpga_pop_i16_a_sroa_54_0_pop14_loopback157 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i16_a_sroa_54_0_push14_loopback159_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i16_a_sroa_54_0_push14_loopback159_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg57_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_54_0_pop14_loopback157_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i16_a_sroa_54_0_pop14_loopback157_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_26562_recast_x(CONSTANT,596)
    assign c_i32_26562_recast_x_q = $unsigned(32'b00000000000000000000000000011010);

    // i_unnamed_loopback25(LOGICAL,509)@2
    assign i_unnamed_loopback25_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_26562_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select406_loopback158(MUX,464)@2
    assign i_spec_select406_loopback158_s = i_unnamed_loopback25_q;
    always @(i_spec_select406_loopback158_s or i_llvm_fpga_pop_i16_a_sroa_54_0_pop14_loopback157_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select406_loopback158_s)
            1'b0 : i_spec_select406_loopback158_q = i_llvm_fpga_pop_i16_a_sroa_54_0_pop14_loopback157_out_data_out;
            1'b1 : i_spec_select406_loopback158_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select406_loopback158_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback30_loopback309(BLACKBOX,250)@2
    // out out_intel_reserved_ffwd_27_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_30_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback30_loopback309 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_27_0(i_spec_select406_loopback158_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg160_q),
        .out_intel_reserved_ffwd_27_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback30_loopback309_out_intel_reserved_ffwd_27_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_17_regfree_osync_x(GPOUT,627)
    assign out_intel_reserved_ffwd_27_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback30_loopback309_out_intel_reserved_ffwd_27_0;

    // valid_fanout_reg161(REG,847)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg161_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg161_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg59(REG,745)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg59_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg59_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg60(REG,746)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg60_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg60_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_56_0_push13_loopback162(BLACKBOX,388)@2
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_56_0_push13_0 thei_llvm_fpga_push_i16_a_sroa_56_0_push13_loopback162 (
        .in_data_in(i_spec_select407_loopback161_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i16_a_sroa_56_0_pop13_loopback160_out_feedback_stall_out_13),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg60_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i16_a_sroa_56_0_push13_loopback162_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i16_a_sroa_56_0_push13_loopback162_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_56_0_pop13_loopback160(BLACKBOX,320)@2
    // out out_feedback_stall_out_13@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_56_0_pop13_0 thei_llvm_fpga_pop_i16_a_sroa_56_0_pop13_loopback160 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_i16_a_sroa_56_0_push13_loopback162_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i16_a_sroa_56_0_push13_loopback162_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg59_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_56_0_pop13_loopback160_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i16_a_sroa_56_0_pop13_loopback160_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_27561_recast_x(CONSTANT,597)
    assign c_i32_27561_recast_x_q = $unsigned(32'b00000000000000000000000000011011);

    // i_unnamed_loopback23(LOGICAL,508)@2
    assign i_unnamed_loopback23_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_27561_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select407_loopback161(MUX,465)@2
    assign i_spec_select407_loopback161_s = i_unnamed_loopback23_q;
    always @(i_spec_select407_loopback161_s or i_llvm_fpga_pop_i16_a_sroa_56_0_pop13_loopback160_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select407_loopback161_s)
            1'b0 : i_spec_select407_loopback161_q = i_llvm_fpga_pop_i16_a_sroa_56_0_pop13_loopback160_out_data_out;
            1'b1 : i_spec_select407_loopback161_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select407_loopback161_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback31_loopback310(BLACKBOX,251)@2
    // out out_intel_reserved_ffwd_28_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_31_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback31_loopback310 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_28_0(i_spec_select407_loopback161_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg161_q),
        .out_intel_reserved_ffwd_28_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback31_loopback310_out_intel_reserved_ffwd_28_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_18_regfree_osync_x(GPOUT,628)
    assign out_intel_reserved_ffwd_28_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback31_loopback310_out_intel_reserved_ffwd_28_0;

    // valid_fanout_reg162(REG,848)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg162_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg162_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg61(REG,747)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg61_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg61_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg62(REG,748)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg62_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg62_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_58_0_push12_loopback165(BLACKBOX,389)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_58_0_push12_0 thei_llvm_fpga_push_i16_a_sroa_58_0_push12_loopback165 (
        .in_data_in(i_spec_select408_loopback164_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i16_a_sroa_58_0_pop12_loopback163_out_feedback_stall_out_12),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg62_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i16_a_sroa_58_0_push12_loopback165_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i16_a_sroa_58_0_push12_loopback165_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_58_0_pop12_loopback163(BLACKBOX,321)@2
    // out out_feedback_stall_out_12@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_58_0_pop12_0 thei_llvm_fpga_pop_i16_a_sroa_58_0_pop12_loopback163 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i16_a_sroa_58_0_push12_loopback165_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i16_a_sroa_58_0_push12_loopback165_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg61_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_58_0_pop12_loopback163_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i16_a_sroa_58_0_pop12_loopback163_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_28560_recast_x(CONSTANT,598)
    assign c_i32_28560_recast_x_q = $unsigned(32'b00000000000000000000000000011100);

    // i_unnamed_loopback21(LOGICAL,507)@2
    assign i_unnamed_loopback21_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_28560_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select408_loopback164(MUX,466)@2
    assign i_spec_select408_loopback164_s = i_unnamed_loopback21_q;
    always @(i_spec_select408_loopback164_s or i_llvm_fpga_pop_i16_a_sroa_58_0_pop12_loopback163_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select408_loopback164_s)
            1'b0 : i_spec_select408_loopback164_q = i_llvm_fpga_pop_i16_a_sroa_58_0_pop12_loopback163_out_data_out;
            1'b1 : i_spec_select408_loopback164_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select408_loopback164_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback32_loopback311(BLACKBOX,252)@2
    // out out_intel_reserved_ffwd_29_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_32_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback32_loopback311 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_29_0(i_spec_select408_loopback164_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg162_q),
        .out_intel_reserved_ffwd_29_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback32_loopback311_out_intel_reserved_ffwd_29_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_19_regfree_osync_x(GPOUT,629)
    assign out_intel_reserved_ffwd_29_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback32_loopback311_out_intel_reserved_ffwd_29_0;

    // valid_fanout_reg135(REG,821)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg135_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg135_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,693)@1 + 1
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

    // valid_fanout_reg8(REG,694)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_4_0_push39_loopback84(BLACKBOX,384)@2
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_4_0_push39_0 thei_llvm_fpga_push_i16_a_sroa_4_0_push39_loopback84 (
        .in_data_in(i_unnamed_loopback83_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i16_a_sroa_4_0_pop39_loopback82_out_feedback_stall_out_39),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i16_a_sroa_4_0_push39_loopback84_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i16_a_sroa_4_0_push39_loopback84_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_4_0_pop39_loopback82(BLACKBOX,316)@2
    // out out_feedback_stall_out_39@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_4_0_pop39_0 thei_llvm_fpga_pop_i16_a_sroa_4_0_pop39_loopback82 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i16_a_sroa_4_0_push39_loopback84_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i16_a_sroa_4_0_push39_loopback84_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_4_0_pop39_loopback82_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i16_a_sroa_4_0_pop39_loopback82_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_loopback75(LOGICAL,534)@2
    assign i_unnamed_loopback75_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_1587_q ? 1'b1 : 1'b0);

    // i_unnamed_loopback83(MUX,536)@2
    assign i_unnamed_loopback83_s = i_unnamed_loopback75_q;
    always @(i_unnamed_loopback83_s or i_llvm_fpga_pop_i16_a_sroa_4_0_pop39_loopback82_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_unnamed_loopback83_s)
            1'b0 : i_unnamed_loopback83_q = i_llvm_fpga_pop_i16_a_sroa_4_0_pop39_loopback82_out_data_out;
            1'b1 : i_unnamed_loopback83_q = i_conv_loopback14_vt_join_q;
            default : i_unnamed_loopback83_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback5_loopback284(BLACKBOX,281)@2
    // out out_intel_reserved_ffwd_2_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_5_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback5_loopback284 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_2_0(i_unnamed_loopback83_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg135_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback5_loopback284_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_20_regfree_osync_x(GPOUT,630)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback5_loopback284_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg163(REG,849)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg163_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg163_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg63(REG,749)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg63_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg63_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg64(REG,750)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg64_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg64_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_60_0_push11_loopback168(BLACKBOX,390)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_60_0_push11_0 thei_llvm_fpga_push_i16_a_sroa_60_0_push11_loopback168 (
        .in_data_in(i_spec_select409_loopback167_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i16_a_sroa_60_0_pop11_loopback166_out_feedback_stall_out_11),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg64_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i16_a_sroa_60_0_push11_loopback168_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i16_a_sroa_60_0_push11_loopback168_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_60_0_pop11_loopback166(BLACKBOX,322)@2
    // out out_feedback_stall_out_11@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_60_0_pop11_0 thei_llvm_fpga_pop_i16_a_sroa_60_0_pop11_loopback166 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i16_a_sroa_60_0_push11_loopback168_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i16_a_sroa_60_0_push11_loopback168_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg63_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_60_0_pop11_loopback166_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i16_a_sroa_60_0_pop11_loopback166_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_29559_recast_x(CONSTANT,599)
    assign c_i32_29559_recast_x_q = $unsigned(32'b00000000000000000000000000011101);

    // i_unnamed_loopback19(LOGICAL,506)@2
    assign i_unnamed_loopback19_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_29559_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select409_loopback167(MUX,467)@2
    assign i_spec_select409_loopback167_s = i_unnamed_loopback19_q;
    always @(i_spec_select409_loopback167_s or i_llvm_fpga_pop_i16_a_sroa_60_0_pop11_loopback166_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select409_loopback167_s)
            1'b0 : i_spec_select409_loopback167_q = i_llvm_fpga_pop_i16_a_sroa_60_0_pop11_loopback166_out_data_out;
            1'b1 : i_spec_select409_loopback167_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select409_loopback167_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback33_loopback312(BLACKBOX,253)@2
    // out out_intel_reserved_ffwd_30_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_33_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback33_loopback312 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_30_0(i_spec_select409_loopback167_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg163_q),
        .out_intel_reserved_ffwd_30_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback33_loopback312_out_intel_reserved_ffwd_30_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_21_regfree_osync_x(GPOUT,631)
    assign out_intel_reserved_ffwd_30_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback33_loopback312_out_intel_reserved_ffwd_30_0;

    // valid_fanout_reg164(REG,850)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg164_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg164_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg65(REG,751)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg65_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg65_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg66(REG,752)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg66_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg66_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_62_0_push10_loopback171(BLACKBOX,391)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_62_0_push10_0 thei_llvm_fpga_push_i16_a_sroa_62_0_push10_loopback171 (
        .in_data_in(i_spec_select410_loopback170_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i16_a_sroa_62_0_pop10_loopback169_out_feedback_stall_out_10),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg66_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i16_a_sroa_62_0_push10_loopback171_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i16_a_sroa_62_0_push10_loopback171_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_62_0_pop10_loopback169(BLACKBOX,323)@2
    // out out_feedback_stall_out_10@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_62_0_pop10_0 thei_llvm_fpga_pop_i16_a_sroa_62_0_pop10_loopback169 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_10(i_llvm_fpga_push_i16_a_sroa_62_0_push10_loopback171_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i16_a_sroa_62_0_push10_loopback171_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg65_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_62_0_pop10_loopback169_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i16_a_sroa_62_0_pop10_loopback169_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_30558_recast_x(CONSTANT,600)
    assign c_i32_30558_recast_x_q = $unsigned(32'b00000000000000000000000000011110);

    // i_unnamed_loopback17(LOGICAL,504)@2
    assign i_unnamed_loopback17_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_30558_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select410_loopback170(MUX,468)@2
    assign i_spec_select410_loopback170_s = i_unnamed_loopback17_q;
    always @(i_spec_select410_loopback170_s or i_llvm_fpga_pop_i16_a_sroa_62_0_pop10_loopback169_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select410_loopback170_s)
            1'b0 : i_spec_select410_loopback170_q = i_llvm_fpga_pop_i16_a_sroa_62_0_pop10_loopback169_out_data_out;
            1'b1 : i_spec_select410_loopback170_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select410_loopback170_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback34_loopback313(BLACKBOX,254)@2
    // out out_intel_reserved_ffwd_31_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_34_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback34_loopback313 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_31_0(i_spec_select410_loopback170_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg164_q),
        .out_intel_reserved_ffwd_31_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback34_loopback313_out_intel_reserved_ffwd_31_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_22_regfree_osync_x(GPOUT,632)
    assign out_intel_reserved_ffwd_31_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback34_loopback313_out_intel_reserved_ffwd_31_0;

    // valid_fanout_reg165(REG,851)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg165_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg165_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg67(REG,753)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg67_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg67_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg68(REG,754)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg68_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg68_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_64_0_push9_loopback174(BLACKBOX,392)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_64_0_push9_0 thei_llvm_fpga_push_i16_a_sroa_64_0_push9_loopback174 (
        .in_data_in(i_spec_select411_loopback173_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i16_a_sroa_64_0_pop9_loopback172_out_feedback_stall_out_9),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg68_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i16_a_sroa_64_0_push9_loopback174_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i16_a_sroa_64_0_push9_loopback174_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_64_0_pop9_loopback172(BLACKBOX,324)@2
    // out out_feedback_stall_out_9@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_64_0_pop9_0 thei_llvm_fpga_pop_i16_a_sroa_64_0_pop9_loopback172 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i16_a_sroa_64_0_push9_loopback174_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i16_a_sroa_64_0_push9_loopback174_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg67_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_64_0_pop9_loopback172_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i16_a_sroa_64_0_pop9_loopback172_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_31557_recast_x(CONSTANT,601)
    assign c_i32_31557_recast_x_q = $unsigned(32'b00000000000000000000000000011111);

    // i_unnamed_loopback15(LOGICAL,503)@2
    assign i_unnamed_loopback15_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_31557_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select411_loopback173(MUX,469)@2
    assign i_spec_select411_loopback173_s = i_unnamed_loopback15_q;
    always @(i_spec_select411_loopback173_s or i_llvm_fpga_pop_i16_a_sroa_64_0_pop9_loopback172_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select411_loopback173_s)
            1'b0 : i_spec_select411_loopback173_q = i_llvm_fpga_pop_i16_a_sroa_64_0_pop9_loopback172_out_data_out;
            1'b1 : i_spec_select411_loopback173_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select411_loopback173_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback35_loopback314(BLACKBOX,255)@2
    // out out_intel_reserved_ffwd_32_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_35_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback35_loopback314 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_32_0(i_spec_select411_loopback173_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg165_q),
        .out_intel_reserved_ffwd_32_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback35_loopback314_out_intel_reserved_ffwd_32_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_23_regfree_osync_x(GPOUT,633)
    assign out_intel_reserved_ffwd_32_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback35_loopback314_out_intel_reserved_ffwd_32_0;

    // valid_fanout_reg166(REG,852)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg166_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg166_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg69(REG,755)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg69_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg69_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg70(REG,756)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg70_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg70_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_0_0_push72_loopback177(BLACKBOX,395)@2
    // out out_feedback_out_72@20000000
    // out out_feedback_valid_out_72@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_0_0_push72_0 thei_llvm_fpga_push_i16_out_sroa_0_0_push72_loopback177 (
        .in_data_in(i_spec_select412_loopback176_q),
        .in_feedback_stall_in_72(i_llvm_fpga_pop_i16_out_sroa_0_0_pop72_loopback175_out_feedback_stall_out_72),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg70_q),
        .out_data_out(),
        .out_feedback_out_72(i_llvm_fpga_push_i16_out_sroa_0_0_push72_loopback177_out_feedback_out_72),
        .out_feedback_valid_out_72(i_llvm_fpga_push_i16_out_sroa_0_0_push72_loopback177_out_feedback_valid_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_0_0_pop72_loopback175(BLACKBOX,327)@2
    // out out_feedback_stall_out_72@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_0_0_pop72_0 thei_llvm_fpga_pop_i16_out_sroa_0_0_pop72_loopback175 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_72(i_llvm_fpga_push_i16_out_sroa_0_0_push72_loopback177_out_feedback_out_72),
        .in_feedback_valid_in_72(i_llvm_fpga_push_i16_out_sroa_0_0_push72_loopback177_out_feedback_valid_out_72),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg69_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_0_0_pop72_loopback175_out_data_out),
        .out_feedback_stall_out_72(i_llvm_fpga_pop_i16_out_sroa_0_0_pop72_loopback175_out_feedback_stall_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select412_loopback176(MUX,470)@2
    assign i_spec_select412_loopback176_s = i_unnamed_loopback77_q;
    always @(i_spec_select412_loopback176_s or i_llvm_fpga_pop_i16_out_sroa_0_0_pop72_loopback175_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select412_loopback176_s)
            1'b0 : i_spec_select412_loopback176_q = i_llvm_fpga_pop_i16_out_sroa_0_0_pop72_loopback175_out_data_out;
            1'b1 : i_spec_select412_loopback176_q = c_i16_0589_q;
            default : i_spec_select412_loopback176_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback36_loopback315(BLACKBOX,256)@2
    // out out_intel_reserved_ffwd_33_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_36_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback36_loopback315 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_33_0(i_spec_select412_loopback176_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg166_q),
        .out_intel_reserved_ffwd_33_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback36_loopback315_out_intel_reserved_ffwd_33_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_24_regfree_osync_x(GPOUT,634)
    assign out_intel_reserved_ffwd_33_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback36_loopback315_out_intel_reserved_ffwd_33_0;

    // valid_fanout_reg167(REG,853)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg167_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg167_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg71(REG,757)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg71_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg71_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg72(REG,758)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg72_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg72_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_5_0_push71_loopback180(BLACKBOX,413)@2
    // out out_feedback_out_71@20000000
    // out out_feedback_valid_out_71@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_5_0_push71_0 thei_llvm_fpga_push_i16_out_sroa_5_0_push71_loopback180 (
        .in_data_in(i_unnamed_loopback179_q),
        .in_feedback_stall_in_71(i_llvm_fpga_pop_i16_out_sroa_5_0_pop71_loopback178_out_feedback_stall_out_71),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg72_q),
        .out_data_out(),
        .out_feedback_out_71(i_llvm_fpga_push_i16_out_sroa_5_0_push71_loopback180_out_feedback_out_71),
        .out_feedback_valid_out_71(i_llvm_fpga_push_i16_out_sroa_5_0_push71_loopback180_out_feedback_valid_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_5_0_pop71_loopback178(BLACKBOX,345)@2
    // out out_feedback_stall_out_71@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_5_0_pop71_0 thei_llvm_fpga_pop_i16_out_sroa_5_0_pop71_loopback178 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_71(i_llvm_fpga_push_i16_out_sroa_5_0_push71_loopback180_out_feedback_out_71),
        .in_feedback_valid_in_71(i_llvm_fpga_push_i16_out_sroa_5_0_push71_loopback180_out_feedback_valid_out_71),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg71_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_5_0_pop71_loopback178_out_data_out),
        .out_feedback_stall_out_71(i_llvm_fpga_pop_i16_out_sroa_5_0_pop71_loopback178_out_feedback_stall_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_loopback179(MUX,505)@2
    assign i_unnamed_loopback179_s = i_unnamed_loopback75_q;
    always @(i_unnamed_loopback179_s or i_llvm_fpga_pop_i16_out_sroa_5_0_pop71_loopback178_out_data_out or c_i16_0589_q)
    begin
        unique case (i_unnamed_loopback179_s)
            1'b0 : i_unnamed_loopback179_q = i_llvm_fpga_pop_i16_out_sroa_5_0_pop71_loopback178_out_data_out;
            1'b1 : i_unnamed_loopback179_q = c_i16_0589_q;
            default : i_unnamed_loopback179_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback37_loopback316(BLACKBOX,257)@2
    // out out_intel_reserved_ffwd_34_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_37_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback37_loopback316 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_34_0(i_unnamed_loopback179_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg167_q),
        .out_intel_reserved_ffwd_34_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback37_loopback316_out_intel_reserved_ffwd_34_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_25_regfree_osync_x(GPOUT,635)
    assign out_intel_reserved_ffwd_34_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback37_loopback316_out_intel_reserved_ffwd_34_0;

    // valid_fanout_reg168(REG,854)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg168_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg168_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg73(REG,759)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg73_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg73_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg74(REG,760)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg74_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg74_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_8_0_push70_loopback183(BLACKBOX,424)@2
    // out out_feedback_out_70@20000000
    // out out_feedback_valid_out_70@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_8_0_push70_0 thei_llvm_fpga_push_i16_out_sroa_8_0_push70_loopback183 (
        .in_data_in(i_spec_select413_loopback182_q),
        .in_feedback_stall_in_70(i_llvm_fpga_pop_i16_out_sroa_8_0_pop70_loopback181_out_feedback_stall_out_70),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg74_q),
        .out_data_out(),
        .out_feedback_out_70(i_llvm_fpga_push_i16_out_sroa_8_0_push70_loopback183_out_feedback_out_70),
        .out_feedback_valid_out_70(i_llvm_fpga_push_i16_out_sroa_8_0_push70_loopback183_out_feedback_valid_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_8_0_pop70_loopback181(BLACKBOX,356)@2
    // out out_feedback_stall_out_70@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_8_0_pop70_0 thei_llvm_fpga_pop_i16_out_sroa_8_0_pop70_loopback181 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_70(i_llvm_fpga_push_i16_out_sroa_8_0_push70_loopback183_out_feedback_out_70),
        .in_feedback_valid_in_70(i_llvm_fpga_push_i16_out_sroa_8_0_push70_loopback183_out_feedback_valid_out_70),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg73_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_8_0_pop70_loopback181_out_data_out),
        .out_feedback_stall_out_70(i_llvm_fpga_pop_i16_out_sroa_8_0_pop70_loopback181_out_feedback_stall_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_2586_recast_x(CONSTANT,595)
    assign c_i32_2586_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_loopback73(LOGICAL,533)@2
    assign i_unnamed_loopback73_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_2586_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select413_loopback182(MUX,471)@2
    assign i_spec_select413_loopback182_s = i_unnamed_loopback73_q;
    always @(i_spec_select413_loopback182_s or i_llvm_fpga_pop_i16_out_sroa_8_0_pop70_loopback181_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select413_loopback182_s)
            1'b0 : i_spec_select413_loopback182_q = i_llvm_fpga_pop_i16_out_sroa_8_0_pop70_loopback181_out_data_out;
            1'b1 : i_spec_select413_loopback182_q = c_i16_0589_q;
            default : i_spec_select413_loopback182_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback38_loopback317(BLACKBOX,258)@2
    // out out_intel_reserved_ffwd_35_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_38_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback38_loopback317 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_35_0(i_spec_select413_loopback182_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg168_q),
        .out_intel_reserved_ffwd_35_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback38_loopback317_out_intel_reserved_ffwd_35_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_26_regfree_osync_x(GPOUT,636)
    assign out_intel_reserved_ffwd_35_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback38_loopback317_out_intel_reserved_ffwd_35_0;

    // valid_fanout_reg169(REG,855)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg169_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg169_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg75(REG,761)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg75_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg75_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg76(REG,762)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg76_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg76_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_11_0_push69_loopback186(BLACKBOX,396)@2
    // out out_feedback_out_69@20000000
    // out out_feedback_valid_out_69@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_11_0_push69_0 thei_llvm_fpga_push_i16_out_sroa_11_0_push69_loopback186 (
        .in_data_in(i_spec_select414_loopback185_q),
        .in_feedback_stall_in_69(i_llvm_fpga_pop_i16_out_sroa_11_0_pop69_loopback184_out_feedback_stall_out_69),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg76_q),
        .out_data_out(),
        .out_feedback_out_69(i_llvm_fpga_push_i16_out_sroa_11_0_push69_loopback186_out_feedback_out_69),
        .out_feedback_valid_out_69(i_llvm_fpga_push_i16_out_sroa_11_0_push69_loopback186_out_feedback_valid_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_11_0_pop69_loopback184(BLACKBOX,328)@2
    // out out_feedback_stall_out_69@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_11_0_pop69_0 thei_llvm_fpga_pop_i16_out_sroa_11_0_pop69_loopback184 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_69(i_llvm_fpga_push_i16_out_sroa_11_0_push69_loopback186_out_feedback_out_69),
        .in_feedback_valid_in_69(i_llvm_fpga_push_i16_out_sroa_11_0_push69_loopback186_out_feedback_valid_out_69),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg75_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_11_0_pop69_loopback184_out_data_out),
        .out_feedback_stall_out_69(i_llvm_fpga_pop_i16_out_sroa_11_0_pop69_loopback184_out_feedback_stall_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_3585_recast_x(CONSTANT,602)
    assign c_i32_3585_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // i_unnamed_loopback71(LOGICAL,532)@2
    assign i_unnamed_loopback71_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_3585_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select414_loopback185(MUX,472)@2
    assign i_spec_select414_loopback185_s = i_unnamed_loopback71_q;
    always @(i_spec_select414_loopback185_s or i_llvm_fpga_pop_i16_out_sroa_11_0_pop69_loopback184_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select414_loopback185_s)
            1'b0 : i_spec_select414_loopback185_q = i_llvm_fpga_pop_i16_out_sroa_11_0_pop69_loopback184_out_data_out;
            1'b1 : i_spec_select414_loopback185_q = c_i16_0589_q;
            default : i_spec_select414_loopback185_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback39_loopback318(BLACKBOX,259)@2
    // out out_intel_reserved_ffwd_36_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_39_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback39_loopback318 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_36_0(i_spec_select414_loopback185_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg169_q),
        .out_intel_reserved_ffwd_36_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback39_loopback318_out_intel_reserved_ffwd_36_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_27_regfree_osync_x(GPOUT,637)
    assign out_intel_reserved_ffwd_36_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback39_loopback318_out_intel_reserved_ffwd_36_0;

    // valid_fanout_reg170(REG,856)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg170_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg170_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg77(REG,763)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg77_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg77_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg78(REG,764)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg78_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg78_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_14_0_push68_loopback189(BLACKBOX,397)@2
    // out out_feedback_out_68@20000000
    // out out_feedback_valid_out_68@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_14_0_push68_0 thei_llvm_fpga_push_i16_out_sroa_14_0_push68_loopback189 (
        .in_data_in(i_spec_select415_loopback188_q),
        .in_feedback_stall_in_68(i_llvm_fpga_pop_i16_out_sroa_14_0_pop68_loopback187_out_feedback_stall_out_68),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg78_q),
        .out_data_out(),
        .out_feedback_out_68(i_llvm_fpga_push_i16_out_sroa_14_0_push68_loopback189_out_feedback_out_68),
        .out_feedback_valid_out_68(i_llvm_fpga_push_i16_out_sroa_14_0_push68_loopback189_out_feedback_valid_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_14_0_pop68_loopback187(BLACKBOX,329)@2
    // out out_feedback_stall_out_68@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_14_0_pop68_0 thei_llvm_fpga_pop_i16_out_sroa_14_0_pop68_loopback187 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_68(i_llvm_fpga_push_i16_out_sroa_14_0_push68_loopback189_out_feedback_out_68),
        .in_feedback_valid_in_68(i_llvm_fpga_push_i16_out_sroa_14_0_push68_loopback189_out_feedback_valid_out_68),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg77_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_14_0_pop68_loopback187_out_data_out),
        .out_feedback_stall_out_68(i_llvm_fpga_pop_i16_out_sroa_14_0_pop68_loopback187_out_feedback_stall_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_4584_recast_x(CONSTANT,603)
    assign c_i32_4584_recast_x_q = $unsigned(32'b00000000000000000000000000000100);

    // i_unnamed_loopback69(LOGICAL,531)@2
    assign i_unnamed_loopback69_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_4584_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select415_loopback188(MUX,473)@2
    assign i_spec_select415_loopback188_s = i_unnamed_loopback69_q;
    always @(i_spec_select415_loopback188_s or i_llvm_fpga_pop_i16_out_sroa_14_0_pop68_loopback187_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select415_loopback188_s)
            1'b0 : i_spec_select415_loopback188_q = i_llvm_fpga_pop_i16_out_sroa_14_0_pop68_loopback187_out_data_out;
            1'b1 : i_spec_select415_loopback188_q = c_i16_0589_q;
            default : i_spec_select415_loopback188_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback40_loopback319(BLACKBOX,260)@2
    // out out_intel_reserved_ffwd_37_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_40_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback40_loopback319 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_37_0(i_spec_select415_loopback188_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg170_q),
        .out_intel_reserved_ffwd_37_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback40_loopback319_out_intel_reserved_ffwd_37_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_28_regfree_osync_x(GPOUT,638)
    assign out_intel_reserved_ffwd_37_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback40_loopback319_out_intel_reserved_ffwd_37_0;

    // valid_fanout_reg171(REG,857)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg171_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg171_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg79(REG,765)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg79_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg79_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg80(REG,766)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg80_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg80_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_17_0_push67_loopback192(BLACKBOX,398)@2
    // out out_feedback_out_67@20000000
    // out out_feedback_valid_out_67@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_17_0_push67_0 thei_llvm_fpga_push_i16_out_sroa_17_0_push67_loopback192 (
        .in_data_in(i_spec_select416_loopback191_q),
        .in_feedback_stall_in_67(i_llvm_fpga_pop_i16_out_sroa_17_0_pop67_loopback190_out_feedback_stall_out_67),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg80_q),
        .out_data_out(),
        .out_feedback_out_67(i_llvm_fpga_push_i16_out_sroa_17_0_push67_loopback192_out_feedback_out_67),
        .out_feedback_valid_out_67(i_llvm_fpga_push_i16_out_sroa_17_0_push67_loopback192_out_feedback_valid_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_17_0_pop67_loopback190(BLACKBOX,330)@2
    // out out_feedback_stall_out_67@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_17_0_pop67_0 thei_llvm_fpga_pop_i16_out_sroa_17_0_pop67_loopback190 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_67(i_llvm_fpga_push_i16_out_sroa_17_0_push67_loopback192_out_feedback_out_67),
        .in_feedback_valid_in_67(i_llvm_fpga_push_i16_out_sroa_17_0_push67_loopback192_out_feedback_valid_out_67),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg79_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_17_0_pop67_loopback190_out_data_out),
        .out_feedback_stall_out_67(i_llvm_fpga_pop_i16_out_sroa_17_0_pop67_loopback190_out_feedback_stall_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_5583_recast_x(CONSTANT,604)
    assign c_i32_5583_recast_x_q = $unsigned(32'b00000000000000000000000000000101);

    // i_unnamed_loopback67(LOGICAL,530)@2
    assign i_unnamed_loopback67_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_5583_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select416_loopback191(MUX,474)@2
    assign i_spec_select416_loopback191_s = i_unnamed_loopback67_q;
    always @(i_spec_select416_loopback191_s or i_llvm_fpga_pop_i16_out_sroa_17_0_pop67_loopback190_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select416_loopback191_s)
            1'b0 : i_spec_select416_loopback191_q = i_llvm_fpga_pop_i16_out_sroa_17_0_pop67_loopback190_out_data_out;
            1'b1 : i_spec_select416_loopback191_q = c_i16_0589_q;
            default : i_spec_select416_loopback191_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback41_loopback320(BLACKBOX,261)@2
    // out out_intel_reserved_ffwd_38_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_41_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback41_loopback320 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_38_0(i_spec_select416_loopback191_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg171_q),
        .out_intel_reserved_ffwd_38_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback41_loopback320_out_intel_reserved_ffwd_38_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_29_regfree_osync_x(GPOUT,639)
    assign out_intel_reserved_ffwd_38_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback41_loopback320_out_intel_reserved_ffwd_38_0;

    // valid_fanout_reg172(REG,858)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg172_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg172_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg81(REG,767)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg81_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg81_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg82(REG,768)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg82_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg82_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_20_0_push66_loopback195(BLACKBOX,399)@2
    // out out_feedback_out_66@20000000
    // out out_feedback_valid_out_66@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_20_0_push66_0 thei_llvm_fpga_push_i16_out_sroa_20_0_push66_loopback195 (
        .in_data_in(i_spec_select417_loopback194_q),
        .in_feedback_stall_in_66(i_llvm_fpga_pop_i16_out_sroa_20_0_pop66_loopback193_out_feedback_stall_out_66),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg82_q),
        .out_data_out(),
        .out_feedback_out_66(i_llvm_fpga_push_i16_out_sroa_20_0_push66_loopback195_out_feedback_out_66),
        .out_feedback_valid_out_66(i_llvm_fpga_push_i16_out_sroa_20_0_push66_loopback195_out_feedback_valid_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_20_0_pop66_loopback193(BLACKBOX,331)@2
    // out out_feedback_stall_out_66@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_20_0_pop66_0 thei_llvm_fpga_pop_i16_out_sroa_20_0_pop66_loopback193 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_66(i_llvm_fpga_push_i16_out_sroa_20_0_push66_loopback195_out_feedback_out_66),
        .in_feedback_valid_in_66(i_llvm_fpga_push_i16_out_sroa_20_0_push66_loopback195_out_feedback_valid_out_66),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg81_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_20_0_pop66_loopback193_out_data_out),
        .out_feedback_stall_out_66(i_llvm_fpga_pop_i16_out_sroa_20_0_pop66_loopback193_out_feedback_stall_out_66),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_6582_recast_x(CONSTANT,605)
    assign c_i32_6582_recast_x_q = $unsigned(32'b00000000000000000000000000000110);

    // i_unnamed_loopback65(LOGICAL,529)@2
    assign i_unnamed_loopback65_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_6582_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select417_loopback194(MUX,475)@2
    assign i_spec_select417_loopback194_s = i_unnamed_loopback65_q;
    always @(i_spec_select417_loopback194_s or i_llvm_fpga_pop_i16_out_sroa_20_0_pop66_loopback193_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select417_loopback194_s)
            1'b0 : i_spec_select417_loopback194_q = i_llvm_fpga_pop_i16_out_sroa_20_0_pop66_loopback193_out_data_out;
            1'b1 : i_spec_select417_loopback194_q = c_i16_0589_q;
            default : i_spec_select417_loopback194_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback42_loopback321(BLACKBOX,262)@2
    // out out_intel_reserved_ffwd_39_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_42_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback42_loopback321 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_39_0(i_spec_select417_loopback194_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg172_q),
        .out_intel_reserved_ffwd_39_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback42_loopback321_out_intel_reserved_ffwd_39_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_30_regfree_osync_x(GPOUT,640)
    assign out_intel_reserved_ffwd_39_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback42_loopback321_out_intel_reserved_ffwd_39_0;

    // valid_fanout_reg136(REG,822)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg136_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg136_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,695)@1 + 1
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

    // valid_fanout_reg10(REG,696)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_6_0_push38_loopback87(BLACKBOX,393)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_6_0_push38_0 thei_llvm_fpga_push_i16_a_sroa_6_0_push38_loopback87 (
        .in_data_in(i_spec_select382_loopback86_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i16_a_sroa_6_0_pop38_loopback85_out_feedback_stall_out_38),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i16_a_sroa_6_0_push38_loopback87_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i16_a_sroa_6_0_push38_loopback87_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_6_0_pop38_loopback85(BLACKBOX,325)@2
    // out out_feedback_stall_out_38@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_6_0_pop38_0 thei_llvm_fpga_pop_i16_a_sroa_6_0_pop38_loopback85 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i16_a_sroa_6_0_push38_loopback87_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i16_a_sroa_6_0_push38_loopback87_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_6_0_pop38_loopback85_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i16_a_sroa_6_0_pop38_loopback85_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select382_loopback86(MUX,440)@2
    assign i_spec_select382_loopback86_s = i_unnamed_loopback73_q;
    always @(i_spec_select382_loopback86_s or i_llvm_fpga_pop_i16_a_sroa_6_0_pop38_loopback85_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select382_loopback86_s)
            1'b0 : i_spec_select382_loopback86_q = i_llvm_fpga_pop_i16_a_sroa_6_0_pop38_loopback85_out_data_out;
            1'b1 : i_spec_select382_loopback86_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select382_loopback86_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback6_loopback285(BLACKBOX,290)@2
    // out out_intel_reserved_ffwd_3_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_6_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback6_loopback285 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_3_0(i_spec_select382_loopback86_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg136_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback6_loopback285_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_31_regfree_osync_x(GPOUT,641)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback6_loopback285_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg173(REG,859)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg173_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg173_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg83(REG,769)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg83_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg83_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg84(REG,770)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg84_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg84_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_23_0_push65_loopback198(BLACKBOX,400)@2
    // out out_feedback_out_65@20000000
    // out out_feedback_valid_out_65@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_23_0_push65_0 thei_llvm_fpga_push_i16_out_sroa_23_0_push65_loopback198 (
        .in_data_in(i_spec_select418_loopback197_q),
        .in_feedback_stall_in_65(i_llvm_fpga_pop_i16_out_sroa_23_0_pop65_loopback196_out_feedback_stall_out_65),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg84_q),
        .out_data_out(),
        .out_feedback_out_65(i_llvm_fpga_push_i16_out_sroa_23_0_push65_loopback198_out_feedback_out_65),
        .out_feedback_valid_out_65(i_llvm_fpga_push_i16_out_sroa_23_0_push65_loopback198_out_feedback_valid_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_23_0_pop65_loopback196(BLACKBOX,332)@2
    // out out_feedback_stall_out_65@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_23_0_pop65_0 thei_llvm_fpga_pop_i16_out_sroa_23_0_pop65_loopback196 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_65(i_llvm_fpga_push_i16_out_sroa_23_0_push65_loopback198_out_feedback_out_65),
        .in_feedback_valid_in_65(i_llvm_fpga_push_i16_out_sroa_23_0_push65_loopback198_out_feedback_valid_out_65),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg83_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_23_0_pop65_loopback196_out_data_out),
        .out_feedback_stall_out_65(i_llvm_fpga_pop_i16_out_sroa_23_0_pop65_loopback196_out_feedback_stall_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7581_recast_x(CONSTANT,606)
    assign c_i32_7581_recast_x_q = $unsigned(32'b00000000000000000000000000000111);

    // i_unnamed_loopback63(LOGICAL,528)@2
    assign i_unnamed_loopback63_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_7581_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select418_loopback197(MUX,476)@2
    assign i_spec_select418_loopback197_s = i_unnamed_loopback63_q;
    always @(i_spec_select418_loopback197_s or i_llvm_fpga_pop_i16_out_sroa_23_0_pop65_loopback196_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select418_loopback197_s)
            1'b0 : i_spec_select418_loopback197_q = i_llvm_fpga_pop_i16_out_sroa_23_0_pop65_loopback196_out_data_out;
            1'b1 : i_spec_select418_loopback197_q = c_i16_0589_q;
            default : i_spec_select418_loopback197_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback43_loopback322(BLACKBOX,263)@2
    // out out_intel_reserved_ffwd_40_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_43_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback43_loopback322 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_40_0(i_spec_select418_loopback197_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg173_q),
        .out_intel_reserved_ffwd_40_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback43_loopback322_out_intel_reserved_ffwd_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_32_regfree_osync_x(GPOUT,642)
    assign out_intel_reserved_ffwd_40_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback43_loopback322_out_intel_reserved_ffwd_40_0;

    // valid_fanout_reg174(REG,860)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg174_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg174_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg85(REG,771)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg85_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg85_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg86(REG,772)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg86_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg86_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_26_0_push64_loopback201(BLACKBOX,401)@2
    // out out_feedback_out_64@20000000
    // out out_feedback_valid_out_64@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_26_0_push64_0 thei_llvm_fpga_push_i16_out_sroa_26_0_push64_loopback201 (
        .in_data_in(i_spec_select419_loopback200_q),
        .in_feedback_stall_in_64(i_llvm_fpga_pop_i16_out_sroa_26_0_pop64_loopback199_out_feedback_stall_out_64),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg86_q),
        .out_data_out(),
        .out_feedback_out_64(i_llvm_fpga_push_i16_out_sroa_26_0_push64_loopback201_out_feedback_out_64),
        .out_feedback_valid_out_64(i_llvm_fpga_push_i16_out_sroa_26_0_push64_loopback201_out_feedback_valid_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_26_0_pop64_loopback199(BLACKBOX,333)@2
    // out out_feedback_stall_out_64@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_26_0_pop64_0 thei_llvm_fpga_pop_i16_out_sroa_26_0_pop64_loopback199 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_64(i_llvm_fpga_push_i16_out_sroa_26_0_push64_loopback201_out_feedback_out_64),
        .in_feedback_valid_in_64(i_llvm_fpga_push_i16_out_sroa_26_0_push64_loopback201_out_feedback_valid_out_64),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg85_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_26_0_pop64_loopback199_out_data_out),
        .out_feedback_stall_out_64(i_llvm_fpga_pop_i16_out_sroa_26_0_pop64_loopback199_out_feedback_stall_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_8580_recast_x(CONSTANT,607)
    assign c_i32_8580_recast_x_q = $unsigned(32'b00000000000000000000000000001000);

    // i_unnamed_loopback61(LOGICAL,527)@2
    assign i_unnamed_loopback61_q = $unsigned(i_llvm_fpga_pop_i32_k_015_pop73_loopback12_out_data_out == c_i32_8580_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select419_loopback200(MUX,477)@2
    assign i_spec_select419_loopback200_s = i_unnamed_loopback61_q;
    always @(i_spec_select419_loopback200_s or i_llvm_fpga_pop_i16_out_sroa_26_0_pop64_loopback199_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select419_loopback200_s)
            1'b0 : i_spec_select419_loopback200_q = i_llvm_fpga_pop_i16_out_sroa_26_0_pop64_loopback199_out_data_out;
            1'b1 : i_spec_select419_loopback200_q = c_i16_0589_q;
            default : i_spec_select419_loopback200_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback44_loopback323(BLACKBOX,264)@2
    // out out_intel_reserved_ffwd_41_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_44_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback44_loopback323 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_41_0(i_spec_select419_loopback200_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg174_q),
        .out_intel_reserved_ffwd_41_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback44_loopback323_out_intel_reserved_ffwd_41_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_33_regfree_osync_x(GPOUT,643)
    assign out_intel_reserved_ffwd_41_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback44_loopback323_out_intel_reserved_ffwd_41_0;

    // valid_fanout_reg175(REG,861)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg175_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg175_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg87(REG,773)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg87_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg87_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg88(REG,774)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg88_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg88_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_29_0_push63_loopback204(BLACKBOX,402)@2
    // out out_feedback_out_63@20000000
    // out out_feedback_valid_out_63@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_29_0_push63_0 thei_llvm_fpga_push_i16_out_sroa_29_0_push63_loopback204 (
        .in_data_in(i_spec_select420_loopback203_q),
        .in_feedback_stall_in_63(i_llvm_fpga_pop_i16_out_sroa_29_0_pop63_loopback202_out_feedback_stall_out_63),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg88_q),
        .out_data_out(),
        .out_feedback_out_63(i_llvm_fpga_push_i16_out_sroa_29_0_push63_loopback204_out_feedback_out_63),
        .out_feedback_valid_out_63(i_llvm_fpga_push_i16_out_sroa_29_0_push63_loopback204_out_feedback_valid_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_29_0_pop63_loopback202(BLACKBOX,334)@2
    // out out_feedback_stall_out_63@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_29_0_pop63_0 thei_llvm_fpga_pop_i16_out_sroa_29_0_pop63_loopback202 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_63(i_llvm_fpga_push_i16_out_sroa_29_0_push63_loopback204_out_feedback_out_63),
        .in_feedback_valid_in_63(i_llvm_fpga_push_i16_out_sroa_29_0_push63_loopback204_out_feedback_valid_out_63),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg87_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_29_0_pop63_loopback202_out_data_out),
        .out_feedback_stall_out_63(i_llvm_fpga_pop_i16_out_sroa_29_0_pop63_loopback202_out_feedback_stall_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select420_loopback203(MUX,478)@2
    assign i_spec_select420_loopback203_s = i_unnamed_loopback59_q;
    always @(i_spec_select420_loopback203_s or i_llvm_fpga_pop_i16_out_sroa_29_0_pop63_loopback202_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select420_loopback203_s)
            1'b0 : i_spec_select420_loopback203_q = i_llvm_fpga_pop_i16_out_sroa_29_0_pop63_loopback202_out_data_out;
            1'b1 : i_spec_select420_loopback203_q = c_i16_0589_q;
            default : i_spec_select420_loopback203_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback45_loopback324(BLACKBOX,265)@2
    // out out_intel_reserved_ffwd_42_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_45_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback45_loopback324 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_42_0(i_spec_select420_loopback203_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg175_q),
        .out_intel_reserved_ffwd_42_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback45_loopback324_out_intel_reserved_ffwd_42_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_34_regfree_osync_x(GPOUT,644)
    assign out_intel_reserved_ffwd_42_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback45_loopback324_out_intel_reserved_ffwd_42_0;

    // valid_fanout_reg176(REG,862)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg176_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg176_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg89(REG,775)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg89_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg89_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg90(REG,776)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg90_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg90_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_32_0_push62_loopback207(BLACKBOX,403)@2
    // out out_feedback_out_62@20000000
    // out out_feedback_valid_out_62@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_32_0_push62_0 thei_llvm_fpga_push_i16_out_sroa_32_0_push62_loopback207 (
        .in_data_in(i_spec_select421_loopback206_q),
        .in_feedback_stall_in_62(i_llvm_fpga_pop_i16_out_sroa_32_0_pop62_loopback205_out_feedback_stall_out_62),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg90_q),
        .out_data_out(),
        .out_feedback_out_62(i_llvm_fpga_push_i16_out_sroa_32_0_push62_loopback207_out_feedback_out_62),
        .out_feedback_valid_out_62(i_llvm_fpga_push_i16_out_sroa_32_0_push62_loopback207_out_feedback_valid_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_32_0_pop62_loopback205(BLACKBOX,335)@2
    // out out_feedback_stall_out_62@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_32_0_pop62_0 thei_llvm_fpga_pop_i16_out_sroa_32_0_pop62_loopback205 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_62(i_llvm_fpga_push_i16_out_sroa_32_0_push62_loopback207_out_feedback_out_62),
        .in_feedback_valid_in_62(i_llvm_fpga_push_i16_out_sroa_32_0_push62_loopback207_out_feedback_valid_out_62),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg89_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_32_0_pop62_loopback205_out_data_out),
        .out_feedback_stall_out_62(i_llvm_fpga_pop_i16_out_sroa_32_0_pop62_loopback205_out_feedback_stall_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select421_loopback206(MUX,479)@2
    assign i_spec_select421_loopback206_s = i_unnamed_loopback57_q;
    always @(i_spec_select421_loopback206_s or i_llvm_fpga_pop_i16_out_sroa_32_0_pop62_loopback205_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select421_loopback206_s)
            1'b0 : i_spec_select421_loopback206_q = i_llvm_fpga_pop_i16_out_sroa_32_0_pop62_loopback205_out_data_out;
            1'b1 : i_spec_select421_loopback206_q = c_i16_0589_q;
            default : i_spec_select421_loopback206_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback46_loopback325(BLACKBOX,266)@2
    // out out_intel_reserved_ffwd_43_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_46_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback46_loopback325 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_43_0(i_spec_select421_loopback206_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg176_q),
        .out_intel_reserved_ffwd_43_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback46_loopback325_out_intel_reserved_ffwd_43_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_35_regfree_osync_x(GPOUT,645)
    assign out_intel_reserved_ffwd_43_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback46_loopback325_out_intel_reserved_ffwd_43_0;

    // valid_fanout_reg177(REG,863)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg177_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg177_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg91(REG,777)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg91_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg91_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg92(REG,778)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg92_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg92_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_35_0_push61_loopback210(BLACKBOX,404)@2
    // out out_feedback_out_61@20000000
    // out out_feedback_valid_out_61@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_35_0_push61_0 thei_llvm_fpga_push_i16_out_sroa_35_0_push61_loopback210 (
        .in_data_in(i_spec_select422_loopback209_q),
        .in_feedback_stall_in_61(i_llvm_fpga_pop_i16_out_sroa_35_0_pop61_loopback208_out_feedback_stall_out_61),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg92_q),
        .out_data_out(),
        .out_feedback_out_61(i_llvm_fpga_push_i16_out_sroa_35_0_push61_loopback210_out_feedback_out_61),
        .out_feedback_valid_out_61(i_llvm_fpga_push_i16_out_sroa_35_0_push61_loopback210_out_feedback_valid_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_35_0_pop61_loopback208(BLACKBOX,336)@2
    // out out_feedback_stall_out_61@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_35_0_pop61_0 thei_llvm_fpga_pop_i16_out_sroa_35_0_pop61_loopback208 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_61(i_llvm_fpga_push_i16_out_sroa_35_0_push61_loopback210_out_feedback_out_61),
        .in_feedback_valid_in_61(i_llvm_fpga_push_i16_out_sroa_35_0_push61_loopback210_out_feedback_valid_out_61),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg91_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_35_0_pop61_loopback208_out_data_out),
        .out_feedback_stall_out_61(i_llvm_fpga_pop_i16_out_sroa_35_0_pop61_loopback208_out_feedback_stall_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select422_loopback209(MUX,480)@2
    assign i_spec_select422_loopback209_s = i_unnamed_loopback55_q;
    always @(i_spec_select422_loopback209_s or i_llvm_fpga_pop_i16_out_sroa_35_0_pop61_loopback208_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select422_loopback209_s)
            1'b0 : i_spec_select422_loopback209_q = i_llvm_fpga_pop_i16_out_sroa_35_0_pop61_loopback208_out_data_out;
            1'b1 : i_spec_select422_loopback209_q = c_i16_0589_q;
            default : i_spec_select422_loopback209_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback47_loopback326(BLACKBOX,267)@2
    // out out_intel_reserved_ffwd_44_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_47_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback47_loopback326 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_44_0(i_spec_select422_loopback209_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg177_q),
        .out_intel_reserved_ffwd_44_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback47_loopback326_out_intel_reserved_ffwd_44_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_36_regfree_osync_x(GPOUT,646)
    assign out_intel_reserved_ffwd_44_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback47_loopback326_out_intel_reserved_ffwd_44_0;

    // valid_fanout_reg178(REG,864)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg178_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg178_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg93(REG,779)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg93_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg93_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg94(REG,780)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg94_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg94_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_38_0_push60_loopback213(BLACKBOX,405)@2
    // out out_feedback_out_60@20000000
    // out out_feedback_valid_out_60@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_38_0_push60_0 thei_llvm_fpga_push_i16_out_sroa_38_0_push60_loopback213 (
        .in_data_in(i_spec_select423_loopback212_q),
        .in_feedback_stall_in_60(i_llvm_fpga_pop_i16_out_sroa_38_0_pop60_loopback211_out_feedback_stall_out_60),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg94_q),
        .out_data_out(),
        .out_feedback_out_60(i_llvm_fpga_push_i16_out_sroa_38_0_push60_loopback213_out_feedback_out_60),
        .out_feedback_valid_out_60(i_llvm_fpga_push_i16_out_sroa_38_0_push60_loopback213_out_feedback_valid_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_38_0_pop60_loopback211(BLACKBOX,337)@2
    // out out_feedback_stall_out_60@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_38_0_pop60_0 thei_llvm_fpga_pop_i16_out_sroa_38_0_pop60_loopback211 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_60(i_llvm_fpga_push_i16_out_sroa_38_0_push60_loopback213_out_feedback_out_60),
        .in_feedback_valid_in_60(i_llvm_fpga_push_i16_out_sroa_38_0_push60_loopback213_out_feedback_valid_out_60),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg93_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_38_0_pop60_loopback211_out_data_out),
        .out_feedback_stall_out_60(i_llvm_fpga_pop_i16_out_sroa_38_0_pop60_loopback211_out_feedback_stall_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select423_loopback212(MUX,481)@2
    assign i_spec_select423_loopback212_s = i_unnamed_loopback53_q;
    always @(i_spec_select423_loopback212_s or i_llvm_fpga_pop_i16_out_sroa_38_0_pop60_loopback211_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select423_loopback212_s)
            1'b0 : i_spec_select423_loopback212_q = i_llvm_fpga_pop_i16_out_sroa_38_0_pop60_loopback211_out_data_out;
            1'b1 : i_spec_select423_loopback212_q = c_i16_0589_q;
            default : i_spec_select423_loopback212_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback48_loopback327(BLACKBOX,268)@2
    // out out_intel_reserved_ffwd_45_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_48_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback48_loopback327 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_45_0(i_spec_select423_loopback212_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg178_q),
        .out_intel_reserved_ffwd_45_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback48_loopback327_out_intel_reserved_ffwd_45_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_37_regfree_osync_x(GPOUT,647)
    assign out_intel_reserved_ffwd_45_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback48_loopback327_out_intel_reserved_ffwd_45_0;

    // valid_fanout_reg179(REG,865)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg179_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg179_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg95(REG,781)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg95_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg95_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg96(REG,782)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg96_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg96_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_41_0_push59_loopback216(BLACKBOX,406)@2
    // out out_feedback_out_59@20000000
    // out out_feedback_valid_out_59@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_41_0_push59_0 thei_llvm_fpga_push_i16_out_sroa_41_0_push59_loopback216 (
        .in_data_in(i_spec_select424_loopback215_q),
        .in_feedback_stall_in_59(i_llvm_fpga_pop_i16_out_sroa_41_0_pop59_loopback214_out_feedback_stall_out_59),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg96_q),
        .out_data_out(),
        .out_feedback_out_59(i_llvm_fpga_push_i16_out_sroa_41_0_push59_loopback216_out_feedback_out_59),
        .out_feedback_valid_out_59(i_llvm_fpga_push_i16_out_sroa_41_0_push59_loopback216_out_feedback_valid_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_41_0_pop59_loopback214(BLACKBOX,338)@2
    // out out_feedback_stall_out_59@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_41_0_pop59_0 thei_llvm_fpga_pop_i16_out_sroa_41_0_pop59_loopback214 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_59(i_llvm_fpga_push_i16_out_sroa_41_0_push59_loopback216_out_feedback_out_59),
        .in_feedback_valid_in_59(i_llvm_fpga_push_i16_out_sroa_41_0_push59_loopback216_out_feedback_valid_out_59),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg95_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_41_0_pop59_loopback214_out_data_out),
        .out_feedback_stall_out_59(i_llvm_fpga_pop_i16_out_sroa_41_0_pop59_loopback214_out_feedback_stall_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select424_loopback215(MUX,482)@2
    assign i_spec_select424_loopback215_s = i_unnamed_loopback51_q;
    always @(i_spec_select424_loopback215_s or i_llvm_fpga_pop_i16_out_sroa_41_0_pop59_loopback214_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select424_loopback215_s)
            1'b0 : i_spec_select424_loopback215_q = i_llvm_fpga_pop_i16_out_sroa_41_0_pop59_loopback214_out_data_out;
            1'b1 : i_spec_select424_loopback215_q = c_i16_0589_q;
            default : i_spec_select424_loopback215_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback49_loopback328(BLACKBOX,269)@2
    // out out_intel_reserved_ffwd_46_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_49_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback49_loopback328 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_46_0(i_spec_select424_loopback215_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg179_q),
        .out_intel_reserved_ffwd_46_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback49_loopback328_out_intel_reserved_ffwd_46_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_38_regfree_osync_x(GPOUT,648)
    assign out_intel_reserved_ffwd_46_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback49_loopback328_out_intel_reserved_ffwd_46_0;

    // valid_fanout_reg180(REG,866)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg180_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg180_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg97(REG,783)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg97_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg97_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg98(REG,784)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg98_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg98_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_44_0_push58_loopback219(BLACKBOX,407)@2
    // out out_feedback_out_58@20000000
    // out out_feedback_valid_out_58@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_44_0_push58_0 thei_llvm_fpga_push_i16_out_sroa_44_0_push58_loopback219 (
        .in_data_in(i_spec_select425_loopback218_q),
        .in_feedback_stall_in_58(i_llvm_fpga_pop_i16_out_sroa_44_0_pop58_loopback217_out_feedback_stall_out_58),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg98_q),
        .out_data_out(),
        .out_feedback_out_58(i_llvm_fpga_push_i16_out_sroa_44_0_push58_loopback219_out_feedback_out_58),
        .out_feedback_valid_out_58(i_llvm_fpga_push_i16_out_sroa_44_0_push58_loopback219_out_feedback_valid_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_44_0_pop58_loopback217(BLACKBOX,339)@2
    // out out_feedback_stall_out_58@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_44_0_pop58_0 thei_llvm_fpga_pop_i16_out_sroa_44_0_pop58_loopback217 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_58(i_llvm_fpga_push_i16_out_sroa_44_0_push58_loopback219_out_feedback_out_58),
        .in_feedback_valid_in_58(i_llvm_fpga_push_i16_out_sroa_44_0_push58_loopback219_out_feedback_valid_out_58),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg97_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_44_0_pop58_loopback217_out_data_out),
        .out_feedback_stall_out_58(i_llvm_fpga_pop_i16_out_sroa_44_0_pop58_loopback217_out_feedback_stall_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select425_loopback218(MUX,483)@2
    assign i_spec_select425_loopback218_s = i_unnamed_loopback49_q;
    always @(i_spec_select425_loopback218_s or i_llvm_fpga_pop_i16_out_sroa_44_0_pop58_loopback217_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select425_loopback218_s)
            1'b0 : i_spec_select425_loopback218_q = i_llvm_fpga_pop_i16_out_sroa_44_0_pop58_loopback217_out_data_out;
            1'b1 : i_spec_select425_loopback218_q = c_i16_0589_q;
            default : i_spec_select425_loopback218_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback50_loopback329(BLACKBOX,271)@2
    // out out_intel_reserved_ffwd_47_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_50_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback50_loopback329 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_47_0(i_spec_select425_loopback218_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg180_q),
        .out_intel_reserved_ffwd_47_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback50_loopback329_out_intel_reserved_ffwd_47_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_39_regfree_osync_x(GPOUT,649)
    assign out_intel_reserved_ffwd_47_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback50_loopback329_out_intel_reserved_ffwd_47_0;

    // valid_fanout_reg181(REG,867)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg181_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg181_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg99(REG,785)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg99_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg99_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg100(REG,786)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg100_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg100_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_47_0_push57_loopback222(BLACKBOX,408)@2
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_47_0_push57_0 thei_llvm_fpga_push_i16_out_sroa_47_0_push57_loopback222 (
        .in_data_in(i_spec_select426_loopback221_q),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_i16_out_sroa_47_0_pop57_loopback220_out_feedback_stall_out_57),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg100_q),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_i16_out_sroa_47_0_push57_loopback222_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_i16_out_sroa_47_0_push57_loopback222_out_feedback_valid_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_47_0_pop57_loopback220(BLACKBOX,340)@2
    // out out_feedback_stall_out_57@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_47_0_pop57_0 thei_llvm_fpga_pop_i16_out_sroa_47_0_pop57_loopback220 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_57(i_llvm_fpga_push_i16_out_sroa_47_0_push57_loopback222_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_i16_out_sroa_47_0_push57_loopback222_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg99_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_47_0_pop57_loopback220_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_i16_out_sroa_47_0_pop57_loopback220_out_feedback_stall_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select426_loopback221(MUX,484)@2
    assign i_spec_select426_loopback221_s = i_unnamed_loopback47_q;
    always @(i_spec_select426_loopback221_s or i_llvm_fpga_pop_i16_out_sroa_47_0_pop57_loopback220_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select426_loopback221_s)
            1'b0 : i_spec_select426_loopback221_q = i_llvm_fpga_pop_i16_out_sroa_47_0_pop57_loopback220_out_data_out;
            1'b1 : i_spec_select426_loopback221_q = c_i16_0589_q;
            default : i_spec_select426_loopback221_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback51_loopback330(BLACKBOX,272)@2
    // out out_intel_reserved_ffwd_48_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_51_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback51_loopback330 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_48_0(i_spec_select426_loopback221_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg181_q),
        .out_intel_reserved_ffwd_48_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback51_loopback330_out_intel_reserved_ffwd_48_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_40_regfree_osync_x(GPOUT,650)
    assign out_intel_reserved_ffwd_48_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback51_loopback330_out_intel_reserved_ffwd_48_0;

    // valid_fanout_reg182(REG,868)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg182_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg182_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg101(REG,787)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg101_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg101_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg102(REG,788)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg102_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg102_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_50_0_push56_loopback225(BLACKBOX,409)@2
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_50_0_push56_0 thei_llvm_fpga_push_i16_out_sroa_50_0_push56_loopback225 (
        .in_data_in(i_spec_select427_loopback224_q),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_i16_out_sroa_50_0_pop56_loopback223_out_feedback_stall_out_56),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg102_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_i16_out_sroa_50_0_push56_loopback225_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_i16_out_sroa_50_0_push56_loopback225_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_50_0_pop56_loopback223(BLACKBOX,341)@2
    // out out_feedback_stall_out_56@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_50_0_pop56_0 thei_llvm_fpga_pop_i16_out_sroa_50_0_pop56_loopback223 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_56(i_llvm_fpga_push_i16_out_sroa_50_0_push56_loopback225_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_i16_out_sroa_50_0_push56_loopback225_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg101_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_50_0_pop56_loopback223_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_i16_out_sroa_50_0_pop56_loopback223_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select427_loopback224(MUX,485)@2
    assign i_spec_select427_loopback224_s = i_unnamed_loopback45_q;
    always @(i_spec_select427_loopback224_s or i_llvm_fpga_pop_i16_out_sroa_50_0_pop56_loopback223_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select427_loopback224_s)
            1'b0 : i_spec_select427_loopback224_q = i_llvm_fpga_pop_i16_out_sroa_50_0_pop56_loopback223_out_data_out;
            1'b1 : i_spec_select427_loopback224_q = c_i16_0589_q;
            default : i_spec_select427_loopback224_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback52_loopback331(BLACKBOX,273)@2
    // out out_intel_reserved_ffwd_49_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_52_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback52_loopback331 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_49_0(i_spec_select427_loopback224_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg182_q),
        .out_intel_reserved_ffwd_49_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback52_loopback331_out_intel_reserved_ffwd_49_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_41_regfree_osync_x(GPOUT,651)
    assign out_intel_reserved_ffwd_49_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback52_loopback331_out_intel_reserved_ffwd_49_0;

    // valid_fanout_reg137(REG,823)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg137_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg137_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg11(REG,697)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,698)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_8_0_push37_loopback90(BLACKBOX,394)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_8_0_push37_0 thei_llvm_fpga_push_i16_a_sroa_8_0_push37_loopback90 (
        .in_data_in(i_spec_select383_loopback89_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i16_a_sroa_8_0_pop37_loopback88_out_feedback_stall_out_37),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i16_a_sroa_8_0_push37_loopback90_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i16_a_sroa_8_0_push37_loopback90_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_8_0_pop37_loopback88(BLACKBOX,326)@2
    // out out_feedback_stall_out_37@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_8_0_pop37_0 thei_llvm_fpga_pop_i16_a_sroa_8_0_pop37_loopback88 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i16_a_sroa_8_0_push37_loopback90_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i16_a_sroa_8_0_push37_loopback90_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_8_0_pop37_loopback88_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i16_a_sroa_8_0_pop37_loopback88_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select383_loopback89(MUX,441)@2
    assign i_spec_select383_loopback89_s = i_unnamed_loopback71_q;
    always @(i_spec_select383_loopback89_s or i_llvm_fpga_pop_i16_a_sroa_8_0_pop37_loopback88_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select383_loopback89_s)
            1'b0 : i_spec_select383_loopback89_q = i_llvm_fpga_pop_i16_a_sroa_8_0_pop37_loopback88_out_data_out;
            1'b1 : i_spec_select383_loopback89_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select383_loopback89_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback7_loopback286(BLACKBOX,291)@2
    // out out_intel_reserved_ffwd_4_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_7_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback7_loopback286 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_4_0(i_spec_select383_loopback89_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg137_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback7_loopback286_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_42_regfree_osync_x(GPOUT,652)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback7_loopback286_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg183(REG,869)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg183_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg183_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg103(REG,789)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg103_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg103_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg104(REG,790)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg104_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg104_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_53_0_push55_loopback228(BLACKBOX,410)@2
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_53_0_push55_0 thei_llvm_fpga_push_i16_out_sroa_53_0_push55_loopback228 (
        .in_data_in(i_spec_select428_loopback227_q),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_i16_out_sroa_53_0_pop55_loopback226_out_feedback_stall_out_55),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg104_q),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_i16_out_sroa_53_0_push55_loopback228_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_i16_out_sroa_53_0_push55_loopback228_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_53_0_pop55_loopback226(BLACKBOX,342)@2
    // out out_feedback_stall_out_55@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_53_0_pop55_0 thei_llvm_fpga_pop_i16_out_sroa_53_0_pop55_loopback226 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_55(i_llvm_fpga_push_i16_out_sroa_53_0_push55_loopback228_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_i16_out_sroa_53_0_push55_loopback228_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg103_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_53_0_pop55_loopback226_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_i16_out_sroa_53_0_pop55_loopback226_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select428_loopback227(MUX,486)@2
    assign i_spec_select428_loopback227_s = i_unnamed_loopback43_q;
    always @(i_spec_select428_loopback227_s or i_llvm_fpga_pop_i16_out_sroa_53_0_pop55_loopback226_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select428_loopback227_s)
            1'b0 : i_spec_select428_loopback227_q = i_llvm_fpga_pop_i16_out_sroa_53_0_pop55_loopback226_out_data_out;
            1'b1 : i_spec_select428_loopback227_q = c_i16_0589_q;
            default : i_spec_select428_loopback227_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback53_loopback332(BLACKBOX,274)@2
    // out out_intel_reserved_ffwd_50_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_53_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback53_loopback332 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_50_0(i_spec_select428_loopback227_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg183_q),
        .out_intel_reserved_ffwd_50_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback53_loopback332_out_intel_reserved_ffwd_50_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_43_regfree_osync_x(GPOUT,653)
    assign out_intel_reserved_ffwd_50_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback53_loopback332_out_intel_reserved_ffwd_50_0;

    // valid_fanout_reg184(REG,870)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg184_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg184_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg105(REG,791)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg105_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg105_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg106(REG,792)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg106_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg106_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_56_0_push54_loopback231(BLACKBOX,411)@2
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_56_0_push54_0 thei_llvm_fpga_push_i16_out_sroa_56_0_push54_loopback231 (
        .in_data_in(i_spec_select429_loopback230_q),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_i16_out_sroa_56_0_pop54_loopback229_out_feedback_stall_out_54),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg106_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_i16_out_sroa_56_0_push54_loopback231_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_i16_out_sroa_56_0_push54_loopback231_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_56_0_pop54_loopback229(BLACKBOX,343)@2
    // out out_feedback_stall_out_54@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_56_0_pop54_0 thei_llvm_fpga_pop_i16_out_sroa_56_0_pop54_loopback229 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_54(i_llvm_fpga_push_i16_out_sroa_56_0_push54_loopback231_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_i16_out_sroa_56_0_push54_loopback231_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg105_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_56_0_pop54_loopback229_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_i16_out_sroa_56_0_pop54_loopback229_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select429_loopback230(MUX,487)@2
    assign i_spec_select429_loopback230_s = i_unnamed_loopback41_q;
    always @(i_spec_select429_loopback230_s or i_llvm_fpga_pop_i16_out_sroa_56_0_pop54_loopback229_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select429_loopback230_s)
            1'b0 : i_spec_select429_loopback230_q = i_llvm_fpga_pop_i16_out_sroa_56_0_pop54_loopback229_out_data_out;
            1'b1 : i_spec_select429_loopback230_q = c_i16_0589_q;
            default : i_spec_select429_loopback230_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback54_loopback333(BLACKBOX,275)@2
    // out out_intel_reserved_ffwd_51_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_54_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback54_loopback333 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_51_0(i_spec_select429_loopback230_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg184_q),
        .out_intel_reserved_ffwd_51_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback54_loopback333_out_intel_reserved_ffwd_51_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_44_regfree_osync_x(GPOUT,654)
    assign out_intel_reserved_ffwd_51_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback54_loopback333_out_intel_reserved_ffwd_51_0;

    // valid_fanout_reg185(REG,871)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg185_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg185_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg107(REG,793)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg107_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg107_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg108(REG,794)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg108_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg108_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_59_0_push53_loopback234(BLACKBOX,412)@2
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_59_0_push53_0 thei_llvm_fpga_push_i16_out_sroa_59_0_push53_loopback234 (
        .in_data_in(i_spec_select430_loopback233_q),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i16_out_sroa_59_0_pop53_loopback232_out_feedback_stall_out_53),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg108_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i16_out_sroa_59_0_push53_loopback234_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i16_out_sroa_59_0_push53_loopback234_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_59_0_pop53_loopback232(BLACKBOX,344)@2
    // out out_feedback_stall_out_53@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_59_0_pop53_0 thei_llvm_fpga_pop_i16_out_sroa_59_0_pop53_loopback232 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_53(i_llvm_fpga_push_i16_out_sroa_59_0_push53_loopback234_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i16_out_sroa_59_0_push53_loopback234_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg107_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_59_0_pop53_loopback232_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i16_out_sroa_59_0_pop53_loopback232_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select430_loopback233(MUX,488)@2
    assign i_spec_select430_loopback233_s = i_unnamed_loopback39_q;
    always @(i_spec_select430_loopback233_s or i_llvm_fpga_pop_i16_out_sroa_59_0_pop53_loopback232_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select430_loopback233_s)
            1'b0 : i_spec_select430_loopback233_q = i_llvm_fpga_pop_i16_out_sroa_59_0_pop53_loopback232_out_data_out;
            1'b1 : i_spec_select430_loopback233_q = c_i16_0589_q;
            default : i_spec_select430_loopback233_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback55_loopback334(BLACKBOX,276)@2
    // out out_intel_reserved_ffwd_52_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_55_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback55_loopback334 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_52_0(i_spec_select430_loopback233_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg185_q),
        .out_intel_reserved_ffwd_52_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback55_loopback334_out_intel_reserved_ffwd_52_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_45_regfree_osync_x(GPOUT,655)
    assign out_intel_reserved_ffwd_52_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback55_loopback334_out_intel_reserved_ffwd_52_0;

    // valid_fanout_reg186(REG,872)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg186_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg186_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg109(REG,795)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg109_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg109_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg110(REG,796)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg110_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg110_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_62_0_push52_loopback237(BLACKBOX,414)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_62_0_push52_0 thei_llvm_fpga_push_i16_out_sroa_62_0_push52_loopback237 (
        .in_data_in(i_spec_select431_loopback236_q),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i16_out_sroa_62_0_pop52_loopback235_out_feedback_stall_out_52),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg110_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i16_out_sroa_62_0_push52_loopback237_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i16_out_sroa_62_0_push52_loopback237_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_62_0_pop52_loopback235(BLACKBOX,346)@2
    // out out_feedback_stall_out_52@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_62_0_pop52_0 thei_llvm_fpga_pop_i16_out_sroa_62_0_pop52_loopback235 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_52(i_llvm_fpga_push_i16_out_sroa_62_0_push52_loopback237_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i16_out_sroa_62_0_push52_loopback237_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg109_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_62_0_pop52_loopback235_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i16_out_sroa_62_0_pop52_loopback235_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select431_loopback236(MUX,489)@2
    assign i_spec_select431_loopback236_s = i_unnamed_loopback37_q;
    always @(i_spec_select431_loopback236_s or i_llvm_fpga_pop_i16_out_sroa_62_0_pop52_loopback235_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select431_loopback236_s)
            1'b0 : i_spec_select431_loopback236_q = i_llvm_fpga_pop_i16_out_sroa_62_0_pop52_loopback235_out_data_out;
            1'b1 : i_spec_select431_loopback236_q = c_i16_0589_q;
            default : i_spec_select431_loopback236_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback56_loopback335(BLACKBOX,277)@2
    // out out_intel_reserved_ffwd_53_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_56_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback56_loopback335 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_53_0(i_spec_select431_loopback236_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg186_q),
        .out_intel_reserved_ffwd_53_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback56_loopback335_out_intel_reserved_ffwd_53_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_46_regfree_osync_x(GPOUT,656)
    assign out_intel_reserved_ffwd_53_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback56_loopback335_out_intel_reserved_ffwd_53_0;

    // valid_fanout_reg187(REG,873)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg187_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg187_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg111(REG,797)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg111_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg111_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg112(REG,798)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg112_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg112_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_65_0_push51_loopback240(BLACKBOX,415)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_65_0_push51_0 thei_llvm_fpga_push_i16_out_sroa_65_0_push51_loopback240 (
        .in_data_in(i_spec_select432_loopback239_q),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i16_out_sroa_65_0_pop51_loopback238_out_feedback_stall_out_51),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg112_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i16_out_sroa_65_0_push51_loopback240_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i16_out_sroa_65_0_push51_loopback240_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_65_0_pop51_loopback238(BLACKBOX,347)@2
    // out out_feedback_stall_out_51@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_65_0_pop51_0 thei_llvm_fpga_pop_i16_out_sroa_65_0_pop51_loopback238 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i16_out_sroa_65_0_push51_loopback240_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i16_out_sroa_65_0_push51_loopback240_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg111_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_65_0_pop51_loopback238_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i16_out_sroa_65_0_pop51_loopback238_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select432_loopback239(MUX,490)@2
    assign i_spec_select432_loopback239_s = i_unnamed_loopback35_q;
    always @(i_spec_select432_loopback239_s or i_llvm_fpga_pop_i16_out_sroa_65_0_pop51_loopback238_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select432_loopback239_s)
            1'b0 : i_spec_select432_loopback239_q = i_llvm_fpga_pop_i16_out_sroa_65_0_pop51_loopback238_out_data_out;
            1'b1 : i_spec_select432_loopback239_q = c_i16_0589_q;
            default : i_spec_select432_loopback239_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback57_loopback336(BLACKBOX,278)@2
    // out out_intel_reserved_ffwd_54_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_57_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback57_loopback336 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_54_0(i_spec_select432_loopback239_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg187_q),
        .out_intel_reserved_ffwd_54_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback57_loopback336_out_intel_reserved_ffwd_54_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_47_regfree_osync_x(GPOUT,657)
    assign out_intel_reserved_ffwd_54_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback57_loopback336_out_intel_reserved_ffwd_54_0;

    // valid_fanout_reg188(REG,874)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg188_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg188_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg113(REG,799)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg113_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg113_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg114(REG,800)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg114_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg114_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_68_0_push50_loopback243(BLACKBOX,416)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_68_0_push50_0 thei_llvm_fpga_push_i16_out_sroa_68_0_push50_loopback243 (
        .in_data_in(i_spec_select433_loopback242_q),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i16_out_sroa_68_0_pop50_loopback241_out_feedback_stall_out_50),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg114_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i16_out_sroa_68_0_push50_loopback243_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i16_out_sroa_68_0_push50_loopback243_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_68_0_pop50_loopback241(BLACKBOX,348)@2
    // out out_feedback_stall_out_50@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_68_0_pop50_0 thei_llvm_fpga_pop_i16_out_sroa_68_0_pop50_loopback241 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i16_out_sroa_68_0_push50_loopback243_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i16_out_sroa_68_0_push50_loopback243_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg113_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_68_0_pop50_loopback241_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i16_out_sroa_68_0_pop50_loopback241_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select433_loopback242(MUX,491)@2
    assign i_spec_select433_loopback242_s = i_unnamed_loopback33_q;
    always @(i_spec_select433_loopback242_s or i_llvm_fpga_pop_i16_out_sroa_68_0_pop50_loopback241_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select433_loopback242_s)
            1'b0 : i_spec_select433_loopback242_q = i_llvm_fpga_pop_i16_out_sroa_68_0_pop50_loopback241_out_data_out;
            1'b1 : i_spec_select433_loopback242_q = c_i16_0589_q;
            default : i_spec_select433_loopback242_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback58_loopback337(BLACKBOX,279)@2
    // out out_intel_reserved_ffwd_55_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_58_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback58_loopback337 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_55_0(i_spec_select433_loopback242_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg188_q),
        .out_intel_reserved_ffwd_55_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback58_loopback337_out_intel_reserved_ffwd_55_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_48_regfree_osync_x(GPOUT,658)
    assign out_intel_reserved_ffwd_55_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback58_loopback337_out_intel_reserved_ffwd_55_0;

    // valid_fanout_reg189(REG,875)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg189_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg189_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg115(REG,801)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg115_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg115_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg116(REG,802)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg116_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg116_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_71_0_push49_loopback246(BLACKBOX,417)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_71_0_push49_0 thei_llvm_fpga_push_i16_out_sroa_71_0_push49_loopback246 (
        .in_data_in(i_spec_select434_loopback245_q),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i16_out_sroa_71_0_pop49_loopback244_out_feedback_stall_out_49),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg116_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i16_out_sroa_71_0_push49_loopback246_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i16_out_sroa_71_0_push49_loopback246_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_71_0_pop49_loopback244(BLACKBOX,349)@2
    // out out_feedback_stall_out_49@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_71_0_pop49_0 thei_llvm_fpga_pop_i16_out_sroa_71_0_pop49_loopback244 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_i16_out_sroa_71_0_push49_loopback246_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i16_out_sroa_71_0_push49_loopback246_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg115_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_71_0_pop49_loopback244_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i16_out_sroa_71_0_pop49_loopback244_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select434_loopback245(MUX,492)@2
    assign i_spec_select434_loopback245_s = i_unnamed_loopback31_q;
    always @(i_spec_select434_loopback245_s or i_llvm_fpga_pop_i16_out_sroa_71_0_pop49_loopback244_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select434_loopback245_s)
            1'b0 : i_spec_select434_loopback245_q = i_llvm_fpga_pop_i16_out_sroa_71_0_pop49_loopback244_out_data_out;
            1'b1 : i_spec_select434_loopback245_q = c_i16_0589_q;
            default : i_spec_select434_loopback245_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback59_loopback338(BLACKBOX,280)@2
    // out out_intel_reserved_ffwd_56_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_59_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback59_loopback338 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_56_0(i_spec_select434_loopback245_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg189_q),
        .out_intel_reserved_ffwd_56_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback59_loopback338_out_intel_reserved_ffwd_56_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_49_regfree_osync_x(GPOUT,659)
    assign out_intel_reserved_ffwd_56_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback59_loopback338_out_intel_reserved_ffwd_56_0;

    // valid_fanout_reg190(REG,876)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg190_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg190_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg117(REG,803)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg117_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg117_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg118(REG,804)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg118_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg118_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_74_0_push48_loopback249(BLACKBOX,418)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_74_0_push48_0 thei_llvm_fpga_push_i16_out_sroa_74_0_push48_loopback249 (
        .in_data_in(i_spec_select435_loopback248_q),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i16_out_sroa_74_0_pop48_loopback247_out_feedback_stall_out_48),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg118_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i16_out_sroa_74_0_push48_loopback249_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i16_out_sroa_74_0_push48_loopback249_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_74_0_pop48_loopback247(BLACKBOX,350)@2
    // out out_feedback_stall_out_48@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_74_0_pop48_0 thei_llvm_fpga_pop_i16_out_sroa_74_0_pop48_loopback247 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i16_out_sroa_74_0_push48_loopback249_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i16_out_sroa_74_0_push48_loopback249_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg117_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_74_0_pop48_loopback247_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i16_out_sroa_74_0_pop48_loopback247_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select435_loopback248(MUX,493)@2
    assign i_spec_select435_loopback248_s = i_unnamed_loopback29_q;
    always @(i_spec_select435_loopback248_s or i_llvm_fpga_pop_i16_out_sroa_74_0_pop48_loopback247_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select435_loopback248_s)
            1'b0 : i_spec_select435_loopback248_q = i_llvm_fpga_pop_i16_out_sroa_74_0_pop48_loopback247_out_data_out;
            1'b1 : i_spec_select435_loopback248_q = c_i16_0589_q;
            default : i_spec_select435_loopback248_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback60_loopback339(BLACKBOX,282)@2
    // out out_intel_reserved_ffwd_57_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_60_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback60_loopback339 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_57_0(i_spec_select435_loopback248_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg190_q),
        .out_intel_reserved_ffwd_57_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback60_loopback339_out_intel_reserved_ffwd_57_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_50_regfree_osync_x(GPOUT,660)
    assign out_intel_reserved_ffwd_57_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback60_loopback339_out_intel_reserved_ffwd_57_0;

    // valid_fanout_reg191(REG,877)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg191_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg191_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg119(REG,805)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg119_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg119_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg120(REG,806)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg120_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg120_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_77_0_push47_loopback252(BLACKBOX,419)@2
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_77_0_push47_0 thei_llvm_fpga_push_i16_out_sroa_77_0_push47_loopback252 (
        .in_data_in(i_spec_select436_loopback251_q),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i16_out_sroa_77_0_pop47_loopback250_out_feedback_stall_out_47),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg120_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i16_out_sroa_77_0_push47_loopback252_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i16_out_sroa_77_0_push47_loopback252_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_77_0_pop47_loopback250(BLACKBOX,351)@2
    // out out_feedback_stall_out_47@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_77_0_pop47_0 thei_llvm_fpga_pop_i16_out_sroa_77_0_pop47_loopback250 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_i16_out_sroa_77_0_push47_loopback252_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i16_out_sroa_77_0_push47_loopback252_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg119_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_77_0_pop47_loopback250_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i16_out_sroa_77_0_pop47_loopback250_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select436_loopback251(MUX,494)@2
    assign i_spec_select436_loopback251_s = i_unnamed_loopback27_q;
    always @(i_spec_select436_loopback251_s or i_llvm_fpga_pop_i16_out_sroa_77_0_pop47_loopback250_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select436_loopback251_s)
            1'b0 : i_spec_select436_loopback251_q = i_llvm_fpga_pop_i16_out_sroa_77_0_pop47_loopback250_out_data_out;
            1'b1 : i_spec_select436_loopback251_q = c_i16_0589_q;
            default : i_spec_select436_loopback251_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback61_loopback340(BLACKBOX,283)@2
    // out out_intel_reserved_ffwd_58_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_61_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback61_loopback340 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_58_0(i_spec_select436_loopback251_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg191_q),
        .out_intel_reserved_ffwd_58_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback61_loopback340_out_intel_reserved_ffwd_58_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_51_regfree_osync_x(GPOUT,661)
    assign out_intel_reserved_ffwd_58_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback61_loopback340_out_intel_reserved_ffwd_58_0;

    // valid_fanout_reg192(REG,878)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg192_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg192_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg121(REG,807)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg121_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg121_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg122(REG,808)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg122_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg122_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_80_0_push46_loopback255(BLACKBOX,420)@2
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_80_0_push46_0 thei_llvm_fpga_push_i16_out_sroa_80_0_push46_loopback255 (
        .in_data_in(i_spec_select437_loopback254_q),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i16_out_sroa_80_0_pop46_loopback253_out_feedback_stall_out_46),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg122_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i16_out_sroa_80_0_push46_loopback255_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i16_out_sroa_80_0_push46_loopback255_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_80_0_pop46_loopback253(BLACKBOX,352)@2
    // out out_feedback_stall_out_46@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_80_0_pop46_0 thei_llvm_fpga_pop_i16_out_sroa_80_0_pop46_loopback253 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i16_out_sroa_80_0_push46_loopback255_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i16_out_sroa_80_0_push46_loopback255_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg121_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_80_0_pop46_loopback253_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i16_out_sroa_80_0_pop46_loopback253_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select437_loopback254(MUX,495)@2
    assign i_spec_select437_loopback254_s = i_unnamed_loopback25_q;
    always @(i_spec_select437_loopback254_s or i_llvm_fpga_pop_i16_out_sroa_80_0_pop46_loopback253_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select437_loopback254_s)
            1'b0 : i_spec_select437_loopback254_q = i_llvm_fpga_pop_i16_out_sroa_80_0_pop46_loopback253_out_data_out;
            1'b1 : i_spec_select437_loopback254_q = c_i16_0589_q;
            default : i_spec_select437_loopback254_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback62_loopback341(BLACKBOX,284)@2
    // out out_intel_reserved_ffwd_59_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_62_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback62_loopback341 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_59_0(i_spec_select437_loopback254_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg192_q),
        .out_intel_reserved_ffwd_59_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback62_loopback341_out_intel_reserved_ffwd_59_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_52_regfree_osync_x(GPOUT,662)
    assign out_intel_reserved_ffwd_59_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback62_loopback341_out_intel_reserved_ffwd_59_0;

    // valid_fanout_reg138(REG,824)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg138_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg138_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,699)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg14(REG,700)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_a_sroa_10_0_push36_loopback93(BLACKBOX,364)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_10_0_push36_0 thei_llvm_fpga_push_i16_a_sroa_10_0_push36_loopback93 (
        .in_data_in(i_spec_select384_loopback92_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i16_a_sroa_10_0_pop36_loopback91_out_feedback_stall_out_36),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i16_a_sroa_10_0_push36_loopback93_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i16_a_sroa_10_0_push36_loopback93_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_10_0_pop36_loopback91(BLACKBOX,296)@2
    // out out_feedback_stall_out_36@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_10_0_pop36_0 thei_llvm_fpga_pop_i16_a_sroa_10_0_pop36_loopback91 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i16_a_sroa_10_0_push36_loopback93_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i16_a_sroa_10_0_push36_loopback93_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_10_0_pop36_loopback91_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i16_a_sroa_10_0_pop36_loopback91_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select384_loopback92(MUX,442)@2
    assign i_spec_select384_loopback92_s = i_unnamed_loopback69_q;
    always @(i_spec_select384_loopback92_s or i_llvm_fpga_pop_i16_a_sroa_10_0_pop36_loopback91_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select384_loopback92_s)
            1'b0 : i_spec_select384_loopback92_q = i_llvm_fpga_pop_i16_a_sroa_10_0_pop36_loopback91_out_data_out;
            1'b1 : i_spec_select384_loopback92_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select384_loopback92_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback8_loopback287(BLACKBOX,292)@2
    // out out_intel_reserved_ffwd_5_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_8_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback8_loopback287 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_5_0(i_spec_select384_loopback92_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg138_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback8_loopback287_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_53_regfree_osync_x(GPOUT,663)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback8_loopback287_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg193(REG,879)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg193_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg193_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg123(REG,809)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg123_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg123_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg124(REG,810)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg124_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg124_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_83_0_push45_loopback258(BLACKBOX,421)@2
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_83_0_push45_0 thei_llvm_fpga_push_i16_out_sroa_83_0_push45_loopback258 (
        .in_data_in(i_spec_select438_loopback257_q),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i16_out_sroa_83_0_pop45_loopback256_out_feedback_stall_out_45),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg124_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i16_out_sroa_83_0_push45_loopback258_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i16_out_sroa_83_0_push45_loopback258_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_83_0_pop45_loopback256(BLACKBOX,353)@2
    // out out_feedback_stall_out_45@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_83_0_pop45_0 thei_llvm_fpga_pop_i16_out_sroa_83_0_pop45_loopback256 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_i16_out_sroa_83_0_push45_loopback258_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i16_out_sroa_83_0_push45_loopback258_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg123_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_83_0_pop45_loopback256_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i16_out_sroa_83_0_pop45_loopback256_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select438_loopback257(MUX,496)@2
    assign i_spec_select438_loopback257_s = i_unnamed_loopback23_q;
    always @(i_spec_select438_loopback257_s or i_llvm_fpga_pop_i16_out_sroa_83_0_pop45_loopback256_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select438_loopback257_s)
            1'b0 : i_spec_select438_loopback257_q = i_llvm_fpga_pop_i16_out_sroa_83_0_pop45_loopback256_out_data_out;
            1'b1 : i_spec_select438_loopback257_q = c_i16_0589_q;
            default : i_spec_select438_loopback257_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback63_loopback342(BLACKBOX,285)@2
    // out out_intel_reserved_ffwd_60_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_63_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback63_loopback342 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_60_0(i_spec_select438_loopback257_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg193_q),
        .out_intel_reserved_ffwd_60_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback63_loopback342_out_intel_reserved_ffwd_60_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_54_regfree_osync_x(GPOUT,664)
    assign out_intel_reserved_ffwd_60_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback63_loopback342_out_intel_reserved_ffwd_60_0;

    // valid_fanout_reg194(REG,880)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg194_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg194_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg125(REG,811)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg125_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg125_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg126(REG,812)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg126_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg126_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_86_0_push44_loopback261(BLACKBOX,422)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_86_0_push44_0 thei_llvm_fpga_push_i16_out_sroa_86_0_push44_loopback261 (
        .in_data_in(i_spec_select439_loopback260_q),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i16_out_sroa_86_0_pop44_loopback259_out_feedback_stall_out_44),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg126_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i16_out_sroa_86_0_push44_loopback261_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i16_out_sroa_86_0_push44_loopback261_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_86_0_pop44_loopback259(BLACKBOX,354)@2
    // out out_feedback_stall_out_44@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_86_0_pop44_0 thei_llvm_fpga_pop_i16_out_sroa_86_0_pop44_loopback259 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i16_out_sroa_86_0_push44_loopback261_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i16_out_sroa_86_0_push44_loopback261_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg125_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_86_0_pop44_loopback259_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i16_out_sroa_86_0_pop44_loopback259_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select439_loopback260(MUX,497)@2
    assign i_spec_select439_loopback260_s = i_unnamed_loopback21_q;
    always @(i_spec_select439_loopback260_s or i_llvm_fpga_pop_i16_out_sroa_86_0_pop44_loopback259_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select439_loopback260_s)
            1'b0 : i_spec_select439_loopback260_q = i_llvm_fpga_pop_i16_out_sroa_86_0_pop44_loopback259_out_data_out;
            1'b1 : i_spec_select439_loopback260_q = c_i16_0589_q;
            default : i_spec_select439_loopback260_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback64_loopback343(BLACKBOX,286)@2
    // out out_intel_reserved_ffwd_61_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_64_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback64_loopback343 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_61_0(i_spec_select439_loopback260_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg194_q),
        .out_intel_reserved_ffwd_61_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback64_loopback343_out_intel_reserved_ffwd_61_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_55_regfree_osync_x(GPOUT,665)
    assign out_intel_reserved_ffwd_61_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback64_loopback343_out_intel_reserved_ffwd_61_0;

    // valid_fanout_reg195(REG,881)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg195_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg195_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg127(REG,813)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg127_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg127_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg128(REG,814)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg128_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg128_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_89_0_push43_loopback264(BLACKBOX,423)@2
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_89_0_push43_0 thei_llvm_fpga_push_i16_out_sroa_89_0_push43_loopback264 (
        .in_data_in(i_spec_select440_loopback263_q),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i16_out_sroa_89_0_pop43_loopback262_out_feedback_stall_out_43),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg128_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i16_out_sroa_89_0_push43_loopback264_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i16_out_sroa_89_0_push43_loopback264_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_89_0_pop43_loopback262(BLACKBOX,355)@2
    // out out_feedback_stall_out_43@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_89_0_pop43_0 thei_llvm_fpga_pop_i16_out_sroa_89_0_pop43_loopback262 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_43(i_llvm_fpga_push_i16_out_sroa_89_0_push43_loopback264_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i16_out_sroa_89_0_push43_loopback264_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg127_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_89_0_pop43_loopback262_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i16_out_sroa_89_0_pop43_loopback262_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select440_loopback263(MUX,498)@2
    assign i_spec_select440_loopback263_s = i_unnamed_loopback19_q;
    always @(i_spec_select440_loopback263_s or i_llvm_fpga_pop_i16_out_sroa_89_0_pop43_loopback262_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select440_loopback263_s)
            1'b0 : i_spec_select440_loopback263_q = i_llvm_fpga_pop_i16_out_sroa_89_0_pop43_loopback262_out_data_out;
            1'b1 : i_spec_select440_loopback263_q = c_i16_0589_q;
            default : i_spec_select440_loopback263_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback65_loopback344(BLACKBOX,287)@2
    // out out_intel_reserved_ffwd_62_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_65_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback65_loopback344 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_62_0(i_spec_select440_loopback263_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg195_q),
        .out_intel_reserved_ffwd_62_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback65_loopback344_out_intel_reserved_ffwd_62_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_56_regfree_osync_x(GPOUT,666)
    assign out_intel_reserved_ffwd_62_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback65_loopback344_out_intel_reserved_ffwd_62_0;

    // valid_fanout_reg196(REG,882)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg196_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg196_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg129(REG,815)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg129_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg129_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg130(REG,816)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg130_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg130_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_92_0_push42_loopback267(BLACKBOX,425)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_92_0_push42_0 thei_llvm_fpga_push_i16_out_sroa_92_0_push42_loopback267 (
        .in_data_in(i_spec_select441_loopback266_q),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i16_out_sroa_92_0_pop42_loopback265_out_feedback_stall_out_42),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg130_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i16_out_sroa_92_0_push42_loopback267_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i16_out_sroa_92_0_push42_loopback267_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_92_0_pop42_loopback265(BLACKBOX,357)@2
    // out out_feedback_stall_out_42@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_92_0_pop42_0 thei_llvm_fpga_pop_i16_out_sroa_92_0_pop42_loopback265 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i16_out_sroa_92_0_push42_loopback267_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i16_out_sroa_92_0_push42_loopback267_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg129_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_92_0_pop42_loopback265_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i16_out_sroa_92_0_pop42_loopback265_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select441_loopback266(MUX,499)@2
    assign i_spec_select441_loopback266_s = i_unnamed_loopback17_q;
    always @(i_spec_select441_loopback266_s or i_llvm_fpga_pop_i16_out_sroa_92_0_pop42_loopback265_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select441_loopback266_s)
            1'b0 : i_spec_select441_loopback266_q = i_llvm_fpga_pop_i16_out_sroa_92_0_pop42_loopback265_out_data_out;
            1'b1 : i_spec_select441_loopback266_q = c_i16_0589_q;
            default : i_spec_select441_loopback266_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback66_loopback345(BLACKBOX,288)@2
    // out out_intel_reserved_ffwd_63_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_66_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback66_loopback345 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_63_0(i_spec_select441_loopback266_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg196_q),
        .out_intel_reserved_ffwd_63_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback66_loopback345_out_intel_reserved_ffwd_63_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_57_regfree_osync_x(GPOUT,667)
    assign out_intel_reserved_ffwd_63_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback66_loopback345_out_intel_reserved_ffwd_63_0;

    // valid_fanout_reg197(REG,883)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg197_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg197_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg131(REG,817)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg131_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg131_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg132(REG,818)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg132_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg132_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_95_0_push41_loopback270(BLACKBOX,426)@2
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_95_0_push41_0 thei_llvm_fpga_push_i16_out_sroa_95_0_push41_loopback270 (
        .in_data_in(i_spec_select442_loopback269_q),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i16_out_sroa_95_0_pop41_loopback268_out_feedback_stall_out_41),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg132_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i16_out_sroa_95_0_push41_loopback270_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i16_out_sroa_95_0_push41_loopback270_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_95_0_pop41_loopback268(BLACKBOX,358)@2
    // out out_feedback_stall_out_41@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_95_0_pop41_0 thei_llvm_fpga_pop_i16_out_sroa_95_0_pop41_loopback268 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_41(i_llvm_fpga_push_i16_out_sroa_95_0_push41_loopback270_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i16_out_sroa_95_0_push41_loopback270_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg131_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_95_0_pop41_loopback268_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i16_out_sroa_95_0_pop41_loopback268_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select442_loopback269(MUX,500)@2
    assign i_spec_select442_loopback269_s = i_unnamed_loopback15_q;
    always @(i_spec_select442_loopback269_s or i_llvm_fpga_pop_i16_out_sroa_95_0_pop41_loopback268_out_data_out or c_i16_0589_q)
    begin
        unique case (i_spec_select442_loopback269_s)
            1'b0 : i_spec_select442_loopback269_q = i_llvm_fpga_pop_i16_out_sroa_95_0_pop41_loopback268_out_data_out;
            1'b1 : i_spec_select442_loopback269_q = c_i16_0589_q;
            default : i_spec_select442_loopback269_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback67_loopback346(BLACKBOX,289)@2
    // out out_intel_reserved_ffwd_64_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_67_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback67_loopback346 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_64_0(i_spec_select442_loopback269_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg197_q),
        .out_intel_reserved_ffwd_64_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback67_loopback346_out_intel_reserved_ffwd_64_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_58_regfree_osync_x(GPOUT,668)
    assign out_intel_reserved_ffwd_64_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback67_loopback346_out_intel_reserved_ffwd_64_0;

    // valid_fanout_reg139(REG,825)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg139_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg139_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg15(REG,701)@1 + 1
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

    // valid_fanout_reg16(REG,702)@1 + 1
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

    // i_llvm_fpga_push_i16_a_sroa_12_0_push35_loopback96(BLACKBOX,365)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_12_0_push35_0 thei_llvm_fpga_push_i16_a_sroa_12_0_push35_loopback96 (
        .in_data_in(i_spec_select385_loopback95_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i16_a_sroa_12_0_pop35_loopback94_out_feedback_stall_out_35),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i16_a_sroa_12_0_push35_loopback96_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i16_a_sroa_12_0_push35_loopback96_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_12_0_pop35_loopback94(BLACKBOX,297)@2
    // out out_feedback_stall_out_35@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_12_0_pop35_0 thei_llvm_fpga_pop_i16_a_sroa_12_0_pop35_loopback94 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i16_a_sroa_12_0_push35_loopback96_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i16_a_sroa_12_0_push35_loopback96_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_12_0_pop35_loopback94_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i16_a_sroa_12_0_pop35_loopback94_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select385_loopback95(MUX,443)@2
    assign i_spec_select385_loopback95_s = i_unnamed_loopback67_q;
    always @(i_spec_select385_loopback95_s or i_llvm_fpga_pop_i16_a_sroa_12_0_pop35_loopback94_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select385_loopback95_s)
            1'b0 : i_spec_select385_loopback95_q = i_llvm_fpga_pop_i16_a_sroa_12_0_pop35_loopback94_out_data_out;
            1'b1 : i_spec_select385_loopback95_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select385_loopback95_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback9_loopback288(BLACKBOX,293)@2
    // out out_intel_reserved_ffwd_6_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_9_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback9_loopback288 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_6_0(i_spec_select385_loopback95_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg139_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback9_loopback288_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_59_regfree_osync_x(GPOUT,669)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback9_loopback288_out_intel_reserved_ffwd_6_0;

    // valid_fanout_reg140(REG,826)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg140_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg140_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg17(REG,703)@1 + 1
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

    // valid_fanout_reg18(REG,704)@1 + 1
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

    // i_llvm_fpga_push_i16_a_sroa_14_0_push34_loopback99(BLACKBOX,366)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_14_0_push34_0 thei_llvm_fpga_push_i16_a_sroa_14_0_push34_loopback99 (
        .in_data_in(i_spec_select386_loopback98_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i16_a_sroa_14_0_pop34_loopback97_out_feedback_stall_out_34),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i16_a_sroa_14_0_push34_loopback99_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i16_a_sroa_14_0_push34_loopback99_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_14_0_pop34_loopback97(BLACKBOX,298)@2
    // out out_feedback_stall_out_34@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_14_0_pop34_0 thei_llvm_fpga_pop_i16_a_sroa_14_0_pop34_loopback97 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i16_a_sroa_14_0_push34_loopback99_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i16_a_sroa_14_0_push34_loopback99_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_14_0_pop34_loopback97_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i16_a_sroa_14_0_pop34_loopback97_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select386_loopback98(MUX,444)@2
    assign i_spec_select386_loopback98_s = i_unnamed_loopback65_q;
    always @(i_spec_select386_loopback98_s or i_llvm_fpga_pop_i16_a_sroa_14_0_pop34_loopback97_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select386_loopback98_s)
            1'b0 : i_spec_select386_loopback98_q = i_llvm_fpga_pop_i16_a_sroa_14_0_pop34_loopback97_out_data_out;
            1'b1 : i_spec_select386_loopback98_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select386_loopback98_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback10_loopback289(BLACKBOX,230)@2
    // out out_intel_reserved_ffwd_7_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_10_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback10_loopback289 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_7_0(i_spec_select386_loopback98_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg140_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback10_loopback289_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_60_regfree_osync_x(GPOUT,670)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback10_loopback289_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg141(REG,827)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg141_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg141_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg19(REG,705)@1 + 1
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

    // valid_fanout_reg20(REG,706)@1 + 1
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

    // i_llvm_fpga_push_i16_a_sroa_16_0_push33_loopback102(BLACKBOX,367)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_16_0_push33_0 thei_llvm_fpga_push_i16_a_sroa_16_0_push33_loopback102 (
        .in_data_in(i_spec_select387_loopback101_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i16_a_sroa_16_0_pop33_loopback100_out_feedback_stall_out_33),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i16_a_sroa_16_0_push33_loopback102_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i16_a_sroa_16_0_push33_loopback102_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_16_0_pop33_loopback100(BLACKBOX,299)@2
    // out out_feedback_stall_out_33@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_16_0_pop33_0 thei_llvm_fpga_pop_i16_a_sroa_16_0_pop33_loopback100 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i16_a_sroa_16_0_push33_loopback102_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i16_a_sroa_16_0_push33_loopback102_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_16_0_pop33_loopback100_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i16_a_sroa_16_0_pop33_loopback100_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select387_loopback101(MUX,445)@2
    assign i_spec_select387_loopback101_s = i_unnamed_loopback63_q;
    always @(i_spec_select387_loopback101_s or i_llvm_fpga_pop_i16_a_sroa_16_0_pop33_loopback100_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select387_loopback101_s)
            1'b0 : i_spec_select387_loopback101_q = i_llvm_fpga_pop_i16_a_sroa_16_0_pop33_loopback100_out_data_out;
            1'b1 : i_spec_select387_loopback101_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select387_loopback101_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback11_loopback290(BLACKBOX,231)@2
    // out out_intel_reserved_ffwd_8_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_11_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback11_loopback290 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_8_0(i_spec_select387_loopback101_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg141_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback11_loopback290_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_61_regfree_osync_x(GPOUT,671)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback11_loopback290_out_intel_reserved_ffwd_8_0;

    // valid_fanout_reg142(REG,828)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg142_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg142_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg21(REG,707)@1 + 1
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

    // valid_fanout_reg22(REG,708)@1 + 1
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

    // i_llvm_fpga_push_i16_a_sroa_18_0_push32_loopback105(BLACKBOX,368)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    loopback_i_llvm_fpga_push_i16_a_sroa_18_0_push32_0 thei_llvm_fpga_push_i16_a_sroa_18_0_push32_loopback105 (
        .in_data_in(i_spec_select388_loopback104_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i16_a_sroa_18_0_pop32_loopback103_out_feedback_stall_out_32),
        .in_keep_going717(redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i16_a_sroa_18_0_push32_loopback105_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i16_a_sroa_18_0_push32_loopback105_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_a_sroa_18_0_pop32_loopback103(BLACKBOX,300)@2
    // out out_feedback_stall_out_32@20000000
    loopback_i_llvm_fpga_pop_i16_a_sroa_18_0_pop32_0 thei_llvm_fpga_pop_i16_a_sroa_18_0_pop32_loopback103 (
        .in_data_in(c_i16_0589_q),
        .in_dir(redist0_sync_together734_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i16_a_sroa_18_0_push32_loopback105_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i16_a_sroa_18_0_push32_loopback105_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i16_a_sroa_18_0_pop32_loopback103_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i16_a_sroa_18_0_pop32_loopback103_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select388_loopback104(MUX,446)@2
    assign i_spec_select388_loopback104_s = i_unnamed_loopback61_q;
    always @(i_spec_select388_loopback104_s or i_llvm_fpga_pop_i16_a_sroa_18_0_pop32_loopback103_out_data_out or i_conv_loopback14_vt_join_q)
    begin
        unique case (i_spec_select388_loopback104_s)
            1'b0 : i_spec_select388_loopback104_q = i_llvm_fpga_pop_i16_a_sroa_18_0_pop32_loopback103_out_data_out;
            1'b1 : i_spec_select388_loopback104_q = i_conv_loopback14_vt_join_q;
            default : i_spec_select388_loopback104_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback12_loopback291(BLACKBOX,232)@2
    // out out_intel_reserved_ffwd_9_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_12_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback12_loopback291 (
        .in_predicate_in(i_xor723_loopback4_q),
        .in_src_data_in_9_0(i_spec_select388_loopback104_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg142_q),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback12_loopback291_out_intel_reserved_ffwd_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_62_regfree_osync_x(GPOUT,672)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback12_loopback291_out_intel_reserved_ffwd_9_0;

    // valid_fanout_reg0(REG,686)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // i_masked726_loopback347(LOGICAL,433)@2
    assign i_masked726_loopback347_q = i_notcmp713_loopback276_q & i_first_cleanup722_loopback3_sel_x_b;

    // sync_out_aunroll_x(GPOUT,684)@2
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist2_i_llvm_fpga_pipeline_keep_going717_loopback6_out_data_out_1_q;
    assign out_c0_exi2_2_tpl = i_masked726_loopback347_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_loopback1 = GND_q;

endmodule
