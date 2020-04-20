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

// SystemVerilog created from loopback_i_sfc_logic_s_c0_in_for_body11_s_c0_enter8013_loopback0
// SystemVerilog created on Sun Apr 19 21:28:19 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module loopback_i_sfc_logic_s_c0_in_for_body11_s_c0_enter8013_loopback0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [15:0] in_intel_reserved_ffwd_1_0,
    input wire [15:0] in_intel_reserved_ffwd_33_0,
    input wire [15:0] in_intel_reserved_ffwd_34_0,
    input wire [15:0] in_intel_reserved_ffwd_35_0,
    input wire [15:0] in_intel_reserved_ffwd_36_0,
    input wire [15:0] in_intel_reserved_ffwd_37_0,
    input wire [15:0] in_intel_reserved_ffwd_38_0,
    input wire [15:0] in_intel_reserved_ffwd_39_0,
    input wire [15:0] in_intel_reserved_ffwd_40_0,
    input wire [15:0] in_intel_reserved_ffwd_41_0,
    input wire [15:0] in_intel_reserved_ffwd_42_0,
    input wire [15:0] in_intel_reserved_ffwd_43_0,
    input wire [15:0] in_intel_reserved_ffwd_44_0,
    input wire [15:0] in_intel_reserved_ffwd_45_0,
    input wire [15:0] in_intel_reserved_ffwd_46_0,
    input wire [15:0] in_intel_reserved_ffwd_47_0,
    input wire [15:0] in_intel_reserved_ffwd_48_0,
    input wire [15:0] in_intel_reserved_ffwd_49_0,
    input wire [15:0] in_intel_reserved_ffwd_50_0,
    input wire [15:0] in_intel_reserved_ffwd_51_0,
    input wire [15:0] in_intel_reserved_ffwd_52_0,
    input wire [15:0] in_intel_reserved_ffwd_53_0,
    input wire [15:0] in_intel_reserved_ffwd_54_0,
    input wire [15:0] in_intel_reserved_ffwd_55_0,
    input wire [15:0] in_intel_reserved_ffwd_56_0,
    input wire [15:0] in_intel_reserved_ffwd_57_0,
    input wire [15:0] in_intel_reserved_ffwd_58_0,
    input wire [15:0] in_intel_reserved_ffwd_59_0,
    input wire [15:0] in_intel_reserved_ffwd_60_0,
    input wire [15:0] in_intel_reserved_ffwd_61_0,
    input wire [15:0] in_intel_reserved_ffwd_62_0,
    input wire [15:0] in_intel_reserved_ffwd_63_0,
    input wire [15:0] in_intel_reserved_ffwd_64_0,
    output wire [15:0] out_intel_reserved_ffwd_100_0,
    output wire [15:0] out_intel_reserved_ffwd_69_0,
    output wire [15:0] out_intel_reserved_ffwd_70_0,
    output wire [15:0] out_intel_reserved_ffwd_71_0,
    output wire [15:0] out_intel_reserved_ffwd_72_0,
    output wire [15:0] out_intel_reserved_ffwd_73_0,
    output wire [15:0] out_intel_reserved_ffwd_74_0,
    output wire [15:0] out_intel_reserved_ffwd_75_0,
    output wire [15:0] out_intel_reserved_ffwd_76_0,
    output wire [15:0] out_intel_reserved_ffwd_77_0,
    output wire [15:0] out_intel_reserved_ffwd_78_0,
    output wire [15:0] out_intel_reserved_ffwd_79_0,
    output wire [15:0] out_intel_reserved_ffwd_80_0,
    output wire [15:0] out_intel_reserved_ffwd_81_0,
    output wire [15:0] out_intel_reserved_ffwd_82_0,
    output wire [15:0] out_intel_reserved_ffwd_83_0,
    output wire [15:0] out_intel_reserved_ffwd_84_0,
    output wire [15:0] out_intel_reserved_ffwd_85_0,
    output wire [15:0] out_intel_reserved_ffwd_86_0,
    output wire [15:0] out_intel_reserved_ffwd_87_0,
    output wire [15:0] out_intel_reserved_ffwd_88_0,
    output wire [15:0] out_intel_reserved_ffwd_89_0,
    output wire [15:0] out_intel_reserved_ffwd_90_0,
    output wire [15:0] out_intel_reserved_ffwd_91_0,
    output wire [15:0] out_intel_reserved_ffwd_92_0,
    output wire [15:0] out_intel_reserved_ffwd_93_0,
    output wire [15:0] out_intel_reserved_ffwd_94_0,
    output wire [15:0] out_intel_reserved_ffwd_95_0,
    output wire [15:0] out_intel_reserved_ffwd_96_0,
    output wire [15:0] out_intel_reserved_ffwd_97_0,
    output wire [15:0] out_intel_reserved_ffwd_98_0,
    output wire [15:0] out_intel_reserved_ffwd_99_0,
    input wire [15:0] in_intel_reserved_ffwd_65_0_0_tpl,
    input wire [15:0] in_intel_reserved_ffwd_65_0_1_tpl,
    input wire [15:0] in_intel_reserved_ffwd_65_0_2_tpl,
    input wire [15:0] in_intel_reserved_ffwd_65_0_3_tpl,
    input wire [15:0] in_intel_reserved_ffwd_65_0_4_tpl,
    input wire [15:0] in_intel_reserved_ffwd_65_0_5_tpl,
    input wire [15:0] in_intel_reserved_ffwd_65_0_6_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_0_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_1_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_2_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_3_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_4_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_5_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_6_tpl,
    input wire [15:0] in_intel_reserved_ffwd_66_0_7_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_0_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_1_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_2_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_3_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_4_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_5_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_6_tpl,
    input wire [15:0] in_intel_reserved_ffwd_67_0_7_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_0_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_1_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_2_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_3_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_4_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_5_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_6_tpl,
    input wire [15:0] in_intel_reserved_ffwd_68_0_7_tpl,
    output wire [0:0] out_c0_exi2804_0_tpl,
    output wire [0:0] out_c0_exi2804_1_tpl,
    output wire [0:0] out_c0_exi2804_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_loopback1,
    input wire [0:0] in_c0_eni1800_0_tpl,
    input wire [0:0] in_c0_eni1800_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [15:0] c_i16_undef451_q;
    wire [31:0] c_i32_0452_q;
    wire [31:0] c_i32_1483_q;
    wire [31:0] c_i32_2482_q;
    wire [31:0] c_i32_3481_q;
    wire [31:0] c_i32_4480_q;
    wire [31:0] c_i32_5479_q;
    wire [31:0] c_i32_6478_q;
    wire [31:0] c_i32_7477_q;
    wire [3:0] c_i4_7448_q;
    wire [5:0] c_i6_1488_q;
    wire [5:0] c_i6_30486_q;
    wire [0:0] comparator_q;
    wire [3:0] i_cleanups_shl_loopback5_vt_join_q;
    wire [2:0] i_cleanups_shl_loopback5_vt_select_3_b;
    wire [6:0] i_fpga_indvars_iv_next575_loopback264_a;
    wire [6:0] i_fpga_indvars_iv_next575_loopback264_b;
    logic [6:0] i_fpga_indvars_iv_next575_loopback264_o;
    wire [6:0] i_fpga_indvars_iv_next575_loopback264_q;
    wire [32:0] i_inc17_loopback254_a;
    wire [32:0] i_inc17_loopback254_b;
    logic [32:0] i_inc17_loopback254_o;
    wire [32:0] i_inc17_loopback254_q;
    reg [15:0] i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
    reg [15:0] i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt529_loopback174_q;
    reg [15:0] i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt539_loopback177_q;
    reg [15:0] i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt549_loopback180_q;
    reg [15:0] i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt559_loopback183_q;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select412612_loopback105_out_dest_data_out_33_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select413613_loopback99_out_dest_data_out_35_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select414614_loopback96_out_dest_data_out_36_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select415615_loopback93_out_dest_data_out_37_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select416616_loopback90_out_dest_data_out_38_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select417617_loopback87_out_dest_data_out_39_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select418618_loopback84_out_dest_data_out_40_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select419619_loopback81_out_dest_data_out_41_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select420620_loopback78_out_dest_data_out_42_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select421621_loopback75_out_dest_data_out_43_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select422622_loopback72_out_dest_data_out_44_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select423623_loopback69_out_dest_data_out_45_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select424624_loopback66_out_dest_data_out_46_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select425625_loopback63_out_dest_data_out_47_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select426626_loopback60_out_dest_data_out_48_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select427627_loopback57_out_dest_data_out_49_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select428628_loopback54_out_dest_data_out_50_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select429629_loopback51_out_dest_data_out_51_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select430630_loopback48_out_dest_data_out_52_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select431631_loopback45_out_dest_data_out_53_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select432632_loopback42_out_dest_data_out_54_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select433633_loopback39_out_dest_data_out_55_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select434634_loopback36_out_dest_data_out_56_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select435635_loopback33_out_dest_data_out_57_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select436636_loopback30_out_dest_data_out_58_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select437637_loopback27_out_dest_data_out_59_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select438638_loopback24_out_dest_data_out_60_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select439639_loopback21_out_dest_data_out_61_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select440640_loopback18_out_dest_data_out_62_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select441641_loopback15_out_dest_data_out_63_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select442642_loopback12_out_dest_data_out_64_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select577_loopback186_out_dest_data_out_1_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select578_loopback181_out_dest_data_out_1_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select579_loopback178_out_dest_data_out_1_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select580_loopback175_out_dest_data_out_1_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_spec_select581_loopback172_out_dest_data_out_1_0;
    wire [15:0] i_llvm_fpga_ffwd_dest_i16_unnamed_loopback76_loopback102_out_dest_data_out_34_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback100_loopback289_out_intel_reserved_ffwd_92_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback101_loopback290_out_intel_reserved_ffwd_93_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback102_loopback291_out_intel_reserved_ffwd_94_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback103_loopback292_out_intel_reserved_ffwd_95_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback104_loopback293_out_intel_reserved_ffwd_96_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback105_loopback294_out_intel_reserved_ffwd_97_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback106_loopback295_out_intel_reserved_ffwd_98_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback107_loopback296_out_intel_reserved_ffwd_99_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback108_loopback297_out_intel_reserved_ffwd_100_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback77_loopback266_out_intel_reserved_ffwd_69_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback78_loopback267_out_intel_reserved_ffwd_70_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback79_loopback268_out_intel_reserved_ffwd_71_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback80_loopback269_out_intel_reserved_ffwd_72_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback81_loopback270_out_intel_reserved_ffwd_73_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback82_loopback271_out_intel_reserved_ffwd_74_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback83_loopback272_out_intel_reserved_ffwd_75_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback84_loopback273_out_intel_reserved_ffwd_76_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback85_loopback274_out_intel_reserved_ffwd_77_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback86_loopback275_out_intel_reserved_ffwd_78_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback87_loopback276_out_intel_reserved_ffwd_79_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback88_loopback277_out_intel_reserved_ffwd_80_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback89_loopback278_out_intel_reserved_ffwd_81_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback90_loopback279_out_intel_reserved_ffwd_82_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback91_loopback280_out_intel_reserved_ffwd_83_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback92_loopback281_out_intel_reserved_ffwd_84_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback93_loopback282_out_intel_reserved_ffwd_85_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback94_loopback283_out_intel_reserved_ffwd_86_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback95_loopback284_out_intel_reserved_ffwd_87_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback96_loopback285_out_intel_reserved_ffwd_88_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback97_loopback286_out_intel_reserved_ffwd_89_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback98_loopback287_out_intel_reserved_ffwd_90_0;
    wire [15:0] i_llvm_fpga_ffwd_source_i16_unnamed_loopback99_loopback288_out_intel_reserved_ffwd_91_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loopback6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loopback6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loopback6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loopback6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_loopback6_out_pipeline_valid_out;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_0_2_pop108_loopback106_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_0_2_pop108_loopback106_out_feedback_stall_out_108;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_11_2_pop105_loopback97_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_11_2_pop105_loopback97_out_feedback_stall_out_105;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_14_2_pop104_loopback94_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_14_2_pop104_loopback94_out_feedback_stall_out_104;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_17_2_pop103_loopback91_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_17_2_pop103_loopback91_out_feedback_stall_out_103;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_20_2_pop102_loopback88_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_20_2_pop102_loopback88_out_feedback_stall_out_102;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_23_2_pop101_loopback85_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_23_2_pop101_loopback85_out_feedback_stall_out_101;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_26_2_pop100_loopback82_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_26_2_pop100_loopback82_out_feedback_stall_out_100;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_29_2_pop99_loopback79_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_29_2_pop99_loopback79_out_feedback_stall_out_99;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_32_2_pop98_loopback76_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_32_2_pop98_loopback76_out_feedback_stall_out_98;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_35_2_pop97_loopback73_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_35_2_pop97_loopback73_out_feedback_stall_out_97;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_38_2_pop96_loopback70_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_38_2_pop96_loopback70_out_feedback_stall_out_96;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_41_2_pop95_loopback67_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_41_2_pop95_loopback67_out_feedback_stall_out_95;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_44_2_pop94_loopback64_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_44_2_pop94_loopback64_out_feedback_stall_out_94;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_47_2_pop93_loopback61_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_47_2_pop93_loopback61_out_feedback_stall_out_93;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_50_2_pop92_loopback58_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_50_2_pop92_loopback58_out_feedback_stall_out_92;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_53_2_pop91_loopback55_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_53_2_pop91_loopback55_out_feedback_stall_out_91;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_56_2_pop90_loopback52_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_56_2_pop90_loopback52_out_feedback_stall_out_90;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_59_2_pop89_loopback49_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_59_2_pop89_loopback49_out_feedback_stall_out_89;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_5_2_pop107_loopback103_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_5_2_pop107_loopback103_out_feedback_stall_out_107;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_62_2_pop88_loopback46_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_62_2_pop88_loopback46_out_feedback_stall_out_88;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_65_2_pop87_loopback43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_65_2_pop87_loopback43_out_feedback_stall_out_87;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_68_2_pop86_loopback40_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_68_2_pop86_loopback40_out_feedback_stall_out_86;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_71_2_pop85_loopback37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_71_2_pop85_loopback37_out_feedback_stall_out_85;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_74_2_pop84_loopback34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_74_2_pop84_loopback34_out_feedback_stall_out_84;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_77_2_pop83_loopback31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_77_2_pop83_loopback31_out_feedback_stall_out_83;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_80_2_pop82_loopback28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_80_2_pop82_loopback28_out_feedback_stall_out_82;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_83_2_pop81_loopback25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_83_2_pop81_loopback25_out_feedback_stall_out_81;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_86_2_pop80_loopback22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_86_2_pop80_loopback22_out_feedback_stall_out_80;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_89_2_pop79_loopback19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_89_2_pop79_loopback19_out_feedback_stall_out_79;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_8_2_pop106_loopback100_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_8_2_pop106_loopback100_out_feedback_stall_out_106;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_92_2_pop78_loopback16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_92_2_pop78_loopback16_out_feedback_stall_out_78;
    wire [15:0] i_llvm_fpga_pop_i16_out_sroa_95_2_pop77_loopback13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i16_out_sroa_95_2_pop77_loopback13_out_feedback_stall_out_77;
    wire [31:0] i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_feedback_stall_out_109;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop111_loopback2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop111_loopback2_out_feedback_stall_out_111;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop110_loopback7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop110_loopback7_out_feedback_stall_out_110;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv574_pop76_loopback256_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv574_pop76_loopback256_out_feedback_stall_out_76;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_0_2_push108_loopback191_out_feedback_out_108;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_0_2_push108_loopback191_out_feedback_valid_out_108;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_11_2_push105_loopback197_out_feedback_out_105;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_11_2_push105_loopback197_out_feedback_valid_out_105;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_14_2_push104_loopback199_out_feedback_out_104;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_14_2_push104_loopback199_out_feedback_valid_out_104;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_17_2_push103_loopback201_out_feedback_out_103;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_17_2_push103_loopback201_out_feedback_valid_out_103;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_20_2_push102_loopback203_out_feedback_out_102;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_20_2_push102_loopback203_out_feedback_valid_out_102;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_23_2_push101_loopback205_out_feedback_out_101;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_23_2_push101_loopback205_out_feedback_valid_out_101;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_26_2_push100_loopback207_out_feedback_out_100;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_26_2_push100_loopback207_out_feedback_valid_out_100;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_29_2_push99_loopback209_out_feedback_out_99;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_29_2_push99_loopback209_out_feedback_valid_out_99;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_32_2_push98_loopback211_out_feedback_out_98;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_32_2_push98_loopback211_out_feedback_valid_out_98;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_35_2_push97_loopback213_out_feedback_out_97;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_35_2_push97_loopback213_out_feedback_valid_out_97;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_38_2_push96_loopback215_out_feedback_out_96;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_38_2_push96_loopback215_out_feedback_valid_out_96;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_41_2_push95_loopback217_out_feedback_out_95;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_41_2_push95_loopback217_out_feedback_valid_out_95;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_44_2_push94_loopback219_out_feedback_out_94;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_44_2_push94_loopback219_out_feedback_valid_out_94;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_47_2_push93_loopback221_out_feedback_out_93;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_47_2_push93_loopback221_out_feedback_valid_out_93;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_50_2_push92_loopback223_out_feedback_out_92;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_50_2_push92_loopback223_out_feedback_valid_out_92;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_53_2_push91_loopback225_out_feedback_out_91;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_53_2_push91_loopback225_out_feedback_valid_out_91;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_56_2_push90_loopback227_out_feedback_out_90;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_56_2_push90_loopback227_out_feedback_valid_out_90;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_59_2_push89_loopback229_out_feedback_out_89;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_59_2_push89_loopback229_out_feedback_valid_out_89;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_5_2_push107_loopback193_out_feedback_out_107;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_5_2_push107_loopback193_out_feedback_valid_out_107;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_62_2_push88_loopback231_out_feedback_out_88;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_62_2_push88_loopback231_out_feedback_valid_out_88;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_65_2_push87_loopback233_out_feedback_out_87;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_65_2_push87_loopback233_out_feedback_valid_out_87;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_68_2_push86_loopback235_out_feedback_out_86;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_68_2_push86_loopback235_out_feedback_valid_out_86;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_71_2_push85_loopback237_out_feedback_out_85;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_71_2_push85_loopback237_out_feedback_valid_out_85;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_74_2_push84_loopback239_out_feedback_out_84;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_74_2_push84_loopback239_out_feedback_valid_out_84;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_77_2_push83_loopback241_out_feedback_out_83;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_77_2_push83_loopback241_out_feedback_valid_out_83;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_80_2_push82_loopback243_out_feedback_out_82;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_80_2_push82_loopback243_out_feedback_valid_out_82;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_83_2_push81_loopback245_out_feedback_out_81;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_83_2_push81_loopback245_out_feedback_valid_out_81;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_86_2_push80_loopback247_out_feedback_out_80;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_86_2_push80_loopback247_out_feedback_valid_out_80;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_89_2_push79_loopback249_out_feedback_out_79;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_89_2_push79_loopback249_out_feedback_valid_out_79;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_8_2_push106_loopback195_out_feedback_out_106;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_8_2_push106_loopback195_out_feedback_valid_out_106;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_92_2_push78_loopback251_out_feedback_out_78;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_92_2_push78_loopback251_out_feedback_valid_out_78;
    wire [15:0] i_llvm_fpga_push_i16_out_sroa_95_2_push77_loopback253_out_feedback_out_77;
    wire [0:0] i_llvm_fpga_push_i16_out_sroa_95_2_push77_loopback253_out_feedback_valid_out_77;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_loopback11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_loopback11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_loopback260_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_loopback260_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_k7_013_push109_loopback255_out_feedback_out_109;
    wire [0:0] i_llvm_fpga_push_i32_k7_013_push109_loopback255_out_feedback_valid_out_109;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push111_loopback263_out_feedback_out_111;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push111_loopback263_out_feedback_valid_out_111;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push110_loopback9_out_feedback_out_110;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push110_loopback9_out_feedback_valid_out_110;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv574_push76_loopback265_out_feedback_out_76;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv574_push76_loopback265_out_feedback_valid_out_76;
    wire [0:0] i_masked_loopback298_q;
    wire [0:0] i_next_cleanups_loopback262_s;
    reg [3:0] i_next_cleanups_loopback262_q;
    wire [3:0] i_next_initerations_loopback8_vt_join_q;
    wire [2:0] i_next_initerations_loopback8_vt_select_2_b;
    wire [0:0] i_notcmp_loopback259_q;
    wire [0:0] i_or_loopback261_q;
    wire [0:0] i_out_sroa_0_2_replace_phi_loopback107_s;
    reg [15:0] i_out_sroa_0_2_replace_phi_loopback107_q;
    wire [0:0] i_out_sroa_11_2_replace_phi_loopback98_s;
    reg [15:0] i_out_sroa_11_2_replace_phi_loopback98_q;
    wire [0:0] i_out_sroa_14_2_replace_phi_loopback95_s;
    reg [15:0] i_out_sroa_14_2_replace_phi_loopback95_q;
    wire [0:0] i_out_sroa_17_2_replace_phi_loopback92_s;
    reg [15:0] i_out_sroa_17_2_replace_phi_loopback92_q;
    wire [0:0] i_out_sroa_20_2_replace_phi_loopback89_s;
    reg [15:0] i_out_sroa_20_2_replace_phi_loopback89_q;
    wire [0:0] i_out_sroa_23_2_replace_phi_loopback86_s;
    reg [15:0] i_out_sroa_23_2_replace_phi_loopback86_q;
    wire [0:0] i_out_sroa_26_2_replace_phi_loopback83_s;
    reg [15:0] i_out_sroa_26_2_replace_phi_loopback83_q;
    wire [0:0] i_out_sroa_29_2_replace_phi_loopback80_s;
    reg [15:0] i_out_sroa_29_2_replace_phi_loopback80_q;
    wire [0:0] i_out_sroa_32_2_replace_phi_loopback77_s;
    reg [15:0] i_out_sroa_32_2_replace_phi_loopback77_q;
    wire [0:0] i_out_sroa_35_2_replace_phi_loopback74_s;
    reg [15:0] i_out_sroa_35_2_replace_phi_loopback74_q;
    wire [0:0] i_out_sroa_38_2_replace_phi_loopback71_s;
    reg [15:0] i_out_sroa_38_2_replace_phi_loopback71_q;
    wire [0:0] i_out_sroa_41_2_replace_phi_loopback68_s;
    reg [15:0] i_out_sroa_41_2_replace_phi_loopback68_q;
    wire [0:0] i_out_sroa_44_2_replace_phi_loopback65_s;
    reg [15:0] i_out_sroa_44_2_replace_phi_loopback65_q;
    wire [0:0] i_out_sroa_47_2_replace_phi_loopback62_s;
    reg [15:0] i_out_sroa_47_2_replace_phi_loopback62_q;
    wire [0:0] i_out_sroa_50_2_replace_phi_loopback59_s;
    reg [15:0] i_out_sroa_50_2_replace_phi_loopback59_q;
    wire [0:0] i_out_sroa_53_2_replace_phi_loopback56_s;
    reg [15:0] i_out_sroa_53_2_replace_phi_loopback56_q;
    wire [0:0] i_out_sroa_56_2_replace_phi_loopback53_s;
    reg [15:0] i_out_sroa_56_2_replace_phi_loopback53_q;
    wire [0:0] i_out_sroa_59_2_replace_phi_loopback50_s;
    reg [15:0] i_out_sroa_59_2_replace_phi_loopback50_q;
    wire [0:0] i_out_sroa_5_2_replace_phi_loopback104_s;
    reg [15:0] i_out_sroa_5_2_replace_phi_loopback104_q;
    wire [0:0] i_out_sroa_62_2_replace_phi_loopback47_s;
    reg [15:0] i_out_sroa_62_2_replace_phi_loopback47_q;
    wire [0:0] i_out_sroa_65_2_replace_phi_loopback44_s;
    reg [15:0] i_out_sroa_65_2_replace_phi_loopback44_q;
    wire [0:0] i_out_sroa_68_2_replace_phi_loopback41_s;
    reg [15:0] i_out_sroa_68_2_replace_phi_loopback41_q;
    wire [0:0] i_out_sroa_71_2_replace_phi_loopback38_s;
    reg [15:0] i_out_sroa_71_2_replace_phi_loopback38_q;
    wire [0:0] i_out_sroa_74_2_replace_phi_loopback35_s;
    reg [15:0] i_out_sroa_74_2_replace_phi_loopback35_q;
    wire [0:0] i_out_sroa_77_2_replace_phi_loopback32_s;
    reg [15:0] i_out_sroa_77_2_replace_phi_loopback32_q;
    wire [0:0] i_out_sroa_80_2_replace_phi_loopback29_s;
    reg [15:0] i_out_sroa_80_2_replace_phi_loopback29_q;
    wire [0:0] i_out_sroa_83_2_replace_phi_loopback26_s;
    reg [15:0] i_out_sroa_83_2_replace_phi_loopback26_q;
    wire [0:0] i_out_sroa_86_2_replace_phi_loopback23_s;
    reg [15:0] i_out_sroa_86_2_replace_phi_loopback23_q;
    wire [0:0] i_out_sroa_89_2_replace_phi_loopback20_s;
    reg [15:0] i_out_sroa_89_2_replace_phi_loopback20_q;
    wire [0:0] i_out_sroa_8_2_replace_phi_loopback101_s;
    reg [15:0] i_out_sroa_8_2_replace_phi_loopback101_q;
    wire [0:0] i_out_sroa_92_2_replace_phi_loopback17_s;
    reg [15:0] i_out_sroa_92_2_replace_phi_loopback17_q;
    wire [0:0] i_out_sroa_95_2_replace_phi_loopback14_s;
    reg [15:0] i_out_sroa_95_2_replace_phi_loopback14_q;
    wire [31:0] i_sel_bits521_loopback171_q;
    wire [28:0] i_sel_bits521_loopback171_vt_const_31_q;
    wire [31:0] i_sel_bits521_loopback171_vt_join_q;
    wire [2:0] i_sel_bits521_loopback171_vt_select_2_b;
    wire [2:0] i_sel_shr560_loopback184_vt_const_31_q;
    wire [31:0] i_sel_shr560_loopback184_vt_join_q;
    wire [28:0] i_sel_shr560_loopback184_vt_select_28_b;
    wire [0:0] i_spec_select443_loopback190_s;
    reg [15:0] i_spec_select443_loopback190_q;
    wire [0:0] i_spec_select444_loopback194_s;
    reg [15:0] i_spec_select444_loopback194_q;
    wire [0:0] i_spec_select445_loopback196_s;
    reg [15:0] i_spec_select445_loopback196_q;
    wire [0:0] i_spec_select446_loopback198_s;
    reg [15:0] i_spec_select446_loopback198_q;
    wire [0:0] i_spec_select447_loopback200_s;
    reg [15:0] i_spec_select447_loopback200_q;
    wire [0:0] i_spec_select448_loopback202_s;
    reg [15:0] i_spec_select448_loopback202_q;
    wire [0:0] i_spec_select449_loopback204_s;
    reg [15:0] i_spec_select449_loopback204_q;
    wire [0:0] i_spec_select450_loopback206_s;
    reg [15:0] i_spec_select450_loopback206_q;
    wire [0:0] i_spec_select451_loopback208_s;
    reg [15:0] i_spec_select451_loopback208_q;
    wire [0:0] i_spec_select452_loopback210_s;
    reg [15:0] i_spec_select452_loopback210_q;
    wire [0:0] i_spec_select453_loopback212_s;
    reg [15:0] i_spec_select453_loopback212_q;
    wire [0:0] i_spec_select454_loopback214_s;
    reg [15:0] i_spec_select454_loopback214_q;
    wire [0:0] i_spec_select455_loopback216_s;
    reg [15:0] i_spec_select455_loopback216_q;
    wire [0:0] i_spec_select456_loopback218_s;
    reg [15:0] i_spec_select456_loopback218_q;
    wire [0:0] i_spec_select457_loopback220_s;
    reg [15:0] i_spec_select457_loopback220_q;
    wire [0:0] i_spec_select458_loopback222_s;
    reg [15:0] i_spec_select458_loopback222_q;
    wire [0:0] i_spec_select459_loopback224_s;
    reg [15:0] i_spec_select459_loopback224_q;
    wire [0:0] i_spec_select460_loopback226_s;
    reg [15:0] i_spec_select460_loopback226_q;
    wire [0:0] i_spec_select461_loopback228_s;
    reg [15:0] i_spec_select461_loopback228_q;
    wire [0:0] i_spec_select462_loopback230_s;
    reg [15:0] i_spec_select462_loopback230_q;
    wire [0:0] i_spec_select463_loopback232_s;
    reg [15:0] i_spec_select463_loopback232_q;
    wire [0:0] i_spec_select464_loopback234_s;
    reg [15:0] i_spec_select464_loopback234_q;
    wire [0:0] i_spec_select465_loopback236_s;
    reg [15:0] i_spec_select465_loopback236_q;
    wire [0:0] i_spec_select466_loopback238_s;
    reg [15:0] i_spec_select466_loopback238_q;
    wire [0:0] i_spec_select467_loopback240_s;
    reg [15:0] i_spec_select467_loopback240_q;
    wire [0:0] i_spec_select468_loopback242_s;
    reg [15:0] i_spec_select468_loopback242_q;
    wire [0:0] i_spec_select469_loopback244_s;
    reg [15:0] i_spec_select469_loopback244_q;
    wire [0:0] i_spec_select470_loopback246_s;
    reg [15:0] i_spec_select470_loopback246_q;
    wire [0:0] i_spec_select471_loopback248_s;
    reg [15:0] i_spec_select471_loopback248_q;
    wire [0:0] i_spec_select472_loopback250_s;
    reg [15:0] i_spec_select472_loopback250_q;
    wire [0:0] i_spec_select473_loopback252_s;
    reg [15:0] i_spec_select473_loopback252_q;
    wire [0:0] i_unnamed_loopback109_q;
    wire [0:0] i_unnamed_loopback111_q;
    wire [0:0] i_unnamed_loopback113_q;
    wire [0:0] i_unnamed_loopback115_q;
    wire [0:0] i_unnamed_loopback117_q;
    wire [0:0] i_unnamed_loopback119_q;
    wire [0:0] i_unnamed_loopback121_q;
    wire [0:0] i_unnamed_loopback123_q;
    wire [0:0] i_unnamed_loopback125_q;
    wire [0:0] i_unnamed_loopback127_q;
    wire [0:0] i_unnamed_loopback129_q;
    wire [0:0] i_unnamed_loopback131_q;
    wire [0:0] i_unnamed_loopback133_q;
    wire [0:0] i_unnamed_loopback135_q;
    wire [0:0] i_unnamed_loopback137_q;
    wire [0:0] i_unnamed_loopback139_q;
    wire [0:0] i_unnamed_loopback141_q;
    wire [0:0] i_unnamed_loopback143_q;
    wire [0:0] i_unnamed_loopback145_q;
    wire [0:0] i_unnamed_loopback147_q;
    wire [0:0] i_unnamed_loopback149_q;
    wire [0:0] i_unnamed_loopback151_q;
    wire [0:0] i_unnamed_loopback153_q;
    wire [0:0] i_unnamed_loopback155_q;
    wire [0:0] i_unnamed_loopback157_q;
    wire [0:0] i_unnamed_loopback159_q;
    wire [0:0] i_unnamed_loopback161_q;
    wire [0:0] i_unnamed_loopback163_q;
    wire [0:0] i_unnamed_loopback165_q;
    wire [0:0] i_unnamed_loopback167_q;
    wire [0:0] i_unnamed_loopback169_q;
    wire [0:0] i_unnamed_loopback188_q;
    wire [0:0] i_unnamed_loopback192_s;
    reg [15:0] i_unnamed_loopback192_q;
    wire [0:0] i_xor_loopback4_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next575_loopback264_sel_x_b;
    wire [31:0] bgTrunc_i_inc17_loopback254_sel_x_b;
    wire [31:0] c_i32_10474_recast_x_q;
    wire [31:0] c_i32_11473_recast_x_q;
    wire [31:0] c_i32_12472_recast_x_q;
    wire [31:0] c_i32_13471_recast_x_q;
    wire [31:0] c_i32_14470_recast_x_q;
    wire [31:0] c_i32_15469_recast_x_q;
    wire [31:0] c_i32_16468_recast_x_q;
    wire [31:0] c_i32_17467_recast_x_q;
    wire [31:0] c_i32_18466_recast_x_q;
    wire [31:0] c_i32_19465_recast_x_q;
    wire [31:0] c_i32_20464_recast_x_q;
    wire [31:0] c_i32_21463_recast_x_q;
    wire [31:0] c_i32_22462_recast_x_q;
    wire [31:0] c_i32_23461_recast_x_q;
    wire [31:0] c_i32_24460_recast_x_q;
    wire [31:0] c_i32_25459_recast_x_q;
    wire [31:0] c_i32_26458_recast_x_q;
    wire [31:0] c_i32_27457_recast_x_q;
    wire [31:0] c_i32_28456_recast_x_q;
    wire [31:0] c_i32_29455_recast_x_q;
    wire [31:0] c_i32_30454_recast_x_q;
    wire [31:0] c_i32_31453_recast_x_q;
    wire [31:0] c_i32_8476_recast_x_q;
    wire [31:0] c_i32_9475_recast_x_q;
    wire [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_q;
    wire [0:0] dupName_3_comparator_x_q;
    wire [0:0] dupName_4_comparator_x_q;
    wire [0:0] dupName_5_comparator_x_q;
    wire [0:0] dupName_6_comparator_x_q;
    wire [0:0] dupName_30_comparator_x_q;
    wire [0:0] dupName_31_comparator_x_q;
    wire [0:0] dupName_32_comparator_x_q;
    wire [0:0] dupName_33_comparator_x_q;
    wire [0:0] i_first_cleanup_loopback3_sel_x_b;
    wire [0:0] i_last_initeration_loopback10_sel_x_b;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_0_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_1_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_2_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_3_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_4_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_5_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_6_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_0_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_1_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_2_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_3_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_4_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_5_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_6_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_7_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_0_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_1_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_2_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_3_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_4_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_5_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_6_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_7_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_0_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_1_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_2_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_3_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_4_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_5_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_6_tpl;
    wire [15:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_7_tpl;
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
    wire [0:0] i_exitcond576_loopback257_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid786_i_cleanups_shl_loopback0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid786_i_cleanups_shl_loopback0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid787_i_cleanups_shl_loopback0_shift_x_q;
    wire [0:0] leftShiftStage0_uid789_i_cleanups_shl_loopback0_shift_x_s;
    reg [3:0] leftShiftStage0_uid789_i_cleanups_shl_loopback0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid793_i_next_initerations_loopback0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid795_i_next_initerations_loopback0_shift_x_q;
    wire [0:0] rightShiftStage0_uid797_i_next_initerations_loopback0_shift_x_s;
    reg [3:0] rightShiftStage0_uid797_i_next_initerations_loopback0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid801_i_sel_shr560_loopback0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid803_i_sel_shr560_loopback0_shift_x_q;
    wire [0:0] rightShiftStage0_uid805_i_sel_shr560_loopback0_shift_x_s;
    reg [31:0] rightShiftStage0_uid805_i_sel_shr560_loopback0_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid806_i_sel_shr560_loopback0_shift_x_b;
    wire [1:0] rightShiftStage1Idx1Pad2_uid807_i_sel_shr560_loopback0_shift_x_q;
    wire [31:0] rightShiftStage1Idx1_uid808_i_sel_shr560_loopback0_shift_x_q;
    wire [0:0] rightShiftStage1_uid810_i_sel_shr560_loopback0_shift_x_s;
    reg [31:0] rightShiftStage1_uid810_i_sel_shr560_loopback0_shift_x_q;
    reg [0:0] redist0_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_1_q;
    reg [0:0] redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    reg [0:0] redist2_sync_together603_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together603_aunroll_x_in_i_valid_2_q;
    reg [31:0] redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q;
    reg [0:0] redist5_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_1_q;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together603_aunroll_x_in_i_valid_1(DELAY,813)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together603_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together603_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together603_aunroll_x_in_i_valid_2(DELAY,814)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together603_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist3_sync_together603_aunroll_x_in_i_valid_2_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist5_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_1(DELAY,816)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out);
        end
    end

    // redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2(DELAY,817)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q <= $unsigned(redist5_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid786_i_cleanups_shl_loopback0_shift_x(BITSELECT,785)@3
    assign leftShiftStage0Idx1Rng1_uid786_i_cleanups_shl_loopback0_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop111_loopback2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid786_i_cleanups_shl_loopback0_shift_x_b = leftShiftStage0Idx1Rng1_uid786_i_cleanups_shl_loopback0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid787_i_cleanups_shl_loopback0_shift_x(BITJOIN,786)@3
    assign leftShiftStage0Idx1_uid787_i_cleanups_shl_loopback0_shift_x_q = {leftShiftStage0Idx1Rng1_uid786_i_cleanups_shl_loopback0_shift_x_b, GND_q};

    // leftShiftStage0_uid789_i_cleanups_shl_loopback0_shift_x(MUX,788)@3
    assign leftShiftStage0_uid789_i_cleanups_shl_loopback0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid789_i_cleanups_shl_loopback0_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop111_loopback2_out_data_out or leftShiftStage0Idx1_uid787_i_cleanups_shl_loopback0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid789_i_cleanups_shl_loopback0_shift_x_s)
            1'b0 : leftShiftStage0_uid789_i_cleanups_shl_loopback0_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop111_loopback2_out_data_out;
            1'b1 : leftShiftStage0_uid789_i_cleanups_shl_loopback0_shift_x_q = leftShiftStage0Idx1_uid787_i_cleanups_shl_loopback0_shift_x_q;
            default : leftShiftStage0_uid789_i_cleanups_shl_loopback0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_loopback5_vt_select_3(BITSELECT,170)@3
    assign i_cleanups_shl_loopback5_vt_select_3_b = leftShiftStage0_uid789_i_cleanups_shl_loopback0_shift_x_q[3:1];

    // i_cleanups_shl_loopback5_vt_join(BITJOIN,169)@3
    assign i_cleanups_shl_loopback5_vt_join_q = {i_cleanups_shl_loopback5_vt_select_3_b, GND_q};

    // i_xor_loopback4(LOGICAL,435)@3
    assign i_xor_loopback4_q = i_first_cleanup_loopback3_sel_x_b ^ VCC_q;

    // i_notcmp_loopback259(LOGICAL,330)@3
    assign i_notcmp_loopback259_q = i_exitcond576_loopback257_cmp_nsign_q ^ VCC_q;

    // i_or_loopback261(LOGICAL,331)@3
    assign i_or_loopback261_q = i_notcmp_loopback259_q | i_xor_loopback4_q;

    // i_next_cleanups_loopback262(MUX,326)@3
    assign i_next_cleanups_loopback262_s = i_or_loopback261_q;
    always @(i_next_cleanups_loopback262_s or i_llvm_fpga_pop_i4_cleanups_pop111_loopback2_out_data_out or i_cleanups_shl_loopback5_vt_join_q)
    begin
        unique case (i_next_cleanups_loopback262_s)
            1'b0 : i_next_cleanups_loopback262_q = i_llvm_fpga_pop_i4_cleanups_pop111_loopback2_out_data_out;
            1'b1 : i_next_cleanups_loopback262_q = i_cleanups_shl_loopback5_vt_join_q;
            default : i_next_cleanups_loopback262_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push111_loopback263(BLACKBOX,322)@3
    // out out_feedback_out_111@20000000
    // out out_feedback_valid_out_111@20000000
    loopback_i_llvm_fpga_push_i4_cleanups_push111_0 thei_llvm_fpga_push_i4_cleanups_push111_loopback263 (
        .in_data_in(i_next_cleanups_loopback262_q),
        .in_feedback_stall_in_111(i_llvm_fpga_pop_i4_cleanups_pop111_loopback2_out_feedback_stall_out_111),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together603_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_111(i_llvm_fpga_push_i4_cleanups_push111_loopback263_out_feedback_out_111),
        .out_feedback_valid_out_111(i_llvm_fpga_push_i4_cleanups_push111_loopback263_out_feedback_valid_out_111),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_1(DELAY,811)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_1_q <= $unsigned(in_c0_eni1800_1_tpl);
        end
    end

    // redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2(DELAY,812)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q <= $unsigned(redist0_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_1_q);
        end
    end

    // c_i4_7448(CONSTANT,163)
    assign c_i4_7448_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop111_loopback2(BLACKBOX,284)@3
    // out out_feedback_stall_out_111@20000000
    loopback_i_llvm_fpga_pop_i4_cleanups_pop111_0 thei_llvm_fpga_pop_i4_cleanups_pop111_loopback2 (
        .in_data_in(c_i4_7448_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_111(i_llvm_fpga_push_i4_cleanups_push111_loopback263_out_feedback_out_111),
        .in_feedback_valid_in_111(i_llvm_fpga_push_i4_cleanups_push111_loopback263_out_feedback_valid_out_111),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together603_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop111_loopback2_out_data_out),
        .out_feedback_stall_out_111(i_llvm_fpga_pop_i4_cleanups_pop111_loopback2_out_feedback_stall_out_111),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_loopback3_sel_x(BITSELECT,610)@3
    assign i_first_cleanup_loopback3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop111_loopback2_out_data_out[0:0];

    // c_i6_1488(CONSTANT,164)
    assign c_i6_1488_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next575_loopback264(ADD,173)@3
    assign i_fpga_indvars_iv_next575_loopback264_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv574_pop76_loopback256_out_data_out};
    assign i_fpga_indvars_iv_next575_loopback264_b = {1'b0, c_i6_1488_q};
    assign i_fpga_indvars_iv_next575_loopback264_o = $unsigned(i_fpga_indvars_iv_next575_loopback264_a) + $unsigned(i_fpga_indvars_iv_next575_loopback264_b);
    assign i_fpga_indvars_iv_next575_loopback264_q = i_fpga_indvars_iv_next575_loopback264_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next575_loopback264_sel_x(BITSELECT,506)@3
    assign bgTrunc_i_fpga_indvars_iv_next575_loopback264_sel_x_b = i_fpga_indvars_iv_next575_loopback264_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv574_push76_loopback265(BLACKBOX,324)@3
    // out out_feedback_out_76@20000000
    // out out_feedback_valid_out_76@20000000
    loopback_i_llvm_fpga_push_i6_fpga_indvars_iv574_push76_0 thei_llvm_fpga_push_i6_fpga_indvars_iv574_push76_loopback265 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next575_loopback264_sel_x_b),
        .in_feedback_stall_in_76(i_llvm_fpga_pop_i6_fpga_indvars_iv574_pop76_loopback256_out_feedback_stall_out_76),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together603_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_76(i_llvm_fpga_push_i6_fpga_indvars_iv574_push76_loopback265_out_feedback_out_76),
        .out_feedback_valid_out_76(i_llvm_fpga_push_i6_fpga_indvars_iv574_push76_loopback265_out_feedback_valid_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_30486(CONSTANT,165)
    assign c_i6_30486_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv574_pop76_loopback256(BLACKBOX,286)@3
    // out out_feedback_stall_out_76@20000000
    loopback_i_llvm_fpga_pop_i6_fpga_indvars_iv574_pop76_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv574_pop76_loopback256 (
        .in_data_in(c_i6_30486_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_76(i_llvm_fpga_push_i6_fpga_indvars_iv574_push76_loopback265_out_feedback_out_76),
        .in_feedback_valid_in_76(i_llvm_fpga_push_i6_fpga_indvars_iv574_push76_loopback265_out_feedback_valid_out_76),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together603_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv574_pop76_loopback256_out_data_out),
        .out_feedback_stall_out_76(i_llvm_fpga_pop_i6_fpga_indvars_iv574_pop76_loopback256_out_feedback_stall_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond576_loopback257_cmp_nsign(LOGICAL,781)@3
    assign i_exitcond576_loopback257_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv574_pop76_loopback256_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_loopback260(BLACKBOX,320)@3
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    loopback_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_loopback260 (
        .in_data_in(i_exitcond576_loopback257_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_loopback6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_loopback3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together603_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_loopback260_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_loopback260_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,633)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid793_i_next_initerations_loopback0_shift_x(BITSELECT,792)@2
    assign rightShiftStage0Idx1Rng1_uid793_i_next_initerations_loopback0_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop110_loopback7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid795_i_next_initerations_loopback0_shift_x(BITJOIN,794)@2
    assign rightShiftStage0Idx1_uid795_i_next_initerations_loopback0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid793_i_next_initerations_loopback0_shift_x_b};

    // valid_fanout_reg1(REG,631)@1 + 1
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

    // valid_fanout_reg2(REG,632)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations_push110_loopback9(BLACKBOX,323)@2
    // out out_feedback_out_110@20000000
    // out out_feedback_valid_out_110@20000000
    loopback_i_llvm_fpga_push_i4_initerations_push110_0 thei_llvm_fpga_push_i4_initerations_push110_loopback9 (
        .in_data_in(i_next_initerations_loopback8_vt_join_q),
        .in_feedback_stall_in_110(i_llvm_fpga_pop_i4_initerations_pop110_loopback7_out_feedback_stall_out_110),
        .in_keep_going(redist5_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_110(i_llvm_fpga_push_i4_initerations_push110_loopback9_out_feedback_out_110),
        .out_feedback_valid_out_110(i_llvm_fpga_push_i4_initerations_push110_loopback9_out_feedback_valid_out_110),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop110_loopback7(BLACKBOX,285)@2
    // out out_feedback_stall_out_110@20000000
    loopback_i_llvm_fpga_pop_i4_initerations_pop110_0 thei_llvm_fpga_pop_i4_initerations_pop110_loopback7 (
        .in_data_in(c_i4_7448_q),
        .in_dir(redist0_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_1_q),
        .in_feedback_in_110(i_llvm_fpga_push_i4_initerations_push110_loopback9_out_feedback_out_110),
        .in_feedback_valid_in_110(i_llvm_fpga_push_i4_initerations_push110_loopback9_out_feedback_valid_out_110),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop110_loopback7_out_data_out),
        .out_feedback_stall_out_110(i_llvm_fpga_pop_i4_initerations_pop110_loopback7_out_feedback_stall_out_110),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid797_i_next_initerations_loopback0_shift_x(MUX,796)@2
    assign rightShiftStage0_uid797_i_next_initerations_loopback0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid797_i_next_initerations_loopback0_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop110_loopback7_out_data_out or rightShiftStage0Idx1_uid795_i_next_initerations_loopback0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid797_i_next_initerations_loopback0_shift_x_s)
            1'b0 : rightShiftStage0_uid797_i_next_initerations_loopback0_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop110_loopback7_out_data_out;
            1'b1 : rightShiftStage0_uid797_i_next_initerations_loopback0_shift_x_q = rightShiftStage0Idx1_uid795_i_next_initerations_loopback0_shift_x_q;
            default : rightShiftStage0_uid797_i_next_initerations_loopback0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_loopback8_vt_select_2(BITSELECT,329)@2
    assign i_next_initerations_loopback8_vt_select_2_b = rightShiftStage0_uid797_i_next_initerations_loopback0_shift_x_q[2:0];

    // i_next_initerations_loopback8_vt_join(BITJOIN,328)@2
    assign i_next_initerations_loopback8_vt_join_q = {GND_q, i_next_initerations_loopback8_vt_select_2_b};

    // i_last_initeration_loopback10_sel_x(BITSELECT,611)@2
    assign i_last_initeration_loopback10_sel_x_b = i_next_initerations_loopback8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_loopback11(BLACKBOX,319)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    loopback_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_loopback11 (
        .in_data_in(i_last_initeration_loopback10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_loopback6_out_initeration_stall_out),
        .in_keep_going(redist5_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_loopback11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_loopback11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_loopback6(BLACKBOX,250)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    loopback_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_loopback6 (
        .in_data_in(in_c0_eni1800_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_loopback11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_loopback11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_loopback260_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_loopback260_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_loopback6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_loopback6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_loopback6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_loopback6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_loopback6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,167)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_loopback6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_loopback6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_loopback6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,470)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_loopback6_out_pipeline_valid_out;

    // valid_fanout_reg142(REG,772)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg142_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg142_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg77(REG,707)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg77_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg77_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select577_loopback186(BLACKBOX,212)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select577_0 thei_llvm_fpga_ffwd_dest_i16_spec_select577_loopback186 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg77_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i16_spec_select577_loopback186_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg75(REG,705)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg75_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg75_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select578_loopback181(BLACKBOX,213)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select578_0 thei_llvm_fpga_ffwd_dest_i16_spec_select578_loopback181 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg75_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i16_spec_select578_loopback181_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7477(CONSTANT,161)
    assign c_i32_7477_q = $unsigned(32'b00000000000000000000000000000111);

    // i_sel_bits521_loopback171_vt_const_31(CONSTANT,365)
    assign i_sel_bits521_loopback171_vt_const_31_q = $unsigned(29'b00000000000000000000000000000);

    // valid_fanout_reg68(REG,698)@1 + 1
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

    // valid_fanout_reg110(REG,740)@1 + 1
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

    // c_i32_1483(CONSTANT,155)
    assign c_i32_1483_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc17_loopback254(ADD,174)@2
    assign i_inc17_loopback254_a = {1'b0, i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out};
    assign i_inc17_loopback254_b = {1'b0, c_i32_1483_q};
    assign i_inc17_loopback254_o = $unsigned(i_inc17_loopback254_a) + $unsigned(i_inc17_loopback254_b);
    assign i_inc17_loopback254_q = i_inc17_loopback254_o[32:0];

    // bgTrunc_i_inc17_loopback254_sel_x(BITSELECT,507)@2
    assign bgTrunc_i_inc17_loopback254_sel_x_b = i_inc17_loopback254_q[31:0];

    // i_llvm_fpga_push_i32_k7_013_push109_loopback255(BLACKBOX,321)@2
    // out out_feedback_out_109@20000000
    // out out_feedback_valid_out_109@20000000
    loopback_i_llvm_fpga_push_i32_k7_013_push109_0 thei_llvm_fpga_push_i32_k7_013_push109_loopback255 (
        .in_data_in(bgTrunc_i_inc17_loopback254_sel_x_b),
        .in_feedback_stall_in_109(i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_feedback_stall_out_109),
        .in_keep_going(redist5_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg110_q),
        .out_data_out(),
        .out_feedback_out_109(i_llvm_fpga_push_i32_k7_013_push109_loopback255_out_feedback_out_109),
        .out_feedback_valid_out_109(i_llvm_fpga_push_i32_k7_013_push109_loopback255_out_feedback_valid_out_109),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0452(CONSTANT,154)
    assign c_i32_0452_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_k7_013_pop109_loopback108(BLACKBOX,283)@2
    // out out_feedback_stall_out_109@20000000
    loopback_i_llvm_fpga_pop_i32_k7_013_pop109_0 thei_llvm_fpga_pop_i32_k7_013_pop109_loopback108 (
        .in_data_in(c_i32_0452_q),
        .in_dir(redist0_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_1_q),
        .in_feedback_in_109(i_llvm_fpga_push_i32_k7_013_push109_loopback255_out_feedback_out_109),
        .in_feedback_valid_in_109(i_llvm_fpga_push_i32_k7_013_push109_loopback255_out_feedback_valid_out_109),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg68_q),
        .out_data_out(i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out),
        .out_feedback_stall_out_109(i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_feedback_stall_out_109),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1(DELAY,815)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out);
        end
    end

    // i_sel_bits521_loopback171(LOGICAL,364)@3
    assign i_sel_bits521_loopback171_q = redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q & c_i32_7477_q;

    // i_sel_bits521_loopback171_vt_select_2(BITSELECT,367)@3
    assign i_sel_bits521_loopback171_vt_select_2_b = i_sel_bits521_loopback171_q[2:0];

    // i_sel_bits521_loopback171_vt_join(BITJOIN,366)@3
    assign i_sel_bits521_loopback171_vt_join_q = {i_sel_bits521_loopback171_vt_const_31_q, i_sel_bits521_loopback171_vt_select_2_b};

    // dupName_5_comparator_x(LOGICAL,551)@3
    assign dupName_5_comparator_x_q = $unsigned(i_sel_bits521_loopback171_vt_join_q == c_i32_7477_q ? 1'b1 : 1'b0);

    // c_i32_6478(CONSTANT,160)
    assign c_i32_6478_q = $unsigned(32'b00000000000000000000000000000110);

    // dupName_4_comparator_x(LOGICAL,549)@3
    assign dupName_4_comparator_x_q = $unsigned(i_sel_bits521_loopback171_vt_join_q == c_i32_6478_q ? 1'b1 : 1'b0);

    // c_i32_5479(CONSTANT,159)
    assign c_i32_5479_q = $unsigned(32'b00000000000000000000000000000101);

    // dupName_3_comparator_x(LOGICAL,547)@3
    assign dupName_3_comparator_x_q = $unsigned(i_sel_bits521_loopback171_vt_join_q == c_i32_5479_q ? 1'b1 : 1'b0);

    // c_i32_4480(CONSTANT,158)
    assign c_i32_4480_q = $unsigned(32'b00000000000000000000000000000100);

    // dupName_2_comparator_x(LOGICAL,545)@3
    assign dupName_2_comparator_x_q = $unsigned(i_sel_bits521_loopback171_vt_join_q == c_i32_4480_q ? 1'b1 : 1'b0);

    // c_i32_3481(CONSTANT,157)
    assign c_i32_3481_q = $unsigned(32'b00000000000000000000000000000011);

    // dupName_1_comparator_x(LOGICAL,543)@3
    assign dupName_1_comparator_x_q = $unsigned(i_sel_bits521_loopback171_vt_join_q == c_i32_3481_q ? 1'b1 : 1'b0);

    // c_i32_2482(CONSTANT,156)
    assign c_i32_2482_q = $unsigned(32'b00000000000000000000000000000010);

    // dupName_0_comparator_x(LOGICAL,541)@3
    assign dupName_0_comparator_x_q = $unsigned(i_sel_bits521_loopback171_vt_join_q == c_i32_2482_q ? 1'b1 : 1'b0);

    // comparator(LOGICAL,166)@3
    assign comparator_q = $unsigned(i_sel_bits521_loopback171_vt_join_q == c_i32_1483_q ? 1'b1 : 1'b0);

    // valid_fanout_reg76(REG,706)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg76_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg76_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x(BLACKBOX,615)@3
    loopback_i_llvm_fpga_ffwd_dest_s_case_asA000000Zsign558646_loopback0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x (
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg76_q),
        .in_intel_reserved_ffwd_68_0_0_tpl(in_intel_reserved_ffwd_68_0_0_tpl),
        .in_intel_reserved_ffwd_68_0_1_tpl(in_intel_reserved_ffwd_68_0_1_tpl),
        .in_intel_reserved_ffwd_68_0_2_tpl(in_intel_reserved_ffwd_68_0_2_tpl),
        .in_intel_reserved_ffwd_68_0_3_tpl(in_intel_reserved_ffwd_68_0_3_tpl),
        .in_intel_reserved_ffwd_68_0_4_tpl(in_intel_reserved_ffwd_68_0_4_tpl),
        .in_intel_reserved_ffwd_68_0_5_tpl(in_intel_reserved_ffwd_68_0_5_tpl),
        .in_intel_reserved_ffwd_68_0_6_tpl(in_intel_reserved_ffwd_68_0_6_tpl),
        .in_intel_reserved_ffwd_68_0_7_tpl(in_intel_reserved_ffwd_68_0_7_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_68_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_0_tpl),
        .out_dest_data_out_68_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_1_tpl),
        .out_dest_data_out_68_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_2_tpl),
        .out_dest_data_out_68_0_3_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_3_tpl),
        .out_dest_data_out_68_0_4_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_4_tpl),
        .out_dest_data_out_68_0_5_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_5_tpl),
        .out_dest_data_out_68_0_6_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_6_tpl),
        .out_dest_data_out_68_0_7_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_comparator_x(LOGICAL,553)@3
    assign dupName_6_comparator_x_q = $unsigned(i_sel_bits521_loopback171_vt_join_q == c_i32_0452_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt559_loopback183(SELECTOR,180)@3
    always @(dupName_6_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_0_tpl or comparator_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_1_tpl or dupName_0_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_2_tpl or dupName_1_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_3_tpl or dupName_2_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_4_tpl or dupName_3_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_5_tpl or dupName_4_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_6_tpl or dupName_5_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_7_tpl or i_llvm_fpga_ffwd_dest_i16_spec_select578_loopback181_out_dest_data_out_1_0)
    begin
        i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt559_loopback183_q = i_llvm_fpga_ffwd_dest_i16_spec_select578_loopback181_out_dest_data_out_1_0;
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt559_loopback183_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_7_tpl;
        end
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt559_loopback183_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_6_tpl;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt559_loopback183_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_5_tpl;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt559_loopback183_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_4_tpl;
        end
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt559_loopback183_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_3_tpl;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt559_loopback183_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_2_tpl;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt559_loopback183_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_1_tpl;
        end
        if (dupName_6_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt559_loopback183_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign558646_loopback182_aunroll_x_out_dest_data_out_68_0_0_tpl;
        end
    end

    // i_sel_shr560_loopback184_vt_const_31(CONSTANT,368)
    assign i_sel_shr560_loopback184_vt_const_31_q = $unsigned(3'b000);

    // rightShiftStage1Idx1Pad2_uid807_i_sel_shr560_loopback0_shift_x(CONSTANT,806)
    assign rightShiftStage1Idx1Pad2_uid807_i_sel_shr560_loopback0_shift_x_q = $unsigned(2'b00);

    // rightShiftStage1Idx1Rng2_uid806_i_sel_shr560_loopback0_shift_x(BITSELECT,805)@3
    assign rightShiftStage1Idx1Rng2_uid806_i_sel_shr560_loopback0_shift_x_b = rightShiftStage0_uid805_i_sel_shr560_loopback0_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid808_i_sel_shr560_loopback0_shift_x(BITJOIN,807)@3
    assign rightShiftStage1Idx1_uid808_i_sel_shr560_loopback0_shift_x_q = {rightShiftStage1Idx1Pad2_uid807_i_sel_shr560_loopback0_shift_x_q, rightShiftStage1Idx1Rng2_uid806_i_sel_shr560_loopback0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid801_i_sel_shr560_loopback0_shift_x(BITSELECT,800)@3
    assign rightShiftStage0Idx1Rng1_uid801_i_sel_shr560_loopback0_shift_x_b = redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q[31:1];

    // rightShiftStage0Idx1_uid803_i_sel_shr560_loopback0_shift_x(BITJOIN,802)@3
    assign rightShiftStage0Idx1_uid803_i_sel_shr560_loopback0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid801_i_sel_shr560_loopback0_shift_x_b};

    // rightShiftStage0_uid805_i_sel_shr560_loopback0_shift_x(MUX,804)@3
    assign rightShiftStage0_uid805_i_sel_shr560_loopback0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid805_i_sel_shr560_loopback0_shift_x_s or redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q or rightShiftStage0Idx1_uid803_i_sel_shr560_loopback0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid805_i_sel_shr560_loopback0_shift_x_s)
            1'b0 : rightShiftStage0_uid805_i_sel_shr560_loopback0_shift_x_q = redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q;
            1'b1 : rightShiftStage0_uid805_i_sel_shr560_loopback0_shift_x_q = rightShiftStage0Idx1_uid803_i_sel_shr560_loopback0_shift_x_q;
            default : rightShiftStage0_uid805_i_sel_shr560_loopback0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid810_i_sel_shr560_loopback0_shift_x(MUX,809)@3
    assign rightShiftStage1_uid810_i_sel_shr560_loopback0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid810_i_sel_shr560_loopback0_shift_x_s or rightShiftStage0_uid805_i_sel_shr560_loopback0_shift_x_q or rightShiftStage1Idx1_uid808_i_sel_shr560_loopback0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid810_i_sel_shr560_loopback0_shift_x_s)
            1'b0 : rightShiftStage1_uid810_i_sel_shr560_loopback0_shift_x_q = rightShiftStage0_uid805_i_sel_shr560_loopback0_shift_x_q;
            1'b1 : rightShiftStage1_uid810_i_sel_shr560_loopback0_shift_x_q = rightShiftStage1Idx1_uid808_i_sel_shr560_loopback0_shift_x_q;
            default : rightShiftStage1_uid810_i_sel_shr560_loopback0_shift_x_q = 32'b0;
        endcase
    end

    // i_sel_shr560_loopback184_vt_select_28(BITSELECT,370)@3
    assign i_sel_shr560_loopback184_vt_select_28_b = rightShiftStage1_uid810_i_sel_shr560_loopback0_shift_x_q[28:0];

    // i_sel_shr560_loopback184_vt_join(BITJOIN,369)@3
    assign i_sel_shr560_loopback184_vt_join_q = {i_sel_shr560_loopback184_vt_const_31_q, i_sel_shr560_loopback184_vt_select_28_b};

    // dupName_33_comparator_x(LOGICAL,605)@3
    assign dupName_33_comparator_x_q = $unsigned(i_sel_shr560_loopback184_vt_join_q == c_i32_3481_q ? 1'b1 : 1'b0);

    // valid_fanout_reg73(REG,703)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg73_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg73_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select579_loopback178(BLACKBOX,214)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select579_0 thei_llvm_fpga_ffwd_dest_i16_spec_select579_loopback178 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg73_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i16_spec_select579_loopback178_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg74(REG,704)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg74_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg74_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x(BLACKBOX,614)@3
    loopback_i_llvm_fpga_ffwd_dest_s_case_asA000000Zsign548645_loopback0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x (
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg74_q),
        .in_intel_reserved_ffwd_67_0_0_tpl(in_intel_reserved_ffwd_67_0_0_tpl),
        .in_intel_reserved_ffwd_67_0_1_tpl(in_intel_reserved_ffwd_67_0_1_tpl),
        .in_intel_reserved_ffwd_67_0_2_tpl(in_intel_reserved_ffwd_67_0_2_tpl),
        .in_intel_reserved_ffwd_67_0_3_tpl(in_intel_reserved_ffwd_67_0_3_tpl),
        .in_intel_reserved_ffwd_67_0_4_tpl(in_intel_reserved_ffwd_67_0_4_tpl),
        .in_intel_reserved_ffwd_67_0_5_tpl(in_intel_reserved_ffwd_67_0_5_tpl),
        .in_intel_reserved_ffwd_67_0_6_tpl(in_intel_reserved_ffwd_67_0_6_tpl),
        .in_intel_reserved_ffwd_67_0_7_tpl(in_intel_reserved_ffwd_67_0_7_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_67_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_0_tpl),
        .out_dest_data_out_67_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_1_tpl),
        .out_dest_data_out_67_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_2_tpl),
        .out_dest_data_out_67_0_3_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_3_tpl),
        .out_dest_data_out_67_0_4_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_4_tpl),
        .out_dest_data_out_67_0_5_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_5_tpl),
        .out_dest_data_out_67_0_6_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_6_tpl),
        .out_dest_data_out_67_0_7_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt549_loopback180(SELECTOR,179)@3
    always @(dupName_6_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_0_tpl or comparator_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_1_tpl or dupName_0_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_2_tpl or dupName_1_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_3_tpl or dupName_2_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_4_tpl or dupName_3_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_5_tpl or dupName_4_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_6_tpl or dupName_5_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_7_tpl or i_llvm_fpga_ffwd_dest_i16_spec_select579_loopback178_out_dest_data_out_1_0)
    begin
        i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt549_loopback180_q = i_llvm_fpga_ffwd_dest_i16_spec_select579_loopback178_out_dest_data_out_1_0;
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt549_loopback180_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_7_tpl;
        end
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt549_loopback180_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_6_tpl;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt549_loopback180_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_5_tpl;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt549_loopback180_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_4_tpl;
        end
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt549_loopback180_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_3_tpl;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt549_loopback180_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_2_tpl;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt549_loopback180_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_1_tpl;
        end
        if (dupName_6_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt549_loopback180_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign548645_loopback179_aunroll_x_out_dest_data_out_67_0_0_tpl;
        end
    end

    // dupName_32_comparator_x(LOGICAL,604)@3
    assign dupName_32_comparator_x_q = $unsigned(i_sel_shr560_loopback184_vt_join_q == c_i32_2482_q ? 1'b1 : 1'b0);

    // valid_fanout_reg71(REG,701)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg71_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg71_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select580_loopback175(BLACKBOX,215)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select580_0 thei_llvm_fpga_ffwd_dest_i16_spec_select580_loopback175 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg71_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i16_spec_select580_loopback175_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg72(REG,702)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg72_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg72_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x(BLACKBOX,613)@3
    loopback_i_llvm_fpga_ffwd_dest_s_case_asA000000Zsign538644_loopback0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x (
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg72_q),
        .in_intel_reserved_ffwd_66_0_0_tpl(in_intel_reserved_ffwd_66_0_0_tpl),
        .in_intel_reserved_ffwd_66_0_1_tpl(in_intel_reserved_ffwd_66_0_1_tpl),
        .in_intel_reserved_ffwd_66_0_2_tpl(in_intel_reserved_ffwd_66_0_2_tpl),
        .in_intel_reserved_ffwd_66_0_3_tpl(in_intel_reserved_ffwd_66_0_3_tpl),
        .in_intel_reserved_ffwd_66_0_4_tpl(in_intel_reserved_ffwd_66_0_4_tpl),
        .in_intel_reserved_ffwd_66_0_5_tpl(in_intel_reserved_ffwd_66_0_5_tpl),
        .in_intel_reserved_ffwd_66_0_6_tpl(in_intel_reserved_ffwd_66_0_6_tpl),
        .in_intel_reserved_ffwd_66_0_7_tpl(in_intel_reserved_ffwd_66_0_7_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_66_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_0_tpl),
        .out_dest_data_out_66_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_1_tpl),
        .out_dest_data_out_66_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_2_tpl),
        .out_dest_data_out_66_0_3_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_3_tpl),
        .out_dest_data_out_66_0_4_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_4_tpl),
        .out_dest_data_out_66_0_5_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_5_tpl),
        .out_dest_data_out_66_0_6_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_6_tpl),
        .out_dest_data_out_66_0_7_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt539_loopback177(SELECTOR,178)@3
    always @(dupName_6_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_0_tpl or comparator_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_1_tpl or dupName_0_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_2_tpl or dupName_1_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_3_tpl or dupName_2_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_4_tpl or dupName_3_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_5_tpl or dupName_4_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_6_tpl or dupName_5_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_7_tpl or i_llvm_fpga_ffwd_dest_i16_spec_select580_loopback175_out_dest_data_out_1_0)
    begin
        i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt539_loopback177_q = i_llvm_fpga_ffwd_dest_i16_spec_select580_loopback175_out_dest_data_out_1_0;
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt539_loopback177_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_7_tpl;
        end
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt539_loopback177_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_6_tpl;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt539_loopback177_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_5_tpl;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt539_loopback177_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_4_tpl;
        end
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt539_loopback177_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_3_tpl;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt539_loopback177_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_2_tpl;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt539_loopback177_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_1_tpl;
        end
        if (dupName_6_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt539_loopback177_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_6s_case_assign538644_loopback176_aunroll_x_out_dest_data_out_66_0_0_tpl;
        end
    end

    // dupName_31_comparator_x(LOGICAL,603)@3
    assign dupName_31_comparator_x_q = $unsigned(i_sel_shr560_loopback184_vt_join_q == c_i32_1483_q ? 1'b1 : 1'b0);

    // valid_fanout_reg69(REG,699)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg69_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg69_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select581_loopback172(BLACKBOX,216)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select581_0 thei_llvm_fpga_ffwd_dest_i16_spec_select581_loopback172 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg69_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i16_spec_select581_loopback172_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg70(REG,700)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg70_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg70_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x(BLACKBOX,612)@3
    loopback_i_llvm_fpga_ffwd_dest_s_case_asA000000Zsign528643_loopback0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x (
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg70_q),
        .in_intel_reserved_ffwd_65_0_0_tpl(in_intel_reserved_ffwd_65_0_0_tpl),
        .in_intel_reserved_ffwd_65_0_1_tpl(in_intel_reserved_ffwd_65_0_1_tpl),
        .in_intel_reserved_ffwd_65_0_2_tpl(in_intel_reserved_ffwd_65_0_2_tpl),
        .in_intel_reserved_ffwd_65_0_3_tpl(in_intel_reserved_ffwd_65_0_3_tpl),
        .in_intel_reserved_ffwd_65_0_4_tpl(in_intel_reserved_ffwd_65_0_4_tpl),
        .in_intel_reserved_ffwd_65_0_5_tpl(in_intel_reserved_ffwd_65_0_5_tpl),
        .in_intel_reserved_ffwd_65_0_6_tpl(in_intel_reserved_ffwd_65_0_6_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .out_dest_data_out_65_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_0_tpl),
        .out_dest_data_out_65_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_1_tpl),
        .out_dest_data_out_65_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_2_tpl),
        .out_dest_data_out_65_0_3_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_3_tpl),
        .out_dest_data_out_65_0_4_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_4_tpl),
        .out_dest_data_out_65_0_5_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_5_tpl),
        .out_dest_data_out_65_0_6_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt529_loopback174(SELECTOR,177)@3
    always @(comparator_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_0_tpl or dupName_0_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_1_tpl or dupName_1_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_2_tpl or dupName_2_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_3_tpl or dupName_3_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_4_tpl or dupName_4_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_5_tpl or dupName_5_comparator_x_q or i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_6_tpl or i_llvm_fpga_ffwd_dest_i16_spec_select581_loopback172_out_dest_data_out_1_0)
    begin
        i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt529_loopback174_q = i_llvm_fpga_ffwd_dest_i16_spec_select581_loopback172_out_dest_data_out_1_0;
        if (dupName_5_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt529_loopback174_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_6_tpl;
        end
        if (dupName_4_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt529_loopback174_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_5_tpl;
        end
        if (dupName_3_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt529_loopback174_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_4_tpl;
        end
        if (dupName_2_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt529_loopback174_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_3_tpl;
        end
        if (dupName_1_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt529_loopback174_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_2_tpl;
        end
        if (dupName_0_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt529_loopback174_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_1_tpl;
        end
        if (comparator_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt529_loopback174_q = i_llvm_fpga_ffwd_dest_s_case_assign_struct_loopback_fpgaunique_5s_case_assign528643_loopback173_aunroll_x_out_dest_data_out_65_0_0_tpl;
        end
    end

    // dupName_30_comparator_x(LOGICAL,601)@3
    assign dupName_30_comparator_x_q = $unsigned(i_sel_shr560_loopback184_vt_join_q == c_i32_0452_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187(SELECTOR,176)@3
    always @(dupName_30_comparator_x_q or i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt529_loopback174_q or dupName_31_comparator_x_q or i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt539_loopback177_q or dupName_32_comparator_x_q or i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt549_loopback180_q or dupName_33_comparator_x_q or i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt559_loopback183_q or i_llvm_fpga_ffwd_dest_i16_spec_select577_loopback186_out_dest_data_out_1_0)
    begin
        i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q = i_llvm_fpga_ffwd_dest_i16_spec_select577_loopback186_out_dest_data_out_1_0;
        if (dupName_33_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q = i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt559_loopback183_q;
        end
        if (dupName_32_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q = i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt549_loopback180_q;
        end
        if (dupName_31_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q = i_llvm_fpga_case_i16_i32_v8i32_s_case_assign_struct_loopback_fpgaunique_6s_case_stmt539_loopback177_q;
        end
        if (dupName_30_comparator_x_q == 1'b1)
        begin
            i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q = i_llvm_fpga_case_i16_i32_v7i32_s_case_assign_struct_loopback_fpgaunique_5s_case_stmt529_loopback174_q;
        end
    end

    // valid_fanout_reg4(REG,634)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select442642_loopback12(BLACKBOX,211)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select442642_0 thei_llvm_fpga_ffwd_dest_i16_spec_select442642_loopback12 (
        .in_intel_reserved_ffwd_64_0(in_intel_reserved_ffwd_64_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_64_0(i_llvm_fpga_ffwd_dest_i16_spec_select442642_loopback12_out_dest_data_out_64_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,635)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg109(REG,739)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg109_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg109_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_95_2_push77_loopback253(BLACKBOX,318)@3
    // out out_feedback_out_77@20000000
    // out out_feedback_valid_out_77@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_95_2_push77_0 thei_llvm_fpga_push_i16_out_sroa_95_2_push77_loopback253 (
        .in_data_in(i_spec_select473_loopback252_q),
        .in_feedback_stall_in_77(i_llvm_fpga_pop_i16_out_sroa_95_2_pop77_loopback13_out_feedback_stall_out_77),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg109_q),
        .out_data_out(),
        .out_feedback_out_77(i_llvm_fpga_push_i16_out_sroa_95_2_push77_loopback253_out_feedback_out_77),
        .out_feedback_valid_out_77(i_llvm_fpga_push_i16_out_sroa_95_2_push77_loopback253_out_feedback_valid_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i16_undef451(CONSTANT,4)
    assign c_i16_undef451_q = $unsigned(16'b0000000000000000);

    // i_llvm_fpga_pop_i16_out_sroa_95_2_pop77_loopback13(BLACKBOX,282)@3
    // out out_feedback_stall_out_77@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_95_2_pop77_0 thei_llvm_fpga_pop_i16_out_sroa_95_2_pop77_loopback13 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_77(i_llvm_fpga_push_i16_out_sroa_95_2_push77_loopback253_out_feedback_out_77),
        .in_feedback_valid_in_77(i_llvm_fpga_push_i16_out_sroa_95_2_push77_loopback253_out_feedback_valid_out_77),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_95_2_pop77_loopback13_out_data_out),
        .out_feedback_stall_out_77(i_llvm_fpga_pop_i16_out_sroa_95_2_pop77_loopback13_out_feedback_stall_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_95_2_replace_phi_loopback14(MUX,363)@3
    assign i_out_sroa_95_2_replace_phi_loopback14_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_95_2_replace_phi_loopback14_s or i_llvm_fpga_pop_i16_out_sroa_95_2_pop77_loopback13_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select442642_loopback12_out_dest_data_out_64_0)
    begin
        unique case (i_out_sroa_95_2_replace_phi_loopback14_s)
            1'b0 : i_out_sroa_95_2_replace_phi_loopback14_q = i_llvm_fpga_pop_i16_out_sroa_95_2_pop77_loopback13_out_data_out;
            1'b1 : i_out_sroa_95_2_replace_phi_loopback14_q = i_llvm_fpga_ffwd_dest_i16_spec_select442642_loopback12_out_dest_data_out_64_0;
            default : i_out_sroa_95_2_replace_phi_loopback14_q = 16'b0;
        endcase
    end

    // c_i32_31453_recast_x(CONSTANT,532)
    assign c_i32_31453_recast_x_q = $unsigned(32'b00000000000000000000000000011111);

    // i_unnamed_loopback109(LOGICAL,402)@3
    assign i_unnamed_loopback109_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_31453_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select473_loopback252(MUX,401)@3
    assign i_spec_select473_loopback252_s = i_unnamed_loopback109_q;
    always @(i_spec_select473_loopback252_s or i_out_sroa_95_2_replace_phi_loopback14_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select473_loopback252_s)
            1'b0 : i_spec_select473_loopback252_q = i_out_sroa_95_2_replace_phi_loopback14_q;
            1'b1 : i_spec_select473_loopback252_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select473_loopback252_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback108_loopback297(BLACKBOX,226)@3
    // out out_intel_reserved_ffwd_100_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_108_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback108_loopback297 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_100_0(i_spec_select473_loopback252_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg142_q),
        .out_intel_reserved_ffwd_100_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback108_loopback297_out_intel_reserved_ffwd_100_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,504)
    assign out_intel_reserved_ffwd_100_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback108_loopback297_out_intel_reserved_ffwd_100_0;

    // valid_fanout_reg111(REG,741)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg111_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg111_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg66(REG,696)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg66_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg66_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select412612_loopback105(BLACKBOX,181)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select412612_0 thei_llvm_fpga_ffwd_dest_i16_spec_select412612_loopback105 (
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg66_q),
        .out_dest_data_out_33_0(i_llvm_fpga_ffwd_dest_i16_spec_select412612_loopback105_out_dest_data_out_33_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg67(REG,697)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg67_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg67_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg78(REG,708)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg78_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg78_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_0_2_push108_loopback191(BLACKBOX,287)@3
    // out out_feedback_out_108@20000000
    // out out_feedback_valid_out_108@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_0_2_push108_0 thei_llvm_fpga_push_i16_out_sroa_0_2_push108_loopback191 (
        .in_data_in(i_spec_select443_loopback190_q),
        .in_feedback_stall_in_108(i_llvm_fpga_pop_i16_out_sroa_0_2_pop108_loopback106_out_feedback_stall_out_108),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg78_q),
        .out_data_out(),
        .out_feedback_out_108(i_llvm_fpga_push_i16_out_sroa_0_2_push108_loopback191_out_feedback_out_108),
        .out_feedback_valid_out_108(i_llvm_fpga_push_i16_out_sroa_0_2_push108_loopback191_out_feedback_valid_out_108),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_0_2_pop108_loopback106(BLACKBOX,251)@3
    // out out_feedback_stall_out_108@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_0_2_pop108_0 thei_llvm_fpga_pop_i16_out_sroa_0_2_pop108_loopback106 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_108(i_llvm_fpga_push_i16_out_sroa_0_2_push108_loopback191_out_feedback_out_108),
        .in_feedback_valid_in_108(i_llvm_fpga_push_i16_out_sroa_0_2_push108_loopback191_out_feedback_valid_out_108),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg67_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_0_2_pop108_loopback106_out_data_out),
        .out_feedback_stall_out_108(i_llvm_fpga_pop_i16_out_sroa_0_2_pop108_loopback106_out_feedback_stall_out_108),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_0_2_replace_phi_loopback107(MUX,332)@3
    assign i_out_sroa_0_2_replace_phi_loopback107_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_0_2_replace_phi_loopback107_s or i_llvm_fpga_pop_i16_out_sroa_0_2_pop108_loopback106_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select412612_loopback105_out_dest_data_out_33_0)
    begin
        unique case (i_out_sroa_0_2_replace_phi_loopback107_s)
            1'b0 : i_out_sroa_0_2_replace_phi_loopback107_q = i_llvm_fpga_pop_i16_out_sroa_0_2_pop108_loopback106_out_data_out;
            1'b1 : i_out_sroa_0_2_replace_phi_loopback107_q = i_llvm_fpga_ffwd_dest_i16_spec_select412612_loopback105_out_dest_data_out_33_0;
            default : i_out_sroa_0_2_replace_phi_loopback107_q = 16'b0;
        endcase
    end

    // i_unnamed_loopback188(LOGICAL,433)@3
    assign i_unnamed_loopback188_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_0452_q ? 1'b1 : 1'b0);

    // i_spec_select443_loopback190(MUX,371)@3
    assign i_spec_select443_loopback190_s = i_unnamed_loopback188_q;
    always @(i_spec_select443_loopback190_s or i_out_sroa_0_2_replace_phi_loopback107_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select443_loopback190_s)
            1'b0 : i_spec_select443_loopback190_q = i_out_sroa_0_2_replace_phi_loopback107_q;
            1'b1 : i_spec_select443_loopback190_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select443_loopback190_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback77_loopback266(BLACKBOX,227)@3
    // out out_intel_reserved_ffwd_69_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_77_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback77_loopback266 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_69_0(i_spec_select443_loopback190_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg111_q),
        .out_intel_reserved_ffwd_69_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback77_loopback266_out_intel_reserved_ffwd_69_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,542)
    assign out_intel_reserved_ffwd_69_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback77_loopback266_out_intel_reserved_ffwd_69_0;

    // valid_fanout_reg112(REG,742)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg112_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg112_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg64(REG,694)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg64_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg64_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_unnamed_loopback76_loopback102(BLACKBOX,217)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_unnamed_76_loopback0 thei_llvm_fpga_ffwd_dest_i16_unnamed_loopback76_loopback102 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg64_q),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i16_unnamed_loopback76_loopback102_out_dest_data_out_34_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg65(REG,695)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg65_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg65_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg79(REG,709)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg79_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg79_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_5_2_push107_loopback193(BLACKBOX,305)@3
    // out out_feedback_out_107@20000000
    // out out_feedback_valid_out_107@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_5_2_push107_0 thei_llvm_fpga_push_i16_out_sroa_5_2_push107_loopback193 (
        .in_data_in(i_unnamed_loopback192_q),
        .in_feedback_stall_in_107(i_llvm_fpga_pop_i16_out_sroa_5_2_pop107_loopback103_out_feedback_stall_out_107),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg79_q),
        .out_data_out(),
        .out_feedback_out_107(i_llvm_fpga_push_i16_out_sroa_5_2_push107_loopback193_out_feedback_out_107),
        .out_feedback_valid_out_107(i_llvm_fpga_push_i16_out_sroa_5_2_push107_loopback193_out_feedback_valid_out_107),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_5_2_pop107_loopback103(BLACKBOX,269)@3
    // out out_feedback_stall_out_107@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_5_2_pop107_0 thei_llvm_fpga_pop_i16_out_sroa_5_2_pop107_loopback103 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_107(i_llvm_fpga_push_i16_out_sroa_5_2_push107_loopback193_out_feedback_out_107),
        .in_feedback_valid_in_107(i_llvm_fpga_push_i16_out_sroa_5_2_push107_loopback193_out_feedback_valid_out_107),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg65_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_5_2_pop107_loopback103_out_data_out),
        .out_feedback_stall_out_107(i_llvm_fpga_pop_i16_out_sroa_5_2_pop107_loopback103_out_feedback_stall_out_107),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_5_2_replace_phi_loopback104(MUX,350)@3
    assign i_out_sroa_5_2_replace_phi_loopback104_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_5_2_replace_phi_loopback104_s or i_llvm_fpga_pop_i16_out_sroa_5_2_pop107_loopback103_out_data_out or i_llvm_fpga_ffwd_dest_i16_unnamed_loopback76_loopback102_out_dest_data_out_34_0)
    begin
        unique case (i_out_sroa_5_2_replace_phi_loopback104_s)
            1'b0 : i_out_sroa_5_2_replace_phi_loopback104_q = i_llvm_fpga_pop_i16_out_sroa_5_2_pop107_loopback103_out_data_out;
            1'b1 : i_out_sroa_5_2_replace_phi_loopback104_q = i_llvm_fpga_ffwd_dest_i16_unnamed_loopback76_loopback102_out_dest_data_out_34_0;
            default : i_out_sroa_5_2_replace_phi_loopback104_q = 16'b0;
        endcase
    end

    // i_unnamed_loopback169(LOGICAL,432)@3
    assign i_unnamed_loopback169_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_1483_q ? 1'b1 : 1'b0);

    // i_unnamed_loopback192(MUX,434)@3
    assign i_unnamed_loopback192_s = i_unnamed_loopback169_q;
    always @(i_unnamed_loopback192_s or i_out_sroa_5_2_replace_phi_loopback104_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_unnamed_loopback192_s)
            1'b0 : i_unnamed_loopback192_q = i_out_sroa_5_2_replace_phi_loopback104_q;
            1'b1 : i_unnamed_loopback192_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_unnamed_loopback192_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback78_loopback267(BLACKBOX,228)@3
    // out out_intel_reserved_ffwd_70_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_78_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback78_loopback267 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_70_0(i_unnamed_loopback192_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg112_q),
        .out_intel_reserved_ffwd_70_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback78_loopback267_out_intel_reserved_ffwd_70_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,544)
    assign out_intel_reserved_ffwd_70_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback78_loopback267_out_intel_reserved_ffwd_70_0;

    // valid_fanout_reg113(REG,743)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg113_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg113_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg62(REG,692)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg62_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg62_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select413613_loopback99(BLACKBOX,182)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select413613_0 thei_llvm_fpga_ffwd_dest_i16_spec_select413613_loopback99 (
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg62_q),
        .out_dest_data_out_35_0(i_llvm_fpga_ffwd_dest_i16_spec_select413613_loopback99_out_dest_data_out_35_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg63(REG,693)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg63_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg63_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg80(REG,710)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg80_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg80_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_8_2_push106_loopback195(BLACKBOX,316)@3
    // out out_feedback_out_106@20000000
    // out out_feedback_valid_out_106@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_8_2_push106_0 thei_llvm_fpga_push_i16_out_sroa_8_2_push106_loopback195 (
        .in_data_in(i_spec_select444_loopback194_q),
        .in_feedback_stall_in_106(i_llvm_fpga_pop_i16_out_sroa_8_2_pop106_loopback100_out_feedback_stall_out_106),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg80_q),
        .out_data_out(),
        .out_feedback_out_106(i_llvm_fpga_push_i16_out_sroa_8_2_push106_loopback195_out_feedback_out_106),
        .out_feedback_valid_out_106(i_llvm_fpga_push_i16_out_sroa_8_2_push106_loopback195_out_feedback_valid_out_106),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_8_2_pop106_loopback100(BLACKBOX,280)@3
    // out out_feedback_stall_out_106@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_8_2_pop106_0 thei_llvm_fpga_pop_i16_out_sroa_8_2_pop106_loopback100 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_106(i_llvm_fpga_push_i16_out_sroa_8_2_push106_loopback195_out_feedback_out_106),
        .in_feedback_valid_in_106(i_llvm_fpga_push_i16_out_sroa_8_2_push106_loopback195_out_feedback_valid_out_106),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg63_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_8_2_pop106_loopback100_out_data_out),
        .out_feedback_stall_out_106(i_llvm_fpga_pop_i16_out_sroa_8_2_pop106_loopback100_out_feedback_stall_out_106),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_8_2_replace_phi_loopback101(MUX,361)@3
    assign i_out_sroa_8_2_replace_phi_loopback101_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_8_2_replace_phi_loopback101_s or i_llvm_fpga_pop_i16_out_sroa_8_2_pop106_loopback100_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select413613_loopback99_out_dest_data_out_35_0)
    begin
        unique case (i_out_sroa_8_2_replace_phi_loopback101_s)
            1'b0 : i_out_sroa_8_2_replace_phi_loopback101_q = i_llvm_fpga_pop_i16_out_sroa_8_2_pop106_loopback100_out_data_out;
            1'b1 : i_out_sroa_8_2_replace_phi_loopback101_q = i_llvm_fpga_ffwd_dest_i16_spec_select413613_loopback99_out_dest_data_out_35_0;
            default : i_out_sroa_8_2_replace_phi_loopback101_q = 16'b0;
        endcase
    end

    // i_unnamed_loopback167(LOGICAL,431)@3
    assign i_unnamed_loopback167_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_2482_q ? 1'b1 : 1'b0);

    // i_spec_select444_loopback194(MUX,372)@3
    assign i_spec_select444_loopback194_s = i_unnamed_loopback167_q;
    always @(i_spec_select444_loopback194_s or i_out_sroa_8_2_replace_phi_loopback101_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select444_loopback194_s)
            1'b0 : i_spec_select444_loopback194_q = i_out_sroa_8_2_replace_phi_loopback101_q;
            1'b1 : i_spec_select444_loopback194_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select444_loopback194_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback79_loopback268(BLACKBOX,229)@3
    // out out_intel_reserved_ffwd_71_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_79_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback79_loopback268 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_71_0(i_spec_select444_loopback194_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg113_q),
        .out_intel_reserved_ffwd_71_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback79_loopback268_out_intel_reserved_ffwd_71_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,546)
    assign out_intel_reserved_ffwd_71_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback79_loopback268_out_intel_reserved_ffwd_71_0;

    // valid_fanout_reg114(REG,744)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg114_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg114_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg60(REG,690)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg60_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg60_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select414614_loopback96(BLACKBOX,183)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select414614_0 thei_llvm_fpga_ffwd_dest_i16_spec_select414614_loopback96 (
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg60_q),
        .out_dest_data_out_36_0(i_llvm_fpga_ffwd_dest_i16_spec_select414614_loopback96_out_dest_data_out_36_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg61(REG,691)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg61_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg61_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg81(REG,711)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg81_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg81_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_11_2_push105_loopback197(BLACKBOX,288)@3
    // out out_feedback_out_105@20000000
    // out out_feedback_valid_out_105@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_11_2_push105_0 thei_llvm_fpga_push_i16_out_sroa_11_2_push105_loopback197 (
        .in_data_in(i_spec_select445_loopback196_q),
        .in_feedback_stall_in_105(i_llvm_fpga_pop_i16_out_sroa_11_2_pop105_loopback97_out_feedback_stall_out_105),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg81_q),
        .out_data_out(),
        .out_feedback_out_105(i_llvm_fpga_push_i16_out_sroa_11_2_push105_loopback197_out_feedback_out_105),
        .out_feedback_valid_out_105(i_llvm_fpga_push_i16_out_sroa_11_2_push105_loopback197_out_feedback_valid_out_105),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_11_2_pop105_loopback97(BLACKBOX,252)@3
    // out out_feedback_stall_out_105@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_11_2_pop105_0 thei_llvm_fpga_pop_i16_out_sroa_11_2_pop105_loopback97 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_105(i_llvm_fpga_push_i16_out_sroa_11_2_push105_loopback197_out_feedback_out_105),
        .in_feedback_valid_in_105(i_llvm_fpga_push_i16_out_sroa_11_2_push105_loopback197_out_feedback_valid_out_105),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg61_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_11_2_pop105_loopback97_out_data_out),
        .out_feedback_stall_out_105(i_llvm_fpga_pop_i16_out_sroa_11_2_pop105_loopback97_out_feedback_stall_out_105),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_11_2_replace_phi_loopback98(MUX,333)@3
    assign i_out_sroa_11_2_replace_phi_loopback98_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_11_2_replace_phi_loopback98_s or i_llvm_fpga_pop_i16_out_sroa_11_2_pop105_loopback97_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select414614_loopback96_out_dest_data_out_36_0)
    begin
        unique case (i_out_sroa_11_2_replace_phi_loopback98_s)
            1'b0 : i_out_sroa_11_2_replace_phi_loopback98_q = i_llvm_fpga_pop_i16_out_sroa_11_2_pop105_loopback97_out_data_out;
            1'b1 : i_out_sroa_11_2_replace_phi_loopback98_q = i_llvm_fpga_ffwd_dest_i16_spec_select414614_loopback96_out_dest_data_out_36_0;
            default : i_out_sroa_11_2_replace_phi_loopback98_q = 16'b0;
        endcase
    end

    // i_unnamed_loopback165(LOGICAL,430)@3
    assign i_unnamed_loopback165_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_3481_q ? 1'b1 : 1'b0);

    // i_spec_select445_loopback196(MUX,373)@3
    assign i_spec_select445_loopback196_s = i_unnamed_loopback165_q;
    always @(i_spec_select445_loopback196_s or i_out_sroa_11_2_replace_phi_loopback98_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select445_loopback196_s)
            1'b0 : i_spec_select445_loopback196_q = i_out_sroa_11_2_replace_phi_loopback98_q;
            1'b1 : i_spec_select445_loopback196_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select445_loopback196_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback80_loopback269(BLACKBOX,230)@3
    // out out_intel_reserved_ffwd_72_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_80_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback80_loopback269 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_72_0(i_spec_select445_loopback196_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg114_q),
        .out_intel_reserved_ffwd_72_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback80_loopback269_out_intel_reserved_ffwd_72_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,548)
    assign out_intel_reserved_ffwd_72_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback80_loopback269_out_intel_reserved_ffwd_72_0;

    // valid_fanout_reg115(REG,745)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg115_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg115_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg58(REG,688)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg58_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg58_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select415615_loopback93(BLACKBOX,184)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select415615_0 thei_llvm_fpga_ffwd_dest_i16_spec_select415615_loopback93 (
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg58_q),
        .out_dest_data_out_37_0(i_llvm_fpga_ffwd_dest_i16_spec_select415615_loopback93_out_dest_data_out_37_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg59(REG,689)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg59_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg59_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg82(REG,712)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg82_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg82_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_14_2_push104_loopback199(BLACKBOX,289)@3
    // out out_feedback_out_104@20000000
    // out out_feedback_valid_out_104@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_14_2_push104_0 thei_llvm_fpga_push_i16_out_sroa_14_2_push104_loopback199 (
        .in_data_in(i_spec_select446_loopback198_q),
        .in_feedback_stall_in_104(i_llvm_fpga_pop_i16_out_sroa_14_2_pop104_loopback94_out_feedback_stall_out_104),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg82_q),
        .out_data_out(),
        .out_feedback_out_104(i_llvm_fpga_push_i16_out_sroa_14_2_push104_loopback199_out_feedback_out_104),
        .out_feedback_valid_out_104(i_llvm_fpga_push_i16_out_sroa_14_2_push104_loopback199_out_feedback_valid_out_104),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_14_2_pop104_loopback94(BLACKBOX,253)@3
    // out out_feedback_stall_out_104@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_14_2_pop104_0 thei_llvm_fpga_pop_i16_out_sroa_14_2_pop104_loopback94 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_104(i_llvm_fpga_push_i16_out_sroa_14_2_push104_loopback199_out_feedback_out_104),
        .in_feedback_valid_in_104(i_llvm_fpga_push_i16_out_sroa_14_2_push104_loopback199_out_feedback_valid_out_104),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg59_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_14_2_pop104_loopback94_out_data_out),
        .out_feedback_stall_out_104(i_llvm_fpga_pop_i16_out_sroa_14_2_pop104_loopback94_out_feedback_stall_out_104),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_14_2_replace_phi_loopback95(MUX,334)@3
    assign i_out_sroa_14_2_replace_phi_loopback95_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_14_2_replace_phi_loopback95_s or i_llvm_fpga_pop_i16_out_sroa_14_2_pop104_loopback94_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select415615_loopback93_out_dest_data_out_37_0)
    begin
        unique case (i_out_sroa_14_2_replace_phi_loopback95_s)
            1'b0 : i_out_sroa_14_2_replace_phi_loopback95_q = i_llvm_fpga_pop_i16_out_sroa_14_2_pop104_loopback94_out_data_out;
            1'b1 : i_out_sroa_14_2_replace_phi_loopback95_q = i_llvm_fpga_ffwd_dest_i16_spec_select415615_loopback93_out_dest_data_out_37_0;
            default : i_out_sroa_14_2_replace_phi_loopback95_q = 16'b0;
        endcase
    end

    // i_unnamed_loopback163(LOGICAL,429)@3
    assign i_unnamed_loopback163_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_4480_q ? 1'b1 : 1'b0);

    // i_spec_select446_loopback198(MUX,374)@3
    assign i_spec_select446_loopback198_s = i_unnamed_loopback163_q;
    always @(i_spec_select446_loopback198_s or i_out_sroa_14_2_replace_phi_loopback95_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select446_loopback198_s)
            1'b0 : i_spec_select446_loopback198_q = i_out_sroa_14_2_replace_phi_loopback95_q;
            1'b1 : i_spec_select446_loopback198_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select446_loopback198_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback81_loopback270(BLACKBOX,231)@3
    // out out_intel_reserved_ffwd_73_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_81_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback81_loopback270 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_73_0(i_spec_select446_loopback198_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg115_q),
        .out_intel_reserved_ffwd_73_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback81_loopback270_out_intel_reserved_ffwd_73_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,550)
    assign out_intel_reserved_ffwd_73_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback81_loopback270_out_intel_reserved_ffwd_73_0;

    // valid_fanout_reg116(REG,746)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg116_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg116_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg56(REG,686)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg56_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg56_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select416616_loopback90(BLACKBOX,185)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select416616_0 thei_llvm_fpga_ffwd_dest_i16_spec_select416616_loopback90 (
        .in_intel_reserved_ffwd_38_0(in_intel_reserved_ffwd_38_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg56_q),
        .out_dest_data_out_38_0(i_llvm_fpga_ffwd_dest_i16_spec_select416616_loopback90_out_dest_data_out_38_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg57(REG,687)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg57_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg57_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg83(REG,713)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg83_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg83_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_17_2_push103_loopback201(BLACKBOX,290)@3
    // out out_feedback_out_103@20000000
    // out out_feedback_valid_out_103@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_17_2_push103_0 thei_llvm_fpga_push_i16_out_sroa_17_2_push103_loopback201 (
        .in_data_in(i_spec_select447_loopback200_q),
        .in_feedback_stall_in_103(i_llvm_fpga_pop_i16_out_sroa_17_2_pop103_loopback91_out_feedback_stall_out_103),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg83_q),
        .out_data_out(),
        .out_feedback_out_103(i_llvm_fpga_push_i16_out_sroa_17_2_push103_loopback201_out_feedback_out_103),
        .out_feedback_valid_out_103(i_llvm_fpga_push_i16_out_sroa_17_2_push103_loopback201_out_feedback_valid_out_103),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_17_2_pop103_loopback91(BLACKBOX,254)@3
    // out out_feedback_stall_out_103@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_17_2_pop103_0 thei_llvm_fpga_pop_i16_out_sroa_17_2_pop103_loopback91 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_103(i_llvm_fpga_push_i16_out_sroa_17_2_push103_loopback201_out_feedback_out_103),
        .in_feedback_valid_in_103(i_llvm_fpga_push_i16_out_sroa_17_2_push103_loopback201_out_feedback_valid_out_103),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg57_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_17_2_pop103_loopback91_out_data_out),
        .out_feedback_stall_out_103(i_llvm_fpga_pop_i16_out_sroa_17_2_pop103_loopback91_out_feedback_stall_out_103),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_17_2_replace_phi_loopback92(MUX,335)@3
    assign i_out_sroa_17_2_replace_phi_loopback92_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_17_2_replace_phi_loopback92_s or i_llvm_fpga_pop_i16_out_sroa_17_2_pop103_loopback91_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select416616_loopback90_out_dest_data_out_38_0)
    begin
        unique case (i_out_sroa_17_2_replace_phi_loopback92_s)
            1'b0 : i_out_sroa_17_2_replace_phi_loopback92_q = i_llvm_fpga_pop_i16_out_sroa_17_2_pop103_loopback91_out_data_out;
            1'b1 : i_out_sroa_17_2_replace_phi_loopback92_q = i_llvm_fpga_ffwd_dest_i16_spec_select416616_loopback90_out_dest_data_out_38_0;
            default : i_out_sroa_17_2_replace_phi_loopback92_q = 16'b0;
        endcase
    end

    // i_unnamed_loopback161(LOGICAL,428)@3
    assign i_unnamed_loopback161_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_5479_q ? 1'b1 : 1'b0);

    // i_spec_select447_loopback200(MUX,375)@3
    assign i_spec_select447_loopback200_s = i_unnamed_loopback161_q;
    always @(i_spec_select447_loopback200_s or i_out_sroa_17_2_replace_phi_loopback92_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select447_loopback200_s)
            1'b0 : i_spec_select447_loopback200_q = i_out_sroa_17_2_replace_phi_loopback92_q;
            1'b1 : i_spec_select447_loopback200_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select447_loopback200_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback82_loopback271(BLACKBOX,232)@3
    // out out_intel_reserved_ffwd_74_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_82_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback82_loopback271 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_74_0(i_spec_select447_loopback200_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg116_q),
        .out_intel_reserved_ffwd_74_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback82_loopback271_out_intel_reserved_ffwd_74_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,552)
    assign out_intel_reserved_ffwd_74_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback82_loopback271_out_intel_reserved_ffwd_74_0;

    // valid_fanout_reg117(REG,747)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg117_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg117_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg54(REG,684)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg54_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg54_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select417617_loopback87(BLACKBOX,186)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select417617_0 thei_llvm_fpga_ffwd_dest_i16_spec_select417617_loopback87 (
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_dest_data_out_39_0(i_llvm_fpga_ffwd_dest_i16_spec_select417617_loopback87_out_dest_data_out_39_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg55(REG,685)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg55_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg55_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg84(REG,714)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg84_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg84_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_20_2_push102_loopback203(BLACKBOX,291)@3
    // out out_feedback_out_102@20000000
    // out out_feedback_valid_out_102@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_20_2_push102_0 thei_llvm_fpga_push_i16_out_sroa_20_2_push102_loopback203 (
        .in_data_in(i_spec_select448_loopback202_q),
        .in_feedback_stall_in_102(i_llvm_fpga_pop_i16_out_sroa_20_2_pop102_loopback88_out_feedback_stall_out_102),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg84_q),
        .out_data_out(),
        .out_feedback_out_102(i_llvm_fpga_push_i16_out_sroa_20_2_push102_loopback203_out_feedback_out_102),
        .out_feedback_valid_out_102(i_llvm_fpga_push_i16_out_sroa_20_2_push102_loopback203_out_feedback_valid_out_102),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_20_2_pop102_loopback88(BLACKBOX,255)@3
    // out out_feedback_stall_out_102@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_20_2_pop102_0 thei_llvm_fpga_pop_i16_out_sroa_20_2_pop102_loopback88 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_102(i_llvm_fpga_push_i16_out_sroa_20_2_push102_loopback203_out_feedback_out_102),
        .in_feedback_valid_in_102(i_llvm_fpga_push_i16_out_sroa_20_2_push102_loopback203_out_feedback_valid_out_102),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_20_2_pop102_loopback88_out_data_out),
        .out_feedback_stall_out_102(i_llvm_fpga_pop_i16_out_sroa_20_2_pop102_loopback88_out_feedback_stall_out_102),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_20_2_replace_phi_loopback89(MUX,336)@3
    assign i_out_sroa_20_2_replace_phi_loopback89_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_20_2_replace_phi_loopback89_s or i_llvm_fpga_pop_i16_out_sroa_20_2_pop102_loopback88_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select417617_loopback87_out_dest_data_out_39_0)
    begin
        unique case (i_out_sroa_20_2_replace_phi_loopback89_s)
            1'b0 : i_out_sroa_20_2_replace_phi_loopback89_q = i_llvm_fpga_pop_i16_out_sroa_20_2_pop102_loopback88_out_data_out;
            1'b1 : i_out_sroa_20_2_replace_phi_loopback89_q = i_llvm_fpga_ffwd_dest_i16_spec_select417617_loopback87_out_dest_data_out_39_0;
            default : i_out_sroa_20_2_replace_phi_loopback89_q = 16'b0;
        endcase
    end

    // i_unnamed_loopback159(LOGICAL,427)@3
    assign i_unnamed_loopback159_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_6478_q ? 1'b1 : 1'b0);

    // i_spec_select448_loopback202(MUX,376)@3
    assign i_spec_select448_loopback202_s = i_unnamed_loopback159_q;
    always @(i_spec_select448_loopback202_s or i_out_sroa_20_2_replace_phi_loopback89_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select448_loopback202_s)
            1'b0 : i_spec_select448_loopback202_q = i_out_sroa_20_2_replace_phi_loopback89_q;
            1'b1 : i_spec_select448_loopback202_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select448_loopback202_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback83_loopback272(BLACKBOX,233)@3
    // out out_intel_reserved_ffwd_75_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_83_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback83_loopback272 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_75_0(i_spec_select448_loopback202_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg117_q),
        .out_intel_reserved_ffwd_75_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback83_loopback272_out_intel_reserved_ffwd_75_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,554)
    assign out_intel_reserved_ffwd_75_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback83_loopback272_out_intel_reserved_ffwd_75_0;

    // valid_fanout_reg118(REG,748)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg118_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg118_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg52(REG,682)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select418618_loopback84(BLACKBOX,187)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select418618_0 thei_llvm_fpga_ffwd_dest_i16_spec_select418618_loopback84 (
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_dest_data_out_40_0(i_llvm_fpga_ffwd_dest_i16_spec_select418618_loopback84_out_dest_data_out_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg53(REG,683)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg53_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg53_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg85(REG,715)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg85_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg85_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_23_2_push101_loopback205(BLACKBOX,292)@3
    // out out_feedback_out_101@20000000
    // out out_feedback_valid_out_101@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_23_2_push101_0 thei_llvm_fpga_push_i16_out_sroa_23_2_push101_loopback205 (
        .in_data_in(i_spec_select449_loopback204_q),
        .in_feedback_stall_in_101(i_llvm_fpga_pop_i16_out_sroa_23_2_pop101_loopback85_out_feedback_stall_out_101),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg85_q),
        .out_data_out(),
        .out_feedback_out_101(i_llvm_fpga_push_i16_out_sroa_23_2_push101_loopback205_out_feedback_out_101),
        .out_feedback_valid_out_101(i_llvm_fpga_push_i16_out_sroa_23_2_push101_loopback205_out_feedback_valid_out_101),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_23_2_pop101_loopback85(BLACKBOX,256)@3
    // out out_feedback_stall_out_101@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_23_2_pop101_0 thei_llvm_fpga_pop_i16_out_sroa_23_2_pop101_loopback85 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_101(i_llvm_fpga_push_i16_out_sroa_23_2_push101_loopback205_out_feedback_out_101),
        .in_feedback_valid_in_101(i_llvm_fpga_push_i16_out_sroa_23_2_push101_loopback205_out_feedback_valid_out_101),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_23_2_pop101_loopback85_out_data_out),
        .out_feedback_stall_out_101(i_llvm_fpga_pop_i16_out_sroa_23_2_pop101_loopback85_out_feedback_stall_out_101),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_23_2_replace_phi_loopback86(MUX,337)@3
    assign i_out_sroa_23_2_replace_phi_loopback86_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_23_2_replace_phi_loopback86_s or i_llvm_fpga_pop_i16_out_sroa_23_2_pop101_loopback85_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select418618_loopback84_out_dest_data_out_40_0)
    begin
        unique case (i_out_sroa_23_2_replace_phi_loopback86_s)
            1'b0 : i_out_sroa_23_2_replace_phi_loopback86_q = i_llvm_fpga_pop_i16_out_sroa_23_2_pop101_loopback85_out_data_out;
            1'b1 : i_out_sroa_23_2_replace_phi_loopback86_q = i_llvm_fpga_ffwd_dest_i16_spec_select418618_loopback84_out_dest_data_out_40_0;
            default : i_out_sroa_23_2_replace_phi_loopback86_q = 16'b0;
        endcase
    end

    // i_unnamed_loopback157(LOGICAL,426)@3
    assign i_unnamed_loopback157_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_7477_q ? 1'b1 : 1'b0);

    // i_spec_select449_loopback204(MUX,377)@3
    assign i_spec_select449_loopback204_s = i_unnamed_loopback157_q;
    always @(i_spec_select449_loopback204_s or i_out_sroa_23_2_replace_phi_loopback86_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select449_loopback204_s)
            1'b0 : i_spec_select449_loopback204_q = i_out_sroa_23_2_replace_phi_loopback86_q;
            1'b1 : i_spec_select449_loopback204_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select449_loopback204_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback84_loopback273(BLACKBOX,234)@3
    // out out_intel_reserved_ffwd_76_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_84_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback84_loopback273 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_76_0(i_spec_select449_loopback204_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg118_q),
        .out_intel_reserved_ffwd_76_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback84_loopback273_out_intel_reserved_ffwd_76_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,556)
    assign out_intel_reserved_ffwd_76_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback84_loopback273_out_intel_reserved_ffwd_76_0;

    // valid_fanout_reg119(REG,749)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg119_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg119_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg50(REG,680)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select419619_loopback81(BLACKBOX,188)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select419619_0 thei_llvm_fpga_ffwd_dest_i16_spec_select419619_loopback81 (
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_dest_data_out_41_0(i_llvm_fpga_ffwd_dest_i16_spec_select419619_loopback81_out_dest_data_out_41_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg51(REG,681)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg86(REG,716)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg86_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg86_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_26_2_push100_loopback207(BLACKBOX,293)@3
    // out out_feedback_out_100@20000000
    // out out_feedback_valid_out_100@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_26_2_push100_0 thei_llvm_fpga_push_i16_out_sroa_26_2_push100_loopback207 (
        .in_data_in(i_spec_select450_loopback206_q),
        .in_feedback_stall_in_100(i_llvm_fpga_pop_i16_out_sroa_26_2_pop100_loopback82_out_feedback_stall_out_100),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg86_q),
        .out_data_out(),
        .out_feedback_out_100(i_llvm_fpga_push_i16_out_sroa_26_2_push100_loopback207_out_feedback_out_100),
        .out_feedback_valid_out_100(i_llvm_fpga_push_i16_out_sroa_26_2_push100_loopback207_out_feedback_valid_out_100),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_26_2_pop100_loopback82(BLACKBOX,257)@3
    // out out_feedback_stall_out_100@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_26_2_pop100_0 thei_llvm_fpga_pop_i16_out_sroa_26_2_pop100_loopback82 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_100(i_llvm_fpga_push_i16_out_sroa_26_2_push100_loopback207_out_feedback_out_100),
        .in_feedback_valid_in_100(i_llvm_fpga_push_i16_out_sroa_26_2_push100_loopback207_out_feedback_valid_out_100),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_26_2_pop100_loopback82_out_data_out),
        .out_feedback_stall_out_100(i_llvm_fpga_pop_i16_out_sroa_26_2_pop100_loopback82_out_feedback_stall_out_100),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_26_2_replace_phi_loopback83(MUX,338)@3
    assign i_out_sroa_26_2_replace_phi_loopback83_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_26_2_replace_phi_loopback83_s or i_llvm_fpga_pop_i16_out_sroa_26_2_pop100_loopback82_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select419619_loopback81_out_dest_data_out_41_0)
    begin
        unique case (i_out_sroa_26_2_replace_phi_loopback83_s)
            1'b0 : i_out_sroa_26_2_replace_phi_loopback83_q = i_llvm_fpga_pop_i16_out_sroa_26_2_pop100_loopback82_out_data_out;
            1'b1 : i_out_sroa_26_2_replace_phi_loopback83_q = i_llvm_fpga_ffwd_dest_i16_spec_select419619_loopback81_out_dest_data_out_41_0;
            default : i_out_sroa_26_2_replace_phi_loopback83_q = 16'b0;
        endcase
    end

    // c_i32_8476_recast_x(CONSTANT,538)
    assign c_i32_8476_recast_x_q = $unsigned(32'b00000000000000000000000000001000);

    // i_unnamed_loopback155(LOGICAL,425)@3
    assign i_unnamed_loopback155_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_8476_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select450_loopback206(MUX,378)@3
    assign i_spec_select450_loopback206_s = i_unnamed_loopback155_q;
    always @(i_spec_select450_loopback206_s or i_out_sroa_26_2_replace_phi_loopback83_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select450_loopback206_s)
            1'b0 : i_spec_select450_loopback206_q = i_out_sroa_26_2_replace_phi_loopback83_q;
            1'b1 : i_spec_select450_loopback206_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select450_loopback206_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback85_loopback274(BLACKBOX,235)@3
    // out out_intel_reserved_ffwd_77_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_85_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback85_loopback274 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_77_0(i_spec_select450_loopback206_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg119_q),
        .out_intel_reserved_ffwd_77_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback85_loopback274_out_intel_reserved_ffwd_77_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,558)
    assign out_intel_reserved_ffwd_77_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback85_loopback274_out_intel_reserved_ffwd_77_0;

    // valid_fanout_reg120(REG,750)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg120_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg120_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg48(REG,678)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select420620_loopback78(BLACKBOX,189)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select420620_0 thei_llvm_fpga_ffwd_dest_i16_spec_select420620_loopback78 (
        .in_intel_reserved_ffwd_42_0(in_intel_reserved_ffwd_42_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_dest_data_out_42_0(i_llvm_fpga_ffwd_dest_i16_spec_select420620_loopback78_out_dest_data_out_42_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg49(REG,679)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg87(REG,717)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg87_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg87_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_29_2_push99_loopback209(BLACKBOX,294)@3
    // out out_feedback_out_99@20000000
    // out out_feedback_valid_out_99@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_29_2_push99_0 thei_llvm_fpga_push_i16_out_sroa_29_2_push99_loopback209 (
        .in_data_in(i_spec_select451_loopback208_q),
        .in_feedback_stall_in_99(i_llvm_fpga_pop_i16_out_sroa_29_2_pop99_loopback79_out_feedback_stall_out_99),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg87_q),
        .out_data_out(),
        .out_feedback_out_99(i_llvm_fpga_push_i16_out_sroa_29_2_push99_loopback209_out_feedback_out_99),
        .out_feedback_valid_out_99(i_llvm_fpga_push_i16_out_sroa_29_2_push99_loopback209_out_feedback_valid_out_99),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_29_2_pop99_loopback79(BLACKBOX,258)@3
    // out out_feedback_stall_out_99@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_29_2_pop99_0 thei_llvm_fpga_pop_i16_out_sroa_29_2_pop99_loopback79 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_99(i_llvm_fpga_push_i16_out_sroa_29_2_push99_loopback209_out_feedback_out_99),
        .in_feedback_valid_in_99(i_llvm_fpga_push_i16_out_sroa_29_2_push99_loopback209_out_feedback_valid_out_99),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_29_2_pop99_loopback79_out_data_out),
        .out_feedback_stall_out_99(i_llvm_fpga_pop_i16_out_sroa_29_2_pop99_loopback79_out_feedback_stall_out_99),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_29_2_replace_phi_loopback80(MUX,339)@3
    assign i_out_sroa_29_2_replace_phi_loopback80_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_29_2_replace_phi_loopback80_s or i_llvm_fpga_pop_i16_out_sroa_29_2_pop99_loopback79_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select420620_loopback78_out_dest_data_out_42_0)
    begin
        unique case (i_out_sroa_29_2_replace_phi_loopback80_s)
            1'b0 : i_out_sroa_29_2_replace_phi_loopback80_q = i_llvm_fpga_pop_i16_out_sroa_29_2_pop99_loopback79_out_data_out;
            1'b1 : i_out_sroa_29_2_replace_phi_loopback80_q = i_llvm_fpga_ffwd_dest_i16_spec_select420620_loopback78_out_dest_data_out_42_0;
            default : i_out_sroa_29_2_replace_phi_loopback80_q = 16'b0;
        endcase
    end

    // c_i32_9475_recast_x(CONSTANT,539)
    assign c_i32_9475_recast_x_q = $unsigned(32'b00000000000000000000000000001001);

    // i_unnamed_loopback153(LOGICAL,424)@3
    assign i_unnamed_loopback153_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_9475_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select451_loopback208(MUX,379)@3
    assign i_spec_select451_loopback208_s = i_unnamed_loopback153_q;
    always @(i_spec_select451_loopback208_s or i_out_sroa_29_2_replace_phi_loopback80_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select451_loopback208_s)
            1'b0 : i_spec_select451_loopback208_q = i_out_sroa_29_2_replace_phi_loopback80_q;
            1'b1 : i_spec_select451_loopback208_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select451_loopback208_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback86_loopback275(BLACKBOX,236)@3
    // out out_intel_reserved_ffwd_78_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_86_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback86_loopback275 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_78_0(i_spec_select451_loopback208_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg120_q),
        .out_intel_reserved_ffwd_78_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback86_loopback275_out_intel_reserved_ffwd_78_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,560)
    assign out_intel_reserved_ffwd_78_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback86_loopback275_out_intel_reserved_ffwd_78_0;

    // valid_fanout_reg121(REG,751)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg121_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg121_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg46(REG,676)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select421621_loopback75(BLACKBOX,190)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select421621_0 thei_llvm_fpga_ffwd_dest_i16_spec_select421621_loopback75 (
        .in_intel_reserved_ffwd_43_0(in_intel_reserved_ffwd_43_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_dest_data_out_43_0(i_llvm_fpga_ffwd_dest_i16_spec_select421621_loopback75_out_dest_data_out_43_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg47(REG,677)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg88(REG,718)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg88_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg88_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_32_2_push98_loopback211(BLACKBOX,295)@3
    // out out_feedback_out_98@20000000
    // out out_feedback_valid_out_98@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_32_2_push98_0 thei_llvm_fpga_push_i16_out_sroa_32_2_push98_loopback211 (
        .in_data_in(i_spec_select452_loopback210_q),
        .in_feedback_stall_in_98(i_llvm_fpga_pop_i16_out_sroa_32_2_pop98_loopback76_out_feedback_stall_out_98),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg88_q),
        .out_data_out(),
        .out_feedback_out_98(i_llvm_fpga_push_i16_out_sroa_32_2_push98_loopback211_out_feedback_out_98),
        .out_feedback_valid_out_98(i_llvm_fpga_push_i16_out_sroa_32_2_push98_loopback211_out_feedback_valid_out_98),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_32_2_pop98_loopback76(BLACKBOX,259)@3
    // out out_feedback_stall_out_98@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_32_2_pop98_0 thei_llvm_fpga_pop_i16_out_sroa_32_2_pop98_loopback76 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_98(i_llvm_fpga_push_i16_out_sroa_32_2_push98_loopback211_out_feedback_out_98),
        .in_feedback_valid_in_98(i_llvm_fpga_push_i16_out_sroa_32_2_push98_loopback211_out_feedback_valid_out_98),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_32_2_pop98_loopback76_out_data_out),
        .out_feedback_stall_out_98(i_llvm_fpga_pop_i16_out_sroa_32_2_pop98_loopback76_out_feedback_stall_out_98),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_32_2_replace_phi_loopback77(MUX,340)@3
    assign i_out_sroa_32_2_replace_phi_loopback77_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_32_2_replace_phi_loopback77_s or i_llvm_fpga_pop_i16_out_sroa_32_2_pop98_loopback76_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select421621_loopback75_out_dest_data_out_43_0)
    begin
        unique case (i_out_sroa_32_2_replace_phi_loopback77_s)
            1'b0 : i_out_sroa_32_2_replace_phi_loopback77_q = i_llvm_fpga_pop_i16_out_sroa_32_2_pop98_loopback76_out_data_out;
            1'b1 : i_out_sroa_32_2_replace_phi_loopback77_q = i_llvm_fpga_ffwd_dest_i16_spec_select421621_loopback75_out_dest_data_out_43_0;
            default : i_out_sroa_32_2_replace_phi_loopback77_q = 16'b0;
        endcase
    end

    // c_i32_10474_recast_x(CONSTANT,509)
    assign c_i32_10474_recast_x_q = $unsigned(32'b00000000000000000000000000001010);

    // i_unnamed_loopback151(LOGICAL,423)@3
    assign i_unnamed_loopback151_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_10474_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select452_loopback210(MUX,380)@3
    assign i_spec_select452_loopback210_s = i_unnamed_loopback151_q;
    always @(i_spec_select452_loopback210_s or i_out_sroa_32_2_replace_phi_loopback77_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select452_loopback210_s)
            1'b0 : i_spec_select452_loopback210_q = i_out_sroa_32_2_replace_phi_loopback77_q;
            1'b1 : i_spec_select452_loopback210_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select452_loopback210_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback87_loopback276(BLACKBOX,237)@3
    // out out_intel_reserved_ffwd_79_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_87_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback87_loopback276 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_79_0(i_spec_select452_loopback210_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg121_q),
        .out_intel_reserved_ffwd_79_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback87_loopback276_out_intel_reserved_ffwd_79_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,562)
    assign out_intel_reserved_ffwd_79_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback87_loopback276_out_intel_reserved_ffwd_79_0;

    // valid_fanout_reg122(REG,752)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg122_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg122_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg44(REG,674)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select422622_loopback72(BLACKBOX,191)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select422622_0 thei_llvm_fpga_ffwd_dest_i16_spec_select422622_loopback72 (
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_dest_data_out_44_0(i_llvm_fpga_ffwd_dest_i16_spec_select422622_loopback72_out_dest_data_out_44_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg45(REG,675)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg89(REG,719)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg89_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg89_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_35_2_push97_loopback213(BLACKBOX,296)@3
    // out out_feedback_out_97@20000000
    // out out_feedback_valid_out_97@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_35_2_push97_0 thei_llvm_fpga_push_i16_out_sroa_35_2_push97_loopback213 (
        .in_data_in(i_spec_select453_loopback212_q),
        .in_feedback_stall_in_97(i_llvm_fpga_pop_i16_out_sroa_35_2_pop97_loopback73_out_feedback_stall_out_97),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg89_q),
        .out_data_out(),
        .out_feedback_out_97(i_llvm_fpga_push_i16_out_sroa_35_2_push97_loopback213_out_feedback_out_97),
        .out_feedback_valid_out_97(i_llvm_fpga_push_i16_out_sroa_35_2_push97_loopback213_out_feedback_valid_out_97),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_35_2_pop97_loopback73(BLACKBOX,260)@3
    // out out_feedback_stall_out_97@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_35_2_pop97_0 thei_llvm_fpga_pop_i16_out_sroa_35_2_pop97_loopback73 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_97(i_llvm_fpga_push_i16_out_sroa_35_2_push97_loopback213_out_feedback_out_97),
        .in_feedback_valid_in_97(i_llvm_fpga_push_i16_out_sroa_35_2_push97_loopback213_out_feedback_valid_out_97),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_35_2_pop97_loopback73_out_data_out),
        .out_feedback_stall_out_97(i_llvm_fpga_pop_i16_out_sroa_35_2_pop97_loopback73_out_feedback_stall_out_97),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_35_2_replace_phi_loopback74(MUX,341)@3
    assign i_out_sroa_35_2_replace_phi_loopback74_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_35_2_replace_phi_loopback74_s or i_llvm_fpga_pop_i16_out_sroa_35_2_pop97_loopback73_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select422622_loopback72_out_dest_data_out_44_0)
    begin
        unique case (i_out_sroa_35_2_replace_phi_loopback74_s)
            1'b0 : i_out_sroa_35_2_replace_phi_loopback74_q = i_llvm_fpga_pop_i16_out_sroa_35_2_pop97_loopback73_out_data_out;
            1'b1 : i_out_sroa_35_2_replace_phi_loopback74_q = i_llvm_fpga_ffwd_dest_i16_spec_select422622_loopback72_out_dest_data_out_44_0;
            default : i_out_sroa_35_2_replace_phi_loopback74_q = 16'b0;
        endcase
    end

    // c_i32_11473_recast_x(CONSTANT,510)
    assign c_i32_11473_recast_x_q = $unsigned(32'b00000000000000000000000000001011);

    // i_unnamed_loopback149(LOGICAL,422)@3
    assign i_unnamed_loopback149_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_11473_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select453_loopback212(MUX,381)@3
    assign i_spec_select453_loopback212_s = i_unnamed_loopback149_q;
    always @(i_spec_select453_loopback212_s or i_out_sroa_35_2_replace_phi_loopback74_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select453_loopback212_s)
            1'b0 : i_spec_select453_loopback212_q = i_out_sroa_35_2_replace_phi_loopback74_q;
            1'b1 : i_spec_select453_loopback212_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select453_loopback212_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback88_loopback277(BLACKBOX,238)@3
    // out out_intel_reserved_ffwd_80_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_88_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback88_loopback277 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_80_0(i_spec_select453_loopback212_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg122_q),
        .out_intel_reserved_ffwd_80_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback88_loopback277_out_intel_reserved_ffwd_80_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,564)
    assign out_intel_reserved_ffwd_80_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback88_loopback277_out_intel_reserved_ffwd_80_0;

    // valid_fanout_reg123(REG,753)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg123_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg123_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg42(REG,672)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select423623_loopback69(BLACKBOX,192)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select423623_0 thei_llvm_fpga_ffwd_dest_i16_spec_select423623_loopback69 (
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_dest_data_out_45_0(i_llvm_fpga_ffwd_dest_i16_spec_select423623_loopback69_out_dest_data_out_45_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg43(REG,673)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg90(REG,720)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg90_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg90_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_38_2_push96_loopback215(BLACKBOX,297)@3
    // out out_feedback_out_96@20000000
    // out out_feedback_valid_out_96@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_38_2_push96_0 thei_llvm_fpga_push_i16_out_sroa_38_2_push96_loopback215 (
        .in_data_in(i_spec_select454_loopback214_q),
        .in_feedback_stall_in_96(i_llvm_fpga_pop_i16_out_sroa_38_2_pop96_loopback70_out_feedback_stall_out_96),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg90_q),
        .out_data_out(),
        .out_feedback_out_96(i_llvm_fpga_push_i16_out_sroa_38_2_push96_loopback215_out_feedback_out_96),
        .out_feedback_valid_out_96(i_llvm_fpga_push_i16_out_sroa_38_2_push96_loopback215_out_feedback_valid_out_96),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_38_2_pop96_loopback70(BLACKBOX,261)@3
    // out out_feedback_stall_out_96@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_38_2_pop96_0 thei_llvm_fpga_pop_i16_out_sroa_38_2_pop96_loopback70 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_96(i_llvm_fpga_push_i16_out_sroa_38_2_push96_loopback215_out_feedback_out_96),
        .in_feedback_valid_in_96(i_llvm_fpga_push_i16_out_sroa_38_2_push96_loopback215_out_feedback_valid_out_96),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_38_2_pop96_loopback70_out_data_out),
        .out_feedback_stall_out_96(i_llvm_fpga_pop_i16_out_sroa_38_2_pop96_loopback70_out_feedback_stall_out_96),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_38_2_replace_phi_loopback71(MUX,342)@3
    assign i_out_sroa_38_2_replace_phi_loopback71_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_38_2_replace_phi_loopback71_s or i_llvm_fpga_pop_i16_out_sroa_38_2_pop96_loopback70_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select423623_loopback69_out_dest_data_out_45_0)
    begin
        unique case (i_out_sroa_38_2_replace_phi_loopback71_s)
            1'b0 : i_out_sroa_38_2_replace_phi_loopback71_q = i_llvm_fpga_pop_i16_out_sroa_38_2_pop96_loopback70_out_data_out;
            1'b1 : i_out_sroa_38_2_replace_phi_loopback71_q = i_llvm_fpga_ffwd_dest_i16_spec_select423623_loopback69_out_dest_data_out_45_0;
            default : i_out_sroa_38_2_replace_phi_loopback71_q = 16'b0;
        endcase
    end

    // c_i32_12472_recast_x(CONSTANT,511)
    assign c_i32_12472_recast_x_q = $unsigned(32'b00000000000000000000000000001100);

    // i_unnamed_loopback147(LOGICAL,421)@3
    assign i_unnamed_loopback147_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_12472_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select454_loopback214(MUX,382)@3
    assign i_spec_select454_loopback214_s = i_unnamed_loopback147_q;
    always @(i_spec_select454_loopback214_s or i_out_sroa_38_2_replace_phi_loopback71_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select454_loopback214_s)
            1'b0 : i_spec_select454_loopback214_q = i_out_sroa_38_2_replace_phi_loopback71_q;
            1'b1 : i_spec_select454_loopback214_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select454_loopback214_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback89_loopback278(BLACKBOX,239)@3
    // out out_intel_reserved_ffwd_81_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_89_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback89_loopback278 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_81_0(i_spec_select454_loopback214_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg123_q),
        .out_intel_reserved_ffwd_81_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback89_loopback278_out_intel_reserved_ffwd_81_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,566)
    assign out_intel_reserved_ffwd_81_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback89_loopback278_out_intel_reserved_ffwd_81_0;

    // valid_fanout_reg124(REG,754)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg124_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg124_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg40(REG,670)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select424624_loopback66(BLACKBOX,193)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select424624_0 thei_llvm_fpga_ffwd_dest_i16_spec_select424624_loopback66 (
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_dest_data_out_46_0(i_llvm_fpga_ffwd_dest_i16_spec_select424624_loopback66_out_dest_data_out_46_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg41(REG,671)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg91(REG,721)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg91_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg91_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_41_2_push95_loopback217(BLACKBOX,298)@3
    // out out_feedback_out_95@20000000
    // out out_feedback_valid_out_95@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_41_2_push95_0 thei_llvm_fpga_push_i16_out_sroa_41_2_push95_loopback217 (
        .in_data_in(i_spec_select455_loopback216_q),
        .in_feedback_stall_in_95(i_llvm_fpga_pop_i16_out_sroa_41_2_pop95_loopback67_out_feedback_stall_out_95),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg91_q),
        .out_data_out(),
        .out_feedback_out_95(i_llvm_fpga_push_i16_out_sroa_41_2_push95_loopback217_out_feedback_out_95),
        .out_feedback_valid_out_95(i_llvm_fpga_push_i16_out_sroa_41_2_push95_loopback217_out_feedback_valid_out_95),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_41_2_pop95_loopback67(BLACKBOX,262)@3
    // out out_feedback_stall_out_95@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_41_2_pop95_0 thei_llvm_fpga_pop_i16_out_sroa_41_2_pop95_loopback67 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_95(i_llvm_fpga_push_i16_out_sroa_41_2_push95_loopback217_out_feedback_out_95),
        .in_feedback_valid_in_95(i_llvm_fpga_push_i16_out_sroa_41_2_push95_loopback217_out_feedback_valid_out_95),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_41_2_pop95_loopback67_out_data_out),
        .out_feedback_stall_out_95(i_llvm_fpga_pop_i16_out_sroa_41_2_pop95_loopback67_out_feedback_stall_out_95),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_41_2_replace_phi_loopback68(MUX,343)@3
    assign i_out_sroa_41_2_replace_phi_loopback68_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_41_2_replace_phi_loopback68_s or i_llvm_fpga_pop_i16_out_sroa_41_2_pop95_loopback67_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select424624_loopback66_out_dest_data_out_46_0)
    begin
        unique case (i_out_sroa_41_2_replace_phi_loopback68_s)
            1'b0 : i_out_sroa_41_2_replace_phi_loopback68_q = i_llvm_fpga_pop_i16_out_sroa_41_2_pop95_loopback67_out_data_out;
            1'b1 : i_out_sroa_41_2_replace_phi_loopback68_q = i_llvm_fpga_ffwd_dest_i16_spec_select424624_loopback66_out_dest_data_out_46_0;
            default : i_out_sroa_41_2_replace_phi_loopback68_q = 16'b0;
        endcase
    end

    // c_i32_13471_recast_x(CONSTANT,512)
    assign c_i32_13471_recast_x_q = $unsigned(32'b00000000000000000000000000001101);

    // i_unnamed_loopback145(LOGICAL,420)@3
    assign i_unnamed_loopback145_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_13471_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select455_loopback216(MUX,383)@3
    assign i_spec_select455_loopback216_s = i_unnamed_loopback145_q;
    always @(i_spec_select455_loopback216_s or i_out_sroa_41_2_replace_phi_loopback68_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select455_loopback216_s)
            1'b0 : i_spec_select455_loopback216_q = i_out_sroa_41_2_replace_phi_loopback68_q;
            1'b1 : i_spec_select455_loopback216_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select455_loopback216_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback90_loopback279(BLACKBOX,240)@3
    // out out_intel_reserved_ffwd_82_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_90_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback90_loopback279 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_82_0(i_spec_select455_loopback216_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg124_q),
        .out_intel_reserved_ffwd_82_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback90_loopback279_out_intel_reserved_ffwd_82_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,568)
    assign out_intel_reserved_ffwd_82_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback90_loopback279_out_intel_reserved_ffwd_82_0;

    // valid_fanout_reg125(REG,755)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg125_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg125_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg38(REG,668)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select425625_loopback63(BLACKBOX,194)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select425625_0 thei_llvm_fpga_ffwd_dest_i16_spec_select425625_loopback63 (
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_dest_data_out_47_0(i_llvm_fpga_ffwd_dest_i16_spec_select425625_loopback63_out_dest_data_out_47_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg39(REG,669)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg92(REG,722)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg92_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg92_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_44_2_push94_loopback219(BLACKBOX,299)@3
    // out out_feedback_out_94@20000000
    // out out_feedback_valid_out_94@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_44_2_push94_0 thei_llvm_fpga_push_i16_out_sroa_44_2_push94_loopback219 (
        .in_data_in(i_spec_select456_loopback218_q),
        .in_feedback_stall_in_94(i_llvm_fpga_pop_i16_out_sroa_44_2_pop94_loopback64_out_feedback_stall_out_94),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg92_q),
        .out_data_out(),
        .out_feedback_out_94(i_llvm_fpga_push_i16_out_sroa_44_2_push94_loopback219_out_feedback_out_94),
        .out_feedback_valid_out_94(i_llvm_fpga_push_i16_out_sroa_44_2_push94_loopback219_out_feedback_valid_out_94),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_44_2_pop94_loopback64(BLACKBOX,263)@3
    // out out_feedback_stall_out_94@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_44_2_pop94_0 thei_llvm_fpga_pop_i16_out_sroa_44_2_pop94_loopback64 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_94(i_llvm_fpga_push_i16_out_sroa_44_2_push94_loopback219_out_feedback_out_94),
        .in_feedback_valid_in_94(i_llvm_fpga_push_i16_out_sroa_44_2_push94_loopback219_out_feedback_valid_out_94),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_44_2_pop94_loopback64_out_data_out),
        .out_feedback_stall_out_94(i_llvm_fpga_pop_i16_out_sroa_44_2_pop94_loopback64_out_feedback_stall_out_94),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_44_2_replace_phi_loopback65(MUX,344)@3
    assign i_out_sroa_44_2_replace_phi_loopback65_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_44_2_replace_phi_loopback65_s or i_llvm_fpga_pop_i16_out_sroa_44_2_pop94_loopback64_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select425625_loopback63_out_dest_data_out_47_0)
    begin
        unique case (i_out_sroa_44_2_replace_phi_loopback65_s)
            1'b0 : i_out_sroa_44_2_replace_phi_loopback65_q = i_llvm_fpga_pop_i16_out_sroa_44_2_pop94_loopback64_out_data_out;
            1'b1 : i_out_sroa_44_2_replace_phi_loopback65_q = i_llvm_fpga_ffwd_dest_i16_spec_select425625_loopback63_out_dest_data_out_47_0;
            default : i_out_sroa_44_2_replace_phi_loopback65_q = 16'b0;
        endcase
    end

    // c_i32_14470_recast_x(CONSTANT,513)
    assign c_i32_14470_recast_x_q = $unsigned(32'b00000000000000000000000000001110);

    // i_unnamed_loopback143(LOGICAL,419)@3
    assign i_unnamed_loopback143_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_14470_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select456_loopback218(MUX,384)@3
    assign i_spec_select456_loopback218_s = i_unnamed_loopback143_q;
    always @(i_spec_select456_loopback218_s or i_out_sroa_44_2_replace_phi_loopback65_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select456_loopback218_s)
            1'b0 : i_spec_select456_loopback218_q = i_out_sroa_44_2_replace_phi_loopback65_q;
            1'b1 : i_spec_select456_loopback218_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select456_loopback218_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback91_loopback280(BLACKBOX,241)@3
    // out out_intel_reserved_ffwd_83_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_91_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback91_loopback280 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_83_0(i_spec_select456_loopback218_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg125_q),
        .out_intel_reserved_ffwd_83_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback91_loopback280_out_intel_reserved_ffwd_83_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,570)
    assign out_intel_reserved_ffwd_83_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback91_loopback280_out_intel_reserved_ffwd_83_0;

    // valid_fanout_reg126(REG,756)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg126_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg126_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg36(REG,666)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select426626_loopback60(BLACKBOX,195)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select426626_0 thei_llvm_fpga_ffwd_dest_i16_spec_select426626_loopback60 (
        .in_intel_reserved_ffwd_48_0(in_intel_reserved_ffwd_48_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_dest_data_out_48_0(i_llvm_fpga_ffwd_dest_i16_spec_select426626_loopback60_out_dest_data_out_48_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg37(REG,667)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg93(REG,723)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg93_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg93_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_47_2_push93_loopback221(BLACKBOX,300)@3
    // out out_feedback_out_93@20000000
    // out out_feedback_valid_out_93@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_47_2_push93_0 thei_llvm_fpga_push_i16_out_sroa_47_2_push93_loopback221 (
        .in_data_in(i_spec_select457_loopback220_q),
        .in_feedback_stall_in_93(i_llvm_fpga_pop_i16_out_sroa_47_2_pop93_loopback61_out_feedback_stall_out_93),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg93_q),
        .out_data_out(),
        .out_feedback_out_93(i_llvm_fpga_push_i16_out_sroa_47_2_push93_loopback221_out_feedback_out_93),
        .out_feedback_valid_out_93(i_llvm_fpga_push_i16_out_sroa_47_2_push93_loopback221_out_feedback_valid_out_93),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_47_2_pop93_loopback61(BLACKBOX,264)@3
    // out out_feedback_stall_out_93@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_47_2_pop93_0 thei_llvm_fpga_pop_i16_out_sroa_47_2_pop93_loopback61 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_93(i_llvm_fpga_push_i16_out_sroa_47_2_push93_loopback221_out_feedback_out_93),
        .in_feedback_valid_in_93(i_llvm_fpga_push_i16_out_sroa_47_2_push93_loopback221_out_feedback_valid_out_93),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_47_2_pop93_loopback61_out_data_out),
        .out_feedback_stall_out_93(i_llvm_fpga_pop_i16_out_sroa_47_2_pop93_loopback61_out_feedback_stall_out_93),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_47_2_replace_phi_loopback62(MUX,345)@3
    assign i_out_sroa_47_2_replace_phi_loopback62_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_47_2_replace_phi_loopback62_s or i_llvm_fpga_pop_i16_out_sroa_47_2_pop93_loopback61_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select426626_loopback60_out_dest_data_out_48_0)
    begin
        unique case (i_out_sroa_47_2_replace_phi_loopback62_s)
            1'b0 : i_out_sroa_47_2_replace_phi_loopback62_q = i_llvm_fpga_pop_i16_out_sroa_47_2_pop93_loopback61_out_data_out;
            1'b1 : i_out_sroa_47_2_replace_phi_loopback62_q = i_llvm_fpga_ffwd_dest_i16_spec_select426626_loopback60_out_dest_data_out_48_0;
            default : i_out_sroa_47_2_replace_phi_loopback62_q = 16'b0;
        endcase
    end

    // c_i32_15469_recast_x(CONSTANT,515)
    assign c_i32_15469_recast_x_q = $unsigned(32'b00000000000000000000000000001111);

    // i_unnamed_loopback141(LOGICAL,418)@3
    assign i_unnamed_loopback141_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_15469_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select457_loopback220(MUX,385)@3
    assign i_spec_select457_loopback220_s = i_unnamed_loopback141_q;
    always @(i_spec_select457_loopback220_s or i_out_sroa_47_2_replace_phi_loopback62_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select457_loopback220_s)
            1'b0 : i_spec_select457_loopback220_q = i_out_sroa_47_2_replace_phi_loopback62_q;
            1'b1 : i_spec_select457_loopback220_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select457_loopback220_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback92_loopback281(BLACKBOX,242)@3
    // out out_intel_reserved_ffwd_84_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_92_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback92_loopback281 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_84_0(i_spec_select457_loopback220_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg126_q),
        .out_intel_reserved_ffwd_84_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback92_loopback281_out_intel_reserved_ffwd_84_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_15_regfree_osync_x(GPOUT,572)
    assign out_intel_reserved_ffwd_84_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback92_loopback281_out_intel_reserved_ffwd_84_0;

    // valid_fanout_reg127(REG,757)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg127_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg127_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg34(REG,664)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select427627_loopback57(BLACKBOX,196)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select427627_0 thei_llvm_fpga_ffwd_dest_i16_spec_select427627_loopback57 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i16_spec_select427627_loopback57_out_dest_data_out_49_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg35(REG,665)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg94(REG,724)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg94_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg94_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_50_2_push92_loopback223(BLACKBOX,301)@3
    // out out_feedback_out_92@20000000
    // out out_feedback_valid_out_92@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_50_2_push92_0 thei_llvm_fpga_push_i16_out_sroa_50_2_push92_loopback223 (
        .in_data_in(i_spec_select458_loopback222_q),
        .in_feedback_stall_in_92(i_llvm_fpga_pop_i16_out_sroa_50_2_pop92_loopback58_out_feedback_stall_out_92),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg94_q),
        .out_data_out(),
        .out_feedback_out_92(i_llvm_fpga_push_i16_out_sroa_50_2_push92_loopback223_out_feedback_out_92),
        .out_feedback_valid_out_92(i_llvm_fpga_push_i16_out_sroa_50_2_push92_loopback223_out_feedback_valid_out_92),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_50_2_pop92_loopback58(BLACKBOX,265)@3
    // out out_feedback_stall_out_92@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_50_2_pop92_0 thei_llvm_fpga_pop_i16_out_sroa_50_2_pop92_loopback58 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_92(i_llvm_fpga_push_i16_out_sroa_50_2_push92_loopback223_out_feedback_out_92),
        .in_feedback_valid_in_92(i_llvm_fpga_push_i16_out_sroa_50_2_push92_loopback223_out_feedback_valid_out_92),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_50_2_pop92_loopback58_out_data_out),
        .out_feedback_stall_out_92(i_llvm_fpga_pop_i16_out_sroa_50_2_pop92_loopback58_out_feedback_stall_out_92),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_50_2_replace_phi_loopback59(MUX,346)@3
    assign i_out_sroa_50_2_replace_phi_loopback59_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_50_2_replace_phi_loopback59_s or i_llvm_fpga_pop_i16_out_sroa_50_2_pop92_loopback58_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select427627_loopback57_out_dest_data_out_49_0)
    begin
        unique case (i_out_sroa_50_2_replace_phi_loopback59_s)
            1'b0 : i_out_sroa_50_2_replace_phi_loopback59_q = i_llvm_fpga_pop_i16_out_sroa_50_2_pop92_loopback58_out_data_out;
            1'b1 : i_out_sroa_50_2_replace_phi_loopback59_q = i_llvm_fpga_ffwd_dest_i16_spec_select427627_loopback57_out_dest_data_out_49_0;
            default : i_out_sroa_50_2_replace_phi_loopback59_q = 16'b0;
        endcase
    end

    // c_i32_16468_recast_x(CONSTANT,516)
    assign c_i32_16468_recast_x_q = $unsigned(32'b00000000000000000000000000010000);

    // i_unnamed_loopback139(LOGICAL,417)@3
    assign i_unnamed_loopback139_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_16468_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select458_loopback222(MUX,386)@3
    assign i_spec_select458_loopback222_s = i_unnamed_loopback139_q;
    always @(i_spec_select458_loopback222_s or i_out_sroa_50_2_replace_phi_loopback59_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select458_loopback222_s)
            1'b0 : i_spec_select458_loopback222_q = i_out_sroa_50_2_replace_phi_loopback59_q;
            1'b1 : i_spec_select458_loopback222_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select458_loopback222_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback93_loopback282(BLACKBOX,243)@3
    // out out_intel_reserved_ffwd_85_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_93_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback93_loopback282 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_85_0(i_spec_select458_loopback222_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg127_q),
        .out_intel_reserved_ffwd_85_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback93_loopback282_out_intel_reserved_ffwd_85_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_16_regfree_osync_x(GPOUT,574)
    assign out_intel_reserved_ffwd_85_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback93_loopback282_out_intel_reserved_ffwd_85_0;

    // valid_fanout_reg128(REG,758)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg128_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg128_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg32(REG,662)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select428628_loopback54(BLACKBOX,197)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select428628_0 thei_llvm_fpga_ffwd_dest_i16_spec_select428628_loopback54 (
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_dest_data_out_50_0(i_llvm_fpga_ffwd_dest_i16_spec_select428628_loopback54_out_dest_data_out_50_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg33(REG,663)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg95(REG,725)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg95_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg95_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_53_2_push91_loopback225(BLACKBOX,302)@3
    // out out_feedback_out_91@20000000
    // out out_feedback_valid_out_91@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_53_2_push91_0 thei_llvm_fpga_push_i16_out_sroa_53_2_push91_loopback225 (
        .in_data_in(i_spec_select459_loopback224_q),
        .in_feedback_stall_in_91(i_llvm_fpga_pop_i16_out_sroa_53_2_pop91_loopback55_out_feedback_stall_out_91),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg95_q),
        .out_data_out(),
        .out_feedback_out_91(i_llvm_fpga_push_i16_out_sroa_53_2_push91_loopback225_out_feedback_out_91),
        .out_feedback_valid_out_91(i_llvm_fpga_push_i16_out_sroa_53_2_push91_loopback225_out_feedback_valid_out_91),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_53_2_pop91_loopback55(BLACKBOX,266)@3
    // out out_feedback_stall_out_91@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_53_2_pop91_0 thei_llvm_fpga_pop_i16_out_sroa_53_2_pop91_loopback55 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_91(i_llvm_fpga_push_i16_out_sroa_53_2_push91_loopback225_out_feedback_out_91),
        .in_feedback_valid_in_91(i_llvm_fpga_push_i16_out_sroa_53_2_push91_loopback225_out_feedback_valid_out_91),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_53_2_pop91_loopback55_out_data_out),
        .out_feedback_stall_out_91(i_llvm_fpga_pop_i16_out_sroa_53_2_pop91_loopback55_out_feedback_stall_out_91),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_53_2_replace_phi_loopback56(MUX,347)@3
    assign i_out_sroa_53_2_replace_phi_loopback56_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_53_2_replace_phi_loopback56_s or i_llvm_fpga_pop_i16_out_sroa_53_2_pop91_loopback55_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select428628_loopback54_out_dest_data_out_50_0)
    begin
        unique case (i_out_sroa_53_2_replace_phi_loopback56_s)
            1'b0 : i_out_sroa_53_2_replace_phi_loopback56_q = i_llvm_fpga_pop_i16_out_sroa_53_2_pop91_loopback55_out_data_out;
            1'b1 : i_out_sroa_53_2_replace_phi_loopback56_q = i_llvm_fpga_ffwd_dest_i16_spec_select428628_loopback54_out_dest_data_out_50_0;
            default : i_out_sroa_53_2_replace_phi_loopback56_q = 16'b0;
        endcase
    end

    // c_i32_17467_recast_x(CONSTANT,517)
    assign c_i32_17467_recast_x_q = $unsigned(32'b00000000000000000000000000010001);

    // i_unnamed_loopback137(LOGICAL,416)@3
    assign i_unnamed_loopback137_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_17467_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select459_loopback224(MUX,387)@3
    assign i_spec_select459_loopback224_s = i_unnamed_loopback137_q;
    always @(i_spec_select459_loopback224_s or i_out_sroa_53_2_replace_phi_loopback56_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select459_loopback224_s)
            1'b0 : i_spec_select459_loopback224_q = i_out_sroa_53_2_replace_phi_loopback56_q;
            1'b1 : i_spec_select459_loopback224_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select459_loopback224_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback94_loopback283(BLACKBOX,244)@3
    // out out_intel_reserved_ffwd_86_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_94_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback94_loopback283 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_86_0(i_spec_select459_loopback224_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg128_q),
        .out_intel_reserved_ffwd_86_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback94_loopback283_out_intel_reserved_ffwd_86_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_17_regfree_osync_x(GPOUT,576)
    assign out_intel_reserved_ffwd_86_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback94_loopback283_out_intel_reserved_ffwd_86_0;

    // valid_fanout_reg129(REG,759)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg129_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg129_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg30(REG,660)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select429629_loopback51(BLACKBOX,198)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select429629_0 thei_llvm_fpga_ffwd_dest_i16_spec_select429629_loopback51 (
        .in_intel_reserved_ffwd_51_0(in_intel_reserved_ffwd_51_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_dest_data_out_51_0(i_llvm_fpga_ffwd_dest_i16_spec_select429629_loopback51_out_dest_data_out_51_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg31(REG,661)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg96(REG,726)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg96_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg96_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_56_2_push90_loopback227(BLACKBOX,303)@3
    // out out_feedback_out_90@20000000
    // out out_feedback_valid_out_90@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_56_2_push90_0 thei_llvm_fpga_push_i16_out_sroa_56_2_push90_loopback227 (
        .in_data_in(i_spec_select460_loopback226_q),
        .in_feedback_stall_in_90(i_llvm_fpga_pop_i16_out_sroa_56_2_pop90_loopback52_out_feedback_stall_out_90),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg96_q),
        .out_data_out(),
        .out_feedback_out_90(i_llvm_fpga_push_i16_out_sroa_56_2_push90_loopback227_out_feedback_out_90),
        .out_feedback_valid_out_90(i_llvm_fpga_push_i16_out_sroa_56_2_push90_loopback227_out_feedback_valid_out_90),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_56_2_pop90_loopback52(BLACKBOX,267)@3
    // out out_feedback_stall_out_90@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_56_2_pop90_0 thei_llvm_fpga_pop_i16_out_sroa_56_2_pop90_loopback52 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_90(i_llvm_fpga_push_i16_out_sroa_56_2_push90_loopback227_out_feedback_out_90),
        .in_feedback_valid_in_90(i_llvm_fpga_push_i16_out_sroa_56_2_push90_loopback227_out_feedback_valid_out_90),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_56_2_pop90_loopback52_out_data_out),
        .out_feedback_stall_out_90(i_llvm_fpga_pop_i16_out_sroa_56_2_pop90_loopback52_out_feedback_stall_out_90),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_56_2_replace_phi_loopback53(MUX,348)@3
    assign i_out_sroa_56_2_replace_phi_loopback53_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_56_2_replace_phi_loopback53_s or i_llvm_fpga_pop_i16_out_sroa_56_2_pop90_loopback52_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select429629_loopback51_out_dest_data_out_51_0)
    begin
        unique case (i_out_sroa_56_2_replace_phi_loopback53_s)
            1'b0 : i_out_sroa_56_2_replace_phi_loopback53_q = i_llvm_fpga_pop_i16_out_sroa_56_2_pop90_loopback52_out_data_out;
            1'b1 : i_out_sroa_56_2_replace_phi_loopback53_q = i_llvm_fpga_ffwd_dest_i16_spec_select429629_loopback51_out_dest_data_out_51_0;
            default : i_out_sroa_56_2_replace_phi_loopback53_q = 16'b0;
        endcase
    end

    // c_i32_18466_recast_x(CONSTANT,518)
    assign c_i32_18466_recast_x_q = $unsigned(32'b00000000000000000000000000010010);

    // i_unnamed_loopback135(LOGICAL,415)@3
    assign i_unnamed_loopback135_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_18466_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select460_loopback226(MUX,388)@3
    assign i_spec_select460_loopback226_s = i_unnamed_loopback135_q;
    always @(i_spec_select460_loopback226_s or i_out_sroa_56_2_replace_phi_loopback53_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select460_loopback226_s)
            1'b0 : i_spec_select460_loopback226_q = i_out_sroa_56_2_replace_phi_loopback53_q;
            1'b1 : i_spec_select460_loopback226_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select460_loopback226_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback95_loopback284(BLACKBOX,245)@3
    // out out_intel_reserved_ffwd_87_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_95_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback95_loopback284 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_87_0(i_spec_select460_loopback226_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg129_q),
        .out_intel_reserved_ffwd_87_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback95_loopback284_out_intel_reserved_ffwd_87_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_18_regfree_osync_x(GPOUT,578)
    assign out_intel_reserved_ffwd_87_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback95_loopback284_out_intel_reserved_ffwd_87_0;

    // valid_fanout_reg130(REG,760)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg130_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg130_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg28(REG,658)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select430630_loopback48(BLACKBOX,199)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select430630_0 thei_llvm_fpga_ffwd_dest_i16_spec_select430630_loopback48 (
        .in_intel_reserved_ffwd_52_0(in_intel_reserved_ffwd_52_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_dest_data_out_52_0(i_llvm_fpga_ffwd_dest_i16_spec_select430630_loopback48_out_dest_data_out_52_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg29(REG,659)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg97(REG,727)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg97_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg97_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_59_2_push89_loopback229(BLACKBOX,304)@3
    // out out_feedback_out_89@20000000
    // out out_feedback_valid_out_89@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_59_2_push89_0 thei_llvm_fpga_push_i16_out_sroa_59_2_push89_loopback229 (
        .in_data_in(i_spec_select461_loopback228_q),
        .in_feedback_stall_in_89(i_llvm_fpga_pop_i16_out_sroa_59_2_pop89_loopback49_out_feedback_stall_out_89),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg97_q),
        .out_data_out(),
        .out_feedback_out_89(i_llvm_fpga_push_i16_out_sroa_59_2_push89_loopback229_out_feedback_out_89),
        .out_feedback_valid_out_89(i_llvm_fpga_push_i16_out_sroa_59_2_push89_loopback229_out_feedback_valid_out_89),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_59_2_pop89_loopback49(BLACKBOX,268)@3
    // out out_feedback_stall_out_89@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_59_2_pop89_0 thei_llvm_fpga_pop_i16_out_sroa_59_2_pop89_loopback49 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_89(i_llvm_fpga_push_i16_out_sroa_59_2_push89_loopback229_out_feedback_out_89),
        .in_feedback_valid_in_89(i_llvm_fpga_push_i16_out_sroa_59_2_push89_loopback229_out_feedback_valid_out_89),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_59_2_pop89_loopback49_out_data_out),
        .out_feedback_stall_out_89(i_llvm_fpga_pop_i16_out_sroa_59_2_pop89_loopback49_out_feedback_stall_out_89),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_59_2_replace_phi_loopback50(MUX,349)@3
    assign i_out_sroa_59_2_replace_phi_loopback50_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_59_2_replace_phi_loopback50_s or i_llvm_fpga_pop_i16_out_sroa_59_2_pop89_loopback49_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select430630_loopback48_out_dest_data_out_52_0)
    begin
        unique case (i_out_sroa_59_2_replace_phi_loopback50_s)
            1'b0 : i_out_sroa_59_2_replace_phi_loopback50_q = i_llvm_fpga_pop_i16_out_sroa_59_2_pop89_loopback49_out_data_out;
            1'b1 : i_out_sroa_59_2_replace_phi_loopback50_q = i_llvm_fpga_ffwd_dest_i16_spec_select430630_loopback48_out_dest_data_out_52_0;
            default : i_out_sroa_59_2_replace_phi_loopback50_q = 16'b0;
        endcase
    end

    // c_i32_19465_recast_x(CONSTANT,519)
    assign c_i32_19465_recast_x_q = $unsigned(32'b00000000000000000000000000010011);

    // i_unnamed_loopback133(LOGICAL,414)@3
    assign i_unnamed_loopback133_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_19465_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select461_loopback228(MUX,389)@3
    assign i_spec_select461_loopback228_s = i_unnamed_loopback133_q;
    always @(i_spec_select461_loopback228_s or i_out_sroa_59_2_replace_phi_loopback50_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select461_loopback228_s)
            1'b0 : i_spec_select461_loopback228_q = i_out_sroa_59_2_replace_phi_loopback50_q;
            1'b1 : i_spec_select461_loopback228_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select461_loopback228_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback96_loopback285(BLACKBOX,246)@3
    // out out_intel_reserved_ffwd_88_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_96_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback96_loopback285 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_88_0(i_spec_select461_loopback228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg130_q),
        .out_intel_reserved_ffwd_88_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback96_loopback285_out_intel_reserved_ffwd_88_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_19_regfree_osync_x(GPOUT,580)
    assign out_intel_reserved_ffwd_88_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback96_loopback285_out_intel_reserved_ffwd_88_0;

    // valid_fanout_reg131(REG,761)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg131_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg131_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg26(REG,656)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select431631_loopback45(BLACKBOX,200)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select431631_0 thei_llvm_fpga_ffwd_dest_i16_spec_select431631_loopback45 (
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_dest_data_out_53_0(i_llvm_fpga_ffwd_dest_i16_spec_select431631_loopback45_out_dest_data_out_53_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg27(REG,657)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg98(REG,728)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg98_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg98_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_62_2_push88_loopback231(BLACKBOX,306)@3
    // out out_feedback_out_88@20000000
    // out out_feedback_valid_out_88@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_62_2_push88_0 thei_llvm_fpga_push_i16_out_sroa_62_2_push88_loopback231 (
        .in_data_in(i_spec_select462_loopback230_q),
        .in_feedback_stall_in_88(i_llvm_fpga_pop_i16_out_sroa_62_2_pop88_loopback46_out_feedback_stall_out_88),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg98_q),
        .out_data_out(),
        .out_feedback_out_88(i_llvm_fpga_push_i16_out_sroa_62_2_push88_loopback231_out_feedback_out_88),
        .out_feedback_valid_out_88(i_llvm_fpga_push_i16_out_sroa_62_2_push88_loopback231_out_feedback_valid_out_88),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_62_2_pop88_loopback46(BLACKBOX,270)@3
    // out out_feedback_stall_out_88@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_62_2_pop88_0 thei_llvm_fpga_pop_i16_out_sroa_62_2_pop88_loopback46 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_88(i_llvm_fpga_push_i16_out_sroa_62_2_push88_loopback231_out_feedback_out_88),
        .in_feedback_valid_in_88(i_llvm_fpga_push_i16_out_sroa_62_2_push88_loopback231_out_feedback_valid_out_88),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_62_2_pop88_loopback46_out_data_out),
        .out_feedback_stall_out_88(i_llvm_fpga_pop_i16_out_sroa_62_2_pop88_loopback46_out_feedback_stall_out_88),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_62_2_replace_phi_loopback47(MUX,351)@3
    assign i_out_sroa_62_2_replace_phi_loopback47_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_62_2_replace_phi_loopback47_s or i_llvm_fpga_pop_i16_out_sroa_62_2_pop88_loopback46_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select431631_loopback45_out_dest_data_out_53_0)
    begin
        unique case (i_out_sroa_62_2_replace_phi_loopback47_s)
            1'b0 : i_out_sroa_62_2_replace_phi_loopback47_q = i_llvm_fpga_pop_i16_out_sroa_62_2_pop88_loopback46_out_data_out;
            1'b1 : i_out_sroa_62_2_replace_phi_loopback47_q = i_llvm_fpga_ffwd_dest_i16_spec_select431631_loopback45_out_dest_data_out_53_0;
            default : i_out_sroa_62_2_replace_phi_loopback47_q = 16'b0;
        endcase
    end

    // c_i32_20464_recast_x(CONSTANT,520)
    assign c_i32_20464_recast_x_q = $unsigned(32'b00000000000000000000000000010100);

    // i_unnamed_loopback131(LOGICAL,413)@3
    assign i_unnamed_loopback131_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_20464_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select462_loopback230(MUX,390)@3
    assign i_spec_select462_loopback230_s = i_unnamed_loopback131_q;
    always @(i_spec_select462_loopback230_s or i_out_sroa_62_2_replace_phi_loopback47_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select462_loopback230_s)
            1'b0 : i_spec_select462_loopback230_q = i_out_sroa_62_2_replace_phi_loopback47_q;
            1'b1 : i_spec_select462_loopback230_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select462_loopback230_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback97_loopback286(BLACKBOX,247)@3
    // out out_intel_reserved_ffwd_89_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_97_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback97_loopback286 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_89_0(i_spec_select462_loopback230_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg131_q),
        .out_intel_reserved_ffwd_89_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback97_loopback286_out_intel_reserved_ffwd_89_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_20_regfree_osync_x(GPOUT,582)
    assign out_intel_reserved_ffwd_89_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback97_loopback286_out_intel_reserved_ffwd_89_0;

    // valid_fanout_reg132(REG,762)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg132_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg132_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg24(REG,654)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select432632_loopback42(BLACKBOX,201)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select432632_0 thei_llvm_fpga_ffwd_dest_i16_spec_select432632_loopback42 (
        .in_intel_reserved_ffwd_54_0(in_intel_reserved_ffwd_54_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_dest_data_out_54_0(i_llvm_fpga_ffwd_dest_i16_spec_select432632_loopback42_out_dest_data_out_54_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg25(REG,655)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg99(REG,729)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg99_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg99_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_65_2_push87_loopback233(BLACKBOX,307)@3
    // out out_feedback_out_87@20000000
    // out out_feedback_valid_out_87@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_65_2_push87_0 thei_llvm_fpga_push_i16_out_sroa_65_2_push87_loopback233 (
        .in_data_in(i_spec_select463_loopback232_q),
        .in_feedback_stall_in_87(i_llvm_fpga_pop_i16_out_sroa_65_2_pop87_loopback43_out_feedback_stall_out_87),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg99_q),
        .out_data_out(),
        .out_feedback_out_87(i_llvm_fpga_push_i16_out_sroa_65_2_push87_loopback233_out_feedback_out_87),
        .out_feedback_valid_out_87(i_llvm_fpga_push_i16_out_sroa_65_2_push87_loopback233_out_feedback_valid_out_87),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_65_2_pop87_loopback43(BLACKBOX,271)@3
    // out out_feedback_stall_out_87@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_65_2_pop87_0 thei_llvm_fpga_pop_i16_out_sroa_65_2_pop87_loopback43 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_87(i_llvm_fpga_push_i16_out_sroa_65_2_push87_loopback233_out_feedback_out_87),
        .in_feedback_valid_in_87(i_llvm_fpga_push_i16_out_sroa_65_2_push87_loopback233_out_feedback_valid_out_87),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_65_2_pop87_loopback43_out_data_out),
        .out_feedback_stall_out_87(i_llvm_fpga_pop_i16_out_sroa_65_2_pop87_loopback43_out_feedback_stall_out_87),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_65_2_replace_phi_loopback44(MUX,352)@3
    assign i_out_sroa_65_2_replace_phi_loopback44_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_65_2_replace_phi_loopback44_s or i_llvm_fpga_pop_i16_out_sroa_65_2_pop87_loopback43_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select432632_loopback42_out_dest_data_out_54_0)
    begin
        unique case (i_out_sroa_65_2_replace_phi_loopback44_s)
            1'b0 : i_out_sroa_65_2_replace_phi_loopback44_q = i_llvm_fpga_pop_i16_out_sroa_65_2_pop87_loopback43_out_data_out;
            1'b1 : i_out_sroa_65_2_replace_phi_loopback44_q = i_llvm_fpga_ffwd_dest_i16_spec_select432632_loopback42_out_dest_data_out_54_0;
            default : i_out_sroa_65_2_replace_phi_loopback44_q = 16'b0;
        endcase
    end

    // c_i32_21463_recast_x(CONSTANT,521)
    assign c_i32_21463_recast_x_q = $unsigned(32'b00000000000000000000000000010101);

    // i_unnamed_loopback129(LOGICAL,412)@3
    assign i_unnamed_loopback129_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_21463_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select463_loopback232(MUX,391)@3
    assign i_spec_select463_loopback232_s = i_unnamed_loopback129_q;
    always @(i_spec_select463_loopback232_s or i_out_sroa_65_2_replace_phi_loopback44_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select463_loopback232_s)
            1'b0 : i_spec_select463_loopback232_q = i_out_sroa_65_2_replace_phi_loopback44_q;
            1'b1 : i_spec_select463_loopback232_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select463_loopback232_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback98_loopback287(BLACKBOX,248)@3
    // out out_intel_reserved_ffwd_90_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_98_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback98_loopback287 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_90_0(i_spec_select463_loopback232_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg132_q),
        .out_intel_reserved_ffwd_90_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback98_loopback287_out_intel_reserved_ffwd_90_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_21_regfree_osync_x(GPOUT,584)
    assign out_intel_reserved_ffwd_90_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback98_loopback287_out_intel_reserved_ffwd_90_0;

    // valid_fanout_reg133(REG,763)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg133_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg133_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg22(REG,652)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select433633_loopback39(BLACKBOX,202)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select433633_0 thei_llvm_fpga_ffwd_dest_i16_spec_select433633_loopback39 (
        .in_intel_reserved_ffwd_55_0(in_intel_reserved_ffwd_55_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_dest_data_out_55_0(i_llvm_fpga_ffwd_dest_i16_spec_select433633_loopback39_out_dest_data_out_55_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg23(REG,653)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg100(REG,730)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg100_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg100_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_68_2_push86_loopback235(BLACKBOX,308)@3
    // out out_feedback_out_86@20000000
    // out out_feedback_valid_out_86@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_68_2_push86_0 thei_llvm_fpga_push_i16_out_sroa_68_2_push86_loopback235 (
        .in_data_in(i_spec_select464_loopback234_q),
        .in_feedback_stall_in_86(i_llvm_fpga_pop_i16_out_sroa_68_2_pop86_loopback40_out_feedback_stall_out_86),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg100_q),
        .out_data_out(),
        .out_feedback_out_86(i_llvm_fpga_push_i16_out_sroa_68_2_push86_loopback235_out_feedback_out_86),
        .out_feedback_valid_out_86(i_llvm_fpga_push_i16_out_sroa_68_2_push86_loopback235_out_feedback_valid_out_86),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_68_2_pop86_loopback40(BLACKBOX,272)@3
    // out out_feedback_stall_out_86@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_68_2_pop86_0 thei_llvm_fpga_pop_i16_out_sroa_68_2_pop86_loopback40 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_86(i_llvm_fpga_push_i16_out_sroa_68_2_push86_loopback235_out_feedback_out_86),
        .in_feedback_valid_in_86(i_llvm_fpga_push_i16_out_sroa_68_2_push86_loopback235_out_feedback_valid_out_86),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_68_2_pop86_loopback40_out_data_out),
        .out_feedback_stall_out_86(i_llvm_fpga_pop_i16_out_sroa_68_2_pop86_loopback40_out_feedback_stall_out_86),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_68_2_replace_phi_loopback41(MUX,353)@3
    assign i_out_sroa_68_2_replace_phi_loopback41_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_68_2_replace_phi_loopback41_s or i_llvm_fpga_pop_i16_out_sroa_68_2_pop86_loopback40_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select433633_loopback39_out_dest_data_out_55_0)
    begin
        unique case (i_out_sroa_68_2_replace_phi_loopback41_s)
            1'b0 : i_out_sroa_68_2_replace_phi_loopback41_q = i_llvm_fpga_pop_i16_out_sroa_68_2_pop86_loopback40_out_data_out;
            1'b1 : i_out_sroa_68_2_replace_phi_loopback41_q = i_llvm_fpga_ffwd_dest_i16_spec_select433633_loopback39_out_dest_data_out_55_0;
            default : i_out_sroa_68_2_replace_phi_loopback41_q = 16'b0;
        endcase
    end

    // c_i32_22462_recast_x(CONSTANT,522)
    assign c_i32_22462_recast_x_q = $unsigned(32'b00000000000000000000000000010110);

    // i_unnamed_loopback127(LOGICAL,411)@3
    assign i_unnamed_loopback127_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_22462_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select464_loopback234(MUX,392)@3
    assign i_spec_select464_loopback234_s = i_unnamed_loopback127_q;
    always @(i_spec_select464_loopback234_s or i_out_sroa_68_2_replace_phi_loopback41_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select464_loopback234_s)
            1'b0 : i_spec_select464_loopback234_q = i_out_sroa_68_2_replace_phi_loopback41_q;
            1'b1 : i_spec_select464_loopback234_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select464_loopback234_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback99_loopback288(BLACKBOX,249)@3
    // out out_intel_reserved_ffwd_91_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_99_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback99_loopback288 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_91_0(i_spec_select464_loopback234_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg133_q),
        .out_intel_reserved_ffwd_91_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback99_loopback288_out_intel_reserved_ffwd_91_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_22_regfree_osync_x(GPOUT,586)
    assign out_intel_reserved_ffwd_91_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback99_loopback288_out_intel_reserved_ffwd_91_0;

    // valid_fanout_reg134(REG,764)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg134_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg134_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg20(REG,650)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select434634_loopback36(BLACKBOX,203)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select434634_0 thei_llvm_fpga_ffwd_dest_i16_spec_select434634_loopback36 (
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_dest_data_out_56_0(i_llvm_fpga_ffwd_dest_i16_spec_select434634_loopback36_out_dest_data_out_56_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg21(REG,651)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg101(REG,731)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg101_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg101_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_71_2_push85_loopback237(BLACKBOX,309)@3
    // out out_feedback_out_85@20000000
    // out out_feedback_valid_out_85@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_71_2_push85_0 thei_llvm_fpga_push_i16_out_sroa_71_2_push85_loopback237 (
        .in_data_in(i_spec_select465_loopback236_q),
        .in_feedback_stall_in_85(i_llvm_fpga_pop_i16_out_sroa_71_2_pop85_loopback37_out_feedback_stall_out_85),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg101_q),
        .out_data_out(),
        .out_feedback_out_85(i_llvm_fpga_push_i16_out_sroa_71_2_push85_loopback237_out_feedback_out_85),
        .out_feedback_valid_out_85(i_llvm_fpga_push_i16_out_sroa_71_2_push85_loopback237_out_feedback_valid_out_85),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_71_2_pop85_loopback37(BLACKBOX,273)@3
    // out out_feedback_stall_out_85@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_71_2_pop85_0 thei_llvm_fpga_pop_i16_out_sroa_71_2_pop85_loopback37 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_85(i_llvm_fpga_push_i16_out_sroa_71_2_push85_loopback237_out_feedback_out_85),
        .in_feedback_valid_in_85(i_llvm_fpga_push_i16_out_sroa_71_2_push85_loopback237_out_feedback_valid_out_85),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_71_2_pop85_loopback37_out_data_out),
        .out_feedback_stall_out_85(i_llvm_fpga_pop_i16_out_sroa_71_2_pop85_loopback37_out_feedback_stall_out_85),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_71_2_replace_phi_loopback38(MUX,354)@3
    assign i_out_sroa_71_2_replace_phi_loopback38_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_71_2_replace_phi_loopback38_s or i_llvm_fpga_pop_i16_out_sroa_71_2_pop85_loopback37_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select434634_loopback36_out_dest_data_out_56_0)
    begin
        unique case (i_out_sroa_71_2_replace_phi_loopback38_s)
            1'b0 : i_out_sroa_71_2_replace_phi_loopback38_q = i_llvm_fpga_pop_i16_out_sroa_71_2_pop85_loopback37_out_data_out;
            1'b1 : i_out_sroa_71_2_replace_phi_loopback38_q = i_llvm_fpga_ffwd_dest_i16_spec_select434634_loopback36_out_dest_data_out_56_0;
            default : i_out_sroa_71_2_replace_phi_loopback38_q = 16'b0;
        endcase
    end

    // c_i32_23461_recast_x(CONSTANT,523)
    assign c_i32_23461_recast_x_q = $unsigned(32'b00000000000000000000000000010111);

    // i_unnamed_loopback125(LOGICAL,410)@3
    assign i_unnamed_loopback125_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_23461_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select465_loopback236(MUX,393)@3
    assign i_spec_select465_loopback236_s = i_unnamed_loopback125_q;
    always @(i_spec_select465_loopback236_s or i_out_sroa_71_2_replace_phi_loopback38_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select465_loopback236_s)
            1'b0 : i_spec_select465_loopback236_q = i_out_sroa_71_2_replace_phi_loopback38_q;
            1'b1 : i_spec_select465_loopback236_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select465_loopback236_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback100_loopback289(BLACKBOX,218)@3
    // out out_intel_reserved_ffwd_92_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_100_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback100_loopback289 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_92_0(i_spec_select465_loopback236_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg134_q),
        .out_intel_reserved_ffwd_92_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback100_loopback289_out_intel_reserved_ffwd_92_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_23_regfree_osync_x(GPOUT,588)
    assign out_intel_reserved_ffwd_92_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback100_loopback289_out_intel_reserved_ffwd_92_0;

    // valid_fanout_reg135(REG,765)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg135_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg135_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg18(REG,648)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select435635_loopback33(BLACKBOX,204)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select435635_0 thei_llvm_fpga_ffwd_dest_i16_spec_select435635_loopback33 (
        .in_intel_reserved_ffwd_57_0(in_intel_reserved_ffwd_57_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_dest_data_out_57_0(i_llvm_fpga_ffwd_dest_i16_spec_select435635_loopback33_out_dest_data_out_57_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,649)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg102(REG,732)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg102_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg102_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_74_2_push84_loopback239(BLACKBOX,310)@3
    // out out_feedback_out_84@20000000
    // out out_feedback_valid_out_84@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_74_2_push84_0 thei_llvm_fpga_push_i16_out_sroa_74_2_push84_loopback239 (
        .in_data_in(i_spec_select466_loopback238_q),
        .in_feedback_stall_in_84(i_llvm_fpga_pop_i16_out_sroa_74_2_pop84_loopback34_out_feedback_stall_out_84),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg102_q),
        .out_data_out(),
        .out_feedback_out_84(i_llvm_fpga_push_i16_out_sroa_74_2_push84_loopback239_out_feedback_out_84),
        .out_feedback_valid_out_84(i_llvm_fpga_push_i16_out_sroa_74_2_push84_loopback239_out_feedback_valid_out_84),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_74_2_pop84_loopback34(BLACKBOX,274)@3
    // out out_feedback_stall_out_84@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_74_2_pop84_0 thei_llvm_fpga_pop_i16_out_sroa_74_2_pop84_loopback34 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_84(i_llvm_fpga_push_i16_out_sroa_74_2_push84_loopback239_out_feedback_out_84),
        .in_feedback_valid_in_84(i_llvm_fpga_push_i16_out_sroa_74_2_push84_loopback239_out_feedback_valid_out_84),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_74_2_pop84_loopback34_out_data_out),
        .out_feedback_stall_out_84(i_llvm_fpga_pop_i16_out_sroa_74_2_pop84_loopback34_out_feedback_stall_out_84),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_74_2_replace_phi_loopback35(MUX,355)@3
    assign i_out_sroa_74_2_replace_phi_loopback35_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_74_2_replace_phi_loopback35_s or i_llvm_fpga_pop_i16_out_sroa_74_2_pop84_loopback34_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select435635_loopback33_out_dest_data_out_57_0)
    begin
        unique case (i_out_sroa_74_2_replace_phi_loopback35_s)
            1'b0 : i_out_sroa_74_2_replace_phi_loopback35_q = i_llvm_fpga_pop_i16_out_sroa_74_2_pop84_loopback34_out_data_out;
            1'b1 : i_out_sroa_74_2_replace_phi_loopback35_q = i_llvm_fpga_ffwd_dest_i16_spec_select435635_loopback33_out_dest_data_out_57_0;
            default : i_out_sroa_74_2_replace_phi_loopback35_q = 16'b0;
        endcase
    end

    // c_i32_24460_recast_x(CONSTANT,524)
    assign c_i32_24460_recast_x_q = $unsigned(32'b00000000000000000000000000011000);

    // i_unnamed_loopback123(LOGICAL,409)@3
    assign i_unnamed_loopback123_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_24460_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select466_loopback238(MUX,394)@3
    assign i_spec_select466_loopback238_s = i_unnamed_loopback123_q;
    always @(i_spec_select466_loopback238_s or i_out_sroa_74_2_replace_phi_loopback35_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select466_loopback238_s)
            1'b0 : i_spec_select466_loopback238_q = i_out_sroa_74_2_replace_phi_loopback35_q;
            1'b1 : i_spec_select466_loopback238_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select466_loopback238_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback101_loopback290(BLACKBOX,219)@3
    // out out_intel_reserved_ffwd_93_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_101_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback101_loopback290 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_93_0(i_spec_select466_loopback238_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg135_q),
        .out_intel_reserved_ffwd_93_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback101_loopback290_out_intel_reserved_ffwd_93_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_24_regfree_osync_x(GPOUT,590)
    assign out_intel_reserved_ffwd_93_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback101_loopback290_out_intel_reserved_ffwd_93_0;

    // valid_fanout_reg136(REG,766)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg136_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg136_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg16(REG,646)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select436636_loopback30(BLACKBOX,205)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select436636_0 thei_llvm_fpga_ffwd_dest_i16_spec_select436636_loopback30 (
        .in_intel_reserved_ffwd_58_0(in_intel_reserved_ffwd_58_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_dest_data_out_58_0(i_llvm_fpga_ffwd_dest_i16_spec_select436636_loopback30_out_dest_data_out_58_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg17(REG,647)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg103(REG,733)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg103_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg103_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_77_2_push83_loopback241(BLACKBOX,311)@3
    // out out_feedback_out_83@20000000
    // out out_feedback_valid_out_83@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_77_2_push83_0 thei_llvm_fpga_push_i16_out_sroa_77_2_push83_loopback241 (
        .in_data_in(i_spec_select467_loopback240_q),
        .in_feedback_stall_in_83(i_llvm_fpga_pop_i16_out_sroa_77_2_pop83_loopback31_out_feedback_stall_out_83),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg103_q),
        .out_data_out(),
        .out_feedback_out_83(i_llvm_fpga_push_i16_out_sroa_77_2_push83_loopback241_out_feedback_out_83),
        .out_feedback_valid_out_83(i_llvm_fpga_push_i16_out_sroa_77_2_push83_loopback241_out_feedback_valid_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_77_2_pop83_loopback31(BLACKBOX,275)@3
    // out out_feedback_stall_out_83@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_77_2_pop83_0 thei_llvm_fpga_pop_i16_out_sroa_77_2_pop83_loopback31 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_83(i_llvm_fpga_push_i16_out_sroa_77_2_push83_loopback241_out_feedback_out_83),
        .in_feedback_valid_in_83(i_llvm_fpga_push_i16_out_sroa_77_2_push83_loopback241_out_feedback_valid_out_83),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_77_2_pop83_loopback31_out_data_out),
        .out_feedback_stall_out_83(i_llvm_fpga_pop_i16_out_sroa_77_2_pop83_loopback31_out_feedback_stall_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_77_2_replace_phi_loopback32(MUX,356)@3
    assign i_out_sroa_77_2_replace_phi_loopback32_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_77_2_replace_phi_loopback32_s or i_llvm_fpga_pop_i16_out_sroa_77_2_pop83_loopback31_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select436636_loopback30_out_dest_data_out_58_0)
    begin
        unique case (i_out_sroa_77_2_replace_phi_loopback32_s)
            1'b0 : i_out_sroa_77_2_replace_phi_loopback32_q = i_llvm_fpga_pop_i16_out_sroa_77_2_pop83_loopback31_out_data_out;
            1'b1 : i_out_sroa_77_2_replace_phi_loopback32_q = i_llvm_fpga_ffwd_dest_i16_spec_select436636_loopback30_out_dest_data_out_58_0;
            default : i_out_sroa_77_2_replace_phi_loopback32_q = 16'b0;
        endcase
    end

    // c_i32_25459_recast_x(CONSTANT,526)
    assign c_i32_25459_recast_x_q = $unsigned(32'b00000000000000000000000000011001);

    // i_unnamed_loopback121(LOGICAL,408)@3
    assign i_unnamed_loopback121_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_25459_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select467_loopback240(MUX,395)@3
    assign i_spec_select467_loopback240_s = i_unnamed_loopback121_q;
    always @(i_spec_select467_loopback240_s or i_out_sroa_77_2_replace_phi_loopback32_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select467_loopback240_s)
            1'b0 : i_spec_select467_loopback240_q = i_out_sroa_77_2_replace_phi_loopback32_q;
            1'b1 : i_spec_select467_loopback240_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select467_loopback240_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback102_loopback291(BLACKBOX,220)@3
    // out out_intel_reserved_ffwd_94_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_102_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback102_loopback291 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_94_0(i_spec_select467_loopback240_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg136_q),
        .out_intel_reserved_ffwd_94_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback102_loopback291_out_intel_reserved_ffwd_94_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_25_regfree_osync_x(GPOUT,592)
    assign out_intel_reserved_ffwd_94_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback102_loopback291_out_intel_reserved_ffwd_94_0;

    // valid_fanout_reg137(REG,767)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg137_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg137_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg14(REG,644)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select437637_loopback27(BLACKBOX,206)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select437637_0 thei_llvm_fpga_ffwd_dest_i16_spec_select437637_loopback27 (
        .in_intel_reserved_ffwd_59_0(in_intel_reserved_ffwd_59_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_59_0(i_llvm_fpga_ffwd_dest_i16_spec_select437637_loopback27_out_dest_data_out_59_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg15(REG,645)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg104(REG,734)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg104_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg104_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_80_2_push82_loopback243(BLACKBOX,312)@3
    // out out_feedback_out_82@20000000
    // out out_feedback_valid_out_82@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_80_2_push82_0 thei_llvm_fpga_push_i16_out_sroa_80_2_push82_loopback243 (
        .in_data_in(i_spec_select468_loopback242_q),
        .in_feedback_stall_in_82(i_llvm_fpga_pop_i16_out_sroa_80_2_pop82_loopback28_out_feedback_stall_out_82),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg104_q),
        .out_data_out(),
        .out_feedback_out_82(i_llvm_fpga_push_i16_out_sroa_80_2_push82_loopback243_out_feedback_out_82),
        .out_feedback_valid_out_82(i_llvm_fpga_push_i16_out_sroa_80_2_push82_loopback243_out_feedback_valid_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_80_2_pop82_loopback28(BLACKBOX,276)@3
    // out out_feedback_stall_out_82@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_80_2_pop82_0 thei_llvm_fpga_pop_i16_out_sroa_80_2_pop82_loopback28 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_82(i_llvm_fpga_push_i16_out_sroa_80_2_push82_loopback243_out_feedback_out_82),
        .in_feedback_valid_in_82(i_llvm_fpga_push_i16_out_sroa_80_2_push82_loopback243_out_feedback_valid_out_82),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_80_2_pop82_loopback28_out_data_out),
        .out_feedback_stall_out_82(i_llvm_fpga_pop_i16_out_sroa_80_2_pop82_loopback28_out_feedback_stall_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_80_2_replace_phi_loopback29(MUX,357)@3
    assign i_out_sroa_80_2_replace_phi_loopback29_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_80_2_replace_phi_loopback29_s or i_llvm_fpga_pop_i16_out_sroa_80_2_pop82_loopback28_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select437637_loopback27_out_dest_data_out_59_0)
    begin
        unique case (i_out_sroa_80_2_replace_phi_loopback29_s)
            1'b0 : i_out_sroa_80_2_replace_phi_loopback29_q = i_llvm_fpga_pop_i16_out_sroa_80_2_pop82_loopback28_out_data_out;
            1'b1 : i_out_sroa_80_2_replace_phi_loopback29_q = i_llvm_fpga_ffwd_dest_i16_spec_select437637_loopback27_out_dest_data_out_59_0;
            default : i_out_sroa_80_2_replace_phi_loopback29_q = 16'b0;
        endcase
    end

    // c_i32_26458_recast_x(CONSTANT,527)
    assign c_i32_26458_recast_x_q = $unsigned(32'b00000000000000000000000000011010);

    // i_unnamed_loopback119(LOGICAL,407)@3
    assign i_unnamed_loopback119_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_26458_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select468_loopback242(MUX,396)@3
    assign i_spec_select468_loopback242_s = i_unnamed_loopback119_q;
    always @(i_spec_select468_loopback242_s or i_out_sroa_80_2_replace_phi_loopback29_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select468_loopback242_s)
            1'b0 : i_spec_select468_loopback242_q = i_out_sroa_80_2_replace_phi_loopback29_q;
            1'b1 : i_spec_select468_loopback242_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select468_loopback242_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback103_loopback292(BLACKBOX,221)@3
    // out out_intel_reserved_ffwd_95_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_103_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback103_loopback292 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_95_0(i_spec_select468_loopback242_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg137_q),
        .out_intel_reserved_ffwd_95_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback103_loopback292_out_intel_reserved_ffwd_95_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_26_regfree_osync_x(GPOUT,594)
    assign out_intel_reserved_ffwd_95_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback103_loopback292_out_intel_reserved_ffwd_95_0;

    // valid_fanout_reg138(REG,768)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg138_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg138_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg12(REG,642)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select438638_loopback24(BLACKBOX,207)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select438638_0 thei_llvm_fpga_ffwd_dest_i16_spec_select438638_loopback24 (
        .in_intel_reserved_ffwd_60_0(in_intel_reserved_ffwd_60_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_60_0(i_llvm_fpga_ffwd_dest_i16_spec_select438638_loopback24_out_dest_data_out_60_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,643)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg105(REG,735)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg105_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg105_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_83_2_push81_loopback245(BLACKBOX,313)@3
    // out out_feedback_out_81@20000000
    // out out_feedback_valid_out_81@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_83_2_push81_0 thei_llvm_fpga_push_i16_out_sroa_83_2_push81_loopback245 (
        .in_data_in(i_spec_select469_loopback244_q),
        .in_feedback_stall_in_81(i_llvm_fpga_pop_i16_out_sroa_83_2_pop81_loopback25_out_feedback_stall_out_81),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg105_q),
        .out_data_out(),
        .out_feedback_out_81(i_llvm_fpga_push_i16_out_sroa_83_2_push81_loopback245_out_feedback_out_81),
        .out_feedback_valid_out_81(i_llvm_fpga_push_i16_out_sroa_83_2_push81_loopback245_out_feedback_valid_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_83_2_pop81_loopback25(BLACKBOX,277)@3
    // out out_feedback_stall_out_81@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_83_2_pop81_0 thei_llvm_fpga_pop_i16_out_sroa_83_2_pop81_loopback25 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_81(i_llvm_fpga_push_i16_out_sroa_83_2_push81_loopback245_out_feedback_out_81),
        .in_feedback_valid_in_81(i_llvm_fpga_push_i16_out_sroa_83_2_push81_loopback245_out_feedback_valid_out_81),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_83_2_pop81_loopback25_out_data_out),
        .out_feedback_stall_out_81(i_llvm_fpga_pop_i16_out_sroa_83_2_pop81_loopback25_out_feedback_stall_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_83_2_replace_phi_loopback26(MUX,358)@3
    assign i_out_sroa_83_2_replace_phi_loopback26_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_83_2_replace_phi_loopback26_s or i_llvm_fpga_pop_i16_out_sroa_83_2_pop81_loopback25_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select438638_loopback24_out_dest_data_out_60_0)
    begin
        unique case (i_out_sroa_83_2_replace_phi_loopback26_s)
            1'b0 : i_out_sroa_83_2_replace_phi_loopback26_q = i_llvm_fpga_pop_i16_out_sroa_83_2_pop81_loopback25_out_data_out;
            1'b1 : i_out_sroa_83_2_replace_phi_loopback26_q = i_llvm_fpga_ffwd_dest_i16_spec_select438638_loopback24_out_dest_data_out_60_0;
            default : i_out_sroa_83_2_replace_phi_loopback26_q = 16'b0;
        endcase
    end

    // c_i32_27457_recast_x(CONSTANT,528)
    assign c_i32_27457_recast_x_q = $unsigned(32'b00000000000000000000000000011011);

    // i_unnamed_loopback117(LOGICAL,406)@3
    assign i_unnamed_loopback117_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_27457_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select469_loopback244(MUX,397)@3
    assign i_spec_select469_loopback244_s = i_unnamed_loopback117_q;
    always @(i_spec_select469_loopback244_s or i_out_sroa_83_2_replace_phi_loopback26_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select469_loopback244_s)
            1'b0 : i_spec_select469_loopback244_q = i_out_sroa_83_2_replace_phi_loopback26_q;
            1'b1 : i_spec_select469_loopback244_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select469_loopback244_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback104_loopback293(BLACKBOX,222)@3
    // out out_intel_reserved_ffwd_96_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_104_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback104_loopback293 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_96_0(i_spec_select469_loopback244_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg138_q),
        .out_intel_reserved_ffwd_96_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback104_loopback293_out_intel_reserved_ffwd_96_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_27_regfree_osync_x(GPOUT,596)
    assign out_intel_reserved_ffwd_96_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback104_loopback293_out_intel_reserved_ffwd_96_0;

    // valid_fanout_reg139(REG,769)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg139_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg139_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg10(REG,640)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select439639_loopback21(BLACKBOX,208)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select439639_0 thei_llvm_fpga_ffwd_dest_i16_spec_select439639_loopback21 (
        .in_intel_reserved_ffwd_61_0(in_intel_reserved_ffwd_61_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_61_0(i_llvm_fpga_ffwd_dest_i16_spec_select439639_loopback21_out_dest_data_out_61_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,641)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg106(REG,736)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg106_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg106_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_86_2_push80_loopback247(BLACKBOX,314)@3
    // out out_feedback_out_80@20000000
    // out out_feedback_valid_out_80@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_86_2_push80_0 thei_llvm_fpga_push_i16_out_sroa_86_2_push80_loopback247 (
        .in_data_in(i_spec_select470_loopback246_q),
        .in_feedback_stall_in_80(i_llvm_fpga_pop_i16_out_sroa_86_2_pop80_loopback22_out_feedback_stall_out_80),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg106_q),
        .out_data_out(),
        .out_feedback_out_80(i_llvm_fpga_push_i16_out_sroa_86_2_push80_loopback247_out_feedback_out_80),
        .out_feedback_valid_out_80(i_llvm_fpga_push_i16_out_sroa_86_2_push80_loopback247_out_feedback_valid_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_86_2_pop80_loopback22(BLACKBOX,278)@3
    // out out_feedback_stall_out_80@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_86_2_pop80_0 thei_llvm_fpga_pop_i16_out_sroa_86_2_pop80_loopback22 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_80(i_llvm_fpga_push_i16_out_sroa_86_2_push80_loopback247_out_feedback_out_80),
        .in_feedback_valid_in_80(i_llvm_fpga_push_i16_out_sroa_86_2_push80_loopback247_out_feedback_valid_out_80),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_86_2_pop80_loopback22_out_data_out),
        .out_feedback_stall_out_80(i_llvm_fpga_pop_i16_out_sroa_86_2_pop80_loopback22_out_feedback_stall_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_86_2_replace_phi_loopback23(MUX,359)@3
    assign i_out_sroa_86_2_replace_phi_loopback23_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_86_2_replace_phi_loopback23_s or i_llvm_fpga_pop_i16_out_sroa_86_2_pop80_loopback22_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select439639_loopback21_out_dest_data_out_61_0)
    begin
        unique case (i_out_sroa_86_2_replace_phi_loopback23_s)
            1'b0 : i_out_sroa_86_2_replace_phi_loopback23_q = i_llvm_fpga_pop_i16_out_sroa_86_2_pop80_loopback22_out_data_out;
            1'b1 : i_out_sroa_86_2_replace_phi_loopback23_q = i_llvm_fpga_ffwd_dest_i16_spec_select439639_loopback21_out_dest_data_out_61_0;
            default : i_out_sroa_86_2_replace_phi_loopback23_q = 16'b0;
        endcase
    end

    // c_i32_28456_recast_x(CONSTANT,529)
    assign c_i32_28456_recast_x_q = $unsigned(32'b00000000000000000000000000011100);

    // i_unnamed_loopback115(LOGICAL,405)@3
    assign i_unnamed_loopback115_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_28456_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select470_loopback246(MUX,398)@3
    assign i_spec_select470_loopback246_s = i_unnamed_loopback115_q;
    always @(i_spec_select470_loopback246_s or i_out_sroa_86_2_replace_phi_loopback23_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select470_loopback246_s)
            1'b0 : i_spec_select470_loopback246_q = i_out_sroa_86_2_replace_phi_loopback23_q;
            1'b1 : i_spec_select470_loopback246_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select470_loopback246_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback105_loopback294(BLACKBOX,223)@3
    // out out_intel_reserved_ffwd_97_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_105_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback105_loopback294 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_97_0(i_spec_select470_loopback246_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg139_q),
        .out_intel_reserved_ffwd_97_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback105_loopback294_out_intel_reserved_ffwd_97_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_28_regfree_osync_x(GPOUT,598)
    assign out_intel_reserved_ffwd_97_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback105_loopback294_out_intel_reserved_ffwd_97_0;

    // valid_fanout_reg140(REG,770)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg140_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg140_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg8(REG,638)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select440640_loopback18(BLACKBOX,209)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select440640_0 thei_llvm_fpga_ffwd_dest_i16_spec_select440640_loopback18 (
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_62_0(i_llvm_fpga_ffwd_dest_i16_spec_select440640_loopback18_out_dest_data_out_62_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,639)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg107(REG,737)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg107_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg107_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_89_2_push79_loopback249(BLACKBOX,315)@3
    // out out_feedback_out_79@20000000
    // out out_feedback_valid_out_79@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_89_2_push79_0 thei_llvm_fpga_push_i16_out_sroa_89_2_push79_loopback249 (
        .in_data_in(i_spec_select471_loopback248_q),
        .in_feedback_stall_in_79(i_llvm_fpga_pop_i16_out_sroa_89_2_pop79_loopback19_out_feedback_stall_out_79),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg107_q),
        .out_data_out(),
        .out_feedback_out_79(i_llvm_fpga_push_i16_out_sroa_89_2_push79_loopback249_out_feedback_out_79),
        .out_feedback_valid_out_79(i_llvm_fpga_push_i16_out_sroa_89_2_push79_loopback249_out_feedback_valid_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_89_2_pop79_loopback19(BLACKBOX,279)@3
    // out out_feedback_stall_out_79@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_89_2_pop79_0 thei_llvm_fpga_pop_i16_out_sroa_89_2_pop79_loopback19 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_79(i_llvm_fpga_push_i16_out_sroa_89_2_push79_loopback249_out_feedback_out_79),
        .in_feedback_valid_in_79(i_llvm_fpga_push_i16_out_sroa_89_2_push79_loopback249_out_feedback_valid_out_79),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_89_2_pop79_loopback19_out_data_out),
        .out_feedback_stall_out_79(i_llvm_fpga_pop_i16_out_sroa_89_2_pop79_loopback19_out_feedback_stall_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_89_2_replace_phi_loopback20(MUX,360)@3
    assign i_out_sroa_89_2_replace_phi_loopback20_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_89_2_replace_phi_loopback20_s or i_llvm_fpga_pop_i16_out_sroa_89_2_pop79_loopback19_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select440640_loopback18_out_dest_data_out_62_0)
    begin
        unique case (i_out_sroa_89_2_replace_phi_loopback20_s)
            1'b0 : i_out_sroa_89_2_replace_phi_loopback20_q = i_llvm_fpga_pop_i16_out_sroa_89_2_pop79_loopback19_out_data_out;
            1'b1 : i_out_sroa_89_2_replace_phi_loopback20_q = i_llvm_fpga_ffwd_dest_i16_spec_select440640_loopback18_out_dest_data_out_62_0;
            default : i_out_sroa_89_2_replace_phi_loopback20_q = 16'b0;
        endcase
    end

    // c_i32_29455_recast_x(CONSTANT,530)
    assign c_i32_29455_recast_x_q = $unsigned(32'b00000000000000000000000000011101);

    // i_unnamed_loopback113(LOGICAL,404)@3
    assign i_unnamed_loopback113_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_29455_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select471_loopback248(MUX,399)@3
    assign i_spec_select471_loopback248_s = i_unnamed_loopback113_q;
    always @(i_spec_select471_loopback248_s or i_out_sroa_89_2_replace_phi_loopback20_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select471_loopback248_s)
            1'b0 : i_spec_select471_loopback248_q = i_out_sroa_89_2_replace_phi_loopback20_q;
            1'b1 : i_spec_select471_loopback248_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select471_loopback248_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback106_loopback295(BLACKBOX,224)@3
    // out out_intel_reserved_ffwd_98_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_106_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback106_loopback295 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_98_0(i_spec_select471_loopback248_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg140_q),
        .out_intel_reserved_ffwd_98_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback106_loopback295_out_intel_reserved_ffwd_98_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_29_regfree_osync_x(GPOUT,600)
    assign out_intel_reserved_ffwd_98_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback106_loopback295_out_intel_reserved_ffwd_98_0;

    // valid_fanout_reg141(REG,771)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg141_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg141_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg6(REG,636)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i16_spec_select441641_loopback15(BLACKBOX,210)@3
    loopback_i_llvm_fpga_ffwd_dest_i16_spec_select441641_0 thei_llvm_fpga_ffwd_dest_i16_spec_select441641_loopback15 (
        .in_intel_reserved_ffwd_63_0(in_intel_reserved_ffwd_63_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_63_0(i_llvm_fpga_ffwd_dest_i16_spec_select441641_loopback15_out_dest_data_out_63_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,637)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg108(REG,738)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg108_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg108_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i16_out_sroa_92_2_push78_loopback251(BLACKBOX,317)@3
    // out out_feedback_out_78@20000000
    // out out_feedback_valid_out_78@20000000
    loopback_i_llvm_fpga_push_i16_out_sroa_92_2_push78_0 thei_llvm_fpga_push_i16_out_sroa_92_2_push78_loopback251 (
        .in_data_in(i_spec_select472_loopback250_q),
        .in_feedback_stall_in_78(i_llvm_fpga_pop_i16_out_sroa_92_2_pop78_loopback16_out_feedback_stall_out_78),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg108_q),
        .out_data_out(),
        .out_feedback_out_78(i_llvm_fpga_push_i16_out_sroa_92_2_push78_loopback251_out_feedback_out_78),
        .out_feedback_valid_out_78(i_llvm_fpga_push_i16_out_sroa_92_2_push78_loopback251_out_feedback_valid_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i16_out_sroa_92_2_pop78_loopback16(BLACKBOX,281)@3
    // out out_feedback_stall_out_78@20000000
    loopback_i_llvm_fpga_pop_i16_out_sroa_92_2_pop78_0 thei_llvm_fpga_pop_i16_out_sroa_92_2_pop78_loopback16 (
        .in_data_in(c_i16_undef451_q),
        .in_dir(redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q),
        .in_feedback_in_78(i_llvm_fpga_push_i16_out_sroa_92_2_push78_loopback251_out_feedback_out_78),
        .in_feedback_valid_in_78(i_llvm_fpga_push_i16_out_sroa_92_2_push78_loopback251_out_feedback_valid_out_78),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i16_out_sroa_92_2_pop78_loopback16_out_data_out),
        .out_feedback_stall_out_78(i_llvm_fpga_pop_i16_out_sroa_92_2_pop78_loopback16_out_feedback_stall_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_out_sroa_92_2_replace_phi_loopback17(MUX,362)@3
    assign i_out_sroa_92_2_replace_phi_loopback17_s = redist1_sync_together603_aunroll_x_in_c0_eni1800_1_tpl_2_q;
    always @(i_out_sroa_92_2_replace_phi_loopback17_s or i_llvm_fpga_pop_i16_out_sroa_92_2_pop78_loopback16_out_data_out or i_llvm_fpga_ffwd_dest_i16_spec_select441641_loopback15_out_dest_data_out_63_0)
    begin
        unique case (i_out_sroa_92_2_replace_phi_loopback17_s)
            1'b0 : i_out_sroa_92_2_replace_phi_loopback17_q = i_llvm_fpga_pop_i16_out_sroa_92_2_pop78_loopback16_out_data_out;
            1'b1 : i_out_sroa_92_2_replace_phi_loopback17_q = i_llvm_fpga_ffwd_dest_i16_spec_select441641_loopback15_out_dest_data_out_63_0;
            default : i_out_sroa_92_2_replace_phi_loopback17_q = 16'b0;
        endcase
    end

    // c_i32_30454_recast_x(CONSTANT,531)
    assign c_i32_30454_recast_x_q = $unsigned(32'b00000000000000000000000000011110);

    // i_unnamed_loopback111(LOGICAL,403)@3
    assign i_unnamed_loopback111_q = $unsigned(redist4_i_llvm_fpga_pop_i32_k7_013_pop109_loopback108_out_data_out_1_q == c_i32_30454_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select472_loopback250(MUX,400)@3
    assign i_spec_select472_loopback250_s = i_unnamed_loopback111_q;
    always @(i_spec_select472_loopback250_s or i_out_sroa_92_2_replace_phi_loopback17_q or i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q)
    begin
        unique case (i_spec_select472_loopback250_s)
            1'b0 : i_spec_select472_loopback250_q = i_out_sroa_92_2_replace_phi_loopback17_q;
            1'b1 : i_spec_select472_loopback250_q = i_llvm_fpga_case_i16_i32_v4i32_s_case_assign_struct_loopback_fpgaunique_4s_case_stmt566_loopback187_q;
            default : i_spec_select472_loopback250_q = 16'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i16_unnamed_loopback107_loopback296(BLACKBOX,225)@3
    // out out_intel_reserved_ffwd_99_0@20000000
    loopback_i_llvm_fpga_ffwd_source_i16_unnamed_107_loopback0 thei_llvm_fpga_ffwd_source_i16_unnamed_loopback107_loopback296 (
        .in_predicate_in(i_xor_loopback4_q),
        .in_src_data_in_99_0(i_spec_select472_loopback250_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg141_q),
        .out_intel_reserved_ffwd_99_0(i_llvm_fpga_ffwd_source_i16_unnamed_loopback107_loopback296_out_intel_reserved_ffwd_99_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_30_regfree_osync_x(GPOUT,602)
    assign out_intel_reserved_ffwd_99_0 = i_llvm_fpga_ffwd_source_i16_unnamed_loopback107_loopback296_out_intel_reserved_ffwd_99_0;

    // valid_fanout_reg0(REG,630)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together603_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_masked_loopback298(LOGICAL,325)@3
    assign i_masked_loopback298_q = i_notcmp_loopback259_q & i_first_cleanup_loopback3_sel_x_b;

    // sync_out_aunroll_x(GPOUT,628)@3
    assign out_c0_exi2804_0_tpl = GND_q;
    assign out_c0_exi2804_1_tpl = redist6_i_llvm_fpga_pipeline_keep_going_loopback6_out_data_out_2_q;
    assign out_c0_exi2804_2_tpl = i_masked_loopback298_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_loopback1 = GND_q;

endmodule
